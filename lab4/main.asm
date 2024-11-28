;-------------------------------------------------------------------------------
; lab4: main.asm
;
; Sounds two tone buzzer
; Buzzer frequency controlled by potentiometer
; Tone to edit controlled by button on P1.3
; Tone being edited indicated by RGB LED
;	High -> Purple
; 	Low  -> Yellow
; Scheduler period indicated by green LED

; Connections:
; 	Potentiometer: 	3V3 -> P1.4 (A4)
;		Internal pulldown used for resistor divider
; 	Buzzer: 		P2.0 (TA1.0) -> P2.1 (TA1.1)
;
; Regular State: LPM0
;-------------------------------------------------------------------------------
; REGISTERS USED
;
; R4: Flags
;	0: 		button_flag
;   1: 		conversion_flag
;	2: 		buzzer_state
;	3: 		buzzer_config
;	4: 		button_job
;	5: 		ADC_job
;	6: 		buzzer_job
;	7-15:	unused
;
; R5-R8: Scheduling
; 	R5: Current Time 	uint16
; 	R6: TDebounce		uint16
; 	R7: TBuzzer			uint16
; 	R8: TADC			uint16
;
; R9-12: Buzzer Frequencies
;	R9:  FLow			uint16
; 	R10: Fhigh			uint16
;	R11: Fcurrent		uint16
; 	R12: Fset			uint16
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file
            
;-------------------------------------------------------------------------------
            .def    RESET                   ; Export program entry-point to
                                            ; make it known to linker.
;-------------------------------------------------------------------------------
            .text                           ; Assemble into program memory.
            .retain                         ; Override ELF conditional linking
                                            ; and retain current section.
            .retainrefs                     ; And retain any sections that have
                                            ; references to current section.
;-------------------------------------------------------------------------------
; Constants
;-------------------------------------------------------------------------------
; R4 flag positions
; Interrupt Flags
DEB_FLAG	.set	BIT0
CONV_FLAG	.set	BIT1
; Buzzer Control Flags
BUZ_STATE	.set	BIT2					; Fhigh when 1
BUZ_CONFIG	.set	BIT3
; Job Flags
BUT_JFLAG	.set	BIT4
ADC_JFLAG	.set	BIT5
BUZ_JFLAG	.set	BIT6
JOB_FLAGS	.set 	BIT4|BIT5|BIT6 			; 0 if no jobs pending, else: pending

; Scheduling Periods
TPERIOD		.set	1000						; scheduler interrupt period
ADC_PERIOD	.set	1000
BUT_DEB_PER	.set	1000						; Button Debounce Period
BUZ_PERIOD	.set	3000						; 100bpm

; Potentiometer ADC Values
; Recorded values ~ 800->1050
POT_MIN		.set	800
POT_MAX		.set	1050

; Buzzer Frequency Values
; Chosen range of 1000 -> 5000Hz
; This is mapped to 0 -> (POT_MAX-POT_MIN)
; C implementation calculated frequency with 250k/fset
; This is emulated using linear regressions for low and high
; high_count = -1/8 * (ADC_VAL - POT_MIN) + 78
; low_count	 = -1/2 * (ADC_VAL - POT_MIN) + 207
BUZ_FMIN	.set	207						; flow at ADC_VAL = POT_MIN
BUZ_FMAX	.set	47						; fhigh at ADC_VAL = (POT_MAX-POT_MIN)
BUZ_C_HIGH	.set	78
BUZ_C_LOW	.set	207

;-------------------------------------------------------------------------------
RESET       mov.w   #__STACK_END,SP         ; Initialize stackpointer
StopWDT     mov.w   #WDTPW|WDTHOLD,&WDTCTL  ; Stop watchdog timer
;-------------------------------------------------------------------------------
 ;MAIN
;-------------------------------------------------------------------------------
			bis.w	#GIE,SR					; enable Global interrupts
CLK_CONFIG:
			; Set clock configuration to same values as in C implementation
			; TODO: Check what these values actually do!
			;mov.b	#DCO1|DCO0,&DCOCTL
			;mov.b	#XT2OFF|RSEL2|RSEL1|RSEL0,&BCSCTL1
			;mov.b	#0,&BCSCTL2
			;mov.b	#XCAP1,&BCSCTL3
INITS:
			call 	#INIT_REGISTERS			; Setup registers with default values
			call 	#SETUP_PERIPHERALS		; Setup Ports, ADC, scheduler

; MAIN_LOOP
; check each job flag and call relevant subroutine
; Enter LPM0
; Loop when wake
CHECK_BUT:
			bit.b	#BUT_JFLAG,R4			; Check if buzzer job set in flags
			jnz		BUT_PENDING				; if set, jump to BUT_PENDING
CHECK_ADC:
			bit.b	#ADC_JFLAG,R4
			jnz		ADC_PENDING
CHECK_BUZ:
			bit.b	#BUZ_JFLAG,R4
			jnz		BUZ_PENDING
SLEEP:
			;bis.w	#LPM0,SR				; Enter LPM0
			nop								; for debugger
LOOP:
			jmp		CHECK_BUT				; Woke from interrupt -> check jobs

; Job subroutine calls
BUT_PENDING:
			call	#BUT_JOB
			jmp		CHECK_ADC
ADC_PENDING:
			call	#ADC_JOB
			jmp		CHECK_BUZ
BUZ_PENDING:
			call	#BUZ_JOB
			jmp		SLEEP
;-------------------------------------------------------------------------------
; Subroutine Definitions
;-------------------------------------------------------------------------------
;-------------------------------------------------------------------------------
INIT_REGISTERS:
; READS
; AFFECTS	R4->R12
;-------------------------------------------------------------------------------
INIT_FLAGS:
			mov.b	#01111100b,R4			; All flags 1 except ISR flags
INIT_TIME:
			mov.w	#0,R5					; current time = 0
			mov.w	#0,R6					; Tdebounce = 0
			mov.w	#BUZ_PERIOD,R7			; TBuzzer = BUZ_Period
			mov.w	#ADC_PERIOD,R8			; TADC = ADC_period
INIT_FREQS:
			mov.w	#BUZ_FMIN,R9			; Flow = buz_fmin
			mov.w	#BUZ_FMAX,R10			; Fhigh = buz_fmax
			mov.w	#0,R11					; Fcurrent = 0
			mov.w	#BUZ_FMAX,R12			; Fset = buz_fmax
			ret
;-------------------------------------------------------------------------------
SETUP_PERIPHERALS:
; READS 	R12(Fset)
; AFFECTS 	Timer_A0, Timer_A1, ADC10, P1, P2, R5(CurrentTime)
;-------------------------------------------------------------------------------
SETUP_PRTS:
			mov.b	#0,&P1OUT				; initialise outputs to 0
			mov.b	#0,&P2OUT

			mov.b	#BIT0,&P1DIR			; Set LED on P1.0 as output
											; P1.4, P1.3 implicitly set as i/p
			mov.b	#BIT4,&P1REN			; Enable pot pulldown resistor
			mov.b	#BIT3,&P1IE				; enable button interrupt
			mov.b	#BIT3,&P1IES			; high-low

			mov.b	#BIT0|BIT1, &P2DIR		; Buzzer pins as o/p
			bis.w	#BIT3|BIT5, &P2DIR		; RGB LED pins as o/p
			mov.b	#BIT0|BIT1, &P2SEL		; set buzzer pins as timer o/p
			mov.b	#0,&P2SEL2				; ^

; Buzzer timer outputs a PWM signal to alternately drive buzzer pins
; Upmode to FSet
SETUP_BUZ:
			mov.w	#0,&TA1CTL				; stop timer while editing
			mov.w	R12,&TA1CCR0			; set timer registers to FSet
			mov.w	R12,&TA1CCR1
			mov.w 	#OUTMOD_4|BIT2,&TA1CCTL1; PWM with toggle, set TA1.1 to 1 initially
			mov.w	#OUTMOD_4,&TA1CCTL0		; PWM with toggle, TA1.0 = 0 initially
			mov.w	#TASSEL_2|ID_2,&TA1CTL	; SMCLK / 4 -> 250kHz still stopped

; Read potentiometer with ADC. Set to slowest settings for efficiency
; Using MCLK due to ACLK issues
SETUP_ADC:
			mov.w	#ADC10SHT_3,&ADC10CTL0	; Sample + Hold = 64 clocks
			bis.w	#ADC10ON,	&ADC10CTL0	; ADC ON
			bis.w	#ADC10IE,	&ADC10CTL0	; interrupt enabled
			bis.w	#SREF_0|REFON,&ADC10CTL0; Enable voltage reference, AVCC-AVSS
			bis.w	#ADC10SR,	&ADC10CTL0	; Slow sampling range
			mov.w	#INCH_4,	&ADC10CTL1	; set to input A4
			bis.w	#ADC10SSEL_2,&ADC10CTL1	; ACLK input
			bis.w	#ADC10DIV_7,&ADC10CTL1	; /8
			mov.w	#BIT4,		&ADC10AE0	; Enable channel A4

; Scheduler interrupts once every TPERIOD ms
; Divide input clk to lowest value
; Multiply Tperiod to get value in ms (ish)
SETUP_SCHED:
			mov.w	#0,&TA0CTL				; stop while editing
			; CCR0 = period*32, will use R5 / currentTime as an intermediate
			push	R5						; put value to top of stack
			mov.w	#TPERIOD,R5				;
			rla.w	R5						; tperiod * 2
			rla.w	R5						; tperiod * 4
			rla.w	R5						; tperiod * 8
			rla.w	R5						; tperiod * 15
			rla.w	R5						; tperiod * 32
			mov.w	R5,&TA0CCR0				; CCR0 = Tperiod *4
			pop		R5						; restore currentTime to R5
			mov.w	#CCIE,&TA0CCTL0			; Enable scheduler interrupt
			mov.w 	#0,&TA0CCTL1
			mov.w	#0,&TA0CCTL2
			mov.w	#TASSEL_2|ID_3,&TA0CTL	; ACLK/8 = 4khz, stopped

; Start ADC and timers
SETUP_START:
			bis.w	#MC_1,&TA1CTL			; start buzzer timer
			bis.w	#MC_1,&TA0CTL			; start scheduler timer
			bis.w	#ENC|ADC10SC,&ADC10CTL0	; Enable and start ADC conversion
			ret

;-------------------------------------------------------------------------------
BUT_JOB:
; READS
; AFFECTS 	R4 (BUT_JFLAG, BUZ_CONFIG)
;-------------------------------------------------------------------------------
			bic.b	#BUT_JFLAG,R4			; clear pending job
			xor.b	#BUZ_CONFIG,R4			; toggle buzzer config
			ret								; return to main

;-------------------------------------------------------------------------------
ADC_JOB:
; READS		R4 (BUZ_CONFIG), ADC10 (MEM)
; AFFECTS	R4 (ADC_JFLAG),  R11 (Fcurrent), R10 (Fhigh), R9 (Flow)
;-------------------------------------------------------------------------------
			bic.b	#ADC_JFLAG,R4			; clear pending job
			mov.w	&ADC10MEM,R11			; Store ADC value in Fcurrent
			bit.w	#0FFFFh,R11				; Check if any 1s in ADC value
			jz		ADC_ERROR				; If 0: ADC value error, set to 0
			sub.w	#POT_MIN,R11			; Take away POT_MIN from Fcurrent
ADC_CFG:	bit.b	#BUZ_CONFIG,R4			; test buzzer config flag
			jnz		ADC_FHIGH				; if buzzer config set, edit fhigh
			jmp		ADC_FLOW				; else: edit FLOW

ADC_ERROR:	mov.w	#0,R11					; Deal with ADC 0 value by setting to 0
			jmp		ADC_CFG					; continue without subtracting

ADC_FLOW:	;stepval = BUZ_C_LOW - fcurrent/2
			clrc
			rrc.b	R11						; fcurrent/2
			mov.b	#BUZ_C_LOW,R9			; set flow to BUZ_C_LOW
			sub		R11,R9					; flow = BUZ_C_LOW - fcurrent/2
			jmp		ADC_STCNV

ADC_FHIGH:	;stepval = BUZ_C_High - fcurrent/8
			clrc
			rrc.b	R11						; fcurrent/2
			clrc
			rrc.b	R11						; fcurrent/4
			clrc
			rrc.b	R11						; fcurrent/8
			mov.b	#BUZ_C_HIGH,R10			; fhigh = BUZ_C_HIGH
			sub		R11,R10					; fhigh = BUZ_C_LOW - fcurrent/8

ADC_STCNV:	; Start Next ADC conversion then finish
			bis.w	#ENC|ADC10SC,&ADC10CTL0	; Enable and start ADC conversion
			ret

;-------------------------------------------------------------------------------
BUZ_JOB:
; READS		R4 (BUZ_STATE), R9 (Flow),  R10 (Fhigh), R5 (Current Time)
; AFFECTS	R4 (BUZ_JFLAG, BUZ_STATE), R12 (Fset), Timer_A1 (CTL, CCR0, CCR1)
;			R7 (TBuzzer)
;-------------------------------------------------------------------------------
			bic.b	#BUZ_JFLAG,R4			; clear pending job
			bit.b	#BUZ_STATE,R4			; check if buzzing high or low
			jnz		BUZ_HIGH				; if 1: Buzzing high, else low
BUZ_LOW:
			mov.w	R9,R12					; set fset to flow
			jmp		BUZ_TIMER				; go edit timer
BUZ_HIGH:
			mov.w	R10,R12					; set Fset to Fhigh
BUZ_TIMER:
			bic.w	#MC_1,&TA1CTL			; clear upmode to stop timer
			mov.w	R12,&TA1CCR0			; set count registers to Fset
			mov.w	R12,&TA1CCR1
			bis.w	#MC_1,&TA1CTL			; start timer
BUZ_END:
			xor.b	#BUZ_STATE,R4			; toggle buzzer state
			; schedule next buzzer event
			mov.w	R5,R7					; Move current Time to TBuzzer
			add.w	#BUZ_PERIOD,R7			; Add buzzer period
			ret

;-------------------------------------------------------------------------------
; ISR Definitions
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
SCHED_ISR: ;Scheduler ISR
; READS 	R4 (Debounce_Flag, 	Conversion_flag, Job flags),  P1.3 in
;			R5 (Current Time), 	R6 (TDebounce), R7 (TBuzzer), R8 (TADC)
; AFFFECTS	P1.0 OUT (Green LED), R4 (Debounce_Flag, Conversion_Flag, Job flags)
;			R5 (Current Time0), SP (LPM0 bits)
;-------------------------------------------------------------------------------
			add		#TPERIOD,R5				; update currentTime
			xor		#BIT0,&P1OUT				; toggle scheduler LED

; if (button_flag && isTime(Tdebounce)) : deal with button debounce
SCHED_CDEB1:
			bit		#DEB_FLAG,R4			; check if debounce flag
			jnz		SCHED_CDEB2			; if high, check second condition
			jmp		SCHED_CCON1			; else: check ADC Conversion
SCHED_CDEB2:
			cmp		R5,R6					; check if it's time
			jeq		SCHED_DEB				; true: Go deal with debounce
			jmp		SCHED_CCON1			; false: go check ADC Conversiion
; Deal with debounce
SCHED_DEB:
			bic		#DEB_FLAG,R4			; clear debounce flag
			bit		#BIT3,&P1IN				; check if button still pressed
			jnz		SCHED_CCON1				; if set: Button not pressed, skip
			bis		#BUT_JFLAG,R4			; else: button still pressed, set job

; if (conversion_flag && isTime(TADC)
SCHED_CCON1:
			bit 	#CONV_FLAG,R4			; check if conversion flag
			jnz		SCHED_CCON2			; if high, check second condition
			jmp		SCHED_CBUZ				; else: go check buzzer
SCHED_CCON2:
			cmp 	R5,R8					; check if it's time
			jeq		SCHED_CONV				; if true: Deal with ADC
			jmp		SCHED_CBUZ				; if false: check buzzer
; Deal with ADC conversion
SCHED_CONV:
			bic		#CONV_FLAG,R4			; clear conversion flag
			bis		#ADC_JFLAG,R4			; raise ADC job

; if(isTime(Tbuzzer))
SCHED_CBUZ:
			cmp		R5,R7					; check if time
			jeq		SCHED_BUZ				; if true: deal with buzzer
			jmp		SCHED_WAKE				; if false: check if wake
SCHED_BUZ:
			bis		#BUZ_JFLAG,R4				; raise buzzer job

; Wake up if any pending jobs
SCHED_WAKE:
			bit		#JOB_FLAGS,R4			; check if any job flag set
			jz		SCHED_FIN				; if 0: no flags, stay asleep
			bic.w	#LPM0, 0(SP)			; else: clear LPM0 on exit

SCHED_FIN:
			reti
;-------------------------------------------------------------------------------
ADC_ISR:	; ADC Conversion ISR
; READS		R5 (Current_Time)
; AFFECTS	R4 (Conversion_Flag), R8 (TADC)
;-------------------------------------------------------------------------------
			bis		#CONV_FLAG,R4			; Set conversion flag
			; Schedule Conversion job
			mov.w	R5,R8					; Move Current Time to TADC
			add.w	#ADC_PERIOD,R8			; Add TADC to R8
			reti

;-------------------------------------------------------------------------------
BUT_ISR:	; Button ISR
; READS		R5 (Current_Time)
; AFFECTS	R4 (Debounce_Flag), P1IFG, R6 (TDebounce)
;-------------------------------------------------------------------------------
			bis 	#DEB_FLAG,R4			; Set debounce flag
			mov.b	#0,&P1IFG				; Clear button interrupt
			; Schedule Debounce job
			mov.w	R5,R6					; Move current time to TDebounce
			add.w	#BUT_DEB_PER,R6			; Add debouncem period to TDebounce
			reti

;-------------------------------------------------------------------------------
; Stack Pointer definition
;-------------------------------------------------------------------------------
            .global __STACK_END
            .sect   .stack
            
;-------------------------------------------------------------------------------
; Interrupt Vectors
;-------------------------------------------------------------------------------
            .sect   ".reset"                ; MSP430 RESET Vector
            .short  RESET
            .sect	".int09"				; Timer A0 interrupt
            .short	SCHED_ISR
            .sect	".int05"				; ADC10 interrupt
            .short	ADC_ISR
            .sect	".int02"				; Port 1 Interrupt
            .short	BUT_ISR
            

#include <msp430.h> 

// POTENTIOMETER: 3v3 -> P1.4 (A4)
// Buzzer: P2.4 (TA1.2) -> P2.2 (TA1.1)

// tested potentiometer values
#define POT_MAX 1023
#define POT_MIN 809
#define POT_MID ((POT_MAX - POT_MIN)/2 + POT_MIN)

// PWM values
// centre frequency at 2.8kHz
// 1M/2.8k = 357 steps
#define PWM_BASE (357 - (POT_MAX - POT_MIN))

/**
 * main.c
 */

char conv_flag = 0;
char button_flag = 0;


int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	__bis_SR_register(GIE);
	
	// debug
	/*
	// the jank loop
	P2DIR = BIT4 + BIT1;

	while(1) {
	    P2OUT = BIT4;
	    __delay_cycles(457/2);
	    P2OUT = BIT1;
	}*/

	// setup
	P1OUT = 0;
	P2OUT = 0;
	P3OUT = 0;

	P1DIR = 0;
	P2DIR = 0;
	P3DIR = 0;

	// ADC configuration
	// configure ADC pin with pull down
    P1REN |= BIT4; // enable pulldown resistor
    P1DIR &= ~BIT4; // set as pulldown

	// sample + hold time = 64 clocks
	// ADC ON
	// Interrupt enable
	ADC10CTL0  = ADC10SHT_3 + ADC10ON + ADC10IE;
	ADC10CTL0 |= SREF_0 + REFON; // Ref AVCC to AVSS,  enable voltage reference
	ADC10CTL0 |= ADC10SR; // sample rate 1:50ksps

	ADC10CTL1  = INCH_4; // input A4
	ADC10CTL1 |= ADC10SSEL_1 + ADC10DIV_7; // ACLK, /8
	ADC10AE0 |= BIT4; // enable A4

	// PWM Register definitions
	// SMCLK, /1, UP
	unsigned int PWM_TACTL = TASSEL_2 + ID_0 + MC_1;

	unsigned int PWM_CCTL0 = 0; //disable interrupt
	unsigned int PWM_CCR0  = PWM_BASE; // initial value, will change
	// side 1
	unsigned int PWM_CCTL1 = OUTMOD_3; // set/reset
	unsigned int PWM_CCR1  = PWM_CCR0/2; // 50% duty
	//side 2
	unsigned int PWM_CCTL2 = OUTMOD_7; //reset/set
	unsigned int PWM_CCR2  = PWM_CCR1;

	// set buzzer pins
	P2OUT |= BIT1 + BIT4; //RGB Red, buzzer1, buzzer2
	P2SEL |= BIT1 + BIT4; // set each as timer output
	P2SEL2 &= ~BIT1 + ~BIT2 + ~BIT4;


	// start buzzer
	TA1CTL  = 0; // stop while editing
	TA1CCR0 = PWM_CCR0;
	TA1CCR1 = PWM_CCR1;
	TA1CCR2 = PWM_CCR2;

	TA1CCTL0 = PWM_CCTL0;
	TA1CCTL1 = PWM_CCTL1;
	TA1CCTL2 = PWM_CCTL2;
	TA1CTL   = PWM_TACTL;

	// LED
	P1DIR |= BIT0; //P1.0 as output

	while(1) {
	    ADC10CTL0 |= ENC + ADC10SC; // enable conversion, Start conversion
	    //__bis_SR_register(CPUOFF + GIE); // LPM0, wait until conversion complete

	    // ISR has triggered

	    // Turn LED off when below threshold, on when above
	    if(ADC10MEM < POT_MID) {
	        P1OUT &= ~BIT0;
	    }
	    else {
	        P1OUT |= BIT0;
	    }

	}

	return 0;
}

#pragma vector=ADC10_VECTOR
__interrupt void adc_conversion_isr(void) {
    conv_flag = 1;
    //__bic_SR_register_on_exit(CPUOFF); // exit LPM0
}

// Button ISR
#pragma vector = PORT1_VECTOR
__interrupt void button_isr(void) {

    P1IFG      &= ~BIT3; // clear flag for button
    button_flag = 1;
    // exit LPM3 and deal with interrupt
    __bic_SR_register_on_exit(LPM3_bits);
    return;

}

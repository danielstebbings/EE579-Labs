#include <msp430.h> 


/**
 * Write a program to flash an LED with a period of 1.5 seconds.
 * Once a switch is pressed, the LED will go off,
 * and then exactly thirty seconds after the initial press
 * the LED will come on again and start flashing at 40 flashes/minute.
 *
 * main.c
 */

// definitions

#define DEBOUNCE_PERIOD_MS 20
#define DEBOUNCE_CLK_HZ    4000
#define DEBOUNCE_CYCLES ((unsigned int)(DEBOUNCE_PERIOD_MS * DEBOUNCE_CLK_HZ))
#define WAIT_PERIOD_S      30
#define WAIT_CLK_HZ        4000
#define WAIT_CYCLES_DIV2   (unsigned int)60000
#define PWM_PERIOD_MS      1500

unsigned int debounce_TACTL   = TASSEL_1 + ID_3 + MC_1; // ACLK, 4khz, Up
unsigned int debounce_TACCR0  = DEBOUNCE_CYCLES;
unsigned int debounce_TACCTL0 = CCIE; //enable interrupt

// long timer
// ACLK, 4khz, up/down, overflow interrupt
unsigned int wait_TACTL = TASSEL_1 + ID_3 + MC_3 + TAIE;
unsigned int wait_TACCR0   = 30000;
unsigned int wait_TACCTL0  = 0; // disable CCR0 interrupt


// PWM Timer
// Period: 1.5 seconds
// ACLK /8 -> 4kHz
// Up mode -> 6000
// 50% duty cycle
// Set Reset
const unsigned int PWM_TACTL  = TASSEL_1 + ID_3 + MC_1;
const unsigned int PWM_TACCR0 = 6000;
const unsigned int PWM_TACCTL0 = 0; // disable interrupt
const unsigned int PWM_TACCR1 = PWM_TACCR0/2;
const unsigned int PWM_TACCTL1 = OUTMOD_3;


char button_flag   = 0;
char debounce_flag = 0;
char wait_flag     = 0;

enum system_states {
    SETUP_FLASH,
    FLASHING,
    WAITING
};
enum system_states state = SETUP_FLASH;



int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	__enable_interrupt();

	// reset all ports
	P1OUT = 0;
	P2OUT = 0;
	P3OUT = 0;
	P1DIR = 0;
	P2DIR = 0;
	P3DIR = 0;
	// Button on P1.3 implicitly set as input

	// Set RGB LED Red as TA1.1 output
	P2DIR = BIT1 | BIT3; // RGB LED RED +  Green
	P2SEL |= BIT1;
	P2SEL2 &= ~BIT1;

	// Button Interrupt
	P1IFG = 0;
	P1IE = BIT3;
	P1IES = 0; // Low-high

	while(1) {
	    switch (state) {
	    case SETUP_FLASH:
	        // ensure timer is stopped before editing registers
            TA1CTL = MC_0;
            // start flashing PWM
            TA1CCR0 = PWM_TACCR0;
            TA1CCTL0 = PWM_TACCTL0;
            TA1CCR1 = PWM_TACCR1;
            TA1CCTL1 = PWM_TACCTL1;
            TA1CTL = PWM_TACTL;

            state = FLASHING;
            break;

	    case FLASHING:
	        if (button_flag == 1) {
	            button_flag = 0;
	            // button has been pressed
                // stop LED timer
                TA1CTL = MC_0;
                // ensure PWM output is 0
                TA1CCTL1 = OUTMOD_0;

                // setup wait timer
                TA0CTL = MC_0; // stop while editing
                TA0CCR0 = wait_TACCR0;
                TA0CCTL0 = wait_TACCTL0;
                TA0CTL = wait_TACTL;

                state = WAITING;
                // skip to next state
                // enter LPM3 with Global interrupts
                //__bis_SR_register(LPM3_bits + GIE);
                break;

	        }

	        // enter LPM3 with Global interrupts
	        //__bis_SR_register(LPM3_bits + GIE);

	        break;
	    case WAITING:
	        if (button_flag == 1) {
	            // restart timer when button pressed
	            // setup wait timer
                TA0CTL = MC_0; // stop while editing
                TA0CCR0 = wait_TACCR0;
                TA0CCTL0 = wait_TACCTL0;
                TA0CTL = wait_TACTL;
	        }
	        if (wait_flag == 2) {
	            wait_flag = 0;
	            // finished waiting
	            state = SETUP_FLASH;
	            // don't go back to LPM3
	            break;
	        }


	        break;
	    }
	}



	return 0;
}

// ISR Definitions

// Button ISR
#pragma vector = PORT1_VECTOR
__interrupt void button_isr(void) {

    P1IFG      &= ~BIT3; // clear flag for button
    button_flag = 1;


    // exit LPM3 and deal with interrupt
    __bic_SR_register_on_exit(LPM3_bits);

    return;

}

#pragma vector = TIMER0_A1_VECTOR
__interrupt void wait_isr(void) {
    if (TA0IV & TA0IV_TAIFG) {
        // Timer A overflow interrupt
        wait_flag += 1;
        TA0IV &= ~TA0IV_TAIFG; // clear flag

        if (wait_flag == 2) {
            __bic_SR_register_on_exit(LPM3_bits);
        }


    } else {
        // should never get to this state
    }

    return;
}

#pragma vector = TIMER0_A0_VECTOR
__interrupt void debounce_isr(void) {
    if (state == FLASHING) {
        button_flag = 0;
        if(P1IN & BIT3) { // button pressed
            debounce_flag = 1;
            __bic_SR_register_on_exit(LPM3_bits);
        } else {
            debounce_flag = 0;
            // invalid press, ignore
        }
    } else {
        // should never reach this state
    }

    return;
}

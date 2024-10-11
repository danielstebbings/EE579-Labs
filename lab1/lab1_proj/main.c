#include <msp430.h> 

// Custom Types
enum LIGHT_STATE {
    WAITING,
    WAIT_YELLOW,
    WAIT_RED,
    BUTTON_RELEASED

};

// RGB LED Colour combinations
#define RGB_RED     BIT1
#define RGB_GREEN   BIT3
#define RGB_BLUE    BIT5
#define RGB_YELLOW  RGB_RED + RGB_GREEN
#define LED_RED     BIT6;

// wait times
const int yellow_count  = 12795;
const int red_count     = 3074;

//  Interrupt flags
//char button_flag = 0;
char counter_flag = 0;

// State
enum LIGHT_STATE state = WAITING;

// Interrupt Service Routines
#pragma vector = TIMER0_A0_VECTOR
__interrupt void count_isr(void) {
    counter_flag = 1;

    return;
}


#pragma vector = PORT1_VECTOR
__interrupt void button_interrupt(void) {
    P1IFG &=  ~BIT3; // clear flag for button

    if (state == WAITING) { // Button pressed
        state = WAIT_YELLOW;
        __bic_SR_register_on_exit(LPM4_bits); // Clear Low Power Mode on exit

    }
    else { // Button Released
        state = BUTTON_RELEASED;
    }

    return;

}


/**
 * main.c
 */

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	__enable_interrupt();
	counter_flag = 0;
	//button_flag  = 0;

	TA0CTL = MC_0; // Stop Timer A0
	TA0CCTL0 = CCIE; // Enable Interrupt

	// Set TA into upmode with defined clock
	const int TA_UP = TASSEL_1 +  // ACLK
                      ID_3     +  // /8
                      MC_1;       // Start Timer, upmode to CCR0

	// Set up pins
	P2DIR = BIT1 + BIT3 + BIT5; // RGB LED
	P1DIR = BIT6; // RED LED

	P2OUT = 0;
	P1OUT = 0;
	// Button on P1.3, implicitly set as input



	// Initialising State Machine
	state = WAITING;


	// main loop
	while(1) {
	    switch (state) {
            case WAITING:
                // P1 Interrupt
                P1IFG = 0; // clear flag
                P1IE  = BIT3; // enable interrupt
                P1IES = 1; // Interrupt on high -> low (pressed)

                //__low_power_mode_4(); // Enter low power mode 4. Only restarts with interrupt
                //state = WAIT_YELLOW;
                break;

            case WAIT_YELLOW:
                if (counter_flag) {// 3 seconds has passed
                    TA0CTL = MC_0; // stop timer

                    P2OUT  = 0; // turn off RGB LED
                    P1OUT |= LED_RED; // turn on red led

                    TA0CCR0 = red_count;
                    TA0CTL = TA_UP;
                    TA0CCTL0 = CCIE; // Enable Interrupt

                    state = WAIT_RED;

                    counter_flag = 0;
                }
                break;
            case WAIT_RED:
                if (counter_flag) { // time to swap LEDs
                    P2OUT ^= RGB_RED;
                    P1OUT ^= LED_RED;

                    counter_flag = 0;

                    state = WAIT_RED;

                }
                break;
            case BUTTON_RELEASED:
                TA0CTL = MC_0;   // Stop timer

                // Turn off LEDS
                P2OUT = 0;
                P1OUT = 0;

                //button_flag = 0;
                state = WAITING;
                break;
	    }


	};

	return 0;
}

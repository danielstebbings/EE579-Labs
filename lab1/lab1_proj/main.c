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

//  Interrupt flags
char button_flag = 0;
char counter_flag = 0;
// Interrupt Service Routines
#pragma vector = TIMER0_A0_VECTOR
__interrupt void Timer_A(void) {
    TA0CTL = TA0CTL & (~MC_3);  // Stop timer, retain config
    counter_flag = 1;

    return;
}

#pragma vector = PORT1_VECTOR
__interrupt void button_interrupt(void) {

    button_flag = 1;
    P1IFG &=  ~BIT3; // clear flag for button

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
	button_flag  = 0;
	// Set up timer A
	TA0CTL = MC_0; // Stop Timer

	TA0CTL = TASSEL_1 +   // ACLK
	          ID_3 +      // /8
	          MC_0 +      // Stop Timer
	          TAIE;       // Timer A Interrupt Enable

	// Set up pins
	P2DIR = BIT1 + BIT3 + BIT5; // RGB LED
	P1DIR = BIT6; // RED LED

	P2OUT = 0;
	P1OUT = 0;
	// Button on P1.3, implicitly set as input

	// P1 Interrupt
	P1IFG = 0; // clear flag
	P1IE  = BIT3; // enable interrupt
	P1IES = 0; // Interrupt on low -> high

	// Initialising State Machine
	enum LIGHT_STATE state = WAITING;

	// wait times
	yellow_count = 12795;
	red1_count = 3074;
	red2_count = red1_count;

	// main loop
	while(1) {
	    if (button_flag) {
	        state = BUTTON_RELEASED;
	    }
	    switch (state) {
            case WAITING:
                if (!(P1IN & BIT3)) { // button pressed
                    P2OUT = RGB_YELLOW;
                    TA0CCR0 = yellow_count;

                    TA0CTL = TASSEL_1 +   // ACLK
                                  ID_3 +      // /8
                                  MC_1 +      // Stop Timer
                                  TAIE;       // Timer A Interrupt Enable
                    state = WAIT_YELLOW;
                }
                break;
            case WAIT_YELLOW:
                if (counter_flag) {// 3 seconds has passed
                    P2OUT  = 0; // turn off RGB LED
                    P1OUT |= LED_RED; // turn on red led

                    state = WAIT_RED;

                }


                break;
            case BUTTON_RELEASED:
                P2OUT = 0;
                P1OUT = 0;
                TA0CTL = TA0CTL & (~MC_3);  // Stop timer, retain config
                button_flag = 0;
                state = WAITING;
	    }


	};

	return 0;
}

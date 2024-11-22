/**
 * main.c
 *
 * Sounds two tone buzzer
 * Buzzer frequency controlled by potentiometer
 * Tone to edit controlled by Button on P1.3
 *
 * Connections:
 *      POTENTIOMETER: 3v3          -> P1.4 (A4)
 *          Internal pulldown resistor for divider!
 *
 *      Buzzer:        P2.0 (TA1.0) -> P2.1 (TA1.1)
 *
 *  Regular State: LPM0
 */

#include <msp430.h> 
#include "scheduling.h"
#include "peripherals.h"

// CONSTANTS ---------------------------------------

// - Potentiometer
//   tested potentiometer values
#define POT_MAX 1023
#define POT_MIN 809
#define POT_MID ((POT_MAX - POT_MIN)/2 + POT_MIN)

// - Buzzer
// - - Buzzer Frequency Range (Hz)
#define BUZ_FMIN     1500
#define BUZ_FMAX     3500
#define BUZ_FCENTER  2800
// - - Buzzer Wait Period (ms)
//     Sounded ~ 100bpm in video -> 600ms / tone
#define BUZ_PERIOD    600
// - - Button Debounce Period (ms)
#define BUT_DEBOUNCE   50

// - ADC
//   Update period (ms)
#define ADC_PERIOD     50

// TYPES -------------------------------------------

// - Scheduling
struct Jobs {
    unsigned int button : 1;
    unsigned int ADC    : 1;
    unsigned int Buzzer : 1;
};

// GLOBAL VARS -------------------------------------

// - Flags
char conversion_flag = 0;
char button_flag = 0;

// - Scheduling
Time CurrentTime = 0;
struct Jobs job_vector = {1,1,1};
// - - Schedule Points
Time Tperiod   = 10;
Time Tdebounce = 0;
Time Tbuzzer   = BUZ_PERIOD;
Time TADC      = ADC_PERIOD;

// - Buzzer
char buzzer_state = 1;
unsigned int flow   = BUZ_FMIN;
unsigned int fhigh  = BUZ_FMAX;
unsigned int fcur   = BUZ_FMIN;

// MAIN       -------------------------------------

int main(void)
{
    // initial setup
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer
    __bis_SR_register(GIE);

    // setup
    P1OUT = 0;
    P2OUT = 0;
    P3OUT = 0;
    P1DIR = 0;
    P2DIR = 0;
    P3DIR = 0;

    // ADC configuration
    // configure ADC pin with pull down
    P1REN |= BIT4;  // enable pull resistor
    P1DIR &= ~BIT4; // set as pulldown
    setup_pot_ADC();

    // set buzzer pins
    P2DIR   =  BIT0 +  BIT1;
    P2OUT  |=  BIT0 +  BIT1; // buzzer1, buzzer2
    P2SEL  |=  BIT0 +  BIT1; // set each as timer output
    P2SEL2 &= ~BIT0 + ~BIT1;

    // LED
    P1DIR |= BIT0; //P1.0 as output

    // Button interrupt when pressed
    // High -> Low transition
    P1DIR &= ~BIT3;
    P1IE  |=  BIT3;
    P1IES  =  BIT3;

    // Start Scheduler Timer
    setup_schedule_timerA0(Tperiod);

    // start a conversion
    ADC10CTL0 |= ENC + ADC10SC;

    while(1) {

        if (job_vector.button) {
            job_vector.button = 0;
            buzzer_state ^= buzzer_state;
        }
        if (job_vector.ADC) {
            job_vector.ADC = 0;
            // Turn LED off when below threshold, on when above
            if(ADC10MEM < POT_MID) {
                P1OUT &= ~BIT0;
                fcur = BUZ_FMIN;

            }
            else {
                P1OUT |= BIT0;
                fcur = BUZ_FMAX;
            }

            if (buzzer_state) {
                fhigh = fcur;
            } else {
                flow = fcur;
            }

            // enable conversion, Start conversion
            ADC10CTL0 |= ENC + ADC10SC;
        }
        if (job_vector.Buzzer) {
            job_vector.Buzzer = 0;

            if (buzzer_state) {
                setup_buzzer_timer(fhigh);
            } else {
                setup_buzzer_timer(flow);
            }

        }

        __bis_SR_register(LPM0_bits);

    }

    return 0;
}

// Scheduler Interrupt
#pragma vector=TIMER0_A0_VECTOR
__interrupt void scheduler_isr(void) {
    CurrentTime += Tperiod;

    if (button_flag && isTime(Tdebounce)) {
        button_flag = 0;
        if (!(P1IN & BIT3)) {
            // button still pressed
            job_vector.button = 1;
        }
    }
    if (conversion_flag && isTime(TADC)) {
        job_vector.ADC = 1;
    }
    if (isTime(Tbuzzer)) {
        job_vector.Buzzer = 1;
    }

    if (job_vector.button | job_vector.ADC | job_vector.Buzzer) {
        __bic_SR_register(LPM0_bits);
    }
    return;
}

#pragma vector=ADC10_VECTOR
__interrupt void adc_conversion_isr(void) {
    conversion_flag = 1;
    return;
}

// Button ISR
#pragma vector = PORT1_VECTOR
__interrupt void button_isr(void) {
    button_flag = 1;
    P1IFG       = 0; // clear flag for button
    Tdebounce = schedule(BUT_DEBOUNCE);
    return;

}

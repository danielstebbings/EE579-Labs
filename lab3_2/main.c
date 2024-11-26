/**
 * main.c
 *
 * Sounds two tone buzzer
 * Buzzer frequency controlled by potentiometer
 * Tone to edit controlled by Button on P1.3
 * Tone being edited indicated by RGB LED
 *      High -> Purple
 *      Low  -> Yellow
 * Scheduler Period indicated by Green LED
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
#define POT_MAX 1050
#define POT_MIN 800
#define POT_MID ((POT_MAX - POT_MIN)/2 + POT_MIN)

// - Buzzer
// - - Buzzer Frequency Range (Hz)
#define BUZ_FMIN     1000
#define BUZ_FMAX     5000
#define BUZ_FCENTER  ((BUZ_FMAX-BUZ_FMIN)/2)
#define BUZ_FSTEP    ((BUZ_FMAX-BUZ_FMIN)/(POT_MAX-POT_MIN))
// - - Buzzer Wait Period (ms)
//     Sounded ~ 100bpm in video -> 600ms / tone
#define BUZ_PERIOD    600
//#define BUZ_PERIOD    6000 // debug
// - - Button Debounce Period (ms)
#define BUT_DEBOUNCE   100
//#define BUT_DEBOUNCE 5000 //debug
// - ADC
//   Update period (ms)
#define ADC_PERIOD     100
//#define ADC_PERIOD 4000 //debug
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
Time Tperiod   = 100; // ms
Time Tdebounce = 0;
Time Tbuzzer   = BUZ_PERIOD;
Time TADC      = ADC_PERIOD;

// - Buzzer
char buzzer_state = 1; // Buzzing high / low
char buzzer_config = 1; // change freq of high / low
unsigned int flow   = BUZ_FMIN;
unsigned int fhigh  = BUZ_FMAX;
unsigned int fcur   = BUZ_FMAX;

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

    // LEDs
    P1DIR |= BIT0; //Green
    P2DIR |= BIT3 + BIT5; // Green, Blue
    // Button interrupt when pressed
    // High -> Low transition
    P1DIR &= ~BIT3;
    P1IE  |=  BIT3;
    P1IES  =  BIT3;

    // Start Scheduler Timer
    setup_schedule_timerA0(Tperiod);

    // start an ADC conversion
    ADC10CTL0 |= ENC + ADC10SC;

    while(1) {

        if (job_vector.button) {
            job_vector.button = 0;
            buzzer_config ^= 1;
        }
        if (job_vector.ADC) {

            job_vector.ADC = 0;

            // update current frequency
            fcur = (ADC10MEM - POT_MIN) * (BUZ_FSTEP/2);

            // apply current frequency to relevant value. Indicating with LED.
            P2OUT &= ~(BIT3 + BIT5); // turn off RGB indicator LEDs
            if (buzzer_config) {
                P2OUT |= BIT3; // YELLOW
                fhigh = BUZ_FCENTER+fcur;
            } else {
                P2OUT |= BIT5; // PURPLE
                flow = BUZ_FMIN+fcur;
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
            buzzer_state ^= 1;
            Tbuzzer = schedule(BUZ_PERIOD);

        }

        __bis_SR_register(LPM0_bits + GIE);

    }

    return 0;
}

// Scheduler Interrupt
#pragma vector=TIMER0_A0_VECTOR
__interrupt void scheduler_isr(void) {
    CurrentTime += Tperiod;
    //debug
    P1OUT ^= BIT0; // Green

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

    // Wake up if pending jobs
    if (job_vector.button | job_vector.ADC | job_vector.Buzzer) {
        __bic_SR_register_on_exit(LPM0_bits);
    }
    return;
}

#pragma vector=ADC10_VECTOR
__interrupt void adc_conversion_isr(void) {
    conversion_flag = 1;
    TADC = schedule(ADC_PERIOD);
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

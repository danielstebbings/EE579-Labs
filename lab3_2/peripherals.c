/*
 * peripherals.c
 *
 *  Created on: Nov 22, 2024
 *      Author: daniel
 */

// stdlibs

// ti libs
#include <msp430.h>
// custom libs

#include "peripherals.h"

// Potentiometer ------------------------

// setup ADC on A4
// This is read periodically, so is set as slow as possible
void setup_pot_ADC(void) {
    // Sample + hold = 64 clocks (slow!)
    // ADC on
    // Interrupt enable
    ADC10CTL0  = ADC10SHT_3 + ADC10ON + ADC10IE;
    // Enable voltage ref, AVCC to AVSS
    ADC10CTL0 |= SREF_0 + REFON;
    // Set slow sample rate range
    ADC10CTL0 |= ADC10SR;
    // Set input to A4, ACLK input, /8 divider
    ADC10CTL1 = INCH_4 + ADC10SSEL_1 + ADC10DIV_7;
    // Enable A4
    ADC10AE0 |= BIT4;

    return;
}

// Buzzer -------------------------------

// Timer_A0, PWM with toggle
// Use TA0.0, TA0.1 outputs
// Each output is out of phase
void setup_buzzer_timer( unsigned int frequency) {
    // SMCLK /4, Up mode
    // fout = 250 khz / frequency (Hz)
    // Duty cycle = 50%
    unsigned int countval = 250000 / frequency;

    TA1CTL = 0; // stop while editing
    TA1CCR0 = countval;
    TA1CCR1 = countval;
    // Toggle each output, set one TA1.1 to 1 initially.
    TA1CCTL1 |= OUTMOD_4 + BIT2;
    TA1CCTL0 |= OUTMOD_4;
    TA1CTL = TASSEL_2 + MC_1 + ID_2;

    return;

}

/*
 * peripherals.h
 *
 *  Created on: Nov 22, 2024
 *      Author: daniel
 */

#ifndef PERIPHERALS_H_
#define PERIPHERALS_H_


// Potentiometer ------------------------

// setup ADC on A4
// This is read periodically, so is set as slow as possible
void setup_pot_ADC(void);

// Buzzer -------------------------------

// Timer_A0, PWM with toggle
// Use TA0.0, TA0.1 outputs
// Each output is out of phase
// Frequency should be 1000 -> 4000 Hz
void setup_buzzer_timer( unsigned int frequency);


#endif /* PERIPHERALS_H_ */

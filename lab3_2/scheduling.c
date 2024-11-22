/*
 * scheduling.c
 *
 *  Created on: Nov 22, 2024
 *      Author: daniel
 */

// std libs

// ti libs
#include <msp430.h>

// custom
#include "scheduling.h"

// Time -----------------------------------------------------

Time sec2ms( int seconds) {
    return seconds*1024;
}


// Scheduling -----------------------------------------------

void setup_schedule_timerA0(Time period) {
    // upmode to count = period
    // interrupt every period ms
    // count freq = ACLK /8 = 4khz, T = 1/4ms
    // max value: ~16k ms. Good enough!

    TA0CTL   = 0; // stop while editing
    TA0CCR0  = period * 4;
    TA0CCTL0 = CCIE;
    TA0CCTL1 = 0;
    TA0CCTL2 = 0;
    TA0CTL  = MC_1 + TASSEL_1 + ID_3;


    return;

}

Time schedule(Time delay) {
    return CurrentTime + delay;
};

char isTime(Time event) {
    return CurrentTime == event;
}

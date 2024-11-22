/*
 * scheduling.h
 *
 *  Types Variables and functions to handle a basic scheduler
 *
 *  Created on: Nov 22, 2024
 *      Author: daniel
 */

#ifndef SCHEDULING_H_
#define SCHEDULING_H_

// Time -----------------------------------------------------
// - Types

// 0 -> + 64k ms, 0 -> +64 seconds
// 1024ms -> 1s, for speed.
typedef  unsigned int Time;

// - Global Variables

// IMPORTANT: CurrentTime should be defined in main.c
//            CurrentTime should only be modified in the relevant timer ISR
extern Time CurrentTime;

// - Functions

// seconds should be in range 0 -> 64
Time sec2ms( int seconds);



// Scheduling -----------------------------------------------

// set Timer_A0 to upmode with an interrupt every period ms.
// period should be < 16k
void setup_schedule_timerA0(Time period);

// Returns CurrentTime + delay
// wrapping allows a full period no matter value of CurrentTime
Time schedule(Time delay);

// returns 1 if CurrentTime == event, 0 otherwise
// This would be a boolean if that was a default type in C
char isTime(Time event);

#endif /* SCHEDULING_H_ */

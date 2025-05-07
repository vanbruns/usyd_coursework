/*
===============================================================================
 Name        : timer.h
 Author      : Van Bruns, Jr and Nazreen Rusli
 Version     : Alpha 0.0
 Copyright   : (C) Copyright
 Description : This defines functions and constants for timer.c.
===============================================================================
*/

#ifndef TIMER_H_
#define TIMER_H_

// Initialises the system so delays can be used.
void initDelay();

// Initialises for PWM output using the given period and off period.
void initPWM(uint32_t period, uint32_t offperiod);

// Initialises for prescaled PWM output using the given period, off period, and prescale.
void initPWMPrescale(uint32_t period, uint32_t offperiod, uint32_t prescale);

// Waits (delays) until the given time has passed. Cycle offset can be used for
// situations where you want to account for cycles already run by previous code.
// microsec is in microseconds
// cycleOffset is just the number cycles to remove from the delay
void delay(uint32_t microsec, uint32_t cycle_offset);

// Turns the PWM output on.
void pwmOn();

// Turns the PWM output off.
void pwmOff();

#endif /* TIMER_H_ */

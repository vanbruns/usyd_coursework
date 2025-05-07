/*
===============================================================================
 Name        : timer.c
 Author      : Van Bruns, Jr and Nazreen Rusli
 Version     : Alpha 0.0
 Copyright   : (C) Copyright
 Description : This implements the functions needs for using delays and PWM.
===============================================================================
*/

#include "LPC13xx.h"
#include "timer.h"

// Initialises the system so delays can be used.
void initDelay()
{
	// Enable the clock to CT32B1.
	LPC_SYSCON->SYSAHBCLKCTRL |= (1<<10);

	LPC_TMR32B1->PR = 0; // prescale value
	LPC_TMR32B1->TCR = 0x01; // start timer
}

// Initialises for PWM output using the given period and off period.
void initPWM(uint32_t period, uint32_t offPeriod)
{
	// Just use scale of one.
	initPWMPrescale(period, offPeriod, 1);
}

// Initialises for prescaled PWM output using the given period, off period, and prescale.
void initPWMPrescale(uint32_t period, uint32_t offPeriod, uint32_t prescale)
{
	uint32_t periodCycles; // The number of cycles before stopping the clock.
	uint32_t offCycles; // The number of cycles before changing MR1.

	// Enable the clock to CT32B0.
	LPC_SYSCON->SYSAHBCLKCTRL |= (1<<9);

	// Initialise P1.7 for PWM output.
	LPC_IOCON->PIO1_7 &= ~0x07;
	LPC_IOCON->PIO1_7 |= 0x02;

	// Calculate the number of cycles for the period and off period.
	periodCycles = period * ((SystemCoreClock/LPC_SYSCON->SYSAHBCLKDIV) / 1000000);
	offCycles = offPeriod * ((SystemCoreClock/LPC_SYSCON->SYSAHBCLKDIV) / 1000000);

	LPC_TMR32B0->TCR = 0x02; // Reset the counter.
	LPC_TMR32B0->PC = prescale - 1; // Set the prescale value.
	LPC_TMR32B0->MR0 = periodCycles; // Set the number of cycles before stopping.
	LPC_TMR32B0->MR1 = offCycles; // Set the number of cycles before changing MR1.
	LPC_TMR32B0->MCR = 0x02; // Set MR0 to reset the clock.
	LPC_TMR32B0->PWMC |= 0x02; // Set PWM enabled for MR1.

	// Make sure PWM output is initially off.
	pwmOff();
}

// Waits (delays) until the given time has passed. Cycle offset can be used for
// situations where you want to account for cycles already run by previous code.
// microsec is in microseconds
// cycleOffset is just the number cycles to remove from the delay
void delay(uint32_t microsec, uint32_t cycleOffset)
{
	uint32_t cycles; // The number of cycles before stopping the clock.

	// Convert microseconds to cycles and offset by the given offset.
	cycles = microsec * ((SystemCoreClock/LPC_SYSCON->SYSAHBCLKDIV) / 1000000) - cycleOffset;

	// If we have no cycles to delay, just return.
	if (cycles < 0)
		return;

	LPC_TMR32B1->TCR = 0x02; // Reset the counter.
	LPC_TMR32B1->MR2 = cycles; // Set the number of cycles before stopping.
	LPC_TMR32B1->MCR = 0x100; // Set MR2 to stop the clock.
	LPC_TMR32B1->TCR = 0x01; // Start the timer.

	while (LPC_TMR32B1->TCR & 0x01); // Wait until the clock has been stopped.
}

// Turns the PWM output on.
void pwmOn()
{
	LPC_TMR32B0->TCR = 0x01;
}

// Turns the PWM output off.
void pwmOff()
{
	LPC_TMR32B0->TCR = 0x02;
}

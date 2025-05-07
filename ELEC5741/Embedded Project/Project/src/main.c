/*
===============================================================================
 Name        : main.c
 Author      : Van Bruns, Jr and Nazreen Rusli
 Version     : Alpha 0.0
 Copyright   : (C) Copyright
 Description : This is the main loop of our Remote Camera Trigger program.
               It contains an initialisation method and some convenience methods.
===============================================================================
*/

#ifdef __USE_CMSIS
#include "LPC13xx.h"
#endif

#include "timer.h"
#include "daughter_board.h"
#include "gpio.h"

// Modes of operation.
#define SET_DELAY_MODE 0
#define PICTURE_MODE 1

// Range of delay offset.
#define DELAY_OFFSET_MIN 0
#define DELAY_OFFSET_MAX 99

int programMode = SET_DELAY_MODE;
int pictureOffset = DELAY_OFFSET_MIN;
uint32_t adValue = 0;

// Toggles the program mode, going from either set delay mode to picture mode
// or picture mode to set delay mode. Sets LED to show when we're in picture mode.
void toggleProgramMode()
{
	programMode = (programMode == SET_DELAY_MODE) ? PICTURE_MODE : SET_DELAY_MODE;
	GPIOSetValue(LED_PORT, LED_BIT, programMode);
}

// Outputs PWM to the IR diode for the given amount of time.
void irSignalOn(int delayInMicroseconds)
{
	pwmOn();
	delay(delayInMicroseconds, 0);
}

// Turns the IR diode off for the given amount of time.
void irSignalOff(int delayInMicroseconds)
{
	pwmOff();

	// Our waveform was off by a factor of 288 cycles, so that number of cycles
	// was removed from the delay. Not sure where the extra time was coming from.
	delay(delayInMicroseconds, 288);
}

// Triggers the camera to take a picture.
void takePicture()
{
	// If there is a picture offset, then delay by the offset
	// with a factor of 50millisec.
	if (pictureOffset)
	{
		delay(pictureOffset * 50000, 0);
	}

	// When the signal is on, it is actually a square wave of frequency 38.4kHz.
	// The argument into irSignalOn and irSignalOff is how long to delay in microseconds.
	// Total time to send signal is 135.58msec.
	irSignalOn(2000);
	irSignalOff(27830);
	irSignalOn(390);
	irSignalOff(1580);
	irSignalOn(410);
	irSignalOff(3580);
	irSignalOn(400);
	irSignalOff(63200);
	irSignalOn(2000);
	irSignalOff(27830);
	irSignalOn(390);
	irSignalOff(1580);
	irSignalOn(410);
	irSignalOff(3580);
	irSignalOn(400);
	irSignalOff(50000);
}

// Returns whether AD input was detected.
// The actual AD value will be set into adValue.
int detectADInput()
{
	int detected = 0;
	uint32_t input;

	// The input is bits 6-15 of AD6.
	input = (LPC_ADC->DR6>>6) & 0x3FF;

	// If this is not the first time setting adValue
	// and the new value if different from the previous,
	// then input was detected.
	if ((adValue != 0) && (adValue != input))
		detected = 1;

	adValue = input;

	return detected;
}

// Initialises the system for detecting AD input from the sensor
// and triggering the camera.
void projectInit()
{
	initDelay();
	initPWM(26, 13); // 38.4kHz
	initDB();

	LPC_IOCON->PIO1_10 |=  0x01; // Select function AD6 for 1.10
	LPC_IOCON->PIO1_10 &= ~0xC0; // Mode = Inactive (00 = no resistor)
	LPC_IOCON->PIO1_10 &= ~0x80; // Analog input mode (0 for analog input mode)

	LPC_SYSCON->SYSAHBCLKCTRL |= 0x2000; // Enable clock for ADC
	LPC_SYSCON->PDRUNCFG &= ~0x10; // Power on ADC (bit 4 -> 0 for power on)

	LPC_ADC->CR &= ~0x07000000; // START = No Start (000)
	LPC_ADC->CR &= ~0x000000FF; // Clear select bits
	LPC_ADC ->CR |= 0x00000040; // Select AD6 to be converted
	LPC_ADC->CR  |= 0x00010000; // BURST = Hardware scan mode (1)
	LPC_ADC->CR  |= 0x01000000; // START = Start conversion now (001)

	setSSDValue(pictureOffset); // Set SSDs based on default
	GPIOSetValue(LED_PORT, LED_BIT, programMode); // Set LED to display default mode
}

// Main loop.
int main(void)
{
	projectInit();

	while(1)
	{
		// Check if PB1 is pressed and debounce if it is.
		// If it is pressed for the full debounce, switch modes.
		if (detectPB(PB1))
		{
			if (debouncedPBDetect(PB1) == PB_PRESSED)
			{
				toggleProgramMode();
				delay(300000,0); // Delay by 300milliseconds for extra debounce

				// If we've moved into picture mode, call detectADInput once to read
				// in the current AD value and effectively "eat" the first detection.
				// After taking a picture, and changing back into picture mode, we
				// always seemed to immediately detect input. This fixes that problem.
				if (programMode == PICTURE_MODE)
				{
					detectADInput();
				}
			}
		}
		// Check if PB3 is pressed and if the offset is not at min, then debounce.
		// If it is pressed for the full debounce, decrement offset.
		else if (detectPB(PB3)
				&& (programMode == SET_DELAY_MODE)
				&& (pictureOffset != DELAY_OFFSET_MIN))
		{
			if (debouncedPBDetect(PB3) == PB_PRESSED)
			{
				pictureOffset--;
				setSSDValue(pictureOffset);
			}
		}
		// Check if PB4 is pressed and if the offset is not at max, then debounce.
		// If it is pressed for the full debounce, increment offset.
		else if (detectPB(PB4)
				&& (programMode == SET_DELAY_MODE)
				&& (pictureOffset != DELAY_OFFSET_MAX))
		{
			if (debouncedPBDetect(PB4) == PB_PRESSED)
			{
				pictureOffset++;
				setSSDValue(pictureOffset);
			}
		}
		// If we've switched to picture mode.
		else if (programMode == PICTURE_MODE)
		{
			// Take a picture if AD input detected.
			if (detectADInput())
			{
				takePicture();
				toggleProgramMode();
				delay(500000,0);
			}
		}
		// Else, just delay and let's loop again.
		else
		{
			delay(10, 0);
		}
	}

	return 0 ;
}

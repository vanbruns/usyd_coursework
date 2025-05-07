/*
===============================================================================
 Name        : daughter_board.c
 Author      : Van Bruns, Jr and Nazreen Rusli
 Version     : Alpha 0.0
 Copyright   : (C) Copyright
 Description : This implements functions needs for the daughter board.
===============================================================================
*/

#include "LPC13xx.h"
#include "gpio.h"
#include "timer.h"
#include "daughter_board.h"

// This table represents the on/off values for the segments of each digit.
int ssdtab[DIGSIZE][SSDSIZE] =
    {{1, 1, 1, 1, 1, 1, 0},
    {0, 1, 1, 0, 0, 0, 0},
    {1, 1, 0, 1, 1, 0, 1},
    {1, 1, 1, 1, 0, 0, 1},
    {0, 1, 1, 0, 0, 1, 1},
    {1, 0, 1, 1, 0, 1, 1},
    {1, 0, 1, 1, 1, 1, 1},
    {1, 1, 1, 0, 0, 0, 0},
    {1, 1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 0, 1, 1}};

// This table represents the ports for the two SSDs.
int ssdport[SSDCOUNT][SSDSIZE] = {{0, 0, 2, 0, 0, 1, 0},
                                 {0, 0, 0, 0, 1, 1, 2}};

// This table represents the bits for the two SSDs.
int ssdbit[SSDCOUNT][SSDSIZE] = {{9, 8, 11, 2, 7, 0 ,11},
                                {1, 3, 5, 4, 9, 11, 6}};

// Initialises the needed daughter board components.
void initDB()
{
	int j;

	GPIOInit();

	// Initialise LPC_IOCON registers so they don't interfere with the GPIO ports.
	LPC_IOCON->PIO0_1 = 0xD0;
	LPC_IOCON->PIO0_4 = 0;
	LPC_IOCON->PIO0_5 = 0;
	LPC_IOCON->PIO2_6 = 0;
	LPC_IOCON->JTAG_TMS_PIO1_0 |= 1;
	LPC_IOCON->JTAG_TDI_PIO0_11 &= ~0x07;
	LPC_IOCON->JTAG_TDI_PIO0_11 |= 0x01;

	// Initialise all segments as outputs.
	for (j = 0; j < SSDSIZE * SSDCOUNT; j++)
		// (j / SSDSIZE) tells us which SSD, (j % SSDSIZE) tells us which segment.
		GPIOSetDir(ssdport[j / SSDSIZE][j % SSDSIZE], ssdbit[j / SSDSIZE][j % SSDSIZE], 1);

	// Initialise PB1, PB3, and PB4 as inputs.
	GPIOSetDir(PB1_PORT, PB1_BIT, 0);
	GPIOSetDir(PB3_PORT, PB3_BIT, 0);
	GPIOSetDir(PB4_PORT, PB4_BIT, 0);

	// Initialise the LED for output.
	GPIOSetDir(LED_PORT, LED_BIT, 1);
}

// Uses the tables and given value and digit to "decode" into the right SSD output.
void ssddecode(int value, int digit)
{
	int j;

	for (j = 0; j < SSDSIZE; j++)
		GPIOSetValue(ssdport[digit][j], ssdbit[digit][j], ssdtab[value][j]);
}

// Displays the given value on the two SSDs.
// Value must comply with: 0 <= value <= 99
// Returns a value of -1 if out of the needed range.
int setSSDValue(int value)
{
	if ((value > 99) || (value < 0))
		return -1;

	ssddecode(value / DIGSIZE, TENS_DIGIT);
	ssddecode(value % DIGSIZE, ONES_DIGIT);

	return 0;
}

// Detects whether the given push button is pressed.
// button should be one of the following: PB1, PB2, PB3, or PB4.
// debounce is only internally used.
// Returns either PB_PRESSED, PB_NOT_PRESSED, or PB_ERROR.
int commonPBDetect(int button, int debounce)
{
	LPC_GPIO_TypeDef *gpio;
	int bit;
	int i = 0;

	// Set the appropriate gpio and bit for the given button.
	switch (button)
	{
		case PB1:
			bit = PB1_BIT;
			gpio = LPC_GPIO0;
			break;
		case PB2:
			bit = PB2_BIT;
			gpio = LPC_GPIO0;
			break;
		case PB3:
			bit = PB3_BIT;
			gpio = LPC_GPIO3;
			break;
		case PB4:
			bit = PB4_BIT;
			gpio = LPC_GPIO3;
			break;
		default:
			return PB_ERROR;
	}

	// If we just want to detect whether pressed without debounce.
	if (!debounce)
		return !gpio->MASKED_ACCESS[(1<<bit)];

	do
	{
		// If the gpio bit is 0, increment.
		if (!gpio->MASKED_ACCESS[(1<<bit)])
			i++;
		// Else, not enough consecutive 0's and the button wasn't really pressed.
		else
			return PB_NOT_PRESSED;

		delay(10000, 0);
	}
	// Five consecutive 0's means the push button was pressed.
	while (i < 5);

	return PB_PRESSED;
}

// Detects whether the given push button is pressed.
int detectPB(int button)
{
	return commonPBDetect(button, 0);
}

// Detects whether the given push button is pressed.
// button should be one of the following: PB1, PB2, PB3, or PB4.
// Returns either PB_PRESSED, PB_NOT_PRESSED, or PB_ERROR.
int debouncedPBDetect(int button)
{
	return commonPBDetect(button, 1);
}

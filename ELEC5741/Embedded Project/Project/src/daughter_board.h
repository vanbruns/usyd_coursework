/*
===============================================================================
 Name        : daughter_board.h
 Author      : Van Bruns, Jr and Nazreen Rusli
 Version     : Alpha 0.0
 Copyright   : (C) Copyright
 Description : This defines functions and constants for daughter_board.c.
===============================================================================
*/

#ifndef DAUGHTER_BOARD_H_
#define DAUGHTER_BOARD_H_

// Ports for the push buttons.
#define PB1_PORT 0
#define PB2_PORT 0
#define PB3_PORT 3
#define PB4_PORT 3

// Bits for the push buttons.
#define PB1_BIT 6
#define PB2_BIT 10
#define PB3_BIT 0
#define PB4_BIT  1

// LED constants.
#define LED_PORT 1
#define LED_BIT 8
#define LED_ON 1  // Output of 1 means LED on.
#define LED_OFF 0  // Output of 0 means LED off.

// Seven-segment display constants.
#define ONES_DIGIT 0
#define TENS_DIGIT 1
#define SSDCOUNT 2
#define SSDSIZE 7
#define DIGSIZE 10 // number of digits (0-9)

// Constants representing the push buttons used in debouncedPBDetect.
#define PB1 1
#define PB2 2
#define PB3 3
#define PB4 4

// Return values for debouncedPBDetect.
#define PB_ERROR -1
#define PB_NOT_PRESSED 0
#define PB_PRESSED 1

// Initialises the needed daughter board components.
void initDB();

// Displays the given value on the two SSDs.
// Value must comply with: 0 <= value <= 99
// Returns a value of -1 if out of the needed range.
int setSSDValue(int value);

// Detects whether the given push button is pressed.
int detectPB(int button);

// Detects whether the given push button is pressed.
// button should be one of the following: PB1, PB2, PB3, or PB4.
// Returns either PB_PRESSED, PB_NOT_PRESSED, or PB_ERROR.
int debouncedPBDetect(int button);

#endif /* DAUGHTER_BOARD_H_ */

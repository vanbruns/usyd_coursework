/*
===============================================================================
 Name        : main.c
 Author      : 
 Version     :
 Copyright   : (C) Copyright
 Description : main definition
===============================================================================
*/

#include "LPC13xx.h"                    /* LPC13xx definitions */
#include "gpio.h"
#include <string.h>
#include <ctype.h>

// LPCXpresso processor card LED
#define LED_PORT 0  // Port for led
#define LED_BIT 7  // Bit on port for led
#define LED_ON 1  // Level to set port to turn on led
#define LED_OFF 0  // Level to set port to turn off led
#define MASKED   // use masked GPIO operations

#define ONES_DIGIT 0
#define TENS_DIGIT 1
#define SSDCOUNT 2 // number of SSDs
#define SSDSIZE 7 // number of segments in SSD
#define DIGSIZE 10 // number of different symbols to decode
#define PB4_PORT 3
#define PB4_BIT  1

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

// port number for a given segment
int ssdport[SSDCOUNT][SSDSIZE] = {{0, 0, 2, 0, 0, 1, 0},
                                 {0, 0, 0, 0, 1, 1, 2}};
// bit number for a given segment
int ssdbit[SSDCOUNT][SSDSIZE] = {{9, 8, 11, 2, 7, 0 ,11},
                                {1, 3, 5, 4, 9, 11, 6}};

int delay(int n)
{
 int i, j, k;

 while (n-- > 0)
 {
  k = 0;
  for (i = 0; i < 2; i++)
  {
   for (j = 0; j < 10000; j++)
    k = k + j;
  }
 }
 return k;
}

void ssddecode(int a, int b)
{
    int j;

  for (j = 0; j < SSDSIZE; j++)
   GPIOSetValue(ssdport[b][j], ssdbit[b][j], ssdtab[a][j]);
}

void dwaitpb4()
{
	int i = 0;
	do
	{
		// count number of consecutive 0's and exit after a threshold
		if (!LPC_GPIO3->MASKED_ACCESS[(1<<PB4_BIT)])
			i = i + 1;
		else
			i = 0;
		delay(10);
	}
	while (i < 5);
}

void waitpb4()
{
 while (1)
 {
  // count number of consecutive 0's and exit after a threshold
  if (!LPC_GPIO3->MASKED_ACCESS[(1<<PB4_BIT)])
   return;
  delay(2);
 }

}

void init()
{
    int j;

 GPIOInit();

 // init LPC_IOCON registers so they don't interfere with the GPIO ports
 LPC_IOCON->PIO0_1 = 0xD0;
 LPC_IOCON->PIO0_4 = 0;
 LPC_IOCON->PIO0_5 = 0;
 LPC_IOCON->PIO2_6 = 0;
 LPC_IOCON->JTAG_TMS_PIO1_0 |= 1;
 LPC_IOCON->JTAG_TDI_PIO0_11 &= ~0x07;
 LPC_IOCON->JTAG_TDI_PIO0_11 |= 0x01;
 // initialize the direction of all SSDs.
 for (j = 0; j < SSDSIZE * SSDCOUNT; j++)
  // j / SSDSIZE tells us which SSD, j % SSDSIZE tells us which segment.
  GPIOSetDir(ssdport[j / SSDSIZE][j % SSDSIZE], ssdbit[j / SSDSIZE][j % SSDSIZE], 1);
 GPIOSetDir(PB4_PORT, PB4_BIT, 0);
}

int main()
{
 int i;

 init();

 for (i = 0; ; i++)
 {
  // if we've just incremented the second digit, update its SSD.
  if ((i % DIGSIZE) == 0)
  {
   ssddecode((i / DIGSIZE) % DIGSIZE, TENS_DIGIT);
  }

  // update the first SSD.
  ssddecode(i % DIGSIZE, ONES_DIGIT);
  dwaitpb4();
 }
 return 0;
}

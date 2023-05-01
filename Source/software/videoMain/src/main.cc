
//Empty C++ Application
#include <stdio.h>
#include "xil_types.h"
#include "xtmrctr.h"
#include "xparameters.h"
#include "xil_cache.h"

#include "xil_io.h"
#include "xil_exception.h"
#include "xscugic.h"
#include <cstdlib>
#include <iostream>
#include <vector>
#include <string>
#include "xuartps.h"
#include "stdlib.h"
#include <math.h>
#include "sleep.h"
#include "xgpiops.h"
#include "xgpio.h"
#include <map>
#include <iostream>
#include <string>
#include "xil_mmu.h"
#include "xpseudo_asm.h"
#include "xil_exception.h"

//Define variables
#define white 0xfffffff
#define black 0x00000000
#define Horsize 1280
#define Versize 1024

#define UART_BASEADDR XPAR_PS7_UART_1_BASEADDR

#define BUTTON_SWITCH_BASE XPAR_GPIO_0_BASEADDR
//#define LED_BASE XPAR_LED_CONTROLLER_0_S00_AXI_BASEADDR
#define BUTTON_SWITCH_ID XPAR_GPIO_0_DEVICE_ID
//#define XPAR_PS7_GPIO_0_DEVICE_ID

/* ---------------------------------------------------------------------------- *
 * 							Define GPIO Channels								*
 * ---------------------------------------------------------------------------- */
#define BUTTON_CHANNEL 1
#define SWITCH_CHANNEL 2
#define INTC_DEVICE_ID XPAR_PS7_SCUGIC_0_DEVICE_ID
#define INTC_GPIO_INTERRUPT_ID XPAR_FABRIC_AXI_TIMER_0_INTERRUPT_INTR

//address for core 1
#define ARM1_STARTADR 0xFFFFFFF0
#define ARM1_BASEADDR 0x10080000
#define COMM_VAL (*(volatile unsigned long *)(0x0f000000))

using namespace std;

//each pointer size is 0x07E9004
int* image_buffer = (int*)0x00900000;

int NUM_BYTES_BUFFER = 5242880;

//the bar generation code starts here
int red = 0x000000FF;
int green = 0x0000FF00;
int blue = 0x00FF0000;
int yellow = 0x0000FFFF;
int purple = 0x00FF00FF;
int orange = 0x0000a5ff;
int cyan = 0x00FFFF00;
int pink = 0x00B469FF;
int waterloo = 0x009f8087;
int chartreuse = 0x0000ff95;
int silver = 0x00c0c0c0;
int springgreen = 0x0080ff00;
int darkorange = 0x000080ff;
int lightcoral = 0x008080ff;

int wallcolour = 0x00D9EAD3;
int darkgrey = 0x00999999;

int colour[] = {red, green, blue, yellow, purple, orange, cyan, pink, waterloo, chartreuse, springgreen, lightcoral};

int barWidth = Horsize/6;

int ballpixelwidth = 4;
int ballpixelheight = 4;

int pixelwidth = 4;
int pixelheight = 4;

int paddleW = 60;
int paddleH = 20;
int framethickness = 10;

int xdirec = 1;
int ydirec = 1;
int brickCounter = 12*7;
//int NumOfBlackB = 0;
int brickW = 100;  //brick width is the whole block's width including outline
int brickH = 50;

int drawRect (int xpos, int ypos, int width, int height, int colour)
{
	int i=0, j =0;
		for (i = xpos; i <= xpos+width; i++)
		{
			for (j = ypos; j <=  ypos+height; j++)
				{
					image_buffer[j*Horsize+i] = colour;
				}
		}
	return 0;
};

//draw ball

int ballxpos[8][8];
int ballypos[8][8];
int ballcolour[8][8];

int drawBall (int x_centre, int y_centre, int ballcolour)
{
	//int i, j;
	//(i-x_centre)^2 + (j - y_centre)^2 = r^2
	int x_offset = ballpixelwidth;
	int y_offset = ballpixelheight;

	//int inscribeH = 8*pixelwidth;
	//int inscribeV = 8*pixelheight;

	/*int circle [0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00,
			   0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00,
			   0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
			   0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
			   0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
			   0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
			   0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00,
			   0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00];*/

	//this one works and it is not bad.
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_centre-2*x_offset, y_centre-4*y_offset, 4*ballpixelwidth, ballpixelheight, ballcolour); //row 1
	drawRect(x_centre-3*x_offset, y_centre-3*y_offset, 6*ballpixelwidth, ballpixelheight, ballcolour);  //row 2
	drawRect(x_centre-4*x_offset, y_centre-2*y_offset, 8*ballpixelwidth, ballpixelheight, ballcolour);  //row 3
	drawRect(x_centre-4*x_offset, y_centre-1*y_offset, 8*ballpixelwidth, ballpixelheight, ballcolour);  //row 4
	drawRect(x_centre-4*x_offset, y_centre, 8*ballpixelwidth, ballpixelheight, ballcolour);  			//row 5
	drawRect(x_centre-4*x_offset, y_centre+1*y_offset, 8*ballpixelwidth, ballpixelheight, ballcolour);  //row 6
	drawRect(x_centre-3*x_offset, y_centre+2*y_offset, 6*ballpixelwidth, ballpixelheight, ballcolour);  //row 7
	drawRect(x_centre-2*x_offset, y_centre+3*y_offset, 4*ballpixelwidth, ballpixelheight, ballcolour);  //row 8
	/*for (i=-2; i <= 2; i++)
	{
		for (j = 0; j < 8; j++)
		{

			ballxpos[i][j] = x_centre-2*x_offset;
			ballypos[i][j] = framethickness+2+j*yoffset;
			brickcolour[i][j] = green;
		}
	}*/

	//printf("%d, %d\n" , x_centre, y_centre);
	return 0; // migt need to delete
}

int drawFrame (void)
{
	int i, j = 0;
	for (i = 0 ; i <= Horsize; i++)
	{
		if (i <= framethickness || i >= Horsize-framethickness)
		{
			for (j = 0; j <= Versize; j++)
			{
				image_buffer[j*Horsize+i] = wallcolour;
			}
		}
		if (i > 0 && i < Horsize)
		{
			for (j = 0; j <= framethickness; j++)
			{
				image_buffer[j*Horsize+i] = wallcolour;
			}
		}
	}
	return 0; // might need to delete
}

//draw Paddle function
int drawPaddle (int xpos, int ypos, int paddlecolour)
{
	int i, j = 0;


	for (i = xpos; i <= xpos+paddleW; i++)
	{
		for (j = ypos; j<= ypos+paddleH; j++)
		{
			image_buffer[j*Horsize+i] = paddlecolour;
		}
	}
	//printf("%d, %d\n" , xpos, ypos);
	return 0; // might need to delete
}

//draw brick function - only draws one brick

int drawBrick (int x_pos, int y_pos, int filledColour, int outlineColour)
{
	int outlineWeight = 2;

	//int brickW = 100;  //brick width is the whole block's width including outline
	int brickfillW = brickW - 2*outlineWeight;

	//int brickH = 50;
	int brickfillH = brickH - 2*outlineWeight;

	int i, j = 0;

	for (i = x_pos; i <= x_pos+brickW; i++)
		{
			for (j = y_pos; j <= y_pos+brickH; j++)
			{

				if (i >= x_pos + outlineWeight && i <= x_pos + outlineWeight + brickfillW)
				{
					if (j >= y_pos + outlineWeight && j <= y_pos + outlineWeight + brickfillH)
					{
						image_buffer[j*Horsize+i] = filledColour;
					}
					else
					{
						image_buffer[j*Horsize+i] = outlineColour;
					}
				}
				else
				{
					image_buffer[j*Horsize+i] = outlineColour;
				}
			}
		}
		return 0; // might need to delete
}



//draw 0 with sprites
int drawZero (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb8 [0, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	 	 	 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	         0, 1, 1, 1, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+1*x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 l
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 r
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4 l
	drawRect(x_pos+4*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4 r
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5 l
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5 r
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6 l
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6 r
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 l
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 r
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 1 with sprites
int drawOne (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb1 [0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
	 	 	 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
	         0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+2*x_offset, y_pos+0*y_offset, 1*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+1*x_offset, y_pos+1*y_offset, 2*pixelwidth, pixelheight, white); //row 2
	drawRect(x_pos+2*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3
	drawRect(x_pos+2*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4
	drawRect(x_pos+2*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5
	drawRect(x_pos+2*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6
	drawRect(x_pos+2*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw two with sprites
int drawTwo (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb2 [0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
	 	 	 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
			 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	         0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 r
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3
	drawRect(x_pos+3*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4
	drawRect(x_pos+2*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5
	drawRect(x_pos+1*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 5*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 3 with sprites
int drawThree (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb3 [0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
	 	 	 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
			 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
	         0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 r
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3
	drawRect(x_pos+2*x_offset, y_pos+3*y_offset, 2*pixelwidth, pixelheight, white); //row 4
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 l
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 r
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 4 with sprites
int drawFour (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb4 [0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
	 	 	 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00,
			 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
			 0x01, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00,
	         0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+3*x_offset, y_pos+0*y_offset, 1*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+2*x_offset, y_pos+1*y_offset, 2*pixelwidth, pixelheight, white); //row 2
	drawRect(x_pos+1*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 l
	drawRect(x_pos+3*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 r
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4 l
	drawRect(x_pos+3*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4 r
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 5*pixelwidth, pixelheight, white); //row 5
	drawRect(x_pos+3*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6
	drawRect(x_pos+3*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7
	drawRect(x_pos+3*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 5 with sprites
int drawFive (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb5 [1, 1, 1, 1, 1, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
	 	 	 1, 1, 1, 1, 0, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	         0, 1, 1, 1, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 5*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 4*pixelwidth, pixelheight, white); //row 4
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 l
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 r
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 6 with sprites
int drawSix (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb6 [0, 0, 1, 1, 0, 0, 0, 0,
			 0, 1, 0, 0, 0, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
	 	 	 1, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	         0, 1, 1, 1, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+2*x_offset, y_pos+0*y_offset, 2*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+1*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 4*pixelwidth, pixelheight, white); //row 4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5 l
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5 r
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6 l
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6 r
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 l
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 r
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 7 with sprites
int drawSeven (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb7 [1, 1, 1, 1, 1, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0, 0,
			 0, 0, 0, 1, 0, 0, 0, 0,
	 	 	 0, 0, 0, 1, 0, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0, 0,
			 0, 1, 0, 0, 0, 0, 0, 0,
	         0, 1, 0, 0, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 5*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2
	drawRect(x_pos+3*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3
	drawRect(x_pos+3*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4
	drawRect(x_pos+2*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5
	drawRect(x_pos+2*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6
	drawRect(x_pos+1*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 8 with sprites
int drawEight (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb8 [0, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	 	 	 0, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	         0, 1, 1, 1, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+1*x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 l
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 r
	drawRect(x_pos+1*x_offset, y_pos+3*y_offset, 3*pixelwidth, pixelheight, white); //row 4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5 l
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, white); //row 5 r
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6 l
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6 r
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 l
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7 r
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

//draw 9 with sprites
int drawNine (int x_pos, int y_pos)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*numb9 [0, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	 	 	 1, 0, 0, 0, 1, 0, 0, 0,
			 0, 1, 1, 1, 1, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0, 0,
			 0, 0, 0, 1, 0, 0, 0, 0,
	         0, 1, 1, 0, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+1*x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, white); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, white); //row 2 r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 l
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, white); //row 3 r
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4 l
	drawRect(x_pos+4*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, white); //row 4 r
	drawRect(x_pos+1*x_offset, y_pos+4*y_offset, 4*pixelwidth, pixelheight, white); //row 5
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, white); //row 6
	drawRect(x_pos+3*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, white); //row 7
	drawRect(x_pos+1*x_offset, y_pos+7*y_offset, 2*pixelwidth, pixelheight, white); //row 8

	return 0; //might need to delete
}

int eraseNum (int x_pos, int y_pos)
{
	drawRect(x_pos, y_pos, 8*pixelwidth, 8*pixelheight, black); //row 1
	return 0; //might need to delete
}

//draw S with sprites
int drawS (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  S [0, 1, 1, 1, 1, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
	 	 	 0, 1, 1, 1, 0, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0, 0,
			 0, 0, 0, 0, 1, 0, 0, 0,
	         1, 1, 1, 1, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+1*x_offset, y_pos+0*y_offset, 4*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3
	drawRect(x_pos+1*x_offset, y_pos+3*y_offset, 3*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 4*pixelwidth, pixelheight, colour); //row 8

	return 0; //might need to delete
}

//draw C with sprites
int drawC (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  C [0, 0, 1, 1, 1, 0, 0, 0,
			 0, 1, 0, 0, 0, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
	 	 	 1, 0, 0, 0, 0, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
			 1, 0, 0, 0, 0, 0, 0, 0,
			 0, 1, 0, 0, 0, 0, 0, 0,
	         0, 0, 1, 1, 1, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+2*x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+1*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6
	drawRect(x_pos+1*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7
	drawRect(x_pos+2*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, colour); //row 8

	return 0; //might need to delete
}

//draw O with sprites
int drawO (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  O [0, 0, 1, 1, 1, 0, 0, 0,
			 0, 1, 0, 0, 0, 1, 0, 0,
			 1, 0, 0, 0, 0, 0, 1, 0,
	 	 	 1, 0, 0, 0, 0, 0, 1, 0,
			 1, 0, 0, 0, 0, 0, 1, 0,
			 1, 0, 0, 0, 0, 0, 1, 0,
			 0, 1, 0, 0, 0, 1, 0, 0,
	         0, 0, 1, 1, 1, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+2*x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+1*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2 l
	drawRect(x_pos+5*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2 r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3 l
	drawRect(x_pos+6*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3 r
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4 l
	drawRect(x_pos+6*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4 r
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5 l
	drawRect(x_pos+6*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5 r
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6 l
	drawRect(x_pos+6*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6 r
	drawRect(x_pos+1*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7 l
	drawRect(x_pos+5*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7 r
	drawRect(x_pos+2*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, colour); //row 8

	return 0; //might need to delete
}

//draw R with sprites
int drawR (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  R [1, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	 	 	 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	         1, 0, 0, 0, 0, 1, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 4*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2 l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2 r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3 l
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3 r
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4 l
	drawRect(x_pos+4*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4 r
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 4*pixelwidth, pixelheight, colour); //row 5
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6 l
	drawRect(x_pos+3*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6 r
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7 l
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7 r
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8 l
	drawRect(x_pos+5*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8 r

	return 0; //might need to delete
}

//draw E with sprites
int drawE (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  E [1, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	 	 	 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	         1, 0, 0, 0, 0, 1, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 5*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 4*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 5*pixelwidth, pixelheight, colour); //row 8

	return 0; //might need to delete
}

//draw B with sprites
int drawB (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  B [1, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	 	 	 1, 1, 1, 1, 0, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 0, 1, 0, 0, 0,
	         1, 1, 1, 1, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 4*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3l
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3r
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 4*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5l
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5r
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6l
	drawRect(x_pos+4*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6r
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7l
	drawRect(x_pos+4*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7r
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 4*pixelwidth, pixelheight, colour); //row 8

	return 0; //might need to delete
}

//draw K with sprites
int drawK (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  K [1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 1, 0, 0, 0, 0,
			 1, 0, 1, 0, 0, 0, 0, 0,
	 	 	 1, 1, 0, 0, 0, 0, 0, 0,
			 1, 1, 0, 0, 0, 0, 0, 0,
			 1, 0, 1, 0, 0, 0, 0, 0,
			 1, 0, 0, 1, 0, 0, 0, 0,
	         1, 0, 0, 0, 1, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 1*pixelwidth, pixelheight, colour); //row 1l
	drawRect(x_pos+4*x_offset, y_pos+0*y_offset, 1*pixelwidth, pixelheight, colour); //row 1r
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2l
	drawRect(x_pos+3*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3l
	drawRect(x_pos+2*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3r
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 2*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 2*pixelwidth, pixelheight, colour); //row 5
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6l
	drawRect(x_pos+2*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6r
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7l
	drawRect(x_pos+3*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7r
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8l
	drawRect(x_pos+4*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8r

	return 0; //might need to delete
}

//draw I with sprites
int drawI (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  I [1, 0, 0, 0, 1, 0, 0, 0,
			 1, 0, 0, 1, 0, 0, 0, 0,
			 1, 0, 1, 0, 0, 0, 0, 0,
	 	 	 1, 1, 0, 0, 0, 0, 0, 0,
			 1, 1, 0, 0, 0, 0, 0, 0,
			 1, 0, 1, 0, 0, 0, 0, 0,
			 1, 0, 0, 1, 0, 0, 0, 0,
	         1, 0, 0, 0, 1, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 3*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+1*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2
	drawRect(x_pos+1*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3
	drawRect(x_pos+1*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+1*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5
	drawRect(x_pos+1*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6
	drawRect(x_pos+1*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 3*pixelwidth, pixelheight, colour); //row 8

	return 0; //might need to delete
}

//draw T with sprites
int drawT (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  T [1, 1, 1, 1, 1, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0, 0,
	 	 	 0, 0, 1, 0, 0, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0, 0,
			 0, 0, 1, 0, 0, 0, 0, 0,
	         0, 0, 1, 0, 0, 0, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 5*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+2*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2
	drawRect(x_pos+2*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3
	drawRect(x_pos+2*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+2*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5
	drawRect(x_pos+2*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6
	drawRect(x_pos+2*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7
	drawRect(x_pos+2*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8

	return 0; //might need to delete
}

//draw A with sprites
int drawA (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;

	/*	  A [0, 0, 1, 1, 0, 0, 0, 0,
			 0, 0, 1, 1, 0, 0, 0, 0,
			 0, 1, 0, 0, 1, 0, 0, 0,
	 	 	 0, 1, 0, 0, 1, 0, 0, 0,
			 0, 1, 0, 0, 1, 0, 0, 0,
			 1, 1, 1, 1, 1, 1, 0, 0,
			 1, 0, 0, 0, 0, 1, 0, 0,
	         1, 0, 0, 0, 0, 1, 0, 0]
		*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+2*x_offset, y_pos+0*y_offset, 2*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+2*x_offset, y_pos+1*y_offset, 2*pixelwidth, pixelheight, colour); //row 2
	drawRect(x_pos+1*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3l
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3r
	drawRect(x_pos+1*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4l
	drawRect(x_pos+4*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4r
	drawRect(x_pos+1*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5l
	drawRect(x_pos+4*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5r
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 6*pixelwidth, pixelheight, colour); //row 6
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7l
	drawRect(x_pos+5*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7r
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8l
	drawRect(x_pos+5*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8r

	return 0; //might need to delete
}

int drawG (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;
	/* G [0, 0, 1, 1, 1, 1, 0, 0,
		  0, 1, 0, 0, 0, 0, 0, 0,
		  1, 0, 0, 0, 0, 0, 0, 0,
		  1, 0, 0, 0, 0, 0, 0, 0,
		  1, 0, 0, 1, 1, 1, 0, 0,
		  1, 0, 0, 0, 0, 1, 0, 0,
		  0, 1, 0, 0, 0, 1, 0, 0,
		  0, 0, 1, 1, 1, 1, 0, 0]
	*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+2*x_offset, y_pos+0*y_offset, 4*pixelwidth, pixelheight, colour); //row 1
	drawRect(x_pos+1*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5l
	drawRect(x_pos+3*x_offset, y_pos+4*y_offset, 3*pixelwidth, pixelheight, colour); //row 5r
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6l
	drawRect(x_pos+5*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6r
	drawRect(x_pos+1*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7l
	drawRect(x_pos+5*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7r
	drawRect(x_pos+2*x_offset, y_pos+7*y_offset, 4*pixelwidth, pixelheight, colour); //row 8
	return 0;
};

int drawM (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;
	/* G [1, 1, 0, 0, 0, 1, 1, 0,
		  1, 1, 0, 0, 0, 1, 1, 0,
		  1, 0, 1, 0, 1, 0, 1, 0,
		  1, 0, 1, 0, 1, 0, 1, 0,
		  1, 0, 0, 1, 0, 0, 1, 0,
		  1, 0, 0, 1, 0, 0, 1, 0,
		  1, 0, 0, 0, 0, 0, 1, 0,
		  1, 0, 0, 0, 0, 0, 1, 0]
	*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 2*pixelwidth, pixelheight, colour); //row 1l
	drawRect(x_pos+5*x_offset, y_pos+0*y_offset, 2*pixelwidth, pixelheight, colour); //row 1r
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 2*pixelwidth, pixelheight, colour); //row 2l
	drawRect(x_pos+5*x_offset, y_pos+1*y_offset, 2*pixelwidth, pixelheight, colour); //row 2r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3.1
	drawRect(x_pos+2*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3.2
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3.3
	drawRect(x_pos+6*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3.4
	drawRect(x_pos+0*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4.1
	drawRect(x_pos+2*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4.2
	drawRect(x_pos+4*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4.3
	drawRect(x_pos+6*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4.4
	drawRect(x_pos+0*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5.1
	drawRect(x_pos+3*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5.2
	drawRect(x_pos+6*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5.3
	drawRect(x_pos+0*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6.1
	drawRect(x_pos+3*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6.2
	drawRect(x_pos+6*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6.3
	drawRect(x_pos+0*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7l
	drawRect(x_pos+6*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7r
	drawRect(x_pos+0*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8l
	drawRect(x_pos+6*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8r
	return 0;
};

int drawV (int x_pos, int y_pos, int colour)
{
	int x_offset = pixelwidth;
	int y_offset = pixelheight;
	/* V [1, 0, 0, 0, 1, 0, 0, 0,
		  1, 0, 0, 0, 1, 0, 0, 0,
		  1, 0, 0, 0, 1, 0, 0, 0,
		  0, 1, 0, 1, 0, 0, 0, 0,
		  0, 1, 0, 1, 0, 0, 0, 0,
		  0, 1, 0, 1, 0, 0, 0, 0,
		  0, 0, 1, 0, 0, 0, 0, 0,
		  0, 0, 1, 0, 0, 0, 0, 0]
	*/
	//draw rect (xpos, ypos, width, height, colour);
	drawRect(x_pos+0*x_offset, y_pos+0*y_offset, 1*pixelwidth, pixelheight, colour); //row 1l
	drawRect(x_pos+4*x_offset, y_pos+0*y_offset, 1*pixelwidth, pixelheight, colour); //row 1r
	drawRect(x_pos+0*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2l
	drawRect(x_pos+4*x_offset, y_pos+1*y_offset, 1*pixelwidth, pixelheight, colour); //row 2r
	drawRect(x_pos+0*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3l
	drawRect(x_pos+4*x_offset, y_pos+2*y_offset, 1*pixelwidth, pixelheight, colour); //row 3r
	drawRect(x_pos+1*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4l
	drawRect(x_pos+3*x_offset, y_pos+3*y_offset, 1*pixelwidth, pixelheight, colour); //row 4r
	drawRect(x_pos+1*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5l
	drawRect(x_pos+3*x_offset, y_pos+4*y_offset, 1*pixelwidth, pixelheight, colour); //row 5r
	drawRect(x_pos+1*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6l
	drawRect(x_pos+3*x_offset, y_pos+5*y_offset, 1*pixelwidth, pixelheight, colour); //row 6r
	drawRect(x_pos+2*x_offset, y_pos+6*y_offset, 1*pixelwidth, pixelheight, colour); //row 7
	drawRect(x_pos+2*x_offset, y_pos+7*y_offset, 1*pixelwidth, pixelheight, colour); //row 8

	return 0;
};

int drawScore (int x_pos, int y_pos, int colour)
{
	colour = white;
	int numbspace = 8*pixelwidth;
	drawS(x_pos, y_pos, colour);
	drawC(x_pos+1*numbspace, y_pos, colour);
	drawO(x_pos+2*numbspace, y_pos, colour);
	drawR(x_pos+3*numbspace, y_pos, colour);
	drawE(x_pos+4*numbspace, y_pos, colour);
	return 0;
}

int score = 0;

u8 firstdigit = 0;
u8 secdigit = 0;
u8 thirddigit = 0;
//score mechanism
int scoreBoard (int x_pos, int y_pos)
{
	//scorefunc();
	int numbspace = 8*pixelwidth;
	//drawScore (x_pos, y_pos, white);
	firstdigit = score % 10;
	secdigit = (score/10)%10;
	thirddigit = (score/100)%10;
	//eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
	//eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
	if (firstdigit == 0)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawZero(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 1)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawOne(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 2)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawTwo(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 3)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawThree(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 4)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawFour(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 5)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawFive(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 6)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawSix(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 7)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawSeven(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 8)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawEight(x_pos+4*numbspace, y_pos+numbspace+2);
	}
	else if (firstdigit == 9)
	{
		eraseNum(x_pos+4*numbspace, y_pos+numbspace+2);
		drawNine(x_pos+4*numbspace, y_pos+numbspace+2);
	};
	//2nd digit
	if (secdigit == 0)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawZero(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 1)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawOne(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 2)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawTwo(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 3)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawThree(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 4)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawFour(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 5)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawFive(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 6)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawSix(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 7)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawSeven(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 8)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawEight(x_pos+3*numbspace, y_pos+numbspace+2);
		}
		else if (secdigit == 9)
		{
			eraseNum(x_pos+3*numbspace, y_pos+numbspace+2);
			drawNine(x_pos+3*numbspace, y_pos+numbspace+2);
		};
	//3rd digit
		if (thirddigit == 0)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawZero(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 1)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawOne(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 2)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawTwo(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 3)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawThree(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 4)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawFour(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 5)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawFive(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 6)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawSix(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 7)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawSeven(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 8)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawEight(x_pos+2*numbspace, y_pos+numbspace+2);
			}
			else if (thirddigit == 9)
			{
				eraseNum(x_pos+2*numbspace, y_pos+numbspace+2);
				drawNine(x_pos+2*numbspace, y_pos+numbspace+2);
			};

	return 0;
}

int drawMenu (int x_pos, int y_pos)
{
	int charspace = 8*pixelwidth;
	//print black to clear all cache
	//drawRect(0, 0, Horsize, Versize, black);
	int i = 0;
	int coloursize = 11;

	//draw text brick breaker
	for ( i = 0; i < coloursize; i++)
	{
		drawB(x_pos, y_pos, colour[i]);
		drawR(x_pos+charspace, y_pos, colour[i+1]);
		drawI(x_pos+2*charspace, y_pos, colour[i+2]);
		drawC(x_pos+3*charspace, y_pos, colour[i+3]);
		drawK(x_pos+4*charspace, y_pos, colour[i]);
		drawB(x_pos+6*charspace, y_pos, colour[i+2]);
		drawR(x_pos+7*charspace, y_pos, colour[i+1]);
		drawE(x_pos+8*charspace, y_pos, colour[i]);
		drawA(x_pos+9*charspace, y_pos, colour[i+2]);
		drawK(x_pos+10*charspace, y_pos, colour[i+3]);
		drawE(x_pos+11*charspace, y_pos, colour[i]);
		drawR(x_pos+12*charspace, y_pos, colour[i+2]);
		usleep(1000*50);
	}

	//draw play/start button
	drawS(Horsize/2-2*charspace, Versize/2, white);
	drawT(Horsize/2-1*charspace, Versize/2, white);
	drawA(Horsize/2, Versize/2, white);
	drawR(Horsize/2+1*charspace, Versize/2, white);
	drawT(Horsize/2+2*charspace, Versize/2, white);

	//make button blinks with selection
	return 0;
}

int eraseMenu(int x_pos, int y_pos)
{
	int charspace = 8*pixelwidth;
	//print black to clear all cache

	drawB(x_pos, y_pos, black);
	drawR(x_pos+charspace, y_pos, black);
	drawI(x_pos+2*charspace, y_pos, black);
	drawC(x_pos+3*charspace, y_pos, black);
	drawK(x_pos+4*charspace, y_pos, black);
	drawB(x_pos+6*charspace, y_pos, black);
	drawR(x_pos+7*charspace, y_pos, black);
	drawE(x_pos+8*charspace, y_pos, black);
	drawA(x_pos+9*charspace, y_pos, black);
	drawK(x_pos+10*charspace, y_pos, black);
	drawE(x_pos+11*charspace, y_pos, black);
	drawR(x_pos+12*charspace, y_pos, black);

	return 0;
}

int drawGameOver (int x_pos, int y_pos)
{
	int charspace = 8*pixelwidth;
	int i = 0;
	//draw text brick breaker
	for (i = 0; i < 8; i++)
	{
		drawG(x_pos, y_pos, colour[i]);
		drawA(x_pos+charspace, y_pos, colour[i]);
		drawM(x_pos+2*charspace, y_pos, colour[i]);
		drawE(x_pos+3*charspace, y_pos, colour[i]);
		drawO(x_pos+5*charspace, y_pos, colour[i]);
		drawV(x_pos+6*charspace, y_pos, colour[i]);
		drawE(x_pos+7*charspace, y_pos, colour[i]);
		drawR(x_pos+8*charspace, y_pos, colour[i]);
		usleep(1000*50);
	}

	return 0;
}

int eraseL (int xpos, int ypos, int paddlecolour)
{
	int i, j = 0;
	int paddleH = 20;

	for (i = xpos; i <= xpos+4; i++)
	{
		for (j = ypos; j<= ypos+paddleH; j++)
		{
			image_buffer[j*Horsize+i] = paddlecolour;
		}
	}
	//printf("%d, %d\n" , xpos, ypos);
	return 0; // might need to delete
}

int eraseR (int xpos, int ypos, int paddlecolour)
{
	int i, j = 0;
	int paddleH = 20;

	for (i = xpos+paddleW-4; i <= xpos+paddleW; i++)
	{
		for (j = ypos; j<= ypos+paddleH; j++)
		{
			image_buffer[j*Horsize+i] = paddlecolour;
		}
	}
	//printf("%d, %d\n" , xpos, ypos);
	return 0; // might need to delete
}

//brick space
int xoffset = 105;
int yoffset = 52;
int brickxpos[13][7];
int brickypos[13][7];
int brickcolour[13][7];
u8 randxpos;
u8 randypos;
int displayBricks (void)
{	//draw all bricks
	//frame thickness is x=10, and y=10, so first brick starts at (10, 10), brick width is 100, height is 50
	/*  (1280 - 20)/100 = 12.6 pieces of bricks allowed  */
	/* draw 5 rows of bricks */
	int i, j = 0;


	//drawRect(0, 0, Horsize, Versize, black);

	for (i = 0; i < 12; i++) //0-11 is 12
	{
		for (j = 0; j <= 2; j++)
		{
			//draw brick (x_pos, y_pos, brickW, brickH, filledcolour, outlinecolour)
			drawBrick(framethickness+1+i*xoffset, framethickness+2+j*yoffset, green, darkgrey);
			brickxpos[i][j] = framethickness+1+i*xoffset;
			brickypos[i][j] = framethickness+2+j*yoffset;
			brickcolour[i][j] = green;
		}

		for (j = 3; j <= 4; j++)
		{
			//draw brick (x_pos, y_pos, brickW, brickH, colour)
			drawBrick(framethickness+1+i*xoffset, framethickness+2+j*yoffset, orange, darkgrey);
			brickxpos[i][j] = framethickness+1+i*xoffset;
			brickypos[i][j] = framethickness+2+j*yoffset;
			brickcolour[i][j] = orange;
		}

		for (j = 5; j <= 6; j++)
		{
			//draw brick (x_pos, y_pos, brickW, brickH, colour)
			drawBrick(framethickness+1+i*xoffset, framethickness+2+j*yoffset, yellow, darkgrey);
			brickxpos[i][j] = framethickness+1+i*xoffset;
			brickypos[i][j] = framethickness+2+j*yoffset;
			brickcolour[i][j] = yellow;
		}
	}
	//draw special brick
	if (randxpos >= 11)
	{
		randxpos = randxpos%11;
		if (randxpos >= 11)
		{
			randxpos = 11;
		}
	}
	else if (randxpos <= 0)
	{
		randxpos = 0;
	}
	if (randypos >= 6)
	{
		randypos = randypos%6;
		if (randypos >= 6)
		{
			randypos = 6;
		}
	}
	else if (randypos <= 0)
	{
		randypos = 0;
	}

	drawBrick(framethickness+1+randxpos*xoffset, framethickness+2+randypos*yoffset, red, darkgrey);
	brickxpos[randxpos][randypos] = framethickness+1+randxpos*xoffset;
	brickypos[randxpos][randypos] = framethickness+2+randypos*yoffset;
	brickcolour[randxpos][randypos] = red;

	return 0;
};


//random number generator
int randomResult;
int rng (void)
{
	u32 *baseaddr_p = (u32 *)XPAR_TRNG_0_S00_AXI_BASEADDR;

	// Read output from register 1
	xil_printf("Read : 0x%08x \n\r", *(baseaddr_p+1));
	randomResult = *(baseaddr_p+1);
	randxpos = (randomResult%16000) / 80;

	randomResult = *(baseaddr_p+1);
	randypos = (randomResult%24000) / 80;

	return 0;
}

XGpio_Config *cfg_ptr;
XGpio btn_device;
u8 button_data = 0;
int init_gpio (void)
{
	cfg_ptr = XGpio_LookupConfig(XPAR_AXI_GPIO_0_DEVICE_ID);
	Xil_AssertNonvoid(cfg_ptr);
	button_data = XGpio_CfgInitialize(&btn_device, cfg_ptr, cfg_ptr->BaseAddress);
	Xil_AssertNonvoid(button_data == XST_SUCCESS);
	XGpio_SetDataDirection(&btn_device, BUTTON_CHANNEL, 0x0F);

	return 0;
};

int ballspeed = 2;
int motionspeed = 60;// ~166hz //120;//~83hz

int pushbutton(void)
{
	button_data = XGpio_DiscreteRead(&btn_device, BUTTON_CHANNEL);

	//xil_printf("GPIO: %x\n", button_data);
	/*if(button_data == 0b00000){} //do nothing
	else if(button_data == 0b00001)
	{
		xil_printf("button centre pressed!\n\r");
	}
	else if(button_data == 0b00010)
	{
		xil_printf("button down pressed!\n\r");
	}
	else if(button_data == 0b00100)
	{
		xil_printf("button left pressed!\n\r");
	}
	else if(button_data == 0b01000)
	{
		xil_printf("button right pressed!\n\r");
	}
	else if(button_data == 0b10000)
	{
		xil_printf("button up pressed!\n\r");
	}
	else
	{
		xil_printf("multiple buttons pressed\n\r");
	}*/
	usleep(100*motionspeed);
	return 0;
}


u8 prevBallspeed; //ball speed hitting paddle
u8 newBallspeed; //ball speed hitting wall
u8 prevMotion;
u8 newMotion;
u8 bounceCnt = 0;

int eraseBrick(int ball_xcentre, int ball_ycentre)
{
	/*  (1280 - 20)/100 = 12.6 pieces of bricks allowed  */
	/* draw 5 rows of bricks */
	int i, j = 0;
	//drawRect(0, 0, Horsize, Versize, black);
	for (i = 0; i < 12; i++) //0-11 is 12
	{
		for (j = 0; j <= 6; j++)
			{	//ball hitting brick's bottom
				if (ball_xcentre+4*ballpixelwidth-2 > brickxpos[i][j] && ball_xcentre-4*ballpixelwidth+2 <= brickxpos[i][j]+brickW)
					{
						COMM_VAL = 'b';
						if (ball_ycentre-4*ballpixelheight <= brickypos[i][j]+brickH && ydirec == -1)
							{
								if (brickcolour[i][j] == red)
									{
										score += 5;
									}
								else
									{
										score += 1;
									}
								drawBrick(brickxpos[i][j], brickypos[i][j], black, black);
								ydirec *= -1;
								brickxpos[i][j] = -100; //clear block's position
								brickypos[i][j] = -100;
								brickcolour[i][j] = black;
								brickCounter -= 1;
								scoreBoard(850, 950);
								bounceCnt += 1;
							}
					//}
				//ball hitting brick's top
				//if (ball_xcentre >= brickxpos[i][j] && ball_xcentre <= brickxpos[i][j]+brickW)
				//{
						else if (ball_ycentre+4*ballpixelheight >= brickypos[i][j] && ball_ycentre <= brickypos[i][j] && ydirec == 1)
						{
							COMM_VAL = 'b';
							if (brickcolour[i][j] == red)
								{
									score += 5;
								}
							else
								{
									score += 1;
								}
							drawBrick(brickxpos[i][j], brickypos[i][j], black, black);
							ydirec *= -1;
							brickxpos[i][j] = -100; //clear block's position
							brickypos[i][j] = -100;
							brickcolour[i][j] = black;
							brickCounter -= 1;
							//score += 1;
							scoreBoard(850, 950);
							bounceCnt += 1;
						}
				}
				//ball hitting bricks side
				if (ball_ycentre <= brickypos[i][j]+brickH+2 && ball_ycentre >= brickypos[i][j]-2)
				{
					COMM_VAL = 'b';
					if (ball_xcentre-4*ballpixelwidth <= brickxpos[i][j]+brickW+1 && ball_xcentre > brickxpos[i][j]+brickW && xdirec == -1)
					{
						if (brickcolour[i][j] == red)
							{
								score += 5;
							}
							else
							{
								score += 1;
							}
							drawBrick(brickxpos[i][j], brickypos[i][j], black, black);
							xdirec *= -1;
							brickxpos[i][j] = -100; //clear block's position
							brickypos[i][j] = -100;
							brickcolour[i][j] = black;
							brickCounter -= 1;
							scoreBoard(850, 950);
							bounceCnt += 1;
					}
					else if (ball_xcentre+4*ballpixelwidth >= brickxpos[i][j]+1 && ball_xcentre < brickxpos[i][j] && xdirec == 1)
					{
						COMM_VAL = 'b';
						if (brickcolour[i][j] == red)
							{
								score += 5;
							}
							else
							{
								score += 1;
							}
							drawBrick(brickxpos[i][j], brickypos[i][j], black, black);
							xdirec *= -1;
							brickxpos[i][j] = -100; //clear block's position
							brickypos[i][j] = -100;
							brickcolour[i][j] = black;
							brickCounter -= 1;
							scoreBoard(850, 950);
							bounceCnt += 1;
					}
				}
				/*if (ball_ycentre-4*ballpixelheight <= brickypos[i][j]+brickH && ball_ycentre-4*ballpixelheight >= brickypos[i][j]+brickH || ball_ycentre+4*ballpixelheight >= brickypos[i][j] && ball_ycentre+4*ballpixelheight < brickypos[i][j]+brickH)
				{
					if (ball_xcentre-4*ballpixelwidth <= brickxpos[i][j]+brickW+1 && ball_xcentre > brickxpos[i][j]+brickW && xdirec == -1)
					{
						drawBrick(brickxpos[i][j], brickypos[i][j], black, black);
						xdirec *= -1;
						brickxpos[i][j] = -100; //clear block's position
						brickypos[i][j] = -100;
						brickcolour[i][j] = black;
						brickCounter -= 1;
					}
					else if (ball_xcentre+4*ballpixelwidth >= brickxpos[i][j]+1 && ball_xcentre < brickxpos[i][j] && xdirec == 1)
					{
						drawBrick(brickxpos[i][j], brickypos[i][j], black, black);
						xdirec *= -1;
						brickxpos[i][j] = -100; //clear block's position
						brickypos[i][j] = -100;
						brickcolour[i][j] = black;
						brickCounter -= 1;
					}
				}*/

			}
	}
	/*for (i = 0; i < 12; i++) //0-12 is 13
	{
		for (j = 0; j <= 2; j++)
			{
				if (ball_xcentre+3*ballpixelwidth >= 10+i*xoffset && ball_xcentre  - 3*ballpixelwidth <= 10+2*i*xoffset)
				{
					if (ball_ycentre - 4*ballpixelheight <= 10+j*yoffset)
						{
							drawBrick(10+i*xoffset, 10+j*yoffset, black, black);
						}
				}
			}
	}*/
	return 0;
}



int main()
{
	//Xil_SetTlbAttributes(0x00900000, 0x00900000);
	//pushbutton
	init_gpio();

	u8 inp = 0x00;
	//u32 CntrlRegister;

	//CntrlRegister = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_CR_OFFSET);

	/*XUartPs_WriteReg(UART_BASEADDR, XUARTPS_CR_OFFSET,
					  ((CntrlRegister & ~XUARTPS_CR_EN_DIS_MASK) |
					   XUARTPS_CR_TX_EN | XUARTPS_CR_RX_EN));*/

	int x_centre = Horsize/2;
	int y_centre = Versize/2;
	//int xpos = 600;
	//int ypos = 600;
	int paddleInit_Xpos = Horsize/2-paddleW;
	int paddleInit_Ypos = 880;
	int menu_xpos=300;
	score = 0;
	int i = 0;

	char gameState = 'm'; //g - gameplay, m-menu; o - gameover; 0 - do nothing
	/*string gameplay;
	string menu;
	string gameover;*/

	//clear screen
	drawRect(0, 0, Horsize, Versize, black);
	drawRect(0, 0, Horsize, Versize, black); //call twice to flush cache

//code for duo core***************************************
	COMM_VAL = 0;
	//Disable cache on OCM
	// S=b1 TEX=b100 AP=b11, Domain=b1111, C=b0, B=b0
	Xil_SetTlbAttributes(0x0f000000, 0x14de2);

	//printf("ARM0: writing startaddress for ARM1\n\r");
	Xil_Out32(ARM1_STARTADR, ARM1_BASEADDR);
	//dmb(); //waits until write has finished
	//printf("ARM0: sending the SEV to wake up ARM1\n\r");

	//volatile unsigned* shared = (volatile unsigned*) 0x0f000000;
	//Xil_SetTlbAttributes((unsigned) shared, NORM_NONCACHE);
	//xil_printf("Shared Value = %u\n", *shared);
	//*shared = 7;

	//while(*shared != 8);
	//xil_printf("Shared Value = %u\n", *shared);
	Xil_DCacheDisable();
	//void *brick_xoffset = (int *)displayBricks();

	while(1)
	{
		//pushbutton
		pushbutton();

		// Wait for input from UART via the terminal
		/*while (!XUartPs_IsReceiveData(UART_BASEADDR));*/
		inp = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);

		//COMM_VAL = inp; //storing uart input for common memory

		if (inp == 'm' || (button_data == 1 && (gameState == 'g'|| gameState == 'z' || gameState =='p'))) //center button
			{
				drawRect(0, 0, Horsize, Versize, black);
				gameState = 'm';
			}
		else if (inp == 'g' || (button_data == 1 && (gameState == 'm'||gameState == 'z')))
			{
				drawRect(0, 0, Horsize, Versize, black);
				gameState = 'g';
			}

		if ((button_data == 1 || inp == 'g') && gameState =='p') //reset scrores if middle button is pressedg
		{
			score = 0;
		}
		//if ball hits left and right frame
		if (x_centre+4*ballpixelwidth >= Horsize - framethickness-5 || x_centre-4*ballpixelwidth <= framethickness+5)
			{
				xdirec *= -1;
				COMM_VAL = 'h';
			}
		//hits top frame and bottom
		else if (y_centre-4*ballpixelheight <= framethickness+4 || y_centre+4*ballpixelheight >= Versize)
			{
				ydirec *= -1;
				COMM_VAL = 'h';
			}
		//ball hits paddle
		else if (x_centre+4*ballpixelwidth-1 > paddleInit_Xpos && x_centre-4*ballpixelwidth+1 < paddleInit_Xpos+paddleW && ydirec == 1)
		{
			if (y_centre+4*ballpixelheight >= paddleInit_Ypos-4)
			{
				ydirec *= -1;
				//ballspeed *= 2;
				COMM_VAL = 'h';
			}
			else{};
		}
		//ball hitting paddle left
		else if (y_centre+3*ballpixelheight > paddleInit_Ypos && y_centre-3*ballpixelheight < paddleInit_Ypos+paddleH)
		{
			if (x_centre+4*ballpixelwidth >= paddleInit_Xpos-1 && x_centre < paddleInit_Xpos && xdirec == 1)
			{
				xdirec *= -1;
				prevBallspeed = ballspeed;
				prevMotion = motionspeed;
				//ballspeed += 1;
				motionspeed -= 1;
				newBallspeed = ballspeed;
				newMotion = motionspeed;
				COMM_VAL = 's';
			}
			//ball hitting paddle on the right
			else if (x_centre-4*ballpixelwidth <= paddleInit_Xpos+paddleW+1 && x_centre > paddleInit_Xpos+paddleW && xdirec == -1)
			{
				xdirec *= -1;
				prevMotion = motionspeed;
				//ballspeed += 1;
				motionspeed -= 1;
				newBallspeed = ballspeed;
				newMotion = motionspeed;
				COMM_VAL = 's';
			}
		}
		else
		{};
		//calling erase brick function to deduct bricks
		eraseBrick(x_centre, y_centre);

		if (ballspeed <= 2)
		{
			ballspeed = 2; //limit for ball frame rate
		}
		else if (ballspeed >= 4)
		{
			ballspeed = 4;
		}
		if (bounceCnt >= 3)
		{
			ballspeed = prevBallspeed;
			motionspeed = prevMotion;
			bounceCnt = 0;
		}
		if (motionspeed <= 1)
		{
			motionspeed = 1;
		}
		if (i > 12)
		{
			i = 0;
		}
		if (paddleW < 2)
		{
			paddleW = 2;
		}
		//play sound
		//m - play intro, g - play start button, p - play gameplay, d - play died, f - play stageClear,
		//h - play hitpaddle, b - play hitbrick, s - play speedup, o - play gameover
		if (gameState == 'm')
		{
			COMM_VAL = 'm';
		};
		if (button_data == 1)
		{
			COMM_VAL = 'g';
		};
		if (gameState == 'p')
		{
			COMM_VAL = 'p';
		};
		if (gameState == 'o')
		{
			COMM_VAL = 'o';
		};

			//screen = gameState.state;
			switch(gameState)
							{	//menu
								case 'm':
									eraseMenu (menu_xpos,200);
									menu_xpos += 8;
									drawMenu(menu_xpos,200);
									//drawPaddle(Horsize/2-paddleW, 880, wallcolour);
									//volume
									if (button_data == 16)
										{
											COMM_VAL  = 'volup';
										}
									else if (button_data == 2)
										{
											COMM_VAL  = 'voldown';
										}
									usleep(1000*50);
									break;
								//gameplay screen
								case 'g':
									//set ball centre again
									x_centre = Horsize/2;
									y_centre = Versize/2;
									//initialize paddle pos
									paddleInit_Xpos = Horsize/2-paddleW;
									paddleInit_Ypos = 880;
									//initialize ball direction
									xdirec = -1;
									ydirec = 1;
									brickCounter = 12*7; //reset brick counter
									drawFrame();
									//draw paddle
									drawPaddle(paddleInit_Xpos, paddleInit_Ypos, wallcolour);
									//draw a ball
									drawBall(x_centre, y_centre, blue);
									//draw scoreboard
									scoreBoard(850, 950);
									//initialize previous ball speed parameters
									prevBallspeed = 2;
									prevMotion = 60;
									//generate random number
									rng();
									//draw brick
									displayBricks();
									gameState = 'p';
									break;
								//actual gameplay
								case 'p':
									//ball motion
									drawBall(x_centre, y_centre, black);
									if (x_centre-4*ballpixelwidth > framethickness || x_centre+4*ballpixelwidth < Horsize - framethickness)  //10 is the framesize
										{
											x_centre += ballspeed*xdirec;
										}
									if (y_centre-4*ballpixelwidth > framethickness || y_centre+4*ballpixelwidth < Versize)
										{
											y_centre += ballspeed*ydirec;
										}
									drawBall(x_centre, y_centre, blue);

									//draw paddle in case ball eats it
									drawPaddle(paddleInit_Xpos, paddleInit_Ypos, wallcolour);

									if(button_data == 4 || inp =='a')// comment out inp later to increase performance
										{
											//erase right edge
											eraseR(paddleInit_Xpos, paddleInit_Ypos, black);
											//shift position left
											paddleInit_Xpos -= 4;
											//redraw paddle
											drawPaddle(paddleInit_Xpos, paddleInit_Ypos, wallcolour);
											//limit for paddle hitting frame
											if (paddleInit_Xpos <= framethickness+1) //limit for left frame
												{
													paddleInit_Xpos = framethickness+1;
												};
										}
									else if(button_data == 8|| inp =='d')// comment out inp later to increase performance
										{
											//erase previous paddle
											eraseL(paddleInit_Xpos, paddleInit_Ypos, black);
											//shift position right
											paddleInit_Xpos += 4;
											//redraw paddle
											drawPaddle(paddleInit_Xpos, paddleInit_Ypos, wallcolour);
											if (paddleInit_Xpos+paddleW >= Horsize-framethickness) //limit for right frame
												{
													paddleInit_Xpos = Horsize-framethickness-paddleW-1;
												};
										};
									if(button_data == 1)
										{
											score = 0;
											//go back to menu
											gameState = 'z';
										}
									//display the S C O R E
									drawScore (850, 950, white);
									//scoreBoard(850, 950);
									//condition for game over
									if (y_centre > paddleInit_Ypos+paddleH/2+1)
										{
											//erase screen
											drawRect(0, 0, Horsize, Versize, black);
											COMM_VAL = 'd';
											gameState = 'o';
										};
									//eraseBrick(x_centre, y_centre);
									if(brickCounter <= 0)
									{
										//erase screen
										drawRect(0, 0, Horsize, Versize, black);
										//ballspeed += 1;
										motionspeed -= 1;
										paddleW -= 4;
										COMM_VAL = 'f';
										gameState ='m';
									}
									break;

								case 'z':
									score = 0;
									gameState = 'm';
									break;

								case 'r':
									//generate random number
									rng();
									printf ("Random Number: %d\n", randomResult);
									//printf ("button Value: 0x%04x \n\r", buttonPressed);
									break;
								case 'o':
									//display game over
									drawGameOver(500, 400);
									//usleep(1000*500);
									//menu_xpos += 8;
									motionspeed = 60;
									prevMotion = 60;
									ballspeed = 2;
									prevBallspeed = 2;
									score = 0;
									paddleW = 60;
									if(button_data == 1)
										{
											//erase screen
											drawRect(0, 0, Horsize, Versize, black);
											gameState = 'm';
										};
									break;
							};
			}
	Xil_DCacheFlush();
	return 0;
}


#include <stdio.h>
#include <sleep.h>
#include "xil_io.h"
#include "xil_mmu.h"

#include "xil_cache.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xpseudo_asm.h"
#include "xil_exception.h"
#include "adventures_with_ip.h"
#include "math.h"

#define COMM_VAL (*(volatile unsigned long *)(0x0f000000))
extern u32 MMUTable;

int j = 0;
int volupdown = 2;
int volume = 2;

extern uint8_t SF2OpeningTheme_left[];
int SF2OpeningTheme_left_size = 1259451;
extern uint8_t SF2OpeningTheme_right[];
//extern int SF2OpeningTheme_right_size;
extern uint8_t startPressed_left[];
extern uint8_t startpressed_right[];
int startPressed_size = 176400;
//died
extern uint8_t died_left[];
extern uint8_t died_right[];
int died_size = 83613;
//gameplay
//extern uint8_t SF2GuileTheme_left[];
//extern uint8_t SF2GuileTheme_right[];
//stage clear
extern uint8_t stageClear_left[];
extern uint8_t stageClear_right[];
int stageClear_size = 132016;
//hitBrick
extern uint8_t hitBrick_left[];
extern uint8_t hitBrick_right[];
int hitBrick_size = 63453;
//hitPaddle
extern uint8_t hitPaddle_left[];
extern uint8_t hitPaddle_right[];
int hitPaddle_size = 72727;
//speedup
extern uint8_t speedup_left[];
extern uint8_t speedup_right[];
int speedup_size = 190246;

int playintro()
{
	uint32_t in_left, in_right;
	for (int i = 0; i <= SF2OpeningTheme_left_size; i++)
		{
			in_left = SF2OpeningTheme_left[i * 4] << 24 | (SF2OpeningTheme_left[(i * 4) + 1] << 16) | (SF2OpeningTheme_left[(i * 4) + 2] << 8) | (SF2OpeningTheme_left[(i * 4) + 3]);
			in_right = SF2OpeningTheme_right[i * 4] << 24 | (SF2OpeningTheme_right[(i * 4) + 1] << 16) | (SF2OpeningTheme_right[(i * 4) + 2] << 8) | (SF2OpeningTheme_right[(i * 4) + 3]);
			while(COMM_VAL == 0){};
			Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
			Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);
			usleep(20.83);
		};
};

int playStartbutton()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= startPressed_size; i++)
			{
				in_left = startPressed_left[i * 4] << 24 | (startPressed_left[(i * 4) + 1] << 16) | (startPressed_left[(i * 4) + 2] << 8) | (startPressed_left[(i * 4) + 3]);
				in_right = startpressed_right[i * 4] << 24 | (startpressed_right[(i * 4) + 1] << 16) | (startpressed_right[(i * 4) + 2] << 8) | (startpressed_right[(i * 4) + 3]);
				while(COMM_VAL == 0){};
				Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);
				usleep(20.83);
			};
};

int playDied()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= died_size; i++)
			{
				in_left = died_left[i * 4] << 24 | (died_left[(i * 4) + 1] << 16) | (died_left[(i * 4) + 2] << 8) | (died_left[(i * 4) + 3]);
				in_right = died_right[i * 4] << 24 | (died_right[(i * 4) + 1] << 16) | (died_right[(i * 4) + 2] << 8) | (died_right[(i * 4) + 3]);
				while(COMM_VAL == 0){};
				Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);
				usleep(20.83);
			};
};

/*int playGameplay()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= 10735979; i++)
			{
				in_left = SF2GuileTheme_left[i * 4] << 24 | (SF2GuileTheme_left[(i * 4) + 1] << 16) | (SF2GuileTheme_left[(i * 4) + 2] << 8) | (SF2GuileTheme_left[(i * 4) + 3]);
				in_right = SF2GuileTheme_right[i * 4] << 24 | (SF2GuileTheme_right[(i * 4) + 1] << 16) | (SF2GuileTheme_right[(i * 4) + 2] << 8) | (SF2GuileTheme_right[(i * 4) + 3]);
				while(COMM_VAL == 0){};
				Xil_Out32(I2S_DATA_TX_L_REG, in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, in_right);
				usleep(20.83);
			};
};*/

int playStageClear()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= stageClear_size; i++)
			{
				in_left = stageClear_left[i * 4] << 24 | (stageClear_left[(i * 4) + 1] << 16) | (stageClear_left[(i * 4) + 2] << 8) | (stageClear_left[(i * 4) + 3]);
				in_right = stageClear_right[i * 4] << 24 | (stageClear_right[(i * 4) + 1] << 16) | (stageClear_right[(i * 4) + 2] << 8) | (stageClear_right[(i * 4) + 3]);
				while(COMM_VAL == 0){};
				Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);
				usleep(20.83);
			};
};

int playHitBrick()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= hitBrick_size; i++)
			{
				in_left = hitBrick_left[i * 4] << 24 | (hitBrick_left[(i * 4) + 1] << 16) | (hitBrick_left[(i * 4) + 2] << 8) | (hitBrick_left[(i * 4) + 3]);
				in_right = hitBrick_right[i * 4] << 24 | (hitBrick_right[(i * 4) + 1] << 16) | (hitBrick_right[(i * 4) + 2] << 8) | (hitBrick_right[(i * 4) + 3]);
				while(COMM_VAL == 0){};
				Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);
				usleep(20.83);
			};
};

int playHitPaddle()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= hitPaddle_size; i++)
			{
				in_left = hitPaddle_left[i * 4] << 24 | (hitPaddle_left[(i * 4) + 1] << 16) | (hitPaddle_left[(i * 4) + 2] << 8) | (hitPaddle_left[(i * 4) + 3]);
				in_right = hitPaddle_right[i * 4] << 24 | (hitPaddle_right[(i * 4) + 1] << 16) | (hitPaddle_right[(i * 4) + 2] << 8) | (hitPaddle_right[(i * 4) + 3]);
				while(COMM_VAL == 0){};
				Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);
				usleep(20.83);
			};
};

int playSpeedup()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= speedup_size; i++)
			{
				in_left = speedup_left[i * 4] << 24 | (speedup_left[(i * 4) + 1] << 16) | (speedup_left[(i * 4) + 2] << 8) | (speedup_left[(i * 4) + 3]);
				in_right = speedup_right[i * 4] << 24 | (speedup_right[(i * 4) + 1] << 16) | (speedup_right[(i * 4) + 2] << 8) | (speedup_right[(i * 4) + 3]);
				while(COMM_VAL == 0){};
				Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);

				usleep(20.83);
			};
};

/*int playGameover()
{
	uint32_t in_left, in_right;
		for (int i = 0; i <= 3445656; i++)
			{
				in_left = godofgambler_left[i * 4] << 24 | (godofgambler_left[(i * 4) + 1] << 16) | (godofgambler_left[(i * 4) + 2] << 8) | (godofgambler_left[(i * 4) + 3]);
				in_right = godofgambler_right[i * 4] << 24 | (godofgambler_right[(i * 4) + 1] << 16) | (godofgambler_right[(i * 4) + 2] << 8) | (godofgambler_right[(i * 4) + 3]);
				Xil_Out32(I2S_DATA_TX_L_REG, in_left);
				Xil_Out32(I2S_DATA_TX_R_REG, in_right);
				usleep(20.83);
			};
};*/
int main()
{
    //Disable cache on OCM
    //volatile unsigned* shared = (volatile unsigned*) 0x0f000000;
    //Xil_SetTlbAttributes((unsigned) shared, NORM_NONCACHE);
	Xil_SetTlbAttributes(0x0f000000,0x14de2);
	//Configure the IIC data structure
	IicConfig(XPAR_XIICPS_0_DEVICE_ID);

	//Configure the Audio Codec's PLL
	AudioPllConfig();

	//Configure the Line in and Line out ports.
	LineinLineoutConfig();
	//enables the HP jack too.
	AudioConfigureJacks();

   	u8 inp = 0x00;
   	//u32 CntrlRegister;
   	uint32_t in_left, in_right;
   	//CntrlRegister = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_CR_OFFSET);
   	//volume = 2;
   	int extend = 0;
    while(1)
    {
    	inp = COMM_VAL;
    	while(COMM_VAL == 0){};


		//play sound
		//m - play intro, g - play start button, p - play gameplay, d - play died, f - play stageClear,
		//h - play hitpaddle, b - play hitbrick, s - play speedup, o - play gameover
    	if (inp == 'm' && COMM_VAL != 0)
    	{
    		for (int i = 0; i <= SF2OpeningTheme_left_size; i++)
    			{
    				in_left = SF2OpeningTheme_left[i * 4] << 24 | (SF2OpeningTheme_left[(i * 4) + 1] << 16) | (SF2OpeningTheme_left[(i * 4) + 2] << 8) | (SF2OpeningTheme_left[(i * 4) + 3]);
    				in_right = SF2OpeningTheme_right[i * 4] << 24 | (SF2OpeningTheme_right[(i * 4) + 1] << 16) | (SF2OpeningTheme_right[(i * 4) + 2] << 8) | (SF2OpeningTheme_right[(i * 4) + 3]);

    				if (COMM_VAL == 'g')
    				{
    					in_left += startPressed_left[i * 4] << 24 | (startPressed_left[(i * 4) + 1] << 16) | (startPressed_left[(i * 4) + 2] << 8) | (startPressed_left[(i * 4) + 3]);
    					in_right += startpressed_right[i * 4] << 24 | (startpressed_right[(i * 4) + 1] << 16) | (startpressed_right[(i * 4) + 2] << 8) | (startpressed_right[(i * 4) + 3]);
    				}
    				Xil_Out32(I2S_DATA_TX_L_REG, volume*in_left);
    				Xil_Out32(I2S_DATA_TX_R_REG, volume*in_right);
    	    		/*if (COMM_VAL == 'volup')
    	    		  {
    	    		    volume += volupdown;
    	    		    printf("volume: %d\n", volume);
    	    		  }
    	    		  if (COMM_VAL == 'voldown')
    	    		  {
    	    		    volume -= volupdown;
    	    		    printf("volume: %d\n", volume);
					}*/
    				usleep(20.83);
    			};
    	}
    	if (inp == 'p')
    	{
			Xil_Out32(I2S_DATA_TX_L_REG, 0);
			Xil_Out32(I2S_DATA_TX_R_REG, 0);
    		//playGameplay();
    		if (inp == 'g' && inp != 'o')
    		{
    			Xil_Out32(I2S_DATA_TX_L_REG, 0);
    			Xil_Out32(I2S_DATA_TX_R_REG, 0);
    		    playStartbutton();
    		}

    	}
    	if (inp == 'g')
    	{
			Xil_Out32(I2S_DATA_TX_L_REG, 0);
			Xil_Out32(I2S_DATA_TX_R_REG, 0);
    	   	playStartbutton();
    	}
    	if (inp == 'd')
    	{
    		playDied();
    	}
    	if (inp == 'b')
    	{
    		playHitBrick();
    	}
    	else {};
    	/*switch(inp)
    	{
   			case 'm':

   					playintro();
   					if (inp == 'g')
   					{
   						Xil_Out32(I2S_DATA_TX_L_REG, 0);
   						Xil_Out32(I2S_DATA_TX_R_REG, 0);
   						playStartbutton();
   					}
   					break;
   			case 'p':
   					//playGameplay();
   					if (inp == 'd')
   					{
   						Xil_Out32(I2S_DATA_TX_L_REG, 0);
   						Xil_Out32(I2S_DATA_TX_R_REG, 0);
   						playDied();
   					}
   					if (inp == 'h')
   					{
   					   	Xil_Out32(I2S_DATA_TX_L_REG, 0);
   					   	Xil_Out32(I2S_DATA_TX_R_REG, 0);
   					    playHitPaddle();
   					}
   					if (inp == 'b')
   					 {
   					   	Xil_Out32(I2S_DATA_TX_L_REG, 0);
   					   	Xil_Out32(I2S_DATA_TX_R_REG, 0);
   					   	playHitBrick();
   					 }
   					 if (inp == 's')
   					 {
   					   	Xil_Out32(I2S_DATA_TX_L_REG, 0);
   					   	Xil_Out32(I2S_DATA_TX_R_REG, 0);
   					   	playSpeedup();
   					 }
   					break;
   			case 'd':
					Xil_Out32(I2S_DATA_TX_L_REG, 0);
					Xil_Out32(I2S_DATA_TX_R_REG, 0);
					playDied();
					break;

   			case 'f':
   						Xil_Out32(I2S_DATA_TX_L_REG, 0);
   						Xil_Out32(I2S_DATA_TX_R_REG, 0);
   						playStageClear();
   					//usleep(60000000);
   					break;
   			case 'o':
   					//playGameover();
   					if (inp == 'g')
   					{
   					   playStartbutton();
   					}
   					//usleep(60000000);
   					break;
    	}*/
    }
    return 0;
}

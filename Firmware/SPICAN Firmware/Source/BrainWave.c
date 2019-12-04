//Phantom Head Pro-D Code
//Greg Rosche
//Electro Standards Labs

//This code outputs a pre-recorded brain signal through the DAC of the Pro-D which is fed across the "Phantom Head".
//It also reads back voltages on the phantom head in order to look for externally applied stimulation.
//The brain signal is scaled down in amplitude as "reaction" to the different levels of stimulation.

#include "ProjectInclude.h"

void BrainWaveStateMachine (void)
{
	Uint32 Display;
	float32 Display2;
	char buffer[100];

	EALLOW;
	GpioMuxRegs.GPAMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPADIR.all			= 0xff;    	//all outputs
	GpioMuxRegs.GPAQUAL.all			= 0;		//Input qualifier disabled
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Power/Run encoder channel A
	GpioDataRegs.GPADAT.bit.GPIOA1 	= 0;		//Power/Run encoder channel B
	GpioDataRegs.GPADAT.bit.GPIOA2	= 0;		//Current encoder channel A
	GpioDataRegs.GPADAT.bit.GPIOA3 	= 0;		//Current encoder channel B
	GpioDataRegs.GPADAT.bit.GPIOA4	= 0;		//Power/Run push button
	GpioDataRegs.GPADAT.bit.GPIOA5 	= 0;		//Current push button

	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;

	SendStrUARTB("\n\rReset");
	SPICANReset();											//Reset Command
	DELAY_US(1000);
	Display = SPICANReadStat();								//Make sure we're in config mode
	sprintf(buffer, "\n\rCAN Status: %lx", Display);
	SendStrUARTB(buffer);
	SPICANWrite(0x2A, 0x44);
	DELAY_US(10);
	SPICANWrite(0x29, 0x98);
	DELAY_US(10);
	SPICANWrite(0x28, 0x01);
	DELAY_US(10);
	SPICANWrite(0x2B, 0x00);

	SPICANWrite(0x0F, 0x60);							//Read Only Mode

	Display = SPICANRead(0x2A);
	sprintf(buffer, "\n\rCNF1 Staus: %lx", Display);
	SendStrUARTB(buffer);
	Display = SPICANRead(0x29);
	sprintf(buffer, "\n\rCNF2 Staus: %lx", Display);
	SendStrUARTB(buffer);
	Display = SPICANRead(0x28);
	sprintf(buffer, "\n\rCNF3 Staus: %lx", Display);
	SendStrUARTB(buffer);

	Display = SPICANRead(0x60);
	sprintf(buffer, "\n\rRX Filters1: %lx", Display);
	SendStrUARTB(buffer);
	Display = SPICANRead(0x70);
	sprintf(buffer, "\n\rRX Filters2: %lx", Display);
	SendStrUARTB(buffer);

	SPICANWrite(0x60, 0x60);
	SPICANWrite(0x70, 0x60);

	Display = SPICANRead(0x60);
	sprintf(buffer, "\n\rRX Filters1: %lx", Display);
	SendStrUARTB(buffer);
	Display = SPICANRead(0x70);
	sprintf(buffer, "\n\rRX Filters2: %lx", Display);
	SendStrUARTB(buffer);

	while(1)
	{
		Display = SPICANReadBuf1();
		sprintf(buffer, "\n\rRX Filters2: %lx", Display);
		SendStrUARTB(buffer);
		DELAY_US(1000000);
	}

}

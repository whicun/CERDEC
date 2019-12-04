/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/DAC.c $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */
#include "ProjectInclude.h"

float32 DACVoltagesNow[4] = {0, 0, 0, 0};

//! @file
//! This file containts the code that controls the external DACs

//! Initialize the DAC

//! This calls subroutines which initialize the McBSP and relevant GPIO registers to prepare for DAC operation
void InitDAC( void )
{
	InitDACGPIO();		// Initialize GPIO registers as they pertain to DAC operation
	InitDACMcBSP();		// Initialize the Multichannel Buffered Serial Port, which communicates with the external DAC chips
}

//! Initialize the GPIO for the DAC

//! This is called from within InitDAC(). This initializes the active-low DAC latch output (LDAC - GPIOA11), the four active-low DAC chip select pins
//! (DAC_CS1-4 - GPIOB12-15), and the McBSP data (DDATA - GPIOF12) and clock (DCLK - GPIOF8) pins
void InitDACGPIO( void )
{
	EALLOW;										// enable editing of GPIO registers

	// GPIO A Pins - used for direct control of DAC
	GpioMuxRegs.GPAQUAL.all = 0x0000;			// Input qualifier disabled

	GpioMuxRegs.GPAMUX.bit.TDIRA_GPIOA11 = 0;	// LDAC - active low DAC latch, triggers immediate DAC conversion of previously-transmitted digital value
	GpioMuxRegs.GPADIR.bit.GPIOA11 = 1;

	// GPIO B Pins - used as chip-select pins for the nominal 4 DAC channels; start with all disabled
	GpioMuxRegs.GPBQUAL.all = 0x0000;			// Input qualifier disabled

	GpioMuxRegs.GPBMUX.all &= 0x0FFF;			// DAC_CS1-4 - active low chip select for DAC channel - THIS PROD DOESN'T HAVE DAC CHANNEL 3 OR 4!
	GpioMuxRegs.GPBDIR.all |= 0xF000;			// For consistency, set direction for each of these channels
	GpioDataRegs.GPBSET.all = 0xF000;			// Disable all chip select bits

	// GPIO F Pins - enabled for McBSP operation
	GpioMuxRegs.GPFMUX.bit.MDXA_GPIOF12 = 1;	// DDATA - serial data line, selected for McBSP control
	GpioMuxRegs.GPFDIR.bit.GPIOF12 = 0;			// NOT USING GPIO, so just set direction to default input (0)

	GpioMuxRegs.GPFMUX.bit.MCLKXA_GPIOF8 = 1;	// DCLK - serial clock line, selected for McBSP control
	GpioMuxRegs.GPFDIR.bit.GPIOF8 = 0;			// NOT USING GPIO, so just set direction to default input (0)

	EDIS;										// disable editing
}

//! Initialize the Multichannel Buffered Serial Port

//! This is called from within InitDAC(). Set up the McBSP for use in communicating with the DACs, specifically defining the clocking scheme,
//! setting up the transmission protocol, and finally enabling transmission
void InitDACMcBSP( void )
{
	//Enable transmit FIFOs
	McbspaRegs.MFFTX.all = 0x0000;			// disable transmit interrupt, clear the FIFO transmit register
	McbspaRegs.MFFRX.all = 0x0000;			// disable receive interrupt, clear the receive register
	McbspaRegs.MFFCT.all = 0x0;				// set transmission delay to 0 cycles (word on bits 7-0)
	McbspaRegs.MFFINT.all = 0x0;			// disable all receive and transmit interrupts (bits 3-0)
	McbspaRegs.MFFST.all = 0x0;				// clear all status flags (bits 3-0)
	McbspaRegs.MFFTX.bit.MFFENA = 1;        // enable transmit FIFO
	McbspaRegs.MFFTX.bit.TXFIFO_RESET = 1;  // enable transmit channel

	// McBSP register settings in SPI master mode for digital loop back
	McbspaRegs.SPCR2.all = 0x0000;			// reset FS generator, sample rate generator & transmitter
	McbspaRegs.SPCR1.all = 0x0000;			// reset receiver, right justify word, digital loopback dis.
	McbspaRegs.PCR.all = 0x0F08;          	// (CLKXM = CLKRM = FSXM = FSRM = 1, FSXP = 1)
	McbspaRegs.SPCR1.bit.DLB = 0;
	McbspaRegs.SPCR1.bit.CLKSTP = 2;    	// Together with CLKXP/CLKRP determines clocking scheme
	McbspaRegs.PCR.bit.CLKXP = 1;			// CPOL = 0, CPHA = 0 rising edge no delay
	McbspaRegs.PCR.bit.CLKRP = 0;
	McbspaRegs.XCR2.bit.XDATDLY = 0;     	// FSX setup time 1 in master mode. 0 for slave mode (Transmit)
	McbspaRegs.XCR1.bit.XWDLEN1 = 2;      	// 16-bit word
	McbspaRegs.SRGR2.all = 0x2000; 	 		// CLKSM=1, FPER = 1 CLKG periods
	McbspaRegs.SRGR1.all = 0x000F;	    	// Frame Width = 1 CLKG period, CLKGDV=16

	// Enable the McBSP by setting appropriate pins
	McbspaRegs.SPCR2.bit.GRST = 1;        	// Enable the sample rate generator
	DELAY_US(MCBSP_INIT_DELAY);	// Wait at least 2 (actually 3) SRG clock cycles
	McbspaRegs.SPCR2.bit.XRST = 1;       	// Release TX from Reset
	McbspaRegs.SPCR2.bit.FRST = 1;        	// Frame Sync Generator reset
}

//! Output a digital code to the DAC

//! This is the basic software interface between the DSP and the DSP and the external DAC. The DAC is shut off, and 16-bit digital word given as code
//! is sent through the McBSP; after a short pause, the specific DAC channel is turned back on, and then the latch is used to trigger conversion to an analog value.
//! This is only called by VoltagetoDAC
//! @param code			The 16-bit digital word that the DAC takes as input
//! @param channel		Selects for DAC channels 1-4, using either explicit numbers or DAC_CH1, DAC_CH2, DAC_CH3, and DAC_CH4
void CodetoDAC( Uint16 code, DACChannel channel )
{
	GpioDataRegs.GPBCLEAR.all = channel;		// make sure channel is turned off
	McbspaRegs.DXR1.all = code;					// put the desired output DAC code into the McBSP buffer to be transmitted

	DELAY_US(10);
	GpioDataRegs.GPBSET.all = channel;			// wait, and turn the channel on

	DELAY_US(1);
	GpioDataRegs.GPACLEAR.bit.GPIOA11 = 1;		// wait, and trigger DAC (the active-low latch) to convert the code to its output
	DELAY_US(1);
	GpioDataRegs.GPASET.bit.GPIOA11 = 1;		// wait, and turn off the trigger
}

//! Output a voltage to the DAC

//! This maps a desired voltage output into the appropriate 16-bit digital code. The coefficients, DACslope and DACintercept, are derived from the reference voltage (1.425V)
//! and the resistors (36kOhm, 5.1kOhm) in the op amp feedback loop that is connected to the output of the actual DAC, and are used in the linear mapping. Once calculated,
//! the code is checked for inappropriate values (below 0 or above the maximum) and fixed, and it gets output to the specified DAC channel
//! @param voltage		The desired voltage output on the DAC, within the limits ~-10V <= voltage <= ~+10V
//! @param channel		Selects for DAC channels 1-4, using either explicit numbers or DAC_CH1, DAC_CH2, DAC_CH3, and DAC_CH4
void VoltagetoDAC( float32 voltage, DACChannel channel )
{
	float32 rawCode = 0.0;							// this will hold the float value of the voltage...
	Uint16 code = 0;								// which will be cast to a Uint16 digital code here

	rawCode = voltage * DACslope + DACintercept;	// convert by using defined parameters

	if (rawCode < 0)								// if the code ends up being too low, force it to 0 (most negative output voltage)
	{
		code = (Uint16)0x0;
		voltage = (code - DACintercept) / DACslope;	// reverse engineer the voltage, for storage into the global tracking variable
	}
	else if (rawCode > 65535.0)						// and if its too high, force it to 65535 (most positive voltage)
	{
		code = (Uint16)0xFFFF;
		voltage = (code - DACintercept) / DACslope;	// reverse engineer the voltage
	}
	else											// otherwise, just cast it to an integer type
	{
		code = (Uint16)rawCode;
	}

	CodetoDAC(code, channel);						// finally output it to the appropriate channel

	switch(channel)									// and store the new voltage into the global tracking variable
	{
		case DAC_CH1:
			DACVoltagesNow[0] = voltage;
			break;
		case DAC_CH2:
			DACVoltagesNow[1] = voltage;
			break;
		case DAC_CH3:
			DACVoltagesNow[2] = voltage;
			break;
		case DAC_CH4:
			DACVoltagesNow[3] = voltage;
			break;
		case DAC_ALL:
			DACVoltagesNow[0] = voltage;
			DACVoltagesNow[1] = voltage;
			DACVoltagesNow[2] = voltage;
			DACVoltagesNow[3] = voltage;
		default:
			break;
	}
}

//! A linear ramp on the selected DAC channel

//! @param Vstart		The starting voltage, in volts
//! @param Vend			The ending voltage, in volts
//! @param period		The total time of the ramp, in milliseconds
//! @param steps		The number of steps to divide the ramp into, counting only one endpoint (i.e. not starting, just ending)
//! @param channel		Selects for DAC channels 1-4, using either explicit numbers or DAC_CH1, DAC_CH2, DAC_CH3, and DAC_CH4
void DACLinearRamp( float32 Vstart, float32 Vend, Uint16 period, Uint16 steps, DACChannel channel )
{
	float32 level = Vstart;									// the voltage level, started at the Vstart argument
	float32 voltageIncrement;								// will hold the incremental voltage increase/decrease
	Uint16 step = 0;										// iterative loop variable
	float32 oneStepDelay = 0;								// the amount of time to stay at a particular voltage, within the loop

	if (Vend > 10)											// error check the two voltage inputs
	{
		Vend = 10;
	}
	else if (Vend < -10)
	{
		Vend = -10;
	}
	if (Vstart > 10)
	{
		Vstart = 10;
	}
	else if (Vstart < -10)
	{
		Vstart = -10;
	}

	voltageIncrement = (Vend - Vstart) / steps;				// calculate the iterative voltage increment
	oneStepDelay = ((float32)period * 1000 / steps) - 0;	// calculate the delay for one iteration of the for loop as a fraction of the total period (in us), and subtract inherent software delay

	VoltagetoDAC(level, channel);							// start at the Vstart voltage

	for (step = 0; step < steps; step++)					// cycle over step # of steps of voltage values
	{
		DELAY_US(oneStepDelay);								// delay by the predetermined amount of time (with adjustment for software delay)

		level += voltageIncrement;							// then increment/decrement the voltage by the predetermined step amount
		VoltagetoDAC(level, channel);						// and output it to the correct channel
	}
}

//! Test Function 1: Triangle Wave

//! Output a periodic triangle wave of amplitude 10V (20Vpp) on the selected channel of the DAC
//! @param channel		Selects for DAC channels 1-4, using either explicit numbers or DAC_CH1, DAC_CH2, DAC_CH3, and DAC_CH4
void DACTrigWave( DACChannel channel )
{
	Uint16 i = 0;													// a counting variable
	float32 level[100];												// and the array of voltage levels

	for (i = 0; i < 100; i++)										// fill each element of the array
	{
		if (i < 50)													// with the first half as a positive-sloped line from 0V to 10V
		{
			level[i] = (i - 25.0)/2.5;
		}
		else														// and the latter half as a negative-sloped line from 10V to 0V
		{
			level[i] = (75.0 - i)/2.5;
		}
	}

	i = 0;

	while(1)														// then continuously output the pseudo-triangle wave
	{
		VoltagetoDAC(level[i], channel);
		//CodetoDAC((32768.0 / 10.0 * level[i] + 32768.0), channel);
		i++;

		if (i == 100)												// ensuring that the counter gets reset at the end of the array
		{
			i = 0;
		}
	}
}

//! Test function 2: Sine Wave

//! Output a periodic sine wave on the selected channel of the DAC, whose amplitude is controlled (within the integer range [0,9]) by user input, taken through the UARTB channel
//! with the fastest period possible given the software structure (i.e. no additional delay added in at each degree)
//! @param channel		Selects for DAC channels 1-4, using either explicit numbers or DAC_CH1, DAC_CH2, DAC_CH3, and DAC_CH4
void DACSinWave( DACChannel channel )
{
	float32 level = 0;
	Uint16 i = 0;
	Uint16 data = 48;

	SendStrUARTB("\n\rYou can control the voltage by entering a single numeric character:\n\r");

	while(1)
	{
		for (i = 0; i < 360; i++)									// cycle over all 360 degrees of sin(x) arguments
		{
			if(ScibRegs.SCIRXST.bit.RXRDY == 1)						// poll for user input
			{
				data = GetCharUARTB();
				if (data > 57 || data < 48)							// and map it to 0 if it is invalid
				{
					data = 48;
				}
			}
			level = (data - '0') * sin((float32)(i * PI / 180));	// calculate the sin() of i in degrees (converting to a float32), and multiply it by the user-defined amplitude
			VoltagetoDAC(level, channel);							// finally, output the voltage to the DAC channel
		}
	}
}

//! Test Function 3: Square Wave

//! Output a 0-3.3V, ~1kHz periodic square wave on the selected channel of the DAC
//! @param channel		Selects for DAC channels 1-4, using either explicit numbers or DAC_CH1, DAC_CH2, DAC_CH3, and DAC_CH4
void DAC3_3VSquareWave( DACChannel channel )
{
	Uint16 i = 0;							// a counting variable
	Uint16 nominalHalfPeriod = 5000;		// microseconds, for delay

	while(1)								// iterate indefinitely
	{
		for (i = 0; i < 2; i++)				// flip between i = 0 and i = 1
		{
			VoltagetoDAC(3.3*i, channel);	// and use it to set the voltage to either 0V or 3.3V, respectively
			DELAY_US(nominalHalfPeriod);	// delaying with the DAC at that constant voltage each time, to regulate the frequency
		}
	}
}

//! Test Function 4: Motor-control Sine Wave

//! Output a periodic sine wave on the selected channel of the DAC, with function-call-defined voltage peaks and period.
//! @param Vmin			The minimum voltage of the sine wave, with ~-10V <= Vmin <= Vmax <= ~+10V
//! @param Vmax			The maximum voltage of the sine wave, with ~-10V <= Vmin <= Vmax <= ~+10V
//! @param period		The period of the sine wave in ms, valid only when period >= ___
//! @param channel		Selects for DAC channels 1-4, using either explicit numbers or DAC_CH1, DAC_CH2, DAC_CH3, and DAC_CH4

void MotorContinuousSineWave( float32 Vmin, float32 Vmax, float32 period, DACChannel channel )
{
	Uint16 i = 0;										// counting variables for array
	//Uint16 index = 0;
	float32 amplitude;									// voltage-level-related float32 variables
	float32 zeroLevel;
	float32 level;
	//float32 factor;
	float32 oneDegreeDelay = 0;							// delay per 1-degree cycle of code, presumed >> inherent code delay

	if (Vmin < -10)										// impose negative and positive limits on Vmin...
	{
		Vmin = -10;
	}
	if (Vmin > 10)
	{
		Vmin = 10;
	}
	if (Vmax < -10)										// ...and on Vmax
	{
		Vmax = -10;
	}
	if (Vmax > 10)
	{
		Vmax = 10;
	}

	amplitude = (Vmax - Vmin) / 2.0;					// amplitude is half of Vpp
	zeroLevel = (Vmax + Vmin) / 2.0;					// level at sin(t) when t = integer*pi

	/*if (period < 900)									// ensure period is an appropriate/accurate value
	{
		period = 900;
	}*/

	oneDegreeDelay = period * 1000.0 / 360.0;			// calculate the delay for one iteration of the for loop, ~1/360th of the total period (valid when period >> softwareDelay, or period > ~50ms)

	//STILL NEED TO FIX DELAY HERE, AND DELAY AND ACTUAL SIN() IN NEXT FUNCTION
	while(1)
	{
		for (i = 0; i < 360; i++)					// cycle over all 360 degrees of sin(x) arguments
		{
			level = sin((float32)(i * PI / 180));	// calculate the sin() value of the degree index
			level = amplitude * level + zeroLevel;	// and map it to the actual voltage level via the amplitude and zeroLevel values

			VoltagetoDAC(level, channel);			// finally, output the voltage to the DAC channel
			DELAY_US((oneDegreeDelay - 550));			// and delay enough to set the period accordingly (adjusting with an estimate of software delay)
		}
	}
}

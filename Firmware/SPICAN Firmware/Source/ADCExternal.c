/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-06-13 15:31:06 -0400 (Tue, 13 Jun 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/ADCExternal.c $ URL of repository
 *
 * $Rev:: 1730                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

//! @file
//! This file containts the code that supports the two 24bit ADCs external to the processor chip.
//! The chips are U62 and U68. On both of them, analog inputs 0-3 are used.
//! AIN0 is the strain gauge signal and AIN1 is the reference (low) voltage for that channel.
//! Similarly for AIN2 and 3.
//! AIN4-7 and ANCOM are grounded.

//! Static variable to hold the rev code returned by the ADC chips at init.
static Uint16 ADCExternalChipRev[2];

//! Set up the SPI controller for external ADCs, and set up the ADCs.
//! Also reads the rev bytes to make sure they are installed.
void InitAdcExternal( void )
{
	//Set up the SPI FIFOs
	spi_fifo_init();
	//Set up the SPI data ports
	spi_init();
	//Init the external ADCs and configure them.
	ad7738_init();
	//Read the rev codes of the two external ADC chips so we can tell they are there.
	ad7738_Read_RevByte();
}

//! Configure the SPI interface pins and functions.
void spi_init( void )
{
 	EALLOW;

 	//Make the SPI pins peripherals rather than GPIO bits
	GpioMuxRegs.GPFMUX.bit.SPISIMOA_GPIOF0	= 1;
	GpioMuxRegs.GPFMUX.bit.SPISOMIA_GPIOF1	= 1;
	GpioMuxRegs.GPFMUX.bit.SPICLKA_GPIOF2	= 1;

	//Make the ADC chip selects be GPIO output pins
	GpioMuxRegs.GPBMUX.bit.PWM11_GPIOB4	= 0;
	GpioMuxRegs.GPBMUX.bit.PWM12_GPIOB5	= 0;
	GpioMuxRegs.GPBDIR.bit.GPIOB4		= 1;
	GpioMuxRegs.GPBDIR.bit.GPIOB5		= 1;

	//Sensor smart tag pin as GPIO, Tag1, first device on U62
	GpioMuxRegs.GPAMUX.bit.TCLKINA_GPIOA12	= 0;

	//This is the A_SYNC signal to both ADCs, make it an output
	GpioMuxRegs.GPBDIR.bit.GPIOB7=1;

	EDIS;

	//Turn Off CS to both chips
	ReleaseExtADC0();		// added by KS, 05-01-12
	ReleaseExtADC1();

	//Set the sync signal low $$$ not sure that this does anything useful
	AssertExtADCSync();

	//Reset on, polarity 1 (send on falling edge, read on rising), no loopback, 8-bit chars
	SpiaRegs.SPICCR.all =0x0047;
	//Disable overrun int, clock phase 0 (normal), Enable master mode, transmit enabled, SPI int disabled.
	SpiaRegs.SPICTL.all =0x0006;
	//SpiaRegs.SPIBRR =0x007F;	//approx 300KHz at 150 MHz processor clock
	SpiaRegs.SPIBRR = 0x0003;	//The value is (37.5MHZ / (3+1) ) = 9.375MHz at 150MHz processor clock
	//Config as before, but remove reset
	SpiaRegs.SPICCR.all =0x00C7;
	//Set up SPI controller so it keeps running during a breakpoint
	SpiaRegs.SPIPRI.bit.FREE = 1;
}

//! Initialize SPI FIFO registers.
void spi_fifo_init( void )
{
	//No reset, SPI FIFO enhancements on, enable transmit FIFO, clear pending transmit FIFO interrupt, disable interrupt on FIFO count
	SpiaRegs.SPIFFTX.all=0xE040;
	//Enable receive FIFO, clear pending receive FIFO interrupt, disable interrupt on FIFO count
	SpiaRegs.SPIFFRX.all=0x204f;
	//No delay on sending to SPI xmit buffer
	SpiaRegs.SPIFFCT.all=0x0;
}

/** Transmit one byte out the SPI port.
 *
 * Waits till one byte has been received, which will happen after one has been transmitted.
 * Apparently waiting for the transmit FIFO to go empty was a problem in the past.
 * @param SendData Byte to be sent. The parameter is 16 bits but the port is 8 bits. The lower 8 bits of the parameter are sent.
*/
void spi_xmit( Uint16 SendData )
{
	SpiaRegs.SPITXBUF = (Uint16) (SendData<<8);	// 8 bits, left aligned

	//it does not work to do it this way: while(SpiaRegs.SPIFFTX.bit.TXFFST !=0) { }
	while(SpiaRegs.SPIFFRX.bit.RXFFST == 0) { }

	SendData = SpiaRegs.SPIRXBUF; // read out dummy data that comes in during transmit
}

/** Receive one byte from the SPI port.
 *
 * Sends a dummy byte out the SPI port to clock in one byte from the peripheral.
 * Waits till one byte has been received.
 * Apparently waiting for the transmit FIFO to go empty was a problem in the past.
 * @retval Byte received from the port is in the lower 8 bits.
*/
Uint16 spi_recv( void )
{
	Uint16 ReceiveData;

	//Send dummy byte to clock in response from peripheral.
	//The dummy byte must be a zero to prevent accidentally resetting the ADCs.
	SpiaRegs.SPITXBUF = 0;

	//it does not work to do it this way: while(SpiaRegs.SPIFFTX.bit.TXFFST !=0) { }
	while(SpiaRegs.SPIFFRX.bit.RXFFST == 0) { }

	ReceiveData = (Uint16) ( SpiaRegs.SPIRXBUF );
	return( ReceiveData );
}

/** Reset both external 24 bit strain gauge ADCs, part AD7738.
 *
 * The parts are reset by sending 32 cycles of H bits.
 * The data sheet is a little confusing about this - it's not telling you to send 32 zeroes
 * after the reset, it's warning you to do your dummy reads using zeroes so you don't accidentaly
 * do a full reset of the chip.
 * Really doing this reset seems to lock the DOUT pin to ground, so no more exchanges to the ADC can happen.
 * So the code has been left as before, where each 8 bits of 1's are followed by 8 bits of zeroes, so it doesn't really reset.
 */
void ad7738_reset()
{
	//NOTE: this code says it resets the external ADCs but it does not.
	//The way the xmit routine is implemented, there are not 32 writes of 1 to the chip.
	//There are 8 ones then 8 zeroes, 4 times.
	//If you do it correctly (32 ones with CS low), the chip will not work and will short the DOUT line low so neither chip works!
	//So leave it wrong.
	// AD7738 - U62
	SelectExtADC0();

	spi_xmit( 0x00 );	//start with some zeroes so we know how many 1's there are
	spi_xmit( 0xFF );	//send 32 1's
	spi_xmit( 0xFF );
	spi_xmit( 0xFF );
	spi_xmit( 0xFF );
	spi_xmit( 0x00 );	//send 32 0's
	spi_xmit( 0x00 );
	spi_xmit( 0x00 );
	spi_xmit( 0x00 );

	ReleaseExtADC0();

	// AD7738 - U68
	SelectExtADC1();

	spi_xmit( 0x00 );	//start with some zeroes so we know how many 1's there are
	spi_xmit( 0xFF );	//send 32 1's
	spi_xmit( 0xFF );
	spi_xmit( 0xFF );
	spi_xmit( 0xFF );
	spi_xmit( 0x00 );	//send 32 0's
	spi_xmit( 0x00 );
	spi_xmit( 0x00 );
	spi_xmit( 0x00 );

	ReleaseExtADC1();
}

/**
 * Configure the ADC7738 ADCs.
 *
 * U62 is configured for AIN0-AIN1 to be a differential pair +/- 2.5V range, and AIN2-AIN3 the same.
 * U68 is configured the same but 0 - 2.5V range.
 * Both are set for the fastest conversion time which is approx 66us (faster for 160MHz clock instead of 150MHz).
 * In the original code, U62 was used to measure current, and U68 measured VBUS+ and VBUS-.
 */
void ad7738_init( void )
{
	ad7738_reset();	//Note: this function does not do anything, but fixing it and making it really reset the ADC breaks them.

	StartExternalADCs();	//Put the SYNC signal in a state that lets the external ADCs run.

	// AD7738 - U62
	// AINCOM/P0 pin is an analog input, P1 is a digital input, RDY means any enabled channel has data, SYNC pin controls conversions
	ad7738_0_Write_Data(ADCREG_IOPORT,		0x31);
	//Enable internal buffer, Set up CH0 = AIN0 as differential with AIN1, P1 tracks RDY bit, single conversion mode, +/- 2.5V
	ad7738_0_Write_Data(ADCREG_CHSET,		0x64);
	//No chop, Conversion Time (us) = (FW x 64 + 207)/MCLK Frequency (MHz) = (3 x 64 + 207)/6 = 66.5us, fastest possible setting
	ad7738_0_Write_Data(ADCREG_CHCTM,		0x03);
	//Enable internal buffer, Set up CH1 = AIN2 as differential with AIN3, P1 tracks RDY bit, continuous conversion mode, +/- 2.5V
	ad7738_0_Write_Data(ADCREG_CHSET + 1,	0x64);
	//No chop, Conversion Time (us) = (FW x 64 + 207)/MCLK Frequency (MHz) = (3 x 64 + 207)/6 = 66.5us, fastest possible setting
	ad7738_0_Write_Data(ADCREG_CHCTM + 1,	0x03);

	// AD7738 - U68
	// AINCOM/P0 pin is an analog input, P1 is a digital input, RDY means all enabled channels have data, /SYNC=1
	ad7738_1_Write_Data(ADCREG_IOPORT,		0x31);
	//Enable internal buffer, Set up CH0 = AIN0 as differential with AIN1, P1 tracks RDY bit, single conversion mode, +/- 2.5V
	ad7738_1_Write_Data(ADCREG_CHSET,		0x64);
	//No chop, Conversion Time (us) = (FW x 64 + 207)/MCLK Frequency (MHz) = (3 x 64 + 207)/6 = 66.5us, fastest possible setting
	ad7738_1_Write_Data(ADCREG_CHCTM,		0x03);
	//Enable internal buffer, Set up CH1 = AIN2 as differential with AIN3, P1 tracks RDY bit, continuous conversion mode, +/- 2.5V
	ad7738_1_Write_Data(ADCREG_CHSET + 1,	0x64);
	//No chop, Conversion Time (us) = (FW x 64 + 207)/MCLK Frequency (MHz) = (3 x 64 + 207)/6 = 66.5us, fastest possible setting
	ad7738_1_Write_Data(ADCREG_CHCTM + 1,	0x03);
}

/**
 * This routine reads the revision codes from both ADCs to make sure they are installed and working.
 *
 * Routine IsAD7738Installed looks at the values to decide if they are valid.
 */
void ad7738_Read_RevByte( void )
{
	//These variables aren't really volatile, but this is a way to let me
	//keep the values for debugging without getting a warning that they are not used.
	volatile Uint16 ChipRev0, ChipRev1;

	//Pick an obvious invalid value.
	ADCExternalChipRev[ 0 ] = ADCExternalChipRev[ 1 ] = REV_CODE_INVALID_VALUE;

	//Make sure both CS are released before start.
	ReleaseExtADC0();
	ReleaseExtADC1();

	// read and keep the chip rev byte from ADC0
	SelectExtADC0();
	spi_xmit( ADCREG_REV );
	ADCExternalChipRev[0] = spi_recv();
	ChipRev0 = ADCExternalChipRev[0];
	ReleaseExtADC0();

	// read and keep the chip rev byte from ADC1
	SelectExtADC1();
	spi_xmit( ADCREG_REV );
	ADCExternalChipRev[1] = spi_recv();
	ChipRev1 = ADCExternalChipRev[1];
	ReleaseExtADC1();
}

/** Check if the ADC7738 is installed and working correctly.
 *
 * After the external ADCs have been initialized, this routine will tell you if they are
 * installed and responding to queries.
 * @param Which Selects either chip 0 (U62) or chip 1 (U68). Any parameter value other than zero is treated as one.
 * @retval TRUE means the chip is present, FALSE means not present.
 */
Uint16 IsAD7738Installed( Uint16 Which )
{
	Uint16 Retcode;

	//Validate the user's parameter
	if( Which != 0 )
	{
		Which = 1;
	}

	//Check the returned value against the expected value
	Retcode = FALSE;
	if( ADCExternalChipRev[ Which ] == REV_CODE_AD7738 )
	{
		Retcode = TRUE;
	}

	return( Retcode );
}

/**
 * Write a specified data byte to a speficied port in ADC 0 (U62).
 *
 * @param ADDR Which location in the ADC to write to.
 * @param DATA What data byte to write there.
 */
void ad7738_0_Write_Data(Uint16 ADDR, Uint16 DATA)
{
	SelectExtADC0();	// chip select, A0CSn
	spi_xmit(ADDR);
	spi_xmit(DATA);
	ReleaseExtADC0();	// chip select, A0CSn
}

/**
 * Write a specified data byte to a speficied port in ADC 1 (U68).
 *
 * @param ADDR Which location in the ADC to write to.
 * @param DATA What data byte to write there.
 */
void ad7738_1_Write_Data(Uint16 ADDR, Uint16 DATA)
{
	SelectExtADC1();	// chip select, A1CSn
	spi_xmit(ADDR);
	spi_xmit(DATA);
	ReleaseExtADC1();	// chip select, A1CSn
}

/**
 * Read back 24 bits of conversion results from U62.
 *
 * @param CH Channel number in the ADC, either 0 or 1
 *
 * @retval Conversion results, including 24 bits of result and status in the upper 8 bits.
 */
Uint32 ad7738_0_Read_Data( Uint16 CH )
{
	Uint32 readback;

	// note: CH should be 0 or 1 for this system
	//in the original code, CH 0: AIN0-AIN1, VBUS+, CH 1: AIN2-AIN3, VBUS-
	if( CH != 0 )
	{
		CH = 1;
	}

	SelectExtADC0();			// assert chip select, A0CSn

	// request data
	readback = 0;
	spi_xmit(ADCREG_DATA | CH);		//Request to read channel conversion data
	readback = spi_recv();		// channel status (thrown away at end by ANDing off)
	readback = readback<<8;
	readback |= spi_recv();		// 8 MSB of conversion data
	readback = readback<<8;
	readback |=spi_recv();		// 8 more bits of conversion data
	readback = readback<<8;
	readback |= spi_recv();		// 8 LSB of conversion data

	ReleaseExtADC0();			// chip select, A0CSn
	//Note, this value has 8 bits of status in the upper byte if running in contiuous mode
	//This status byte is the only way to tell if the value is negative.
	return( readback );
}

/**
 * Read back 24 bits of conversion results from U68.
 *
 * This routine throws away the channel status register which indicates sign, overflow, and reference failure.
 * @param CH Channel pair, 0 (VBUS+) or 1 (VBUS -), checked for validity
 * @retval Conversion results
 */
Uint32 ad7738_1_Read_Data(Uint16 CH)
{
	Uint32 readback;
	// note: CH should be 0 or 1 for this system
	//In the original code, CH 0: AIN0-AIN1, VBUS+, CH 1: AIN2-AIN3, VBUS-
	if( CH != 0 )
	{
		CH = 1;
	}

	SelectExtADC1();			// chip select, A1CSn

	// request data
	readback = 0;
	spi_xmit( ADCREG_DATA | CH );
	readback = spi_recv();		// channel status (thrown away at end by ANDing off)
	readback = readback<<8;
	readback |= spi_recv();		// 8 MSB of conversion data
	readback = readback<<8;
	readback |=spi_recv();		// 8 more bits of conversion data
	readback = readback<<8;
	readback |= spi_recv();		// 8 LSB of conversion data

	ReleaseExtADC1();			// chip select, A1CSn

	//Note, this value has 8 bits of status in the upper byte if running in contiuous mode
	//This status byte is the only way to tell if the value is negative.
	return( readback );
}

/**
 * Perform full scale system calibration on all 3 active external ADC channels.
 *
 * Parameter E3 means Channel Full Scale System Calibration, 6 MHz clock output active,
 * no dump mode, no continuous read mode, channel data is 24 bits wide,
 * clamp readings at the limits instead of reporting outside the limits.
 * You must give a full scale voltge to the chip for it to cal against before calling this code!
 * The chip measures the full scale voltage then loads its cal register for the specified channel.
 */
void ad7738_FullScaleSystemCal( void )
{
	// AD7738 - U62
	AssertExtADCSync();							// A_SYNC low
	ad7738_0_Write_Data(ADCREG_MODE, 0xE3);
	ReleaseExtADCSync();						// A_SYNC high

	// AD7738 - U68
	AssertExtADCSync();							// A_SYNC low
	ad7738_1_Write_Data(ADCREG_MODE, 0xE3);
	ReleaseExtADCSync();						// A_SYNC high

	AssertExtADCSync();							// A_SYNC low
	ad7738_1_Write_Data(ADCREG_MODE+1, 0xE3);
	ReleaseExtADCSync();						// A_SYNC high
}

/**
 * Perform zero value self calibration on all 3 active external ADC channels.
 *
 * Parameter 83 means zero value self calibration, 6 MHz clock output active,
 * no dump mode, no continuous read mode, channel data is 24 bits wide,
 * clamp readings at the limits instead of reporting outside the limits.
 * The chip shorts its inputs internally to do this cal then loads its cal register for the specified channel.
 *
 */
void ad7738_zScaleSelfCal( void )
{
	// AD7738 - U62
	AssertExtADCSync();		// A_SYNC low
	ad7738_0_Write_Data(ADCREG_MODE, 0x83);
	ReleaseExtADCSync();			// A_SYNC high


	// AD7738 - U68
	AssertExtADCSync();		// A_SYNC low
	ad7738_1_Write_Data(ADCREG_MODE, 0x83);
	ReleaseExtADCSync();			// A_SYNC high

	AssertExtADCSync();		// A_SYNC low
	ad7738_1_Write_Data(ADCREG_MODE+1, 0x83);
	ReleaseExtADCSync();			// A_SYNC high
}

/**
 * Perform zero value system calibration on all 3 active external ADC channels.
 *
 * Parameter C3 means Channel zero value system Calibration, 6 MHz clock output active,
 * no dump mode, no continuous read mode, channel data is 24 bits wide,
 * clamp readings at the limits instead of reporting outside the limits.
 * You must give a zero voltge to the chip for it to cal against before calling this code!
 * The chip measures the zero voltage then loads its cal register for the specified channel.
 */
void ad7738_zScaleSystemCal( void )
{
	// AD7738 - U62
	AssertExtADCSync();		// A_SYNC low
	ad7738_0_Write_Data(ADCREG_MODE, 0xC3);
	ReleaseExtADCSync();			// A_SYNC high


	// AD7738 - U68
	AssertExtADCSync();		// A_SYNC low
	ad7738_1_Write_Data(ADCREG_MODE, 0xC3);
	ReleaseExtADCSync();			// A_SYNC high

	AssertExtADCSync();		// A_SYNC low
	ad7738_1_Write_Data(ADCREG_MODE+1, 0xC3);
	ReleaseExtADCSync();			// A_SYNC high
}

//! Begin continuous conversion on both channels of both AD7738 chips.
void ad7738_StartConversionContinuous( void )
{
	StopExternalADCs();						// A_SYNC low, prevents them from starting

	// AD7738 - U62
	ad7738_0_Write_Data(ADCREG_MODE,		0x2B);
	ad7738_0_Write_Data(ADCREG_MODE + 1,	0x2B);

	// AD7738 - U68
	ad7738_1_Write_Data(ADCREG_MODE,		0x2B);
	ad7738_1_Write_Data(ADCREG_MODE+1,		0x2B);

	StartExternalADCs();					//Start the converters running in sync
}

//! Start a single conversion on both channels of both AD7738 chips.
void ad7738_StartConversionSingle( void )
{
	StopExternalADCs();	// A_SYNC low, prevents them from starting

	// AD7738 - U62
	ad7738_0_Write_Data(ADCREG_MODE,		0x4B);	// Single conversion, Dump mode (all reads include status), 24 bit data, clamp mode for overflow.
	ad7738_0_Write_Data(ADCREG_MODE+1,		0x4B);

	// AD7738 - U68
	ad7738_1_Write_Data(ADCREG_MODE,		0x4B);
	ad7738_1_Write_Data(ADCREG_MODE+1,		0x4B);

	StartExternalADCs();	//Start the converters running in sync
}

//! Start a single conversion on one channel of 1 ADC, using the SYNC pin.
void ad7738_StartConversionSingleChannel( u16 Channel )
{
	//validate user input
	if( Channel > 3 )
	{
		Channel = 0;
	}

	StopExternalADCs();

	//Decide which channel the user wants to start up, and do it.
	switch( Channel )
	{
		case 0:
			ad7738_0_Write_Data(ADCREG_MODE,	0x4A);	// Single conversion, Dump mode (all reads include status), 24 bit data, NO clamp mode for overflow.
			break;

		case 1:
			ad7738_0_Write_Data(ADCREG_MODE+1,	0x4A);
			break;

		case 2:
			ad7738_1_Write_Data(ADCREG_MODE,	0x4A);
			break;

		case 3:
			ad7738_1_Write_Data(ADCREG_MODE+1,	0x4A);
			break;

		default:
			break;
	}

	StartExternalADCs();	//Start the converters running in sync
}

//! Wait till a specific channel on the external ADC has a value ready, and then read the value.
//! @param Channel Channel number, from 0 to 3. Channels 0 and 1 are on first ADC, 2 and 3 are on second. Invalid param gets channel 0.
//! @param ReadingPointer Pointer to a uint32 where the value will be stored.
//! @retval TRUE The reading is valid and the value was stored in the user's variable.
//! @retval FALSE The reading was never received, the ADC never went ready. Zero was stored in the caller's variable.
//! @retval FAIL The reading had an overflow or "no reference voltage" error indication. Zero was stored in the caller's variable.
boolean ad7738WaitForReady( Uint16 Channel, PtrU32 ReadingPointer )
{
	u16 ThisChannelStatus;
	u32 ThisADCReading;
	u16 LoopsWaitingForReady;
	u16 Retcode;

	Retcode = FALSE;
	//validate channel number
	if( Channel > 3)
	{
		Channel = 0;
	}
	for( LoopsWaitingForReady = 0; LoopsWaitingForReady < LOOPS_WAITING_FOR_ADC_READY; LoopsWaitingForReady++ )
	{
		//decide where we're reading from and get the status
		switch( Channel )
		{
			case 0:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_0_Read_Data( 0 );
				break;

			case 1:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_0_Read_Data( 1 );
				break;

			case 2:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_1_Read_Data( 0 );
				break;

			case 3:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_1_Read_Data( 1 );
				break;

			default:
				//should not be possible
				ThisADCReading = 0;
				break;
		}

		//Save the upper 8 bits which are status
		ThisChannelStatus = (u16)(ThisADCReading >> 24);
		if( (ThisChannelStatus & AD7738_READY_FLAG) != 0 )
		{
			//There's a reading available. Is it a good one? Check flags for bad reference and overflow.
			if( (ThisChannelStatus & (AD7738_NO_REF_FLAG | AD7738_OVERFLOW_FLAG	) ) == 0 )
			{
				//return the reading along with the status (it has the sign bit)
				*ReadingPointer = ThisADCReading;
				Retcode = TRUE;
			}
			else
			{
				//This is an invalid reading. Let the caller know.
				*ReadingPointer = 0;
				Retcode = FAIL;
			}
		}

		if( Retcode != FALSE )
		{
			break;
		}

		//If it's not ready, wait about half a conversion time
		DELAY_US( TIME_BETWEEN_STATUS_REQ_US );
	}

	//Did we ever get a real reading?
	if( Retcode == FALSE )
	{
		//The data was never there, the chip never went ready.
		*ReadingPointer = 0;
	}

	return( Retcode );
}

//! Wait till a specific channel on the external ADC has a value ready, and then read the value.
//! @param Channel Channel number, from 0 to 3. Channels 0 and 1 are on first ADC, 2 and 3 are on second. Invalid param gets channel 0.
//! @param ReadingPointer Pointer to a uint32 where the value will be stored.
//! @retval TRUE The reading is valid and the value was stored in the user's variable.
//! @retval FALSE The reading was never received, the ADC never went ready. Zero was stored in the caller's variable.
//! @retval FAIL The reading had an overflow or "no reference voltage" error indication. Zero was stored in the caller's variable.
boolean Fastad7738WaitForReady( Uint16 Channel, PtrU32 ReadingPointer )
{
	u16 ThisChannelStatus;
	u32 ThisADCReading;
	u16 LoopsWaitingForReady;
	u16 Retcode;

	Retcode = FALSE;

	for( LoopsWaitingForReady = 0; LoopsWaitingForReady < LOOPS_WAITING_FOR_ADC_READY_FAST; LoopsWaitingForReady++ )
	{
		//decide where we're reading from and get the status
		switch( Channel )
		{
			case 0:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_0_Read_Data( 0 );
				break;

			case 1:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_0_Read_Data( 1 );
				break;

			case 2:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_1_Read_Data( 0 );
				break;

			case 3:
				//Read the data in the ADC output register
				ThisADCReading = ad7738_1_Read_Data( 1 );
				break;

			default:
				//should not be possible
				ThisADCReading = 0;
				break;
		}

		//Save the upper 8 bits which are status
		ThisChannelStatus = (u16)(ThisADCReading >> 24);
		if( (ThisChannelStatus & AD7738_READY_FLAG) != 0 )
		{
			//There's a reading available. Is it a good one? Check flags for bad reference and overflow.
			if( (ThisChannelStatus & (AD7738_NO_REF_FLAG | AD7738_OVERFLOW_FLAG	) ) == 0 )
			{
				//return the reading along with the status (it has the sign bit)
				*ReadingPointer = ThisADCReading;
				Retcode = TRUE;
			}
			else
			{
				//This is an invalid reading. Let the caller know.
				*ReadingPointer = 0;
				Retcode = FAIL;
			}
		}

		if( Retcode != FALSE )
		{
			break;
		}

		//If it's not ready, wait about half a conversion time
		DELAY_US( TIME_BETWEEN_STATUS_REQ_US_FAST );
	}

	//Did we ever get a real reading?
	if( Retcode == FALSE )
	{
		//The data was never there, the chip never went ready.
		*ReadingPointer = 0;
	}

	return( Retcode );
}

/**
 * @brief Read a strain gauge channel and return an averaged reading in pounds.
 *
 * This routine assumes excitation voltage of 5v, that the ADCs are set up for +/- 2.5V,
 * and that the external ADCs have been inited at system startup.
 *
 * @param Channel Channel number. Channels 0 and 1 are on the first ADC U62,
 * and 2 and 3 are on U68. Invalid values read channel 0.
 * @param MilliVoltPerVolt The calibration constant for full scale reading of the strain gauge.
 * @param ChannelGain The analog gain in the channel. Depends on what resistor installed and if the "lower gain" jumper installed.
 * Typical value is 80.7 and with the low gain jumper it is 73.4. If set to zero or more than 100, it is set to 1.
 * @param MaxPounds Pounds used to give the mV/V number.
 * @param MilliVoltsAtZeroPounds Millivolt reading at zero pounds.
 * @param HowManyAverages How many readings to average together. If zero, will be one.
 * @param InvertResult If TRUE, multiply result by -1. Used when strain gauge reads negative pounds.
 * @retval Pounds May be positive or negative, depending on the direction of force.
 *
 */


//This has been totally bastardized by Greg
float32 ExternalADCReadStrainGauge( u16 Channel, float32 MilliVoltPerVolt, float32 ChannelGain, u16 MaxPounds, s16 MilliVoltsAtZeroPounds, u16 HowManyAverages, u16 InvertResult )
{
	float32 ReturnValue;
	u16 i;
	u16 StatusFlagCounts[ 16 ];
	boolean IsChannelReady;

	u32 ExternalADCRawValue;	//read directly for the ADC, upper byte is status
	s64 IntegerSumForAverage;
	s32 IntegerReading;
	float64 ExternalADCValue;
	u16 ChannelStatus;
	#if DEBUG_PRINT_STRAIN_GAUGE
		char16 Buffer[100];	//for debug printing
	#endif

	//Making this a const ensures that the value is computed at compile time, not at run time.
	float64 const ADCBitValue = 5.0L/(1024L*1024L*16L);	//The range of the ADC is +/-2.5V (5v range), and there are 2^24 steps which is 16Meg
	float64 ThisADCReading;
	float32 Millivolts;
	float32 MillivoltsAdjusted;
	float32 ConversionFactor;
	float32 Pounds;

	ReturnValue = 0;

	//Validate user's input channel number
	if( Channel > 3 )
	{
		Channel = 0;
	}

	//Validate user's averaging count
	if( HowManyAverages == 0 )
	{
		HowManyAverages = 1;
	}

	//Validate the channel gain
	if( (ChannelGain > 100) || (ChannelGain == 0) )
	{
		ChannelGain = 1;
	}

	#if DEBUG_PRINT_STRAIN_GAUGE
		sprintf( Buffer, "Channel %d Averages %u ", Channel, HowManyAverages);
		SendStrUARTA( Buffer );
	#endif

	//Find how to turn millivolts into pounds
	//This is total voltage generated at full scale
	ConversionFactor = MilliVoltPerVolt * STRAIN_GAUGE_EXCITATION_VOLTAGE;
	//Now find millivolts per pound
	ConversionFactor /= (float32)MaxPounds;
	//The voltage is gained up before we get it
	ConversionFactor *= ChannelGain;

	//For debug purposes, keep track of what the status bytes are on each read from the ADC.
	//Clear out the status bytes result array
	for( i=0; i < sizeof( StatusFlagCounts ); i++ )
	{
		StatusFlagCounts[ i ] = 0;
	}

	IntegerSumForAverage = 0;

	//Average the readings for better accuracy.
	//The readings are 24 bit integers, so do the average in the integer world which is much faster.
	for( i=0; i<HowManyAverages; i++)
	{
		ExternalADCRawValue = 0; //in case it never goes ready, make it be zero
		//decide where we're reading from and get the data
		switch( Channel )
		{
			case 0:
				ad7738_StartConversionSingleChannel( 0 );
				IsChannelReady = ad7738WaitForReady( 0, &ExternalADCRawValue );
				break;

			case 1:
				ad7738_StartConversionSingleChannel( 1 );
				IsChannelReady = ad7738WaitForReady( 1, &ExternalADCRawValue );
				break;

			case 2:
				ad7738_StartConversionSingleChannel( 2 );
				IsChannelReady = ad7738WaitForReady( 2, &ExternalADCRawValue );
				break;

			case 3:
				ad7738_StartConversionSingleChannel( 3 );
				IsChannelReady = ad7738WaitForReady( 3, &ExternalADCRawValue );
				break;

			default:
				ExternalADCRawValue = 0;
				break;
		}

		//TODO what do we do if this data point is invalid? IsChannelReady will be FAIL in this case and value is zero.
		if( IsChannelReady == FAIL )
		{

		}

		//save the upper 8 bits which are status bits
		ChannelStatus = (u16)(ExternalADCRawValue >> 24);
		//Remove the channel status info from the reading
		ExternalADCRawValue &= 0x00ffffff;
		//Get a signed integer copy of it
		IntegerReading = ExternalADCRawValue;
		//Check to see if it is negative
		if( (ChannelStatus & AD7738_NEGATIVE_FLAG) != 0 )
		{
			IntegerReading *= -1;
		}
		//Keep track of what status values we are finding
		//No need to keep the channel number, we know which one we're reading.
		ChannelStatus &= 0x0f;

		//don't write off the end (should not be possible)
		if( ChannelStatus > sizeof( StatusFlagCounts) )
		{
			ChannelStatus = 0;
		}
		//update the count in the bin for this status code
		StatusFlagCounts[ ChannelStatus ]++;

		//keep the average
		IntegerSumForAverage += IntegerReading;
	}

	//Make it into an average
	ExternalADCValue = (float64)IntegerSumForAverage / (float64) HowManyAverages;
	//Multiply the count by the LSB value of 298nV, yes that's nano volts
	ThisADCReading = (ExternalADCValue * ADCBitValue) - 2.6945;
	//Convert to millivolts for clarity
	Millivolts = (float32)(ThisADCReading * 1000L);
	//Pull out the offset voltage
	MillivoltsAdjusted = Millivolts - (float32)MilliVoltsAtZeroPounds;

	//A typical strain gauge puts out 3.24mv/v * 5v so 16.2mv full scale of 250lbs
	Pounds = MillivoltsAdjusted / ConversionFactor;
	//See if it needs to be inverted
	if( InvertResult == TRUE )
	{
		Pounds *= -1;
	}

	#if DEBUG_PRINT_STRAIN_GAUGE
		sprintf(Buffer, "%f Millivolts    %f Pounds\n", Millivolts, Pounds );
		SendStrUARTA( Buffer );
	#endif

	ReturnValue = Pounds;
	return( ThisADCReading );
}

/**
 * @brief Set up to read a strain gauge channel.
 *
 * This routine assumes excitation voltage of 5v, that the ADCs are set up for +/- 2.5V,
 * and that the external ADCs have been inited at system startup.
 *
 * @param Channel Channel number. Channels 0 and 1 are on the first ADC U62,
 * and 2 and 3 are on U68. Invalid values read channel 0.
 * @param MilliVoltPerVolt The calibration constant for full scale reading of the strain gauge.
 * @param ChannelGain The analog gain in the channel. Depends on what resistor installed and if the "lower gain" jumper installed.
 * Typical value is 80.7 and with the low gain jumper it is 73.4. If set to zero or more than 100, it is set to 1.
 * @param MaxPounds Pounds used to give the mV/V number.
 * @param MilliVoltsAtZeroPounds Millivolt reading at zero pounds.
 * @param InvertResult If TRUE, multiply result by -1. Used when strain gauge reads negative pounds.
 * @param *StrainGaugeParameters	A pointer to the structure that is to be filled in by this function
 * @retval Pounds May be positive or negative, depending on the direction of force.
 *
 */
void FastReadStrainGaugeSetup( u16 Channel, float32 MilliVoltPerVolt, float32 ChannelGain, u16 MaxPounds, s16 MilliVoltsAtZeroPounds, boolean InvertResult, StrainGaugeInfoStruct *StrainGaugeParameters )
{
	#if DEBUG_PRINT_STRAIN_GAUGE
		char16 Buffer[100];	//for debug printing
	#endif

	float32 ConversionFactor;

	//Validate user's input channel number
	if( Channel > 3 )
	{
		Channel = 0;
	}

	//Validate the channel gain
	if( (ChannelGain > 100) || (ChannelGain == 0) )
	{
		ChannelGain = 1;
	}

	#if DEBUG_PRINT_STRAIN_GAUGE
		sprintf( Buffer, "Channel %d Averages %u ", Channel, HowManyAverages);
		SendStrUARTA( Buffer );
	#endif

	//Find how to turn millivolts into pounds
	//This is total voltage generated at full scale
	ConversionFactor = MilliVoltPerVolt * STRAIN_GAUGE_EXCITATION_VOLTAGE;
	//Now find millivolts per pound
	ConversionFactor /= (float32)MaxPounds;
	//The voltage is gained up before we get it
	ConversionFactor *= ChannelGain;

	//Now put the info into a data structure for later
	StrainGaugeParameters->Channel					= Channel;
	StrainGaugeParameters->MilliVoltsAtZeroPounds	= MilliVoltsAtZeroPounds;
	StrainGaugeParameters->ConversionFactor			= ConversionFactor;
	StrainGaugeParameters->InvertResult				= InvertResult;

	//decide where we're reading from and start the first conversion
	switch( Channel )
	{
		case 0:
			ad7738_StartConversionSingleChannel( 0 );
			break;

		case 1:
			ad7738_StartConversionSingleChannel( 1 );
			break;

		case 2:
			ad7738_StartConversionSingleChannel( 2 );
			break;

		case 3:
			ad7738_StartConversionSingleChannel( 3 );
			break;

		default:
			break;
	}
}

//! The second half of the process of reading a strain gauge with overlapping ADC operation.
float32 FastReadStrainGaugeMain( StrainGaugeInfoStruct *StrainGaugeParameters )
{
	u16 Channel;
	s16 MilliVoltsAtZeroPounds;
	s32 IntegerReading;
	u16 ChannelStatus;
	u32 ExternalADCRawValue;	//read directly for the ADC, upper byte is status

	boolean InvertResult;

	//Making this a const ensures that the value is computed at compile time, not at run time.
	float32 const ADCBitValue = 5.0L/(1024L*1024L*16L);	//The range of the ADC is +/-2.5V (5v range), and there are 2^24 steps which is 16Meg
	float32 ExternalADCValue;
	float32 ThisADCReading;
	float32 Millivolts;
	float32 MillivoltsAdjusted;
	float32 ConversionFactor;
	float32 Pounds;
	float32 ReturnValue;

	ReturnValue = 0;

	//restore the info from the structure
	Channel					= StrainGaugeParameters->Channel;
	ConversionFactor		= StrainGaugeParameters->ConversionFactor;
	MilliVoltsAtZeroPounds	= StrainGaugeParameters->MilliVoltsAtZeroPounds;
	InvertResult			= StrainGaugeParameters->InvertResult;

	//decide where we're reading from and get the data.
	//Cast result to void to show that we don't care about the return value.
	(void)Fastad7738WaitForReady( Channel, &ExternalADCRawValue );

	//save the upper 8 bits which are status bits
	ChannelStatus = (u16)(ExternalADCRawValue >> 24);
	//Remove the channel status info from the reading
	ExternalADCRawValue &= 0x00ffffff;
	//Get a signed integer copy of it
	IntegerReading = ExternalADCRawValue;
	//Check to see if it is negative
	if( (ChannelStatus & AD7738_NEGATIVE_FLAG) != 0 )
	{
		IntegerReading *= -1;
	}

	//No need to keep the channel number, we know which one we're reading.
	ChannelStatus &= 0x0f;

	//Make it into a float
	ExternalADCValue = (float32)IntegerReading ;
	//Multiply the count by the LSB value of 298nV, yes that's nano volts
	ThisADCReading = ExternalADCValue * ADCBitValue;
	//Convert to millivolts for clarity
	Millivolts = (float32)(ThisADCReading * 1000L);

	//Pull out the offset voltage
	MillivoltsAdjusted = Millivolts - (float32)MilliVoltsAtZeroPounds;

	//A typical strain gauge puts out 3.24mv/v * 5v so 16.2mv full scale of 250lbs
	Pounds = MillivoltsAdjusted / ConversionFactor;
	//See if it needs to be inverted
	if( InvertResult == TRUE )
	{
		Pounds *= -1;
	}

	//start the next conversion running
	ad7738_StartConversionSingleChannel( Channel );

	ReturnValue = Pounds;

	return( ReturnValue );
}


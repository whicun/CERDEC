/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-11-09 15:09:38 -0500 (Thu, 09 Nov 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/ADCInternal.c $ URL of repository
 *
 * $Rev:: 2313                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

//! @file
//! This file containts the code that supports the ADC inside the processor chip.
//! There are also external ADCs on the ProD board.

// Declare and initialize the ADC Calibration Parameters structure, with hard-coded dallas serial number and ADC parameters all associated with this board's individual hardware
ADCCalParamsStruct ThisBoardsADCParams = {DUMMY_SERIAL_NUMBER,										// 64 bit dallas (board) serial number
															   {{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 0
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 1
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 2
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 3
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 4
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 5
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 6
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 7
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 8
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 9
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 10
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 11
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 12
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 13
																{DUMMY_SLOPE, DUMMY_INTERCEPT},		// channel 14
																{DUMMY_SLOPE, DUMMY_INTERCEPT}}};	// channel 15

//! Init the ADC inside the DSP.

//! This routine implements TI's advivce on setting up the ADC, which is:
//! To powerup the ADC the ADCENCLK bit should be set first to enable
//! clocks, followed by powering up the bandgap and reference circuitry.
//! After a 5ms delay the rest of the ADC can be powered up. After ADC
//! powerup, another 20us delay is required before performing the first
//! ADC conversion.
void InitAdcInternal(void)
{
	// Power up the bandgap and reference circuitry, but keep all else powered down
	AdcRegs.ADCTRL3.all=0x00C0;
	
	// delay 7ms - original TI example had 8ms
	DELAY_US( ADC_INTERNAL_STARTUP_DELAY_US );
	
	// power up rest of ADC
	// power up bandgap, ref, and all other analog ckts, core clock divider 6,
	// ADCLK is HSPCLK/[12*(ADCTRL1[7] + 1)], which means an extra divide by 2 because CPS is set later in this code.
	AdcRegs.ADCTRL3.all=0x00ED;
	// Everything idle
	AdcRegs.ADCTRL2.all=0x0000;
	// Emulation suspend ignored,
	// Aquisition window max size which is 16 times the ADCLK period.
	// ADC operates in cascaded mode which means a 16 state sequencer instead of (2) 8 bit states
	// This also enables a divide by 2 on the ADC clock by setting CPS bit (bit 7).
	AdcRegs.ADCTRL1.all=0x0F90;
	
	// delay another 1000us before any conversion is started
	DELAY_US( ADC_INTERNAL_POST_CONFIG_DELAY_US );
}

//! Calibrate the internal ADC to find the zero offset and gain error.

/** In order to ensure that the Pro-D internal ADCs are
	correctly calibrated upon power up of the board,
	calibration data is taken.  There are 4 inputs to the
	internal ADC which are fed fixed voltage levels.  These
	are input channels ADCINB4 - ADCINB7, which are fed +2.5V,
	+1.6667V, +0.83333V and 0.0V respectfully.  ADCINB4
	(+2.5V) and ADCINB7 (0.0V) are sampled and used to
	calculate gain and offset values for the internal ADC
	module.

	Typical values for offset are zero, and gain 0.98

	This function has been modified by KS to suit the needs of the KL2 Emulator project.
	Separated logic from returns, switched from direct hardware access to a routine to read data,
	and clarified use of variables by LRS 5/17/16.

	@param gain Pointer to a float variable that will hold the gain correction factor
	@param offset Pointer to a float variable that will hold the zero offset error
*/
void PowerUpCalibration( PtrFloat32 gain, PtrFloat32 offset )
{
	Uint16	iCounter;
	Uint16	zeroVoltCounts;
	Uint16	twoFiveVoltCounts;
	Uint32	zeroVoltCountsSum;
	Uint32	twoFiveVoltCountsSum;
	Float32	zeroVoltCountsAverage;
	Float32	twoFiveVoltCountsAverage;
	Float32	OffsetLocal;
	Float32	GainLocal;

	//Do many reads and average them
	zeroVoltCountsSum		= 0;
	twoFiveVoltCountsSum	= 0;
	for( iCounter = 0; iCounter < CAL_SAMPLES; iCounter++ )
	{
		//read 2 channels
		ReadTwoAnalogChannelsSequential( ZERO_VOLT_REF_ADDR_B, TWO_ONE_HALF_VOLT_REF_ADDR_B, &zeroVoltCounts, &twoFiveVoltCounts );

		//Keep track of totals
		zeroVoltCountsSum		+= zeroVoltCounts;
		twoFiveVoltCountsSum	+= twoFiveVoltCounts;
	}

	// Average the readings at 0.0 volts and 2.5 volts
	zeroVoltCountsAverage		= (Float32) zeroVoltCountsSum		/ (Float32)(CAL_SAMPLES);
	twoFiveVoltCountsAverage	= (Float32) twoFiveVoltCountsSum	/ (Float32)(CAL_SAMPLES);

	// Find the zero offset
	OffsetLocal	= ((Float32)ZERO_COUNT_REF) - zeroVoltCountsAverage;
	// Find the gain error
	GainLocal	= ( (Float32)TWO_FIVE_COUNT_REF - OffsetLocal ) / twoFiveVoltCountsAverage;

	//Now set the user's variables with the results
	*offset	= OffsetLocal;
	*gain	= GainLocal;
}

/**	Read 2 analog channels simultaneously.

 * The user specifies a channel number, and this channel is sampled simultaneously on both
 * analog muxes A and B. The actual ADC conversion is not simultaneous, as there in only 1 ADC,
 * but the samples are taken simultaneously.
 * @param Channel
 * Input channel number, for example if 1, channel 1 on A (port 1) and B (port 9) will be the two samples produced.
 * Valid values are 0-7. Only the lower 3 bits of the user supplied number are used.
 * @param resultA, resultB
 * Pointers to 16 bit results from A and B inputs specified by user.
 */
void ReadTwoAnalogChannelsSimultaneous( Uint16 Channel, Uint16 *resultA, Uint16 *resultB )
{
	//Hold the conversion results before passing to user
	Uint16 ChanAresult, ChanBresult;

	//Handle case of bad parameter by user. Just keep lower 3 bits
	Channel &= 7;

	AdcRegs.ADCCHSELSEQ1.bit.CONV00	= Channel;
	AdcRegs.ADCTRL3.bit.SMODE_SEL	= 1;	// simultaneous sampling mode
	AdcRegs.ADCMAXCONV.all			= 1;	// do 2 conversions
	AdcRegs.ADCTRL2.bit.SOC_SEQ1	= 1;	// start the conversion

	//Wait for end of Convert
	WAIT_FOR_ADC_SEQ1_COMPLETION;

	AdcRegs.ADCST.bit.INT_SEQ1_CLR=1;		// clear interrupt status

	//Get the results and shift them into position
	ChanAresult	= (Uint16)(AdcRegs.ADCRESULT0>>4);
	ChanBresult	= (Uint16)(AdcRegs.ADCRESULT1>>4);

	AdcRegs.ADCTRL2.bit.RST_SEQ1=1;			// reset converter to pretriggered state

	//Put values in the user's variables
	*resultA = ChanAresult;
	*resultB = ChanBresult;
}

//!	Read 2 analog channels sequentially.

/** The user specifies 2 channel numbers. Numbers 0-7 are on mux A, 8-15 are on mux B.
 * @param FirstChannel Input channel number. Valid values are 0-f. Only the lower 4 bits of the user supplied number are used.
 * @param SecondChannel Input channel numbers. Valid values are 0-f. Only the lower 4 bits of the user supplied number are used.
 * @param resultA, resultB Pointers to result variables.
 * Pointers to 16 bit results from A and B inputs specified by user.
 */
void ReadTwoAnalogChannelsSequential( Uint16 FirstChannel, Uint16 SecondChannel, Uint16 *resultA, Uint16 *resultB )
{
	//Hold the conversion results before passing to user
	Uint16 FirstResult, SecondResult;

	//Handle case of bad parameter by user. Just keep lower 4 bits
	FirstChannel	&= 0xF;
	SecondChannel	&= 0xF;

	AdcRegs.ADCCHSELSEQ1.bit.CONV00	= FirstChannel;
	AdcRegs.ADCCHSELSEQ1.bit.CONV01	= SecondChannel;
	AdcRegs.ADCTRL3.bit.SMODE_SEL	= 0;	// sequential sampling mode
	AdcRegs.ADCMAXCONV.all			= 2;	// do 2 conversions
	AdcRegs.ADCTRL2.bit.SOC_SEQ1	= 1;	// start the conversion

	//Wait for end of Convert
	WAIT_FOR_ADC_SEQ1_COMPLETION;

	AdcRegs.ADCST.bit.INT_SEQ1_CLR=1;		// clear interrupt status

	//Get the results and shift them into position
	FirstResult		= (Uint16)(AdcRegs.ADCRESULT0>>4);
	SecondResult	= (Uint16)(AdcRegs.ADCRESULT1>>4);

	AdcRegs.ADCTRL2.bit.RST_SEQ1=1;			// reset converter to pretriggered state

	//Put values in the user's variables
	*resultA = FirstResult;
	*resultB = SecondResult;
}

//!	Read 3 analog channels sequentially.

/** The user specifies 3 channel numbers. Numbers 0-7 are on mux A, 8-15 are on mux B.
 * @param FirstChannel Input channel number. Valid values are 0-f. Only the lower 4 bits of the user supplied number are used.
 * @param SecondChannel Input channel numbers. Valid values are 0-f. Only the lower 4 bits of the user supplied number are used.
 * @param ThirdChannel Input channel numbers. Valid values are 0-f. Only the lower 4 bits of the user supplied number are used.
 * @param resultA, resultB, resultC Pointers to result variables
 * Pointers to 16 bit results from A and B inputs specified by user.
 */
void ReadThreeAnalogChannelsSequential( Uint16 FirstChannel, Uint16 SecondChannel, Uint16 ThirdChannel, Uint16 *resultA, Uint16 *resultB, Uint16 *resultC )
{
	//Hold the conversion results before passing to user
	Uint16 FirstResult, SecondResult, ThirdResult;

	//Handle case of bad parameter by user. Just keep lower 4 bits
	FirstChannel	&= 0xF;
	SecondChannel	&= 0xF;

	AdcRegs.ADCCHSELSEQ1.bit.CONV00	= FirstChannel;
	AdcRegs.ADCCHSELSEQ1.bit.CONV01	= SecondChannel;
	AdcRegs.ADCCHSELSEQ1.bit.CONV02	= ThirdChannel;
	AdcRegs.ADCTRL3.bit.SMODE_SEL	= 0;	// sequential sampling mode
	AdcRegs.ADCMAXCONV.all			= 3;	// do 2 conversions
	AdcRegs.ADCTRL2.bit.SOC_SEQ1	= 1;	// start the conversion

	//Wait for end of Convert
	WAIT_FOR_ADC_SEQ1_COMPLETION;

	AdcRegs.ADCST.bit.INT_SEQ1_CLR=1;		// clear interrupt status

	//Get the results and shift them into position
	FirstResult		= (Uint16)(AdcRegs.ADCRESULT0>>4);
	SecondResult	= (Uint16)(AdcRegs.ADCRESULT1>>4);
	ThirdResult		= (Uint16)(AdcRegs.ADCRESULT2>>4);

	AdcRegs.ADCTRL2.bit.RST_SEQ1=1;			// reset converter to pretriggered state

	//Put values in the user's variables
	*resultA = FirstResult;
	*resultB = SecondResult;
	*resultC = ThirdResult;
}

//!	Read 1 analog channel.

/** The user specifies a channel number. Numbers 0-7 are on mux A, 8-15 are on mux B.
 * @param Channel Input channel number. Valid values are 0-f. Only the lower 4 bits of the user supplied number are used.
 * @param resultA
 * Pointer to 16 bit result from inputs specified by user.
 */
void ReadAnalogChannel( Uint16 Channel, Uint16 *resultA )
{
	//Hold the conversion results before passing to user
	Uint16 Result;

	//Handle case of bad parameter by user. Just keep lower 4 bits
	Channel	&= 0xF;

	AdcRegs.ADCCHSELSEQ1.bit.CONV00	= Channel;
	AdcRegs.ADCTRL3.bit.SMODE_SEL	= 0;	// sequential sampling mode
	AdcRegs.ADCMAXCONV.all			= 1;	// do 1 conversion
	AdcRegs.ADCTRL2.bit.SOC_SEQ1	= 1;	// start the conversion

	//Wait for end of Convert
	WAIT_FOR_ADC_SEQ1_COMPLETION;

	AdcRegs.ADCST.bit.INT_SEQ1_CLR=1;		// clear interrupt status

	//Get the results and shift them into position
	Result		= (Uint16)(AdcRegs.ADCRESULT0>>4);

	AdcRegs.ADCTRL2.bit.RST_SEQ1=1;			// reset converter to pretriggered state

	//Put values in the user's variables
	*resultA = Result;
}

//! Read an analog channel as a 12-bit word, and use the calibration parameters to turn it into a float voltage

//! @param channel  			Input channel number. Valid values are 0-f. Only the lower 4 bits of the user's input are used.
//! @param uiNumberOfSamples 	Number of samples to average together.
float32 ReadAnalogVoltage( Uint16 channel, Uint16 uiNumberOfSamples )
{
	Uint16 ADCword;																			// the raw, 12-bit ADC reading
	float32 returnVoltage;
	float32 intercept;
	float32 slope;

	channel &= 0xF;																			// handle the case of a bad parameter by the user; just keep the lower 4 bits

	ADCword = SampleAndAverageInternalADC(channel, uiNumberOfSamples);			// read the analog channel (as an average), and store the 12-bit word at the pointer

	slope = ThisBoardsADCParams.calibrationParameters[channel].slope;
	intercept = ThisBoardsADCParams.calibrationParameters[channel].intercept;	// get the mapping coefficients, to make it easier to understand the math

	returnVoltage = ADCword * slope;											// convert the word to a true voltage input, using calibration parameters specific to this ADC channel on this board
	returnVoltage += intercept;
	return( returnVoltage );
}

//! Update a raw ADC reading with cal info but leave it as an int.

/**
*	This function will apply the calibration data to the count values
*	from the ADC, and update the calibrated count values in the same variable.
*	It operates on an int and updates it in place.
*	Added by KS 4/11/12, cleaned up by LRS 5/17/16.
*	@param counts Pointer to 16 bit value from the ADC to be corrected for cal.
*	Will be trimmed to 12 bits if it is greater than that after correction.
*	@param calData Pointer to calibration data structure containing one gain and offset pair.
*/
void applyPowerUpCalData( Uint16 *counts, stADCCALDATA *calData )
{
	Uint16 Result;
	Float32 tempCounts;

	// convert counts to a floating point value
	tempCounts = (Float32)(*counts);
	
	// apply the calibration offset
	tempCounts	+=	calData->offset;
	// apply the calibration gain
	tempCounts	*=	calData->gain;
	//Do the rounding once.
	tempCounts += 0.5;

	// Make sure it can still be represented as a 12-bit integer.
	// The ADC returns 12 bits so we want to stay in 12 bit world.
	if( tempCounts < 0.0 )
	{
		tempCounts = 0.0;
	}

	if( tempCounts > 4095.0 )
	{
		tempCounts = 4095.0;
	}
	
	// cast it back to an int
	Result	= (Uint16)(tempCounts);
	//And return it to the user
	*counts = Result;
}

/**
 * Average together multiple readings of one ADC channel.
 * Testing showed that 4096 was the lowest number of averages that produced a perfect reading.
 *
 * @param sensorAddr Internal ADC channel number. Limited to 4 bits.
 * @param uiNumberOfSamples Number of samples to average together.
 * @retval Average of the given samples
 */
Uint16 SampleAndAverageInternalADC( Uint16 sensorAddr, Uint16 uiNumberOfSamples )
{
	Uint16	returnValue;
	Uint32	tempVariable;
	Uint16	iCounter;

	//Handle case of bad parameter by user. Just keep lower 4 bits
	sensorAddr	&= 0xF;

	tempVariable = 0;
	//Take the readings
	for( iCounter = 0; iCounter < uiNumberOfSamples; iCounter++ )
	{
		ReadAnalogChannel(sensorAddr, &returnValue);
		tempVariable += returnValue;
	}

	// Average them and return
	returnValue = (Uint16)( (Float32)tempVariable / (Float32)uiNumberOfSamples );

	return( returnValue );
}

//!	Average the readings of 2 analog channels simultandously.

/** The user specifies a channel number, and this channel is sampled simultaneously on both
 * analog muxes A and B. The actual ADC conversion is not simultaneous, as there in only 1 ADC,
 * but the samples are taken simultaneously.
 * @param sensorAddr
 * Input channel number, for example if 1, channel 1 on A (port 1) and B (port 9) will be the two samples produced.
 * Valid values are 0-7. Only the lower 3 bits of the user supplied number are used.
 * @param uiNumberOfSamples Number of samples to average together.
 * @param resultA, resultB
 * Pointers to 16 bit results from A and B inputs specified by user.
 */
void SampleAndAverageInternalADC_Sim( Uint16 sensorAddr, Uint32 uiNumberOfSamples, Uint16* resultA, Uint16* resultB )
{
	Uint16	returnValueA;
	Uint16	returnValueB;
	Uint32	tempVariableA;
	Uint32	tempVariableB;
	Uint32	iCounter;

	//Handle case of bad parameter by user. Just keep lower 3 bits
	sensorAddr	&= 7;

	tempVariableA = 0;
	tempVariableB = 0;
	//Take the samples
	for( iCounter = 0; iCounter < uiNumberOfSamples; iCounter++ )
	{
		ReadTwoAnalogChannelsSimultaneous( sensorAddr, &returnValueA, &returnValueB );
		tempVariableA += returnValueA;
		tempVariableB += returnValueB;
	}

	//Average them and return
	returnValueA = (Uint16)( (Float32)tempVariableA / (Float32)uiNumberOfSamples );
	returnValueB = (Uint16)( (Float32)tempVariableB / (Float32)uiNumberOfSamples );

	*resultA = returnValueA;
	*resultB = returnValueB;
}

//! Correct and scale ADC readings.

/** This routine does two things. First it converts the raw ADC reading to a float and corrects it with calibration factors.
 *	Then it applies a separate scaling factor and offset which might be used to represent
 *	the scale factor and offset of a current sensor or voltage sensor.
 *	@param voltageCounts Pointer to a raw ADC value, which typically has only 12 bits of resolution.
 *	@param voltageVolts Pointer to the result of the operation, a floating point value corrected and scaled.
 *	@param calAutoData Pointer to a structure of calibration for the processor.
 *	@param calChanData Pointer to a structure of sensor scaling data for this particular sensor channel.
 */
void ScaleADCReadings( Uint16 *voltageCounts, Float32 *voltageVolts, stADCCALDATA *calAutoData, stADCCALDATA *calChanData )
{
	// Simply take the input in counts and scale it using y = mx+b, where m is the gain, x is the
	// number of counts, and b is the offset.
	Float32 autoCalCorrectedVoltage;

	autoCalCorrectedVoltage	=	(Float32) *voltageCounts;
	autoCalCorrectedVoltage	-=	calAutoData->offset;
	autoCalCorrectedVoltage	*=	calAutoData->gain;

	*voltageVolts = calChanData->gain * autoCalCorrectedVoltage + calChanData->offset;
}

//! Apply a scaling factor and offset to a raw ADC value, but does not do a calibration correction.

/**
 *	@param voltageCounts Pointer to a raw ADC value, which typically has only 12 bits of resolution.
 *	@param voltageVolts Pointer to the result of the operation, a floating point value corrected and scaled.
 *	@param calChanData Pointer to a structure of sensor scaling data for this particular sensor channel.
 */
void ScaleADCReadingsToBusVoltage( Uint16 *voltageCounts, float *voltageVolts, stADCCALDATA* calChanData )
{
	*voltageVolts = calChanData->gain * (*voltageCounts) + calChanData->offset;
}

//Start of thermistor code
//Declare the lookup table outside of a function so it won't end up on the stack.
//Declare it const so it might end up in the ROM.
//The first entry is the ADC reading for zero degrees C, the second is 1 degree C, till the last is 125C.
#define ENTRIES_IN_THERMISTOR_TABLE 126
const Uint16 ThermistorLookupTable[ ENTRIES_IN_THERMISTOR_TABLE ] =
{
/*		This version of the table is for no 10K resistor in parallel with the sensor
 		3679, 3659, 3639, 3618, 3597, 3576, 3555, 3533, 3511, 3488,
		3466, 3443, 3420, 3396, 3373, 3350, 3326, 3302, 3278, 3255,
		3231, 3207, 3184, 3160, 3136, 3113, 3090, 3067, 3044, 3021,
		2998, 2976, 2954, 2932, 2911, 2889, 2869, 2848, 2828, 2808,
		2788, 2769, 2750, 2731, 2713, 2696, 2678, 2661, 2644, 2628,
		2612, 2596, 2581, 2566, 2552, 2538, 2524, 2511, 2498, 2485,
		2472, 2460, 2449, 2437, 2426, 2415, 2405, 2394, 2384, 2375,
		2366, 2356, 2348, 2339, 2331, 2323, 2315, 2307, 2300, 2293,
		2285, 2279, 2272, 2266, 2260, 2254, 2248, 2243, 2237, 2232,
		2227, 2222, 2217, 2212, 2208, 2203, 2199, 2195, 2191, 2187,
		2183, 2180, 2176, 2173, 2170, 2166, 2163, 2160, 2157, 2154,
		2152, 2149, 2146, 2144, 2141, 2139, 2136, 2134, 2132, 2130,
		2128, 2126, 2124, 2122, 2120, 2118,
		*/
		//This version of the table accounts for the 10k resistor across the opamp input on ProD
		2971, 2964, 2958, 2951, 2944, 2937, 2930, 2922, 2914, 2907,
		2898, 2890, 2882, 2873, 2864, 2855, 2846, 2837, 2827, 2818,
		2808, 2798, 2788, 2778, 2768, 2757, 2747, 2736, 2726, 2715,
		2704, 2694, 2683, 2672, 2661, 2651, 2640, 2629, 2618, 2607,
		2597, 2586, 2575, 2565, 2554, 2544, 2534, 2523, 2513, 2503,
		2493, 2484, 2474, 2464, 2455, 2446, 2436, 2427, 2419, 2410,
		2401, 2393, 2384, 2376, 2368, 2361, 2353, 2345, 2338, 2331,
		2324, 2317, 2310, 2303, 2297, 2291, 2285, 2279, 2273, 2267,
		2261, 2256, 2250, 2245, 2240, 2235, 2230, 2226, 2221, 2217,
		2212, 2208, 2204, 2200, 2196, 2192, 2188, 2185, 2181, 2178,
		2175, 2171, 2168, 2165, 2162, 2159, 2157, 2154, 2151, 2149,
		2146, 2144, 2141, 2139, 2137, 2135, 2132, 2130, 2128, 2126,
		2124, 2123, 2121, 2119, 2117, 2116,
};

//Port side water twister brake board sensor
#define TEMPERATURE_RAW_READING_FACTOR_PORT			0.9761
//Starboard side water twister brake board sensor
#define TEMPERATURE_RAW_READING_FACTOR_STARBOARD	0.9964

//! Call this routine to read a thermistor on an internal ADC channel.
//! This expects the thermistor to be tied to +12v through a 10K resistor and the junction tied to the ADC.
//! The thermistor transfer function is based on Digikey 615-1086-ND
//! which is US Sensor USP10976. Out of range temperatures have specific values returned.
//! @param Channel Channel number on the internal ADC
//! @param NumberOfSamples Number of samples to average together
//! @return Degrees C, in whole degrees. This is unsigned because we do not return below zero as this is an office environment.
Uint16 ReadThermistorTemperatureC( Uint16 Channel, Uint16 NumberOfSamples )
{
	Uint16	Retval;
	Uint16	ADCValue;
	Uint16	i;
	float32	ADCValueFloating;
	float32	CalibrationConstant;

	//This line might seem to make no sense, but this variable persists between calls and confuses the guy debugging the code
	i=0;

	//Handle different calibration constants on port and starboard, because the ProDs are different
	if( IsStarboardJumperInstalled() == TRUE)
	{
		CalibrationConstant = TEMPERATURE_RAW_READING_FACTOR_STARBOARD;
	}
	else
	{
		CalibrationConstant = TEMPERATURE_RAW_READING_FACTOR_PORT;
	}

	//ReadAnalogChannel( Channel, &ADCValue );
	ADCValue = SampleAndAverageInternalADC(Channel, NumberOfSamples ); //for testing, make sure we have clean data
	//correct for cal errors in sensor, power supply, resistor
	ADCValueFloating	=	(float32) ADCValue;
	ADCValueFloating	*=	CalibrationConstant;
	ADCValueFloating	+=	0.5;
	ADCValue			=	(Uint16) ADCValueFloating;

	//First check if the reading is out of bounds.
	//Is the temperature below zero?
	if( ADCValue >= ThermistorLookupTable[0] )
	{
		Retval = THERMISTOR_BROKEN_WIRE;
	}
	//Is temperature above the max value?
	else if( ADCValue <= ThermistorLookupTable[ ENTRIES_IN_THERMISTOR_TABLE-1 ] )
	{
		Retval = THERMISTOR_SHORTED_WIRE;
	}
	else
	{
		//It's a value we can compute, so do it
		for( i=0; i<ENTRIES_IN_THERMISTOR_TABLE; i++ )
		{
			if( ADCValue >= ThermistorLookupTable[ i ] )
			{
				//When the ADC value gets above the table entry, we've found our temperature.
				//We could get another decimal point by interpolating but for now there's no need.
				break;
			}
		}

		Retval = i;
	}

	return( Retval );
}

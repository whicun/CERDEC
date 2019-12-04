/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/ADCInternal.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */
#ifndef ADCINTERNAL_H
	#define ADCINTERNAL_H

	//! How long do we wait after starting the ADC before proceeding with init.
	//! Was set to 7000 but data sheet (SPRS174T 5/2012 pg 146 td(BGR)) says 10000 (10ms) is max
	#define ADC_INTERNAL_STARTUP_DELAY_US 10000

	//! How long do we wait after configuring ADC before using it.
	//! Comment said 20us but actual max is 1000 (SPRS174T 5/2012 pg 146, td(PWD))
	#define ADC_INTERNAL_POST_CONFIG_DELAY_US 1000

	//! How long do we wait after preparing for cal before starting it
	#define PRE_CALIBRATION_DELAY_US 5000

	//! How long do we wait after a conversion before reading result during calibration.
	#define POST_CONVERSION_DELAY_US 4

	//! Macro to wait for end of conversion on sequence 1.
	//! I can't find documentation for the assembly code, but it's used throughout.
	//! It might be to ensure a pipeline flush to make sure this was executed.
	//! See Errata SPRZ193N page 22 "Result Regsiter Update Delay".
	#define WAIT_FOR_ADC_SEQ1_COMPLETION 			\
		while( (AdcRegs.ADCST.bit.INT_SEQ1==0)) ;	\
		asm(" RPT #11 || NOP")

	// These are the addresses of the ADC ports with cal inputs
	#define TWO_ONE_HALF_VOLT_REF_ADDR_B	12
	#define ZERO_VOLT_REF_ADDR_B			15
	// How many cal samples to average
	#define CAL_SAMPLES 					10000
	#define TWO_FIVE_VOLT_REF				2.5

	// Vref is 3v, so each count is 732.6uV.
	//Cal values: 2.5v=3413    1.6=2275      0.833=1138    0=0
	#define TWO_FIVE_COUNT_REF 	0x0D55	// ideal 12-bit count value of 2.5V = 3413 = 0xd55 counts
	#define ZERO_COUNT_REF		0x0000	// ideal 12-bit count value of 0V = 0 counts

	typedef struct ADCCalData
	{
		float32	offset;
		float32	gain;
	 } stADCCALDATA;

	typedef struct MasterADCCalData
	{
		stADCCALDATA  stADC1;	// current measuring ADC (across burden resistor).
		stADCCALDATA  stADC2;	// Bus Voltage 1 ADC
		stADCCALDATA  stADC3;	// Bus Voltage 2 ADC
		Uint16 FlashTag;
	} stMASTERADCCALDATA;

	typedef struct DynamicADCData
	{
		Uint32 	VoltageCounts;
		float32	ScaledOutputValue;
	} stDynamicADCData;

	typedef struct MasterDynamicADCData
	{
		stDynamicADCData  stDynADC1;
		stDynamicADCData  stDynADC2;
		stDynamicADCData  stDynADC3;
	} stMasterDynamicADCData;

	typedef enum
	{
		ADC1,
		ADC2,
		ADC3,
		NOADC
	} enADCChannel;

	// TEMPORARY: definitions for the ADC calibration parameters; slope and intercept turn [0, 4096] to [-10, 10]
	#define DUMMY_SERIAL_NUMBER 	0
	#define DUMMY_SLOPE				(20.0 / 4096.0)
	#define DUMMY_INTERCEPT			(-10.0)

	// parameters to map the 12-bit ADC reading to the actual voltage applied; declared as part of a larger structure, as an array for each channel
	typedef struct ADCCalParams
	{
		float32 slope;			// the mapping is such that V_actual = slope * 12-bit-ADC_word + intercept
		float32 intercept;
	} ADCCalParams;

	// structure which includes the serial number of the ProD they came from, along with the parameters themselves
	typedef struct ADCCalParamsStruct
	{
		Uint64 dallasSerialNumberForTheseParameters;		// this is hard-coded, to compare with the serial number read from the board at runtime
		ADCCalParams calibrationParameters[16];				// 16 elements for the 16 ADC channels, though the upper 4 channels are not used for general purpose input, and are here only for completeness
	} ADCCalParamsStruct;

	//
	//	Calibration and Offset factors for each of the two channels
	//	reading capacitor voltages...
	//

	//#define CAL1_DATA_GAIN 		0x3D9F00   	// Sector J NVRAM location of cap1 ADC gain
	//#define CAL1_DATA_OFFSET	0x3D9F02	// Sector J NVRAM location of cap1 ADC offset
	//#define CAL2_DATA_GAIN		0x3D9F04	// Sector J NVRAM location of cap2 ADC gain
	//#define CAL2_DATA_OFFSET	0x3D9F06	// Sector J NVRAM location of cap2 ADC offset

	//Error values for thermistor readings
	#define THERMISTOR_SHORTED_WIRE		130
	#define THERMISTOR_BROKEN_WIRE		131

	void InitAdcInternal(void);
	void PowerUpCalibration( PtrFloat32 gain, PtrFloat32 offset );
	void ReadTwoAnalogChannelsSimultaneous( Uint16 Channel, Uint16 *resultA, Uint16 *resultB );
	void ReadTwoAnalogChannelsSequential( Uint16 FirstChannel, Uint16 SecondChannel, Uint16 *resultA, Uint16 *resultB );
	void ReadThreeAnalogChannelsSequential( Uint16 FirstChannel, Uint16 SecondChannel, Uint16 ThirdChannel, Uint16 *resultA, Uint16 *resultB, Uint16 *resultC );
	void ReadAnalogChannel( Uint16 Channel, Uint16 *resultA );
	float32 ReadAnalogVoltage( Uint16 channel, Uint16 uiNumberOfSamples );
	void SampleAndAverageInternalADC_Sim( Uint16 sensorAddr, Uint32 uiNumberOfSamples, Uint16* resultA, Uint16* resultB);
	Uint16 SampleAndAverageInternalADC( Uint16 sensorAddr, Uint16 uiNumberOfSamples );

	void applyPowerUpCalData(Uint16 *counts, stADCCALDATA *calData);	// added by KS 4/11/12
	void ScaleADCReadings(Uint16 *voltageCounts, float *voltageVolts, stADCCALDATA *calAutoData, stADCCALDATA* calChanData);
	void ScaleADCReadingsToBusVoltage(Uint16 *voltageCounts, float *voltageVolts, stADCCALDATA* calChanData);
	Uint16 ReadThermistorTemperatureC( Uint16 Channel, Uint16 NumberOfSamples );

#endif

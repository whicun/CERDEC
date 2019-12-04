/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/ADCExternal.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#ifndef ADCEXTERNAL_H
	#define ADCEXTERNAL_H

	//Are we doing debug printing about force measurement?
	#define DEBUG_PRINT_STRAIN_GAUGE	0

	#define ADCREG_COMM		0x00			// (W)   Communications
	#define ADCREG_IOPORT	0x01			// (R/W) I/O Port
	#define ADCREG_IOPORT_R	0x41
	#define ADCREG_REV		0x42			// (R)   Revision
	#define ADCREG_TEST		0x03			// (R/W) Test DO NOT TOUCH! See data sheet.
	#define ADCREG_TEST_R	0x43
	#define ADCREG_ADCST	0x44			// (R)   ADC Status
	#define ADCREG_CHKSUM	0x05			// (R/W) Checksum
	#define ADCREG_CHKSUM_R	0x45
	#define ADCREG_ZSCAL	0x06			// (R/W) ADC ZS Calibration
	#define ADCREG_ZSCAL_R	0x46
	#define ADCREG_FSCAL	0x07			// (R/W) ADC FS Calibration
	#define ADCREG_FSCAL_R	0x47
	#define ADCREG_DATA		0x48			// (R)   0x08 - 0x0f channel data
	#define ADCREG_CHZS		0x10			// (R/W) 0x10 - 0x17 channel zs
	#define ADCREG_CHZS_R	0x50
	#define ADCREG_CHFS		0x18			// (R/W) 0x18 - 0x1f channel fs
	#define ADCREG_CHFS_R	0x58
	#define ADCREG_CHST		0x60			// (R)   0x20 - 0x27 channel status
	#define ADCREG_CHSET	0x28			// (R/W) 0x28 - 0x2f channel setup
	#define ADCREG_CHSET_R	0x68
	#define ADCREG_CHCTM	0x30			// (R/W) 0x30 - 0x37 channel conversion time
	#define ADCREG_CHCTM_R	0x70
	#define ADCREG_MODE		0x38			// (R/W) 0x38 - 0x3f mode
	#define ADCREG_MODE_R	0x78
	#define CHS_MAX 		1

	//! Did the reading overflow?
	#define AD7738_OVERFLOW_FLAG	1
	//! Is the reference voltage missing?
	#define AD7738_NO_REF_FLAG		4
	//! Is there a new reading available?
	#define AD7738_READY_FLAG		8

	//! Rev code returned by an installed AD7738 ADC
	#define REV_CODE_AD7738			0x21
	//An obviously invalid rev code
	#define REV_CODE_INVALID_VALUE	0xEEEE
	//! Bit that tells if the value is negative
	#define AD7738_NEGATIVE_FLAG	2

	#define EXTERNAL_ADC_OP_AMP_GAIN			80.7L
	#define STRAIN_GAUGE_EXCITATION_VOLTAGE		5
	#define TIME_BETWEEN_STATUS_REQ_US			20
	#define TIME_BETWEEN_STATUS_REQ_US_FAST		1
	#define LOOPS_WAITING_FOR_ADC_READY			50
	#define LOOPS_WAITING_FOR_ADC_READY_FAST	3
	#define EXTERNAL_ADC_SAMPLES_TO_AVERAGE		8

	#define EXTERNAL_ADC0_READY	GpioDataRegs.GPDDAT.bit.GPIOD5
	#define EXTERNAL_ADC1_READY	GpioDataRegs.GPDDAT.bit.GPIOD6

	//! Select device 0, U62
	#define SelectExtADC0()		GpioDataRegs.GPBCLEAR.bit.GPIOB5	= 1
	//! Select device 1, U68
	#define SelectExtADC1()		GpioDataRegs.GPBCLEAR.bit.GPIOB4	= 1

	//! Release device 0, U62
	#define ReleaseExtADC0()	GpioDataRegs.GPBSET.bit.GPIOB5		= 1
	//! Release device 1, U68
	#define ReleaseExtADC1()	GpioDataRegs.GPBSET.bit.GPIOB4		= 1

	//! Assert the SYNC pin to both ADCs
	#define AssertExtADCSync()	GpioDataRegs.GPBCLEAR.bit.GPIOB7	= 1
	//! Release the SYNC pin to both ADCs
	#define ReleaseExtADCSync() GpioDataRegs.GPBSET.bit.GPIOB7		= 1
	#define StopExternalADCs()	AssertExtADCSync()
	#define StartExternalADCs()	ReleaseExtADCSync()

	Uint16 IsAD7738Installed( Uint16 Which );

	void ad7738_init( void );
	void ad7738_StartConversionContinuous( void );
	void ad7738_StartConversionSingle( void );
	void ad7738_StartConversionSingleChannel( u16 Channel );
	void ad7738_zScaleSelfCal( void );
	void ad7738_zScaleSystemCal( void );
	void ad7738_FullScaleSystemCal( void );
	void ad7738_Read_RevByte( void );
	void ad7738_0_Write_Data(Uint16 ADDR, Uint16 DATA);
	void ad7738_1_Write_Data(Uint16 ADDR, Uint16 DATA);
	Uint32 ad7738_0_Read_Data( Uint16 CH );
	Uint32 ad7738_1_Read_Data( Uint16 CH );
	boolean ad7738WaitForReady( Uint16 Channel, PtrU32 ReadingPointer );

	void spi_init( void );
	void spi_fifo_init( void );
	void spi_xmit( Uint16 SendData );
	Uint16 spi_recv( void );

	void InitAdcExternal( void );
	float32 ExternalADCReadStrainGauge( u16 Channel, float32 MilliVoltPerVolt, float32 ChannelGain, u16 MaxPounds, s16 MilliVoltsAtZeroPounds, u16 HowManyAverages, u16 InvertResult );

	typedef struct StrainGaugeInfoStruct
	{
		u16		Channel;
		s16		MilliVoltsAtZeroPounds;
		float32	ConversionFactor;
		boolean	InvertResult;
	} StrainGaugeInfoStruct;

	void FastReadStrainGaugeSetup( u16 Channel, float32 MilliVoltPerVolt, float32 ChannelGain, u16 MaxPounds, s16 MilliVoltsAtZeroPounds, boolean InvertResult, StrainGaugeInfoStruct *StrainGaugeParameters );
	float32 FastReadStrainGaugeMain( StrainGaugeInfoStruct *StrainGaugeParameters );
	boolean Fastad7738WaitForReady( Uint16 Channel, PtrU32 ReadingPointer );


#endif

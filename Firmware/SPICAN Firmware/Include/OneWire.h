/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/OneWire.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file contains the function declarations and port defines for general one-wire interface operation

#ifndef ONEWIRE_H_
#define ONEWIRE_H_


	//! Enumerate one-wire interface line keywords
	typedef enum
	{
		TEMPSENSOR,
		STRAIN1,
		STRAIN2,
		STRAIN3,
		STRAIN4
	} OneWirePort;

	//! Enumerate ROM use/don't-use codes, as ROMCode variable
	typedef enum
	{
		YesROM,
		NoROM
	} ROMCode;

	//! Microsecond delay definitions for one-wire protocol
	#define RESET_HOLD_TIME_US					485
	#define PRESENT_WAIT_TIME_US				68
	#define POST_PRESENT_DELAY_TIME_US			240
	#define RESET_PRESENT_END_DELAY_TIME_US		175
	#define STARTING_RECOVERY_DELAY_TIME_US		2
	#define ENDING_RECOVERY_DELAY_TIME_US		5
	#define WRITE_ZERO_DELAY_TIME_US			70
	#define WRITE_ONE_FIRST_DELAY_TIME_US		10
	#define WRITE_ONE_SECOND_DELAY_TIME_US		55
	#define READSLOT_INITIALIZE_DELAY_TIME_US	2
	#define	DELAY_BEFORE_READ_TIME_US			10
	#define ENDING_READ_DELAY_TIME_US			52

	//! Definitions for Temperature Sensor line
	#define TempAsGPIO()		GpioMuxRegs.GPFMUX.bit.MCLKRA_GPIOF9 = 0
	#define TempAsOut()			GpioMuxRegs.GPFDIR.bit.GPIOF9 = 1
	#define TempAsIn()			GpioMuxRegs.GPFDIR.bit.GPIOF9 = 0
	#define TempLow()			GpioDataRegs.GPFCLEAR.bit.GPIOF9 = 1
	#define TempState()			GpioDataRegs.GPFDAT.bit.GPIOF9

	//! Definitions for Strain Gauge Lines
	#define StrainTxAsGPIO()	GpioMuxRegs.GPBMUX.bit.PWM10_GPIOB3 = 0
	#define Strain1RxAsGPIO()	GpioMuxRegs.GPAMUX.bit.TCLKINA_GPIOA12 = 0
	#define Strain2RxAsGPIO() 	GpioMuxRegs.GPAMUX.bit.C1TRIP_GPIOA13 = 0
	#define Strain3RxAsGPIO()	GpioMuxRegs.GPDMUX.bit.T1CTRIP_PDPA_GPIOD0 = 0
	#define Strain4RxAsGPIO()	GpioMuxRegs.GPDMUX.bit.T2CTRIP_SOCA_GPIOD1 = 0

	#define StrainTxAsOut()		GpioMuxRegs.GPBDIR.bit.GPIOB3 = 1
	#define Strain1RxAsIn()		GpioMuxRegs.GPADIR.bit.GPIOA12 = 0
	#define Strain2RxAsIn()		GpioMuxRegs.GPADIR.bit.GPIOA13 = 0
	#define Strain3RxAsIn()		GpioMuxRegs.GPDDIR.bit.GPIOD0 = 0
	#define Strain4RxAsIn()		GpioMuxRegs.GPDDIR.bit.GPIOD1 = 0

	#define StrainTxLow()		GpioDataRegs.GPBCLEAR.bit.GPIOB3 = 1
	#define StrainTxHigh()		GpioDataRegs.GPBSET.bit.GPIOB3 = 1

	#define Strain1State()		GpioDataRegs.GPADAT.bit.GPIOA12
	#define Strain2State()		GpioDataRegs.GPADAT.bit.GPIOA13
	#define Strain3State()		GpioDataRegs.GPDDAT.bit.GPIOD0
	#define Strain4State() 		GpioDataRegs.GPDDAT.bit.GPIOD1

	//! Enumerate 8-bit ROM command codes
	typedef enum
	{
		SEARCHROMCOMMAND	= 0xF0,
		READROMCOMMAND		= 0x33,
		MATCHROMCOMMAND		= 0x55,
		SKIPROMCOMMAND		= 0xCC,
		ALARMSEARCHCOMMAND	= 0xEC
	} OneWireCommand;

	void InitOneWire( OneWirePort line );
	boolean resetPresent( OneWirePort line );
	void writeZero( OneWirePort line );
	void writeOne( OneWirePort line );
	void wireLow( OneWirePort line );
	void wireRelease( OneWirePort line );
	Uint16 wireState( OneWirePort line );
	void writeCommand( OneWireCommand command, OneWirePort line);
	void writeWord( Uint16 *data, Uint16 length, OneWirePort line );
	Uint16 readBit( OneWirePort line );
	Uint16 readByte( OneWirePort line );
	boolean readROM ( Uint16 *ROM, OneWirePort line );
	void matchROM( Uint16 *ROM, OneWirePort line );
	void skipROM( OneWirePort line );
	boolean alarmSearch( Uint16 *ROM, OneWirePort line );
	void decideROMMethod ( ROMCode mode, Uint16 *ROM, OneWirePort line );
	boolean verifyCRC( Uint16 *buffer, Uint16 bufferBytes, Uint16 howManyBits );
#endif /* ONEWIRE_H_ */

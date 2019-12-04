/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-09-06 15:36:19 -0400 (Wed, 06 Sep 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/Hardware.h $ URL of repository
 *
 * $Rev:: 2065                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#ifndef INCLUDE_HARDWARE_H_
	#define INCLUDE_HARDWARE_H_

	// for a 160MHz CPU clock speed (SYSCLKOUT) - this is established by the crystal being used
	//#define CPU_RATE	6.250L
	#define CPU_RATE    6.667L   // for a 150MHz CPU clock speed (SYSCLKOUT)
	//#define CPU_RATE    7.143L   // for a 140MHz CPU clock speed (SYSCLKOUT)
	//#define CPU_RATE    8.333L   // for a 120MHz CPU clock speed (SYSCLKOUT)
	//#define CPU_RATE   10.000L   // for a 100MHz CPU clock speed (SYSCLKOUT)
	//#define CPU_RATE   13.330L   // for a 75MHz CPU clock speed (SYSCLKOUT)
	//#define CPU_RATE   20.000L   // for a 50MHz CPU clock speed  (SYSCLKOUT)
	//#define CPU_RATE   33.333L   // for a 30MHz CPU clock speed  (SYSCLKOUT)
	//#define CPU_RATE   41.667L   // for a 24MHz CPU clock speed  (SYSCLKOUT)
	//#define CPU_RATE   50.000L   // for a 20MHz CPU clock speed  (SYSCLKOUT)
	//#define CPU_RATE   66.667L   // for a 15MHz CPU clock speed  (SYSCLKOUT)
	//#define CPU_RATE  100.000L   // for a 10MHz CPU clock speed  (SYSCLKOUT)

	//Used for FatalError
	void FatalError( u16 ErrorCode, u16 OtherInfo );
	void XtoA( u32 Value, char16 * Buffer, u16 NoLeadingZeroes );
	u64 ArrayToLongInt( u16 * InputValues );

	#define LED_1_RED		GpioDataRegs.GPADAT.bit.GPIOA14
	#define	LED_1_GREEN		GpioDataRegs.GPADAT.bit.GPIOA15
	#define	LED_2_RED		GpioDataRegs.GPFDAT.bit.GPIOF13
	#define	LED_2_GREEN		GpioDataRegs.GPFDAT.bit.GPIOF14

	//! Defines for hardware on/off state of LED
	typedef enum { LED_HW_ON=0, LED_HW_OFF } LED_HW_CONTROL;

	//! Defines for selecting LED.
	//! D29 is closer to the edge
	typedef enum { D28=0, D29 } WHICH_LED;

	//! Defines for LED states
	typedef enum { LED_OFF=0, LED_RED, LED_GREEN, LED_YELLOW } LED_CONTROLS;

	void SetupProDPinsGeneric( void );
	void SetupInputLatchPins( void );

	//LED handler
	void SetUpLEDs( void );
	void TurnLEDsOff( void );
	void LEDControl( u16 Which, u16 State );

	void TimerSetPrescale( u16 TimerNumber, u16 Prescale );

	void InitAlteraPortImage( void );
	Uint16 GetAlteraPortImage( void );
	#define SSR_1_ON	1
	#define SSR_2_ON	2
	#define SSR_3_ON	4
	#define SSR_4_ON	8
	#define WIRELESS_COMMAND_BIT 4

	void ControlWirelessCommandBit( Uint16 WirelessBit );
	void ControlSSROutputs( Uint16 RelayBits );
	void SSROutputsOn( Uint16 setRelayBits );
	void SSROutputsOff( Uint16 clearRelayBits );

	void WaitForButtonPress( u16 Which );
	boolean IsButtonPressed( u16 Which );
	Uint16 WaitForAnyButtonPress( void );
	void WaitForButtonPressAndRelease( u16 Which );

	void LatchInputRegisters( void );
	void ReadInputLatches( Uint16 *LatchData );
	#define LATCH_CONTROL_64BIT_PORT GpioDataRegs.GPBDAT.bit.GPIOB6

	extern Uint16 Timer2InterruptFlag;
	Uint16 CheckTimer2ISRFlag( void );
	void InitTimer2ISRFlag( void );
	Uint32 ReadTimer0Clean( void );

	Uint16 ReadPushbuttonPort( void );
#endif /* INCLUDE_HARDWARE_H_ */

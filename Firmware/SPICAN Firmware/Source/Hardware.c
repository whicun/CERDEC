/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-11-09 15:09:10 -0500 (Thu, 09 Nov 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/Hardware.c $ URL of repository
 *
 * $Rev:: 2311                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

/** We need an image of the CPLD's output port to keep track of what bits are set.
 * There are several different functions on this port. It contains latching relay set/reset
 * for strain gauge calibration, wireless reset and command bits, and the SSR drive bits.
 */
Uint16 AlteraPortImage;

//! Configure GPIO pins for the ProD board for a safe state until each subsystem sets up its own pins.
void SetupProDPinsGeneric( void )
{
	//Put all the port pins in a safe state, which is how they normally power up
	EALLOW;

	GpioMuxRegs.GPAMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPADIR.all			= 0;    	//all inputs
	GpioMuxRegs.GPAQUAL.all			= 0;		//Input qualifier disabled

	GpioMuxRegs.GPBMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPBDIR.all			= 0;    	//all inputs
	GpioMuxRegs.GPBQUAL.all			= 0;		//Input qualifier disabled

	GpioMuxRegs.GPDMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPDDIR.all			= 0;    	//all inputs
	GpioMuxRegs.GPDQUAL.all			= 0;		//Input qualifier disabled

	GpioMuxRegs.GPEMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPEDIR.all			= 0;    	//all inputs
	GpioMuxRegs.GPEQUAL.all			= 0;		//Input qualifier disabled

	GpioMuxRegs.GPFMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPFDIR.all			= 0;    	//all inputs

	GpioMuxRegs.GPGMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPGDIR.all			= 0;    	//all inputs

	EDIS;
}

//! Set up pins for input latches
void SetupInputLatchPins( void )
{
	//Put all the port pins in a safe state, which is how they normally power up
	EALLOW;

	//Set up the digital input port that latches 64 bits. This is the latch output signal.
	GpioMuxRegs.GPBDIR.bit.GPIOB6	= 1;
	//Put the input latch signal in a known state.
	LatchInputRegisters();

	EDIS;
}

#define DELAY_BETWEEN_PULSES_US		250000
#define DELAY_BETWEEN_DISPLAYS_US	750000
//! Something is so bad that we have to shut down. Flash error code on lights
//! @param ErrorCode Code telling cause of error.
void FatalError( u16 ErrorCode, u16 OtherParameter )
{
	u16 i;
	char16 Buffer[10];

	//Ignore it if the error code is zero, it's probably spurious
	if( ErrorCode != 0 )
	{
		//Print out a crash message at the default baud rate
		InitUARTB(UART_INTERFACE_BAUD_RATE);
		ESTOP0;	//$$$ get an emulator break without tying up a breakpoint

		//SelUARTAInterface(SEL_RS485);
		SendStrUARTB("\r\nProD FATAL ERROR 0x");
		XtoA( ErrorCode, Buffer, TRUE );
		SendStrUARTB( Buffer );
		SendStrUARTB(".\r\n");

		//Now blink out the error code on the LEDs forever
		LEDControl( D28, LED_RED );	//Fatal Error handler
		LEDControl( D29, LED_OFF );	//Fatal Error handler
		while( 1 )
		{
			DELAY_US(DELAY_BETWEEN_DISPLAYS_US);
			for(i = 0; i < ErrorCode; i++ )
			{
				LEDControl( D29, LED_RED );	//Fatal Error handler
				DELAY_US(DELAY_BETWEEN_PULSES_US);
				LEDControl( D29, LED_YELLOW );	//Fatal Error handler
				DELAY_US(DELAY_BETWEEN_PULSES_US);
			}
			LEDControl( D29, LED_RED );	//Fatal Error handler
		}
	}
}

//! Toggle the latch pin for the 64 bit input register
void LatchInputRegisters( void )
{
	LATCH_CONTROL_64BIT_PORT		= 1;
	//At 160MHz, this is 100ns, which is way longer than needed - the spec is 8ns.
	asm(" RPT #16 || NOP");
	LATCH_CONTROL_64BIT_PORT		= 0;
}

//! Read the input latches into caller's array.
//! @param LatchData Pointer to user's 4 word array to hold 64 bits.
void ReadInputLatches( Uint16 *LatchData )
{
	LatchData[0] = DIGITAL_IN1_PORT;
	LatchData[1] = DIGITAL_IN2_PORT;
	LatchData[2] = DIGITAL_IN3_PORT;
	LatchData[3] = DIGITAL_IN4_PORT;
}

//! Init the memory image of what's on the Altera output port.
void InitAlteraPortImage( void )
{
	//Latching relays off, SSR drive off.
	AlteraPortImage = 0;
}

//! Return the current state of the altera port, for use in other scopes
Uint16 GetAlteraPortImage( void )
{
	Uint16 RetVal;
	RetVal = AlteraPortImage;

	return( RetVal );
}

//! Control the SSR output ports.
//! @param RelayBits Lower 4 bits control the 4 relays. A 1 is on, a 0 is off.
//! These are not the bit positions or logic state of the actual relays. Those translations
//! are handled in this function.
void ControlSSROutputs( Uint16 RelayBits )
{
	Uint16 TranslatedBits;

	//Make a copy to work with
	TranslatedBits = RelayBits;
	//Validate the caller's input, just keep the 4 bits we want
	TranslatedBits &= 0xf;
	//Invert the state of the bits to reflect the hardware
	TranslatedBits ^= 0xf;
	//Move the control bits up to the proper position in the control word
	TranslatedBits = TranslatedBits << 4;
	// $$$ should disable interrupts while updating this image
	//Remove the relay bits from the memory image of the port
	AlteraPortImage &= 0x0f;
	//Put the new bits in the memory image
	AlteraPortImage |= TranslatedBits;
	//write it to the port
	SSR_PORT = AlteraPortImage;
}

//! Set specific SSR outputs, leaving others' states unaltered
//! @param setRelayBits		Lower 4 bits of this input map to the 4 relays. A 1 is "on", a 0 is "no change".
//! These are not the bit positions or logic state of the actual relays; the translations are handled
//! by this function. Bit 0 corresponds to relay 1, bit 1 to SSR 2, bit 2 to SSR 3, and bit 3 to SSR 4
void SSROutputsOn( Uint16 setRelayBits )
{
	Uint16 i;
	Uint16 ssrBitToTurnOn;

	setRelayBits &= 0x0F;							// clear all but the 4 lowest bits we will be using

	for (i = 0; i < 4; i++)							// and iterate over those 4 lower bits
	{
		if (setRelayBits & (0x0001 << i))			// if the ith bit is 1
		{
			ssrBitToTurnOn = 0x0001 << (i + 4); 	// only then do we turn on the (i+4)th bit of the SSR port

			DINT;									// disable interrupts while updating memory image
			AlteraPortImage &= ~ssrBitToTurnOn;		// by clearing only the current bit, if appropriate - clearing an SSR bit turns the SSR on!!
			EINT;									// and reenable interrupts
		}
	}

	SSR_PORT = AlteraPortImage;						// once all 4 input bits have been checked, write the memory image to the port
}

//! Clear specific SSR outputs, leaving others' states unaltered
//! @param clearRelayBits	Lower 4 bits of this input map to the 4 relays. A 1 is "off", a 0 is "no change".
//! These are not the bit positions or logic state of the actual relays; the translations are handled
//! by this function. Bit 0 corresponds to relay 1, bit 1 to SSR 2, bit 2 to SSR 3, and bit 3 to SSR 4
void SSROutputsOff( Uint16 clearRelayBits )
{
	Uint16 i;
	Uint16 ssrBitToTurnOff;

	clearRelayBits &= 0x0F;							// clear all but the 4 lowest bits we will be using

	for (i = 0; i < 4; i ++)						// and iterate over those 4 lower bits
	{
		if (clearRelayBits & (0x0001 << i))			// if the ith bit is 1
		{
			ssrBitToTurnOff = 0x0001 << (i + 4);	// only then do we turn off the (i+4)th bit of the SSR port

			DINT;									// disable interrupts while updating memory image
			AlteraPortImage |= ssrBitToTurnOff;		// by setting only the current bit, if appropriate - setting an SSR bit turns the SSR off!!
			EINT;									// and reenable interrupts
		}
	}

	SSR_PORT = AlteraPortImage;						// once all 4 input bits have been checked, write the memory image to the port
}

//! Control the "Wireless Command" bit.
//! It is intended to indicate a command message to an attached radio, but is a handy debug pin for toggling.
void ControlWirelessCommandBit( Uint16 WirelessBit )
{
	//Remove the current state of the wireless command bit from the port image
	AlteraPortImage &= ~WIRELESS_COMMAND_BIT;

	//If the caller wants to set the bit, do it now
	if( WirelessBit == 1 )
	{
		AlteraPortImage |= WIRELESS_COMMAND_BIT;
	}

	//Put the updated image on the output port
	SSR_PORT = AlteraPortImage;
}

/* Using TI timer code for Timer0, Timer1, Timer2

TI supplies code to run the timers. They use a data structure that points to the timer and
includes info on how to load the timer.

You load the counters and they COUNT DOWN from the initial value, so make sure it's high enough!
This sets up timer 0 on a CPU with 150MHz clock to have 1 second timer reload (1 million microseconds)
	ConfigCpuTimer( &CpuTimer0, 150.0L, 1000000L);
Start Timer:
StartCpuTimer0();

Stop Timer:
StopCpuTimer0();

Reload Timer With period Value:
ReloadCpuTimer0();

Read 32-Bit Timer Value:
ReadCpuTimer0Counter();

Read 32-Bit Period Value:
ReadCpuTimer0Period();

 */

//! @brief Set the prescaler for a specified CPU timer. Base clock is 150MHz, so prescale of 150 give 1us per LSB count.
//! @param TimerNumber Selects which CPU timer is addressed. Valid values are 0, 1, 2.
//! @param Prescale Desired prescale factor. For a divide by 150, use 150. For no prescale, use 1.
void TimerSetPrescale( u16 TimerNumber, u16 Prescale )
{
	u16 Upper;
	u16 Lower;

	if( TimerNumber <= 2)
	{
		if( Prescale != 0)
		{
			Prescale--;
		}
		Upper = Prescale >> 8;
		Lower = Prescale & 0xff;

		switch( TimerNumber )
		{
			case 0:
			    // Initialize pre-scale counter per caller's request
			    CpuTimer0Regs.TPR.all  = Lower;
			    CpuTimer0Regs.TPRH.all = Upper;
				break;

			case 1:
			    // Initialize pre-scale counter per caller's request
			    CpuTimer1Regs.TPR.all  = Lower;
			    CpuTimer1Regs.TPRH.all = Upper;
				break;

			case 2:
			    // Initialize pre-scale counter per caller's request
			    CpuTimer2Regs.TPR.all  = Lower;
			    CpuTimer2Regs.TPRH.all = Upper;
				break;

			default:
				break;
		}
	}

}

//! Read Timer0, the logging timebase, in a way that guarantees that the bits were not changing while read.
//! @return Current time in microseconds.
Uint32 ReadTimer0Clean( void )
{
	Uint32			ThisReading1, ThisReading2;	//two readings to compare
	Uint16			Status;						//is the reading good?
	static Uint16	Errors = 0;					//how many times did we have to retry?

	Status = FALSE;

	//Keep trying till two readings in a row are the same
	while( Status == FALSE )
	{
		DINT;
		ThisReading1 = ReadCpuTimer0Counter();
		asm(" NOP ");	//delay 6ns
		ThisReading2 = ReadCpuTimer0Counter();
		EINT;
		//Now see if they are the same
		if( (ThisReading1 - ThisReading2) < 2 )
		{
			Status = TRUE;
		}
		else
		{
			Errors++;	//keep track of how often we have to retry
		}
	}
	return( ThisReading1 );
}

Uint16 Timer2InterruptFlag;
void InitTimer2ISRFlag( void )
{
	Timer2InterruptFlag = FALSE;
}
Uint16 CheckTimer2ISRFlag( void )
{
	Uint16 Retcode;

	if( Timer2InterruptFlag == TRUE )
	{
		Retcode = TRUE;
		Timer2InterruptFlag = FALSE;
	}
	else
	{
		Retcode = FALSE;
	}
	return( Retcode );
}

//! Configure the hardware for the LEDs.

//! This routine sets up the GPIO bits needed to make the red and green LED bits as outputs.
//! It handles locking and unlocking access to the control bits.
//! Note that peripheral locking is not nested, there is only one bit and two states.
void SetUpLEDs( void )
{
	EALLOW;	//enable access to hardware config

	//Set LED pins to direct digital control
	GpioMuxRegs.GPAMUX.bit.C2TRIP_GPIOA14	= 0;	//red 1
	GpioMuxRegs.GPAMUX.bit.C3TRIP_GPIOA15	= 0;	//green 1
	GpioMuxRegs.GPFMUX.bit.MDRA_GPIOF13		= 0;	//red 2
	GpioMuxRegs.GPFMUX.bit.XF_GPIOF14		= 0;	//green 2

	//Set the LED direction bits to output
	GpioMuxRegs.GPADIR.bit.GPIOA14=1;
	GpioMuxRegs.GPADIR.bit.GPIOA15=1;

	GpioMuxRegs.GPFDIR.bit.GPIOF13=1;
	GpioMuxRegs.GPFDIR.bit.GPIOF14=1;

	TurnLEDsOff();

	EDIS; //shut off access to hardware config registers
}

//! Turn off both LEDs.

//! Assumes that the GPIO bits have already been set up.
//! Handles hardware lock and unlock of the GPIO bits.
void TurnLEDsOff( void )
{
	EALLOW;	//enable access to hardware config

	//Turn off the LEDs
	LED_1_RED	= LED_HW_OFF;
	LED_1_GREEN	= LED_HW_OFF;
	LED_2_RED	= LED_HW_OFF;
	LED_2_GREEN	= LED_HW_OFF;

	EDIS;
}

//! Control both LEDs.

//! Control the color and on/off state of the two LEDs on the ProD board.
//! @param	Which Selects which LED to control. There is a define for
//! 		the LED refdes (currently D28 and D29) in Hardware.h . D29 is closer to
//! 		the edge of the board.
//! @param State Chooses the state of the LED to be off, or one of 3 possible colors.
//! 		Choices are LED_OFF, LED_RED, LED_GREEN, or LED_YELLOW.
void LEDControl( u16 Which, u16 State )
{
	EALLOW;
	if( Which == D28 )
	{
		switch( State )
		{
			case LED_OFF:
				//red off, green off
				LED_1_RED	= LED_HW_OFF;
				LED_1_GREEN	= LED_HW_OFF;
				break;

			case LED_RED:
				//red on, green off
				LED_1_RED	= LED_HW_ON;
				LED_1_GREEN	= LED_HW_OFF;
				break;

			case LED_GREEN:
				//red off, green on
				LED_1_RED	= LED_HW_OFF;
				LED_1_GREEN	= LED_HW_ON;
				break;

			case LED_YELLOW:
				//red on, green on
				LED_1_RED	= LED_HW_ON;
				LED_1_GREEN	= LED_HW_ON;
				break;

			//invalid entry turns it off
			default:
				//red off, green off
				LED_1_RED	= LED_HW_OFF;
				LED_1_GREEN	= LED_HW_OFF;
				break;
		}
	}
	else
	{
		switch( State )
		{
			case LED_OFF:
				//red off, green off
				LED_2_RED	= LED_HW_OFF;
				LED_2_GREEN	= LED_HW_OFF;
				break;

			case LED_RED:
				//red on, green off
				LED_2_RED	= LED_HW_ON;
				LED_2_GREEN	= LED_HW_OFF;
				break;

			case LED_GREEN:
				//red off, green on
				LED_2_RED	= LED_HW_OFF;
				LED_2_GREEN	= LED_HW_ON;
				break;

			case LED_YELLOW:
				//red on, green on
				LED_2_RED	= LED_HW_ON;
				LED_2_GREEN	= LED_HW_ON;
				break;

			//invalid entry turns it off
			default:
				//red off, green off
				LED_2_RED	= LED_HW_OFF;
				LED_2_GREEN	= LED_HW_OFF;
				break;
		}

	}
	EDIS;
}

//! Read a builtin switch and return its logical state.
//!
//! No debouncing is done.
//! @param Which	Selects which switch to read. There are definitions for the switch refdes in Hardware.h.
//! 				Current choices are SW2 and SW3. SW2 is closer to the Ethernet connector.
//! @retval TRUE	The switch is pressed.
//! @retval FALSE	The switch is not pressed.
boolean IsButtonPressed( u16 Which )
{
	u16		HoldPort;
	boolean	Retcode;

	//Only check the relevant 2 bits
	if( (Which == SW2) || (Which == SW3) )
	{
		//buffer the value for ease of debug
		HoldPort = PUSHBUTTON_PORT;
		if( (HoldPort & Which) == PRESSED )
		{
			Retcode = TRUE;
		}
		else
		{
			Retcode = FALSE;
		}
	}
	else
	{
		Retcode = FALSE;
	}
	return( Retcode );
}

//! Wait for button press.
//!
//! Will wait forever for a switch to be pressed. No debouncing is done.
//! If an invalid switch code is selected, the code returns immediately.
//! @param Which	Selects which switch to read. There are definitions for the switch refdes in Hardware.h.
//! 				Current choices are SW2 and SW3. SW2 is closer to the Ethernet connector.
void WaitForButtonPress( u16 Which )
{
	//Only check the relevant 2 bits
	if( (Which == SW2) || (Which == SW3) )
	{
		//Wait forever for a button press
		while( IsButtonPressed( Which ) == FALSE )
		{
			//just kill time till button is pressed
		}
	}
	else
	{
		//user selected an invalid switch code, return immediately
	}
}

//! Wait for a specified button to be pressed, released, and wait for a short delay to happen.
//! If an invalid switch code is selected, the code returns immediately.
//! @param Which	Selects which switch to read. There are definitions for the switch refdes in Hardware.h.
//! 				Current choices are SW2 and SW3. SW2 is closer to the Ethernet connector.
void WaitForButtonPressAndRelease( u16 Which )
{
	if( (Which == SW2) || (Which == SW3) )
	{
		WaitForButtonPress( Which );
		//Wait till user releases switch
		while(IsButtonPressed( Which ) == TRUE ) ;
		//Wait a little so we know it's off
		DELAY_US( DEBOUNCE_DELAY_US );
	}
}

//! Wait for either switch 2 or 3 to be pressed

//! This will wait forever until either switch is pressed, and then return the code for which switch was pressed.
//! @retval	SW2(0x10)	SW2 was pressed during this routine
//! @retval SW3(0x20)	SW3 was pressed during this routine
Uint16 WaitForAnyButtonPress( void )
{
	Uint16 Retcode;																// the code, to be returned, indicating which switch was pressed

	while((IsButtonPressed(SW2) == FALSE) && (IsButtonPressed(SW3) == FALSE)) ;	// wait until either button is pressed
	if(IsButtonPressed(SW2) == TRUE)											// and if it's switch 2
	{
		Retcode = SW2;															// return SW2
	}
	else																		// otherwise it's switch 3
	{
		Retcode = SW3;															// so return SW3
	}

	return( Retcode );
}

/** @brief Convert long number to hex string
 *
 * Convert a 32 bit value into a hex string. Leading zero suppression is available as an option.
 * @param Value Incoming 32 bit value to convert to a hex string.
 * @param Buffer Output buffer where string is put.
 * @param NoLeadingZeroes If TRUE, leading zeroes are suppressed. If the value being converted is zero and
 * leading zero suppression is enabled, one zero will be generated as output.
 *
 */
void XtoA( u32 Value, char16 * Buffer, u16 NoLeadingZeroes )
{
	u32 ThisDigit;
	u16 FoundNonZeroDigit;
	u16 Loops;

	Loops = 0;
	FoundNonZeroDigit = FALSE;

	//Use a do-while to make sure we go through at least once
	do
	{
		Loops++;
		//Grab the next digit
		ThisDigit = Value >> (32 - (Loops*4) );
		ThisDigit &= 0xf;

		if( ThisDigit != 0 )
		{
			FoundNonZeroDigit = TRUE;
		}

		//Handle hex conversion and putting in buffer
		if( ThisDigit < 10 )
		{
			if( NoLeadingZeroes == TRUE && ThisDigit == 0 && FoundNonZeroDigit == FALSE )
			{
				//Do nothing, because we're supressing leading zeroes
			}
			else
			{
				//Handle 0-9
				*Buffer++ = ThisDigit + '0';
			}
		}
		else
		{
			//Handle A-F
			*Buffer++ = ThisDigit + 'A' - 1;
		}
	} while( Loops < 8 );	//stop after last digit

	//If the value was zero, and I did leading zero suppression, nothing will come out, so fix that here
	if( Value == 0 && NoLeadingZeroes == TRUE )
	{
		*Buffer++ = '0';
	}

	//Terminate the string
	*Buffer++ = NULL;
}

//! Turn an array of 8 bytes into a 64 bit value. Intended for turning Dallas ROM arrays into a serial number for identifying strain gauges.
//! @param InputValues An array of 8 bytes
//! @retval A 64 bit quantity containing the values.
u64 ArrayToLongInt( u16 * InputValues )
{
	u64 Retcode;
	u16 i;

	Retcode = 0;
	for( i=0; i < 8; i++ )
	{
		Retcode <<= 8;
		Retcode += ( InputValues[ i ] & 0xFF );
	}

	return( Retcode );
}

//! Read the pushbutton port. It has RC switch debouncing.
//! The upper 8 bits are undefined (floating bus) so mask them off.
Uint16 ReadPushbuttonPort( void )
{
       u16 Value;

       Value = SWITCHES_J26_PORT & SWITCHES_J26_MASK;

       return( Value );
}

//! Set up the system status structure at powerup or after a reset
void SystemInitStatus( void )
{
	Uint8 i;

	//clear out system status info
	SystemStatus.BoardStatus.TestMode		= FALSE;
	SystemStatus.BoardStatus.Reset			= TRUE;	//say that we were reset
	SystemStatus.BoardStatus.BoardFault		= 0;
	SystemStatus.BoardStatus.Busy			= FALSE;

	//clear out info
	for( i=0; i<FEATURES_PER_BOARD; i++ )
	{
		SystemStatus.FeatureStatus[ i ].Status			= FeatureStatusIdle;
		SystemStatus.FeatureStatus[ i ].FeatureFault	= FALSE;
		SystemStatus.FeatureStatus[ i ].LastTransaction	= 0;
	}

	//diagnostic values
	SystemStatus.BoardTemperatureF			= 0;
}

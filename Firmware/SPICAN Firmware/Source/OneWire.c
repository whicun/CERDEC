/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/OneWire.c $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

//! @file
//! This file contains the code that supports communication over the 1-wire interface out of the DSP,
//! which is used to interface with the external temperature sensor and the strain guages. In all cases, the delays used are slightly
//! longer than required, as a buffer unpredictable behavior (so I will give them in comments as ">X us" or "<X us",
//! where X us is the required minimum or maximum delay).
//! In order to operate any one-wire devices, the user must minimally call InitOneWire() with the appropriate enumerated OneWirePort
//! line variable, send a resetPresent() pulse, and whatever other command (i.e. readROM()). In all cases, if the OneWirePort line input
//! to a function is not of the enumerated type (TEMPSENSOR, STRAIN1, STRAIN2, STRAIN3, STRAIN4) the routines simply do not execute.

//! Specify the functions which need to be stored in RAM, because they are very timing specific
#pragma CODE_SECTION(resetPresent, "ramfuncs");
#pragma CODE_SECTION(writeZero, "ramfuncs");
#pragma CODE_SECTION(writeOne, "ramfuncs");
#pragma CODE_SECTION(wireState, "ramfuncs");
#pragma CODE_SECTION(writeCommand, "ramfuncs");
#pragma CODE_SECTION(writeWord, "ramfuncs");
#pragma CODE_SECTION(readBit, "ramfuncs");
#pragma CODE_SECTION(readByte, "ramfuncs");

//! Initialize the 1-wire interface on the selected line

//! This adjusts the appropriate GPIO registers in order to set up the 1-wire interface. It first makes sure that the I/O pin is not
//! going to force the channel low upon activation; then, it clears the appropriate MUX bit to select for GPIO, and again ensures that the
//! I/O pin is a passive input
//! @param line		An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void InitOneWire( OneWirePort line )
{
	wireRelease(line);			// make sure the I/O pin is a passive input, so it doesn't force the line low upon activation
	EALLOW;
	switch(line)				// MUX the given line as a standard GPIO
	{
		case TEMPSENSOR:
			TempAsGPIO();
			break;

		case STRAIN1:
			StrainTxAsGPIO();
			StrainTxAsOut();
			Strain1RxAsGPIO();
			Strain1RxAsIn();
			break;

		case STRAIN2:
			StrainTxAsGPIO();
			StrainTxAsOut();
			Strain2RxAsGPIO();
			Strain2RxAsIn();
			break;

		case STRAIN3:
			StrainTxAsGPIO();
			StrainTxAsOut();
			Strain3RxAsGPIO();
			Strain3RxAsIn();
			break;

		case STRAIN4:
			StrainTxAsGPIO();
			StrainTxAsOut();
			Strain4RxAsGPIO();
			Strain4RxAsIn();
			break;

		default:
			break;

	}
	EDIS;
	wireRelease(line);			// again, make it a passive input

	resetPresent(line);			// reset the 1-wire interface just to be in a reset state for beginning operation
}

//! Initialize interaction with the slave device on the selected line

//! This routine must be done at the start of every instance of communication between the DSP and slave device. It is a reset-pulse-present-pulse routine, where
//! a "reset pulse" - the line is held low for at least 480us - is sent by the master, and then (after a short delay) it tests for a low "present pulse" from
//! the slave, and a passive high state after the termination of the presence pulse
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @retval TRUE	A presence pulse was detected, indicating that the slave device is active on the specified line
//! @retval FALSE	A presence pulse was not detected
boolean resetPresent( OneWirePort line )
{
	Uint16 response = 1;						// this will be assigned the state of the line at the time that the slave device should be responding with a presence pulse, as well as after the pulse should cease
	boolean Retcode = FALSE;					// indicates whether a slave device is active on the line

	wireLow(line);								// hold the line low for >480us (a small buffer is added here)
	DELAY_US(RESET_HOLD_TIME_US);

	wireRelease(line);							// release the wire by setting the GPIO as a passive input, and delay >60us, slave's maximum waiting time
	DELAY_US(PRESENT_WAIT_TIME_US);				// right in the middle of the minimum response pulse between 60 and 75 us after rising edge of reset

	response = wireState(line);

	if (response == 1)							// if the line is not being held low at this point...
	{
		Retcode = FALSE;						// there is no slave device connected
	}
	else										// otherwise,
	{
		DELAY_US(POST_PRESENT_DELAY_TIME_US);	// delay 240us until the presence pulse has definitely stopped,
		response = wireState(line);				// and test the line again

		if (response == 0)						// if the line is still low (indicating some issue, backwards installation, etc)
		{
			Retcode = FALSE;					// the presence check fails
		}
		else									// but if the line is now high, indicating that a device actively held it low and is now awaiting input
		{
			Retcode = TRUE;						// then a slave device is present!
		}
	}

	DELAY_US(RESET_PRESENT_END_DELAY_TIME_US);	// and delay another >175us (for a total of >415us) to allow the slave device to reset
	return( Retcode );
}

//! Write a zero bit to the selected line

//! This is the specific routine required to transmit a 0-bit along the 1-wire interface; there is an initial "recovery" delay of >1us,
//! then the wire is held low for >60us and released, and another recovery delay of >1us
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void writeZero( OneWirePort line )
{
	DELAY_US(STARTING_RECOVERY_DELAY_TIME_US);	// initial recovery delay
	wireLow(line);								// switch to active output, and hold the wire in a low state
	DELAY_US(WRITE_ZERO_DELAY_TIME_US);			// delay for the specified time to signal to the slave device
	wireRelease(line);							// switch to passive input, allowing the pullup resistor to hold the line high
	DELAY_US(ENDING_RECOVERY_DELAY_TIME_US);	// final recovery delay
}

//! Write a one bit to the selected line

//! This is the specific routine required to transmit a 1-bit along the 1-wire interface; there is an initial recovery delay of >1us,
//! then the wire is held low for >1us but <15us, then release the wire and wait the remainder of 60us for the slave device to read the bit
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void writeOne( OneWirePort line )
{
	DELAY_US(STARTING_RECOVERY_DELAY_TIME_US);	// initial recovery delay
	wireLow(line);								// switch to active output, and hold the wire in a low state
	DELAY_US(WRITE_ONE_FIRST_DELAY_TIME_US);	// for 1us<t<15us, so I chose a mid-range value
	wireRelease(line);							// switch to passive input, so Rpullup holds the line high
	DELAY_US(WRITE_ONE_SECOND_DELAY_TIME_US);	// delay for minimum 60us total
}

//! Actively hold the the selected line low

//! This adjusts the direction of the GPIO port to output and sets the normally-high (resistor pulled-up) wire to a low state
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void wireLow( OneWirePort line )
{
	EALLOW;
	switch(line)			// select the given line as an output
	{						// and clear the port so it outputs a low state
		case TEMPSENSOR:
			TempAsOut();
			TempLow();
			break;
		case STRAIN1:
			StrainTxLow();
			break;
		case STRAIN2:
			StrainTxLow();
			break;
		case STRAIN3:
			StrainTxLow();
			break;
		case STRAIN4:
			StrainTxLow();
			break;
		default:
			break;
	}
	EDIS;
}

//! Release the selected line from master control

//! This adjusts the direction of the GPIO port to input, so the line can be either normally-high (as per the pullup resistor)
//! or otherwise held low by the slave device
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void wireRelease( OneWirePort line )
{
	EALLOW;
	switch(line)			// select the given line as an input
	{
		case TEMPSENSOR:
			TempAsIn();
			break;
		case STRAIN1:
			StrainTxHigh();
			break;
		case STRAIN2:
			StrainTxHigh();
			break;
		case STRAIN3:
			StrainTxHigh();
			break;
		case STRAIN4:
			StrainTxHigh();
			break;
		default:
			break;
	}
	EDIS;
}

//! Test the state of the selected line

//! This routine ensures that the DSP is taking input from the wire port, and returns the state of the wire as the LSB of a Uint16
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @retval 1		The wire is being pulled up high
//! @retval 0		The wire is being held low by some device on it
Uint16 wireState( OneWirePort line )
{
	Uint16 state = 0;				// the return variable, which stores the state of the selected wire

	wireRelease(line);				// ensure that the master port to the wire is an input

	switch(line)					// store the current high/low state of the line as the LSB of "state"
	{
		case TEMPSENSOR:
			state = TempState();
			break;
		case STRAIN1:
			state = Strain1State();
			break;
		case STRAIN2:
			state = Strain2State();
			break;
		case STRAIN3:
			state = Strain3State();
			break;
		case STRAIN4:
			state = Strain4State();
			break;
		default:
			break;
	}
	return( state );				// return the state variable
}

//! Write a command to the selected line

//! This routine takes in a command code, clears the unused bits, and transmits it starting with the LSB over the one-wire interface,
//! using the more generic writeWord routine
//! @param command		A 16-bit enumerated argument, where the 8 LSBs are the 8-bit command issued by the DSP (master device)
//! @param line 		An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void writeCommand( OneWireCommand command, OneWirePort line )
{
	Uint16 commandWord;					// stores the casted command input

	commandWord = (Uint16)command;		// cast the special typedef to a Uint16
	commandWord &= 0x00FF;				// and clear all but the 8 LSBs of the command code

	writeWord( &commandWord, 1, line);	// send the command as data on the selected line
}

//! Write a data "word" array of variable length to the selected line

//! This routine takes in and transmits an array of data over the selected line, starting with the LSB of the 0th element, and ending with
//! the MSB of the prescribed length of valid data bits. It only looks at the 8 LSBs of each element because they are inherently Uint16s
//! on this device, but 8-bit bytes are the standard in this communication protocol.
//! @param data 		The data to be transmitted, stored as the 8 LSBs in an array of Uint16s
//! @param length		The number of elements in the array that must be transmitted
//! @param line			An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void writeWord( Uint16 *data, Uint16 length, OneWirePort line )
{
	Uint16 elementIndex = 0;										// counting variable, for cycling through the elements of the array
	Uint16 bitIndex = 0;											// counting variable, for cycling through the bits of the particular element

	for (elementIndex = 0; elementIndex < length; elementIndex++)	// cycle through the elements of the array, starting with the 0th
	{
		for (bitIndex = 0; bitIndex < 8; bitIndex++)				// and cycle through the 8 relevant bits in each element
		{
			if (*(data + elementIndex) & (0x0001 << bitIndex))		// if what's stored at this bit of this element of *data is a 1...
			{
				writeOne(line);										// write a 1 to the line;
			}
			else
			{
				writeZero(line);									// otherwise write a 0
			}
		}
	}
}

//! Read a single bit from the selected line

//! This routine signals to the slave device to transmit a single bit, by forcing the line low for a short time to issue a read timeslot,
//! then releasing the wire, delaying, and reading the wire state at the appropriate time to see the output from the slave device
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @retval 1		A 1 bit was read on the line
//! @retval 0		A 0 bit was read on the line
Uint16 readBit( OneWirePort line )
{
	Uint16 thisBit = 0;								// the return variable, and value of the slave device's data bit

	DELAY_US(STARTING_RECOVERY_DELAY_TIME_US);		// initial recovery delay
	wireLow(line);									// hold the wire low
	DELAY_US(READSLOT_INITIALIZE_DELAY_TIME_US);	// for a short time (>1us)
	wireRelease(line);								// then allow it to go high, signaling a read timeslot
	DELAY_US(DELAY_BEFORE_READ_TIME_US);			// and after another recovery delay, but before the end of the critical 15us period following the falling edge
	thisBit = wireState(line);						// read the wire state as transmitted by the slave
	thisBit &= 0x1;									// clear all but the single LSB, just to be sure
	DELAY_US(ENDING_READ_DELAY_TIME_US);			// and delay up to a total of >60us (with a buffer, of course) to finish the timeslot
	return( thisBit );								// finally, returning the read bit as the LSB of a Uint16
}

//! Read a full 8-bits from the selected line, and return them as a byte

//! This routine calls readBit() 8 times, storing the 8 retreived bits in order (from LSB to MSB) into the lowest 8 bits of a Uint16, which
//! is then returned.
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @return 		The bottom 8 bits (#7-0) of the Uint16 are the 8-bit byte read on the line
Uint16 readByte( OneWirePort line )
{
	Uint16 thisByte = 0;							// an accumulator, holds the byte as it's being filled, and is returned
	Uint16 newBit = 0;								// the bit retreived from the readBit() function
	Uint16 bitIndex = 0;							// a counting and shifting variable

	for (bitIndex = 0; bitIndex < 8; bitIndex++)	// for each of 8 bits in the byte...
	{
		newBit = readBit(line);						// retreive the bit on the selected line, as the LSB of an otherwise cleared Uint16,
		thisByte += newBit << bitIndex;				// shift it to the correct position, and add it into the accumulator
	}

	return( thisByte );
}

//! Issue a Read ROM command and return a CRC

//! This routine is to be used only when there is a single slave device on the line. It issues a Read ROM command code,
//! and then issues a series of 64 (8 bytes * 8 bits) readBit function calls to read the 64-bit ROM value stored in the device,
//! filling the ROM array that is passed in. It returns a boolean, indicating that the ROM passed a CRC check. This function is
//! to be followed by a device-specific command.
//! @param *ROM		The length-element array (of Uint16s) which contains the retreived ROM code, broken up into 8, 8-bit bytes
//!					and stored sequentially in the 8 LSBs of each element, with the lowest byte of the ROM in the 0th element
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @retval TRUE	Read ROM data passed cyclic redundancy check (CRC)
//! @retval FALSE	ROM data didn't pass the CRC
boolean readROM ( Uint16 *ROM, OneWirePort line )
{
	Uint16 elementIndex = 0;									// counting variable to define the current byte being read/stored
	Uint16 thisByte = 0;										// stores the output of readByte, before being copied into the ROM array element
	boolean Retcode = FALSE;									// did the ROM pass the cyclic redundancy check?

	writeCommand(READROMCOMMAND, line);							// write the actual Read ROM command to the selected line

	for (elementIndex = 0; elementIndex < 8; elementIndex++)	// over each element of the array
	{
		thisByte = readByte(line);								// get each byte, stored in the 8 LSBs
		*(ROM + elementIndex) = thisByte;						// and shift them into the appropriate ROM element
	}

	Retcode = verifyCRC(ROM, 8, 8);								// verify the CRC and return this assessment

	return( Retcode );
}

//! Issue a Match ROM command

//! This routine is used to address a specific device, on either a single- or multi-device line. It issues a Match ROM command code, and then sends
//! the 64-bit ROM value over the specified line. This is to be followed by a device-specific command.
//! @param *ROM		The 8-bit array (of Uint16s) which contains the relevant ROM code, broken up into 8, 8-bit bytes
//!					and stored sequentially in the 8 LSBs of each element, with the lowest byte of the ROM in the 0th element
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void matchROM( Uint16 *ROM, OneWirePort line )
{
	writeCommand(MATCHROMCOMMAND, line);	// write the actual Match ROM command to the line
	writeWord(ROM, 8, line);				// and follow it with the ROM address of the desired slave device
}

//! Issue a Skip ROM command

//! This routine is to be used only when there is a single slave device on the line (and therefore no address
//! is needed) or when a command does not require that data be transmitted by the slave device(s), such as
//! to take a temperature reading and store it internally. It simply alerts the device that a device-specific command
//! (i.e. a temperature reading) will be issued without the master first addressing the slave device. This is to be followed
//! by a device-specific command.
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void skipROM( OneWirePort line )
{
	writeCommand(SKIPROMCOMMAND, line);
}

//! Perform an Alarm Search on the given line

//! This function issues an Alarm Search command on the given line; it then monitors the line for a specific sequence of
//! bits that, if present, indicate an alarm flag and are mapped to a device's ROM code, and mirrors them back. If there
//! is an alarm flag set, the routine stores the appropriate ROM in the given pointer, and outputs a TRUE value
//! @param *ROM		The 8-bit array (of Uint16s) in which the ROM code of the alarming device (if any) is stored, broken
//!					up into 8, 8-bit bytes and stored sequentially in the 8 LSBs of each element, with the lowest byte of
//!					the ROM in the 0th element
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @retval TRUE	There is an alarm flag set on the line
//! @retval FALSE	There is no alarm flag set on the line
boolean alarmSearch( Uint16 *ROM, OneWirePort line )
{
	Uint16 ROMindex = 0;										// index into the generated ROM code, based on slave device transmission
	Uint16 byteIndex = 0;										// particular element within the ROM code...
	Uint16 bitIndex = 0;										// ...and particular bit within the element
	Uint16 thisBit = 0;											// the value of the bit received by the slave device
	Uint16 thisBitInverted = 0;									// and the value of the checkbit received by the slave device (which should be inverse of thisBit if the slave is actually transmitting)
	boolean Retcode = FALSE;									// is there an alarm flag set?

	writeCommand(ALARMSEARCHCOMMAND, line);						// write the command (0xEC) to initiate an alarm search on the line.

	for (ROMindex = 0; ROMindex < 64; ROMindex++)				// cycle through all bits in the possible ROM
	{
		byteIndex = ROMindex / 8;
		bitIndex = ROMindex % 8;

		if (!(bitIndex))
		{
			*(ROM + byteIndex) = 0x0000;
		}

		thisBit = readBit(line);
		thisBitInverted = readBit(line);

		if (thisBit == thisBitInverted)
		{
			Retcode = FALSE;
			break;
		}
		else
		{
			Retcode = TRUE;

			if (thisBit)
			{
				writeOne(line);
				*(ROM + byteIndex) |= thisBit << bitIndex;
			}
			else
			{
				writeZero(line);
				*(ROM + byteIndex) &= ~(thisBit << bitIndex);
			}
		}
	}
	return( Retcode );
}



//! Decide which ROM addressing method to do and do it

//! This function decides whether to issue a specific ROM addressing over the line, or otherwise to issue a Skip ROM command. It
//! is functionality that is required by a lot of specific device functions, based on how many devices exist on the line.
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void decideROMMethod ( ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	if (mode == YesROM)			// depending on user argument
	{
		matchROM(ROM, line);	// either address the device with the given ROM code
	}
	else
	{
		skipROM(line);			// or (default) skip the ROM addressing and go right to temperature sensor commands
	}
}

//! Verify the Cyclic Redundancy Check (CRC) byte of a given data buffer

//! This function should be used to verify the validity of any data from a one-wire slave device. It takes in a data buffer, assumed
//! to have been output by a one-wire device, and the number of relevant bytes of the buffer. It performs a cyclic redudancy check
//! on the lowest (length - 1) bytes of the buffer and calculates the CRC code, which it then compares to the verification CRC included
//! in the uppermost byte of the buffer, and returns a boolean response to this check. Also, if the family code (8 LSBs) is 0x00 or 0xFF,
//! the device doesn't pass the CRC and the output is also FALSE
//! @param *buffer			The input buffer, which could be a ROM code or some other data storage/signal from a slave device
//! @param bufferBytes		The number of bytes in the input buffer that the function should consider
//! @param howManyBits		The number of LSBs to read in each buffer element
//! @retval TRUE			The buffer passed the cyclic redundancy check (CRC)
//! @retval FALSE			The buffer did not pass the CRC
boolean verifyCRC( Uint16 *buffer, Uint16 bufferBytes, Uint16 howManyBits )
{
	Uint16 readCRC;														// this is the CRC transmitted by the device, stored in the upper 1 byte of the buffer
	Uint16 calculatedCRC = 0;											// and this is for the CRC calculated from the lower (bufferBytes - 1) bytes of the transmitted data buffer
	boolean Retcode = FALSE;											// this boolean code indicates if the CRC test proved data accuracy or not

	readCRC = *(buffer + bufferBytes - 1) & 0xFF;						// dereference the upper 1 byte of the buffer, and mask out irrelevant bits
	calculatedCRC = (CalculateCRC8(buffer, (bufferBytes - 1), howManyBits)) & 0xFF;

	if (calculatedCRC == readCRC)										// test if the CRCs match...
	{
		if (*(buffer) != 0xFF && *(buffer) != 0x00)						// if so, make sure the family code (in buffer[0]) isn't all 0s or 1s
		{
			Retcode = TRUE;												// if it passes both conditions, the CRC is successful
		}
		else
		{
			Retcode = FALSE;											// otherwise, it is not
		}
	}
	else
	{
		Retcode = FALSE;												// and if the CRCs don't match, it isn't successful either
	}
	return( Retcode );													// and return to allow the caller to proceed with that information
}

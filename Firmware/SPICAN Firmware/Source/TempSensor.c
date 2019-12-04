/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/TempSensor.c $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

//! @file
//! This file contains the code that supports the on-board temperature sensor, which communicates over
//! a 1-wire interface. It makes heavy use of the routines defined in OneWire.c, tailored to the fact that
//! there is only a single slave device on this line.

//-------------------------------------------------------------------------------------------
//----------Front-end Routines - These functions are to be used at the system level----------
//-------------------------------------------------------------------------------------------

//! Initializes parameters for specified temperature sensor on specified line

//! This routine brings the temperature sensor up to running capability from DSP power-up. It ensures that the specific one-wire interface
//! is initialized and, assuming the temperature sensor is the only device on the line, it issues commands to recall the EEPROM data and
//! convert the current temperature to digital storage
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void InitTempSensor( OneWirePort line )
{
	InitOneWire(line);				// ensure that the line's one-wire interface is initialized

	resetPresent(line);				// issue interaction sequence to recall memory from EEPROM into scratchpad...
	skipROM(line);
	recallEEPROM(NoROM, 0, line);

	resetPresent(line);				// and then to convert the current temperature
	skipROM(line);
	convertT(NoROM, 0, line);
}

//! Get the current temperature and perform a CRC verification

//! This routine is a self-contained function for temperature measurement, meaning it calls the appropriate reset, etc
//! functions in the appropriate order to operate the temperature sensor successfully. It first gives the command to
//! convert the temperature to a digital format and store it within the sensor's scratchpad; it then reads the relevant
//! storage bytes in the sensor, and converts the data output from the sensor's format to a signed, readable int and returns it.
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @return 		The read temperature as a signed int; -1000 is the error value
int16 getTemperature( ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 scratchpad[9] = {};										// an array of Uint16s to store the bottom two bytes of scratchpad data, received from the temperature sensor
	Uint16 *scratchpadPtr = scratchpad;								// a pointer to the scratchpad array, to be used more explicitly in function calls
	Uint16 sign = 0;												// the dissected temperature components: sign and raw magnitude
	Uint16 magnitude = 0;
	int16 temperature = 0;											// the final temperature to be returned
	boolean scratchpadCRC = FALSE;									// the output of the readScratchpad function, to check the CRC

	convertT(mode, ROM, line);										// tell the sensor to perform a temperature conversion

	scratchpadCRC = readScratchpad(scratchpadPtr, mode, ROM, line);	// retreive and store the temperature values in the scratchpad, and get a boolean CRC-test response

	if (scratchpadCRC)												// check if the CRC was successfully verified; if so,
	{
		sign = scratchpad[1];										// extract the sign bits...
		magnitude = scratchpad[0];									// ...and the raw temperature magnitude
		temperature = (int16)magnitude / 2;							// the retreived temperature magnitude is in units of 0.5 [degC] (but discard LSB since it's an int)

		if (sign != 0)												// if the sign bits indicate negative...
		{
			temperature *= -1.0;									// ...negate the temperature
		}
	}
	else															// otherwise...
	{
		temperature = -1000;										// you might need a sweater (that is: THE CRC FAILED!!!)
	}
	return( temperature );											// and finally return the true temperature or error value
}

//! Get either the high or low alarm temperature stored in the sensor's scratchpad

//! This is a self-contained routine for determining one of the alarm temperatures. The user indicates which line, which ROM mode (and if applicable, the ROM address),
//! and the bound (either TH or TL) desired. The function reads the scratchpad, extracts the appropriate value, and converts it into a signed, readable int to return.
//! @param whichBound	Either TH or TL, designates either the high or low temperature alarm bound that is desired
//! @param mode			This designates whether to address the line by a specific ROM code or not
//! @param *ROM			The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 		An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @return 			The read temperature as a signed int
int16 getAlarmTemp( TempType whichBound, ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 scratchpad[9] = {};										// the scratchpad array...
	Uint16 *scratchpadPtr = scratchpad;								// and pointer to the first element
	Uint16 rawTemp = 0;												// 8-bit temperature bound stored in scratchpad
	Uint16 sign = 0;												// 0->positive, 1->negative; stored in bit 8 of rawTemp
	Uint16 magnitude = 0;											// 7 LSBs of rawTemp
	boolean scratchpadCRC = FALSE;									// test for scratchpad data accuracy
	int16 temperature = 0;											// the final temperature to be returned

	scratchpadCRC = readScratchpad(scratchpadPtr, mode, ROM, line);	// read the scratchpad with the given arguments

	if (scratchpadCRC)												// check if the CRC was successfully verified; if so,
	{
		if(whichBound == TL)										// assign rawTemp based on which temperature bound (TH or TL) is desired
		{
			rawTemp = scratchpad[3];
		}
		else
		{
			rawTemp = scratchpad[2];
		}

		sign = rawTemp & 0x0080;									// the sign bit is bit 7 of the rawTemp
		magnitude = rawTemp & 0x007F;								// and the magnitude is the lowest 7 bits
		temperature = (int16)magnitude;								// the retreived temperature magnitude is already in units of degC
		if (sign != 0)												// if the sign bit indicates negative...
		{
			temperature *= -1.0;									// ...negate the float temperature
		}
	}
	else															// otherwise...
	{
		temperature = -1000;										// you might need a sweater
	}

	return( temperature );
}

//! Set one (high or low) alarm temp of a particular device, preserving the other, and store them in the EEPROM

//! This is a self-contained routine for setting either the high or low (TH or TL) alarm temperature in a particular device on a particular line. The user indicates
//! which line, which ROM mode (and if applicable, the ROM address), the TH or TL value, and the bound desired. The function initiates interaction the the one-wire
//! device, reading its scratchpad, extracting the two alarm temperatures, adjusting the one that the user has indicated, and re-writing them to the scratchpad's
//! alarm temperature bytes. The function returns TRUE or FALSE, depending on whether the scratchpad could be read successfully.
//! @param whichBound	Either TH or TL, designates either the high or low temperature alarm bound that is desired
//! @param value		The temperature alarm value, as a signed integer
//! @param mode			This designates whether to address the line by a specific ROM code or not
//! @param *ROM			The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 		An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @retval TRUE		Read scratchpad data passed cyclic redundancy check (CRC)
//! @retval FALSE		Scratchpad data didn't pass the CRC
boolean setAlarmTemp( TempType whichBound, int16 value, ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 scratchpad[9] = {};												// the scratchpad array...
	Uint16 *scratchpadPtr = scratchpad;										// and pointer to the first element
	boolean scratchpadCRC = FALSE;											// test for scratchpad data accuracy
	Uint16 tempCode = 0;													// the temperature argument, encoded into the temperature sensor alarm format

	if (value < 0)															// if the user-argued bound is negative
	{
		tempCode = (Uint16)(-1*value);										// cast its magnitude to an unsigned int
		tempCode &= 0x007F;													// clear all but the lowest 7 bits
		tempCode |= 0x0080;													// and set bit 7, indicating a negative value
	}
	else																	// otherwise
	{
		tempCode = (Uint16)(value);											//just cast it to an unsigned int
		tempCode &= 0x007F;													// and clear all but the lowest 7 bits
	}

	scratchpadCRC = readScratchpad(scratchpadPtr, mode, ROM, line);			// read the scratchpad with the given arguments

	if (scratchpadCRC)														// check if the CRC was successfully verified; if so,
	{
		if(whichBound == TH)												// adjust the scratchpad element based on which temperature bound (TH or TL) is desired
		{
			scratchpad[2] = tempCode;
		}
		else if (whichBound == TL)
		{
			scratchpad[3] = tempCode;
		}

		writeScratchpad(scratchpad[2], scratchpad[3], mode, ROM, line);		// rewrite the old and new alarm values to the scratchpad
	}

	copyScratchpad(mode, ROM, line);										// copy the new temperature values into the non-volatile EEPROM

	return( scratchpadCRC );												// and return a boolean indicate whether the read/write was successful
}


//! Set both (high and low) alarm temps of a particular device, and store them in the EEPROM

//! This is a self-contained routine for setting the high and low temperature alarm in a particular device. The user indicates which line, which ROM mode (and if
//! applicable, the ROM address), and the TH and TL values. The function performs a full interaction with the one-wire device, and writes those values to the scratchpad.
//! @param TH		The high temperature alarm value, as a signed integer
//! @param TL		The low temperature alarm value, as a signed integer
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void setAlarmTemps( int16 TH, int16 TL, ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 tempCodeTH = 0;										// TH, encoded into the temperature sensor alarm format
	Uint16 tempCodeTL = 0;										// TL, encoded into the temperature sensor alarm format

	if (TH < 0)													// if the user-argued bound is negative
	{
		tempCodeTH = (Uint16)
				(-1*TH);								// cast its magnitude to an unsigned int
		tempCodeTH &= 0x007F;										// clear all but the lowest 7 bits
		tempCodeTH |= 0x0080;										// and set bit 7, indicating a negative value
	}
	else														// otherwise
	{
		tempCodeTH = (Uint16)(TH);								//just cast it to an unsigned int
		tempCodeTH &= 0x007F;										// and clear all but the lowest 7 bits
	}

	if (TL < 0)													// if the user-argued bound is negative
	{
		tempCodeTL = (Uint16)(-1*TL);								// cast its magnitude to an unsigned int
		tempCodeTL &= 0x007F;										// clear all but the lowest 7 bits
		tempCodeTL |= 0x0080;										// and set bit 7, indicating a negative value
	}
	else														// otherwise
	{
		tempCodeTL = (Uint16)(TL);								//just cast it to an unsigned int
		tempCodeTL &= 0x007F;										// and clear all but the lowest 7 bits
	}

	writeScratchpad(tempCodeTH, tempCodeTL, mode, ROM, line);	// setAlarmTemps() does the same as writeScratchpad(), but has a more intuitive name and input arguments

	copyScratchpad(mode, ROM, line);							// and also makes sure the new temperature values are stored in the non-volatile EEPROM
}

//! Checks if a specific device or line is signaling a temperature alarm

//! This is a self-contained routine for checking the temperature alarm state of either an entire line, or a specific device on a line. The user indicates which line and which
//! ROM mode (and if applicable, the ROM address). The function updates the device with the current temperature (which automatically sets an alarm flag if an the temperature violates
//! an alarm temperature boundary), checks for an alarm signal, and:
//! 1) If the user has indicated a YesROM mode, the function checks only whether that particular device (by the provided ROM address) is in an alarm state, and returns the boolean;
//! 2) If the user has indicated a NoROM mode, the function performs a full Alarm Search on the line, returns a boolean answer, and, if TRUE, fills the ROM array (whose pointer is
//!		passed in) with the ROM code of the device.
//! performs an alarm search to determine if any devices - and if so,
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
//! @retval TRUE	An temperature alarm is being signalled, either on the given line or on the specific device on the line; look at the ROM array for the address of the device
//! @retval FALSE	No temperature alarm is being signalled at this time; the ROM array data is irrelevant
boolean isTempSensorAlarming( ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 alarmROM[8] = {};											// the function-generated alarmROM address array, which is either filled with an alarming ROM on the line, or not filled at all
	Uint16 *alarmROMptr = alarmROM;										// a pointer to the array
	Uint16 ROMindex = 0;												// index into the ROM array(s)
	Uint16 givenROMelement = 0;											// for use when checking ROM equivalence: the specific element of the user-defined ROM argument
	Uint16 foundROMelement = 0;											// for use when checking ROM equivalence: the specific element of the ROM address received from the slave-device
	boolean Retcode = FALSE;											// the temperature alarm state, based on argument specifications
	Uint16 scratchpad[9] = {};
	Uint16 *scratchpadPtr = scratchpad;

	convertT(mode, ROM, line);											// first, convert the temperature on the specific line, either by addressing a specific ROM address on the line, or the entire line
	readScratchpad(scratchpadPtr, NoROM, 0, TEMPSENSOR);
	Retcode = alarmSearch(alarmROMptr, line);							// and as a baseline, determine whether a temperature alarm is being signaled on the line, and if so, the address of the device

	if (Retcode)														// if the search has found an alarm signal on the line...
	{
		if (mode == YesROM)												// and the user indicated that the given ROM pointer is the address they want checked
		{
			for (ROMindex = 0; ROMindex < 8; ROMindex++)				// -----then cycle through each index,
			{
				givenROMelement = *(ROM + ROMindex) & 0x00FF;			// -----extract the given element and the found element,
				foundROMelement = *(alarmROMptr + ROMindex) & 0x00FF;
				if (givenROMelement == foundROMelement)					// -----and compare them:
				{
					Retcode = TRUE;										// ----------while each comparison is true, maintain the return value as TRUE
				}
				else
				{
					Retcode = FALSE;									// ----------but immediately when one is found false, the desired alarm check on that ROM has FAILED,
					break;												// ----------and the loop should break, returning a FALSE value
				}
			}
		}
		else															// otherwise, if the user wants whatever ROM address (if any) is currently alarming
		{
			for (ROMindex = 0; ROMindex < 8; ROMindex++)				// -----then cycle through each element of the received ROM address
			{
				*(ROM + ROMindex) = *(alarmROMptr + ROMindex);			// -----and store it in the user's pointer
			}															// -----passively maintaining the TRUE return value
		}
	}																	// otherwise, if no alarm signal is found, Retcode is FALSE and that alone is returned, indicating that
																		// the contents of the ROM array are irrelevant
	return( Retcode );
}

//! Convert a signed integer temperature to a null-terminated string

//! This is essentially a wrapper function for ltoa, which converts the user-defined, signed integer temperature to a null-terminated string
//! using the stdlib.h function ltoa. The new string is stored in the buffer passed in by the user.
//! @param temperature		A signed, 16 bit integer temperature, which is the standard output for both the alarm and measured temperature read functions (**THIS IS NOT HOW THE DATA IS STORED IN THE DEVICE)
//! @param *tempString		A null-terminated string of the temperature
void tempToString( int16 temperature, char16 *tempString )
{
	ltoa(temperature, tempString);	// just convert and store in the buffer
}

//-----------------------------------------------------------------------------------------------------------------------------
//----------Back-end Routines - These are mostly going to be called by the above front-end routines and by each other----------
//-----------------------------------------------------------------------------------------------------------------------------

//! Begin a standard interaction between master and slave devices on the specified line

//! This sequence of commands is used so frequently by the below functions that it warrants its own routine. Here, we send a reset-present
//! pulse, select and perform the appropriate ROM address method, and write the given command to the line. Any waiting for response signals,
//! data reading, etc is done by the function that calls this one and is not in my purview.
//! @param command	This is the desired command code from the calling routine
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void standardOneWireInteraction( TempSensorCommand command, ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	resetPresent(line);									// mandatory line reset

	decideROMMethod(mode, ROM, line);					// issue either a Match ROM or a Skip ROM command, depending on the input length of the ROM

	writeCommand((OneWireCommand)command, line);		// and write the given command
}

//! Trigger a temperature conversion within the device

//! This routine specifically triggers a temperature conversion within the sensor device. It initiates a conversion and then waits
//! for the response flag to indicate that the conversion is complete.
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void convertT( ROMCode mode, Uint16 *ROM, OneWirePort line)
{
	Uint16 response = 0;											// "conversion complete" response from the temperature sensor

	standardOneWireInteraction(CONVERTTCOMMAND, mode, ROM, line);	// begin the one-wire interaction appropriately

	while (response == 0)											// finally, wait until the converter outputs a 1, indicating the conversion is complete
	{
		response = readBit(line);
	}
}

//! Write to the TH and TL bytes of the scratchpad

//! This is a self-contained function for writing to the two writable bytes of the temperature sensor's scratchpad - the TH and TL bytes. It issues
//! a reset-present pulse and, if required, it first addresses the given line by ROM address. Then, it transmits 16 bits, starting with the LSB of TH
//! through bit 7 of TH, then from the LSB of TL through bit 7 of TL. This sets the high (TH) and low (TL) temperature alarm values.
//! @param TH		The high temperature alarm value, with bits 6-0 as the magnitude in degC, bit 7 as a sign (1 -> [-]), and bits 15-8 unused
//! @param TL		The low temperature alarm value, with bits 6-0 as the magnitude in degC, bit 7 as a sign (1 -> [-]), and bits 15-8 unused
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, its value is not used
//! @param line 	An argument, as enumerated in the header file, which selects which one-wire interface the user wants to talk to
void writeScratchpad( Uint16 TH, Uint16 TL, ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 writeBytes = 0;													// stores both TH and TL in one 16-bit variable
	Uint16 writeIndex = 0;													// index into writeBytes

	writeBytes = (0x00FF & TH) + ((TL << 8) & 0xFF00);						// store TH in lower 8 bits, TL in upper 8 bits, ensuring that unused bits are clear

	standardOneWireInteraction(WRITESCRATCHPADCOMMAND, mode, ROM, line);	// begin the one-wire interaction appropriately

	for (writeIndex = 0; writeIndex < 16; writeIndex++)						// cycle through each bit of writeBytes...
	{
		if(writeBytes & (0x1 << writeIndex))								// and output either a 1
		{
			writeOne(line);
		}
		else																// or a 0, depending on its state
		{
			writeZero(line);
		}
	}
}

//! Read all of the data stored in the temperature sensor's memory (scratchpad) and perform a CRC verification

//! This is a self-contained function for reading the data off a temperature sensor's scratchpad. It reads 9 bytes from the temperature sensor
//! (as defined by the ROM address, if used) on the given line, and stores them (starting from byte 0) in the scratchpad array whose pointer
//! is passed in from the user. It performs a cyclic redundancy check on the scratchpad data, and returns a boolean value.
//! @param scratchpad	A pointer to the scratchpad variable declared by the caller
//! @param mode			This designates whether to address the line by a specific ROM code or not
//! @param *ROM			The ROM address of the temperature sensor. If mode is NoROM, this value is unused
//! @param line 		An argument, as defined in the header file, which selects which one-wire interface the user wants to talk to
//! @retval TRUE		Read scratchpad data passed cyclic redundancy check (CRC)
//! @retval FALSE		Scratchpad data didn't pass the CRC
boolean readScratchpad( Uint16 *scratchpad, ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 elementIndex = 0;											// counting variable to define the current byte being read/stored
	Uint16 thisByte = 0;												// stores the output of readByte, before being copied into the appropriate scratchpad array element
	boolean Retcode = FALSE;											// did the scratchpad pass the cyclic redundancy check?

	standardOneWireInteraction(READSCRATCHPADCOMMAND, mode, ROM, line);	// begin the one-wire interaction appropriately

	for (elementIndex = 0; elementIndex < 9; elementIndex++)			// cycle from byte 0 of the scratchpad to the desired length
	{
		thisByte = readByte(line);										// get each byte and store it in the 8 LSBs
		*(scratchpad + elementIndex) = thisByte;						// and shift it into the appropriate scratchpad array element
	}

	resetPresent(line);													// finally, reset the line when you've reached the desired number of bytes

	Retcode = verifyCRC(scratchpad, 9, 8);									// verify the CRC and return this assessment

	return( Retcode );
}

//! Copy the contents of the TH and TL registers in the scratchpad to the pre-allocated EEPROM memory bytes

//! This is a self-contained function for storing the data currently in the TH and TL registers in the scratchpad into non-volatile EEPROM. It issues
//! the necessary reset-present pulse, addresses the device(s) by ROM as specified, and issues the command
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, this value is unused
//! @param line 	An argument, as defined in the header file, which selects which one-wire interface the user wants to talk to
void copyScratchpad( ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	standardOneWireInteraction(COPYSCRATCHPADCOMMAND, mode, ROM, line);		// begin the one-wire interaction appropriately
																			// including the command to copy bytes 2 and 3 in the scratchpad to the EEPROM
}

//! Recall the contents of the EEPROM memory into the TH and TL registers

//! This is a self-contained function for recalling the data in the non-volatile EEPROM into the TH and Tl registers of the voltatile scratchpad. It issues
//! the necessary reset-present pulse, addresses the device(s) by ROM as specified, issues the command, and waits until the device signals complete. THIS
//! IS DONE AUTOMATICALLY AT POWER-UP!
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, this value is unused
//! @param line 	An argument, as defined in the header file, which selects which one-wire interface the user wants to talk to
void recallEEPROM( ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 response = 0;												// "recall complete" response from the temperature sensor

	standardOneWireInteraction(RECALLEEPROMCOMMAND, mode, ROM, line);	// begin the one-wire interaction appropriately

	while(response == 0)												// finally, wait until the converter outputs a 1, indicating the recall is complete
	{
		response = readBit(line);
	}
}

//! Poll a given line, or device on a line, to determine if it/they use(s) parasite power

//! This is a self-contained function for determining if a particular device, or any device on a particular line, uses parasite power. It issues
//! the necessary reset-present pulse, addresses the device(s) by ROM as specified, issues the command, and then reads a bit from the line to determine
//! if 1) the addressed device or 2) any device on the line is using parasite power; it returns a boolean value answering that question
//! @param mode		This designates whether to address the line by a specific ROM code or not
//! @param *ROM		The ROM address of the temperature sensor. If mode is NoROM, this value is unused
//! @param line 	An argument, as defined in the header file, which selects which one-wire interface the user wants to talk to
//! @retval TRUE	A device on the line or the addressed device uses parasite power
//! @retval FALSE	No device on the line uses parasite power, or the addressed device doesn't
boolean readPowerSupply( ROMCode mode, Uint16 *ROM, OneWirePort line )
{
	Uint16 response = 0;													// this stores the read value of the line after the command is issued
	boolean Retcode = FALSE;												// and this is returned, to indicate whether parasite power is being used on the line

	standardOneWireInteraction(READPOWERSUPPLYCOMMAND, mode, ROM, line);	// begin the one-wire interaction appropriately

	response = readBit(line);												// and read the state of the line

	if (!response)															// if the addressed device/any device on the line is holding it low
	{
		Retcode = TRUE;														// that means parasite power is being used
	}																		// otherwise, just keep Retcode as FALSE

	return( Retcode );														// and return it
}

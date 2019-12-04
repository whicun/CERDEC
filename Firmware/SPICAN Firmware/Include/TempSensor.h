/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/TempSensor.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file contains the function declarations for the temperature sensor operation

#ifndef TEMPSENSOR_H_
#define TEMPSENSOR_H_

	//! Enumerate 8-bit temperature sensor (DS18S20) command codes
	typedef enum
	{
		CONVERTTCOMMAND 		= 0x44,
		WRITESCRATCHPADCOMMAND 	= 0x4E,
		READSCRATCHPADCOMMAND 	= 0xBE,
		COPYSCRATCHPADCOMMAND 	= 0x48,
		RECALLEEPROMCOMMAND		= 0xB8,
		READPOWERSUPPLYCOMMAND 	= 0xB4
	} TempSensorCommand;

	//! Enumerate codes for temperature sensor alarm bounds
	typedef enum
	{
		TH,
		TL,
		actual
	} TempType;

	//---------------Front-end Functions--------------
	void InitTempSensor( OneWirePort line );
	int16 getTemperature( ROMCode mode, Uint16 *ROM, OneWirePort line );
	int16 getAlarmTemp( TempType whichBound, ROMCode mode, Uint16 *ROM, OneWirePort line );
	boolean setAlarmTemp( TempType whichBound, int16 value, ROMCode mode, Uint16 *ROM, OneWirePort line );
	void setAlarmTemps( int16 THvalue, int16 TLvalue, ROMCode mode, Uint16 *ROM, OneWirePort line );
	boolean isTempSensorAlarming( ROMCode mode, Uint16 *ROM, OneWirePort line );
	void tempToString( int16 temperature, char16 *tempString );

	//---------------Back-end Functions---------------
	void standardOneWireInteraction( TempSensorCommand command, ROMCode mode, Uint16 *ROM, OneWirePort line );
	void convertT( ROMCode mode, Uint16 *ROM, OneWirePort line );
	void writeScratchpad( Uint16 TH, Uint16 TL, ROMCode mode, Uint16 *ROM, OneWirePort line );
	boolean readScratchpad( Uint16 *scratchpad, ROMCode mode, Uint16 *ROM, OneWirePort line );
	void copyScratchpad( ROMCode mode, Uint16 *ROM, OneWirePort line );
	void recallEEPROM( ROMCode mode, Uint16 *ROM, OneWirePort line );
	boolean readPowerSupply( ROMCode mode, Uint16 *ROM, OneWirePort line );

#endif /* TEMPSENSOR_H_ */

/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-26 14:38:00 -0400 (Sun, 26 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/CPUControl.c $ URL of repository
 *
 * $Rev:: 1493                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

boolean StrainGaugeSerialCRCValid[4];
u64 StrainGaugeSerialNumbers[4];

//! Set up the processor to run after powerup.
void InitProcessor( void )
{
	//Disable watchdog timer. If the watchdog has been locked by clearing WDOVERRIDE, this will not stop it.
	DisableDog();
	//Speed up the flash interface - this runs in RAM
	InitFlash();
	//Set up peripheral clocks - LSPCLK_VAL is a defined symbol that has peripheral clock speed
	InitClockspeedSettings();

	// Put pins back to powerup state
	SetupProDPinsGeneric();
	// Set up the input latch pins
	SetupInputLatchPins();
	//Set up LED hardware
	SetUpLEDs();
	//Make the external SRAM run at the right speed. The chip powers up set to run external RAM very slow.
	RamSpeedAdjustXINTF();
	//Set up internal ADC on chip. ESL code.
	InitAdcInternal();
	//Set up external ADCs. ESL code.
	InitAdcExternal();

	//Set up CPU timers - TI code
	InitCpuTimers();

	//Set up the quadrature inputs and counters, with the index pulse input disabled.
	InitQuadrature( FALSE );

	//Set up the Altera port image to have the latching relay coils off
	InitAlteraPortImage();

	//Turn off the SSR drive bits and write to the control port.
	ControlSSROutputs( 0 );

	//Initialize UARTA and UARTB registers with default baud rate
	InitUARTA(UART_INTERFACE_BAUD_RATE);
	InitUARTB(UART_INTERFACE_BAUD_RATE);

	//Initialize DAC GPIO, clock, etc
	InitDAC();

	//Initialize the one-wire port and temp sensor parameters, and fill scratchpad with current values
	InitTempSensor(TEMPSENSOR);

	//Initialize the one-wire ports for the strain gauge inputs
	InitOneWire(STRAIN1);
	InitOneWire(STRAIN2);
	InitOneWire(STRAIN3);
	InitOneWire(STRAIN4);

	// Validate CRC
	if(ValidateCRCOperation() == FALSE)
	{
		FatalError( FATAL_ERROR_CRC_CODE_DALLAS_FAILED, 0 );
	}

	EALLOW;
	InitPieCtrl();
	InitVectorTable(); //populate all the ISRs
	EDIS;
}

// Initialize clock, etc settings for system operation
void InitClockspeedSettings (void)
{
	EALLOW;									// allow system register access

	SysCtrlRegs.PLLCR.bit.DIV = PLLCR_DIV;	// initialize the PLL
	SysCtrlRegs.WDCR = 0x0068;				// disable the Watchdog Timer

	DELAY_US(150000 / XCLKIN_VAL * 1E6);	// have to wait >=131072 XCLKIN cycles for PLL to lock, as suggested by TI

	// HISPCP/LOSPCP prescale register settings
	SysCtrlRegs.HISPCP.all = 0x0001;
	SysCtrlRegs.LOSPCP.all = LOSPCP_DIV;

	// Peripheral clock enables set for the selected peripherals.
	SysCtrlRegs.PCLKCR.bit.EVAENCLK = 1;
	SysCtrlRegs.PCLKCR.bit.EVBENCLK = 1;
	SysCtrlRegs.PCLKCR.bit.SCIAENCLK = 1;
	SysCtrlRegs.PCLKCR.bit.SCIBENCLK = 1;
	SysCtrlRegs.PCLKCR.bit.MCBSPENCLK = 1;
	SysCtrlRegs.PCLKCR.bit.SPIENCLK = 1;
	SysCtrlRegs.PCLKCR.bit.ECANENCLK = 1;
	SysCtrlRegs.PCLKCR.bit.ADCENCLK = 1;

	EDIS;
}

//! Check the processor's part ID code. See TI Doc SPRU078G table 5-14.
//! @retval TRUE This is a F2812 series part.
//! @retval FALSE This is not a F2812 series part.
Uint16 CheckProcessorPartIDCode( void )
{
	Uint16 HoldPartIDCode;
	Uint16 Retval;

	//Fetch the number from the chip
	HoldPartIDCode = *((Uint16 *) (PROCESSOR_PART_ID_CODE_ADDR));

	//Make sure it's one we know about. 1 or 2 is valid, others are not.
	if( (HoldPartIDCode == 1) || (HoldPartIDCode == 2) )
	{
		Retval = TRUE;
	}
	else
	{
		Retval = FALSE;
	}

	return( Retval );
}

//! Read the processor's silicon rev code
//! @return Processor chip rev code from the ROM, typically 7 = rev G.
//! See TI Doc SPRZ193N section 3.
Uint16 ReadProcessorSiliconRevCode( void )
{
	Uint16 HoldRevCode;
	char16 RevChars[] = {'0', 'A', 'B', 'C', 'D','E','F','G','?'};

	//Fetch the number from the chip
	HoldRevCode = *((Uint16 *) (PROCESSOR_CHIP_REV_CODE_ADDR));

	//Make sure it's one we know about.
	//If it's higher than the known ones, set it to the last entry which is a '?'
	if( HoldRevCode > sizeof( RevChars ) - 2 )
	{
		HoldRevCode = sizeof( RevChars ) - 1;
	}

	//Translate it to a rev code
	HoldRevCode = RevChars[ HoldRevCode ];

	//Return the rev letter
	return( HoldRevCode );
}

//! Read the processor's ROM rev code and release date.
//! @return Processor ROM rev code from the ROM, typically 1 in the upper word
//! and build date MMYY in the lower word. See TI Doc SPRU095C section 2.
Uint32 ReadProcessorROMRevCode( void )
{
	Uint16 ROMRev;
	Uint16 ReleaseDate;
	Uint32 RevAndDate;

	//The processor rev code is in location 0x883 of Flash
	ROMRev = ( *((Uint16 *) (PROCESSOR_ROM_REV_CODE_ADDR)) );
	//The next location is the build year and month MMYY
	ReleaseDate		= ( *((Uint16 *) (PROCESSOR_ROM_REV_CODE_ADDR+1)) );
	RevAndDate		= (Uint32)ROMRev;
	RevAndDate		<<= 16;
	RevAndDate		+= (Uint32) ReleaseDate;

	return( RevAndDate );
}

//! Print an ID string including chip rev, ROM rev and build date, CPLD rev, etc.
//! @retval FALSE A configuration or revision on this board is not standard.
//! @retval TRUE Normal
u16 PrintSystemInfoString( void )
{
	u16 i;							//loop counter
	u16 j;							//also loop counter
	u16 ChipRev;					//silicon rev
	u16 ExternalADCPresent0;		//Are the external ADCs really there?
	u16 ExternalADCPresent1;
	u16 RevisionOfXINTF;			//revision of the external interface controller
	u32 RomRevAndDate;				//ROM rev, and MMYY of build
	u16	RevisionOfCPLD;				//Altera CPLD that handles decodes etc
	u16 Retval;						//Is everything normal?
	u16 ChipType;					//Is it the right processor?
	u16 PartIDCodeValid;			//Does it have a valid value for part id code?
	char16 Buffer[100];				//print buffer
	boolean SerialNumberCRCValid;
	//u16 TempSensorROMInfo[8];		//this used to be local but now it's a global variable in comm.c
	u16 StrainGaugeROMInfo[8];		//Serial number info in the strain gauges plugged in

	extern const u8 BuildDateAndTime[];	//this is set up in main.c so we get main's build time, not this file's time.
	const Uint32 CompilerVersion = __TI_COMPILER_VERSION__; //is 15012002

	//This is how the compiler lets us know what chip it thinks it is building for
	#if DSP28_F2812
		ChipType = 1;
	#else
		ChipType = 0;
	#endif

	//set up comm and send a hello message
	InitUARTB(UART_INTERFACE_BAUD_RATE);
	SendStrUARTB( "\nElectro Standards Laboratories ProD Codebase 1.00 startup.\n" );

	//Get info about environment
	ChipRev				= ReadProcessorSiliconRevCode();	//processor rev code
	RomRevAndDate		= ReadProcessorROMRevCode();		//rev and build date of rom
	RevisionOfXINTF		= XintfRegs.XREVISION;				//get rev of chip's external interface controller
	RevisionOfCPLD		= CPLD_REV_PORT;					//Read the rev of the on-board Altera decode CPLD

	//Verifies that the external ADCs exist.
	ExternalADCPresent0 = IsAD7738Installed( 0 );
	ExternalADCPresent1 = IsAD7738Installed( 1 );

	//Read the board serial number which is inside the temperature sensor
	SerialNumberCRCValid = resetPresent( TEMPSENSOR );
	if( SerialNumberCRCValid ==  TRUE )
	{
		SerialNumberCRCValid = readROM(&TempSensorROMInfo[0], TEMPSENSOR);
	}

	//Go through all the strain gauge ports looking for serial number tag devices. Record them if found.
	for( i = STRAIN1, j=0; i <= STRAIN4; i++, j++ )
	{
		//plan for failure, start with an invalid serial number
		StrainGaugeSerialNumbers[ j ] = 0;
		//See if the device seems to be installed
		StrainGaugeSerialCRCValid[ j ] = resetPresent( (OneWirePort) i );
		//If it seems to be there, get its serial number and see if it's valid
		if( StrainGaugeSerialCRCValid[ j ] == TRUE)
		{
			//There's a device there, see if its ROM has a valid serial number
			StrainGaugeSerialCRCValid[ j ] = readROM( &StrainGaugeROMInfo[0], (OneWirePort) i );
			//if the checksum is good, use the serial number
			if( StrainGaugeSerialCRCValid[ j ] == TRUE )
			{
				StrainGaugeSerialNumbers[ j ] = ArrayToLongInt( &StrainGaugeROMInfo[0] );
			}
		}
	}

	//Do things seem normal?
	Retval = TRUE;
	if( ChipRev != 'G')
	{
		Retval = FALSE;
	}

	if( RomRevAndDate != 0x10302 )
	{
		Retval = FALSE;
	}

	if( RevisionOfXINTF != 4 )
	{
		Retval = FALSE;
	}

	if( RevisionOfCPLD != 0x101)
	{
		Retval = FALSE;
	}

	if( (CompilerVersion != 15012002 ) && (CompilerVersion != 15012003 ) )
	{
		Retval = FALSE;
	}

	//What does the C compiler think it is building for?
	if( ChipType != 1 )
	{
		Retval = FALSE;
	}

	//Is the part code in the chip valid?
	PartIDCodeValid = CheckProcessorPartIDCode();
	if( PartIDCodeValid != TRUE )
	{
		Retval = FALSE;
	}

	sprintf( Buffer, "Processor rev %c. ROM rev and date code %lx.\n", ChipRev, RomRevAndDate );
	SendStrUARTB( Buffer );
	sprintf( Buffer, "Chip external memory interface controller (XINTF) rev %i.\n", RevisionOfXINTF );
	SendStrUARTB( Buffer );
	sprintf( Buffer, "CPLD rev %x. Compiler rev %li. ChipType %i. PartIDCodeValid %i\n", RevisionOfCPLD, CompilerVersion, ChipType, PartIDCodeValid );
	SendStrUARTB( Buffer );

	//Show status of external ADCs
	if( ExternalADCPresent0 == TRUE )
	{
		SendStrUARTB( "External ADC 0 present. " );
	}
	if( ExternalADCPresent1 == TRUE )
	{
		SendStrUARTB( "External ADC 1 present. " );
	}
	SendStrUARTB( "\n" );

	//Show the board serial number, if there is one
	if( SerialNumberCRCValid == TRUE )
	{
		sprintf( 	Buffer, "Board serial number %02X%02X%02X-%02X%02X%02X\n",
					TempSensorROMInfo[1], TempSensorROMInfo[2], TempSensorROMInfo[3],
					TempSensorROMInfo[4], TempSensorROMInfo[5], TempSensorROMInfo[6]	);
		SendStrUARTB( Buffer );
	}
	else
	{
		SendStrUARTB( "Unable to read board serial number\n" );
	}

	for( i = 0; i < 4; i++ )
	{
		//If the device seems to be installed
		if( StrainGaugeSerialCRCValid[ i ] == TRUE )
		{
			//remove the upper byte (device type which is 01) and the lower byte (which is CRC) and print the other 6 bytes
			sprintf(Buffer, "Strain sensor on port %d is serial number %0lX-%0lX\n", i, (u32)((0x00FFFFFFFFFFFF00 & StrainGaugeSerialNumbers[ i ]) >> 32), (u32)((StrainGaugeSerialNumbers[ i ] & 0xFFFFFF00) >> 8) );
			SendStrUARTB( Buffer );
		}
	}

	sprintf( Buffer, "Main.c built on %s.\n\n", BuildDateAndTime );
	SendStrUARTB( Buffer );

	//Let user know if something seems wrong
	if( Retval == FALSE )
	{
		SendStrUARTB( "\n\n**** WARNING - At least one item listed above is not standard ****\n");
	}

	SendStrUARTB( "\n" );

	return( Retval );
}

//$$$ don't need ramfunc if running from flash, only need if running from EXTERNAL ram.
//#pragma CODE_SECTION( RamSpeedAdjustXINTF, "ramfuncs")
//! Adjust the speed of the accesses to external memory. It powers up doing this very slowly, and this speeds it up.
void RamSpeedAdjustXINTF(void)
{
	//You can't change these settings while running from the area affected.
	//So put these in RAMFUNCS which are inside the chip.

	//First, make sure no writes are going on.
	//Wait till the count of pending writes is zero.
	while( XintfRegs.XINTCNF2.bit.WLEVEL != 0 )
	{
		asm(" RPT #10 || NOP");	//this count is a guess
	}

	// All Zones---------------------------------
	//Run all the timing stuff on 1/2 sysclock out which I think is 13ns
	XintfRegs.XINTCNF2.bit.XTIMCLK		= 1;
	//We need this clock to be driven to the outside because Altera CPLD uses it.
	XintfRegs.XINTCNF2.bit.CLKOFF		= 0;
	//XCLKOUT = XTIMCLK/2
	XintfRegs.XINTCNF2.bit.CLKMODE		= 1;
	//Turn on max avail write buffering, 3 steps.
	XintfRegs.XINTCNF2.bit.WRBUFF		= 3;

	//For the zones, many of the bits are set to default values at reset.
	//Just leave them that way.

	//Zone 0 and Zone 1 are not used on ProD
	//XREADY is not connected so don't let noise on it give us trouble.
	XintfRegs.XTIMING0.bit.USEREADY		= 0;
	XintfRegs.XTIMING1.bit.USEREADY		= 0;

	//Zone 2 is the first 2 SRAM chips on ProD
	XintfRegs.XTIMING2.bit.XWRLEAD		= 2;	//max is 3
	XintfRegs.XTIMING2.bit.XWRACTIVE	= 2;	//max is 7
	XintfRegs.XTIMING2.bit.XWRTRAIL		= 2;	//max is 3

	// Zone read timing
	XintfRegs.XTIMING2.bit.XRDLEAD		= 2;	//max is 3
	XintfRegs.XTIMING2.bit.XRDACTIVE	= 2;	//max is 7
	XintfRegs.XTIMING2.bit.XRDTRAIL		= 2;	//max is 3

	//We don't need to double the delays
	XintfRegs.XTIMING2.bit.X2TIMING		= 0;

	//XREADY is not connected so don't let noise on it give us trouble.
	XintfRegs.XTIMING2.bit.USEREADY		= 0;


	//Zone 6 is the second 2 SRAM chips on ProD
	XintfRegs.XTIMING6.bit.XWRLEAD		= 2;	//max is 3
	XintfRegs.XTIMING6.bit.XWRACTIVE	= 2;	//max is 7
	XintfRegs.XTIMING6.bit.XWRTRAIL		= 2;	//max is 3

	// Zone read timing
	XintfRegs.XTIMING6.bit.XRDLEAD		= 2;	//max is 3
	XintfRegs.XTIMING6.bit.XRDACTIVE	= 2;	//max is 7
	XintfRegs.XTIMING6.bit.XRDTRAIL		= 2;	//max is 3

	//We don't need to double the delays
	XintfRegs.XTIMING6.bit.X2TIMING		= 0;

	//XREADY is not connected so don't let noise on it give us trouble.
	XintfRegs.XTIMING6.bit.USEREADY		= 0;

	//Zone 7 is disabled on a chip running in microcomputer mode which we are.
	//XREADY is not connected so don't let noise on it give us trouble.
	XintfRegs.XTIMING7.bit.USEREADY		= 0;

	//Bank switching is not needed, leave it at default values (Bank 7).

	//Force a pipeline flush to ensure that the write to
	//the last register configured occurs before returning.
	asm(" RPT #20 || NOP");
}

//! Utility routine to fill a region of memory.
//! @param StartAddr Start address, pointer to Uint16.
//! @param EndAddr End address, pointer to Uint16. Does not fill the last location.
//! @param FillValue Value to fill memory with. Typically zero or ESTOP0 (breakpoint) instruction.

void MemFill(Uint16 *StartAddr, Uint16* EndAddr, Uint16 FillValue)
{
	while(StartAddr < EndAddr)
	{
		*StartAddr++ = FillValue;
    }
}

//! @brief Clear all of RAM before program starts.

//! Interacts with TI's boot code to zero all SRAM inside the chip, but not the external SRAM.
//! External SRAM is slower and large, so clearing it at boot time might show startup too much.
//! WARNING - If the linker is set to download code in RAM, this will erase that code!
//! It is intended to be used with flash based execution. It does not interfere with RAMFUNCS however,
//! because they are loaded after CINIT.
//! NOTE - this code is called before CINIT, so no initialized values can be used.
//! It clears most of the stack area, so if it calls other functions besides MemFill,
//! verify that the stack area being used is not cleared.
//! @retval 1 Must return 1 or no CINIT happens.
u16 _system_pre_init(void)
{
	#if FILL_SRAM_AT_POWERUP
		MemFill( (PtrU16) M0_VECTOR_START,	(PtrU16)M1_SARAM_END,	POWERUP_MEM_FILL_VALUE );
		//You have to enable the PIE to clear it
		EALLOW;
		PieCtrlRegs.PIECRTL.bit.ENPIE = 1;
		MemFill( (PtrU16) PIE_VECTOR_START,	(PtrU16)PIE_VECTOR_END,	POWERUP_MEM_FILL_VALUE );
		PieCtrlRegs.PIECRTL.bit.ENPIE = 0;
		EDIS;
		MemFill( (PtrU16) L0_SARAM_START,	(PtrU16)L0_SARAM_END,	POWERUP_MEM_FILL_VALUE );
		MemFill( (PtrU16) L1_SARAM_START,	(PtrU16)L1_SARAM_END,	POWERUP_MEM_FILL_VALUE );
		MemFill( (PtrU16) H0_SARAM_START,	(PtrU16)H0_SARAM_END,	POWERUP_MEM_FILL_VALUE );
	#endif

	//This routine must return 1 or no other code will work!
	return( 1 );
}

//! Calculate the CRC8 from a buffer of integers

//! Use the Dallas formula to calculate the CRC8 from a variable-length buffer of 8-bit words
//! @param *buffer				The input buffer, which could be a ROM code or some other data storage/signal from a slave device
//! @param howManyBytes			The number of bytes in the input buffer that the function should read
//! @param howManyBits			The number of LSBs to read in each buffer element
//! @return calculatedCRC		The CRC8 calculated from the data buffer
Uint16 CalculateCRC8( Uint16 *buffer, Uint16 howManyBytes, Uint16 howManyBits )
{
	Uint16 calculatedCRC = 0;	// holds the CRC, to be calculated from the input data buffer
	Uint16 byteIndex = 0;		// index into the data buffer, for iterating through bytes
	Uint16 bitIndex = 0;		// index into a data buffer byte, for iterating through bits
	Uint16 thisByte = 0;		// temporary storage for each byte of the buffer, to do math
	Uint16 mask = 0;			// used to mask off the buffer element, leaving only the howManyBits # of LSBs for use in calculating the CRC

	if (howManyBits > 16)												// error-check and limit the number of bits to what is contained in the Uint16
	{
		howManyBits = 16;
	}
	for (bitIndex = 0; bitIndex < howManyBits; bitIndex++)
	{
		mask = mask << 1;
		mask += 1;
	}

	for (byteIndex = 0; byteIndex < howManyBytes; byteIndex++)			// starting with the lowest one, cycle through every bit of every byte
	{
		thisByte = *(buffer + byteIndex) & mask;						// extract the lowest 8 bits of the current byte

		for (bitIndex = 0; bitIndex < howManyBits; bitIndex++)			// and iterate through the relevant bits (usually 8), starting with the LSB
		{
			if (!((calculatedCRC ^ thisByte) & 0x01))					// perform the math/logic on the individual bit, adjusting the calculatedCRC in the process
			{
				calculatedCRC >>= 1;
			}
			else
			{
				calculatedCRC = ((calculatedCRC ^ 0x18) >> 1) | 0x80;
			}
			thisByte >>= 1;
		}
	}

	return( calculatedCRC );											// once the CRC is fully calculated, return it as the 8 LSBs of a Uint16
}

//! Make sure the CRC8 code works as expected.

//! Sometimes, characteristics of the specific processor being used can alter how the CRC calculation is performed, rendering invalid data.
//! This function tests a few sample values, running them through the CRC calculator and comparing the outputs to the known correct ones.
//! It then returns a boolean, indicating whether all CRC sample calculations came back correct, or not.
//! @retval TRUE 	CRC8 works
//! @retval FALSE 	CRC8 did not work as expected.
boolean ValidateCRCOperation( void )
{
	// declare local variables
	Uint16 i = 0;																	// iteration variable
	Uint16 samples[] = {0, 1, 2, 0x80, 0x81};										// example bit-streams from which CRC is to be calculated
	Uint16 results[ (sizeof(samples)) + 1];											// one extra element for the CRC of the whole series
	//Uint16 expectedCRCvalues[] = {0x35, 0x6B, 0x89, 0xB9, 0xE7, 0xF4 };			// the CRC values expected to be in the results array
	Uint16 expectedCRCvalues[] = {0, 0x5E, 0xBC, 0x8C, 0xD2, 0x3D};
	Uint16 Retcode = TRUE;

	// build the results array with the CRC values of the samples array
	for (i = 0; i < (sizeof(samples)); i++)
	{
		results[i] = CalculateCRC8(&samples[i], 1, 8);
	}

	// store the CRC of the entire samples array as the last element in THE results array
	results[sizeof(samples)] = CalculateCRC8(&samples[0], sizeof(samples), 8);

	// and check the results
	for (i = 0; i < sizeof(results); i++)
	{
		if (results[i] != expectedCRCvalues[i])
		{
			Retcode = FALSE;
		}
	}

	return( Retcode );
}

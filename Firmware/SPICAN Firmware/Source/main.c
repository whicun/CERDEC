/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2018-01-02 11:48:21 -0500 (Tue, 02 Jan 2018) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/main.c $ URL of repository
 *
 * $Rev:: 2611                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

    //! @brief This string is set up with the build date and time by the compiler.
    const u8 BuildDateAndTime[30] = {__DATE__ ", " __TIME__" EST"};

//! This is the main function of the program. It initializes all internal and external peripherals and, when necessary, tests their functionality
void main( void )

{
	SystemInfoStruct SystemInfo;

	// Initialize the system
	InitProcessor();											//Initialize EVERYTHING!
	InitSystemInfo(&SystemInfo);								//Set up info about firmware type, rev, hardware rev, etc
	spi_fifo_init();										//Set up the SPI FIFOs
	spi_init();												//Set up the SPI data ports
	//SetUpTimer2Interrupts();								// start the 2kHz interrupt on Timer2

	//DINT;

/*	//State Machine Vars
	boolean STATUSCHECK;									//Checks for device awake, DIGI_IN1
	boolean SETUPMODE;										//Set point for current output
	boolean RUNMODE;										//Device operating
	boolean FAULTMODE;										//Fault such as electrode reject
	boolean parseCheck = FALSE;

	//Initial Conditions
	VoltagetoDAC(0, DAC_CH2);
	parseCheck = 0;
	STATUSCHECK = 0;
	SETUPMODE = 0;
	RUNMODE = 0;
	FAULTMODE = 0;
	SSROutputsOff(SSR1);									//Encoder emulation ChA
	SSROutputsOff(SSR2);									//Encoder emulation ChB
	SSROutputsOff(SSR3);									//Pause Button
	SSROutputsOff(SSR4);									//Power Button
	LEDControl( D28, LED_OFF );								//Initial Conditions for LED's and SSR's
	LEDControl( D29, LED_OFF );

	float32 Current;										//Output current setting
	float32 Current1;
	float32 c;
	Uint16 j;												//10x Current Value
	Uint16 k;												//placeholder for asssumed device current setting
	Uint32 BrainWaveStart;
	float32 MeasuredCurrent;
	char buffer[100];
	float32 i = 0;											//Device current setting
	float32 a;
	Uint16 HoldInputPort;

	EALLOW;
	GpioMuxRegs.GPAMUX.all			= 0;		//all pins are GPIO bits for now
	GpioMuxRegs.GPADIR.all			= 0xff;    	//all outputs
	GpioMuxRegs.GPAQUAL.all			= 0;		//Input qualifier disabled
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Power/Run encoder channel A
	GpioDataRegs.GPADAT.bit.GPIOA1 	= 0;		//Power/Run encoder channel B
	GpioDataRegs.GPADAT.bit.GPIOA2	= 0;		//Current encoder channel A
	GpioDataRegs.GPADAT.bit.GPIOA3 	= 0;		//Current encoder channel B
	GpioDataRegs.GPADAT.bit.GPIOA4	= 0;		//Power/Run push button
	GpioDataRegs.GPADAT.bit.GPIOA5 	= 0;		//Current push button
	GpioMuxRegs.GPAMUX.all			&= 0xFFC0;	//all pins are GPIO bits for now
	GpioMuxRegs.GPADIR.all			|= 0x003f;  //all outputs
	GpioMuxRegs.GPAQUAL.all			&= 0xFFC0;	//Input qualifier disabled
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Power/Run encoder channel A
	GpioDataRegs.GPADAT.bit.GPIOA1 	= 0;		//Power/Run encoder channel B
	GpioDataRegs.GPADAT.bit.GPIOA2	= 0;		//Current encoder channel A
	GpioDataRegs.GPADAT.bit.GPIOA3 	= 0;		//Current encoder channel B
	GpioDataRegs.GPADAT.bit.GPIOA4	= 0;		//Power/Run push button
	GpioDataRegs.GPADAT.bit.GPIOA5 	= 0;		//Current push button
	EDIS;

	SendCharUARTB( CLEAR_SCREEN );							// clear the interface screen
	SendStrUARTB("ESL ActivaDoseII Test System");
	SendStrUARTB("\n\r");
	SendStrUARTB("Waiting for device to turn on.");

	GpioDataRegs.GPADAT.bit.GPIOA4	= 1;
	DELAY_US(10000);
	GpioDataRegs.GPADAT.bit.GPIOA4	= 0;
	DELAY_US(2000000);

	STATUSCHECK = 1;

	while(1)
	{
		if(STATUSCHECK == 1)
		{

			LATCH_CONTROL_64BIT_PORT		= 1;						//flip latch bit to update input values
			DELAY_US(10);
			LATCH_CONTROL_64BIT_PORT		= 0;

			HoldInputPort = DIGITAL_IN1_PORT;							//check for digi in 1 pin high/low
			if(HoldInputPort & DIGI_IN1 == 1)
			{
				LEDControl(D29, LED_GREEN);								//Turn on Green LED to indicate awake
				SendCharUARTB(CLEAR_SCREEN);
				SendStrUARTB("Device is now awake!");
				SendStrUARTB("\n\rNow entering Setup Mode");
				i = 0;
				SETUPMODE = 1;											//Moves to SETUPMODE
				STATUSCHECK = 0;
				DELAY_US(2000000);
			}
			else														//Low Signal
			{
				LEDControl(D29, LED_RED);
				SendStrUARTB("\n\rDevice is not yet awake...");
				DELAY_US(2000000);
				STATUSCHECK = 1;										//Repeat STATUSCHECK
			}
		}


		else if(SETUPMODE == 1)
		{
			while(Current == 0)
			{
				SendCharUARTB(CLEAR_SCREEN);
				SendStrUARTB("Setup Mode");
				SendStrUARTB("\n\rEnter current setpoint in mA: ");
				parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
				if (buffer[0] == NULL)												//Enter without input asks for another input
				{
					Current = 0;
					SendStrUARTB("\n\rPlease enter a value!");
					DELAY_US(1000000);
				}
				else
				{
					Current = atof(&buffer[0]);										//Set Current to entered value
					if(!parseCheck || Current <= 0 || Current > 2)					//Check for input limits
					{
						SendStrUARTB("\n\rPlease enter a valid current value!");	//Invalid input asks for new input
						Current = 0;												//Sets current to zero
						DELAY_US(1000000);
					}
					else
					{
						Current = atof(&buffer[0]);									//Sets Current to entered value
						i = 10*(atof(&buffer[0]));									//creates new f32 that is 10x Curren
						sprintf(buffer, "%.1f", i);									//sends i to buffer
						k = (atoi(buffer));											//sets k to integer from buffer

						while(j!=k)													//check j against k, increment/decrement until equal
						{
						if(j < k)
						{
							j++;
							GpioDataRegs.GPADAT.bit.GPIOA2 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA3 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA2 = 0;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA3 = 0;
							DELAY_US(10000);
						}
						if(j > k)
						{
							j--;
							GpioDataRegs.GPADAT.bit.GPIOA3 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA2 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA3 = 0;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA2 = 0;
							DELAY_US(10000);
						}
						}
					}
				}
			}
			SendCharUARTB(CLEAR_SCREEN);
			sprintf(buffer, "Current has been set to: %.1fmA	(%d)", Current, j);
			SendStrUARTB(buffer);
			SendStrUARTB("\n\rDo you want to enter Run Mode? (y/n)");

			(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
			if (buffer[0] == 'Y' || buffer[0] == 'y')
			{
				SendStrUARTB("\n\rMoving to Run Mode");
				RUNMODE = 1;
				SETUPMODE = 0;
				GpioDataRegs.GPADAT.bit.GPIOA0 = 1;
				DELAY_US(10000);
				GpioDataRegs.GPADAT.bit.GPIOA1 = 1;
				DELAY_US(10000);
				GpioDataRegs.GPADAT.bit.GPIOA0 = 0;
				DELAY_US(10000);
				GpioDataRegs.GPADAT.bit.GPIOA1 = 0;
				DELAY_US(1000000);
			}
			if (buffer[0] == 'N' || buffer[0] == 'n')
			{
				SendStrUARTB("\n\rReturning to Setup Mode");
				Current = 0;
				DELAY_US(1000000);
			}
		}
		else if(RUNMODE == 1)
		{
			SendCharUARTB(CLEAR_SCREEN);
			SendStrUARTB("Run Mode");
			VoltagetoDAC(Current, DAC_CH2);
			a = ExternalADCReadStrainGauge(0, 1000, 80, 100, 2996.4, 1000, 0);
			sprintf(buffer, "%.1f", a);
			c = (atof(buffer));

			while(c == Current)
			{
				sprintf(buffer,"\n\rCurrent now operating at: %.1fmA", Current);
				SendStrUARTB(buffer);
				SendStrUARTB("\n\rEnter new setpoint in mA: ");
				parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
				if (buffer[0] == NULL)												//Enter without input asks for another input
				{
					Current = 0;
					SendStrUARTB("\n\rPlease enter a value!");
					DELAY_US(1000000);
				}
				else
				{
					Current = atof(&buffer[0]);										//Set Current to entered value
					if(!parseCheck || Current <= 0 || Current > 2)					//Check for input limits
					{
						SendStrUARTB("\n\rPlease enter a valid current value!");	//Invalid input asks for new input
						Current = 0;												//Sets current to zero
						DELAY_US(1000000);
					}
					else
					{
						Current = atof(&buffer[0]);									//Sets Current to entered value
						VoltagetoDAC(Current, DAC_CH2);
						i = 10*(atof(&buffer[0]));									//creates new f32 that is 10x Curren
						sprintf(buffer, "%.1f", i);									//sends i to buffer
						k = (atoi(buffer));											//sets k to integer from buffer

						while(j!=k)													//check j against k, increment/decrement until equal
						{
						if(j < k)
						{
							j++;
							GpioDataRegs.GPADAT.bit.GPIOA2 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA3 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA2 = 0;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA3 = 0;
							DELAY_US(10000);
						}
						if(j > k)
						{
							j--;
							GpioDataRegs.GPADAT.bit.GPIOA3 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA2 = 1;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA3 = 0;
							DELAY_US(10000);
							GpioDataRegs.GPADAT.bit.GPIOA2 = 0;
							DELAY_US(10000);
						}
						}
					}
				}
			}


			while(c != Current)
			{
				if(c < Current)
				{
					a = ExternalADCReadStrainGauge(0, 1000, 80, 100, 2996.4, 1000, 0);
					sprintf(buffer, "%.1f", a);
					c = (atof(buffer));
					SendCharUARTB(CLEAR_SCREEN);
					sprintf(buffer, "%f		%f		%f", a, c, Current);
					SendStrUARTB(buffer);
				}
				if(c > Current)
				{
					a = ExternalADCReadStrainGauge(0, 1000, 80, 100, 2996.4, 1000, 0);
					sprintf(buffer, "%.1f", a);
					c = (atof(buffer));
					SendCharUARTB(CLEAR_SCREEN);
					sprintf(buffer, "%f		%f		%f", a, c, Current);
					SendStrUARTB(buffer);
				}
				if(c == Current)
				{
					SendCharUARTB(CLEAR_SCREEN);
					SendStrUARTB("Current Achieved!");
					DELAY_US(1000000);
				}
			}

			SendCharUARTB(CLEAR_SCREEN);
			SendStrUARTB("Run Mode");
			sprintf(buffer, "Current is set to: %.1fmA", Current);
			SendStrUARTB(buffer);
			a = ExternalADCReadStrainGauge(0, 1000, 80, 100, 2996.4, 1000, 0);
			sprintf(buffer, "\n\rCurrent Measurement: %.1fmA", a);
			SendStrUARTB(buffer);
			SendStrUARTB("\n\nEnter a new current value and \npress ENTER to set a new current level:");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			Current1 = atof(&buffer[0]);
			if (buffer[0] == NULL)												//Enter without input asks for another input
			{
				SendStrUARTB("\n\rPlease enter a value!");
				DELAY_US(1000000);
			}
			if (buffer[0] == 'P' || buffer[0] == 'p')
			{
				SendCharUARTB(CLEAR_SCREEN);
				SendStrUARTB("Do you want to stop and return to setup mode? (y/n)");
				parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);

				if (buffer[0] == 'Y' || buffer[0] == 'y')												//Enter without input asks for another input
				{
					SendStrUARTB("\n\rReturning to Setup Mode!");
					i = 0;
					GpioDataRegs.GPADAT.bit.GPIOA5 	= 1;								//SSR3 on, output "closed"
					DELAY_US(100000);													//Delay
					GpioDataRegs.GPADAT.bit.GPIOA5 	= 0;
					RUNMODE = 0;
					SETUPMODE = 1;
					SendStrUARTB("\n\rStopping operation...");
					DELAY_US(1000000);
				}
				else if (buffer[0] == 'N' || buffer[0] == 'n')												//Enter without input asks for another input
				{
					SendStrUARTB("\n\rContinuing at previous setting!");
					DELAY_US(1000000);
					Current = Current;
					RUNMODE = 1;
				}
			}																//Set Current to entered value
			if(!parseCheck || Current1 > 2)									//Check for input limits
			{
				SendStrUARTB("\n\rCurrent has been set to MAX!");			//Invalid input asks for new input
				Current1 = 2;
				Current = Current1;
				DELAY_US(1000000);
			}
			if(!parseCheck || Current1 <= 0)
			{
				SendStrUARTB("\n\rCurrent has been set to Zero!\n\rReturning to Setup Mode");			//Invalid input asks for new input
				i = 0;
				GpioDataRegs.GPADAT.bit.GPIOA5 	= 1;								//SSR3 on, output "closed"
				DELAY_US(100000);													//Delay
				GpioDataRegs.GPADAT.bit.GPIOA5 	= 0;
				Current1 = 0;
				Current = Current1;
				SETUPMODE = 1;
				RUNMODE = 0;
				DELAY_US(1000000);
			}
			else
			{
				Current = Current1;
				i = 10*Current1;								//creates new f32 that is 10x Curren
				sprintf(buffer, "%.1f", i);									//sends i to buffer
				k = (atoi(buffer));											//sets k to integer from buffer

				while(j!=k)													//check j against k, increment/decrement until equal
				{
					if(j < k)
					{
						j++;
						GpioDataRegs.GPADAT.bit.GPIOA2 = 1;
						DELAY_US(10000);
						GpioDataRegs.GPADAT.bit.GPIOA3 = 1;
						DELAY_US(10000);
						GpioDataRegs.GPADAT.bit.GPIOA2 = 0;
						DELAY_US(10000);
						GpioDataRegs.GPADAT.bit.GPIOA3 = 0;
						DELAY_US(10000);

					}
					if(j > k)
					{
						j--;
						GpioDataRegs.GPADAT.bit.GPIOA3 = 1;
						DELAY_US(10000);
						GpioDataRegs.GPADAT.bit.GPIOA2 = 1;
						DELAY_US(10000);
						GpioDataRegs.GPADAT.bit.GPIOA3 = 0;
						DELAY_US(10000);
						GpioDataRegs.GPADAT.bit.GPIOA2 = 0;
						DELAY_US(10000);
					}
				}
			}
		}
		else if(FAULTMODE == 1)
		{
			SendCharUARTB(CLEAR_SCREEN);
			SendStrUARTB("YOU DUN BROKED IT!");
			SendStrUARTB("\n\rpress enter to reset");
			waitFor(ENTER, UARTB);
			FAULTMODE = 0;
			STATUSCHECK = 1;
			GpioDataRegs.GPADAT.bit.GPIOA4	= 1;
			DELAY_US(10000);
			GpioDataRegs.GPADAT.bit.GPIOA4	= 0;
			DELAY_US(2000000);
			GpioDataRegs.GPADAT.bit.GPIOA4	= 1;
			DELAY_US(10000);
			GpioDataRegs.GPADAT.bit.GPIOA4	= 0;
			DELAY_US(100000);
		}
	}*/
	//Clear out the shared variables between comm and the app
	//ExchangeInit();
	//ExchangeSetSystemInfo( &SystemInfo );						//Tell the exchange how the board is configured

	//CheckCalibrationParams(&SystemInfo);						//Commented out till we deal with board calibration being stored in flash
	//LEDControl(D29, LED_GREEN);	//product startup
	//VoltagetoDAC(0, DAC_ALL);									// make sure all analog outputs are 0'd
	//SSROutputsOff(SSR1);										// explicitly disable the motor
	//DELAY_US(DELAY_AFTER_MOTOR_ENABLE_US);
	//SSROutputsOff(SSR2);										// and make sure the motor controller is in torque mode (the SSR for velocity mode is off)
	//DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);

	BrainWaveStateMachine();

	if(IsButtonPressed(SW2) == FALSE)							// if SW2 is NOT pressed on reset, user desires to run the code without a user interface
	{
		InitCommFirmware();										// set up queues, uarts, comm state machines, etc
		SetUpTimer2Interrupts();								// start the 2kHz interrupt on Timer2
		//TwisterBrakeStateMachine(FALSE);						// run the user interface function in non-display mode
	}
	else														// otherwise, run the spring/shock absorber code as normal
	{
		PrintSystemInfoString();								// display system info before launching actual UI,
		SendStrUARTB("\n\n    >Press Enter to continue: ");
		waitFor(ENTER, UARTB);
		SetUpTimer2Interrupts();								// start the 2kHz interrupt on Timer2
		//TwisterBrakeStateMachine(TRUE);							// run the user interface in display mode
	}
}
//! Initialization function for the SystemInfo structure
//! @param *SystemInfoPtr		Pointer to a structure that contains information about the Hardware Class, Product Class, Code Revision Number, and Board Serial Number
void InitSystemInfo( SystemInfoStruct *SystemInfoPtr )
{
	// Declare variables
	Uint16 ROM[8];
	Uint16 CRCGood;
	Uint16 i;
	Uint64 DallasSerialNumber;
	Uint64 thisElement;
	Uint16 HoldJumper;

	// Extract the board's ROM code from the Dallas temperature sensor
	resetPresent(TEMPSENSOR);

	DallasSerialNumber = 0L;									// technically not needed since we shift out the previous contents, but still nice to do
	CRCGood = readROM(&ROM[0], TEMPSENSOR);

	//If we get a bad read, make sure the results are zero, but continue on
	if( CRCGood == FALSE )
	{
		//Zero the result area
		ClearSerialNumberArray( ROM );
		//FatalError( FATAL_ERROR_INVALID_CONFIG, 0 );	//$$$should we crash in this case?
	}

	for (i = 0; i < sizeof(ROM); i++)							// iterates over each element of the data, starting with the lowest
	{
		SystemInfoPtr->DallasSerialBytes[i] = ROM[i];			//get the serial number as bytes for comm

		thisElement = (Uint64)(ROM[i]) & 0x00000000000000FF;								// cast the Uint16 ROM element to a Uint64, and mask off all but the lowest 8 bits
		thisElement = thisElement << (i*8);													// shift the 8 lowest bits to their appropriate position in the Uint64
		DallasSerialNumber += thisElement;													// add those new 8 bits to the running total
	}

	SystemInfoPtr->DallasSerialNumber = DallasSerialNumber;									// and assign the formatted serial number

	//Now set up other info about our product
	HoldJumper = IsStarboardJumperInstalled();
	SystemInfoPtr->IsStarboardJumperInstalled = HoldJumper;

	SystemInfoPtr->HardwareClass	= THIS_SYSTEM_HARDWARE_CLASS;
	SystemInfoPtr->HardwareRev		= THIS_SYSTEM_HARDWARE_REV;
	SystemInfoPtr->ProductClass		= THIS_SYSTEM_PRODUCT_CLASS;
	SystemInfoPtr->RevisionNumber	= THIS_SYSTEM_REVISION_NUMBER;
	//copy over the text representation of the rev. This will be replaced by printing out the rev number later.
	strcpy( &(SystemInfoPtr->RevisionNumberString[0] ), THIS_SYSTEM_REVISION_NUMBER_STRING );
}

//! Check that the calibration parameters (right now just the ADC) are correct for this particular board
//! @param *SystemInfoPtr		Pointer to a structure that contains information about the Hardware Class, Product Class, Code Revision Number, and Board Serial Number
void CheckCalibrationParams( SystemInfoStruct *SystemInfoPtr )
{
	// if the hard-coded serial number associated with the ADC parameters does not match the serial number that was just read, simply throw an error
	if (ThisBoardsADCParams.dallasSerialNumberForTheseParameters != SystemInfoPtr->DallasSerialNumber)
	{
		FatalError( FATAL_ERROR_INVALID_CONFIG, 0 );
	}

}









/*
void StoreADCNow( void )
{

	if (CanTakeData)
	{
		ADCData[SampleIndex].ThisADCReading = ExternalADCReadStrainGauge(0, 1000, 80, 100, 2996.4, 10, 0);
		SampleIndex++;																											// and each time a data point is stored at the current sample index, increment it
	}

	if (SampleIndex >= MAX_SAMPLE)																						// if we've somehow stored the maximum number of data points
	{
		CanTakeData = FALSE;																											// shut off the ability to take data (which is turned on again once
	}																																					// the array is cleared and the count is reset)
	else																																				// otherwise,
	{
		CanTakeData = TRUE;																												// assert this permission flag to remain on
	}
}*/

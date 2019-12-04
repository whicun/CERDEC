/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2018-04-13 13:15:54 -0400 (Fri, 13 Apr 2018) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/TwisterBrake.c $ URL of repository
 *
 * $Rev:: 3092                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */
/*
#include "ProjectInclude.h"

//! @file
//! This file contains the code that executes the water-twister/brake behavior in the Kollmorgen motor

// Initialize the data storage array and one global
#pragma DATA_SECTION(TwisterBrakeData,"ExternMem");
TwisterBrakeInfoStruct TwisterBrakeData[MAX_NUMBER_OF_SAMPLES];

#pragma DATA_SECTION(RetractData,"ExternMem");
RetractInfoStruct RetractData[RETRACT_MAX_SAMPLES];

//Comm data buffer for sending data back
#pragma DATA_SECTION(AppCommDataBuffer,"ExternMem");
Uint16 AppCommDataBuffer[CHARS_IN_EACH_TX_QUEUE];

SourceOfParameters WhereDidOpParamsComeFrom = UNKNOWN;

//! This is the main user interface function. It makes the Kollmorgen motor behave like the water-twister-brake combined system, with variable (and some user-defined) physical parameters.

//! This function first initializes its required variables and functions, and then enters into a state machine that is only exited from within (i.e. not with interrupts).
//! If in user-interface/display mode, the state machine prompts the user through UARTB (assumed connected to a computer where Putty or some other serial comm program is
//! running) to get physical and system characteristics, and then gives an action menu. If in standalone mode, the state machine immediately starts executing the
//! water-twister/brake behavior, using parameters from flash memory or hardcoded defaults.
//! @param	isDisplayMode	Designates whether to run as water-twister/brake with preexisting parameters (FALSE), or execute the full user-interface (TRUE)
void TwisterBrakeStateMachine( boolean isDisplayMode )
{
	// Declare and initialize the four parameter structures to default values
	OperatingParameters		OperatingParameters;								// Defines how the system is set up
	CurrentConditionsStruct	CurrentConditions;									// Describes the current (and some past) physical state of the system
	TwisterFailureStruct	TwisterParameters;									// Defines the water twister failure mode and associated parameters
	BrakeParametersStruct	BrakeParameters;									// Defines the brake failure mode and associated parameters
	CommMessageToAppType	CommMessageToApp;									// signal from comm processor. Allows leaving standby state, and can shut down the app.

	// State machine variables
	boolean continueRunning;													// UI only continues running while this is true
	boolean enterParametersMode;												// if true, loop (re-)takes parameters; if false, skip right to potential run
	boolean	DidMotorEnable;														//Did the Kollmorgen come online when commanded to?
	boolean FlashProgramStatus;

	// Variables for taking user input
	char16 buffer[100];															// buffer for parsing user input
	keyName userControlInput;													// once user has entered parameters, this stores their button responses (SPACEBAR, ESCAPE, BACKSPACE, or ENTER)

	//Comm variables
	Uint16	LastDecimationFactor;												//when it changes, we have to redo the header info, so keep track of it
	Uint16	ThisDecimationFactor;

	continueRunning	= TRUE;
	userControlInput = NULLKEY;

	//Set up default parameters
	DefaultOpParams(		&OperatingParameters);
	DefaultConditions(		&CurrentConditions);
	DefaultTwisterParams(	&TwisterParameters);
	DefaultBrakeParams(		&BrakeParameters);

	// Setup timer, data structure, flash sector, and associated variables
	SetupTwisterBrakePeripherals(&CurrentConditions);
	//set up Flash programming code
	InitFlashAPI();

#if 0
	float32 angularVelocityOutRevPS = 0;
	float32 voltageOutputForVelocityV = 0;
	Uint16 i = 0;

	TryToEnableMotorController( TRY_TO_ENABLE_A_FEW_TIMES );

	// Prompt the user to make sure cable is sufficiently extended
	SendCharUARTB(CLEAR_SCREEN);
	SendStrUARTB("Press ENTER when cable has been extended sufficiently for test: ");
	waitFor(ENTER, UARTB);
	SendStrUARTB("\nExecuting test.\n");

	// Zero the torque and delay, to emulate the post-run, pre-retract wait state
	CurrentConditions.thisDesiredNetTorqueNm = 0;
	OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);
	DELAY_US(3000000);

	// Transition to velocity mode as is done at the beginning of retract
	VoltagetoDAC(0, OperatingParameters.structure.DACchannel);
	SSROutputsOn(SSR_FOR_VELOCITY_MODE);
	DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);

	// And force a velocity of 0
	angularVelocityOutRevPS = 0;
	voltageOutputForVelocityV = angularVelocityOutRevPS / VOLTS_TO_REVPS;
	VoltagetoDAC(voltageOutputForVelocityV, OperatingParameters.structure.DACchannel);

	// Alternate between a period of zero-torque and slow velocity for 10 iterations
	for (i = 0; i < 14; i++)
	{
		// output the slow velocity for 2 seconds
		angularVelocityOutRevPS = 1;
		voltageOutputForVelocityV = angularVelocityOutRevPS / VOLTS_TO_REVPS;
		VoltagetoDAC(voltageOutputForVelocityV, OperatingParameters.structure.DACchannel);

		DELAY_US(2000000);

		// transition to torque mode
		angularVelocityOutRevPS = 0;
		voltageOutputForVelocityV = angularVelocityOutRevPS / VOLTS_TO_REVPS;
		VoltagetoDAC(voltageOutputForVelocityV, OperatingParameters.structure.DACchannel);

		SSROutputsOff(SSR_FOR_VELOCITY_MODE);
		DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);

		// output a zero-torque for 1 second
		CurrentConditions.thisDesiredNetTorqueNm = 0;
		OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);
		DELAY_US(1000000);

		// transition to velocity mode
		VoltagetoDAC(0, OperatingParameters.structure.DACchannel);

		SSROutputsOn(SSR_FOR_VELOCITY_MODE);
		DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);
	}
#endif

#if 0
//MUSA-TEMPORARY
	boolean	IsMotorOnline;														// Did the motor go enabled when it should have?
	Uint32 timeToStayHighUs;
	float32 desiredTorque;

	SendCharUARTB(CLEAR_SCREEN);

	SendStrUARTB("Water Twister starting up in Musa's Test Mode.\n");

	InitTwisterBrake(&OperatingParameters, &CurrentConditions, &TwisterParameters, &BrakeParameters);	// clear the data structure and initialize the timer and quadrature variables, and enable the motor

	SendStrUARTB("\nEnter desired wait time in s: ");
	(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
	timeToStayHighUs = (Uint32)(atof(&buffer[0]) * 1000000);

	if (timeToStayHighUs > 10000000)
	{
		timeToStayHighUs = 10000000;
		SendStrUARTB("\nTime limited to 10s. Press ENTER to continue.");
		waitFor(ENTER, UARTB);
	}

	SendStrUARTB("\nEnter desired torque in Nm: ");
	(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
	desiredTorque = atof(&buffer[0]);

	if (desiredTorque < 0)
	{
		desiredTorque *= -1;
		SendStrUARTB("\nTorque input was negated. Press ENTER to continue.");
		waitFor(ENTER, UARTB);
	}

	if (desiredTorque > 2.0)
	{
		desiredTorque = 2.0;
		SendStrUARTB("\nTorque limited to 2Nm. Press ENTER to continue.");
		waitFor(ENTER, UARTB);
	}

	StopCpuTimer0();															// Stop the sample timer while we wait for motors to enable
	IsMotorOnline = TryToEnableMotorController( TRY_TO_ENABLE_A_FEW_TIMES );	// Try to bring motor online and see if it worked
	CurrentConditions.isMotorControllerReady = IsMotorOnline;						// Store it for future reference
	StartCpuTimer0();															// start the timebase for samples running again

	if (IsMotorOnline)
	{
		SendStrUARTB("\nMotor enabled.");
	}
	else
	{
		SendStrUARTB("\nMotor failed to enable. Press ENTER to continue the run without actual motor operation.");
		waitFor(ENTER, UARTB);
	}

	CurrentConditions.thisDesiredNetTorqueNm = 0;
	OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);

	SendStrUARTB("\nPress ENTER once the cable is unspooled enough to accomodate retraction-direction torquing: ");
	waitFor(ENTER, UARTB);

	ResetQuadratureCountA();

	SendStrUARTB("Musa Test Mode is running.\n");

	CurrentConditions.timerStartingValue = ReadTimer0Clean();																// the starting value, for taking a difference

	while((CurrentConditions.timerStartingValue - ReadTimer0Clean()) < MUSA_TIME_TO_STEP_UP_US)
	{
		if (CheckTimer2ISRFlag() == TRUE)
		{
			UpdateKinematicVariables(&OperatingParameters, &CurrentConditions);												// update time and rotational position histories, and recalculate angular velocity over last x# of points

			CurrentConditions.thisDesiredNetTorqueNm = 0;
			OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);

			StoreDataPointNow(&OperatingParameters, &CurrentConditions, &TwisterParameters, &BrakeParameters);							// record a data point
		}
	}
	while((CurrentConditions.timerStartingValue - ReadTimer0Clean()) < (MUSA_TIME_TO_STEP_UP_US + timeToStayHighUs))
	{
		if (CheckTimer2ISRFlag() == TRUE)
		{
			UpdateKinematicVariables(&OperatingParameters, &CurrentConditions);												// update time and rotational position histories, and recalculate angular velocity over last x# of points

			CurrentConditions.thisDesiredNetTorqueNm = desiredTorque;
			OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);

			StoreDataPointNow(&OperatingParameters, &CurrentConditions, &TwisterParameters, &BrakeParameters);							// record a data point
		}
	}

	CurrentConditions.thisDesiredNetTorqueNm = 0;															// output a torque of 0 to the DAC, to stop further motion
	OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);

	DumpData(&OperatingParameters, &CurrentConditions, &BrakeParameters, &TwisterParameters);		// and output all the data via UARTB
	while(1){};
//MUSA-TEMPORARY
#endif

#if 0
// TORQUE SENSOR TEMPORARY
	boolean	IsMotorOnline;														// Did the motor go enabled when it should have?
	Uint16 Sensor;
	float32 sensorNm = 0;
	Uint16 i;
	float32 userTorqueSetting = 0;

	InitTwisterBrake(&OperatingParameters, &CurrentConditions, &TwisterParameters, &BrakeParameters);	// clear the data structure and initialize the timer and quadrature variables, and enable the motor

	StopCpuTimer0();															// Stop the sample timer while we wait for motors to enable
	IsMotorOnline = TryToEnableMotorController( TRY_TO_ENABLE_A_FEW_TIMES );	// Try to bring motor online and see if it worked
	CurrentConditions.isMotorControllerReady = IsMotorOnline;						// Store it for future reference
	StartCpuTimer0();															// start the timebase for samples running again

	CurrentConditions.thisDesiredNetTorqueNm = userTorqueSetting;
	OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);

	while( TRUE )
	{
		SendCharUARTB(CLEAR_SCREEN);

		i = UARTBRxBuff;
		SendStrUARTB("Torque sensor user interface:\n\t(Press any key to enter a new torque output)\n\n");

		while( UARTBRxReady == 0 )
		{
			userTorqueSetting = CurrentConditions.thisDesiredNetTorqueNm;
			Sensor = SampleAndAverageInternalADC((Uint16)TwisterTorqueSensor, ADC_SAMPLES_FOR_TORQUE);
			sensorNm = ReadTorqueSensorInNm(&OperatingParameters, TwisterTorqueSensor);
			sprintf(buffer, "Torque setting: %.2fNm; Sensor ADC reading: %d, Torque reading: %.2fNm\n", userTorqueSetting, Sensor, sensorNm);
			SendStrUARTB(buffer);
			DELAY_US(1000000);
		}

		i = UARTBRxBuff;

		SendStrUARTB("Enter desired torque: ");
		(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
		userTorqueSetting = atof(&buffer[0]);
		CurrentConditions.thisDesiredNetTorqueNm = userTorqueSetting;
		OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);
	}
// TORQUE SENSOR TEMPORARY
#endif


	//-----------------------------------------------------------------------------
	//-----Water-Twister/Brake state machine, assuming a serial user interface-----
	//-----------------------------------------------------------------------------
	if (isDisplayMode)
	{
		//NOTE - if NUMBER_OF_UART_CHANNELS is set to 2, this code might not work because the comm baud rate is different that the user interface rate.
		//Set it to 1 for user interface mode.
		SendCharUARTB( CLEAR_SCREEN );																					// clear the interface screen
		SendStrUARTB("Water Twister starting up in user interface mode. Version ");
		SendStrUARTB(THIS_SYSTEM_REVISION_NUMBER_STRING);
		SendStrUARTB("\n");
		SendStrUARTB("Waiting for motor to enable.");

		SSROutputsOff(SSR2);																			// Make sure it's in torque mode
		DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);

		DidMotorEnable = TryToEnableMotorController( TRY_TO_ENABLE_MOTOR_A_FEW_TIMES );									//try to enable the motor

		//if the motor enabled, turn on a green light
		if( DidMotorEnable == TRUE )
		{
			LEDControl(D29, LED_GREEN);																					// once the motor is enabled, return the power LED to green
			LEDControl(D28, LED_OFF);																					// and turn the other one off
		}
		else
		{
			SendStrUARTB("\n\n      *** MOTOR DID NOT COME ONLINE ***\n\n");
		}

		enterParametersMode = TRUE;																						// make sure the state machine jumps directly into EnterParametersMode

		while(continueRunning)																							// keep iterating through this user-interface state machine until user indicates otherwise
		{
			if (enterParametersMode)																					// start off entering parameters, and then repeat this only if the user indicates it from the main menu
			{
				ParametersModeIntro(&CurrentConditions);																// display introductory messages, clear the data structure, and zero all DAC outputs

				SendStrUARTB("\n\n     Would you like to recall parameters from flash memory?");						// allow the user to decide whether to just recall stored parameters
				SendStrUARTB(" (y/anything else): ");
				(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
				if (buffer[0] == 'Y' || buffer[0] == 'y')																// if they indicated yes,
				{
					GetOpParamsFromFlash(&OperatingParameters);															// call a function to obtain the parameters from flash (which loads defaults if flash read fails)
				}
				else
				{
					SendStrUARTB("\n\n     Would you like to enter ");													// allow the user to decide whether to enter all parameters or just essential ones
					SendStrUARTB("all parameters? (y/anything else): ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					if (buffer[0] == 'Y' || buffer[0] == 'y')															// if they indicated yes, go through the whole user-input list
					{
						GetNonEssentialUserInputs(&OperatingParameters);						// get DAC channel, quad resolution, [N/A], [A/V], v-tolerance, F-tolerance, and mapping for load cell input and demand output

						SendStrUARTB("\n\n     Would you like to calibrate the");
						SendStrUARTB(" motor? (y/anything else): ");													// sometimes not actually connected to motor (so don't want to calibrate)
						(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
						if (buffer[0] == 'Y' || buffer[0] == 'y')														// if they indicated yes,
						{
							CalibrateMotor(&OperatingParameters, &CurrentConditions);									// call function to execute calibration(s)
						}
						else																							// otherwise reload the default value
						{
							OperatingParameters.structure.quadConstant = -1;
						}
					}
					else																								// if the user doesn't want to enter all of that
					{
						DefaultOpParams(&OperatingParameters);															// just load default values
						DefaultConditions(&CurrentConditions);
						DefaultTwisterParams(&TwisterParameters);
						DefaultBrakeParams(&BrakeParameters);
					}

					GetEssentialUserInputs(&OperatingParameters, &TwisterParameters, &BrakeParameters);					// no matter what, k and the failure modes need to be entered explicitly

					SendStrUARTB("\n\n     Would you like to store these ");											// allow the user to decide whether to store these parameters into non-volatile memory for use in future runs
					SendStrUARTB("parameters to flash? (y/anything else): ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					if (buffer[0] == 'Y' || buffer[0] == 'y')															// if they indicated yes,
					{
						//enable following line to force CRC to change
						//OperatingParameters.structure.spareVariableEight = 1; // **************make CRC be different**************
						SendStrUARTB("\nStoring to flash...");
						FlashProgramStatus = SaveOpParamsToFlash(&OperatingParameters);			// save the present state of the parameters structure to flash
						if( FlashProgramStatus == TRUE )
						{
							SendStrUARTB(" Done! Press return to continue.\n");
						}
						else
						{
							SendStrUARTB(" *** FAILED ***. Press return to continue\n");
						}
						waitFor(ENTER, UARTB);	//let the user see the result of the flash operation
					}																									// otherwise, do nothing else
				}

				enterParametersMode = FALSE;																			// after, move to main menu to allow running, outputting data, etc
				continueRunning = TRUE;																					// but reassert continued operation of UI
			}
			else
			{
				userControlInput = MainMenuWaitForKey();																// print the main menu and wait for a user input key

				//-----SPACEBAR = RUN-----
				if (userControlInput == SPACEBAR)
				{
					// first make sure the motor is enabled (if a retraction happened after the last reset, it means it will be disabled at this point)
					if (GetAlteraPortImage() & (SSR1 << 4))												// if that bit is high, it means the motor is disabled
					{
						SSROutputsOn(SSR1);																// so enable it
						DELAY_US(DELAY_AFTER_MOTOR_ENABLE_US);																// and wait the delay

						SendStrUARTB("Waiting for motor to enable...");
#if 1
						while (!(DIG_ISO_IN_PORT & DIG_ISO_FOR_MOTOR_READY))											// read the digital input corresponding to the motor-ready signal
						{
							SSROutputsOff(SSR1);														// if it's not high, cycle the motor enable
							DELAY_US(DELAY_AFTER_MOTOR_DISABLE_US);
							LEDControl(D28, LED_RED);																	// while waiting for the signal to go high, keep both LEDs in red faulted state
							LEDControl(D29, LED_RED);																	// (which will remain if motor doesn't enable)
							SSROutputsOn(SSR1);															// retry enabling the motor
							DELAY_US(DELAY_AFTER_MOTOR_ENABLE_US);															// and give it some time to try
						}
#endif
						DeleteCharsUARTB(30);																			// clear the "Waiting for..." line

						LEDControl(D29, LED_GREEN);																		// once the motor is enabled, return the power LED to green
						LEDControl(D28, LED_OFF);																		// and turn the other one off
					}																									// otherwise it's already enabled, so do nothing

					SendStrUARTB("Executing desired behavior. Press any key to stop.");									// message to user
					// **********************************************************************************************
					// **********************************************************************************************
					// **********************************************************************************************
					// ***********THIS IS WHERE THE WATER TWISTER ACTUALLY RUNS in user interface mode***************
					// **********************************************************************************************
					// **********************************************************************************************
					// **********************************************************************************************
					InitTwisterBrake(&OperatingParameters, &CurrentConditions, &TwisterParameters, &BrakeParameters);	// clear the data structure and initialize the timer and quadrature variables, and enable the motor
					RunLikeATwisterBrake(&OperatingParameters, &CurrentConditions, &TwisterParameters, &BrakeParameters, isDisplayMode);												// interrupt-driven code: stores data, calculates and outputs torque, and outputs

					DeleteCharsUARTB(50);																				// clear the "Executing desired behavior..." line

					CurrentConditions.retractionHappened = FALSE;														// now that twister/brake behavior has taken place, a retraction is allowed to happen again

					enterParametersMode = FALSE;																		// just return to the main menu
					continueRunning = TRUE;
				}
				//-----ENTER = OUTPUT DATA-----
				else if (userControlInput == ENTER)
				{
					DumpData(&OperatingParameters, &CurrentConditions, &BrakeParameters, &TwisterParameters);			// call function to output the data in an ordered fashion over UARTB

					enterParametersMode = FALSE;																		// just return to the main menu
					continueRunning = TRUE;
				}
				//-----BACKSPACE = RE-ENTER PARAMETERS-----
				else if (userControlInput == BACKSPACE)
				{
					CurrentConditions.thisDesiredNetTorqueNm = 0;														// output a torque of 0 to the DAC, to stop further motion
					OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);

					enterParametersMode = TRUE;																			// with BACKSPACE, go back to user parameter-entering in next iteration
					continueRunning = TRUE;																				// but reinforce running state
				}
				//-----TAB = RETRACT CABLE-----
				else if (userControlInput == TAB)
				{
					SendStrUARTB("Retracting cable.");																	// message to user

					CurrentConditions.thisDesiredNetTorqueNm = 0;
					OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);									// output a torque of 0 to the DAC, to stop further motion

					RetractCable(&OperatingParameters, &CurrentConditions, &TwisterParameters);												// and retract the cable, which also disables the motor

					DeleteCharsUARTB(17);																				// clear the "Retracting..." line

					enterParametersMode = TRUE;
					continueRunning = TRUE;
				}
				//-----e = TOGGLE MOTOR ENABLE-----
				else if (userControlInput == e)
				{
					if (GetAlteraPortImage() & (SSR1 << 4))												// if that bit is high, it means the motor is disabled
					{
						SSROutputsOn(SSR1);																// so enable it
						DELAY_US(DELAY_AFTER_MOTOR_ENABLE_US);																// and wait half a second

						SendStrUARTB("Waiting for motor to enable...");

						while (!(DIG_ISO_IN_PORT & DIG_ISO_FOR_MOTOR_READY))											// read the digital input corresponding to the motor-ready signal
						{
							SSROutputsOff(SSR1);														// if it's not high, cycle the motor enable
							DELAY_US(DELAY_AFTER_MOTOR_DISABLE_US);
							LEDControl(D28, LED_RED);																	// while waiting for the signal to go high, keep both LEDs in red faulted state
							LEDControl(D29, LED_RED);																	// (which will remain if motor doesn't enable)
							SSROutputsOn(SSR1);															// retry enabling the motor
							DELAY_US(DELAY_AFTER_MOTOR_ENABLE_US);															// and give it some time to try
						}

						DeleteCharsUARTB(30);																			// clear the "Waiting for..." line

						LEDControl(D29, LED_GREEN);																		// once the motor is enabled, return the power LED to green
						LEDControl(D28, LED_OFF);																		// and turn the other one off
					}
					else																								// otherwise,
					{
						SSROutputsOff(SSR1);															// the motor is enabled so disable it
						DELAY_US(DELAY_AFTER_MOTOR_DISABLE_US);
					}

					enterParametersMode = FALSE;																		// just return to the main menu
					continueRunning = TRUE;
				}
				//-----v = TOGGLE VELOCITY/TORQUE MODE-----
				else if (userControlInput == v)
				{
					if (GetAlteraPortImage() & (SSR2 << 4))											// if that bit is high, it means the motor is in torque mode
					{
						SSROutputsOn(SSR2);															// so turn it to velocity mode
						DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);
					}
					else																								// otherwise,
					{
						SSROutputsOff(SSR2);															// the motor is in velocity mode so turn it to torque mode
						DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);
					}

					enterParametersMode = FALSE;																		// just return to the main menu
					continueRunning = TRUE;
				}
				//-----ESCAPE = EXIT-----
				else
				{
					CurrentConditions.thisDesiredNetTorqueNm = 0;														// output a torque of 0 to the DAC, to stop further motion
					OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);
					SSROutputsOff(SSR1);																// turn off the SSR tied to the digital motor enable line
					DELAY_US(DELAY_AFTER_MOTOR_DISABLE_US);

					continueRunning = FALSE;																			// if they press ESCAPE, exit the big while loop state machine
				}
			}
		}
	}
	//----------------------------------------------------------------------
	//-----Water-Twister/Brake state machine running in standalone mode-----
	//----------------------------------------------------------------------
	else
	{
		//This printing is a little dicey, because in the 2 uart comm version (brake port enabled), it will go out over the brake fiber, not as packetized data but as garbage data.
		//So only print it to the console if we are using 1 comm channel and the other is free for debug messages.
		#if NUMBER_OF_UART_CHANNELS == 1
			SendStrUARTB("Water Twister starting up in standalone mode. Version ");
			SendStrUARTB(THIS_SYSTEM_REVISION_NUMBER_STRING);
			SendStrUARTB("\n");
		#endif
		
		GetOpParamsFromFlash(			&OperatingParameters );												// recall operating parameters from flash; if there is an error, the function automatically loads defaults
		ExchangeSetAllOperatingParams(	&OperatingParameters,						&TwisterParameters );	//put the operating parameters in the exchange area where comm can modify them if desired
		InitTwisterBrake(				&OperatingParameters, &CurrentConditions,	&TwisterParameters, &BrakeParameters);	// clear the data structure and initialize the timer and quadrature variables, and enable the motor

		// **********************************************************************************************
		// **********************************************************************************************
		// **********************************************************************************************
		// ************THIS IS WHERE THE WATER TWISTER ACTUALLY RUNS in standalone/comm mode*************
		// **********************************************************************************************
		// **********************************************************************************************
		// **********************************************************************************************
		//The next function starts out with calls to Comm that allow comm to set up operating parameters
		RunLikeATwisterBrake(			&OperatingParameters, &CurrentConditions, &TwisterParameters, &BrakeParameters, isDisplayMode);	// interrupt-driven code: stores data, calculates and outputs torque, and outputs

		//When we get here, the water twister behavior has ended and the motor is turned off.
		//This can be caused by the user pressing SW3 or by a stop command received over comm.
		//Control does not come here when memory fills up, it stays running till SW3 or stop command.

		//Output a torque of 0 to the DAC, to stop further motion (already has been done in twister routine but can't hurt)
		CurrentConditions.thisDesiredNetTorqueNm = 0;
		OutputTorqueAsVoltage(&OperatingParameters, &CurrentConditions);

		//Regardless of how the data will or will not be delivered, put us into data download state, and prepare info about the run in case it's needed
		//Keep track of what the last decimation factor was, because when it changes we need a new header
		ThisDecimationFactor = LastDecimationFactor = ExchangeGetDecimationFactor();
		//Make sure the decimation info gets updated at least once by making the old factor different from the new one
		LastDecimationFactor++;
		//Build the text string showing all the run parameters, and build the info about the download in case comm download is requested
		DumpDataMakeSettingsInfo( &OperatingParameters, &CurrentConditions, &BrakeParameters, &TwisterParameters );

		//Tell it to stay in download state in the comm handler
		ExchangeSetAppRunState( StayInDownloadState );
		CommMessageToApp = ExchangeGetAppRunState();	//comm sets the run state in the exchange area, and we need to have it

		//We have to allow for manual retract and manual data dump, and manual dump of retract data.
		//We also have to allow for data dump over comm if the jumper is installed.
		//Stay in this loop forever, but once retraction happens once, it can't be triggered again.
		//You can pull out the data dump jumper and switch to manual mode while the dump is running, if desired
		while( TRUE )
		{
			//Is the user requesting a manual retract?
			if( IsButtonPressed(SW2) == TRUE )																	// If SW2 is pressed user is requesting a retract
			{
				WaitForButtonPressAndRelease( SW2 );															// wait until it is released
				//This call won't return till retract is complete, and the user hit SW2 to end the retract cycle
				RetractCable(&OperatingParameters, &CurrentConditions, &TwisterParameters);											// and retract the cable (changing the state of the retractionHappened flag so this isn't serviced again
				// the motor was disabled in RetractCable()
			}
			//Is comm requesting a retract?
			if( ExchangeGetRetractionFlag() == TRUE )														// If we have been sent a retraction command we are doing a retract
			{
				RetractCable(&OperatingParameters, &CurrentConditions, &TwisterParameters);											// and retract the cable (changing the state of the retractionHappened flag so this isn't serviced again
				//Just to be safe, kill the flag once we've used it, even though the retraction code prevents a second call.
				ExchangeSetRetractionFlag( FALSE );
				// the motor was disabled in RetractCable()
			}
			//Is user requesting a manual data dump?
			if( IsButtonPressed(SW3) == TRUE)																// If SW3 is pressed,
			{
				//user can request dumping of data as many times as wanted.
				//SW3 also stops data dump and returns here, to allow for aborting and restarting a data dump
				//Board will be offline during the manual dump - will not be running comm till done
				WaitForButtonPressAndRelease( SW3 );															// wait until it is released
				DumpData(&OperatingParameters, &CurrentConditions, &BrakeParameters, &TwisterParameters);		// and output all the data via UARTB - can be stopped by pressing sw3 again
			}
			//Is board set up to do download over comm? If so, let comm run.
			//You can pull out the comm jumper and do a manual data dump with sw3
			if( IsDataDumpOverCommJumperInstalled() == TRUE )
			{
				//Let comm tell us what to do
				CommMessageToApp = DoCommStuff( &OperatingParameters, &CurrentConditions, &TwisterParameters, CommMessageToApp ); //comm looks at current state to know how to react

				//Did comm just change the decimation factor? We have to update the header in that case.
				ThisDecimationFactor = ExchangeGetDecimationFactor();
				if( ThisDecimationFactor != LastDecimationFactor )
				{
					//Rebuild the text string showing all the run parameters, and build the info about the download in case comm download is requested
					DumpDataMakeSettingsInfo( &OperatingParameters, &CurrentConditions, &BrakeParameters, &TwisterParameters );
					//make it only happen on the transition
					LastDecimationFactor = ThisDecimationFactor;
				}
			}
		}
	}
}

//! Initialize the structure of operating parameters to default values, including a fresh CRC calculation
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
void DefaultOpParams( OperatingParameters *OpParamsPtr )
{
	// Security keyword
	OpParamsPtr->structure.securityKey = WTB_OP_PARAMS_SECURITY_KEY;													// used as the first step in verifying this structure, when it is read from Flash

	// Parameter set ID tag
	OpParamsPtr->structure.parameterIDTag = 0;																			// ID tag number for a specific set of parameters, assigned by the master Dev2 controller board

	// User-input parameters
	OpParamsPtr->structure.DACchannel = DACCHANNELDEFAULT;																// analog channel over which the ProD communicates with the motor
	OpParamsPtr->structure.DACVoltagesNowIndex = DACVOLTAGESNOWINDEXDEFAULT;											// index into the global DAC state variable, for defined channel
	OpParamsPtr->structure.quadResCountsPerRev = QUADRESCOUNTSPERREVDEFAULT;											// quad counts per full revolution
	OpParamsPtr->structure.waterTwisterConstant = WATERTWISTERCONSTANTDEFAULT;											// k [Nm/(rad/s)^2]
	//The ZeroTorque is no longer used, it was taken over by pre-tension and pre-tension bleeedoff. It is not used in any formulas at present.
	OpParamsPtr->structure.zeroTorqueNM = ZEROTORQUENMDEFAULT;															// constant torque, to be used to tension the cable prior to an arrestment
	OpParamsPtr->structure.motorAnalogOffsetVolts = MOTORANALOGOFFSETVOLTSDEFAULT;										// set in motor GUI, such that I = (V + motorAnalogOffsetVolts) * motorAnalogScalingAmpsPerVolt
	OpParamsPtr->structure.motorAnalogScalingAmpsPerVolt = MOTORANALOGSCALINGAMPSPERVOLTDEFAULT;						// set in motor GUI, such that I = (V + motorAnalogOffsetVolts) * motorAnalogScalingAmpsPerVolt
	OpParamsPtr->structure.ampsToNewtonMeters = AMPSTONEWTONMETERSDEFAULT;												// conversion ratio intrinsic to motor, such that tau = I * ampsToNewtonMeters
	OpParamsPtr->structure.dataDecimationFactor = DATADECIMATIONFACTORDEFAULT;											// sampling rate of data; i.e. every (dataDecimationFactor)th point is actually output during data dump

	// Calibration parameters
	if (IsStarboardJumperInstalled())
	{
		OpParamsPtr->structure.quadConstant = QUADCONSTANT_STARBOARD;													// +/-1 to multiply into quadrature measurements, depending on which direction is defined as positive in the system
		OpParamsPtr->structure.twisterTorqueSensorADCWordToNmSlope = TWISTERTORQUESENSORADCWORDTONMSLOPE_STARBOARD;			// slope and intercept values for converting the twister torque sensor analog signal to its equivalent torque
		OpParamsPtr->structure.twisterTorqueSensorADCWordToNmIntercept = TWISTERTORQUESENSORADCWORDTONMINTERCEPT_STARBOARD;
		OpParamsPtr->structure.arrestTorqueSensorADCWordToNmSlope = ARRESTTORQUESENSORADCWORDTONMSLOPE_STARBOARD;			// slope and intercept values for converting the arrestment torque sensor analog signal to its equivalent torque
		OpParamsPtr->structure.arrestTorqueSensorADCWordToNmIntercept = ARRESTTORQUESENSORADCWORDTONMINTERCEPT_STARBOARD;
		OpParamsPtr->structure.BRcurrentSensorVoltsPerAmp = BRCURRENTSENSORVOLTSPERAMP_STARBOARD;						// scaling factor for converting the brake resistor current sensor analog signal to its equivalent current
		OpParamsPtr->structure.actualToDemandTorqueSlope = ACTUALTODEMANDTORQUESLOPE_STARBOARD;							// slope and intercept values for actual-torque-to-demand-torque mapping
		OpParamsPtr->structure.actualToDemandTorqueIntercept = ACTUALTODEMANDTORQUEINTERCEPT_STARBOARD;
	}
	else
	{
		OpParamsPtr->structure.quadConstant = QUADCONSTANT_PORT;														// +/-1 to multiply into quadrature measurements, depending on which direction is defined as positive in the system
		OpParamsPtr->structure.twisterTorqueSensorADCWordToNmSlope = TWISTERTORQUESENSORADCWORDTONMSLOPE_PORT;				// slope and intercept values for converting the twister torque sensor analog signal to its equivalent torque
		OpParamsPtr->structure.twisterTorqueSensorADCWordToNmIntercept = TWISTERTORQUESENSORADCWORDTONMINTERCEPT_PORT;
		OpParamsPtr->structure.arrestTorqueSensorADCWordToNmSlope = ARRESTTORQUESENSORADCWORDTONMSLOPE_PORT;				// slope and intercept values for converting the arrestment torque sensor analog signal to its equivalent torque
		OpParamsPtr->structure.arrestTorqueSensorADCWordToNmIntercept = ARRESTTORQUESENSORADCWORDTONMINTERCEPT_PORT;
		OpParamsPtr->structure.BRcurrentSensorVoltsPerAmp = BRCURRENTSENSORVOLTSPERAMP_PORT;							// scaling factor for converting the brake resistor current sensor analog signal to its equivalent current
		OpParamsPtr->structure.actualToDemandTorqueSlope = ACTUALTODEMANDTORQUESLOPE_PORT;								// slope and intercept values for actual-torque-to-demand-torque mapping
		OpParamsPtr->structure.actualToDemandTorqueIntercept = ACTUALTODEMANDTORQUEINTERCEPT_PORT;
	}

	OpParamsPtr->structure.encoderCountHighBorderline = MAX_ENCODER_COUNT - ENCODER_OVERFLOW_BUFFER_SIZE;				// encoder values considered "close to 0xFFFF" and "close to 0x0000", respectively,
	OpParamsPtr->structure.encoderCountLowBorderline = MIN_ENCODER_COUNT +	ENCODER_OVERFLOW_BUFFER_SIZE;				// used to determine when an overflow occurs

	// Spare variables
	OpParamsPtr->structure.spareVariableOne		= 0;							// eight spare Uint32s for future expansion of this parameter structure in flash
	OpParamsPtr->structure.spareVariableTwo		= 0;
	OpParamsPtr->structure.spareVariableThree	= 0;
	OpParamsPtr->structure.spareVariableFour	= 0;
	OpParamsPtr->structure.spareVariableFive	= 0;
	OpParamsPtr->structure.spareVariableSix		= 0;
	OpParamsPtr->structure.spareVariableSeven	= 0;
	OpParamsPtr->structure.spareVariableEight	= 0;

	// Cyclic redundancy check
	OpParamsPtr->structure.CRC = CalculateCRC8(&(OpParamsPtr->array[0]), (sizeof(OpParamsPtr->array) - 1), 16);	// calculate and save the CRC into this structure element

	WhereDidOpParamsComeFrom = HARDCODE;																		// global that keeps track of the source of the operating parameters values
}

//! Initialize the structure of current condition variables to default values

//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void DefaultConditions( CurrentConditionsStruct *ConditionsPtr )
{
	Uint16 i = 0;												// general iterating variable

	// Interval timer variables
	ConditionsPtr->timerStartingValue = 0;						// used at various points in the state machine, as the starting time of a segment
	ConditionsPtr->currentTime = 0;								// and the current time within the segment
	ConditionsPtr->thisTimeStampUsec = 0;						// the difference between the StartingValue and the CurrentTime

	// Quadrature encoder variables
	ConditionsPtr->lastEncoderCount = 0;						// raw encoder count of the last time the function was called
	ConditionsPtr->thisEncoderCount = 0;						// raw encoder count from the current calling of the function
	ConditionsPtr->encoderOverflows = 0;						// number of "overflows" (or underflows if negative) of the 16 bit quadrature count, as maintained by the function

	// Variables of physical state - when applicable element [0] is the oldest
	for (i = 0; i <= NUM_TIMESTEPS_FOR_VELOCITY_CALC; i++)
	{
		ConditionsPtr->timesUs[i] = 0;							// times in microseconds, to calculate angular velocity
		ConditionsPtr->rotationalPositionsRad[i] = 0;			// rotational positions in radians, to calculate angular velocity
	}
	ConditionsPtr->thisAngularVelocityRadPS = 0;				// calculated angular velocity in radians/second, to calculate torque
	ConditionsPtr->thisTwisterTorqueNm = 0;						// calculated commanded water twister torque in Newton-meters
	for (i = 0; i < NUM_ELEMENTS_FOR_BRAKE_DELAY_ARRAY; i++)
	{
		ConditionsPtr->brakePressureHistory[i] = 0;				// commanded braking pressures
	}

	//ConditionsPtr->thisBrakePressure = 0;						// calculated brake pressure, to be converted to calculated brake torque
	//ConditionsPtr->thisCalculatedBrakeTorqueNm;					// calculated brake torque, before being zero'd (if v=0) and failed upon
	ConditionsPtr->thisBrakeTorqueNm = 0;						// calculated brake torque to be used in net torque, after processing/failure
	ConditionsPtr->thisTorqueOffsetNm = 0;						// variable torque, updated by comm with Dev2; accounts for arresting motor, inertial compensation, etc
	ConditionsPtr->thisDesiredNetTorqueNm = 0;					// desired motor torque, in newton-meters

	// Data acquisition and output variables
	ConditionsPtr->currentSampleIndex = 0;						// keeps track of which data sample is being taken
	ConditionsPtr->currentRetractSampleIndex = 0;				// keeps track of which retract data sample is being taken
	ConditionsPtr->canITakeData = TRUE;							// flag checked before data is stored, false indicates that data has filled all space allocated for it
	ConditionsPtr->canITakeRetractData = TRUE;					// ditto^^
	ConditionsPtr->retractionHappened = FALSE;					// flag that starts off as FALSE, and is changed to TRUE after a retraction happens...to prevent it from being triggered again
}

//! Initialize the structure of twister failure parameters to default values

//! @param *TwisterParamsPtr	Pointer to a structure of the type TwisterFailureStruct, which holds the twister failure parameters
void DefaultTwisterParams( TwisterFailureStruct *TwisterParamsPtr )
{
	// Default parameters all ensure that no failure occurs without intervention from the master Dev2
	TwisterParamsPtr->failureMode = NONE;									// mode of failure: none, time (delay), torque, or velocity limit
	TwisterParamsPtr->failureParameter.failureStartTimeUsec = 0xFFFFFFFF;	// just in case, the failure start time is set to the beginning state of the countdown timer (so it will have passed this by the time it is checked)
	TwisterParamsPtr->percentFailure = 0;									// and just in case, the percent failure is null
	TwisterParamsPtr->isFailureOccurring = FALSE; 							// is the specified failure occurring right now?
}

//! Initialize the structure of brake parameters to default values

//! @param *BrakeParamsPtr	Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
void DefaultBrakeParams( BrakeParametersStruct *BrakeParamsPtr )
{
	// all parameters are temporarily 0
	// braking torque calculation parameters
	BrakeParamsPtr->commandedBrakePressure = 0;								// commanded braking pressure, commanded directly by communication with master Dev2
	BrakeParamsPtr->zeta = ZETA_DEFAULT;									// constants in the differential equation
	BrakeParamsPtr->omegaN = OMEGA_N_DEFAULT;
	BrakeParamsPtr->a = 0;													// scale factors; nominally 1, used to adjust equation if necessary
	BrakeParamsPtr->b = 0;
	BrakeParamsPtr->c = 0;

	// state variable to define whether brake torque is forced to 0 because shaft is effectively stationary
	BrakeParamsPtr->isVelocityAroundZero = FALSE;

	// state variable to define whether brake torque has been turned on for the first time; used to prevent unwanted brake signals from affecting run
	BrakeParamsPtr->hasBrakeBeenSignalled = FALSE;

	// state variables, for use in calculating actual brake torque from demanded, delayed brake pressure
	BrakeParamsPtr->x1 = 0;
	BrakeParamsPtr->x2 = 0;
	BrakeParamsPtr->x1dot = 0;
	BrakeParamsPtr->x2dot = 0;

	// brake failure parameters - loaded at setup
	BrakeParamsPtr->failureMode = NONE;										// mode of failure: none, time (delay), condition-torque, or condition-velocity
	BrakeParamsPtr->failureParameter.failureStartTimeUsec = 0xFFFFFFFF;		// for failureMode TIME: the time after 0 at which the failure happens
	BrakeParamsPtr->percentFailure = 0;										// percentage of brake torque that is diminished if failure occurs
	BrakeParamsPtr->isFailureOccurring = FALSE;								// is the specified failure occurring right now?
}

//! Save the structure of operating parameters (as an array of Uin16s) to Sector J of flash memory

//! This function recalculates the CRC and reassigns that and the product-type-specific security key to the Operating Parameters Structure, erases the
//! relevant section of flash memory, and then stores the Operating Parameters array (in union with the structure) to flash, using the global flash buffer
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @retval 				TRUE for success
//! @retval					FALSE for failure.
boolean SaveOpParamsToFlash( OperatingParameters *OpParamsPtr )
{
	// Declare variables
	Uint16 status = STATUS_SUCCESS;
	Uint16 i;
	Uint16 *flash_ptr;
	Uint16 length;
	boolean Retcode;

	// Store the up-to-date CRC and security key before proceeding
	OpParamsPtr->structure.securityKey = WTB_OP_PARAMS_SECURITY_KEY;
	OpParamsPtr->structure.CRC = CalculateCRC8(&(OpParamsPtr->array[0]), (sizeof(OpParamsPtr->array) - 2), 16);

	// Erase flash sector and check for error
	DINT;
	status = Flash_Erase(SECTORJ, &EraseStatus);
	EINT;
	if (status != STATUS_SUCCESS)
	{
		FlashError(status);
	}

	// Construct flash buffer from structure of operating parameters
	length = sizeof(OpParamsPtr->array);
	flash_ptr = FLASH_OP_PARAMS_STARTING_ADDRESS;

	for (i = 0; i < length; i++)
	{
		FlashBuffer[i] = OpParamsPtr->array[i];
	}

	// Program flash buffer into flash and check for error
	DINT;
	status = Flash_Program(flash_ptr, FlashBuffer, length, &ProgStatus);
	EINT;
	if (status != STATUS_SUCCESS)
	{
		//I think this failure routine only works with a debugger attached
		FlashError(status);
	}

	//make it a boolean - TRUE for success, FAIL otherwise
	Retcode = TRUE;
	if( status != STATUS_SUCCESS )
	{
		Retcode = FALSE;
	}

	return( Retcode );
}

//! Read the array of operating parameters from Sector J of flash memory, and store it in the input structure

//! Not only does this function retrieve the operating parameters structure from flash; it then verifies that the retrieved and calculated CRC
//! match and that the retrieved security key is correct, to assess data validity.
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
void GetOpParamsFromFlash( OperatingParameters *OpParamsPtr )
{
	// Declare variables
	Uint16 i;
	Uint16 *flash_ptr;
	Uint16 length;
	Uint16 securityKey;
	Uint16 actualCRC;
	Uint16 storedCRC;

	// Read structure-array from flash, and store it in the passed structure
	flash_ptr = FLASH_OP_PARAMS_STARTING_ADDRESS;
	length = sizeof(OpParamsPtr->array);
	for (i = 0; i < length; i++)
	{
		OpParamsPtr->array[i] = *(flash_ptr + i);
	}

	// Extract the security key and stored CRC, and recalculate the CRC from the other data
	securityKey = OpParamsPtr->structure.securityKey;
	storedCRC = OpParamsPtr->structure.CRC;
	actualCRC = CalculateCRC8(&(OpParamsPtr->array[0]), (length - 2), 16);

	// If either the security key or the CRC are invalid, fill the structure with defaults and proceed (don't error out)
	if (securityKey != WTB_OP_PARAMS_SECURITY_KEY || storedCRC != actualCRC)
	{
		DefaultOpParams(OpParamsPtr);
		SendStrUARTB("\n\n\t\t\t\tFlash read failed; default parameters were used instead.\n\n");

		WhereDidOpParamsComeFrom = HARDCODE;
	}
	else
	{
		WhereDidOpParamsComeFrom = FLASH;
	}
}

//! Configure the timer and data arrays for water-twister/brake, retract operation

//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void SetupTwisterBrakePeripherals( CurrentConditionsStruct *ConditionsPtr )
{
	ConditionsPtr->timerStartingValue = 0x7fffffff; 														// count-down time starts at very large number, so it won't ever count down to 0

	MemFill( (Uint16 *)&TwisterBrakeData[0], (Uint16 *)(&TwisterBrakeData[MAX_NUMBER_OF_SAMPLES]), 0 );
	MemFill( (Uint16 *)&RetractData[0], (Uint16 *)(&RetractData[RETRACT_MAX_SAMPLES]), 0 );					// fill all associated storage memory with 0s

	ConfigCpuTimer( &CpuTimer0, 150.0L, (float32) ConditionsPtr->timerStartingValue); 						// max of 100 seconds, measured in microseconds

	ConditionsPtr->retractionHappened = FALSE;																// make sure this flag is false upon entering the state machine

	CpuTimer0Regs.PRD.all = 0x7fffffff;																		// adjust timer period manually
	TimerSetPrescale( 0, 150 ); 																			// and make it read in microseconds
}

//! Clear the data array and DAC output, and display an introduction to the water-twister/brake interface

//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void ParametersModeIntro( CurrentConditionsStruct *ConditionsPtr )
{
	VoltagetoDAC(0, DAC_ALL);													// output 0V to all DACs, for user calibration of analog signal and so motor doesn't start moving
	ClearData(ConditionsPtr);													// clear the data array

	//Don't clear the screen or you lose motor failure message.
	SendStrUARTB("Welcome to the Water-Twister/Brake Interface");				// and write introduction information
	SendStrUARTB("\n (All DAC channels have been 0'd; ");
	SendStrUARTB("you may calibrate the motor's analog input now.)");

	SendStrUARTB("\n\n     User Inputs: Press ENTER after input to lock in, ");
	SendStrUARTB("or without input to use (default). Do not write units.");
}

//! Prompt the user for parameters that could othewise be assumed with reasonable certainty

//! These include the DAC channel, the quadrature resolution, the motor strength (in [N/A]), the zero torque, the motor's voltage-to-current mapping
//! (in [A/V]), the linear mapping coefficients for converting from actual to output demand torque, and the degree of data output decimation
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
void GetNonEssentialUserInputs( OperatingParameters *OpParamsPtr )
{
	// Variables for taking user input
	boolean parseCheck = FALSE;			// stores the output of the parseUserInput function, to check for validity
	char16 buffer[100];					// buffer for parsing user input

	// Other variables
	Uint16 rawDACChannel = 1;			// the intermittent DAC channel index, as given by the user
	float32 quadResolutionFloat = 0;	// user-defined conversion ratio between the number of revolutions and the number of quadrature counts
	float32 dataDecimationFloat = 0;	// user-defined factor by which data is decimated, initially stored as float to ensure proper user input

	//---------------------------------------
	//-----NOTE ABOUT THE FOLLOWING CODE-----
	//---------------------------------------
		The following code is repetitive in nature, with each section following a similar template (albeit not similar enough to create a single function to do it all),
		which takes each piece of user input and tests it for validity; rather than including essentially the same comments in each of the sections, the general
		outline/comment is below (with simple example code). I will include comments in specific cases where a user input section deviates from this model:
			SendStrUARTB("I want user input: ");									<--this is a user prompt to tell them what to enter, including units and limitations
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);				<--wait for user input on UARTB, storing it in buffer[], and store the check-flag
			if (buffer[0] = NULL)													<--if the user just pressed enter, indicating they want the default value
			{
				input = DEFAULT;													<--store the default value
			}
			else																	<--otherwise
			{
				input = atof(&buffer[0]);											<--convert the user input (character) buffer to the appropriate number or other variable format
				while (!parseCheck || (some test for whether the value is right))	<--if the user didn't enter input correctly, or it is invalid
				{
					DeleteCharsUARTB(100);											<--output a BACKSPACE character enough to entirely delete the maximum length of the buffer
					SendStrUARTB("\r I want valid user input: ");					<--write over line with "Please enter valid...____" reprompt
					parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);		<--again, wait for user input on UARTB
					input = atof(&buffer[0]);										<--and immediately convert it; they've lost their opportunity to quickly ENTER the default value :)
				}																	<--this iterates until they enter the input correctly, and within the given bounds/limitations


	//--------------------------------------------------------
	//-----Get the DAC channel number input from the user-----
	//--------------------------------------------------------
	***see the above note for an explanation of the following code*****
	sprintf(buffer, "\n         >Enter DAC channel number 1, 2, 3, or 4 (%d): ", RAWDACCHANNELDEFAULT);
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		rawDACChannel = RAWDACCHANNELDEFAULT;
	}
	else
	{
		rawDACChannel = atoi(&buffer[0]);
		while(!parseCheck || (rawDACChannel == 0 || rawDACChannel > 4))
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid DAC channel number (1, 2, 3, or 4): ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			rawDACChannel = atoi(&buffer[0]);
		}
	}
	// convert it from a number to an appropriate custom value
	switch(rawDACChannel)
	{
		case 1:
			OpParamsPtr->structure.DACchannel = DAC_CH1;
			break;
		case 2:
			OpParamsPtr->structure.DACchannel = DAC_CH2;
			break;
		case 3:
			OpParamsPtr->structure.DACchannel = DAC_CH3;
			break;
		case 4:
			OpParamsPtr->structure.DACchannel = DAC_CH4;
			break;
		default:
			OpParamsPtr->structure.DACchannel = DAC_CH1;
			break;
	}
	// redefine index into the global DAC state variable, according to raw user input number
	OpParamsPtr->structure.DACVoltagesNowIndex = rawDACChannel - 1;

	//-----------------------------------------------------------------------------
	//-----Get the revolutions-to-quadrature-counts resolution input from user-----
	//-----------------------------------------------------------------------------
	***see the above note for an explanation of the following code*****
	sprintf(buffer, "\n         >Enter quad encoder resolution, in whole counts per revolution (%d): ", QUADRESCOUNTSPERREVDEFAULT);
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		quadResolutionFloat = QUADRESCOUNTSPERREVDEFAULT;
	}
	else
	{
		quadResolutionFloat = atof(&buffer[0]);
		while(!parseCheck || quadResolutionFloat < 1 || quadResolutionFloat != roundf(quadResolutionFloat))
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid quad encoder resolution, in whole counts per revolution: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			quadResolutionFloat = atof(&buffer[0]);
		}
	}
	// cast the (now error-check integer) float variable to a true for use, and store it
	OpParamsPtr->structure.quadResCountsPerRev = (Uint16)quadResolutionFloat;

	//----------------------------------
	//-----Get the motor's strength-----
	//----------------------------------
	***see the above note for an explanation of the following code*****
	sprintf(buffer, "\n         >Enter the motor's <<strength>>, in Newton*meters/Amp (%.2f): ", AMPSTONEWTONMETERSDEFAULT);
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		OpParamsPtr->structure.ampsToNewtonMeters = AMPSTONEWTONMETERSDEFAULT;
	}
	else
	{
		OpParamsPtr->structure.ampsToNewtonMeters = atof(&buffer[0]);
		while(!parseCheck || OpParamsPtr->structure.ampsToNewtonMeters <= 0)
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid motor <<strength>>, in Newton*meters/Amp: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			OpParamsPtr->structure.ampsToNewtonMeters = atof(&buffer[0]);
		}
	}

	//-----------------------------------------------
	//-----Get the analog voltage mapping offset-----
	//-----------------------------------------------
	***see the above note for an explanation of the following code*****
	sprintf(buffer, "\n         >Enter the voltage mapping offset, in Volts (%.2f): ", MOTORANALOGOFFSETVOLTSDEFAULT);
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		OpParamsPtr->structure.motorAnalogOffsetVolts = MOTORANALOGOFFSETVOLTSDEFAULT;
	}
	else
	{
		OpParamsPtr->structure.motorAnalogOffsetVolts = atof(&buffer[0]);
		while(!parseCheck)
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid voltage mapping offset, in Volts: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			OpParamsPtr->structure.motorAnalogOffsetVolts = atof(&buffer[0]);
		}
	}

	//----------------------------------------------------------
	//-----Get the analog voltage-to-current scaling factor-----
	//----------------------------------------------------------
	***see the above note for an explanation of the following code*****
	sprintf(buffer, "\n         >Enter the voltage-to-current scaling factor, in Amps/Volt (%.2f): ", MOTORANALOGSCALINGAMPSPERVOLTDEFAULT);
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		OpParamsPtr->structure.motorAnalogScalingAmpsPerVolt = MOTORANALOGSCALINGAMPSPERVOLTDEFAULT;
	}
	else
	{
		OpParamsPtr->structure.motorAnalogScalingAmpsPerVolt = atof(&buffer[0]);
		while(!parseCheck)
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid voltage-to-current scaling factor, in Amps/Volt: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			OpParamsPtr->structure.motorAnalogScalingAmpsPerVolt = atof(&buffer[0]);
		}
	}

	//-----------------------------------------------
	//-----Get the actual-to-demand-torque slope-----
	//-----------------------------------------------
	***see the above note for an explanation of the following code*****
	if (IsStarboardJumperInstalled())
	{
		sprintf(buffer, "\n         >Enter the actual-to-demand-torque linear mapping slope (%.2f): ", ACTUALTODEMANDTORQUESLOPE_STARBOARD);
	}
	else
	{
		sprintf(buffer, "\n         >Enter the actual-to-demand-torque linear mapping slope (%.2f): ", ACTUALTODEMANDTORQUESLOPE_PORT);
	}
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		if (IsStarboardJumperInstalled())
		{
			OpParamsPtr->structure.actualToDemandTorqueSlope = ACTUALTODEMANDTORQUESLOPE_STARBOARD;
		}
		else
		{
			OpParamsPtr->structure.actualToDemandTorqueSlope = ACTUALTODEMANDTORQUESLOPE_PORT;
		}
	}
	else
	{
		OpParamsPtr->structure.actualToDemandTorqueSlope = atof(&buffer[0]);
		while(!parseCheck || OpParamsPtr->structure.actualToDemandTorqueSlope <= 0)
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid actual-to-demand-torque linear mapping slope: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			OpParamsPtr->structure.actualToDemandTorqueSlope = atof(&buffer[0]);
		}
	}

	//--------------------------------------------------
	//-----Get the actual-to-demand-torque intercept-----
	//--------------------------------------------------
	***see the above note for an explanation of the following code*****
	if (IsStarboardJumperInstalled())
	{
		sprintf(buffer, "\n         >Enter the actual-to-demand-torque linear mapping intercept (%.2f): ", ACTUALTODEMANDTORQUEINTERCEPT_STARBOARD);
	}
	else
	{
		sprintf(buffer, "\n         >Enter the actual-to-demand-torque linear mapping intercept (%.2f): ", ACTUALTODEMANDTORQUEINTERCEPT_PORT);
	}
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		if (IsStarboardJumperInstalled())
		{
			OpParamsPtr->structure.actualToDemandTorqueIntercept = ACTUALTODEMANDTORQUEINTERCEPT_STARBOARD;
		}
		else
		{
			OpParamsPtr->structure.actualToDemandTorqueIntercept = ACTUALTODEMANDTORQUEINTERCEPT_PORT;
		}
	}
	else
	{
		OpParamsPtr->structure.actualToDemandTorqueIntercept = atof(&buffer[0]);
		while(!parseCheck)
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid actual-to-demand-torque linear mapping intercept: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			OpParamsPtr->structure.actualToDemandTorqueIntercept = atof(&buffer[0]);
		}
	}

	//---------------------------------------------------------------
	//-----Get the factor of data decimation input from the user-----
	//---------------------------------------------------------------
	***see the above note for an explanation of the following code*****

	sprintf(buffer, "\n         >Enter data decimation factor as whole number (%d): ", DATADECIMATIONFACTORDEFAULT);
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		dataDecimationFloat = DATADECIMATIONFACTORDEFAULT;
	}
	else
	{
		dataDecimationFloat = atof(&buffer[0]);
		while(!parseCheck || dataDecimationFloat < 0 || dataDecimationFloat > MAX_NUMBER_OF_SAMPLES || dataDecimationFloat != roundf(dataDecimationFloat))
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid data decimation factor as whole number: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			dataDecimationFloat = atoi(&buffer[0]);
		}
	}
	// case the float variable to a true integer for use, and store it
	OpParamsPtr->structure.dataDecimationFactor = (Uint16)dataDecimationFloat;
}

//! Calibrate potentially variable, physical characteristics of the motor setup

//! Right now, this function only calibrates the direction of the quadrature encoder, as it is wired. After getting some necessary user input,
//! ramps up the motor torque - with positive current - until the motor starts moving and then immediately stops it, taking time and encoder readings
//! throughout. If the encoder count has increased with positive current, it is wired appropriately and a +1 constant (unity) is assigned to all future
//! encoder readings; if it has decreased, it is wired backward and a -1 constant is assigned.
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void CalibrateMotor( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr )
{
	Uint16 quadCountCal = 0;																								// used during calibration, to test change in quadrature

	// Print calibration message and user prompt
	SendStrUARTB("\n\n     Calibrating system characteristics: !!!KEEP HANDS CLEAR!!!");
	SendStrUARTB("\n         >Calibrating the sign of the quadrature encoder. KEEP HANDS CLEAR. Press ENTER to start.");
	waitFor(ENTER, UARTB);

	// Set up quadrature for calibration
	ResetQuadratureCountA();																								// zero the encoder in its current position
	OpParamsPtr->structure.quadConstant = 0;																				// assert to 0 to indicate error if unchanged
	quadCountCal = GetQuadratureCountA();																					// and obtain the initial count value

	// Set up timer and associated variables for calibration
	StartCpuTimer0();
	ConditionsPtr->timerStartingValue = ReadTimer0Clean();																// the starting value, for taking a difference
	ConditionsPtr->currentTime = ReadTimer0Clean();																	// the current time (starts off the same as starting value)
	ConditionsPtr->thisTimeStampUsec = ConditionsPtr->timerStartingValue - ConditionsPtr->currentTime;						// elapsed time, the difference between the two

	// Output the calibration torque
	ConditionsPtr->thisDesiredNetTorqueNm = TORQUE_FOR_DIRECTION_CAL_NEWTON_METERS;
	OutputTorqueAsVoltage(OpParamsPtr, ConditionsPtr);

	// Calibration loop
	while( ((quadCountCal <= LOWER_END_MOVEMENT_RANGE_COUNTS) || (quadCountCal >= UPPER_END_MOVEMENT_RANGE_COUNTS))		// execute while quadrature count hasn't increased or decreased by more than the
			&& (ConditionsPtr->thisTimeStampUsec < TIME_LIMIT_DIRECTION_CAL_US))											// mininum range, and also that the time hasn't surpassed the time limit
	{
		quadCountCal = GetQuadratureCountA();																				// update the quadrature and the current time
		ConditionsPtr->currentTime = ReadTimer0Clean();
		ConditionsPtr->thisTimeStampUsec = ConditionsPtr->timerStartingValue - ConditionsPtr->currentTime;
	}

	// Immediately output a 0 torque to stop movement
	ConditionsPtr->thisDesiredNetTorqueNm = 0;
	OutputTorqueAsVoltage(OpParamsPtr, ConditionsPtr);

	// decide on quadConstant based on which direction the carriage moved, if at all
	if ((quadCountCal > LOWER_END_MOVEMENT_RANGE_COUNTS) && (quadCountCal <= MIDRANGE_ENCODER_COUNT)) 						// if carriage moved -> w/ (+) current,
	{
		OpParamsPtr->structure.quadConstant = 1;																			// it is connected the right way, and multiplier is unity
		SendStrUARTB("\n              >Successful, direction = 1.");
	}

	if ((quadCountCal > MIDRANGE_ENCODER_COUNT) && (quadCountCal < UPPER_END_MOVEMENT_RANGE_COUNTS))						// if carriage moved <- w/ (+) current
	{
		OpParamsPtr->structure.quadConstant = -1;																			// it is connected the wrong way, so compensate with -1
		SendStrUARTB("\n              >Successful, direction = -1.");
	}

	if (OpParamsPtr->structure.quadConstant == 0)																			// if the quadConstant is unchanged be the preceding if() statements, it indicates an error
	{
		SendStrUARTB("\n              >Failed, program has halted.");
		while(1){};
	}
}

//! Prompt the user for parameters that cannot be assumed, integral to the behavior of the water-twister/brake

//! This is the water twister constant (k), the zeroTorque, and the brake and water twister failure mode(s)
//! @param *OpParamsPtr			Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *TwisterParamsPtr	Pointer to a structure of the type TwisterFailureStruct, which holds the twister failure parameters
//! @param *BrakeParamsPtr		Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
void GetEssentialUserInputs( OperatingParameters *OpParamsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr )
{
	// Variables for taking user input
	boolean parseCheck = FALSE;			// stores the output of the parseUserInput function, to check for validity
	char16 buffer[100];					// buffer for parsing user input

	//---------------------------------------
	//-----NOTE ABOUT THE FOLLOWING CODE-----
	//---------------------------------------
		The following code is repetitive in nature, with each section following a similar template (albeit not similar enough to create one function to do it all),
		which takes each piece of user input and tests it for validity; rather than including essentially the same comments in each of the 13 sections, the general
		outline/comment is below (with simple example code). I will include comments in specific cases where a user input section deviates from this model:
			SendStrUARTB("I want user input: ");									<--this is a user prompt to tell them what to enter, including units and limitations
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);				<--wait for user input on UARTB, storing it in buffer[], and store the check-flag
			if (buffer[0] = NULL)													<--if the user just pressed enter, indicating they want the default value
			{
				input = DEFAULT;													<--store the default value
			}
			else																	<--otherwise
			{
				input = atof(&buffer[0]);											<--convert the user input (character) buffer to the appropriate number or other variable format
				while (!parseCheck || (some test for whether the value is right))	<--if the user didn't enter input correctly, or it is invalid
				{
					DeleteCharsUARTB(100);											<--output a BACKSPACE character enough to entirely delete the maximum length of the buffer
					SendStrUARTB("\r I want valid user input: ");					<--write over line with "Please enter valid...____" reprompt
					parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);		<--again, wait for user input on UARTB
					input = atof(&buffer[0]);										<--and immediately convert it; they've lost their opportunity to quickly ENTER the default value :)
				}																	<--this iterates until they enter the input correctly, and within the given bounds/limitations


	//--------------------------------------------------------
	//-----Get the effective water-twister constant input-----
	//--------------------------------------------------------
	***see the above note for an explanation of the following code*****
	sprintf(buffer, "\n         >Enter the effective water-twister constant, in Nm/(rad/s)^2 (%.4f): ", WATERTWISTERCONSTANTDEFAULT);
	SendStrUARTB(buffer);
	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		OpParamsPtr->structure.waterTwisterConstant = WATERTWISTERCONSTANTDEFAULT;
	}
	else
	{
		OpParamsPtr->structure.waterTwisterConstant = atof(&buffer[0]);
		while(!parseCheck || OpParamsPtr->structure.waterTwisterConstant < 0)
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid effective water-twister constant, in Nm/(rad/s)^2: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			OpParamsPtr->structure.waterTwisterConstant = atof(&buffer[0]);
		}
	}

	//--------------------------------------------
	//-----Get the zero-torque constant input-----
	//--------------------------------------------
	****see the above note for an explanation of the following code*****
	//The ZeroTorque is no longer used, it was taken over by pre-tension and pre-tension bleeedoff. It is not used in any formulas at present.
	sprintf(buffer, "\n         >Enter the zero-torque, in Nm (%.2f): ", ZEROTORQUENMDEFAULT);
	SendStrUARTB(buffer);

	parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == NULL)
	{
		OpParamsPtr->structure.zeroTorqueNM = ZEROTORQUENMDEFAULT;
	}
	else
	{
		OpParamsPtr->structure.zeroTorqueNM = atof(&buffer[0]);
		while(!parseCheck)
		{
			DeleteCharsUARTB(100);
			SendStrUARTB("\r         >!!!Please enter valid zero-torque, in Nm: ");
			parseCheck = parseUserInput(UARTB, UARTB, &buffer[0], 100);
			OpParamsPtr->structure.zeroTorqueNM = atof(&buffer[0]);
		}
	}

	//----------------------------------------------------------
	//-----Get failure modes for brake and/or water-twister-----
	//----------------------------------------------------------
	****see the above note for an explanation of the following code*****
	SendStrUARTB("\n         >Would you like to enter any failure modes? (y/anything else): ");												// prompt the user
	(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
	if (buffer[0] == 'Y' || buffer[0] == 'y')																								// and only do this whole branch if they do want to enter failure modes (otherwise, do nothing)
	{
		SendStrUARTB("\n          (There is no error-checking on these inputs; an inappropriate value may produce a fatal system error)");
		SendStrUARTB("\n              >Would you like a water-twister failure? (y/anything else): ");
		(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
		if (buffer[0] == 'Y' || buffer[0] == 'y')																							// if they want the water twister torque to fail on a condition
		{
			SendStrUARTB("\n                   >Enter the twister failure mode as 1=time, 3=torque, 5=angVel: ");
			(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
			TwisterParamsPtr->failureMode = (FailureMode)(atoi(&buffer[0]));																// determine which condition

			switch(TwisterParamsPtr->failureMode)																							// and selectively find the parameter associated with it
			{
				case TIME:
					SendStrUARTB("\n                   >Enter the twister failure time in whole milliseconds: ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					TwisterParamsPtr->failureParameter.failureStartTimeUsec = 1000 * ((Uint32)(atoi(&buffer[0])));							// in each case, casting/converting their input correctly
					break;
				case TORQUE:
					SendStrUARTB("\n                   >Enter the twister failure torque limit in Newton-meters: ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					TwisterParamsPtr->failureParameter.failureTorqueLimitNm = (float32)(atof(&buffer[0]));
					break;
				case ANGULARVELOCITY:
					SendStrUARTB("\n                   >Enter the twister failure angular velocity limit in radians per second: ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					TwisterParamsPtr->failureParameter.failureAngVelLimitRadPS = (float32)(atof(&buffer[0]));
					break;
				default:
					DefaultTwisterParams(TwisterParamsPtr);
					break;
			}
			SendStrUARTB("\n                   >Enter the twister failure percentage as an integer: ");
			(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
			TwisterParamsPtr->percentFailure = atoi(&buffer[0]);																			// and obtain the percentage by which the violation of this parameter causes failure
		}

		SendStrUARTB("\n              >Would you like a brake failure? (y/anything else): ");
		(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
		if (buffer[0] == 'Y' || buffer[0] == 'y')																							// if they want the brake torque to fail on a condition
		{
			SendStrUARTB("\n                   >Enter the brake failure mode as 1=time, 3=torque, 5=angVel: ");
			(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
			BrakeParamsPtr->failureMode = (FailureMode)(atoi(&buffer[0]));																	// determine which condition
			switch(BrakeParamsPtr->failureMode)																								// and selectively find the parameter associated with it
			{
				case TIME:
					SendStrUARTB("\n                   >Enter the brake failure time in whole milliseconds: ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					BrakeParamsPtr->failureParameter.failureStartTimeUsec = 1000 * ((Uint32)(atoi(&buffer[0])));							// in each case, casting/converting their input correrctly
					break;
				case TORQUE:
					SendStrUARTB("\n                   >Enter the brake failure torque limit in Newton-meters: ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					BrakeParamsPtr->failureParameter.failureTorqueLimitNm = (float32)(atof(&buffer[0]));
					break;
				case ANGULARVELOCITY:
					SendStrUARTB("\n                   >Enter the brake failure angular velocity limit in radians per second: ");
					(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
					BrakeParamsPtr->failureParameter.failureAngVelLimitRadPS = (float32)(atof(&buffer[0]));
					break;
				default:
					DefaultBrakeParams(BrakeParamsPtr);
			}
			SendStrUARTB("\n                   >Enter the brake failure percentage as an integer: ");
			(void)parseUserInput(UARTB, UARTB, &buffer[0], 100);
			BrakeParamsPtr->percentFailure = atoi(&buffer[0]);																				// and obtain the percentage by which the violation of this parameter causes failure
		}
	}
}

//! Main menu for user interface

//! This is the main menu for the user interface, which waits for user keyboard input (over serial line) to either run the water-twister/brake
//! behavior, reenter parameters, output the data, retract the cable, end the program, or toggle the motor enable or velocity/torque mode
keyName MainMenuWaitForKey( void )
{
	keyName userControlKeys[7] = {SPACEBAR, ESCAPE, BACKSPACE, TAB, ENTER, e, v};		// an array of the possible keys the user can press to navigate through the main menu
	keyName Retcode = NULLKEY;															// the key pressed by the user

	SendCharUARTB( CLEAR_SCREEN );														// clear the interface screen
	SendStrUARTB("If beginning a run, position shaft at desired home.\n");				// and print the menu
	SendStrUARTB("    >SPACEBAR to execute, with current position defined as home;\n");
	SendStrUARTB("    >BACKSPACE to re-enter parameters;\n");
	SendStrUARTB("    >ENTER to output most recent data;\n");
	SendStrUARTB("    >TAB to retract the cable;\n");
	SendStrUARTB("    >e to toggle the motor enable;\n");
	SendStrUARTB("    >v to toggle the motor analog mode (velocity/torque);\n");
	SendStrUARTB("    >ESCAPE to end program:\n         >");

	Retcode = waitForMany(&userControlKeys[0], 7, UARTB);								// wait for the user to press SPACEBAR, ESCAPE, BACKSPACE, TAB, ENTER, e, or v
	return( Retcode );
}

//! Initialize the various peripherals to the beginning state of the water-twister/brake

//! This includes clearing the data array and resetting the quadrature encoder and associated variables, and the timer.
//! Brake and Twister failures are also cleared.
//! @param *OpParamsPtr			Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr		Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *TwisterParamsPtr	Pointer to a structure of the type TwisterFailureStruct, which holds the twister failure parameters
//! @param *BrakeParamsPtr		Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
void InitTwisterBrake( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr )
{
	//later, after the motor is enabled, we'll take care of pre-tension run force. Now we just want to make sure it doesn't jerk when enabled.
	ConditionsPtr->thisDesiredNetTorqueNm = 0;					// output 0 torque to ensure no motion once motor is on
	OutputTorqueAsVoltage(OpParamsPtr, ConditionsPtr);			// set DAC output so nothing bad happens when motor is enabled later
	DELAY_US( DELAY_AFTER_MOTOR_ENABLE_US );					//Leave a second for DAC to stabilize $$$ is this needed?

	ClearData(ConditionsPtr);									// clear the data structure array

	ResetCounterVariables(ConditionsPtr);						// zero the quadrature counter, the overflow counter, and the last/this encoder count values

	//ResetQuadratureCountA();									// and zero the quadrature counter, to define home
	//ConditionsPtr->encoderOverflows = 0;						// and the overflow counter
	//ConditionsPtr->lastEncoderCount = 0;
	//ConditionsPtr->thisEncoderCount = 0;						// and the last/this encoder count values

	TwisterParamsPtr->isFailureOccurring = FALSE;				// clear any failure modes on the water twister or brake, so it enters runtime in a non-failed state
	BrakeParamsPtr->isFailureOccurring = FALSE;

	StartCpuTimer0();											// restart the CPU Timer
	ConditionsPtr->timerStartingValue = ReadTimer0Clean();
}

//! Zero all relevant quadrature variables, to effectively define the current position as 0
//! @param *ConditionsPtr		Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void ResetCounterVariables( CurrentConditionsStruct *ConditionsPtr )
{
	ResetQuadratureCountA();									// zero the quadrature counter, to redefine home
	ConditionsPtr->encoderOverflows = 0;						// and the overflow counter
	ConditionsPtr->lastEncoderCount = 0;
	ConditionsPtr->thisEncoderCount = 0;						// and the last/this encoder count values
}

//! Use the previously-defined parameters to start behaving as a water-twister/brake, with torque as a function of angular velocity and braking parameters

//! Execute the central (while) loop until either the user presses any keyboard key (if in user interface/display mode) or the user pressed SW3 (if in standalone
//! mode). On each iteration, either cede control to Lloyd's comm code (most of the iterations) or, if the 2kHz interrupt has triggered: calculate physical variables
//! and use them to compute and output torque, taking into account failure if it is occurring. Also store the system state as a data point, and flash an LED indicating
//! the code is within that branch of the loop.
//! @param *OpParamsPtr			Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr		Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *TwisterParamsPtr	Pointer to a structure of the type TwisterFailureStruct, which holds the twister failure parameters
//! @param *BrakeParamsPtr		Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
//! @param	isDisplayMode		Designates whether to run as water-twister/brake with preexisting parameters (FALSE), or execute the full user-interface (TRUE)
//FINDME this makes it easy to find this routine
void RunLikeATwisterBrake( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr, boolean isDisplayMode )
{
	volatile Uint16 i;															// general purpose integer variable, not really volatile but that suppresses a spurious warning
	boolean	IsMotorOnline;														// Did the motor go enabled when it should have?
	boolean KeepTheAppRunning;													// several things can shut the app down
	float32 radiansToTurnOffPretensionInRunState;								// how many radians need to be traversed from the 0 position to signal the cable pretension to turn off, while in run state (SMALL)
	CommMessageToAppType CommMessageToApp;										// signal from comm processor. Allows leaving standby state, and can shut down the app.
	Uint32	ElapsedTime=0, StartTime=0, EndTime=0, BiggestTime=0;				// Measure comm execution time
	Uint32	WTElapsedTime=0, WTStartTime=0, WTEndTime=0, WTBiggestTime=0;		// Measure water twister code execution time

	//NEWPRETENSION - Calculate how far the spool has to turn before we shut off the holding torque that keeps the cable from sagging
	radiansToTurnOffPretensionInRunState = COUNTS_TO_TURN_OFF_PRETENSION_RUN_STATE * 2 * PI / OpParamsPtr->structure.quadResCountsPerRev;

	StopCpuTimer0();															// Stop the sample timer while we wait for motors to enable
	//Try to enable the motor, but don't die if it doesn't work so that we can report back to central or the user interface that we have a problem.
	IsMotorOnline = TryToEnableMotorController( TRY_TO_ENABLE_A_FEW_TIMES );	// Try to bring motor online and see if it worked
	ConditionsPtr->isMotorControllerReady = IsMotorOnline;						// Store it for future reference
	ExchangeSetMotorState( IsMotorOnline );										// and let the exchange area know motor status
	StartCpuTimer0();															// start the timebase for samples running again

	//If we're in display mode, don't let comm get in the way of the product starting up.
	//In display mode, skip the comm phase that waits for comm to download setup parameters.
	//In standalone mode, wait for comm to tell us to continue with startup.
	//Since comm might not be available yet, also allow SW2 to get us past the comm startup phase
	if( isDisplayMode == FALSE )
	{
		StopCpuTimer0();														// Stop the sample timer while we wait for permission to start

		//NEWPRETENSION
		ResetCounterVariables(ConditionsPtr);

		CommMessageToApp = ExchangeGetAppRunState();							// The init sets the message passing value to one that holds us here till comm is ready for code to proceed
		while( CommMessageToApp != StayInRunState )								// after motor is enabled but before the shock behavior begins, cede control to comm indefinitely
		{
			//I don't think this call is needed
			CommMessageToApp = ExchangeGetAppRunState();	//comm sets the run state in the exchange area, and we need to get it into this loop
			CommMessageToApp = DoCommStuff( OpParamsPtr, ConditionsPtr, TwisterParamsPtr, CommMessageToApp ); //comm looks at current state to know how to react

			//NEWPRETENSION
			if (abs(GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr)) >= COUNTS_TO_TURN_OFF_PRETENSION_WAIT_STATE)	// if the motor has passed the point where pretension should turn off...
			{
				//Motor turned past the limit, turn off pretension torque
				ExchangeSetTwisterPrelimTorque(0.0);
				//and zero the encoders, we're calling this the new zero (but the shaft might still be turning)
				//We need to zero it so pretension can be turned on again to take up more slack
				ResetCounterVariables(ConditionsPtr);
			}

			//Let SW2 get us out of the comm wait state
			if( IsButtonPressed( SW2 ) == TRUE )
			{
				ExchangeSetAppRunState(	StayInRunState );
				CommMessageToApp =		StayInRunState;

				//NEWPRETENSION
				ExchangeSetTwisterPrelimTorque(0.0);
				WaitForButtonPressAndRelease( SW2 );							//it's already pressed, so this just waits for the release
			}
		}

		//Comm has told us to start really running, or user did an override to start us up. Either way, it's showtime!
		StartCpuTimer0();														// start the timebase for samples running again
	}

	//NEWPRETENSION
	ResetCounterVariables(ConditionsPtr);																// 0 the counter, overflows counter, and last/this count values to redefine 'home' at the last possible nanosecond

	i = UARTBRxBuff;																					// read the UART receive buffer to clear the ready flag
	//Several conditions cause the app to exit, they are checked at the end of the while loop
	KeepTheAppRunning = TRUE;
	while( KeepTheAppRunning == TRUE )
	{
		if( CheckTimer2ISRFlag() == TRUE )																// triggered every 500 us, on the interrupt
		{
			WTStartTime = ReadCpuTimer2Counter();														//log execution time

			LEDControl(D28, LED_RED);																	// red LED on to indicate active/interrupting state
			UpdateKinematicVariables(		OpParamsPtr, ConditionsPtr);								// update time and rotational position histories, and recalculate angular velocity over last x# of points
			ComputeBrakeTorqueAndFailure(	OpParamsPtr, ConditionsPtr, BrakeParamsPtr);				// look at the brake/failure structure, calculate the brake torque, shift into register, and update brake torque
			ComputeTwisterTorqueAndFailure(	OpParamsPtr, ConditionsPtr, TwisterParamsPtr);				// look at the twister-failure structure, calculate and update twister torque

			//Are we in the pre-tension phase where we hold a little tension on the cable so it doesn't go slack?
			if( fabs( ConditionsPtr->rotationalPositionsRad[ NUM_TIMESTEPS_FOR_VELOCITY_CALC ] ) >= radiansToTurnOffPretensionInRunState)	// if the motor has passed this point
			{
				// no, we're past the holding point, so clear out the pre-run tension
				// To keep the pretension force on forever, comment out the next line
				ConditionsPtr->thisCablePretensionTorqueNm = 0;
			}*/

			// Are we still in pre-tension phase, where we hold a little tension on the cable so it doesn't go slack?
			// Musa's improved model results in the constant pretension force being applied not only until the motor rotates by a certain amount, but also until
			// the water twister torque has grown enough that it matches the pretension value. This creates a seamless transition between the pretension-hold
			// state and the normal (non-pretension) run state, rather than the unphysical step down that was happening when only position was monitored
			/*if( fabs(ConditionsPtr->rotationalPositionsRad[NUM_TIMESTEPS_FOR_VELOCITY_CALC]) >= radiansToTurnOffPretensionInRunState && 	// if the motor has passed this point
				ConditionsPtr->thisTwisterTorqueNm >= ConditionsPtr->thisCablePretensionTorqueNm)											// and the twister torque has risen enough to match constant pretension
			{
				ConditionsPtr->thisCablePretensionTorqueNm = 0;																				// clear the pretension forever
			}

			//Compute the total force
			ConditionsPtr->thisDesiredNetTorqueNm	= 	ConditionsPtr->thisTwisterTorqueNm
													+	ConditionsPtr->thisBrakeTorqueNm
													+	ConditionsPtr->thisCablePretensionTorqueNm
													+	ConditionsPtr->thisTorqueOffsetNm;

			// Compute the total force, based on whether we have entered catch phase or not
			if( fabs(ConditionsPtr->rotationalPositionsRad[NUM_TIMESTEPS_FOR_VELOCITY_CALC]) >= radiansToTurnOffPretensionInRunState && 	// if the motor has passed this point
				ConditionsPtr->thisTwisterTorqueNm >= ConditionsPtr->thisCablePretensionTorqueNm)											// and the twister torque has risen enough to match constant pretension
			{																																// then we are entering catch phase
				ConditionsPtr->thisCablePretensionTorqueNm = 0;																				// so clear the pretension forever
				ConditionsPtr->thisDesiredNetTorqueNm = ConditionsPtr->thisTwisterTorqueNm
													  + ConditionsPtr->thisBrakeTorqueNm
													  + ConditionsPtr->thisTorqueOffsetNm;													// and sum up the net torque without the pretension
			}
			else																															// otherwise, we are still in idle phase
			{
				ConditionsPtr->thisDesiredNetTorqueNm = ConditionsPtr->thisCablePretensionTorqueNm;											// so the net torque is just the pretension torque
			}

			OutputTorqueAsVoltage( OpParamsPtr, ConditionsPtr );										// convert demand torque into voltage and output it to the appropriate DAC channel

			StoreDataPointNow(OpParamsPtr, ConditionsPtr, TwisterParamsPtr, BrakeParamsPtr);			// record a data point

			WTEndTime = ReadCpuTimer2Counter();
			WTElapsedTime = WTStartTime - WTEndTime;											//how long did this code take?
			if( WTElapsedTime > WTBiggestTime )													//if it took longer than the last one, keep this one
			{
				WTBiggestTime = WTElapsedTime;													//when we break, this value is the longest time that comm took
			}

			LEDControl(D28, LED_OFF);	//TwisterBrake.c ending active phase
		}
		else
		{
			// We are having a problem where the if() above is evaluated as FALSE, but then very shortly after the timer wraps, allowing the if() below to evaluate as true
			// and therefore allowing a comm call to happen at the beginning of a new interrupt cycle. This is a problem. To solve this, we are putting this meaningless operation
			// (i = 0) between the various if/else statements to prevent the compiler from optimizing them into one, and then explicitly
			i = 0;

			//This clause will be hit hundreds of times in each 500us.
			//Don't call comm past the time where it might run into the end of the 500us period.
			//Check that we're not too close to the next interrupt.
			//Start with a guess around 10% of the time, 50us.
			//Also: Don't talk to comm if we're in display mode.
			if( (ReadCpuTimer2Counter() > TIME_CLOSE_TO_END_OF_PERIOD ) && (isDisplayMode == FALSE) )
			{
				i = 1;																	// another instance where we have to put a meaningless operation in between statements to prevent compiler smushing
				if (ReadCpuTimer2Counter() < TIME_CLOSE_TO_START_OF_PERIOD)				// if the timer rolled over before the above if() was executed, this catches it and prevents execution,
				{
					StartTime = ReadCpuTimer2Counter();
					//This call to comm might contain a StopOperating command
					CommMessageToApp = ExchangeGetAppRunState();	//comm sets the run state in the exchange area, and we need to get it into this loop
					CommMessageToApp = DoCommStuff( OpParamsPtr, ConditionsPtr, TwisterParamsPtr, CommMessageToApp );	// cede control to the com handler to allow it to update structures, etc as required
					EndTime = ReadCpuTimer2Counter();
					ElapsedTime = StartTime-EndTime;	//how long did this call take?
					if( ElapsedTime > BiggestTime )		//if it took longer than the last one, keep this one
					{
						BiggestTime = ElapsedTime;		//when we break, this value is the longest time that comm took
					}
				}
			}
		}

		//Several things get us to exit operation.
		//If we're in display mode and a character comes in the uart port, stop running.
		if( (isDisplayMode == TRUE) && (UARTBRxReady == 1) )
		{
			KeepTheAppRunning = FALSE;
		}

		//If we're in standalone mode and the user presses SW3, stop running.
		if( (isDisplayMode == FALSE) && (IsButtonPressed( SW3 ) == TRUE) )
		{
			KeepTheAppRunning = FALSE;
			WaitForButtonPressAndRelease( SW3 );	//the button is already pressed, so this is just waiting for the release
		}

		//If we're hooked up to comm and comm issues a stop command, stop running.
		if( CommMessageToApp == StopOperating )
		{
			KeepTheAppRunning = FALSE;
		}
	}

	//When we get here, the operation has stopped for some reason (user pushbutton, command from comm, user hit a keyboard key)
	ConditionsPtr->thisDesiredNetTorqueNm = 0;													// whatever caused the loop to break, immediately output a 0 voltage so the motor stops
	OutputTorqueAsVoltage(OpParamsPtr, ConditionsPtr);

	i = UARTBRxBuff;					// clear the ready flag again, for further use of UART

	//At the end of the run phase, turn off both LEDs
	LEDControl( D28, LED_OFF );	//TwisterBrake.c just left run state
	LEDControl( D29, LED_OFF );	//TwisterBrake.c just left run state
}

//! Update the raw quantities that are elsewhere used to calculate the demand torque

//! Update the position and time history arrays, and use them to calculate the current angular velocity
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void UpdateKinematicVariables( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr )
{
	float32 angularVelocityRadPS;
	Uint16 firstIndex;
	Uint16 lastIndex;
	Uint16 i = 0;

	for (i = 0; i < NUM_TIMESTEPS_FOR_VELOCITY_CALC; i++)																						// shift time and rotational position history back by one index
	{
		ConditionsPtr->timesUs[i] = ConditionsPtr->timesUs[i + 1];
		ConditionsPtr->rotationalPositionsRad[i] = ConditionsPtr->rotationalPositionsRad[i + 1];
	}

	ConditionsPtr->timesUs[NUM_TIMESTEPS_FOR_VELOCITY_CALC] = ConditionsPtr->timerStartingValue - ReadTimer0Clean();						// fill the last index (current) time entry with the current elapsed time
	ConditionsPtr->rotationalPositionsRad[NUM_TIMESTEPS_FOR_VELOCITY_CALC] = (float32)(GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr))
																			 / OpParamsPtr->structure.quadResCountsPerRev * 2 * PI;				// and the current position entry with the current angular position, in radians

	if (ConditionsPtr->currentSampleIndex == 0)																									// if this is the first point, there isn't enough data to calculate velocity
	{
		ConditionsPtr->thisAngularVelocityRadPS = 0;
	}
	else																																		// otherwise, define the endpoints for calculating velocity...
	{
		lastIndex = NUM_TIMESTEPS_FOR_VELOCITY_CALC;
		if (ConditionsPtr->currentSampleIndex > NUM_TIMESTEPS_FOR_VELOCITY_CALC)																//...either over a span of NUM_TIMESTEPS_FOR_VELOCITY_CALC...
		{
			firstIndex = 0;
		}
		else																																	//...or as many points have been taken so far
		{
			firstIndex = NUM_TIMESTEPS_FOR_VELOCITY_CALC - ConditionsPtr->currentSampleIndex;
		}

		angularVelocityRadPS = (ConditionsPtr->rotationalPositionsRad[lastIndex] - ConditionsPtr->rotationalPositionsRad[firstIndex]);
		angularVelocityRadPS /= (ConditionsPtr->timesUs[lastIndex] - ConditionsPtr->timesUs[firstIndex]);
		angularVelocityRadPS *= 1E6;																											// calculate and convert the velocity

		ConditionsPtr->thisAngularVelocityRadPS = angularVelocityRadPS;																			// and store it in the structure
	}
}

//! This function calculates the braking torque component, including failure if applicable

//! This function calculates the braking torque. It takes in the commanded brake pressure, and forces it to within limits. It then shifts it into a shift register, shifting out
//! the oldest commanded pressure. This delayed pressure is used to update specific derivative calculations and these are used to integrate the torque state,
//! and in the process braking pressure is converted to braking torque. Torque is forced to within limits, converted to subscale in the correct units, and updated based on current
//! failure conditions (and maybe whether v=0) and applied in the opposite direction of rotation.
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr 	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *BrakeParamsPtr	Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
void ComputeBrakeTorqueAndFailure( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, BrakeParametersStruct *BrakeParamsPtr )
{
	float32 omegaN;
	float32 zeta;
	float32 dTInS;
	float32 commandedBrakeTorqueSubScaleNm;
	float32 commandedBrakeTorqueFullScaleFtLb;
	float32 commandedBrakePressureFullScale;
	Uint16 i;
	float32 emulatedBrakeTorqueCommandFullScaleFtLb;
	float32 emulatedBrakeTorqueCommandSubScaleNm;
	//float32 angVelToleranceRadPS;

	// coefficients for the quadratic mapping between full-scale brake pressure and torque in ft-lb, i.e. tau = c + b*P + a*P^2
	float32 const a = -0.0126;
	float32 const b = 98.7781;
	float32 const c = -288.2082;

	omegaN = BrakeParamsPtr->omegaN;
	zeta = BrakeParamsPtr->zeta;
	dTInS = (ConditionsPtr->timesUs[NUM_TIMESTEPS_FOR_VELOCITY_CALC] - ConditionsPtr->timesUs[NUM_TIMESTEPS_FOR_VELOCITY_CALC - 1]) * 0.000001;

	// Import and bound-check the commanded pressure
	#if 1
		// Get the commanded sub-scale brake torque in Nm
		commandedBrakeTorqueSubScaleNm = ExchangeGetBrakeTorque();

		#if 0
			//this is where the brake commanded torques are set for the run, and should be taken out before regular operation
			float32 thisTimeS;
			thisTimeS = (float32)ConditionsPtr->timesUs[NUM_TIMESTEPS_FOR_VELOCITY_CALC] * 0.000001;

			if (thisTimeS < 2)
			{
				commandedBrakeTorqueSubScaleNm = 2;
			}
			else if (thisTimeS < 4.5)
			{
				commandedBrakeTorqueSubScaleNm = 4;
			}
			else if (thisTimeS < 6)
			{
				commandedBrakeTorqueSubScaleNm = 1;
			}
			else if (thisTimeS < 7.5)
			{
				commandedBrakeTorqueSubScaleNm = 2.5;
			}
			else if (thisTimeS < 9)
			{
				commandedBrakeTorqueSubScaleNm = 1.75;
			}
			else if (thisTimeS < 10.5)
			{
				commandedBrakeTorqueSubScaleNm = 2.125;
			}
			else if (thisTimeS < 12)
			{
				commandedBrakeTorqueSubScaleNm = 2;
			}
			else
			{
				ConditionsPtr->canITakeData = FALSE;
			}

			TwisterBrakeData[ConditionsPtr->currentSampleIndex].ArrestmentTorqueSensorInNm = commandedBrakeTorqueSubScaleNm;
		#endif


		// Convert it to full-scale brake torque in ft-lb
		commandedBrakeTorqueFullScaleFtLb = commandedBrakeTorqueSubScaleNm;						// load in sub-scale Nm
		commandedBrakeTorqueFullScaleFtLb *= TORQUE_SUBSCALE_TO_FULLSCALE;						// convert to full-scale Nm
		commandedBrakeTorqueFullScaleFtLb *= BRAKE_TORQUE_NM_TO_FTLB;							// convert to full-scale ft-lb

		// And map it to full-scale pressure command, using an inverse quadratic polynomial form
		commandedBrakePressureFullScale = (-b + sqrt(b * b - 4 * a * c + 4 * a * commandedBrakeTorqueFullScaleFtLb)) / (2 * a);
		BrakeParamsPtr->commandedBrakePressure = commandedBrakePressureFullScale;
	#else
	    commandedBrakePressureFullScale = ExchangeGetBrakeTorque();
		BrakeParamsPtr->commandedBrakePressure = BrakeParamsPtr->commandedBrakePressure;														// just reassign the exactly commanded brake pressure
	#endif

	if (commandedBrakePressureFullScale < BRAKE_PRESSURE_LOWER_LIMIT)																// and make sure it isn't below its lower limit
	{
		commandedBrakePressureFullScale = BRAKE_PRESSURE_LOWER_LIMIT;
	}
	if (commandedBrakePressureFullScale > BRAKE_PRESSURE_UPPER_LIMIT)																// or above its upper limit
	{
		commandedBrakePressureFullScale = BRAKE_PRESSURE_UPPER_LIMIT;
	}

#if 0
	//this is where the brake commanded pressures are set for the run, and should be taken out before regular operation
	float32 thisTimeS;
	thisTimeS = (float32)ConditionsPtr->timesUs[NUM_TIMESTEPS_FOR_VELOCITY_CALC] * 0.000001;

	if (thisTimeS < 3)
	{
		commandedBrakePressureFullScale = 200;
	}
	else if (thisTimeS < 5)
	{
		commandedBrakePressureFullScale = 400;
	}
	else if (thisTimeS < 7)
	{
		commandedBrakePressureFullScale = 100;
	}
	else if (thisTimeS < 9)
	{
		commandedBrakePressureFullScale = 250;
	}
	else if (thisTimeS < 11)
	{
		commandedBrakePressureFullScale = 175;
	}
	else if (thisTimeS < 13)
	{
		commandedBrakePressureFullScale = 212.5;
	}
	else if (thisTimeS < 18)
	{
		commandedBrakePressureFullScale = 200;
	}
	else
	{
		ConditionsPtr->canITakeData = FALSE;
	}

	TwisterBrakeData[ConditionsPtr->currentSampleIndex].TorqueOffsetInNewtonMeters = commandedBrakePressureFullScale;
#endif

	// Shift the whole delay-queue shift-register, bumping the new brake pressure into the last element
	for (i = 0; i < (NUM_ELEMENTS_FOR_BRAKE_DELAY_ARRAY - 1); i++)															// iterate through all elements of the array but the last one
	{
		ConditionsPtr->brakePressureHistory[i] = ConditionsPtr->brakePressureHistory[i + 1];								// shift all elements up by one index, towards [0]
	}
	ConditionsPtr->brakePressureHistory[NUM_ELEMENTS_FOR_BRAKE_DELAY_ARRAY - 1] = commandedBrakePressureFullScale;					// and assign the newly calculated braking pressure to the end of the queue

	// Compute dynamics
	BrakeParamsPtr->x1dot = BrakeParamsPtr->x2;																				// update derivatives based on delayed brake pressure state
	BrakeParamsPtr->x2dot = (-1 * omegaN * omegaN * BrakeParamsPtr->x1) -
							(2 * zeta * omegaN * BrakeParamsPtr->x2) +
							(omegaN * omegaN * ConditionsPtr->brakePressureHistory[0]);

	//Compute output torque, mapped from full-scale pressure in PSI to full-scale torque in ft-lb
	emulatedBrakeTorqueCommandFullScaleFtLb = c + (b * BrakeParamsPtr->x1) + (a * BrakeParamsPtr->x1 * BrakeParamsPtr->x1);		// calculate brake torque from existing state variables
	emulatedBrakeTorqueCommandFullScaleFtLb = (-288.2082) +																	// calculate brake torque from existing state variables
								   	   	   	  (98.7781 * BrakeParamsPtr->x1) -
											  (0.0126 * BrakeParamsPtr->x1 * BrakeParamsPtr->x1);

	// Integrate states
	BrakeParamsPtr->x1 = BrakeParamsPtr->x1 + BrakeParamsPtr->x1dot * dTInS;												// update state variables by time-stepping derivatives
	BrakeParamsPtr->x2 = BrakeParamsPtr->x2 + BrakeParamsPtr->x2dot * dTInS;

	// Bound-check the commanded torque
	if (emulatedBrakeTorqueCommandFullScaleFtLb < BRAKE_TORQUE_FULLSCALE_LOWER_LIMIT_FT_LB)									// make sure the emulated brake torque isn't below its lower limit
	{
		emulatedBrakeTorqueCommandFullScaleFtLb = BRAKE_TORQUE_FULLSCALE_LOWER_LIMIT_FT_LB;
	}
	if (emulatedBrakeTorqueCommandFullScaleFtLb > BRAKE_TORQUE_FULLSCALE_UPPER_LIMIT_FT_LB)									// or above its upper limit
	{
		emulatedBrakeTorqueCommandFullScaleFtLb = BRAKE_TORQUE_FULLSCALE_UPPER_LIMIT_FT_LB;
	}

	// Convert emulated brake torque from fullscale ft-lbs to subscale Nm
	emulatedBrakeTorqueCommandSubScaleNm = emulatedBrakeTorqueCommandFullScaleFtLb;											// load in full-scale ft-lb
	emulatedBrakeTorqueCommandSubScaleNm *= BRAKE_TORQUE_FTLB_TO_NM;														// convert to full-scale Nm
	emulatedBrakeTorqueCommandSubScaleNm *= TORQUE_FULLSCALE_TO_SUBSCALE;													// convert to sub-scale Nm

	// And assign to appropriate output (structure) variable
	ConditionsPtr->thisBrakeTorqueNm = emulatedBrakeTorqueCommandSubScaleNm;

#if 0
	// Store a couple of condition variables, for possible future data logging
	ConditionsPtr->thisCommandedBrakePressure = commandedFullScaleBrakePressure;
	ConditionsPtr->thisBrakePressure = BrakeParamsPtr->x1;
	ConditionsPtr->thisCalculatedBrakeTorqueNm = emulatedBrakeTorqueCommandFullScaleFtLb;
#endif

#if 0
	// Proceed, based on whether the angular velocity is effectively 0 or not
	angVelToleranceRadPS = ANG_VEL_TOLERANCE_COUNTS_PER_SEC * 2 * PI / OpParamsPtr->structure.quadResCountsPerRev;			// use the encoder resolution to find the tolerance around 0 velocity defined as ~0

	if (fabsf(ConditionsPtr->thisAngularVelocityRadPS) <= angVelToleranceRadPS)												// if the angular velocity ~0, so the shaft is effectively stationary
	{
		ConditionsPtr->thisBrakeTorqueNm = 0;																				// do not apply any brake torque
	}
	else																													// otherwise, if the shaft is moving...
	{
		ConditionsPtr->thisBrakeTorqueNm = emulatedBrakeTorqueCommandNm;													// apply the nominal brake torque and adjust for failure
	}
#endif

	// Proceed, based on whether the angular velocity is effectively 0 or not
	if (BrakeParamsPtr->isVelocityAroundZero)																				// was the last velocity reading low enough to be considered 0?
	{
		if (fabs(ConditionsPtr->thisAngularVelocityRadPS) > BOUND_TO_STEP_OUT_OF_VELOCITY_EFFECTIVE_ZERO_REGION_RADPS)			// if so, has it gone high enough to exit effective 0 state?
		{
			BrakeParamsPtr->isVelocityAroundZero = FALSE;																			// then assert the active state, allowing the brake torque calculation to stand
		}
		else																													// otherwise...
		{
			BrakeParamsPtr->isVelocityAroundZero = TRUE;																			// keep it in the effective 0 state
			ConditionsPtr->thisBrakeTorqueNm = 0;																					// and force the brake torque to 0
		}
	}
	else																													// otherwise, the last velocity reading was not effective 0
	{
		if(fabs(ConditionsPtr->thisAngularVelocityRadPS) <= BOUND_TO_DROP_INTO_VELOCITY_EFFECTIVE_ZERO_REGION_RADPS)			// but even if not, has it gone low enough to enter effective 0 state?
		{
			BrakeParamsPtr->isVelocityAroundZero = TRUE;																			// then assert the 0 state
			ConditionsPtr->thisBrakeTorqueNm = 0;																					// and force the brake torque to 0
		}
		else																													// otherwise...
		{
			BrakeParamsPtr->isVelocityAroundZero = FALSE;																			// keep it in the active state, allowing the brake torque calculation to stand
		}
	}

	// Proceed, based on whether the master has actually commanded a brake torque or not (to prevent unwanted torques before brake is actually applied)
	if (BrakeParamsPtr->hasBrakeBeenSignalled)				// if brake has already been commanded...
	{
																// keep the flag as it is and allow the calculated torque to be applied (no actual statements in the brackets)
	}
	else													// if it hasn't been commanded...
	{
		if (commandedBrakeTorqueSubScaleNm >= 0.01)				// but it is currently being commanded (no longer ~0)
		{
			BrakeParamsPtr->hasBrakeBeenSignalled = TRUE;			// change the flag so it automatically gets patched through in all future iterations
		}
		else													// and if it still isn't being commanded (still ~0)
		{
			ConditionsPtr->thisBrakeTorqueNm = 0;					// force brake torque to 0 so nothing funky happens
		}
	}

	// Adjust for brake failure, if appropriate
	switch(BrakeParamsPtr->failureMode)
	{
		case TIME:
			ConditionsPtr->currentTime = ReadCpuTimer0Counter();															// the current time (WRT a countdown timer)
			ConditionsPtr->thisTimeStampUsec = ConditionsPtr->timerStartingValue - ConditionsPtr->currentTime;				// elapsed time, the difference between them

			if (ConditionsPtr->thisTimeStampUsec >= BrakeParamsPtr->failureParameter.failureStartTimeUsec
				|| BrakeParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the current time has surpassed the failure time
			{																												// or the brake is already in a permanently failed state
				ConditionsPtr->thisBrakeTorqueNm *= (1 - BrakeParamsPtr->percentFailure / 100);								// reduce brake torque by appropriate percentage
				BrakeParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
			}
			else
			{
				BrakeParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
			}
			break;
		case TORQUE:
			if (ConditionsPtr->thisBrakeTorqueNm >= BrakeParamsPtr->failureParameter.failureTorqueLimitNm
				|| BrakeParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the magnitude of the torque has surpassed the failure limit
			{																												// or the brake is already in a permanently failed state
				ConditionsPtr->thisBrakeTorqueNm *= (1 - BrakeParamsPtr->percentFailure / 100);								// reduce brake torque by appropriate percentage
				BrakeParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
			}
			else
			{
				BrakeParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
			}
			break;
		case ANGULARVELOCITY:
			if (fabsf(ConditionsPtr->thisAngularVelocityRadPS) >= BrakeParamsPtr->failureParameter.failureAngVelLimitRadPS
				|| BrakeParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the magnitude of the angular velocity has surpassed the failure limit
			{																												// or the brake is already in a permanently failed state
				ConditionsPtr->thisBrakeTorqueNm *= (1 - BrakeParamsPtr->percentFailure / 100);								// reduce brake torque by appropriate percentage
				BrakeParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
			}
			else
			{
				BrakeParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
			}
			break;
		default:
			BrakeParamsPtr->isFailureOccurring = FALSE;																		// if no failuremode, just make sure the state variable is correct
			break;
	}

	// And adjust the sign of the brake torque to oppose motion, so it's now ready to be used in the net torque
	if (ConditionsPtr->thisAngularVelocityRadPS >= 0)
	{
		ConditionsPtr->thisBrakeTorqueNm *= -1;
	}
}
#if 0

//!!!!!!!!!!THIS IS THE OLD BRAKE CODE

//! This function calculates the braking torque component, including failure if applicable

//! This function calculates the braking torque. It begins by putting the commanded brake torque and the derivatives of actual brake torque through a differential equation, to
//! determine the desired actual brake torqe. This is shifted into the last element brakeTorqueHistoryNm[] queue, whose size is allocated based on a # define so that the exact
//! time delay can be controlled. Finally, the first element of the queue is taken as the current actual brake torque, and is reduced appropriately if a brake failure is occurring.
//! The braking torque is enforced to apply opposite the direction of rotation, and zero'd in the case that the motor's angular velocity is effectively zero.
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr 	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *BrakeParamsPtr	Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
void ComputeBrakeTorqueAndFailure( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, BrakeParametersStruct *BrakeParamsPtr )
{
	float32 shiftedInBrakeTorqueNm;
	Uint16 lengthOfBrakeHistory;
	Uint16 i = 0;
	float32 angVelToleranceRadPS;

	// Calculate the brake torque to be shifted into the delay register, from the commanded torque
	//Get the torque that comm received as brake torque
	BrakeParamsPtr->commandedBrakeTorqueNm = ExchangeGetBrakeTorque();
	shiftedInBrakeTorqueNm = fabsf(BrakeParamsPtr->commandedBrakeTorqueNm);														// just shift in the magnitude of the exact commanded torque

	//------------------------------------------------------------
	//-----DIFF EQ CALCULATION WILL BE INSERTED AT THIS POINT-----
	//------------------------------------------------------------

	// Shift the whole delay-queue (shift register), with new brake torque in last element
	lengthOfBrakeHistory = NUM_INTERRUPTS_FOR_BRAKE_DELAY + 1;
	for (i = 0; i < (lengthOfBrakeHistory - 1); i++)																			// iterate through all elements of array but the last one
	{
		ConditionsPtr->brakeTorqueHistoryNm[i] = ConditionsPtr->brakeTorqueHistoryNm[i + 1];									// shift all elements up, towards [0]
	}
	ConditionsPtr->brakeTorqueHistoryNm[lengthOfBrakeHistory - 1] = shiftedInBrakeTorqueNm;										// and assign the newly calculated braking torque to the end of the queue

	// Proceed, based on whether the angular velocity is effectively 0 or not
	angVelToleranceRadPS = ANG_VEL_TOLERANCE_COUNTS_PER_SEC * 2 * PI / OpParamsPtr->structure.quadResCountsPerRev;				// use the encoder resolution to find the tolerance around 0 velocity defined as ~0

	if (fabsf(ConditionsPtr->thisAngularVelocityRadPS) <= angVelToleranceRadPS)													// if the angular velocity ~0, so the shaft is effectively stationary
	{
		ConditionsPtr->thisBrakeTorqueNm = 0;																					// do not apply any brake torque
	}
	else																														// otherwise, if the shaft is moving...
	{
		ConditionsPtr->thisBrakeTorqueNm = ConditionsPtr->brakeTorqueHistoryNm[0];												// apply the nominal brake torque and adjust for failure

		// Adjust for brake failure, if appropriate
		switch(BrakeParamsPtr->failureMode)
		{
			case TIME:
				ConditionsPtr->currentTime = ReadTimer0Clean();															// the current time (WRT a countdown timer)
				ConditionsPtr->thisTimeStampUsec = ConditionsPtr->timerStartingValue - ConditionsPtr->currentTime;				// elapsed time, the difference between them

				if (ConditionsPtr->thisTimeStampUsec >= BrakeParamsPtr->failureParameter.failureStartTimeUsec
					|| BrakeParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the current time has surpassed the failure time
				{																												// or the brake is already in a permanently failed state
					ConditionsPtr->thisBrakeTorqueNm *= (1 - BrakeParamsPtr->percentFailure / 100);								// reduce brake torque by appropriate percentage
					BrakeParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
				}
				else
				{
					BrakeParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
				}
				break;
			case TORQUE:
				if (ConditionsPtr->thisBrakeTorqueNm >= BrakeParamsPtr->failureParameter.failureTorqueLimitNm
					|| BrakeParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the magnitude of the torque has surpassed the failure limit
				{																												// or the brake is already in a permanently failed state
					ConditionsPtr->thisBrakeTorqueNm *= (1 - BrakeParamsPtr->percentFailure / 100);								// reduce brake torque by appropriate percentage
					BrakeParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
				}
				else
				{
					BrakeParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
				}
				break;
			case ANGULARVELOCITY:
				if (fabsf(ConditionsPtr->thisAngularVelocityRadPS) >= BrakeParamsPtr->failureParameter.failureAngVelLimitRadPS
					|| BrakeParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the magnitude of the angular velocity has surpassed the failure limit
				{																												// or the brake is already in a permanently failed state
					ConditionsPtr->thisBrakeTorqueNm *= (1 - BrakeParamsPtr->percentFailure / 100);								// reduce brake torque by appropriate percentage
					BrakeParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
				}
				else
				{
					BrakeParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
				}
				break;
			default:
				BrakeParamsPtr->isFailureOccurring = FALSE;																		// if no failuremode, just make sure the state variable is correct
				break;
		}

		// And adjust the sign of the brake torque to oppose motion, so it's now ready to be used in the net torque
		if (ConditionsPtr->thisAngularVelocityRadPS >= 0)
		{
			ConditionsPtr->thisBrakeTorqueNm *= -1;
		}
	}
}
#endif

//! This function calculates the water twister torque component, including failure if applicable

//! This function calculates the water twister torque. It begins by calculating the nominal water twister torque from the twister constant and the angular velocity, according to
//! the equation tau = kw^2. The sign is adjusted, so that the torque is always opposite to the direction of motion (the angular velocity). Finally, the water twister failure
//! is accounted for, if any failure is occurring, and the calculated twister torque is saved in the Conditions structure
//! @param *OpParamsPtr			Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr		Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *TwisterParamsPtr	Pointer to a structure of the type TwisterFailureStruct, which holds the twister failure parameters
void ComputeTwisterTorqueAndFailure( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr )
{
	float32 nominalTwisterTorqueNm;

	// Calculate the nominal water twister torque from the angular velocity
	nominalTwisterTorqueNm = OpParamsPtr->structure.waterTwisterConstant * ConditionsPtr->thisAngularVelocityRadPS
										 * ConditionsPtr->thisAngularVelocityRadPS;												// calculate magnitude of torque from angular velocity, t = kw^2

	if (ConditionsPtr->thisAngularVelocityRadPS >= 0)																			// and make the sign of the torque opposite that of the angular velocity
	{
		nominalTwisterTorqueNm *= -1;
	}

	// Adjust for failure, if appropriate
	switch(TwisterParamsPtr->failureMode)
	{
		case TIME:
			ConditionsPtr->currentTime = ReadTimer0Clean();																// the current time (WRT a countdown timer)
			ConditionsPtr->thisTimeStampUsec = ConditionsPtr->timerStartingValue - ConditionsPtr->currentTime;					// elapsed time, the difference between them

			if (ConditionsPtr->thisTimeStampUsec >= TwisterParamsPtr->failureParameter.failureStartTimeUsec
				|| TwisterParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the current time has surpassed the failure time
			{																													// or the water twister is already in a permanently failed state
				nominalTwisterTorqueNm *= (1 - TwisterParamsPtr->percentFailure / 100);											// reduce twister torque by appropriate percentage
				TwisterParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
			}
			else
			{
				TwisterParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
			}
			break;
		case TORQUE:
			if (fabsf(nominalTwisterTorqueNm) >= TwisterParamsPtr->failureParameter.failureTorqueLimitNm
				|| TwisterParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the magnitude of the torque has surpassed the failure limit
			{																													// or the water twister is already in a permanently failed state
				nominalTwisterTorqueNm *= (1 - TwisterParamsPtr->percentFailure / 100);											// reduce twister torque by appropriate percentage
				TwisterParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
			}
			else
			{
				TwisterParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
			}
			break;
		case ANGULARVELOCITY:
			if (fabsf(ConditionsPtr->thisAngularVelocityRadPS) >= TwisterParamsPtr->failureParameter.failureAngVelLimitRadPS
				|| TwisterParamsPtr->isFailureOccurring)																		// if this failure is occurring, because the angular velocity has surpassed the failure limit
			{																													// or the water twister is already in a permanently failed state
				nominalTwisterTorqueNm *= (1 - TwisterParamsPtr->percentFailure / 100);											// reduce twister torque by appropriate percentage
				TwisterParamsPtr->isFailureOccurring = TRUE;																	// and record this occurrence in the state variable
			}
			else
			{
				TwisterParamsPtr->isFailureOccurring = FALSE;																	// otherwise, just reaffirm the state variable
			}
			break;
		default:
			TwisterParamsPtr->isFailureOccurring = FALSE;																		// if no failuremode, just make sure the state variable is correct
			break;
	}

	ConditionsPtr->thisTwisterTorqueNm = nominalTwisterTorqueNm;																// finally update the water twister torque variable in the structure
}

//! Convert the stored demand torque into a voltage output for the DAC

//! This function uses the motor strength, analog-input-to-torque-command linear mapping coefficients, and calibration constants to convert the demand
//! torque to an appropriate voltage output adjusted for the motor calibration, and outputs it to the DAC.
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void OutputTorqueAsVoltage( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr )
{
	float32 mappedDemandTorqueNm;																											// appropriate output torque, after feeding demand torque through motor's calibration mapping
	float32 thisCurrentA;																													// desired motor current calculated from torque, in amps
	float32 thisVoltageV;																													// desired motor analog voltage calculated from current, in volts

	// map the demand torque to the appropriate output torque
	mappedDemandTorqueNm = ConditionsPtr->thisDesiredNetTorqueNm * OpParamsPtr->structure.actualToDemandTorqueSlope
						   + OpParamsPtr->structure.actualToDemandTorqueIntercept;															// T*[Nm] = m * T[Nm] + b

	// calculate the desired current from the desired torque
	thisCurrentA = mappedDemandTorqueNm / OpParamsPtr->structure.ampsToNewtonMeters;														// I[A] = T*[Nm] / C1[Nm/A]

	// calculate the analog output from the desired current
	thisVoltageV = (thisCurrentA / OpParamsPtr->structure.motorAnalogScalingAmpsPerVolt) - OpParamsPtr->structure.motorAnalogOffsetVolts;	// V[V] = I[A] / C2[A/V] - C3[V]

	// output the analog output
	VoltagetoDAC(thisVoltageV, OpParamsPtr->structure.DACchannel);																			// output the voltage to the selected DAC channel
}

//! Store data at the current data array index

//! The data is to be stored in an array of data-point-structures, containing information about time, rotational position and velocity, brake torque and failure, twister
//! torque and failure, net torque, output voltage, and the brake resistor current and temperature. If data-taking has not previously surpassed the size of the data array, each
//! of these values is retrieved and or calculated, and stored in their respective element in the structure. The index is incremented and, if it has reached the length of the
//! array (which means we just stored into the last array element), the ability to take further data is turned off until a re-run or reset occurs.
//! @param *OpParamsPtr			Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr		Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *TwisterParamsPtr	Pointer to a structure of the type TwisterFailureStruct, which holds the twister failure parameters
//! @param *BrakeParamsPtr		Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
void StoreDataPointNow( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr)
{
	Uint32 sample = ConditionsPtr->currentSampleIndex;

	if (ConditionsPtr->canITakeData)
	{
		// Record time-sensitive data
		TwisterBrakeData[sample].TwisterTorqueSensorInNm = ReadTorqueSensorInNm(OpParamsPtr, TwisterTorqueSensor);										// read the water twister torque sensor in real time
		TwisterBrakeData[sample].ArrestmentTorqueSensorInNm = ReadTorqueSensorInNm(OpParamsPtr, ArrestmentTorqueSensor);								// and the arrestment motor torque sensor
		TwisterBrakeData[sample].BrakeResistorCurrentInAmps = ReadBRCurrentSensorInA(OpParamsPtr);														// read the current sensor attached to the brake resistor in real time
		TwisterBrakeData[sample].BrakeResistorTemperatureInDegC = ReadThermistorTemperatureC((Uint16)BrakeResistorTemperature, ADC_SAMPLES_FOR_BRTEMP);	// along with its thermistor

		// Record time-stable data (which is constant throughout this funtion call)
		TwisterBrakeData[sample].ElapsedTimeInUsec = ConditionsPtr->timesUs[NUM_TIMESTEPS_FOR_VELOCITY_CALC];											// get current time, with respect to recognized "0" time, and store it
		TwisterBrakeData[sample].AdjustedEncoderPositionInRads = ConditionsPtr->rotationalPositionsRad[NUM_TIMESTEPS_FOR_VELOCITY_CALC];				// get adjusted encoder count and store it
		TwisterBrakeData[sample].AngularVelocityInRadsPerSecond = ConditionsPtr->thisAngularVelocityRadPS;												// get the most recently calculated velocity and store it
		TwisterBrakeData[sample].CommandVoltageInVolts = DACVoltagesNow[OpParamsPtr->structure.DACVoltagesNowIndex];									// get the raw analog output and store it
		TwisterBrakeData[sample].BrakeTorqueInNewtonMeters = ConditionsPtr->thisBrakeTorqueNm;															// get the five torques - braking, twister, offset, pretension, and total - and store them
		TwisterBrakeData[sample].TwisterTorqueInNewtonMeters = ConditionsPtr->thisTwisterTorqueNm;
		TwisterBrakeData[sample].TorqueOffsetInNewtonMeters = ConditionsPtr->thisTorqueOffsetNm;
		TwisterBrakeData[sample].CablePretensionTorqueInNewtonMeters = ConditionsPtr->thisCablePretensionTorqueNm;
		TwisterBrakeData[sample].DemandTorqueInNewtonMeters = ConditionsPtr->thisDesiredNetTorqueNm;

		if (BrakeParamsPtr->isFailureOccurring)																											// if a brake failure is currently happening,
		{
			TwisterBrakeData[sample].BrakeFailurePercentIfOccurring = BrakeParamsPtr->percentFailure;													// store just its percentage failure
		}
		else																																			// and if it isn't,
		{
			TwisterBrakeData[sample].BrakeFailurePercentIfOccurring = 0;																				// just store 0
		}
		if (TwisterParamsPtr->isFailureOccurring)																										// and same with the water twister failure
		{
			TwisterBrakeData[sample].TwisterFailurePercentIfOccurring = TwisterParamsPtr->percentFailure;
		}
		else
		{
			TwisterBrakeData[sample].TwisterFailurePercentIfOccurring = 0;
		}

		ConditionsPtr->currentSampleIndex++;																											// and each time a data point is stored at the current sample index, increment it
	}

	if (ConditionsPtr->currentSampleIndex >= MAX_NUMBER_OF_SAMPLES)																						// if we've somehow stored the maximum number of data points
	{
		ConditionsPtr->canITakeData = FALSE;																											// shut off the ability to take data (which is turned on again once
	}																																					// the array is cleared and the count is reset)
	else																																				// otherwise,
	{
		ConditionsPtr->canITakeData = TRUE;																												// assert this permission flag to remain on
	}
}
//FINDME
//! Cycle through the array of data structures, and output them through the UARTB channel.
//! SW3 stops the download, and then at a higher level, another press restarts it.

//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *BrakeParamsPtr		Pointer to a structure of the type BrakeParametersStruct, which holds the braking equation parameters and current braking conditions
//! @param *TwisterParamsPtr	Pointer to a structure of the type TwisterFailureStruct, which holds the twister failure parameters
void DumpData( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, BrakeParametersStruct *BrakeParamsPtr, TwisterFailureStruct *TwisterParamsPtr )
{
	Uint32 sampleNumber;																											// counting variable for sample
	Uint32 lastSampleNumber;																										// highest sample to output
	char16 printString[100];																										// print buffer

	lastSampleNumber = ConditionsPtr->currentSampleIndex - 1;																		// currentSampleIndex was incremented one final time, so adjust for that

	//MUSA-TEMPORARY
#if 1
	// Print a list of parameters used in this run, for the record
	sprintf(printString, "\nSecurity Key: %u\n", OpParamsPtr->structure.securityKey);
	SendStrUARTB(printString);
	sprintf(printString, "Parameter ID Tag: %u\n", OpParamsPtr->structure.parameterIDTag);
	SendStrUARTB(printString);
	sprintf(printString, "DAC Channel: %u\n", OpParamsPtr->structure.DACchannel);
	SendStrUARTB(printString);
	sprintf(printString, "DACVoltagesNow Index: %u\n", OpParamsPtr->structure.DACVoltagesNowIndex);
	SendStrUARTB(printString);
	sprintf(printString, "Quadrature Resolution counts/rev: %u\n", OpParamsPtr->structure.quadResCountsPerRev);
	SendStrUARTB(printString);
	sprintf(printString, "Water Twister Constant Nm/(rad/s)^2: %.4f\n", OpParamsPtr->structure.waterTwisterConstant);
	SendStrUARTB(printString);
	sprintf(printString, "Zero Torque Nm: %.2f\n", OpParamsPtr->structure.zeroTorqueNM);
	SendStrUARTB(printString);
	sprintf(printString, "Motor Analog Offset V: %.2f\n", OpParamsPtr->structure.motorAnalogOffsetVolts);
	SendStrUARTB(printString);
	sprintf(printString, "Motor Analog Scaling A/V: %.2f\n", OpParamsPtr->structure.motorAnalogScalingAmpsPerVolt);
	SendStrUARTB(printString);
	sprintf(printString, "Motor Strength N/A: %.2f\n", OpParamsPtr->structure.ampsToNewtonMeters);
	SendStrUARTB(printString);
	sprintf(printString, "Decimation Factor: %u\n", OpParamsPtr->structure.dataDecimationFactor);
	SendStrUARTB(printString);
	sprintf(printString, "Quadrature Sign Constant: %d\n", OpParamsPtr->structure.quadConstant);
	SendStrUARTB(printString);
	sprintf(printString, "Twister Torque Sensor ADCWord-to-Newton-Meters Slope Nm/count: %.4f\n", OpParamsPtr->structure.twisterTorqueSensorADCWordToNmSlope);
	SendStrUARTB(printString);
	sprintf(printString, "Twister Torque Sensor ADCWord-to-Newton-Meters Intercept Nm: %.4f\n", OpParamsPtr->structure.twisterTorqueSensorADCWordToNmIntercept);
	SendStrUARTB(printString);
	sprintf(printString, "Arrestment Torque Sensor ADCWord-to-Newton-Meters Slope Nm/count: %.4f\n", OpParamsPtr->structure.arrestTorqueSensorADCWordToNmSlope);
	SendStrUARTB(printString);
	sprintf(printString, "Arrestment Torque Sensor ADCWord-to-Newton-Meters Intercept Nm: %.4f\n", OpParamsPtr->structure.arrestTorqueSensorADCWordToNmIntercept);
	SendStrUARTB(printString);
	sprintf(printString, "Brake Resistor Current Sensor Amps-to-Volts V/A: %.3f\n", OpParamsPtr->structure.BRcurrentSensorVoltsPerAmp);
	SendStrUARTB(printString);
	sprintf(printString, "Actual-to-Demand Torque Slope, Nm/Nm: %.4f\n", OpParamsPtr->structure.actualToDemandTorqueSlope);
	SendStrUARTB(printString);
	sprintf(printString, "Actual-to-Demand Torque Intercept, Nm: %.4f\n", OpParamsPtr->structure.actualToDemandTorqueIntercept);
	SendStrUARTB(printString);
	sprintf(printString, "Encoder High Borderline counts: %u\n", OpParamsPtr->structure.encoderCountHighBorderline);
	SendStrUARTB(printString);
	sprintf(printString, "Encoder Low Borderline counts: %u\n", OpParamsPtr->structure.encoderCountLowBorderline);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 1: %lu\n", OpParamsPtr->structure.spareVariableOne);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 2: %lu\n", OpParamsPtr->structure.spareVariableTwo);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 3: %lu\n", OpParamsPtr->structure.spareVariableThree);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 4: %lu\n", OpParamsPtr->structure.spareVariableFour);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 5: %lu\n", OpParamsPtr->structure.spareVariableFive);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 6: %lu\n", OpParamsPtr->structure.spareVariableSix);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 7: %lu\n", OpParamsPtr->structure.spareVariableSeven);
	SendStrUARTB(printString);
	sprintf(printString, "Spare Variable 8: %lu\n", OpParamsPtr->structure.spareVariableEight);
	SendStrUARTB(printString);
	sprintf(printString, "CRC: %u\n", OpParamsPtr->structure.CRC);
	SendStrUARTB(printString);
	sprintf(printString, "Brake Parameters (zeta; w_N; a; b; c): %.4f; %.4f; %.4f; %.4f; %.4f\n", BrakeParamsPtr->zeta,
						  BrakeParamsPtr->omegaN, BrakeParamsPtr->a, BrakeParamsPtr->b, BrakeParamsPtr->c);
	SendStrUARTB(printString);
	sprintf(printString, "Brake Failure Mode (0=none, 1=time, 2=force, 3=vel): %d\n", BrakeParamsPtr->failureMode);
	SendStrUARTB(printString);
	switch (BrakeParamsPtr->failureMode)
	{
		case TIME:
			sprintf(printString, "Brake Failure Start Time us: %lu\n", BrakeParamsPtr->failureParameter.failureStartTimeUsec);
			SendStrUARTB(printString);
			break;
		case TORQUE:
			sprintf(printString, "Brake Failure Force Limit N: %.3f\n", BrakeParamsPtr->failureParameter.failureTorqueLimitNm);
			SendStrUARTB(printString);
			break;
		case ANGULARVELOCITY:
			sprintf(printString, "Brake Failure Velocity Limit m/s: %.3f\n", BrakeParamsPtr->failureParameter.failureAngVelLimitRadPS);
			SendStrUARTB(printString);
			break;
		default:
			sprintf(printString, "Brake Failure Type-Indeterminate 32 Bit Data: %lu\n", BrakeParamsPtr->failureParameter.typeIndeterminate32BitData);
			SendStrUARTB(printString);
			break;
	}
	sprintf(printString, "Brake Failure Percentage %%: %.2f\n", BrakeParamsPtr->percentFailure);
	SendStrUARTB(printString);
	sprintf(printString, "Did brake failure occur at some point?: %d\n", BrakeParamsPtr->isFailureOccurring);
	SendStrUARTB(printString);
	sprintf(printString, "Twister Failure Mode (0=none; 1=time; 2=force; 3=vel): %d\n", TwisterParamsPtr->failureMode);
	SendStrUARTB(printString);
	switch (TwisterParamsPtr->failureMode)
	{
		case TIME:
			sprintf(printString, "Twister Failure Start Time us: %lu\n", TwisterParamsPtr->failureParameter.failureStartTimeUsec);
			SendStrUARTB(printString);
			break;
		case TORQUE:
			sprintf(printString, "Twister Failure Force Limit N: %.3f\n", TwisterParamsPtr->failureParameter.failureTorqueLimitNm);
			SendStrUARTB(printString);
			break;
		case ANGULARVELOCITY:
			sprintf(printString, "Twister Failure Velocity Limit m/s: %.3f\n", TwisterParamsPtr->failureParameter.failureAngVelLimitRadPS);
			SendStrUARTB(printString);
			break;
		default:
			sprintf(printString, "Twister Failure Type-Indeterminate 32 Bit Data: %lu\n", TwisterParamsPtr->failureParameter.typeIndeterminate32BitData);
			SendStrUARTB(printString);
			break;
	}
	sprintf(printString, "Twister Failure Percentage %%: %.2f\n", TwisterParamsPtr->percentFailure);
	SendStrUARTB(printString);
	sprintf(printString, "Did twister failure occur at some point?: %d\n", TwisterParamsPtr->isFailureOccurring);
	SendStrUARTB(printString);
	sprintf(printString, "Where did Operating Parameters come from (0=unknown; 1=flash; 2=hardcode; 3=comm): %u\n", WhereDidOpParamsComeFrom);
	SendStrUARTB(printString);
#endif
	//MUSA-TEMPORARY
	SendStrUARTB("\n\n");

	if (OpParamsPtr->structure.dataDecimationFactor > 1)																			// this means the user chose to decimate by some factor
	{
		SendStrUARTB("\n\nSample#,Time[us],AngVelocity[rad/s],BrakeFailure[%],BrakeTorque[Nm]");
		SendStrUARTB(",TwisterFailure[%],TwisterTorque[Nm],TorqueOffset[Nm],Pretension[Nm]");
		SendStrUARTB(",DemandTorque[Nm],WTBTorque[Nm],ArrTorque[Nm]\n");															// send the decimated-data header over UARTB
	}
	else																															// otherwise
	{
		SendStrUARTB("\n\nSample#,Time[us],AngPosition[rad],AngVelocity[rad/s],BrakeFailure[%]");
		SendStrUARTB(",BrakeTorque[Nm],TwisterFailure[%],TwisterTorque[Nm],TorqueOffset[Nm]");
		SendStrUARTB(",Pretension[Nm],DemandTorque[Nm],AnalogOut[V],WTBTorque[Nm],ArrTorque[Nm]");
		SendStrUARTB(",BRCurrent[A],BRTemp[degC]\n");																				// send the full-data header over UARTB
	}

	for (sampleNumber = 0; sampleNumber <= lastSampleNumber; sampleNumber++)														// and then output the data, line by line, from 0 through the most recently stored point
	{
		//check the modulus of line number and decimation factor
		if( (sampleNumber % OpParamsPtr->structure.dataDecimationFactor) == 0)					// if not decimating, this branch always runs; if decimating (factor >  1), only runs every (factor)th sample, starting with #0, #(factor), etc
		{
			if (OpParamsPtr->structure.dataDecimationFactor > 1)																	// if we are decimating
			{
				sprintf(printString, "%lu,%lu,%.2f,%d,%.2f,%d,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f\n",							// print the formatted values in reduced-resolution form, first to a buffer string
								sampleNumber,																						// %lu
								TwisterBrakeData[sampleNumber].ElapsedTimeInUsec,													// %lu
								TwisterBrakeData[sampleNumber].AngularVelocityInRadsPerSecond,										// %.2f
						(int16)	TwisterBrakeData[sampleNumber].BrakeFailurePercentIfOccurring,										// %d
								TwisterBrakeData[sampleNumber].BrakeTorqueInNewtonMeters,											// %.2f
						(int16)	TwisterBrakeData[sampleNumber].TwisterFailurePercentIfOccurring,									// %d
								TwisterBrakeData[sampleNumber].TwisterTorqueInNewtonMeters,											// %.2f
								TwisterBrakeData[sampleNumber].TorqueOffsetInNewtonMeters,											// %.2f
								TwisterBrakeData[sampleNumber].CablePretensionTorqueInNewtonMeters,									// %.2f
								TwisterBrakeData[sampleNumber].DemandTorqueInNewtonMeters,											// %.2f
								TwisterBrakeData[sampleNumber].TwisterTorqueSensorInNm,												// %.2f
								TwisterBrakeData[sampleNumber].ArrestmentTorqueSensorInNm											// %.2f
						);
			}
			else																													// if we aren't decimating
			{
				sprintf(printString, "%lu,%lu,%.5f,%.3f,%.1f,%.4f,%.1f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%u\n",// print the formatted values in full-resolution form, first to a buffer string
					   sampleNumber,																								// %lu
					   TwisterBrakeData[sampleNumber].ElapsedTimeInUsec,															// %lu
					   TwisterBrakeData[sampleNumber].AdjustedEncoderPositionInRads,												// %.5f
					   TwisterBrakeData[sampleNumber].AngularVelocityInRadsPerSecond,												// %.3f
					   TwisterBrakeData[sampleNumber].BrakeFailurePercentIfOccurring,												// %.1f
					   TwisterBrakeData[sampleNumber].BrakeTorqueInNewtonMeters,													// %.4f
					   TwisterBrakeData[sampleNumber].TwisterFailurePercentIfOccurring,												// %.1f
					   TwisterBrakeData[sampleNumber].TwisterTorqueInNewtonMeters,													// %.2f
					   TwisterBrakeData[sampleNumber].TorqueOffsetInNewtonMeters,													// %.2f
					   TwisterBrakeData[sampleNumber].CablePretensionTorqueInNewtonMeters,											// %.2f
					   TwisterBrakeData[sampleNumber].DemandTorqueInNewtonMeters,													// %.2f
					   TwisterBrakeData[sampleNumber].CommandVoltageInVolts,														// %.2f
					   TwisterBrakeData[sampleNumber].TwisterTorqueSensorInNm,														// %.2f
					   TwisterBrakeData[sampleNumber].ArrestmentTorqueSensorInNm,													// %.2f
					   TwisterBrakeData[sampleNumber].BrakeResistorCurrentInAmps,													// %.2f
					   TwisterBrakeData[sampleNumber].BrakeResistorTemperatureInDegC												// %u
					);
			}
			SendStrUARTB(printString);																								// then either way, output the buffer through UARTB to the terminal

			//Is the user trying to stop the download?
			if( IsButtonPressed( SW3 ) ==  TRUE )
			{
				//Make sure button is released before we return, because pressing it again starts the dump again.
				WaitForButtonPressAndRelease( SW3 );
				//Stop this data dump and return
				break;
			}
		}
	}
}

//! Copy a string into a user's buffer, keeping track of where it goes as more strings are added.
//! @param InputPointer Address of string to add to output buffer
//! @param OutputPointer Address of the start of the buffer that will hold the output. Routine keeps track of where it is in the buffer.
//! @retval Pointer into buffer.
Uint16 AddStringToBuffer( char16 *InputPointer, Uint16 *OutputPointer  )
{
	static Uint16 OutputOffset = 0;

	//If the input pointer is a magic number, reset the output pointer to the start of the buffer
	if( (Uint32)InputPointer == CLEAR_COMM_BUFFER_POINTER )
	{
		OutputOffset = 0;
	}
	else
	{
		//as long as there's not a null on the input
		while( *InputPointer != 0 )
		{
			//copy it across and bump both pointers
			OutputPointer[ OutputOffset++ ] = *InputPointer++;
		}
		//Put in a null at the end - NO, not needed, there are newlines where needed, we keep track of byte counts.
		//The NULLS will get printed at the other end, which is not terrible, but dumb.
		//OutputPointer[ OutputOffset++ ] = 0;
	}
	//return a count of how far into the buffer we are
	return( OutputOffset );
}

//FINDME
//! Prepare info needed to facilitate data download to Dev2.
//! Builds header packet that has text describing all the settings. Also builds structure containing info about the data to be downloaded.
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param *DamperParamsPtr	Pointer to a structure of type DamperFailureStruct, which holds the damper failure parameters
void DumpDataMakeSettingsInfo( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, BrakeParametersStruct *BrakeParamsPtr, TwisterFailureStruct *TwisterParamsPtr )
{
	Uint16 HeaderSize;
	Uint16 lastSampleNumber;			// highest sample to output
	Uint16 DecimationFactor;			// set by comm, or by default
	Uint16 DecimatedLastSampleNumber;	// how many records are there after decimation
	Uint16 BytesPerLine;				// how many bytes per line are there
	Uint16 BytesPerDecimatedLine;		// decimated data may omit some parts
	char16 printString[100];			// print buffer
	Uint16 i;

	//This just makes the code a little neater, it says where to start inserting data into the buffer, and it is repeated a lot
	#define BUFFER_ADD &AppCommDataBuffer[3]

	//give us a fair shot at working by clearing the buffer area
	for( i=0; i<CHARS_IN_EACH_TX_QUEUE; i++ )
	{
		AppCommDataBuffer[ i ] = 0;
	}

	//The decimation factor can change after a run is completed. The easiest way to handle that is here.
	OpParamsPtr->structure.dataDecimationFactor = ExchangeGetDecimationFactor();

	//Tell the buffer-building function to reset its pointer to zero.
	AddStringToBuffer((char16 *)CLEAR_COMM_BUFFER_POINTER, 0);

	//build the first part of the download process - the text area.
	//First 2 bytes of the buffer are the length H and L, which we don't know yet.
	AppCommDataBuffer[ 0 ] = 0;
	AppCommDataBuffer[ 1 ] = 0;
	//Next byte is the incoming command code. We'll let the comm reply code insert that.
	AppCommDataBuffer[ 2 ] = 0;

	//Print a header so the other end knows which board is sending the data
	if( IsStarboardJumperInstalled() == TRUE )
	{
		sprintf(printString, "\nStarboard Water Twister Brake Board\n");
	}
	else
	{
		sprintf(printString, "\nPort Water Twister Brake Board\n");
	}
	AddStringToBuffer( printString, BUFFER_ADD );

	//This info is under 2,000 bytes - typically under 1400 chars
	//Print a list of parameters used in this run, for the record
	sprintf(printString, "\nSecurity Key: %u\n", OpParamsPtr->structure.securityKey);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Parameter ID Tag: %u\n", OpParamsPtr->structure.parameterIDTag);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "DAC Channel: %u\n", OpParamsPtr->structure.DACchannel);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "DACVoltagesNow Index: %u\n", OpParamsPtr->structure.DACVoltagesNowIndex);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Quadrature Resolution counts/rev: %u\n", OpParamsPtr->structure.quadResCountsPerRev);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Water Twister Constant Nm/(rad/s)^2: %.4f\n", OpParamsPtr->structure.waterTwisterConstant);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Zero Torque Nm: %.2f\n", OpParamsPtr->structure.zeroTorqueNM);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Motor Analog Offset V: %.2f\n", OpParamsPtr->structure.motorAnalogOffsetVolts);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Motor Analog Scaling A/V: %.2f\n", OpParamsPtr->structure.motorAnalogScalingAmpsPerVolt);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Motor Strength N/A: %.2f\n", OpParamsPtr->structure.ampsToNewtonMeters);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Decimation Factor: %u\n", OpParamsPtr->structure.dataDecimationFactor);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Quadrature Sign Constant: %d\n", OpParamsPtr->structure.quadConstant);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Twister Torque Sensor ADCWord-to-Newton-Meters Slope Nm/count: %.4f\n", OpParamsPtr->structure.twisterTorqueSensorADCWordToNmSlope);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Twister Torque Sensor ADCWord-to-Newton-Meters Intercept Nm: %.4f\n", OpParamsPtr->structure.twisterTorqueSensorADCWordToNmIntercept);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Arrestment Torque Sensor ADCWord-to-Newton-Meters Slope Nm/count: %.4f\n", OpParamsPtr->structure.arrestTorqueSensorADCWordToNmSlope);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Arrestment Torque Sensor ADCWord-to-Newton-Meters Intercept Nm: %.4f\n", OpParamsPtr->structure.arrestTorqueSensorADCWordToNmIntercept);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Brake Resistor Current Sensor Amps-to-Volts V/A: %.3f\n", OpParamsPtr->structure.BRcurrentSensorVoltsPerAmp);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Actual-to-Demand Torque Slope, Nm/Nm: %.4f\n", OpParamsPtr->structure.actualToDemandTorqueSlope);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Actual-to-Demand Torque Intercept, Nm: %.4f\n", OpParamsPtr->structure.actualToDemandTorqueIntercept);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Encoder High Borderline counts: %u\n", OpParamsPtr->structure.encoderCountHighBorderline);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Encoder Low Borderline counts: %u\n", OpParamsPtr->structure.encoderCountLowBorderline);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 1: %lu\n", OpParamsPtr->structure.spareVariableOne);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 2: %lu\n", OpParamsPtr->structure.spareVariableTwo);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 3: %lu\n", OpParamsPtr->structure.spareVariableThree);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 4: %lu\n", OpParamsPtr->structure.spareVariableFour);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 5: %lu\n", OpParamsPtr->structure.spareVariableFive);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 6: %lu\n", OpParamsPtr->structure.spareVariableSix);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 7: %lu\n", OpParamsPtr->structure.spareVariableSeven);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Spare Variable 8: %lu\n", OpParamsPtr->structure.spareVariableEight);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "CRC: %u\n", OpParamsPtr->structure.CRC);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Brake Parameters (zeta; w_N; a; b; c): %.4f; %.4f; %.4f; %.4f; %.4f\n", BrakeParamsPtr->zeta,
						  BrakeParamsPtr->omegaN, BrakeParamsPtr->a, BrakeParamsPtr->b, BrakeParamsPtr->c);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Brake Failure Mode (0=none, 1=time, 2=force, 3=vel): %d\n", BrakeParamsPtr->failureMode);
	AddStringToBuffer( printString, BUFFER_ADD );
	switch (BrakeParamsPtr->failureMode)
	{
		case TIME:
			sprintf(printString, "Brake Failure Start Time us: %lu\n", BrakeParamsPtr->failureParameter.failureStartTimeUsec);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
		case TORQUE:
			sprintf(printString, "Brake Failure Force Limit N: %.3f\n", BrakeParamsPtr->failureParameter.failureTorqueLimitNm);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
		case ANGULARVELOCITY:
			sprintf(printString, "Brake Failure Velocity Limit m/s: %.3f\n", BrakeParamsPtr->failureParameter.failureAngVelLimitRadPS);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
		default:
			sprintf(printString, "Brake Failure Type-Indeterminate 32 Bit Data: %lu\n", BrakeParamsPtr->failureParameter.typeIndeterminate32BitData);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
	}
	sprintf(printString, "Brake Failure Percentage %%: %.2f\n", BrakeParamsPtr->percentFailure);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Did brake failure occur at some point?: %d\n", BrakeParamsPtr->isFailureOccurring);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Twister Failure Mode (0=none; 1=time; 2=force; 3=vel): %d\n", TwisterParamsPtr->failureMode);
	AddStringToBuffer( printString, BUFFER_ADD );
	switch (TwisterParamsPtr->failureMode)
	{
		case TIME:
			sprintf(printString, "Twister Failure Start Time us: %lu\n", TwisterParamsPtr->failureParameter.failureStartTimeUsec);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
		case TORQUE:
			sprintf(printString, "Twister Failure Force Limit N: %.3f\n", TwisterParamsPtr->failureParameter.failureTorqueLimitNm);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
		case ANGULARVELOCITY:
			sprintf(printString, "Twister Failure Velocity Limit m/s: %.3f\n", TwisterParamsPtr->failureParameter.failureAngVelLimitRadPS);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
		default:
			sprintf(printString, "Twister Failure Type-Indeterminate 32 Bit Data: %lu\n", TwisterParamsPtr->failureParameter.typeIndeterminate32BitData);
			AddStringToBuffer( printString, BUFFER_ADD );
			break;
	}
	sprintf(printString, "Twister Failure Percentage %%: %.2f\n", TwisterParamsPtr->percentFailure);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Did twister failure occur at some point?: %d\n", TwisterParamsPtr->isFailureOccurring);
	AddStringToBuffer( printString, BUFFER_ADD );
	sprintf(printString, "Where did Operating Parameters come from (0=unknown; 1=flash; 2=hardcode; 3=comm): %u\n", WhereDidOpParamsComeFrom);
	AddStringToBuffer( printString, BUFFER_ADD );
	AddStringToBuffer( "\n\n", BUFFER_ADD );
	AddStringToBuffer( "End of header info\n", BUFFER_ADD );

	//Print a tag so Musa can find the data and know what board it's from
	if( IsStarboardJumperInstalled() == TRUE )
	{
		sprintf(printString, "[SWTB]\n");
	}
	else
	{
		sprintf(printString, "[PWTB]\n");
	}
	AddStringToBuffer( printString, BUFFER_ADD );

	//This is the last string we're adding to the buffer. Keep track of total size.
	//Put in the list of variable names that we're dumping in the big download
	if (OpParamsPtr->structure.dataDecimationFactor > 1)										// this means the user chose to decimate by some factor
	{
		AddStringToBuffer( "Sample#,Time[us],AngVelocity[rad/s],BrakeFailure[%],BrakeTorque[Nm]",		BUFFER_ADD );
		AddStringToBuffer( ",TwisterFailure[%],TwisterTorque[Nm],TorqueOffset[Nm],Pretension[Nm]",		BUFFER_ADD );
		AddStringToBuffer( ",DemandTorque[Nm],WTBTorque[Nm],ArrTorque[Nm]",								BUFFER_ADD );
	}
	else																						// otherwise no decimation, more variables
	{
		AddStringToBuffer( "Sample#,Time[us],AngPosition[rad],AngVelocity[rad/s],BrakeFailure[%]",		BUFFER_ADD );
		AddStringToBuffer( ",BrakeTorque[Nm],TwisterFailure[%],TwisterTorque[Nm],TorqueOffset[Nm]",		BUFFER_ADD );
		AddStringToBuffer( ",Pretension[Nm],DemandTorque[Nm],AnalogOut[V],WTBTorque[Nm],ArrTorque[Nm]",	BUFFER_ADD );
		AddStringToBuffer( ",BRCurrent[A],BRTemp[degC]",												BUFFER_ADD );
	}

	//This puts the newline on the excel header, and also stores the size of the header for putting in the packet
	HeaderSize = AddStringToBuffer( "\n\n", BUFFER_ADD );

	//First 2 bytes of the buffer are the length H and L so put them in there
	lastSampleNumber = ConditionsPtr->currentSampleIndex - 1;							// currentSampleIndex was incremented one final time, so adjust for that
	AppCommDataBuffer[ 0 ] = HighByte(	HeaderSize );
	AppCommDataBuffer[ 1 ] = LowByte(	HeaderSize );
	//The next entry is the command code, but the reply routine will put that in.
	//Adjust the byte count for the command code
	HeaderSize++;

	//Get whatever the last decimation factor was set to
	DecimationFactor = ExchangeGetDecimationFactor();
	//We also need to set up a reply for how many lines of data there are, and how many bytes each line of data is, and other data
	DecimatedLastSampleNumber = lastSampleNumber / DecimationFactor;
	//Bytes per line is how many binary bytes it takes to represent one line of data.
	//This does not mean ascii characters. It means if there are 2 float32's in a line of data, the number is 8.
	BytesPerLine			= DOWNLOAD_BYTES_PER_LINE_STD;
	BytesPerDecimatedLine	= DOWNLOAD_BYTES_PER_LINE_DECIMATED;
	ExchangeSetDownloadInfo( (Uint32)lastSampleNumber, (Uint32)DecimatedLastSampleNumber, DecimationFactor, BytesPerLine, BytesPerDecimatedLine, HeaderSize, AppCommDataBuffer, CHARS_IN_EACH_TX_QUEUE);
}

//! Build lines of data to be sent over comm to central.
//! @param StartingSampleNumber
//! @param EndingSampleNumber
//! @param *DumpStorage
void AppDumpRequestedDataLines( Uint32 StartingSampleNumber, Uint32 EndingSampleNumber, Uint8 * DumpStorage )
{
	Uint32 ThisLine;										// counting variable for sample
	Uint32 NumberOfSamples;									// how many samples were collected
	Uint16 DecimationFactor;								//decimation factor
	DataDownloadInfoStruct DownloadInfo;					//hold all the download general info

	//ask for all the info about the data that has been collected
	ExchangeGetDownloadInfo( &DownloadInfo );
	NumberOfSamples		= DownloadInfo.NumberOfRecords;
	DecimationFactor	= DownloadInfo.DecimationValue;

	//validate user parameters
	if( StartingSampleNumber >= NumberOfSamples )
	{
		StartingSampleNumber = NumberOfSamples - 1;
	}

	if( StartingSampleNumber > EndingSampleNumber )
	{
		 EndingSampleNumber = StartingSampleNumber;
	}

	//Go through all the lines we've been told to look at
	for( ThisLine = StartingSampleNumber; ThisLine <= EndingSampleNumber; ThisLine++ )
	{
		// if we ARE decimating
		if( DecimationFactor > 1 )
		{
			//We are decimating the output, so check the modulus of line number and decimation factor
			if( (ThisLine % DecimationFactor ) == 0)
			{
				DumpStorage = Int32ToBytes( 			ThisLine,														DumpStorage );	// %lu	4
				DumpStorage = Int32ToBytes( 			TwisterBrakeData[ThisLine].ElapsedTimeInUsec,					DumpStorage );	// %lu	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].AngularVelocityInRadsPerSecond,		DumpStorage );	// %.2f	4
				DumpStorage = Int16ToBytes(		(int16) TwisterBrakeData[ThisLine].BrakeFailurePercentIfOccurring,		DumpStorage );	// %d	2
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].BrakeTorqueInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Int16ToBytes(		(int16)	TwisterBrakeData[ThisLine].TwisterFailurePercentIfOccurring,	DumpStorage	);	// %d	2
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].TwisterTorqueInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].TorqueOffsetInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].CablePretensionTorqueInNewtonMeters,	DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].DemandTorqueInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].TwisterTorqueSensorInNm,				DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].ArrestmentTorqueSensorInNm,			DumpStorage	);	// %.2f	4	total 44
			}
		}
		else
		{
				// if we are NOT decimating
				DumpStorage = Int32ToBytes( 			ThisLine,														DumpStorage );	// %lu	4
				DumpStorage = Int32ToBytes( 			TwisterBrakeData[ThisLine].ElapsedTimeInUsec,					DumpStorage );	// %lu	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].AdjustedEncoderPositionInRads,		DumpStorage );	// %.3f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].AngularVelocityInRadsPerSecond,		DumpStorage );	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].BrakeFailurePercentIfOccurring,		DumpStorage );	// %.2f 4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].BrakeTorqueInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].TwisterFailurePercentIfOccurring,	DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].TwisterTorqueInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].TorqueOffsetInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].CablePretensionTorqueInNewtonMeters,	DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].DemandTorqueInNewtonMeters,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].CommandVoltageInVolts,				DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].TwisterTorqueSensorInNm,				DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].ArrestmentTorqueSensorInNm,			DumpStorage	);	// %.2f	4
				DumpStorage = Float32ToBytes(			TwisterBrakeData[ThisLine].BrakeResistorCurrentInAmps,			DumpStorage	);	// %.2f	4
				DumpStorage = Int16ToBytes(		(int16)	TwisterBrakeData[ThisLine].BrakeResistorTemperatureInDegC,		DumpStorage	);	// %d	2	total 62
		}
	}
}

//! Calculate the actual encoder count, starting with the last stored and current 16-bit encoder counts and adjusting them with the sign and over/under-flow numbers

//! THIS FUNCTION NEEDS TO BE CALLED VERY OFTEN, OTHERWISE, THE QUADRATURE CAN OVER/UNDERFLOW WITHOUT DETECTION, AND THE DATA WILL BECOME INVALID
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
int32 GetAdjustedEncoderCount( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr )
{
	int32 adjustedEncoderCount;																			// calculated return value

	ConditionsPtr->lastEncoderCount = ConditionsPtr->thisEncoderCount;									// bump the stale reading back
	ConditionsPtr->thisEncoderCount = GetQuadratureCountA();											// and take a new reading

	if (ConditionsPtr->lastEncoderCount > OpParamsPtr->structure.encoderCountHighBorderline
		&& ConditionsPtr->thisEncoderCount < OpParamsPtr->structure.encoderCountLowBorderline)			// this means an overflow occurred (the encoder went
	{																									// quickly from being right below max to being right above min)
		ConditionsPtr->encoderOverflows++;																// so increment the overflows counter - it's moving forwards
	}
	else if (ConditionsPtr->lastEncoderCount < OpParamsPtr->structure.encoderCountLowBorderline
			 && ConditionsPtr->thisEncoderCount > OpParamsPtr->structure.encoderCountHighBorderline)	// this means an underflow occurred (the encoder went
	{																									// quickly from being right above min to being right below max)
		ConditionsPtr->encoderOverflows--;																// so decrement the overflows counter - it's moving backwards
	}

	adjustedEncoderCount = (int32)(OVERFLOWS_MULTIPLIER) * ConditionsPtr->encoderOverflows + (int32)(ConditionsPtr->thisEncoderCount);									// calculate encoder count, taking into account over/underflows
	adjustedEncoderCount *= OpParamsPtr->structure.quadConstant;										// and multiply it by (1) or (-1), depending on the sign

	return( adjustedEncoderCount );
}

//! Read the analog input for the desired torque sensor and convert it to an actual torque (in Nm)

//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param whichSensor	Either the water-twister/brake or the arrestment motor torque sensor, designated by a typedef enum (literally as the ADC channel each is attached to)
float32 ReadTorqueSensorInNm( OperatingParameters *OpParamsPtr, TorqueSensorInput whichSensor )
{
	float32 analogInput;
	float32 returnTorque;

	// Get the actual analog input voltage, as a 16-bit ADC word
	analogInput = SampleAndAverageInternalADC((Uint16)(whichSensor), ADC_SAMPLES_FOR_TORQUE); // cast the enumerated type to its appropriate integer for the call

	// Convert analog input word into torque reading using a linear mapping, including adjustment for sensor calibration
	if (whichSensor == TwisterTorqueSensor)
	{
		returnTorque = analogInput * OpParamsPtr->structure.twisterTorqueSensorADCWordToNmSlope
					   + OpParamsPtr->structure.twisterTorqueSensorADCWordToNmIntercept;
	}
	else
	{
		returnTorque = analogInput * OpParamsPtr->structure.arrestTorqueSensorADCWordToNmSlope
					   + OpParamsPtr->structure.arrestTorqueSensorADCWordToNmIntercept;
	}

	return( returnTorque );

	// Get the actual analog input voltage, converted by the ADC function before returning
	analogInput = ReadAnalogVoltage((Uint16)(whichSensor), ADC_SAMPLES_FOR_TORQUE);				// the function takes an integer channel number, so cast the enumerated type to its appropriate integer

	// Convert analog input into torque reading using a linear mapping, including adjustment for sensor calibration
	if (whichSensor == TwisterTorqueSensor)
	{
		returnTorque = analogInput * OpParamsPtr->structure.twisterTorqueSensorVoltsToNmSlope
					   + OpParamsPtr->structure.twisterTorqueSensorVoltsToNmIntercept;
	}
	else
	{
		returnTorque = analogInput * OpParamsPtr->structure.arrestTorqueSensorVoltsToNmSlope
					   + OpParamsPtr->structure.arrestTorqueSensorVoltsToNmIntercept;
	}

	return( returnTorque );
}

//! Read the analog input for the brake resistor current sensor and convert it to the actual current (in A)

//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
float32 ReadBRCurrentSensorInA( OperatingParameters *OpParamsPtr )
{
	float32 analogInput;
	float32 returnCurrent;

	// Get the actual analog input voltage, converted by the ADC function before returning
	analogInput = ReadAnalogVoltage((Uint16)(BrakeResistorCurrent), ADC_SAMPLES_FOR_BRCURRENT);

	// Convert analog input into torque reading using a linear scaling, which includes adjustment for sensor calibration
	returnCurrent = analogInput / OpParamsPtr->structure.BRcurrentSensorVoltsPerAmp;

	return( returnCurrent );
}

//! Clear all data in the data array and reset the index counters

//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void ClearData( CurrentConditionsStruct *ConditionsPtr )
{
	MemFill( (Uint16 *)&TwisterBrakeData[0], (Uint16 *)(&TwisterBrakeData[MAX_NUMBER_OF_SAMPLES]), 0 );		// fill all associated memory with 0s

	ConditionsPtr->currentSampleIndex = 0;																	// clear the sample indices to be ready for another data collection cycle
	ConditionsPtr->currentRetractSampleIndex = 0;

	ConditionsPtr->canITakeData = TRUE;																		// and re-allow data to be taken
	ConditionsPtr->canITakeRetractData = TRUE;
}

//! Retract the cable after an arrestment

//! This function is called when the user indicates they want to start a post-arrestment retraction of the cable. It switches the Kolmorgen
//! controller into velocity mode, then retracts the cable according to the following profile: ramp up the velocity at predefined constant
//! acceleration to a predefined maximum; move at this max until reaching a predefined number of revolutions before full retraction; then
//! ramp down the velocity from its max to 0, in proportion to the amount of revolutions remaining before full retraction (which produces an
//! exponential decrease in velocity down to ~0); finally, force velocity to =0. Everything is done in sync with the 2kHz Timer2 interrupt

//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void RetractCable( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr )
{
	float32					actualInitialRevolutions;
	int16					encoderSignAtFullExtension;
	float32					velocityOutMPS;										// velocity magnitude, defined so that it retracts the cable when positive
	float32					revolutionsOfExtension;								// revolutions of cable extension (not a magnitude), defined so that cable extension is positive
	boolean					exitingRetract;										// retract must end, set by the first while loop where user presses SW2, causes others to skip
	CommMessageToAppType	CommMessageToApp;									// signal from comm processor. Allows leaving standby state, and can shut down the app.

	exitingRetract = FALSE;

	StartCpuTimer0();											// make sure the CPU timer is actually on (was a problem in the past)

	//You can only retract the cable once
	if (ConditionsPtr->retractionHappened == FALSE)
	{
		// Make sure the analog output is 0, and switch to analog-driven velocity mode
		VoltagetoDAC(0, OpParamsPtr->structure.DACchannel);
		SSROutputsOn(SSR2);
		DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);

		// Make sure to explicitly output a 0 velocity
		velocityOutMPS = 0;
		OutputVelocityAsVoltage(velocityOutMPS, OpParamsPtr, ConditionsPtr);

		// Get the t_0 value and initial position (to have the proper sign)
		ConditionsPtr->timerStartingValue = ReadTimer0Clean();
		actualInitialRevolutions	= (float32)( GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr) ) / OpParamsPtr->structure.quadResCountsPerRev;
		encoderSignAtFullExtension	= (int16)( actualInitialRevolutions / abs(actualInitialRevolutions) );

		// Linearly ramp up the cable-infeed-velocity from 0 at a constant acceleration, until it reaches a predefined maximum or (off chance) passes the slow-down position
		revolutionsOfExtension		= (float32)( GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr) ) / OpParamsPtr->structure.quadResCountsPerRev;
		velocityOutMPS = 0;

		while ( ((velocityOutMPS < VELOCITY_MAX_MPS) && (fabsf(revolutionsOfExtension) > REVS_TO_SLOW_DOWN)) )		// run this until the output velocity matches the max or passes the slow-down position
		{
			if (IsButtonPressed(SW2) == TRUE || exitingRetract == TRUE)												// if the user is pressing SW2 or did so previously, retract must end NOW
			{
				exitingRetract = TRUE;																				// so set the flag to skip future loops (or reenforce its state)
				break;																								// and force break out of this loop
			}

			if (CheckTimer2ISRFlag() == TRUE)																		// triggered every 500us, on the interrupt
			{
				OutputVelocityAsVoltage(velocityOutMPS, OpParamsPtr, ConditionsPtr);								// actually output the previously-updated velocity

				ConditionsPtr->currentTime = ReadTimer0Clean();												// determine the elapsed time, (t - t_0)
				ConditionsPtr->thisTimeStampUsec = ConditionsPtr->timerStartingValue - ConditionsPtr->currentTime;

				velocityOutMPS = CONST_ACC_MPS2 * (ConditionsPtr->thisTimeStampUsec / 1E6);							// the output velocity is given by v = a*(t-t_0)
				if (velocityOutMPS > VELOCITY_MAX_MPS)																// and force the velocity down if it has surpassed the max
				{
					velocityOutMPS = VELOCITY_MAX_MPS;
				}
				revolutionsOfExtension = (float32)(GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr))
										 / OpParamsPtr->structure.quadResCountsPerRev;								// keep updating the number of revolutions to go

				StoreRetractDataNow(OpParamsPtr, ConditionsPtr, velocityOutMPS);									// and store data
			}
		}
		OutputVelocityAsVoltage(velocityOutMPS, OpParamsPtr, ConditionsPtr);										// make sure the final velocity is output ASAP

		// Move at constant maximum velocity, until the angular position (in revolutions) arrives at the predefined point when it needs to start to SLOW DOWN
		revolutionsOfExtension = (float32)( GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr) ) / OpParamsPtr->structure.quadResCountsPerRev;
		while(fabsf(revolutionsOfExtension) > REVS_TO_SLOW_DOWN)
		{
			if (IsButtonPressed(SW2) == TRUE || exitingRetract == TRUE)												// if the user is pressing SW2 or did so previously, retract must end NOW
			{
				exitingRetract = TRUE;																				// so set the flag to skip future loops (or reenforce its state)
				break;																								// and force break out of this loop
			}

			if (CheckTimer2ISRFlag() == TRUE)																		// triggered every 500 us, on the interrupt
			{
				OutputVelocityAsVoltage(velocityOutMPS, OpParamsPtr, ConditionsPtr);								// same velocity, but voltage may change depending on spool

				revolutionsOfExtension = (float32)(GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr) ) / OpParamsPtr->structure.quadResCountsPerRev;	// just keep updating the number of revolutions to go

				StoreRetractDataNow(OpParamsPtr, ConditionsPtr, velocityOutMPS);									// and store data
			}
		}

		// Ramp down the velocity in proportion to the number of revolutions left to go, until the spool returns to home
		while( signum(revolutionsOfExtension) == encoderSignAtFullExtension )										// if the encoder started off as positive, run until the revolutionsOfExtension becomes 0 or negative
		{																											// otherwise, run until revolutionsOfExtension becomes 0 or positive
			if( (IsButtonPressed(SW2) == TRUE) || (exitingRetract == TRUE) )										// if the user is pressing SW2 or did so previously, retract must end NOW
			{
				exitingRetract = TRUE;																				// so set the flag to skip future loops (or reenforce its state)
				break;																								// and force break out of this loop
			}
			if( CheckTimer2ISRFlag() == TRUE )																		// triggered every 500us, on the interrupt
			{
				velocityOutMPS = VELOCITY_MAX_MPS * fabsf(revolutionsOfExtension) / REVS_TO_SLOW_DOWN;				// calculate the output velocity
				if (velocityOutMPS < MINIMUM_FINAL_VELOCITY_MPS)
				{
					velocityOutMPS = MINIMUM_FINAL_VELOCITY_MPS;
				}
				OutputVelocityAsVoltage(velocityOutMPS, OpParamsPtr, ConditionsPtr);								// and output it

				revolutionsOfExtension = (float32)(GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr)) / OpParamsPtr->structure.quadResCountsPerRev;	// and keep updating the number of revolutions left to go

				StoreRetractDataNow(OpParamsPtr, ConditionsPtr, velocityOutMPS);									// and store data
			}
		}

		//say we already did it so we can't do it again
		ConditionsPtr->retractionHappened = TRUE;
		//It's done again later, but clear the flag that got us into retract in the first place.
		//We do this so we can set it again as a way to manually exit the retract
		ExchangeSetRetractionFlag( FALSE );

		// The retraction is complete and position and velocity should be at 0 at this point. Make sure of that.
		OutputVelocityAsVoltage(0, OpParamsPtr, ConditionsPtr);
		SendStrUARTB("Retaction complete.\n");

		// Disable the motor while in velocity mode at 0 velocity to ensure it STAYS WHERE IT IS
		SSROutputsOff(SSR1);
		DELAY_US(DELAY_AFTER_MOTOR_DISABLE_US);

		// Now that the brake is applied, switch back to torque mode and zero it
		SSROutputsOff(SSR2);
		DELAY_US(DELAY_AFTER_SWITCHING_MOTOR_MODE_US);
		ConditionsPtr->thisDesiredNetTorqueNm = 0;
		OutputTorqueAsVoltage(OpParamsPtr, ConditionsPtr);

		// I have removed this functionality, so retract state ends automatically after returning the shaft to its original location.
		// Removing this block also removes the possibility of dumping the retract data by pressing SW3, which we have not needed since it was first implemented.
#if 0
		// Whether retract happened successfully or not, and now that safe state is restored, wait for SW2 or SW3 to know how to proceed
		while(TRUE)
		{
			if( IsButtonPressed(SW2) == TRUE)				// if user presses SW2,
			{
				WaitForButtonPressAndRelease(SW2);			// wait for release
				break;										// and immediately return to wherever called RetractCable()
			}
			if( IsButtonPressed(SW3) == TRUE)				// but if they press SW3
			{
				WaitForButtonPressAndRelease(SW3);			// wait for release
				DumpRetractData(ConditionsPtr);				// and dump the retract data, which also monitors for SW3 (or just waits for runout) to return to this point
			}												// at that time, the user can press SW3 to restart the data dump, or press SW2 to break as above
			if( ExchangeGetRetractionFlag() == TRUE )		//User can manually exit the retract state by sending another retract command
			{
				//First, let's make sure it's cleared
				ExchangeSetRetractionFlag( FALSE );
				//Now, exit
				break;
			}
			//In order to be able to get the comm signal to end this state, comm has to run, but that's ok because at this time, the retract motion is done.
			CommMessageToApp = DoCommStuff( OpParamsPtr, ConditionsPtr, TwisterParamsPtr, CommMessageToApp ); //comm looks at current state to know how to react
		}
#endif
		ExchangeSetRetractionFlag(FALSE);					// make sure the retract flag is cleared before returning

	}
}

void StoreRetractDataNow( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, float32 velocityOutMPS )
{
	Uint32 dataIndex;

	dataIndex = ConditionsPtr->currentRetractSampleIndex / RETRACTDECIMATIONFACTOR;										// this increments every __ samples; point 0 corresponds to 0th sample, 1 to 5th, 2 to 10th, etc (for decimation)

	if (ConditionsPtr->canITakeRetractData)																				// keep taking data as long as the flag allows
	{
		if ((ConditionsPtr->currentRetractSampleIndex % RETRACTDECIMATIONFACTOR) == 0)									// only store a point if the __th time it was called (decimate DURING STORAGE)
		{
			ConditionsPtr->currentTime = ReadTimer0Clean();
			ConditionsPtr->thisTimeStampUsec = ConditionsPtr->timerStartingValue - ConditionsPtr->currentTime;
			RetractData[dataIndex].ElapsedTimeInUsec = ConditionsPtr->thisTimeStampUsec;								// calculate and store the current time WRT the time at the start of retract

			RetractData[dataIndex].AdjustedEncoderCount = GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr);			// retrieve and store the overflow-adjusted encoder value

			RetractData[dataIndex].AlteraPortImage = GetAlteraPortImage();												// access and store the current (believed) state of the Altera port, which includes the SSRs

			RetractData[dataIndex].CommandVoltageInVolts = DACVoltagesNow[OpParamsPtr->structure.DACVoltagesNowIndex];	// retrieve and store the most recent voltage output to the DAC channel being used

			RetractData[dataIndex].CommandVelocityInMPS = velocityOutMPS;												// store the passed-in demand velocity
		}
		ConditionsPtr->currentRetractSampleIndex++;																		// every time this function is called (while data collection is valid), increment the counter
	}

	if ((ConditionsPtr->currentRetractSampleIndex / RETRACTDECIMATIONFACTOR) >= RETRACT_MAX_SAMPLES)					// but if the counter has now reached the allocated size of the data buffer
	{
		ConditionsPtr->canITakeRetractData = FALSE;																		// disable future retract data storage
	}
	else
	{
		ConditionsPtr->canITakeRetractData = TRUE;																		// otherwise, just enforce the enable
	}
}

void DumpRetractData( CurrentConditionsStruct *ConditionsPtr )
{
	Uint32 sampleNumber;																		// counting variable for sample
	Uint32 lastSampleNumber;																	// highest sample to output
	char16 printString[100];                      												// print buffer

	lastSampleNumber = (ConditionsPtr->currentRetractSampleIndex - 1) / RETRACTDECIMATIONFACTOR;	// currentSampleIndex was incremented one final time, so adjust for that

	SendStrUARTB("\n\nSample#,Time[us],Encoder[cts],AnalogOut[V],CmdVelocity[m/s],AlteraPort\n");	// send the data header

	for (sampleNumber = 0; sampleNumber <= lastSampleNumber; sampleNumber++)					// then output the data, line by line, from 0 through most recent point
	{
		sprintf(printString, "%lu,%lu,%ld,%.2f,%.3f,%x\n",										// print the formatted values to a buffer string
				sampleNumber,																	// %lu
				RetractData[sampleNumber].ElapsedTimeInUsec,									// %lu
				RetractData[sampleNumber].AdjustedEncoderCount,									// %ld
				RetractData[sampleNumber].CommandVoltageInVolts,								// %.2f
				RetractData[sampleNumber].CommandVelocityInMPS,									// %.3f
				RetractData[sampleNumber].AlteraPortImage										// %x
				);
		SendStrUARTB(printString);																// then otuput the buffer through UARTB to terminal

		if (IsButtonPressed(SW3) == TRUE)														// Is the user trying to stop or restart the download?
		{
			WaitForButtonPressAndRelease(SW3);													// wait for SW3 to be pressed and released
			break;																				// and break out of the dump loop
		}
	}
}

//! This function DEFINES the current angular position as positive, and the output velocity as positive; the VOLTS_TO_REVPMIN makes sure
//! a positive velocity signal from here maps to a "positive" retraction velocity in the Kolmorgen, irrespective of actual directionality/hookup

//! @param velocityMPS		The desired velocity in meters per second, such that its positive magnitude moves the cable in the retraction direction
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
void OutputVelocityAsVoltage( float32 velocityMPS, OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr )
{
	float32 counts;
	float32 maxCounts;
	float32 spoolRadiusM;
	float32 angularVelocityRadPS;
	float32 angularVelocityRevsPS;
	float32 voltageOutputForVelocityV;

	velocityMPS = fabsf(velocityMPS);																			// make sure that the velocity is positive

	counts = fabsf((float32)(GetAdjustedEncoderCount(OpParamsPtr, ConditionsPtr)));								// calculate the magnitude of the total adjusted encoder position at present
	maxCounts = (float32)(OpParamsPtr->structure.quadResCountsPerRev * SPOOL_REVS_AT_FULL_PAYOUT);				// and use the encoder resolution to calculate adjusted counts at theoretical maximum extension

	if (counts > maxCounts)																						// on the off chance that the arrestment drew out the cable extra,
	{
		spoolRadiusM = 0.5 * MIN_SPOOL_DIAM_M;																	// the spool diameter is constant at its minimum
	}
	else																										// otherwise,
	{
		spoolRadiusM = 0.5 * (MAX_SPOOL_DIAM_M - (MAX_SPOOL_DIAM_M - MIN_SPOOL_DIAM_M) * (counts / maxCounts));	// the current spool radius depends on how many rotations the shaft has undergone
	}

	angularVelocityRadPS = velocityMPS / spoolRadiusM;															// argued velocity is for the cable as it enters the spool; this maps to angular velocity using radius
	angularVelocityRevsPS = angularVelocityRadPS / REVS_TO_RAD;													// and convert to revolutions

	voltageOutputForVelocityV = angularVelocityRevsPS / VOLTS_TO_REVPS;											// map to the voltage using the constant set on the Kolmorgen

	VoltagetoDAC(voltageOutputForVelocityV, OpParamsPtr->structure.DACchannel);									// and output this voltage to the proper DAC channel
}

//! Return the signum of the argument: +1 if argument > 0; -1 if argument < 0; 0 if argument = 0

//! @param argument	A real number that is either positive, negative, or exactly 0, for which a signum is to be taken
int16 signum( float32 argument )
{
	int16 retVal;

	if (argument > 0)
	{
		retVal = 1;
	}
	else if (argument < 0)
	{
		retVal = -1;
	}
	else
	{
		retVal = 0;
	}

	return( retVal );
}

//! Try to enable the motor controller. If it fails, remove the enable signal for safety.
//! @param TryForeverToEnable If TRUE, routine will try forever. If FALSE, will try a small number of times.
//!	@retval TRUE The motor responded to the enable command and is ready to use.
//! @retval FALSE the motor controller did not return an active status and cannot be used.
boolean TryToEnableMotorController( boolean TryForeverToEnable )
{
	Uint16	i;
	boolean	IsControllerReady;
	Uint16	HoldInputPort;

	IsControllerReady = FALSE;

	SSROutputsOn( SSR1);														// Enable the motor
	DELAY_US( DELAY_AFTER_MOTOR_ENABLE_US );									// and give it some time to respond

	for( i=0; i<NUMBER_OF_TRIES_TO_ENABLE_MOTOR; i++ )							// read the digital input corresponding to the motor-ready signal
	{
		HoldInputPort = DIG_ISO_IN_PORT;
		if( HoldInputPort & DIG_ISO_FOR_MOTOR_READY == 1 )						// did it enable?
		{
			IsControllerReady = TRUE;											// yes, it's good
			LEDControl(D29, LED_GREEN);											// once the motor is enabled, return the power LED to green
			LEDControl(D28, LED_OFF);											// and turn the other one off
			break;
		}

		//The motor is not ready
		LEDControl( D29, LED_RED );												// while waiting for the controller to respond, keep both LEDs in red faulted state
		LEDControl( D28, LED_RED );
		SSROutputsOff( SSR1);									// if it's not replying that it's ready, cycle the motor enable
		DELAY_US( DELAY_AFTER_MOTOR_DISABLE_US );
		HoldInputPort = DIG_ISO_IN_PORT;										//just for debug
		LEDControl(D29, LED_OFF);												// both LEDs off while we try again
		LEDControl(D28, LED_OFF);
		SSROutputsOn( SSR1);									// retry enabling the motor
		DELAY_US( DELAY_AFTER_MOTOR_ENABLE_US );									// and give it some time to try

		//Are we supposed to keep trying forever?
		if( TryForeverToEnable == TRUE )
		{
			i=0;																//make sure the loop never finishes if we are failing to enable the controller
		}
	}

	//If it failed, make sure it doesn't try to start up on its own later
	if( IsControllerReady == FALSE )
	{
		SSROutputsOff( SSR1 );										// remove the motor enable if it failed
	}

	return( IsControllerReady );
}
*/

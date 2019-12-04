/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-10-04 14:04:06 -0400 (Wed, 04 Oct 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/TwisterBrake.h $ URL of repository
 *
 * $Rev:: 2124                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file contains the function declarations for the kollmorgen-water-twister/brake behavior state machine function

#ifndef TWISTERBRAKE_H_
	#define TWISTERBRAKE_H_

#if 0
	//MUSA-TEMPORARY
	#define MUSA_TIME_TO_STEP_UP_US			(500000)
	#define MUSA_STEP_UP_DURATION			(4000000)
	#define MUSA_STEP_TORQUE_RETRACT_DIR_NM	(1.0)
	//MUSA-TEMPORARY
#endif

	// Define the constants used in this file
		// Flash-storage constants
		#define FLASH_OP_PARAMS_STARTING_ADDRESS		((Uint16 *)0x003D8000)
		#define SA_OP_PARAMS_SECURITY_KEY				0xAF
		#define WTB_OP_PARAMS_SECURITY_KEY				0x3E
		#define POW_OP_PARAMS_SECURITY_KEY				0x8C

		// Comparing two quadrature values
		#define MAX_ENCODER_COUNT						65536
		#define MIN_ENCODER_COUNT						0
		#define MIDRANGE_ENCODER_COUNT					((MAX_ENCODER_COUNT - MIN_ENCODER_COUNT) / 2)
		#define ENCODER_OVERFLOW_BUFFER_SIZE			100
		#define OVERFLOWS_MULTIPLIER					0x10000

		// Direction calibration
		#define TORQUE_FOR_DIRECTION_CAL_NEWTON_METERS	1
		#define MOVEMENT_FOR_DIRECTION_CAL_COUNTS		512
		#define TIME_LIMIT_DIRECTION_CAL_US				1000000
		#define UPPER_END_MOVEMENT_RANGE_COUNTS			(MAX_ENCODER_COUNT - MOVEMENT_FOR_DIRECTION_CAL_COUNTS)
		#define LOWER_END_MOVEMENT_RANGE_COUNTS			(MIN_ENCODER_COUNT + MOVEMENT_FOR_DIRECTION_CAL_COUNTS)

		// Stuff used to apply brake torque
		// For 60ms brake delay, we need to store and delay by 60ms/500us = 120 cycles
		#define NUM_TIMESTEPS_FOR_BRAKE_DELAY				120
		#define	NUM_ELEMENTS_FOR_BRAKE_DELAY_ARRAY			(NUM_TIMESTEPS_FOR_BRAKE_DELAY + 1)
		// Upper and lower limits for braking pressure input
		#define BRAKE_PRESSURE_LOWER_LIMIT					50
		#define BRAKE_PRESSURE_UPPER_LIMIT					3000
		// Upper and lower limits for braking torque output
		#define BRAKE_TORQUE_FULLSCALE_LOWER_LIMIT_FT_LB	0
		#define BRAKE_TORQUE_FULLSCALE_UPPER_LIMIT_FT_LB	183334
		// Convert between torque units
		#define BRAKE_TORQUE_FTLB_TO_NM						1.35581795
		#define BRAKE_TORQUE_NM_TO_FTLB						0.737562148
		// Physical constants
		#define OMEGA_N_DEFAULT								(4 * 2 * PI)
		#define ZETA_DEFAULT								0.4

		// Full-scale to Sub-scale scaling factors
		#define MASS_SUBSCALE_TO_FULLSCALE		280
		#define MASS_FULLSCALE_TO_SUBSCALE		0.003571429
		#define	LENGTH_SUBSCALE_TO_FULLSCALE	10
		#define LENGTH_FULLSCALE_TO_SUBSCALE	0.1
		#define TORQUE_SUBSCALE_TO_FULLSCALE	(MASS_SUBSCALE_TO_FULLSCALE * LENGTH_SUBSCALE_TO_FULLSCALE * LENGTH_SUBSCALE_TO_FULLSCALE)
		#define TORQUE_FULLSCALE_TO_SUBSCALE	(MASS_FULLSCALE_TO_SUBSCALE * LENGTH_FULLSCALE_TO_SUBSCALE * LENGTH_FULLSCALE_TO_SUBSCALE)

		// Allow changes to the range over which velocity is calculated (the number of timesteps between the endpoints)
		#define NUM_TIMESTEPS_FOR_VELOCITY_CALC			30

		// The cable pretension torque is turned off after the spool rotates a certain amount, so it doesn't reduce the normal, "passive" activity of the water twister
		// This number is how many counts from 0 the shaft needs to rotate for the pretension to be turned off while in wait state (large, so we can adjust pretension without it constantly turning off)
		#define COUNTS_TO_TURN_OFF_PRETENSION_WAIT_STATE	850
		// And this is how many while it is in run state (very small, about 1.3 degrees, so it turns off as early as physically possible without being turned off by noise)
		#define COUNTS_TO_TURN_OFF_PRETENSION_RUN_STATE		15

		// Bits for communication with motor
		#define SSR1									0x1		//existing code from alex
		#define SSR2									0x2		//existing code from alex
		#define SSR3									0x4		//address found iteratively
		#define SSR4									0x8		//address found iteratively
		#define DIG_ISO_FOR_MOTOR_READY					DIG_ISO_IN1

		// Time delays
		#define DELAY_AFTER_MOTOR_ENABLE_US				(1000000)
		#define DELAY_AFTER_SWITCHING_MOTOR_MODE_US		(100000)
		#define DELAY_AFTER_MOTOR_DISABLE_US			(1000000)
		#define	NUMBER_OF_TRIES_TO_ENABLE_MOTOR			3
		#define TRY_TO_ENABLE_A_FEW_TIMES				0
		#define TRY_FOREVER_TO_ENABLE					1

		//Download info
		#define DOWNLOAD_BYTES_PER_LINE_STD				62
		#define DOWNLOAD_BYTES_PER_LINE_DECIMATED		44

		//Switch debounce time
		#define DEBOUNCE_DELAY_US						100000

		//Magic number for clearing comm buffer
		#define CLEAR_COMM_BUFFER_POINTER	0x88888888

		// The brake torque needs to be 0 at ~0 velocity irrespective of its actual magnitude, so define this tolerance around =0 to be ~0 count/s
		// RIGHT NOW: define it as the minimum rotational velocity resolution, that is, a single encoder count over the number of timesteps over which velocity is calculated
		//#define ANG_VEL_TOLERANCE_COUNTS_PER_SEC		(1 / (NUM_TIMESTEPS_FOR_VELOCITY_CALC * 0.0005))
		// NOT USED RIGHT NOW, IN FAVOR OF THE FOLLOWING

		// Buffer region around 0 where velocity is defined as 0; there is hysteresis implemented in this
		// transition, so one value is used to "drop into" effective 0, while another (higher) is used to "step out"
		// these are basically chosen at random, until the numbers are refined
		#define	BOUND_TO_DROP_INTO_VELOCITY_EFFECTIVE_ZERO_REGION_RADPS		0.1
		#define	BOUND_TO_STEP_OUT_OF_VELOCITY_EFFECTIVE_ZERO_REGION_RADPS	0.15


		// Calibration Parameters (depending on side of hallway)
		// -----Port-----
		#define QUADCONSTANT_PORT									(-1)
		#define TWISTERTORQUESENSORADCWORDTONMSLOPE_PORT			(0.052)
		#define TWISTERTORQUESENSORADCWORDTONMINTERCEPT_PORT		(-108.38)
		#define ARRESTTORQUESENSORADCWORDTONMSLOPE_PORT				(10.0)		// these are not used now, but left here because referenced by TwisterBrake.c
		#define ARRESTTORQUESENSORADCWORDTONMINTERCEPT_PORT  		(0.0)
		#define BRCURRENTSENSORVOLTSPERAMP_PORT						(0.310)
		#define ACTUALTODEMANDTORQUESLOPE_PORT						(1.0)		// these are here in case a need arises to calibrate the DAC output of the ProD
		#define ACTUALTODEMANDTORQUEINTERCEPT_PORT 					(0.0)

		// -----Starboard-----
		#define QUADCONSTANT_STARBOARD								(-1)
		#define TWISTERTORQUESENSORADCWORDTONMSLOPE_STARBOARD		(0.0539)
		#define TWISTERTORQUESENSORADCWORDTONMINTERCEPT_STARBOARD	(-113.28)
		#define ARRESTTORQUESENSORADCWORDTONMSLOPE_STARBOARD 		(10.0)		// these are not used now, but left here because referenced by TwisterBrake.c
		#define ARRESTTORQUESENSORADCWORDTONMINTERCEPT_STARBOARD 	(0.0)
		#define BRCURRENTSENSORVOLTSPERAMP_STARBOARD				(0.310)
		#define ACTUALTODEMANDTORQUESLOPE_STARBOARD					(1.0)		// these are here in case a need arises to calibrate the DAC output of the ProD
		#define ACTUALTODEMANDTORQUEINTERCEPT_STARBOARD 			(0.0)

		// Other Default System Parameters
		#define RAWDACCHANNELDEFAULT						(1)
		#define DACCHANNELDEFAULT							(DAC_CH1)
		#define DACVOLTAGESNOWINDEXDEFAULT					(0)
		#define QUADRESCOUNTSPERREVDEFAULT					(4096)
		#define WATERTWISTERCONSTANTDEFAULT					(0.0012)
		//The ZeroTorque is no longer used, it was taken over by pre-tension and pre-tension bleeedoff. It is not used in any formulas at present.
		#define ZEROTORQUENMDEFAULT							(1.0)
		#define MOTORANALOGOFFSETVOLTSDEFAULT				(0.0)
		#define MOTORANALOGSCALINGAMPSPERVOLTDEFAULT		(0.677)
		#define AMPSTONEWTONMETERSDEFAULT					(1.48)
		#define DATADECIMATIONFACTORDEFAULT					(1)
//MUSA-TEMPORARY
		//#define DATADECIMATIONFACTORDEFAULT					(10)
//MUSA-TEMPORARY

	// Variable definitions
		// Data storage structure

	/*	typedef struct ADCDataStruct
		{
			Uint32	SampleIndex;
			float32	ThisADCReading;
			boolean CanTakeData;
		} ADCDataStruct;*/

		typedef struct TwisterBrakeInfoStruct
		{
			Uint32		ElapsedTimeInUsec;
			float32		AdjustedEncoderPositionInRads;
			float32		AngularVelocityInRadsPerSecond;
			float32 	BrakeFailurePercentIfOccurring;
			float32		BrakeTorqueInNewtonMeters;
			float32		TwisterFailurePercentIfOccurring;
			float32		TwisterTorqueInNewtonMeters;
			float32		TorqueOffsetInNewtonMeters;
			float32 	CablePretensionTorqueInNewtonMeters;
			float32		DemandTorqueInNewtonMeters;
			float32		CommandVoltageInVolts;
			float32		TwisterTorqueSensorInNm;
			float32		ArrestmentTorqueSensorInNm;
			float32		BrakeResistorCurrentInAmps;
			Uint16		BrakeResistorTemperatureInDegC;
		} TwisterBrakeInfoStruct;

		typedef struct RetractInfoStruct
		{
			Uint32 ElapsedTimeInUsec;
			int32 AdjustedEncoderCount;
			float32 CommandVoltageInVolts;
			float32 CommandVelocityInMPS;
			Uint16 AlteraPortImage;
		} RetractInfoStruct;

		// Operating parameters structure - these are not changed after taking user input/recalling from Flash memory
		typedef struct OperatingParametersStruct
		{
			// Security keyword
			Uint16 securityKey;								// used as the first step in verifying this structure in assocation with the device type, when it is read from Flash;

			// Parameter set ID tag
			Uint16 parameterIDTag;							// ID tag number for a specific set of parameters, assigned by the master Dev2 controller board

			// User-input parameters
			DACChannel DACchannel;							// analog channel over which the ProD communicates with the motor
			Uint16 DACVoltagesNowIndex; 					// index into the global DAC state variable, for defined channel
			Uint16 quadResCountsPerRev;						// quad counts per full revolution
			float32 waterTwisterConstant;					// k [Nm/(rad/s)^2]
			//The ZeroTorque is no longer used, it was taken over by pre-tension and pre-tension bleeedoff. It is not used in any formulas at present.
			float32 zeroTorqueNM;							// constant torque, to be used to tension the cable prior to an arrestment
			float32 motorAnalogOffsetVolts;					// set in motor GUI, such that I = (V + analogVoltageOffset) * voltsToAmps
			float32	motorAnalogScalingAmpsPerVolt;			// set in motor GUI, such that I = (V + analogVoltageOffset) * voltsToAmps
			float32	ampsToNewtonMeters;						// conversion ratio intrinsic to motor, such that tau = I * ampsToNewtonMeters
			Uint16 dataDecimationFactor;					// sampling rate of data; i.e. every (dataDecimationFactor)th point is actually output during data dump

			// Calibration parameters
			int16 quadConstant;								// +/-1 to multiply into quadrature measurements, depending on which direction is defined as positive in the system
			float32 twisterTorqueSensorADCWordToNmSlope;	// slope and intercept values for converting the twister torque sensor analog signal to its equivalent torque
			float32 twisterTorqueSensorADCWordToNmIntercept;
			float32 arrestTorqueSensorADCWordToNmSlope;		// slope and intercept values for converting the arrestment torque sensor analog signal to its equivalent torque
			float32 arrestTorqueSensorADCWordToNmIntercept;
			float32 BRcurrentSensorVoltsPerAmp;				// scaling factor for converting the brake resistor current sensor analog signal to its equivalent current
			float32 actualToDemandTorqueSlope;				// slope and intercept values for actual-torque-to-demand-torque mapping
			float32 actualToDemandTorqueIntercept;
			Uint16 encoderCountHighBorderline;				// encoder values considered "close to 0xFFFF" and "close to 0x0000", respectively,
			Uint16 encoderCountLowBorderline;				// used to determine when an overflow occurs

			// Spare variables
			Uint32 spareVariableOne;						// eight spare Uint32s for future expansion of this parameter structure
			Uint32 spareVariableTwo;
			Uint32 spareVariableThree;
			Uint32 spareVariableFour;
			Uint32 spareVariableFive;
			Uint32 spareVariableSix;
			Uint32 spareVariableSeven;
			Uint32 spareVariableEight;

			// Cyclic redundancy check
			Uint16 CRC;										// the CRC8 value, calculated and stored along with the rest of the structure into flash
		} OperatingParametersStruct;

		// Union of the operating parameters structure and an array, to make it easier to transmit/receive/store
		typedef union OperatingParameters {
			OperatingParametersStruct	structure;
			Uint16 						array[sizeof(OperatingParametersStruct)];
		} OperatingParameters;

		// Current conditions structure - these are changed repeatedly over the course of normal operation
		typedef struct CurrentConditionsStruct
		{
			// Interval timer variables
			Uint32 timerStartingValue;												// used at various points in the state machine, as the starting time of a segment
			Uint32 currentTime;														// and the current time within the segment
			Uint32 thisTimeStampUsec;												// the difference between the StartingValue and the CurrentTime

			// Quadrature encoder variables
			Uint16 lastEncoderCount;												// raw encoder count of the last time the function was called
			Uint16 thisEncoderCount;												// raw encoder count from the current calling of the function
			int16 encoderOverflows;													// number of "overflows" (or underflows if negative) of the 16 bit quadrature count, as maintained by the function

			// Variables of physical state - when applicable element [0] is the oldest
			Uint32 timesUs[NUM_TIMESTEPS_FOR_VELOCITY_CALC + 1];					// times in microseconds, to calculate angular velocity
			float32 rotationalPositionsRad[NUM_TIMESTEPS_FOR_VELOCITY_CALC + 1];	// rotational positions in radians, to calculate angular velocity
			float32 thisAngularVelocityRadPS;										// calculated angular velocity in radians/second, to calculate torque
			float32 thisTwisterTorqueNm;											// calculated commanded water twister torque in Newton-meters
			float32 brakePressureHistory[NUM_ELEMENTS_FOR_BRAKE_DELAY_ARRAY];		// commanded braking pressures
			//float32 thisCommandedBrakePressure;
			//float32 thisBrakePressure;											// calculated brake pressure, to be converted to calculated brake torque
			//float32 thisCalculatedBrakeTorqueNm;									// calculated brake torque, before being zero'd (if v=0) and failed upon
			float32 thisBrakeTorqueNm;												// calculated brake torque to be used in net torque, after processing/failure
																					// The ZeroTorque is no longer used, it was taken over by pre-tension and pre-tension bleeedoff. It is not used in any formulas at present.
			float32 thisCablePretensionTorqueNm;									// this torque is either equal to OpParams.zeroTorqueNM or 0, depending on where we are in the run; it is always added into the net torque
			float32 thisTorqueOffsetNm;												// variable torque, updated by comm with Dev2; accounts for arresting motor, inertial compensation, etc
			float32 thisDesiredNetTorqueNm;											// desired motor torque, in newton-meters

			// Data acquisition and output variables
			Uint32 currentSampleIndex;												// keeps track of which WTB data sample is being taken
			Uint32 currentRetractSampleIndex;										// keeps track of which retract data sample is being taken
			boolean canITakeData;													// flag checked before data is stored, false indicates that data has filled all space allocated for it
			boolean canITakeRetractData;											// ditto ^^
			boolean isMotorControllerReady;											// did the motor go ready after I enabled the control?
			boolean retractionHappened;												// flag that starts off as FALSE, and is changed to TRUE after a retraction happens...to prevent it from being triggered again
		} CurrentConditionsStruct;

		// Failure modes enumerated type (for twister and brake here, but generalized to all system failure modes)
		typedef enum
		{
			NONE 			= 0,
			TIME 			= 1,
			FORCE 			= 2,
			TORQUE			= 3,
			VELOCITY 		= 4,
			ANGULARVELOCITY	= 5,
			SUPPLYCURRENT	= 6
		} FailureMode;

		typedef struct TwisterFailureStruct
		{
			FailureMode failureMode;				// mode of failure: none, time (delay), condition-torque, or condition-velocity
			union
			{
				Uint32 failureStartTimeUsec;		// for failureMode TIME: the time after 0 at which the failure happens
				float32 failureTorqueLimitNm;		// for failureMode CONDITIONTORQUE: the maximum torque after which failure happens
				float32 failureAngVelLimitRadPS;	// for failureMode ANGULARVELOCITY: the maximum angular velocity after which failure happens
				Uint32 typeIndeterminate32BitData;	// for when comm doesn't know the failureMode; 32 bits are just loaded here and extracted as another type later
			} failureParameter;
			float32 percentFailure;					// percentage by which water twister torue is diminished if failure occurs
			boolean isFailureOccurring;				// is the specified failure occurring right now?
		}TwisterFailureStruct;

		typedef struct BrakeParametersStruct
		{
			// parameters for calculating brake torque from a pressure
			float32 commandedBrakePressure;			// commanded braking pressure, commanded directly by communication with master Dev2
			float32 zeta;							// constants in the differential equation
			float32 omegaN;
			float32 a;								// scale factors; nominally 1, used to adjust equation if necessary
			float32 b;
			float32	c;

			// state variable to define whether brake torque is forced to 0 because shaft is effectively stationary
			boolean isVelocityAroundZero;

			// state variable to define whether brake torque has been turned on for the first time; used to prevent unwanted brake signals from affecting run
			boolean hasBrakeBeenSignalled;

			// state variables, for use in calculating actual brake torque from demanded, delayed brake pressure
			float32 x1;
			float32 x2;
			float32 x1dot;
			float32 x2dot;

			// brake failure parameters - loaded at setup
			FailureMode failureMode;				// mode of failure: none, time (delay), condition-torque, or condition-velocity
			union
			{									// the parameter associated with the failure; different types put into union for readability
				Uint32 failureStartTimeUsec;		// for failureMode TIME: the time after 0 at which the failure happens
				float32 failureTorqueLimitNm;		// for failureMode CONDITIONTORQUE: the maximum torque after which failure happens
				float32 failureAngVelLimitRadPS;	// for failureMode CONDITIONVELOCITY: the maximum ang valocity after which failure happens
				Uint32 typeIndeterminate32BitData;	// for when comm doesn't know the failureMode; 32 bits are just loaded here and extracted as another type later
			} failureParameter;
			float32 percentFailure;					// percentage of brake torque that is diminished if failure occurs
			boolean isFailureOccurring;				// is the specified failure occurring right now?
		} BrakeParametersStruct;

		// Sensor identifiers, enumerated as the actual ADC channels they are attached to
		typedef enum
		{
			BrakeResistorCurrent 		= 0,
			BrakeResistorTemperature 	= 1,
			ArrestmentTorqueSensor 		= 6,
			TwisterTorqueSensor 		= 7
		} TorqueSensorInput;

		// Number of samples to take for each type of internal ADC reading
		#define ADC_SAMPLES_FOR_BRTEMP		1
		#define ADC_SAMPLES_FOR_BRCURRENT	1
		#define ADC_SAMPLES_FOR_TORQUE		1

		// Physical system constants for retraction
		#define REVS_TO_RAD					(2.0 * PI)
		#define MAX_SPOOL_DIAM_M			0.1651
		#define MIN_SPOOL_DIAM_M			0.05842
		#define SPOOL_REVS_AT_FULL_PAYOUT	22.0
		#define VOLTS_TO_REVPMIN			(30)
		#define VOLTS_TO_REVPS				(VOLTS_TO_REVPMIN / 60.0)
		#define CONST_ACC_MPS2				0.2
		#define VELOCITY_MAX_MPS			0.734
		// (this maximum velocity corresponds to about 8 volts maximum output)
		// TO SCALE VELOCITY BY FACTOR X WHILE VMAX IS CONSTANT 8V:
		// scale VOLTS_TO_REVPMIN and VELOCITY_MAX_MPS by factor x, and make the scaling factor in Kolmorgen controller the same as what's #defined here
		#define REVS_TO_SLOW_DOWN			5.0
		#define MINIMUM_FINAL_VELOCITY_MPS	0.1

		//source of default parameters
		typedef enum
		{
			UNKNOWN		= 0,
			FLASH 		= 1,
			HARDCODE	= 2,
			COMM 		= 3
		} SourceOfParameters;

		//defines for TryToEnableMotorController
		#define TRY_TO_ENABLE_MOTOR_FOREVER		1
		#define TRY_TO_ENABLE_MOTOR_A_FEW_TIMES	0

		//-----TEMPORARY-----
		#define OUTPUTDURINGRETRACT		0
		//-----TEMPORARY-----

		//RETRACTTEMPORARY
		#define RETRACTDECIMATIONFACTOR	5
		//RETRACTTEMPORARY

	// Function prototypes
	void TwisterBrakeStateMachine( boolean isDisplayMode );
	void DefaultOpParams( OperatingParameters *OpParamsPtr );
	void DefaultConditions( CurrentConditionsStruct *ConditionsPtr );
	void DefaultTwisterParams( TwisterFailureStruct *TwisterParamsPtr );
	void DefaultBrakeParams( BrakeParametersStruct *BrakeParamsPtr );
	boolean SaveOpParamsToFlash( OperatingParameters *OpParamsPtr );
	void GetOpParamsFromFlash( OperatingParameters *OpParamsPtr );
	void SetupTwisterBrakePeripherals( CurrentConditionsStruct *ConditionsPtr );
	void ParametersModeIntro( CurrentConditionsStruct *ConditionsPtr );
	void GetNonEssentialUserInputs( OperatingParameters *OpParamsPtr );
	void CalibrateMotor( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr );
	void GetEssentialUserInputs( OperatingParameters *OpParamsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr );
	keyName MainMenuWaitForKey( void );
	void InitTwisterBrake( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr );
	void ResetCounterVariables( CurrentConditionsStruct *ConditionsPtr );
	void RunLikeATwisterBrake( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr, boolean isDisplayMode );
	void UpdateKinematicVariables( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr );
	void ComputeBrakeTorqueAndFailure(  OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, BrakeParametersStruct *BrakeParamsPtr );
	void ComputeTwisterTorqueAndFailure( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr );
	void OutputTorqueAsVoltage( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr );
	void StoreDataPointNow( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr, BrakeParametersStruct *BrakeParamsPtr );
//
//	void StoreADCNow( void );	//Greg Add
//
	Uint16 AddStringToBuffer( char16 *InputPointer, Uint16 *OutputPointer  );
	void DumpData( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, BrakeParametersStruct *BrakeParamsPtr, TwisterFailureStruct *TwisterParamsPtr );
	void DumpDataMakeSettingsInfo( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, BrakeParametersStruct *BrakeParamsPtr, TwisterFailureStruct *TwisterParamsPtr );
	void AppDumpRequestedDataLines( Uint32 StartingSampleNumber, Uint32 EndingSampleNumber, Uint8 * DumpStorage );

	int32 GetAdjustedEncoderCount( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr );
	float32 ReadTorqueSensorInNm( OperatingParameters *OpParamsPtr, TorqueSensorInput whichSensor );
	float32 ReadBRCurrentSensorInA( OperatingParameters *OpParamsPtr );
	void ClearData( CurrentConditionsStruct *ConditionsPtr );
	boolean TryToEnableMotorController( boolean TryForeverToEnable );
	void InitSystemInfo( SystemInfoStruct *SystemInfoPtr );
	//These two don't really belong here but code doesn't work otherwise
	CommMessageToAppType DoCommStuff( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr, CommMessageToAppType CurrentCommState );
	void ExchangeSetAllOperatingParams(OperatingParameters *OpParamsPtr, TwisterFailureStruct *TwisterParamsPtr );

	void RetractCable( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *TwisterParamsPtr );
	void StoreRetractDataNow( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, float32 velocityOutMPS );
	void DumpRetractData( CurrentConditionsStruct *ConditionsPtr );

	void OutputVelocityAsVoltage( float32 velocityMPS, OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr );
	int16 signum( float32 argument );
#endif /* TWISTERBRAKE_H_ */

/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-09-01 13:47:09 -0400 (Fri, 01 Sep 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/CommAndAppExchange.c $ URL of repository
 *
 * $Rev:: 2046                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

//! @file
//! This file handles the interactions between the comm system and the app

//General info about the system
static Uint16 HardwareClass;
static Uint16 HardwareRev;
static Uint16 FirmwareType;
static Uint32 FirmwareRev; //ESL standard firmware rev

static CommMessageToAppType AppRunState;

//These variables are global to this file only.
//System parameter code identifying this group of parameters
static Uint16 ThisSystemParamCode;
//Failure setup structure
static FailureStruct FailureDetails;
//Download info - general info about the data to download
static DataDownloadInfoStruct DataDownloadInfo;

//Water twister setup info
static float32 WaterTwisterConstant;
static float32 WaterTwisterZeroSpeedTorque;	//used for tensioning the cable while waiting
static float32 WaterTwisterCommAddedTorque;	//comm may add a force of either sign during operation
//special force used to prevent the cable from sagging during setup
static float32 TwisterPrerunTorque;

//Brake info
static float32 WTBrakeTorque;	//brake torque
//Differential equation describing how the brake torque comes up when applied
static float32 BrakeZetaParam, BrakeOmegaNParam, BrakeACoeffParam, BrakeBCoeffParam, BrakeCCoeffParam;
//Brake delay is number of 500us units that brake commands are delayed before being applied.
//Upper limit is set by a #define in the brake code, typically 50ms (100 units), limited to that value automatically
static Uint16 BrakeDelayParam;

//! Everything has some kind of motor. Keep its status
static boolean IsMotorReady;

//! Flag that we should do a retract. Only applies to twister/brake
static boolean RetractionFlag;

//! Store the system parameter code. It is only stored to return it later, it is not used otherwise.
void ExchangeSetSystemParameterCode( Uint16 Parameter )
{
	ThisSystemParamCode = Parameter;
}

//! Return the system parameter code. It is only stored to return it later, it is not used otherwise.
Uint16 ExchangeGetSystemParameterCode( void )
{
	Uint16 Retcode;

	Retcode = ThisSystemParamCode;
	return( Retcode );
}

//! Store the data decimation factor. It is used during data dump.
void ExchangeSetDecimationFactor( Uint16 Parameter )
{
	DataDownloadInfo.DecimationValue = Parameter;
}

//! Return the data decimation factor. It is used during data dump.
Uint16 ExchangeGetDecimationFactor( void )
{
	Uint16 Retcode;

	Retcode = DataDownloadInfo.DecimationValue;
	return( Retcode );
}

//! Store the failure details for this device.
//! Writes into a standard failure structure, and sets the "is occuring" field to zero.
//! This makes it safe to copy this structure into the operating structure (although we don't do that).
void ExchangeSetFailureDetails( Uint16 Mode, Uint32 Trigger, float32 percentFailure )
{
	FailureDetails.failureMode			= Mode;
	FailureDetails.failureTrigger		= Trigger;
	FailureDetails.percentFailure		= percentFailure;
	FailureDetails.isFailureOccurring	= 0;
}

//! Return the failure details for this device.
void ExchangeGetFailureDetails( Uint16 *ModePtr, Uint32 *TriggerPtr, float32 *percentFailurePtr )
{
	*ModePtr			= FailureDetails.failureMode;
	*TriggerPtr			= FailureDetails.failureTrigger;
	*percentFailurePtr	= FailureDetails.percentFailure;
}

//! Set the pre-run water twister torque
void ExchangeSetTwisterPrelimTorque( float32 TorqueSetting )
{
	TwisterPrerunTorque = TorqueSetting;
}

//! Get the pre-run twister torque
float32 ExchangeGetTwisterPrelimTorque( void )
{
	float32 Retcode;

	Retcode = TwisterPrerunTorque;
	return( Retcode );
}

//! Set the water twister normal operation constants
void ExchangeSetWaterTwisterConstants( float32 TempWTConst, float32 TempWTZeroTorque )
{
	WaterTwisterConstant		= TempWTConst;
	WaterTwisterZeroSpeedTorque	= TempWTZeroTorque;
}

//! Get the water twister normal operation constants
void ExchangeGetWaterTwisterConstants( float32 *WTConst, float32 *WTZeroTorque )
{
	*WTConst		= WaterTwisterConstant;
	*WTZeroTorque	= WaterTwisterZeroSpeedTorque;
}

//! Set the special-case comm added torque
void ExchangeSetWTExtraTorque( float32 CommAddedTorque )
{
	WaterTwisterCommAddedTorque = CommAddedTorque;
}

//! Get the current setting of the "special case torque"
float32 ExchangeGetWTExtraTorque( void )
{
	float32 Retcode;

	Retcode = WaterTwisterCommAddedTorque;
	return( Retcode );
}

//! Set brake torque
void ExchangeSetBrakeTorque( float32 BrakeTorque )
{
	WTBrakeTorque = BrakeTorque;
}

//! Get current value of brake torque
float32 ExchangeGetBrakeTorque( void )
{
	float32 Retcode;

	Retcode = WTBrakeTorque;
	return( Retcode );
}

//! Set state of the motor - did it enable?
void ExchangeSetMotorState( boolean MotorState )
{
	IsMotorReady = MotorState;
}

//! Get state of motor
boolean ExchangeGetMotorState( void )
{
	boolean Retcode;

	Retcode = IsMotorReady;
	return( Retcode );
}

//! Set the parameters for the differential equation describing how the brakes are applied.
void ExchangeSetBrakeDelayParams( float32 BrakeZeta, float32 BrakeOmegaN, float32 BrakeACoeff, float32 BrakeBCoeff, float32 BrakeCCoeff, Uint16 BrakeDelay )
{
	BrakeZetaParam		= BrakeZeta;
	BrakeOmegaNParam	= BrakeOmegaN;
	BrakeACoeffParam	= BrakeACoeff;
	BrakeBCoeffParam	= BrakeBCoeff;
	BrakeCCoeffParam	= BrakeCCoeff;
	BrakeDelayParam		= BrakeDelay;
}

//! Get the parameters for the differential equation describing how the brakes are applied.
void ExchangeGetBrakeDelayParams( float32 *BrakeZeta, float32 *BrakeOmegaN, float32 *BrakeACoeff, float32 *BrakeBCoeff, float32 *BrakeCCoeff, Uint16 *BrakeDelay )
{
	*BrakeZeta		= BrakeZetaParam;
	*BrakeOmegaN	= BrakeOmegaNParam;
	*BrakeACoeff	= BrakeACoeffParam;
	*BrakeBCoeff	= BrakeBCoeffParam;
	*BrakeCCoeff	= BrakeCCoeffParam;
	*BrakeDelay		= BrakeDelayParam;
}

//! Let the app set the info about the system
void ExchangeSetSystemInfo( SystemInfoStruct *SystemInfoPtr )
{
	HardwareClass	= SystemInfoPtr->HardwareClass;
	HardwareRev		= SystemInfoPtr->HardwareRev;
	FirmwareType	= SystemInfoPtr->ProductClass;
	FirmwareRev		= SystemInfoPtr->RevisionNumber;
}

//! Tell the comm software what kind of system we are running on
void ExchangeGetSystemInfo( BoardCapabilityStructType *BoardCapability)
{
	BoardCapability->HardwareClass	= HardwareClass;
	BoardCapability->HardwareRev	= HardwareRev;
	BoardCapability->FirmwareType	= FirmwareType;
	BoardCapability->RevisionNumber	= FirmwareRev;
}

//! Set the state of the app, whether to hang in standby, go to run, shut down, etc.
//! Handles a weird case of a race condition between ports on water twister
void ExchangeSetAppRunState( CommMessageToAppType AppStateParam )
{
	//The water twister has a special case where it has two ports that will receive the stop command and one can act on it before the other.
	//If one port moved it to download state, don't let another move it back to stop state.
	//Don't allow it to go from download to stop, but allow all other transitions
	if( (AppRunState == StayInDownloadState) && (AppStateParam == StopOperating) )
	{
		//Do nothing
	}
	else
	{
		AppRunState = AppStateParam;
	}
}

//! Read the state of the app, whether to hang in standby, go to run, shut down, etc.
CommMessageToAppType ExchangeGetAppRunState( void )
{
	CommMessageToAppType Retcode;

	Retcode = AppRunState;
	return( Retcode );
}

//! After the run, set up the info about what data needs to be downloaded
void ExchangeSetDownloadInfo( Uint32 HowManyRecs, Uint32 HowManyDecimatedRecs, Uint16 HowMuchDecimation, Uint16 HowManyBytesPerLine, Uint16 HowManyBytesPerDecimatedLine, Uint16 HeaderSize, Uint16 *BufferLocation, Uint32 ReturnBufferSize )
{
	DataDownloadInfo.NumberOfRecords			= HowManyRecs;
	DataDownloadInfo.NumberOfDecimatedRecords	= HowManyDecimatedRecs;
	DataDownloadInfo.DecimationValue			= HowMuchDecimation;
	DataDownloadInfo.BytesPerLine				= HowManyBytesPerLine;
	DataDownloadInfo.BytesPerDecimatedLine		= HowManyBytesPerDecimatedLine;
	DataDownloadInfo.HeaderSize					= HeaderSize;
	DataDownloadInfo.BufferLocation				= BufferLocation;	//where is the buffer with the header text ready to be sent in a reply packet
	DataDownloadInfo.CommBufferSize				= ReturnBufferSize;
}

//! Routine to return info about a data download ready to happen
void ExchangeGetDownloadInfo( DataDownloadInfoStruct *ReplyDownloadPtr )
{
	ReplyDownloadPtr->NumberOfRecords			= DataDownloadInfo.NumberOfRecords;
	ReplyDownloadPtr->NumberOfDecimatedRecords	= DataDownloadInfo.NumberOfDecimatedRecords;
	ReplyDownloadPtr->DecimationValue			= DataDownloadInfo.DecimationValue;
	ReplyDownloadPtr->BytesPerLine				= DataDownloadInfo.BytesPerLine;
	ReplyDownloadPtr->BytesPerDecimatedLine		= DataDownloadInfo.BytesPerDecimatedLine;
	ReplyDownloadPtr->HeaderSize				= DataDownloadInfo.HeaderSize;
	ReplyDownloadPtr->BufferLocation			= DataDownloadInfo.BufferLocation;	//where is the buffer with the header text ready to be sent in a reply packet
	ReplyDownloadPtr->CommBufferSize			= DataDownloadInfo.CommBufferSize;
}

//! Comm asks the exchange for data to be downloaded.
//! Enough space in the buffer will be zeroed, then filled with the requested lines of data.
//! The actual work is being done by code in the app.
void ExchangeGetDownloadData( Uint32 StartingSampleNumber, Uint32 EndingSampleNumber, Uint8 * DataBuffer )
{
	//Clear out buffer space - use the structure that tells how many bytes per line.
	//this code doesn't actually move the data anywhere yet, need a buffer pointer.
	//AppDumpRequestedDataLines( StartingSampleNumber, EndingSampleNumber, DataBuffer );
}
//! Allow setting of retraction flag
void ExchangeSetRetractionFlag( boolean YesOrNo)
{
	if( YesOrNo == 0)
	{
		RetractionFlag = FALSE;
	}
	else
	{
		RetractionFlag = TRUE;
	}
}

//! Read the retraction flag
boolean ExchangeGetRetractionFlag( void )
{
	boolean Retcode;

	if( RetractionFlag == 0)
	{
		Retcode = FALSE;
	}
	else
	{
		Retcode = TRUE;
	}

	return( Retcode );
}

//! Move all the operating parameters from the app side to the exchange.
//! This is done on the transition from standby state to run state.
//! All the params have been set from flash, now make sure comm can see the current settings.
void ExchangeSetAllOperatingParams(OperatingParameters *OpParamsPtr, TwisterFailureStruct *DamperParamsPtr)
{
	Uint16		HoldSysParam;			//system parameter number (plane type)
	Uint16		HoldDecimation;			//data decimation during download
	FailureMode	HoldMode;				//failure mode info
	Uint32		HoldTrigger;			//failure mode info
	float32		HoldPercentFailure;		//failure mode info
	float32		HoldTwisterConst;		//water twister constants
	float32		HoldZeroTorque;			//water twister constants

	//This is where we move the params from the app area to the exchange area
	//System parameter code (plane type code)
	HoldSysParam = OpParamsPtr->structure.parameterIDTag;
	ExchangeSetSystemParameterCode( HoldSysParam );

	//Data decimation during download
	HoldDecimation = OpParamsPtr->structure.dataDecimationFactor;
	ExchangeSetDecimationFactor( HoldDecimation );

	//failure details
	DamperParamsPtr->isFailureOccurring	= FALSE;										// specified failure is not happening now (before app really starts)
	HoldMode			= DamperParamsPtr->failureMode;								// mode of failure: none, time (delay), force, or velocity limit
	HoldTrigger			= DamperParamsPtr->failureParameter.failureStartTimeUsec;	// just in case, the failure start time is set to the beginning state of the countdown timer (so it will have passed this by the time it is checked)
	HoldPercentFailure	= DamperParamsPtr->percentFailure;							// and just in case, the percent failure is null
	ExchangeSetFailureDetails( HoldMode, HoldTrigger, HoldPercentFailure );

	//Water Twister constants
	HoldTwisterConst	= OpParamsPtr->structure.waterTwisterConstant;
	HoldZeroTorque		= OpParamsPtr->structure.zeroTorqueNM;
	ExchangeSetWaterTwisterConstants( HoldTwisterConst, HoldZeroTorque );
	ExchangeSetWTExtraTorque( 0.0 );
}

//! Inits the shared variables between comm and the app.
void ExchangeInit( void )
{
	//Init the descriptive info
	HardwareClass	= 0;
	HardwareRev		= 0;
	FirmwareType	= 0;
	FirmwareRev		= 0;

	//Init the state variable
	ExchangeSetAppRunState( StayInStandbyState );

	ExchangeSetSystemParameterCode( 1 );	//make the default parameter code be 1
	ExchangeSetDecimationFactor( DATADECIMATIONFACTORDEFAULT );	//this default comes from the app code, not sure if this is a good idea, default is 1
	ExchangeSetFailureDetails( 0, 0, 0.0 );
	ExchangeSetWaterTwisterConstants( 0.0, 0.0 );
	ExchangeSetTwisterPrelimTorque( 0.0 );
	ExchangeSetBrakeTorque( 0.0 );
	ExchangeSetBrakeDelayParams( 0.0, 0.0, 0.0, 0.0, 0.0, 100 ); //default brake delay is 50ms which is 100 steps of 500us
	ExchangeSetMotorState( FALSE );
	ExchangeSetDownloadInfo( 0, 0, DATADECIMATIONFACTORDEFAULT, 0, 0, 0, (Uint16 *)0, 0 );
	ExchangeSetRetractionFlag( FALSE );
	ExchangeSetWTExtraTorque( 0.0 );
}

//! Way to check if this board is designated starboard by a jumper.
boolean IsStarboardJumperInstalled( void )
{
	boolean Retcode;
	Uint16 HoldPushbuttonPort;

	//Assume it's not there
	Retcode = FALSE;

	//Read the port and pick out the correct bit
	HoldPushbuttonPort = ReadPushbuttonPort();
	if( (HoldPushbuttonPort & STARBOARD_JUMPER_BIT) == 0)
	{
		//Low means jumper installed
		//We're a starboard installation, let other code know to change our address to reflect that.
		Retcode = TRUE;
	}
	return( Retcode );
}

//! Way to check if this board is supposed to download data over comm or to a laptop, by a jumper.
//! The jumper is named "Data dump over comm" and if it's installed, data is dumped over comm, not a local terminal.
boolean IsDataDumpOverCommJumperInstalled( void )
{
	boolean Retcode;
	Uint16 HoldPushbuttonPort;

	//Assume it's not there
	Retcode = FALSE;

	//Read the port and pick out the correct bit
	HoldPushbuttonPort = ReadPushbuttonPort();
	if( (HoldPushbuttonPort & DATA_DUMP_COMM_JUMPER_BIT) == 0)
	{
		//Low means jumper installed
		//We are downloading data over comm, not over a serial line to a laptop
		Retcode = TRUE;
	}
	return( Retcode );
}

//! Cedes control of the system to comm, in order to update parameters, etc.
//! This function allows comm code to set up the system parameters and interact with the shock absorber
//! @param *OpParamsPtr		Pointer to a union of the type OperatingParameters, containing an array and a structure of system operating parameters
//! @param *ConditionsPtr	Pointer to a structure of the type CurrentConditionsStruct, which holds state variables
//! @param CurrentCommState	Current state of comm, which this routine needs so it can tell if it's in setup phase or run phase.
CommMessageToAppType DoCommStuff( OperatingParameters *OpParamsPtr, CurrentConditionsStruct *ConditionsPtr, TwisterFailureStruct *DamperParamsPtr, CommMessageToAppType CurrentCommState )
{
	//static CommMessageToAppType LastCommState = StayInStandbyState;	//this has to be initted this way so it can be kept between calls
	Uint16		HoldSysParam;			//system parameter number (plane type)
	Uint16		HoldDecimation;			//data decimation during download
	FailureMode	HoldMode;				//failure mode info
	Uint32		HoldTrigger;			//failure mode info
	float32		HoldPercentFailure;		//failure mode info
	float32		HoldWTConst;			//WT constants
	float32		HoldZeroTorque;			//WT constants
	float32		HoldPrerunTorque;		//used to keep cable from sagging during setup

	if( CurrentCommState == StayInStandbyState )
	{
		//We're waiting for our load of parameters, which will be followed by a command to move from standby to run state.
		//The "start app" command changes the state to almost-running (ProceedToRunState).
		//Let comm run through its code for a while because nothing else is happening now.
		CommHandler( 10 );

		//On the water twister, the only thing that can change during standby is the pretension force
		HoldPrerunTorque = ExchangeGetTwisterPrelimTorque();
		ConditionsPtr->thisCablePretensionTorqueNm = HoldPrerunTorque;
		ConditionsPtr->thisDesiredNetTorqueNm = ConditionsPtr->thisCablePretensionTorqueNm;	//This is force in Newtons that the launch operator is requesting from the shock during setup
		//OutputTorqueAsVoltage(OpParamsPtr, ConditionsPtr);
	}

	//Check for the transition to running state
	else if( CurrentCommState == ProceedToRunState )
	{
		//This is where we move the params from the shared area to the app area
		//System parameter code (plane type code)
		HoldSysParam = ExchangeGetSystemParameterCode();
		OpParamsPtr->structure.parameterIDTag = HoldSysParam;

		//Data decimation during download
		HoldDecimation = ExchangeGetDecimationFactor();
		OpParamsPtr->structure.dataDecimationFactor = HoldDecimation;

		//failure details
		ExchangeGetFailureDetails( &HoldMode, &HoldTrigger, &HoldPercentFailure );
		DamperParamsPtr->failureMode							= HoldMode;		// mode of failure: none, time (delay), force, or velocity limit
		DamperParamsPtr->failureParameter.failureStartTimeUsec	= HoldTrigger;					// just in case, the failure start time is set to the beginning state of the countdown timer (so it will have passed this by the time it is checked)
		DamperParamsPtr->percentFailure							= HoldPercentFailure;			// and just in case, the percent failure is null
		DamperParamsPtr->isFailureOccurring						= FALSE;						// specified failure is not happening how (before app really starts)

		//Water twister constants
		ExchangeGetWaterTwisterConstants( &HoldWTConst, &HoldZeroTorque );
		OpParamsPtr->structure.waterTwisterConstant	= HoldWTConst;
		OpParamsPtr->structure.zeroTorqueNM			= HoldZeroTorque;

		//Now tell the app it's ready to run for real
		CurrentCommState = StayInRunState;
		ExchangeSetAppRunState( CurrentCommState );
	}

	//If the app is running, just do a quick check of comm and return
	else if( CurrentCommState == StayInRunState )
	{
		//Let comm run one loop through its code
		CommHandler( 1 );
	}

	//If the app is stopped, we can download data, and accept decimation commands, or reset commands
	//The water twister can also do retract after the app has stopped
	else if( CurrentCommState == StopOperating )
	{
		//Let comm run one loop through its code
		CommHandler( 1 );
		//Return, so the outer loop can see the stop state and end operating and let data download
	}

	//If we're downloading data after a run, just run comm once each time we're called.
	//Download stuff will be handled by comm code, but the app may want to do maintenance/shutdown things also
	//If the app is stopped, we can download data, and accept decimation commands, or reset commands
	else if( CurrentCommState == StayInDownloadState )
	{
		//Let comm run one loop through its code
		CommHandler( 1 );
	}

	CurrentCommState = ExchangeGetAppRunState();	//see if the state changed
	return( CurrentCommState );
}

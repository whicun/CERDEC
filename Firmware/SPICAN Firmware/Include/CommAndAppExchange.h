/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-08-07 17:16:26 -0400 (Mon, 07 Aug 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/CommAndAppExchange.h $ URL of repository
 *
 * $Rev:: 1922                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file handles the interactions between the comm system and the app

#ifndef INCLUDE_COMM_AND_APPEXCHANGE_H_
	#define INCLUDE_COMM_AND_APPEXCHANGE_H_

	typedef struct FailureStruct
	{
		 Uint16		failureMode;		// mode of failure
		 Uint32		failureTrigger;		// trigger for failure, different types of meanings but always 32 bits
		 float32	percentFailure;		// percentage by which damper torque is diminished if failure occurs
		 Uint16		isFailureOccurring;	// is failure occurring? Guaranteed to be zero when struct set up by comm
	} FailureStruct;

	//Info about data to download
	typedef struct DataDownloadInfoStruct
	{
		Uint32		NumberOfRecords;			//how many lines of data are there
		Uint32		NumberOfDecimatedRecords;	//how many records at current decimation setting
		Uint32		CommBufferSize;				//How big a packet can we send back
		Uint16		DecimationValue;			//what's the current decimation setting (typically 1)
		Uint16		BytesPerLine;				//How many bytes are in each line of data, this is binary bytes (float=4, int16=2 etc)
		Uint16		BytesPerDecimatedLine;		//Decimated lines may omit some data
		Uint16		HeaderSize;					//how long is the text header that tells what the settings were
		Uint16		*BufferLocation;			//where is the buffer with the header text info
	} DataDownloadInfoStruct;

	//Values of application run status
	typedef enum CommMessageToAppType
	{
		InvalidRunState=0,
		StayInStandbyState,
		ProceedToRunState,
		StayInRunState,
		StopOperating,
		StayInDownloadState,
		CommToAppMaxValue
	} CommMessageToAppType;

	//Firmware types
	enum FirmwareTypes
	{
		FIRMWARE_CLASS_INVALID=0,
		FIRMWARE_CLASS_SHOCKABSORBER,
		FIRMWARE_CLASS_WATERTWISTER_BRAKE,	//this code tells you the board contains both water twister and brake code, gets special handling
		FIRMWARE_CLASS_WATERTWISTER,	//this is the watertwister address for a water twister/brake board
		FIRMWARE_CLASS_BRAKE,			//this is the brake address for a water twister/brake board
		FIRMWARE_CLASS_INDUCTIONMOTOR,
		FIRMWARE_CLASS_POWERCONTROL,
		FIRMWARE_CLASS_SIMPLE_CART,		//lasers and wheel encoders only on a ProD
		FIRMWARE_CLASS_COMPLEX_CART,	//motors on the wheels controlled by Dev2 running CAN
		FIRMWARE_CLASS_MAX
	};

	//Hardware types
	enum HardwareClasses
	{
		HARDWARE_CLASS_INVALID=0,
		HARDWARE_CLASS_PROD,
		HARDWARE_CLASS_DEV2,
		HARDWARE_CLASS_MAX
	};

	void ExchangeInit( void );

	void ExchangeSetSystemInfo( SystemInfoStruct *SystemInfoPtr );
	void ExchangeSetSystemParameterCode( Uint16 Parameter );
	void ExchangeSetDecimationFactor( Uint16 Parameter );
	void ExchangeSetFailureDetails( Uint16 Mode, Uint32 Trigger, float32 percentFailure );
	void ExchangeSetShockAbsorberConstants( float32 SpringConst, float32 DampingConst, float32 PretensionConst );
	void ExchangeSetShockPrelimForce( float32 ForceSetting );
	void ExchangeSetTwisterPrelimTorque( float32 TorqueSetting );
	void ExchangeSetWaterTwisterConstants( float32 TempWTConst, float32 TempWTZeroTorque );
	void ExchangeSetWTExtraTorque( float32 CommAddedTorque );
	void ExchangeSetBrakeTorque( float32 BrakeTorque );
	void ExchangeSetBrakeDelayParams( float32 BrakeZeta, float32 BrakeOmegaN, float32 BrakeACoeff, float32 BrakeBCoeff, float32 BrakeCCoeff, Uint16 BrakeDelay );
	void ExchangeSetMotorState( boolean MotorState );
	void ExchangeSetAppRunState( CommMessageToAppType AppStateParam );
	void ExchangeSetDownloadInfo( Uint32 HowManyRecs, Uint32 HowManyDecimatedRecs, Uint16 HowMuchDecimation, Uint16 HowManyBytesPerLine, Uint16 HowManyBytesPerDecimatedLine, Uint16 HeaderSize, Uint16 *BufferLocation, Uint32 ReturnBufferSize );
	void ExchangeSetRetractionFlag( boolean YesOrNo);

	void ExchangeGetSystemInfo( BoardCapabilityStructType *BoardCapability);
	Uint16 ExchangeGetSystemParameterCode( void );
	Uint16 ExchangeGetDecimationFactor( void );
	void ExchangeGetFailureDetails( Uint16 *ModePtr, Uint32 *TriggerPtr, float32 *percentFailurePtr );
	float32 ExchangeGetTwisterPrelimTorque( void );
	void ExchangeGetWaterTwisterConstants( float32 *WTConst, float32 *WTZeroTorque );
	float32 ExchangeGetWTExtraTorque( void );
	float32 ExchangeGetBrakeTorque( void );
	void ExchangeGetBrakeDelayParams( float32 *BrakeZeta, float32 *BrakeOmegaN, float32 *BrakeACoeff, float32 *BrakeBCoeff, float32 *BrakeCCoeff, Uint16 *BrakeDelay );
	boolean ExchangeGetMotorState( void );
	CommMessageToAppType ExchangeGetAppRunState( void );
	void ExchangeGetDownloadInfo( DataDownloadInfoStruct *ReplyDownloadPtr );
	void ExchangeGetDownloadData( Uint32 StartingSampleNumber, Uint32 EndingSampleNumber, Uint8 * DataBuffer );
	boolean ExchangeGetRetractionFlag( void );

	boolean IsStarboardJumperInstalled( void );
	boolean IsDataDumpOverCommJumperInstalled( void );
#endif /* INCLUDE_COMM_AND_APPEXCHANGE_H_ */

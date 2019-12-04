/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2018-01-02 11:46:49 -0500 (Tue, 02 Jan 2018) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/Comm.h $ URL of repository
 *
 * $Rev:: 2610                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */

//! @file
//! This file is the Comm include file for the project.

#ifndef INCLUDE_COMM_H_
	#define INCLUDE_COMM_H_

	//There are 20 external UARTs and one internal one.
	#define NUMBER_OF_UART_QUEUES	2

	//How many independent functions can there be per board
	#define	FEATURES_PER_BOARD		4

	//How many characters to store in each receive queue
	#define CHARS_IN_EACH_RX_QUEUE 	65

	//For comm testing and downloading results after run
	#define LARGE_PACKET_BUFFER_SIZE	2000
	//How many characters to store in each receive queue
	//#define CHARS_IN_EACH_TX_QUEUE 	64
	#define CHARS_IN_EACH_TX_QUEUE 	LARGE_PACKET_BUFFER_SIZE

	//Do we want to spend the time to keep track of how full the queues get?
	#define MONITOR_QUEUE_LEVELS	TRUE

	//Should we throw a fatal error for invalid queue number?
	#define FATAL_ERROR_FOR_BAD_QUEUE_NUMBER	FALSE

	//Should we throw a fatal error for overstuffed queue?
	#define FATAL_ERROR_FOR_QUEUE_OVERFLOW		FALSE

	//Should we throw a fatal error for reading from an empty queue?
	#define FATAL_ERROR_FOR_QUEUE_UNDERFLOW		FALSE

	//Should we generate debug code?
	#define GENERATE_DEBUG_CODE				FALSE

	//Are we logging commands received?
	#define PROCESS_PACKET_DEBUG			FALSE

	//Should we log addresses that we see?
	#define LOG_ADDRESSES_FOUND				FALSE

	//What type of hardware is this code built for? The ProD is the most common.
	#define	HARDWARE_CLASS					HARDWARE_CLASS_PROD

	//Board hardware revision code is 1 for now
	#define	BOARD_REV_CODE					1

	//I set up shock as PERIPHERAL_ADDRESS3, WT as 4, power as 5, ind motor1 as 8, motor2 as 9
	#define MY_ADDRESS						PERIPHERAL_ADDRESS4

	//What is the protocol start character
	#define PSC						(0x5A)
	//How do we mask a PSC
	#define PSC_MASK_CHARACTER		0
	//Normal packet identifier
	#define NORMAL_PACKET			'N'
	//Extended packet identifier
	#define EXTENDED_PACKET			'E'
	//packet end character
	#define PACKET_END_CHARACTER	'S'

	//what baud rate should we set up the external uarts for?
	//#define DEFAULT_BAUD_RATE_COMM_UARTS	9600
	//#define DEFAULT_BAUD_RATE_COMM_UARTS	115200
	#define DEFAULT_BAUD_RATE_COMM_UARTS	125000

	//Fatal error codes for routine FatalError()
	//CRC validation for serial number failed
	#define FATAL_ERROR_CRC_CODE_DALLAS_FAILED	1
	//Something about the system setup is wrong - wrong CPU, wrong internal rev numbers, etc
	#define FATAL_ERROR_INVALID_CONFIG		2
	//An interrupt happened that should not happen
	#define FATAL_ERROR_SPURIOUS_INT		3
	//User attempted to push or pop to an invalid queue number
	#define FATAL_ERROR_INVALID_QUEUE		4
	//RX Queue was overstuffed
	#define FATAL_ERROR_OVERFLOW_RXQUEUE	5
	//TX Queue was overstuffed
	#define FATAL_ERROR_OVERFLOW_TXQUEUE	6
	//RX Queue was overstuffed
	#define FATAL_ERROR_UNDERFLOW_RXQUEUE	7
	//TX Queue was overstuffed
	#define FATAL_ERROR_UNDERFLOW_TXQUEUE	8
	//CRC8 code doesn't work so no packets will work
	#define FATAL_ERROR_CRC8_OPERATION		9
	//CRC16 code doesn't work so no extended packets will work
	#define FATAL_ERROR_CRC16_OPERATION		10
	//Queue code failed diagnostics
	#define FATAL_ERROR_QUEUE_OPERATION		11
	//User tried to use invalid UART number
	#define FATAL_ERROR_INVALID_UART_NUM	12
	//I don't know what my reply address is
	#define FATAL_ERROR_NO_ADDRESS			13

	//There are 2 UARTs directly on the processor
	//If you need to download data directly at the board, only run 1 uart
	//If you need a direct comm channel for the brake, run 2 uarts
	#define NUMBER_OF_UART_CHANNELS		2

	//How close to the end of the timer period do we want to get before we stop calling comm?
	//Don't want a comm processing to run over an interrupt flag, it would delay it some.
	//The sysclockout value is 150MHz, so it's 150 clocks per microsecond.
	//Was 60, moving it up for no particular reason
	#define MICROSECONDS_BEFORE_END		100
	#define TIME_CLOSE_TO_END_OF_PERIOD (Uint32)(MICROSECONDS_BEFORE_END * 150)
	#define MICROSECONDS_AFTER_START		10
	//Note: I think literals are assumed to be Uint16, which means 490*150 is out of range; cast the below to Uint32 first so math works
	#define	TIME_CLOSE_TO_START_OF_PERIOD 	(Uint32)((Uint32)(500 - MICROSECONDS_AFTER_START) * 150)
	//Note - there is a typo in TI's definitions - receive fifo count is FIFST but transmit is FFST. Transmit is correct.
	#define UARTA_FIFO_ENABLE			SciaRegs.SCIFFTX.bit.SCIFFENA
	#define UARTA_RX_FIFO_COUNT			SciaRegs.SCIFFRX.bit.RXFIFST
	#define UARTA_TX_FIFO_COUNT			SciaRegs.SCIFFTX.bit.TXFFST
	#define UARTA_FIFO_RESET			SciaRegs.SCIFFRX.bit.RXFIFORESET
	#define UARTA_RUN_IN_DEBUG			SciaRegs.SCIPRI.bit.FREE
	#define UARTB_FIFO_ENABLE			ScibRegs.SCIFFTX.bit.SCIFFENA
	#define UARTB_RX_FIFO_COUNT			ScibRegs.SCIFFRX.bit.RXFIFST
	#define UARTB_TX_FIFO_COUNT			ScibRegs.SCIFFTX.bit.TXFFST
	#define UARTB_FIFO_RESET			ScibRegs.SCIFFRX.bit.RXFIFORESET
	#define UARTB_RUN_IN_DEBUG			ScibRegs.SCIPRI.bit.FREE

	void InternalUartStartTransmission( Uint16 WhichUart );
	void InternalUartTXInterruptControl( Uint16 Which, Uint16 TxIntrControl );
	void InternalUartRXInterruptControl( Uint16 Which, Uint8 RxIntrControl );
	Uint16 InternalUartIsTxFIFOFull( Uint16 Channel );
	Uint16 InternalUartIsRxFIFOEmpty( Uint16 Channel );
	void InitF2812UartForComm( Uint16 WhichUart, Uint32 BaudRate );
	Uint16 InternalUartGetFIFOCharacter( Uint16 Channel );

	#define RUN_COMM_FOREVER	0xffff
	void CommHandler( Uint16 Duration );

	//interrupt response trace code for use during debug
	// WARNING - you must NOT enable both rcv and xmit trace at the same time - their function names overlap!
	#define ENABLE_TRACE_XMIT	0
	#if ENABLE_TRACE_XMIT
		void TraceAddTracePoint( Uint16 Value);
		void TraceSetup( void );
	#endif

	//interrupt response trace code for use during debug
	#define ENABLE_TRACE_RCV	0
	#if ENABLE_TRACE_RCV
		void TraceAddTracePoint( Uint16 Value);
		void TraceSetup( void );
	#endif

	//Queue code
	void QueueInitQueue( Uint16 Which );
	void QueueInitRxQueue( Uint16 Which );
	void QueueInitTxQueue( Uint16 Which );
	void QueueInitAll( void );
	Uint16 QueueIsTxQueueEmpty( Uint16 Which );
	Uint16 QueueIsRxQueueEmpty( Uint16 Which );
	Uint16 QueueIsTxQueueFull( Uint16 Which );
	Uint16 QueueIsRxQueueFull( Uint16 Which );
	void QueuePushTxChar( Uint16 Which, u8bit ThisChar );
	void QueuePushRxChar( Uint16 Which, u8bit ThisChar );
	u8bit QueuePullRxChar( Uint16 Which );
	u8bit QueuePullTxChar( Uint16 Which );
	void QueuePushRxString( Uint16 Which, u8bit_t *s );
	void QueuePushTxString( Uint16 Which, u8bit_t *s );
	void QueuePushRxNumBytes( Uint16 Which, u8bit *s, u8bit ByteCount );
	void QueuePushTxNumBytes( Uint16 Which, u8bit *s, u8bit ByteCount );
	void QueueWaitRxQueueEmpty( Uint16 Which );
	void QueueWaitTxQueueEmpty( Uint16 Which );
	void QueueWaitRxQueueNotEmpty( Uint16 Which );
	void QueueWaitTxQueueNotEmpty( Uint16 Which );
	void QueueTransferTxRxQueues( Uint16 Which1, Uint16 Which2 );

	//only used for diags
	Uint16 QueueTestQueueCode( void );

	Uint16 DetermineCPUType( void );

	void InitCommFirmware( void );

	void ForceHardReset( void );
	void XtoA( u32 Value, char16 * Buffer, u16 NoLeadingZeroes );

	//Device addresses that go in the packet. These are NOT comm channel numbers or queue numbers.
	//Each ProD board has two addresses, one for each UART. So we define only even addresses.
	//There is no address 1 - the master has only one address.
	enum Addresses
	{
		MASTER_CPU_ADDRESS		= 0,
		PERIPHERAL_ADDRESS1		= 2,
		PERIPHERAL_ADDRESS2		= 4,
		PERIPHERAL_ADDRESS3		= 6,
		PERIPHERAL_ADDRESS4		= 8,
		PERIPHERAL_ADDRESS5		= 10,
		PERIPHERAL_ADDRESS6		= 12,
		PERIPHERAL_ADDRESS7		= 14,
		PERIPHERAL_ADDRESS8		= 16,
		PERIPHERAL_ADDRESS9		= 18,
		PERIPHERAL_ADDRESS10	= 20,
		PERIPHERAL_ADDRESS11	= 22,
		PERIPHERAL_ADDRESS12	= 24,
		PERIPHERAL_ADDRESS13	= 26,
		PERIPHERAL_ADDRESS14	= 28,
		PERIPHERAL_ADDRESS15	= 30,
		PERIPHERAL_ADDRESS16	= 32,
		SERIAL_NUMBER_ADDRESSING=0x80,
		BROADCAST_ADDRESS,
		PEER_TO_PEER_ADDRESS
	};

	//Boards designated as "starboard" have an offset added to them.
	#define STARBOARD_ADDRESS_OFFSET	0x40
	//Which jumper position to check for the starboard offset
	#define STARBOARD_JUMPER_BIT		0x80
	//Which jumper position to check for the data dump over comm - make it easy to get to, the LSB
	#define DATA_DUMP_COMM_JUMPER_BIT	0x1


	//Comm queue numbers. Peripherals might be on any of the fiber channels.
	enum QueueNumbers
	{
		//The first port is value zero, etc, in the software.
		UART_A=0,
		UART_B,
		NO_COMM_PORT	//Value to show that this is an unused port
	};

#if 0
	//Firmware types
	enum FirmwareTypes
	{
		FIRMWARE_CLASS_INVALID=0,
		FIRMWARE_CLASS_SHOCKABSORBER,
		FIRMWARE_CLASS_WATERTWISTER_BRAKE,	//this code tells you the board contains both water twister and brake code, gets special handling
		FIRMWARE_CLASS_WATERTWISTER,	//this is the watertwister address for a water twister/brake board
		FIRMWARE_CLASS_BRAKE,			//this is the brake address for a water twister/brake board
		FIRMWARE_CLASS_INDUCTIONMOTOR1,	//there are 2 different boards, one for phase 1/phase 2, one for phase 3/brake
		FIRMWARE_CLASS_INDUCTIONMOTOR2,
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
#endif
	//Values of temperature measurement command
	typedef enum TemperatureValuesType
	{
		TemperatureOfBoard=1,
		TemperatureOfBrakeResistor1,
		TemperatureOfBrakeResistor2,
		TemperatureParameterMaxValue
	}TemperatureValuesType;

	//What do we use in testing if there's no device address?
	#define DEFAULT_PERIPHERAL_ADDRESS		PERIPHERAL_ADDRESS7

	//What is the range of valid board rev codes
	#define HW_REV_MIN	1
	#define HW_REV_MAX	2

	//Internal processor code value
	#define PROC_TMS320F2812	1
	#define PROCESSOR_TYPE_STD	1

	typedef enum FeatureStatusValuesType
	{
		FeatureDisabled=0,			//not turned on yet for some reason
		FeatureNormal,				//all is good
		FeatureInvalidParameter,	//Can't run because given bad parameter
	}FeatureStatusValuesType;

	//Board capability structure
	typedef struct BoardCapabilityStructType
	{
		u16bit	HardwareClass;	//What kind of board is this (ProD, Dev2, etc)
		u16bit	HardwareRev;	//What is board HW rev
		u16bit	FirmwareType;	//Which type of code is loaded (shock absorber, water twister, etc)
		u16bit	ProcessorType;	//Which processor installed
		u32bit	RevisionNumber;	//ESL standard revision code, supplied by the app
	}
	BoardCapabilityStructType;

	//comm protocol defines
	#define	MAX_INCOMING_PACKET_LENGTH	64
	#define	MAX_VALID_LENGTH_VALUE		100
	#define	MAX_OUTGOING_PAYLOAD_LENGTH	64
	//Packet can grow when we do masking
	//This value sets the size of the reply packet buffer in the structure
	//#define	MAX_OUTGOING_PACKET_LENGTH	100
	#define	MAX_OUTGOING_PACKET_LENGTH	CHARS_IN_EACH_TX_QUEUE

	// Clearing the Comm Scratch Buffer and Reply Structure - MAX_OUTGOING_PACKET_LENGTH characters - is likely causing timer overruns.
	// This flag tells their respective Init functions whether to actually clear them or not.
	#define	SHOULD_I_UNNECESSARILY_CLEAR_BUFFERS	FALSE

	//protocol handler states
	typedef enum ProtocolStateType
	{
		ProtocolFailed=0, 			//failure, start over
		ProtocolDone, 				//normal completion, good packet
		ProtocolInitialize,			//set it here to start off
		ProtocolFindStartPSC,		//starting up
		ProtocolFindProtocolStart,	//get address prefix
		ProtocolStoreDestinationAddress, //get destination address
		ProtocolStoreDestinationAddressExtended, //for extended packets, an extra state
		ProtocolStoreSourceAddress, //get source address
		ProtocolStoreSourceAddressExtended, //get source address second part
		ProtocolStoreLength,		//get body length
		ProtocolStoreLengthExtended,	//get body length second part
		ProtcolStoreCommandType,	//command code
		ProtocolStoreBody,			//this might be skipped if length is 1
		ProtocolLookForPSCBodyMask,	//Found a PSC in body, look for null following it
		ProtocolStoreCRC,			//get CRC
		ProtocolStoreCRCExtended,	//get CRC second byte for extended packets
		ProtocolLookForPSCCRCMask,	//handle masking a CRC value of PSC
		ProtocolLookForPSCCRCMaskExtended,	//handle masking a CRC value of PSC
		ProtocolFindEndPSC,			//end marker, decide if packet is good
		ProtocolFindEndFlag,		//Find the final character of message
		ProtocolPacketErr			//packet has an error
	}
	ProtocolStateType;

	//These are protocol structure errors detected during receiving a packet.
	typedef enum PacketErrorCauseType
	{
		PacketErrNoErr=0,			//normal
		PacketErrLengthZero,		//length can't be zero
		PacketErrLengthInvalid,		//length can't be the PSC value
		PacketErrLengthLarge,		//can't be longer than max length
		PacketErrCRCbad,			//crc didn't match
		PacketErrNoEndPSC,			//no final PSC on packet
		PacketErrNoEndFlag,			//no final flag on packet
		PacketErrBadState			//state variable invalid
	}
	PacketErrorCauseType;

	//These are errors detected after the packet is found to have a good structure.
	//They are produced by CheckIncomingPacketValidity
	typedef enum PacketProcessType
	{
		PacketProcessStart=0,		//nothing happened yet, same value as FALSE
		PacketProcessDone,			//normal completion, same value as TRUE
		PacketProcessValid,			//looks good but haven't done analysis yet
		PacketProcessNotMe,			//not addressed to me
		PacketProcessBadCommand,	//command code invalid
		PacketProcessBadCRC,		//CRC was wrong
		PacketProcessWrongLength,	//packet length is not what it should be for this command
		PacketProcessBadParamCode,	//It's a get/read parameter command but the parameter code is invalid (0 or too high)
	}
	PacketProcessType;

	//offsets into the packet for normal packets
	enum PacketOffsetsNormal
	{
		PACKET_DESTINATION_ADDRESS_OFFSET=2,
		PACKET_SOURCE_ADDRESS_OFFSET,
		PACKET_LENGTH_OFFSET,
		PACKET_TYPE_OFFSET, //type is the first byte of the payload
		PACKET_BODY_OFFSET
	};

	//offsets into the packet for extended (large) packets
	enum PacketOffsetsExtended
	{
		EXTENDED_PACKET_DESTINATION_ADDRESS_OFFSET=2,
		EXTENDED_PACKET_SOURCE_ADDRESS_OFFSET=4,
		EXTENDED_PACKET_LENGTH_OFFSET=6,
		EXTENDED_PACKET_TYPE_OFFSET=8, //type is the first byte of the payload
		EXTENDED_PACKET_BODY_OFFSET
	};

	//command codes - ***WARNING*** this table ties in with two length tables (incoming and outgoing length) in comm.c - change carefully
	typedef enum PacketCommandCodeType
	{	//zero is an invalid command number
		CommandDeviceStatus=1,
		CommandSoftReset,
		CommandHardwareReset,
		CommandHardwareClassAndRev,
		CommandFirmwareTypeAndRev,
		CommandStartApplication,
		CommandStoreNumber,
		CommandReturnNumber,
		CommandReturnDeviceSerialNumber,
		CommandSetParameter,
		CommandReadParameter,
		CommandReturnSupplyVoltages,		//On a ProD you can read 2.5vref
		CommandReturnTemperature,
		CommandGoOffline,					//Stop responding to comm, wait for reset
		CommandStopApplication,
		CommandReturnNumberInHugePacket,	//used for diagnostics, generates a huge packet
		CommandReturnDownloadInfo,			//return general info about the download
		CommandReturnDownloadHeader,		//return the text header describing all the settings used
		CommandReturnRangeOfData,			//return the specified lines of data
		CommandStartRetract,				//start the cable retraction process after a run (only applies to water twister)
		CommandCalibrateBusVoltages,		//tell the induction motor boards to calibrate their ADCs
		CommandDischargeBus,				//tell the induction motor boards to engage braking resistors to discharge bus caps
		CommandMaxNormalCommand,			//This is one more than the highest command number, so check "less than"
		CommandInvalidCommand,				//guaranteed to be an invalid command number
		//Test Mode commands
		CommandTestModeEnter=0x80,
		CommandTestModeExit,
		CommandMaxTestModeValue
	}
	PacketCommandCodeType;

	//Contents, info, and status of comm packet.
	//The locations in the byte stream vary between normal and extended packets,
	//so make it easy by having the comm processor store the locations for you.
	typedef struct PacketStatusStructType
	{
		PacketProcessType		PacketProcessStatus;	//after packet assembled, could we process it?
		ProtocolStateType		State;					//where are we on assembling the incoming packet?
		PacketErrorCauseType	PacketErrorCause;		//if protocol failed, this tells you why
		u8bit					PacketIsExtended;		//is it a big packet?
		u16bit					DestinationAddress;		//where is it going
		u16bit					SourceAddress;			//where did it come from
		u16bit					Length;					//what is the length field
		PacketCommandCodeType	CommandCode;			//command code in packet (first byte of payload)
		u8bit					DoNotReply;				//if this was a broadcast, do not reply
		u8bit					PacketStatus;			//if TRUE, packet came in and was properly formatted but has not been analyzed for content or address. FALSE, not done or not good.
		u16bit					BodyStartOffset;		//Where does the body start in this packet?
		u16bit					CRC;					//What is the CRC in the packet?
		u16bit					CharsReceived;			//total chars received, not the LEN field, allow for large pkts
		u8bit					Finished;				//when TRUE, you can check
		u8bit					PacketContents[ MAX_INCOMING_PACKET_LENGTH ];
	}
	PacketStatusStructType;

	//state of reply packet transmission
	typedef enum PacketReplyStateType
	{
		PacketReplyNotStarted,	//nobody did anything yet
		PacketReplyReadyToSend, //reply built and ready to send back
		PacketReplySending,		//transmission started
		PacketReplyDone,		//transmission of reply done
		PacketReplyNoneNeeded,	//no need for a reply to this packet
		PacketReplyError		//cancelled due to error
	}
	PacketReplyStateType;

	//How big is the device serial number?
	#define DEVICE_SERIAL_NUMBER_SIZE	8


	//status of the board, no matter how many features it contains
	typedef struct BoardStatusType
	{
		u8bit	Reset;			//has been reset, cleared when read
		u8bit	TestMode;		//board is in test mode
		u8bit	Busy;			//the board is doing something (running a feature)
		u8bit	BoardFault;		//board has a problem
		u8bit	StatusSummary;	//overall status byte to return
	}
	BoardStatusType;

	//what is this feature doing? One struct per feature on this device
	typedef struct FeatureStatusType
	{
		u8bit	FeatureFault;		//flag saying feature has a problem
		u8bit	Status;				//fault code
		u8bit	LastTransaction;	//Last transaction number encountered
		u8bit	FeatureState;		//state of the feature (waiting for start pulse, running, stopped)
	}
	FeatureStatusType;

	//Don't move this up in the code! Must be after its substructures are defined.
	//what's going on with the system
	typedef struct SystemStatusType
	{
		BoardStatusType		BoardStatus;
		FeatureStatusType	FeatureStatus[ FEATURES_PER_BOARD ];		//allow multiple features per board
		u16bit				BoardTemperatureF;
	}
	SystemStatusType;

	//masks used to set status summary byte
	#define RESET_MASK			0x10
	#define BUSY_MASK			0x20
	#define BOARD_FAULT_MASK	0x40
	#define TEST_MODE_MASK		0x80

	//status of reply packet
	typedef struct ReplyMessageStructType
	{
		u16bit					CharsToSend;	//how many chars go out
		PacketReplyStateType	TransmitState;	//is the transmission done
		u8bit					ReplyContents[ MAX_OUTGOING_PACKET_LENGTH ];
	}
	ReplyMessageStructType;

	//Parameter codes for the set parameter command.
	//Parameter sets are unique across all board types to prevent a brake parameter from working on a power supply board for instance.
	//There are different codes for a big group of setup params vs a number that changes often.
	//This allows smaller messages for things that change often.
	// ***WARNING*** changes here must be reflected in IncomingPacketParameterCommandLength or code will break!
	typedef enum ParameterSetValuesType
	{
		ParameterSystemParameterCode=1,	//Everybody uses same code for this, reflects a group of related params, like a plane type
		ParameterDecimationFactor,		//Everybody uses the same parameter number for data decimation factor. Each device can have a different value.
		ParameterFailureConfigStruct,	//Everybody uses the same parameter number for failures because they use the same structure
		ParameterWaterTwisterConstants,	//The water twister parameters that don't change during a run
		ParameterWTCommAddedTorque,		//Water Twister torque that changes during a run
		ParameterBrakeDelayDiffEqParams,//Brake system differential equation for delay of onset
		ParameterBrakeTorque,			//Brake torque varies during the arrestment
		ParameterShockAbsConstants,		//Shock absorber spring constant and damping constant
		ParameterShockAbsSetupTorque,	//Used to force shock to max extension during setup phase (not used during run) NOT REALLY A TORQUE, IT'S A FORCE. SORRY
		ParameterTwisterSetupTorque,	//Used in the setup phase to keep the cable from sagging
		//Settings for induction motor and power board will follow later
		ParameterMaxValue
	}
	ParameterSetValuesType;

	//Dispense state machine
	enum DispenseStateEnum
	{
		DispenseStateIdle=0,
		DispenseStateGotRequest,			//got a command to dispense
		DispenseStateWaitingForPollToArrive,//want to make sure central gets in 1 poll before I start
		DispenseStateWaitingForPollReply,	//waiting for my answer to go out
		DispenseStateDispenseStarting,		//about to start dispensing, stop listening to comm
		DispenseStateInProcess,				//part way through a multiple dispense
		DispenseStateFinishing,				//setting up status and fault codes
		DispenseStateDone 					//done
	};

	//Feature status codes
	enum FeatureStatusEnum
	{
		FeatureStatusGood=1,		//Normal
		FeatureStatusIdle,			//nothing going on
		FeatureStatusFault,			//Some fault
	};

	//Board status codes (for the entire device, regardless of how many functional units it contains)
	enum BoardStatusEnum
	{
		BoardStatusGood=0
	};

	//! Dispense Reply Codes, reply to dispense command
	enum DispenseReplyEnum
	{
		DISPENSE_STARTING=1,
		DISPENSE_BUSY_ERROR,		//Already dispensing
		DISPENSE_FAULT_ERROR,		//Dispenser has  fault
		DISPENSE_PARAMETER_ERROR,	//dispense count is too high
		DISPENSE_EMPTY_ERROR		//tried to dispense when empty
	};

	#define DISPENSE_STATUS_OK				1
	#define DISPENSE_STATUS_FAULT			2
	#define DISPENSE_STATUS_NEW				4
	#define DISPENSE_STATUS_NONE			8
	#define DISPENSE_STATUS_EMPTY_AT_END	0x10

	//set up the system status structure at powerup
	void SystemInitStatus( void );
	//update the info in the flags to prepare for reporting back
	void SystemUpdateStatus( void );

	void main( void );	//everybody needs a prototype

	void NiceDoggy( void );
	void KillInternalWatchdog( void );
	u16bit_t ReadProcessorTypeCode( void );
	u8bit_t HighByte( u16bit_t thing );
	u8bit_t LowByte( u16bit_t thing );
	u8bit_t CalculateCRC8Comm( u8bit *Data, u16bit_t Length );
	u16bit_t CalculateCRC16CCITT(u8bit * data_p, u16bit_t length);
	u8bit_t VerifyCRC8Operation( void );
	u8bit_t VerifyCRC16Operation( void );
	u8bit_t IsNormalPacketAddressedToMe( Uint16 Which, u8bit_t Address );
	u8bit_t IsExtendedPacketAddressedToMe( Uint16 Which, u8bit_t Address );
	u8bit_t IsPacketCRCGood( Uint16 Which );
	u8bit_t IsNormalPacketCRCgood( Uint16 Which );
	u8bit_t IsExtendedPacketCRCgood( Uint16 Which );
	void InitProtocolStructure( Uint16 Which );
	void InitCommChannelStructure( void );
	void ResetCommStateMachine( Uint16 Which );
	void ResetAllCommStateMachines( void );
	ProtocolStateType HandleProtocolChar( Uint16 Which );
	u8bit_t CheckIncomingPacketValidity( Uint16 Which );
	void ProcessPacket( Uint16 Which );
	void BuildReplyAddress( void );
	void InitReplyStructure( Uint16 Which );
	void BuildNormalReplyMessage( Uint16 Which, u8bit *ReplySource );
	void BuildExtendedReplyMessage( Uint16 Which, u8bit *ReplySource );
	void BuildNormalPeripheralMessage( Uint16 Which, u8bit_t *ReplySource, u8bit_t DestinationAddress);
	void BuildExtendedPeripheralMessage( Uint16 Which, u8bit_t *ReplySource, u8bit_t DestinationAddress);
	void BuildFirmwareRevReply( Uint16 Which );
	void BuildHardwareRevReply( Uint16 Which );
	void BuildSupplyVoltagesReply( Uint16 Which );
	void BuildStoredNumberReply( Uint16 Which );
	void BuildStoredNumberReplyHuge( Uint16 Which );
	void BuildReadParameterReply( Uint16 Which );
	void BuildDownloadInfoReply( Uint16 Which );
	void BuildDownloadHeaderReply( Uint16 Which );
	void BuildDownloadRangeOfDataReply( Uint16 Which );

	void BuildReadTemperatureReply( Uint16 Which );
	void BuildSerialNumberReply( Uint16 Which );
	void ClearSerialNumberArray( u16bit_t *Pointer );
	void BuildStatusPollReply( Uint16 Which );

	void ProcessSetParameterCommand( Uint16 Which );
	void InitCommScratchBuffer( Uint16 Which );
	void SendReplyMessage( Uint16 Which );
	void SetReplyBufferState( Uint16 Which, PacketReplyStateType state );
	PacketReplyStateType CheckReplyBufferState( Uint16 Which );
	void NotifyPollReceived( Uint16 Which );
	void NotifyPollRespondedTo( Uint16 Which );

	Uint16 BytesTo16( Uint8 *Pointer );
	Uint32 BytesToInt32( Uint8 *Pointer );
	float32 BytesToFloat32( Uint8 *Pointer );
	Uint8 *Int16ToBytes( Uint16 Thing, Uint8 *Pointer );
	Uint8 *Int32ToBytes( Uint32 Thing, Uint8 *Pointer );
	Uint8 *Float32ToBytes( float32 FloatInput, Uint8 *Pointer );

	//All this externed stuff is in the comm code, made more sense to keep it there.
	extern PacketStatusStructType PacketStatusStruct[ NUMBER_OF_UART_QUEUES ];
	extern ReplyMessageStructType ReplyMessageStruct[ NUMBER_OF_UART_QUEUES ];
	//status of board and all features - set in interrupt so make it volatile
	extern volatile SystemStatusType SystemStatus;

	extern PacketStatusStructType PacketStatusStruct[ NUMBER_OF_UART_QUEUES ];
	extern ReplyMessageStructType ReplyMessageStruct[ NUMBER_OF_UART_QUEUES ];
	extern BoardCapabilityStructType BoardCapability;
	extern u8bit CommScratchBuffer[ NUMBER_OF_UART_QUEUES ] [ CHARS_IN_EACH_TX_QUEUE ];
	extern u16bit OutgoingPacketLength[];
	extern u8bit MyAddress;
	extern u8bit SavedNumber[4];
	extern u8bit TransactionNumber[4];
	extern u8bit DeviceSerialNumber[8];
	extern u8bit ReplyAddressNormalMode;
	extern u8bit ReplyAddressExtendedMode;
	extern u16bit_t	TempSensorROMInfo[8];		//Serial number info in the temperature sensor

	void CommTestCode( void );

#endif /* INCLUDE_COMM_H_ */

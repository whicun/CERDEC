/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-12-29 17:42:43 -0500 (Fri, 29 Dec 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/Comm.c $ URL of repository
 *
 * $Rev:: 2596                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

/*! @file
 * Comm code for the slow side of the Dev2, F28335.
 *
 * This file contains the comm protocol handling code having to do with packet structure and state transitions.
 * Code that replies to packets was moved to a separate file since this file was getting too large.
 *
 */

//The state of the packet on each comm channel
PacketStatusStructType PacketStatusStruct[ NUMBER_OF_UART_QUEUES ];

//Hold the reply message and its process on each channel
#pragma DATA_SECTION(ReplyMessageStruct,"ExternMem");
ReplyMessageStructType ReplyMessageStruct[ NUMBER_OF_UART_QUEUES ];

//Info about what this board can do
BoardCapabilityStructType BoardCapability;

//The comm scratch buffer is for building replies, so it is sized for the transmit queue.
#pragma DATA_SECTION(CommScratchBuffer,"ExternMem");
u8bit CommScratchBuffer[ NUMBER_OF_UART_QUEUES ] [ CHARS_IN_EACH_TX_QUEUE ];

u16bit_t	TempSensorROMInfo[8];		//Serial number info in the temperature sensor, global for the comm code

//Specify the length of a return packet.
//This does not apply to test mode commands, which start at 0x80, but for now they don't reply anyway.
//To be clear, this is the length of the REPLY packet to the command in BYTES that the peripheral is sending back.
u16bit OutgoingPacketLength[] =
{
	0,		//dummy entry, there is no command zero
	3,		//device status poll
	0,		//soft reset (no reply)
	0,		//hard reset (no reply)
	7,		//hardware class and rev
	7,		//firmware rev and type request
	0,		//start application (no reply)
	0,		//store number (no reply)
	5,		//return stored number
	9,		//return device serial number
	0,		//store parameter or set parameter (no reply)
	4,		//read parameter or get parameter or return parameter - special handling of length in code
	9,		//return supply voltages (returns 4 values)
	4,		//return temperature from a specified sensor
	0,		//go offline (no reply)
	0,		//stop application (no reply)
	1450,	//return stored number in huge packet. chars are 16 bits on F2812, this is a diagnostic command to send big packets. Leave room for protocol etc
	19,		//give general info about the data to download
	0,		//send back the text header for the download. Size is variable, so this is a dummy entry
	0,		//send back a selected area of stored data from the run. Size is variable, so this is a dummy entry
	0,		//retract cable (no reply)
	0,		//Calibrate bus voltages (no reply)
	0,		//Discharge bus caps (no reply)
};

//Length of incoming commands in BYTES. Special case for test mode and parameter commands.
//This is the length field, which does not include protocol. The command byte is the first one counted.
//To be clear, this is the length field in a command received by the peripheral. One byte means there's just a command, no parameters.
u16bit IncomingPacketCommandLength[] =
{
	0,		//dummy entry, there is no command zero
	1,		//device status poll
	1,		//soft reset (no reply)
	1,		//hard reset (no reply)
	1,		//hardware class and rev
	1,		//firmware rev and type request
	1,		//start application (no reply)
	5,		//store number (no reply)
	1,		//return stored number
	1,		//return device serial number
	4,		//store parameter or set parameter (no reply) - special handling of length in code. 4 works for setting a 16 bit param
	2,		//read parameter or get parameter or return parameter - this size of the incoming request does not change but the size of reply packet does
	1,		//return supply voltages (returns 4 values)
	2,		//return temperature from a specified sensor
	1,		//go offline (no reply)
	1,		//stop application (no reply)
	1,		//return stored number with HUGE packet
	1,		//return info about data to download
	1,		//return the text header describing the settings used in the download
	9,		//return a requested batch of data from a run
	1,		//retract cable (no reply)
	9,		//start bus voltage calibration on induction motor board
	2,		//discharge bus caps (no reply)
};

//This table starts with command 0x80, length in BYTES. It is for the test commands.
u8bit IncomingPacketTestModeCommandLength[] =
{
	1,		//Test mode enter
	1,		//Test mode exit
};

//The parameter set/read commands have variable length depending on what the parameter code is.
//Length is in BYTES. Length is the PARAMETER length, not the packet length.
//You add 2 when checking to include the command and the parameter number.
u8bit IncomingPacketParameterCommandLength[] =
{
	0,		//dummy entry, there is no parameter zero
	2,		//ParameterSystemParameterCode
	2,		//ParameterDecimationFactor
	10,		//ParameterFailureConfigStruct
	8,		//ParameterWaterTwisterConstants
	4,		//ParameterWTCommAddedTorque
	22,		//ParameterBrakeDelayDiffEqParams
	4,		//ParameterBrakeTorque
	12,		//ParameterShockAbsConstants
	4,		//ParameterShockAbsSetupTorque
	4,		//ParameterTwisterSetupTorque
	8,		//ParameterIMTwisterConstants
};

//status of board and all functional units in the board - set in interrupt so make it volatile
volatile SystemStatusType SystemStatus;
u8bit MyAddress;
u8bit ReplyAddressNormalMode;
u8bit ReplyAddressExtendedMode;
u8bit SavedNumber[4];
u8bit TransactionNumber[4];

void CommTestCode( void )
{
	//Uint8 i;
	//Uint32 HoldInterruptMask, HoldInterruptBits;
	//u8bit_t SampleMessageStatus[]={1,CommandDeviceStatus};
	//u8bit_t SampleMessageStatus[]={1,CommandFirmwareTypeAndRev};
	//u8bit_t PollMessage[]={1,CommandDeviceStatus};

	EINT;

	//Build a message to peripheral on transmit queue 1 (comm port 1) from my address (CPU address=0), to my address.
	//If I don't send it to my own address, it won't get processed!
	//A message built this way doesn't have the right states set up to transmit automatically.
	//BuildNormalPeripheralMessage( UARTA, SampleMessageStatus, 0 );
	//ControlWirelessCommandBit(1);

	//start the transmission of the reply
	//SendReplyMessage( UARTA );
	//SciaRegs.SCIFFRX.bit.RXFIFORESET	= 0;
	//SciaRegs.SCIFFRX.bit.RXFIFORESET	= 1;
	//DELAY_US(1000);
	//send a firmware status request out uart b (wired back to my uart a) at my address
	//BuildNormalPeripheralMessage( UARTB, SampleMessageStatus, MyAddress );

	//start the transmission of the reply
	//SendReplyMessage( UARTB );

	//make it delay while things happen with uarts and interrutps
	//DELAY_US(100000);
	CommHandler( RUN_COMM_FOREVER );

#if 0
	QueueWaitTxQueueEmpty( 1 ); //hang out here till it's all given to the uart FIFO to transmit but transmission has not started yet.
	KillMillisecond( 5 );
	GpioControlH17( 1 );
	//Now we're halfway through the tranmission of the outgoing message. Are there any receive interrupts?
	DINT;
	InternalUartReadAllRegs();
	HoldCPLDInterruptMaskRegister = InternalUartReadCPLDInterruptMask();
	HoldCPLDInterruptRegister = InternalUartReadCPLDInterruptBits();
	HoldIntrPin = GpioDataRegs.GPADAT.bit.GPIO24;
	EINT;
	KillMillisecond( 5 );
#endif

	//Move the packet we put into the transmit queue over to the CPU's receive queue
	//QueueTransferTxRxQueues( 0, 1 );

#if 0
	//Transfer the data from the transmit buffer on queue 1  to the receive queue on queue 0 (Central CPU) so we can pretend we just received it
	for( i=0; i<ReplyMessageStruct[ 1 ].CharsToSend; i++ )
	{
		QueuePushRxChar( 0, ReplyMessageStruct[ 1 ].ReplyContents[ i ] );
	}
#endif

#if 0
	//Keep processing characters till the packet processing is done
	while( PacketStatusStruct[ 0 ].Finished != TRUE )
	{
		HandleProtocolChar( 0 );
	}
#endif

	//clean up any mess we made
	//QueueInitAll();
}

//! Process comm packets. Caller can choose how many loops to allow the comm processor to run.
//! Each processing loop will empty all incoming character FIFOs and process those characters before returning.
//! @param Duration How many processing loops to allow. Zero and one are synonymous. 65535 (0xffff) never returns.
void CommHandler( Uint16 Duration )
{
	Uint16 done;
	Uint16 i;
	Uint16 Loops;

	//Qualify parameter from the user
	Loops = 0;
	if( Duration == 0 )
	{
		Duration = 1;
	}

	done = FALSE;
	//process incoming commands
	while( done == FALSE )
	{
		LEDControl( D28, LED_OFF );		//comm handler start of main loop
		LEDControl( D29, LED_OFF );		//comm handler start of main loop

		//Go through each of the external UART channels
		for( i=0; i<NUMBER_OF_UART_CHANNELS; i++ )
		{
			//As long as this channel has chars in the queue, or a packet almost done, finish before going on to the next channel.
			while(	(QueueIsRxQueueEmpty( i ) == FALSE)				||
					(PacketStatusStruct[i].State == ProtocolDone)	||
					(PacketStatusStruct[i].State == ProtocolFailed)		)
			{
				//if a character came in, process it, or do whatever else the protocol handler needs to.
				//If we are in one of the almost-done states, this last call will finish processing the packet structure.
				HandleProtocolChar( i );

				//If the packet is done, process it. Could be good or bad.
				if( PacketStatusStruct[ i ].Finished == TRUE )
				{
					//Is it a good packet?
					if( PacketStatusStruct[ i ].PacketStatus == TRUE )
					{
						//Is it addressed to me? And do command code and length match?
						if( CheckIncomingPacketValidity( i ) == TRUE )
						{
							//Show that we received a good packet
							//The display makes more sense if the LED nearer the appropriate connector blinks.
							//This only works on a board with 2 comm ports and 2 LEDs!
							if( i == 0 )
							{
								LEDControl( D29, LED_RED ); //comm handler got a good packet ch0
							}
							else
							{
								LEDControl( D28, LED_RED );	//comm handler got a good packet ch1
							}
							//Do what this incoming packet needs
							ProcessPacket( i );
							//if it was a good packet...
							if( PacketStatusStruct[ i ].PacketProcessStatus == PacketProcessDone )
							{
								//and if there's a reply to go back...
								if( ReplyMessageStruct[ i ].TransmitState == PacketReplyReadyToSend )
								{
									//start the transmission of the reply
									LEDControl( D29, LED_RED );	//Comm reply start
									// We can't slow down, and replies take a long time.
									if( ExchangeGetAppRunState() != StayInRunState )
									{
										SendReplyMessage( i );
									}
									//QueueWaitTxQueueEmpty( i ); //$$$does this make huge packets work? No, but it makes the LED show whole packet transmission.
									LEDControl( D29, LED_OFF );	//Comm reply end
								}
								//we analyzed the packet, did what it wanted, and started a reply going if needed.
								//Now erase the packet and prepare to receive the next one
								ResetCommStateMachine( i );
								break; //allow rest of code to run
							}
							else
							{
								//If we get here, it looked like a good packet, but I could not process it.
								ResetCommStateMachine( i );
								break; //allow rest of code to run
							}
						}
						else
						{
							//If we get here, the packet looked good but either it wasn't addressed to me, or it had a bad command code
							ResetCommStateMachine( i );
							break; //allow rest of code to run
						}
					}
					else
					{
						//There was a packet but it was doodoo for any number of reasons having to do with protocol structure.
						ResetCommStateMachine( i );
						break; //allow rest of code to run
					}
					//If we get here, a packet arrived and we are done with it, whether it was good or bad or needed a reply.
				}
				else
				{
					//The packet isn't finished arriving yet, it's status is not "Finished" (ProtcolDone or ProtocolFailed). Just keep going.
				}
			} //end while there are chars to process in this queue or we're almost done with packet structure state machine
		} //end of for loop going through all comm channels.

		//keep track of how many times we ran through this
		Loops++;

		if( Duration == 0xffff )
		{
			Loops = 0;
		}

		if( Loops >= Duration )
		{
			done = TRUE;
		}
	} //end while(TRUE)
}

//! Set up a ProD UART for use by the comm packet software.
//! This enables the receive FIFO interrupt, but not the transmit FIFO interrupt.
//! The interrupt still has to be enabled in the CPU.
//! @param WhichUart Specifies which uart to init. Might only need to use one of them.
void InitF2812UartForComm( Uint16 WhichUart, Uint32 BaudRate )
{
	if( WhichUart == UARTA )
	{
		//UART A - Set up the hardware
		//An unconnected 485 input which has been bypassed for TTL interface will generate BRK, so you might want 232 for testing.
		SelUARTAInterface( SEL_RS485 );			//set to the 485 interface which we are using as TTL level RS232, J5 pin 1.
		//SelUARTAInterface( SEL_RS232 );		//set up so it won't generate a BRK at startup.
		InitUARTAGPIO();						//set up the GPIO control registers for UARTA functionality

		//Do a state machine reset of the uart - does not change config bits but clears error status
		SciaRegs.SCICTL1.bit.SWRESET	= 0;	//start the reset
		SciaRegs.SCICTL1.bit.SWRESET	= 1;	//end the reset

		//Set up the character info
		SciaRegs.SCICCR.all				= 7;	//1 stop bit, no parity, 8 character bits, idle-line protocol, no loopback, async mode
		SciaRegs.SCIPRI.bit.FREE		= 1;	//let it run during emulator breaks

		SetBaudUARTA(BaudRate);					//set the baud rate the user requested

		SciaRegs.SCICTL1.bit.TXENA		= 1;	//enable TX
		SciaRegs.SCICTL1.bit.RXENA		= 1;	//enable RX

		//Transmit and receive FIFO features are both enabled by the transmit register
		SciaRegs.SCIFFTX.bit.SCIFFENA	= 1;

		//The receive FIFO interrupt trigger is set up with an impossible bit pattern at reset, higher than the size of the FIFO.
		//Make it be 1, so that any number of characters will trigger an interrupt.
		//This is necessary because there is no "stale receive data" interrupt.
		//If you set it to trigger at 8 chars, and only 7 arrive, you will never know.
		SciaRegs.SCIFFRX.bit.RXFFIL		= 1;

		//Enable receive interrupts. Transmit interrupts are not enabled till we have something to send.
		InternalUartTXInterruptControl( WhichUart, FALSE );

		//Clear out the transmit and receive FIFOs, assert and remove reset.
		SciaRegs.SCIFFRX.bit.RXFIFORESET	= 0;
		SciaRegs.SCIFFRX.bit.RXFIFORESET	= 1;
		SciaRegs.SCIFFTX.bit.TXFIFOXRESET	= 0;
		SciaRegs.SCIFFTX.bit.TXFIFOXRESET	= 1;

		//If the 485 input is selected and tied low, there will be 2 bad characters in the FIFO (FE and then BRK).
		//The read will clear them, but there will be 2 more in 2 character times.
		//If nothing is waiting, this will return NO_CHAR.
		//The void cast means I don't care about ignoring the return value, and it removes a compiler warning.
		(void)InternalUartGetFIFOCharacter( UARTA );
	}
	else
	{
		//UART B - Set up the hardware
		InitUARTBGPIO();						//set up the GPIO control registers for UARTA functionality

		//Do a state machine reset of the uart - does not change config bits but clears error status
		ScibRegs.SCICTL1.bit.SWRESET	= 0;	//start the reset
		ScibRegs.SCICTL1.bit.SWRESET	= 1;	//end the reset

		//Set up the character info
		ScibRegs.SCICCR.all				= 7;	//1 stop bit, no parity, 8 character bits, idle-line protocol, no loopback, async mode
		ScibRegs.SCIPRI.bit.FREE		= 1;	//let it run during emulator breaks

		SetBaudUARTB(BaudRate);					//set the baud rate the user requested

		ScibRegs.SCICTL1.bit.TXENA		= 1;	//enable TX
		ScibRegs.SCICTL1.bit.RXENA		= 1;	//enable RX

		//Transmit and receive FIFO features are both enabled by the transmit register
		ScibRegs.SCIFFTX.bit.SCIFFENA	= 1;

		//The receive FIFO interrupt trigger is set up with an impossible bit pattern at reset, higher than the size of the FIFO.
		//Make it be 1, so that any number of characters will trigger an interrupt.
		//This is necessary because there is no "stale receive data" interrupt.
		//If you set it to trigger at 8 chars, and only 7 arrive, you will never know.
		ScibRegs.SCIFFRX.bit.RXFFIL		= 1;

		//Enable receive interrupts. Transmit interrupts are not enabled till we have something to send.
		InternalUartTXInterruptControl( WhichUart, FALSE );

		//Clear out the transmit and receive FIFOs, assert and remove reset.
		//If you do this before setting up interrupt control, it doesn't work!
		//Do it here or you get 2 trash chars in the receiver.
		ScibRegs.SCIFFRX.bit.RXFIFORESET	= 0;
		ScibRegs.SCIFFRX.bit.RXFIFORESET	= 1;
		ScibRegs.SCIFFTX.bit.TXFIFOXRESET	= 0;
		ScibRegs.SCIFFTX.bit.TXFIFOXRESET	= 1;

		//If the input is tied low, there will be 2 bad characters in the FIFO (FE and then BRK).
		//The read will clear them, but there will be 2 more in 2 character times.
		//If nothing is waiting, this will return NO_CHAR.
		//The void cast means I don't care about ignoring the return value, and it removes a compiler warning.
		(void)InternalUartGetFIFOCharacter( UARTB );
	}
}

//! Clear out the serial number array.
//! @param Pointer Poiner to an 8 entry array to hold the serial number info from a Dallas device.
void ClearSerialNumberArray( u16bit_t *Pointer )
{
	u8bit_t i;
	for( i=0; i<8; i++ )
	{
		*Pointer++ = 0;
	}
}

//! General firmware setup for comm.
void InitCommFirmware( void )
{
	u8bit_t		HaveValidAddress; //did I find an address I can use?
	u16bit_t	i;
	u16bit_t	ProcessorType;
	u16bit_t	SerialNumberCRCValid;
	//u8bit_t	RequestHugePacket[] =		{90,78,129,0,1,16,228,90,83}; //used for debug to put this into the input queue to fake out receiving it
	//u8bit_t	RequestDownloadInfo[]=		{90,78,129,0,1,17,186,90,83};
	//u8bit_t	RequestDownloadHeader[]=	{90,78,129,0,1,18,88,90,83};
	//u8bit_t	RequestDownloadData[]=		{90,78,129,0,1,9,0,0,0,0,0,0,0,50,183,90,83};

	//init the comm queue system
	QueueInitAll();

	//get comm system ready to run
	ResetAllCommStateMachines();
	BuildReplyAddress();	//sets up a variable showing who I reply to

	//Init all the UARTs - this takes them over for comm, they won't work for terminal IO any more
	for( i=0; i<NUMBER_OF_UART_CHANNELS; i++ )
	{
		InitF2812UartForComm( i, DEFAULT_BAUD_RATE_COMM_UARTS );
	}

	//Init system state variables
	//set up system status structure, including setting the reset bit to say we just started up
	SystemInitStatus();

	//Clear the "stored parameter" value
	SavedNumber[0]=SavedNumber[1]=SavedNumber[2]=SavedNumber[3]=0;
	//Clear the "transaction number" value
	TransactionNumber[0]=TransactionNumber[1]=TransactionNumber[2]=TransactionNumber[3]=0;

	//See if the CRC8 code works (compiler switches might be wrong)
	if( VerifyCRC8Operation() == FALSE )
	{
		FatalError( FATAL_ERROR_CRC8_OPERATION, 0 );
	}

	//See if the CRC16 code works (compiler switches might be wrong)
	if( VerifyCRC16Operation() == FALSE )
	{
		FatalError( FATAL_ERROR_CRC16_OPERATION, 0 );
	}

	//See if the queue code works
	if( QueueTestQueueCode() == FALSE )
	{
		FatalError( FATAL_ERROR_QUEUE_OPERATION, 0 );
	}

	HaveValidAddress = FALSE;
	//Find out what processor this code is running on, so we know what the board has on it.
	ProcessorType = DetermineCPUType();
	if( ProcessorType == 2812 )
	{
		MyAddress = MY_ADDRESS;
		if( IsStarboardJumperInstalled() == TRUE)
		{
			//We're a starboard installation, change our address to reflect that.
			MyAddress += STARBOARD_ADDRESS_OFFSET;
		}
		HaveValidAddress	= TRUE;

		//ProD boards have a serial number inside the temperature sensor and code to get it.
		//Read the board serial number which is inside the temperature sensor.
		SerialNumberCRCValid = resetPresent( TEMPSENSOR );
		if( SerialNumberCRCValid ==  TRUE )
		{
			SerialNumberCRCValid = readROM(&TempSensorROMInfo[0], TEMPSENSOR);
		}
		else
		{
			//If the serial number wasn't there, or the CRC failed, just return zeroes
			ClearSerialNumberArray( &TempSensorROMInfo[0] );
		}

		//This should tie in with PrintSystemInfoString() results
		BoardCapability.ProcessorType	= ProcessorType;

		//This call gets the system info that the app set up: firmware type, board hw type, board rev
		ExchangeGetSystemInfo( &BoardCapability );
	}
	else
	{
		//$$$ if we're not running on a F2812, should we call a fatal error?
	}

	if( HaveValidAddress == FALSE )
	{
		FatalError( FATAL_ERROR_NO_ADDRESS, 0 );
	}

	//set up the PIE and the CPU masks to allow UART interrupts, but do not enable interrupts at the CPU.
	//This call disables interrupts
	SetUpUARTInterrupts();

	LEDControl(D28, LED_GREEN);	//comm software startup, turn the power LED on, to green

	//Enable interrupts on the way out (they were enabled on the way in)
	EINT;
}

//! This code is derived from the Dallas Semiconductor example code to find CRC of their one-wire parts.
//! It allows strings longer than 256 bytes because CRC covers more than just payload.
u8bit_t CalculateCRC8Comm( u8bit *Data, u16bit_t Length )
{
   u8bit_t	Byte, Bit, ByteCount, CRC;

   CRC = 0xff;

	// for all bytes of the message
   for (ByteCount = 0; ByteCount < Length; ByteCount++)
   {
		Byte = *(Data + ByteCount);	// get data byte
		for (Bit=0; Bit<8; Bit++)
		{
			if (!((CRC ^ Byte) & 1))
			{
				CRC >>= 1;
			}
			else
			{
				CRC = ((CRC ^ 0x18) >> 1) | 0x80;
			}
			Byte >>= 1;
		}
   }
   return(CRC);
}

//! Calculate CRC16 on a data stream.
//! Published in Dr. Dobbs 6/17/2007.
//! Tested against CCITT Recommendation X.25 (1984) Appendix I example. The crc of 0x03 0x3F is 0x5BEC.
u16bit_t CalculateCRC16CCITT(u8bit * data_p, u16bit_t length)
{
	unsigned char i;
	unsigned int data;
	unsigned int crc;

	crc = 0xffff;

	if (length == 0)
	{
		return( ~crc );
	}

	do
	{
		for( i = 0, data = (unsigned int)0xff & *data_p++; i < 8; i++, data >>= 1)
		{
			if ((crc & 0x0001) ^ (data & 0x0001))
			{
				crc = (crc >> 1) ^ 0x8408;
			}
			else
			{
				crc >>= 1;
			}
		}
	} while (--length);

	crc		= ~crc;
	data	= crc;
	crc		= (crc << 8) | (data >> 8 & 0xFF);

	return (crc);
}

//! Make sure the CRC8 code works as expected.
//! @retval TRUE CRC8 works
//! @retval FALSE CRC8 did not work as expected.
u8bit_t VerifyCRC8Operation( void )
{
	u8bit samples[]={0,1,2,0x80,0x81};
	//u8bit_t Results[ (sizeof( samples))+1 ]; //allow one more for crc of series - doesn't work if they are 32 bits, each counts as 2
	u8bit_t Results[ 6 ]; //allow one more for crc of series
	u8bit_t ExpectedCRCvalues[]={0x35, 0x6b, 0x89, 0xb9, 0xe7,0xf4 };
	u8bit_t i;
	u8bit_t Retcode;

	Retcode = TRUE;

	//Build examples of single CRC values for the spec
	for( i=0; i<5; i++ )
	{
		Results[i] = CalculateCRC8Comm( &samples[i], (u16bit_t)1);
	}

	//Now CRC the series of values
	Results[ 5 ] = CalculateCRC8Comm( samples, (u16bit_t)5);

	//Now check all the results
	for( i=0; i<6; i++ )
	{
		if( Results[i] != ExpectedCRCvalues[i] )
		{
			Retcode = FALSE;
		}
	}
	return( Retcode );
}

//! Make sure the CRC16 code works as expected. It was a horrible process finding examples
//! and code that could match the examples.
//! @retval TRUE CRC16 works
//! @retval FALSE CRC16 did not work as expected.
u8bit_t VerifyCRC16Operation( void )
{
	u8bit_t		i;
	u8bit_t		SampleSize;
	u8bit_t		Retcode;
	u8bit	samples1[]={3,0x3F}; //CCITT Recommendation X.25 (1984) Appendix I example
	u8bit	samples2[]={'T',0xd9,0xe4};
	u16bit_t	Results1[ 3 ]; //allow one more for crc of series
	u16bit_t	Results2[ 4 ]; //allow one more for crc of series
	u16bit_t	ExpectedCRCvalues1[]={0xE3C2,0x0C39,0x5BEC };
	u16bit_t	ExpectedCRCvalues2[]={0xD9E4, 0x34BB, 0x5251, 0x470F};

	Retcode = TRUE;
	//Test the first set of known values
	SampleSize = 2;
	for( i=0; i<SampleSize; i++ )
	{
		Results1[i] = CalculateCRC16CCITT( &samples1[i], (u16bit_t)1);
	}
	//Now CRC the series of values
	Results1[ 2 ] = CalculateCRC16CCITT( samples1, (u16bit_t)2 );
	//Now check the results
	for( i=0; i<3; i++ )
	{
		if( Results1[i] != ExpectedCRCvalues1[i] )
		{
			Retcode = FALSE;
		}
	}

	//A test of different values
	SampleSize = 3;
	for( i=0; i<SampleSize; i++ )
	{
		Results2[i] = CalculateCRC16CCITT( &samples2[i], (u16bit_t)1);
	}
	//Now CRC the series of values
	Results2[ 3 ] = CalculateCRC16CCITT( samples2, (u16bit_t)3);
	//Now check the results
	for( i=0; i<4; i++ )
	{
		if( Results2[i] != ExpectedCRCvalues2[i] )
		{
			Retcode = FALSE;
		}
	}
	return( Retcode );
}

//! Verify the CRC of the packet, whatever type it is
//! @param Which Specifies which comm port this applies to.
u8bit_t IsPacketCRCGood( Uint16 Which )
{
	u8bit_t Retcode;

	if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
	//if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
	{
		//Check CRC on extended packet
		Retcode = IsExtendedPacketCRCgood( Which );
	}
	else
	{
		//Check CRC on normal packet
		Retcode = IsNormalPacketCRCgood( Which );
	}

	return( Retcode );
}

//! Analyze a packet that arrived.
//! Only call this funtion if PacketStatusStruct.State = ProtocolDone.
//! Checks the CRC and reports whether it is good.
//! Note that the packet must be checked AFTER unmasking of PSC is done.
//! @param Which Specifies which comm port this applies to.
u8bit_t IsNormalPacketCRCgood( Uint16 Which )
{
	u8bit_t Retcode;
	u8bit_t CRCcalculated;
	u8bit_t CRCinPacket;
	u8bit *CRCStartAddress;
	u8bit_t CRCLength;

	CRCStartAddress	= &PacketStatusStruct[ Which ].PacketContents[ PACKET_DESTINATION_ADDRESS_OFFSET ];
	CRCLength		= PacketStatusStruct[ Which ].CharsReceived - 5; //skip PSC N at start and CRC PSC S at end.
	CRCcalculated	= CalculateCRC8Comm( CRCStartAddress, CRCLength );

	//the protocol handler stored the packet CRC in the structure for you
	CRCinPacket = (u8bit_t) PacketStatusStruct[ Which ].CRC;

	//so do they match?
	if( CRCcalculated == CRCinPacket )
	{
		Retcode = TRUE;
	}
	else
	{
		Retcode = FALSE;
	}
	return( Retcode );
}

//! Analyze a packet that arrived.
//! Only call this funtion if PacketStatusStruct.State = ProtocolDone.
//! Checks the CRC and reports whether it is good.
//! @param Which Specifies which comm port this applies to.
u8bit_t IsExtendedPacketCRCgood( Uint16 Which )
{
	u8bit_t		Retcode;
	u8bit		*CRCStartAddress;
	u16bit_t	CRCLength;
	u16bit_t	CRCcalculated;
	u16bit_t	CRC16inPacket;

	//on an extended packet, the dest addr is bigger, but it still starts in the same place
	CRCStartAddress	= &PacketStatusStruct[ Which ].PacketContents[ PACKET_DESTINATION_ADDRESS_OFFSET ];
	CRCLength		= PacketStatusStruct[ Which ].CharsReceived - 6; //skip PSC E at start and CRC1 CRC2 PSC S at end.
	CRCcalculated	= CalculateCRC16CCITT( CRCStartAddress, CRCLength );

	//the protocol handler stored the packet CRC in the structure for you
	CRC16inPacket = PacketStatusStruct[ Which ].CRC;

	//so do they match?
	if( CRCcalculated == CRC16inPacket )
	{
		Retcode = TRUE;
	}
	else
	{
		Retcode = FALSE;
	}
	return( Retcode );
}

//! Returns True if this packet is addressed to me.
//! Does not implement serial number addressing.
//! @param Address byte from packet
//! @param Which Specifies which comm port this applies to
//! @retval TRUE if my address or broadcast address
u8bit_t IsNormalPacketAddressedToMe( Uint16 Which, u8bit_t Address )
{
	u8bit_t Retcode;

	Retcode = FALSE;

	//is it addressed to me?
	//Each comm port has its own address, which is offset by its UART number.
	//So if the base is 6, the board responds to 6 and 7.
	//Remember that the address also is offset by 0x40 if we are a "starboard" control.
	if( Address == (MyAddress + Which) )
	{
		Retcode = TRUE;
	}

	//is it a valid broadcast address?
	if( Address == BROADCAST_ADDRESS )
	{
		//Replies to broadcast messages ARE allowed on single-destination wiring, but not on multidrop networks.
		//PacketStatusStruct[ Which ].DoNotReply = TRUE;	//don't allow a reply to broadcast
		Retcode = TRUE;
	}

	return( Retcode );
}

//! Returns True if this packet is addressed to me. Does not check for serial number addressing.
//! Does not implement serial number addressing.
//! @param Address byte from packet
//! @param Which Specifies which comm port this applies to.
//! @retval TRUE if my address or broadcast address
u8bit_t IsExtendedPacketAddressedToMe( Uint16 Which, u8bit_t Address )
{
	u8bit_t Retcode;

	Retcode = FALSE;

	//is it addressed to me?
	if( Address == MyAddress )
	{
		Retcode = TRUE;
	}

	//is it a valid broadcast address?
	if( Address == BROADCAST_ADDRESS )
	{
		//Replies to broadcast messages ARE allowed on single-destination wiring, but not on multidrop networks.
		//PacketStatusStruct[ Which ].DoNotReply = TRUE;	//don't allow a reply to broadcast
		Retcode = TRUE;
	}

	return( Retcode );
}

//! Set up to receive a packet. Set the protocol structure to be defaults and init state.
//! @param Which Specifies which comm port this applies to.
void InitProtocolStructure( Uint16 Which )
{
	u16bit_t i;

	PacketStatusStruct[ Which ].CharsReceived		= 0;
	PacketStatusStruct[ Which ].Finished			= FALSE;
	PacketStatusStruct[ Which ].PacketStatus		= FALSE;
	PacketStatusStruct[ Which ].DoNotReply 			= FALSE;
	PacketStatusStruct[ Which ].PacketIsExtended	= FALSE;
	PacketStatusStruct[ Which ].DestinationAddress	= 0;
	PacketStatusStruct[ Which ].SourceAddress		= 0;
	PacketStatusStruct[ Which ].Length				= 0;
	PacketStatusStruct[ Which ].BodyStartOffset		= 0;
	PacketStatusStruct[ Which ].CRC					= 0;
	PacketStatusStruct[ Which ].CommandCode			= CommandInvalidCommand;
	PacketStatusStruct[ Which ].PacketProcessStatus	= PacketProcessStart;
	PacketStatusStruct[ Which ].PacketErrorCause	= PacketErrNoErr;
	PacketStatusStruct[ Which ].State				= ProtocolInitialize;

	//empty out the packet data
	for( i = 0; i < MAX_INCOMING_PACKET_LENGTH; i++ )
	{
		PacketStatusStruct[ Which ].PacketContents[ i ] = NULL;
	}
}

//! Reset the comm receive state machine.
//! @param Which Specifies which comm port this applies to.
void ResetCommStateMachine( Uint16 Which )
{
	//set state to first state
	PacketStatusStruct[ Which ].State = ProtocolInitialize;
	//the state machine will set up everything else when called in this state
	HandleProtocolChar( Which );
}

//! Reset all the comm receive state machines.
void ResetAllCommStateMachines( void )
{
	Uint16 i;

	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		ResetCommStateMachine( i );
	}
}

//! Handle a character that is part of a packet.
//! @param Which Specifies which comm port this applies to.
ProtocolStateType HandleProtocolChar( Uint16 Which )
{
	ProtocolStateType ProtocolState;
	u8bit_t ThisCharacter;
	u8bit_t CheckCRC;
	//for debugging
	static u8bit_t FoundMyAddress = FALSE;

	//get the current state of the packet
	ProtocolState = (ProtocolStateType) PacketStatusStruct[ Which ].State;

	//decide what to do
	switch( ProtocolState )
	{
		//restart processing
		case ProtocolInitialize:
			InitProtocolStructure( Which );
			ProtocolState = ProtocolFindStartPSC;
			QueueInitRxQueue( Which );
			break;

		//look for start char
		case ProtocolFindStartPSC:
			//if no char is waiting, just return
			//if( IsQueueEmpty( RS485RxQueue ) == FALSE )
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//is this the char that I am looking for?
				//ThisCharacter = DeQueue( RS485RxQueue );
				ThisCharacter = QueuePullRxChar( Which );
				if( ThisCharacter == PSC )
				{
					//store the char, bump the counter
					PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
					//move to next state
					ProtocolState = ProtocolFindProtocolStart;
				}
			}
			else
			{
				//Otherwise, just keep looking for the PSC, don't change state
			}
			break;

		//Look for next character of protocol start sequence
		case ProtocolFindProtocolStart:
			//if no char is waiting, just return
			//if( IsQueueEmpty( RS485RxQueue ) == FALSE )
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				//ThisCharacter = DeQueue( RS485RxQueue );
				ThisCharacter = QueuePullRxChar( Which );
				//If it is the second character of a protocol start, good.
				if( ThisCharacter == NORMAL_PACKET )
				{
					//store the char, bump the counter
					PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
					//move to next state
					ProtocolState = ProtocolStoreDestinationAddress;
				}
				else if( ThisCharacter == EXTENDED_PACKET)
				{
					//store the char, bump the counter
					PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
					//It is an extended packet, flag it that way
					PacketStatusStruct[ Which ].PacketIsExtended = TRUE;
					ProtocolState = ProtocolStoreDestinationAddress;
				}
				else
				{
					//We saw a PSC but the next character was not a valid start char.
					//Start over again looking for PSC
					ProtocolState = ProtocolFailed;
				}
			}
			break;

		//get destination address - do not evaluate yet
		case ProtocolStoreDestinationAddress:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;

				//debug code to log addresses being polled
				#if LOG_ADDRESSES_FOUND
					if( (ThisCharacter == MyAddress) && (PacketStatusStruct[ Which ].PacketIsExtended == FALSE) )
					{
						FoundMyAddress = TRUE;
					}
				#endif

				if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
				{
					//It's an extended packet, need to continue to store second byte of destination address.
					//Get the upper byte in position
					PacketStatusStruct[ Which ].DestinationAddress = (u16bit_t)(ThisCharacter<<8);
					ProtocolState = ProtocolStoreDestinationAddressExtended;
				}
				else
				{
					//Normal packet, move to next state
					PacketStatusStruct[ Which ].DestinationAddress = ThisCharacter;
					ProtocolState = ProtocolStoreSourceAddress;
				}
			}
			break;

		//get second part of destination address for extended packets - do not evaluate yet
		case ProtocolStoreDestinationAddressExtended:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;

				//Add in the rest of the destination address for later reference
				PacketStatusStruct[ Which ].DestinationAddress += (u16bit_t)(ThisCharacter);
				//move to next state
				ProtocolState = ProtocolStoreSourceAddress;
			}
			break;

		//get source address
		case ProtocolStoreSourceAddress:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;

				if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
				{
					//It's an extended packet, need to continue to get second byte of source address.
					//Get the upper byte in position
					PacketStatusStruct[ Which ].SourceAddress = (u16bit_t)(ThisCharacter<<8);
					//It's an extended packet, need to store second byte of source address
					ProtocolState = ProtocolStoreSourceAddressExtended;
				}
				else
				{
					//Store the source address for later use
					PacketStatusStruct[ Which ].SourceAddress = ThisCharacter;
					//move to next state
					ProtocolState = ProtocolStoreLength;
				}
			}
			break;

		//get second part of source address for extended packets
		case ProtocolStoreSourceAddressExtended:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
				//Add in the rest of the source address for later reference
				PacketStatusStruct[ Which ].SourceAddress += (u16bit_t)(ThisCharacter);

				//move to next state
				ProtocolState = ProtocolStoreLength;
			}
			break;

		//get packet length. Must be nonzero. One means no body in packet.
		//Later, the length will decide whether we try to store a packet body.
		case ProtocolStoreLength:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;

				//If it's a zero and this is a normal packet, this is an error
				if( ThisCharacter == 0 && (PacketStatusStruct[ Which ].PacketIsExtended == FALSE) )
				{
					//length parameter is invalid.
					PacketStatusStruct[ Which ].PacketErrorCause = PacketErrLengthZero;
					//end the processing of this packet
					ProtocolState = ProtocolFailed;
				}
				//If the length is the value of the PSC, it is an error whether normal or extended packet
				else if( ThisCharacter == PSC )
				{
					//length parameter is invalid.
					PacketStatusStruct[ Which ].PacketErrorCause = PacketErrLengthInvalid;
					//end the processing of this packet
					ProtocolState = ProtocolFailed;
				}
				else
				{
					if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
					{
						//It's an extended packet, need to continue to get second byte of length address.
						//Get the upper byte in position
						PacketStatusStruct[ Which ].Length = (u16bit_t)(ThisCharacter<<8);
						ProtocolState = ProtocolStoreLengthExtended;
					}
					else
					{
						//Store for later reference
						PacketStatusStruct[ Which ].Length = ThisCharacter;
						//move to next state
						ProtocolState = ProtcolStoreCommandType;
					}
				}
			}
			break;

		//get packet length, second byte. Total value must be nonzero. One means no body in packet.
		//Later, the length will decide whether we try to store a packet body.
		case ProtocolStoreLengthExtended:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;

				//If this character is a zero and first byte of length is zero, this is an error
				if( (ThisCharacter == 0) && (PacketStatusStruct[ Which ].Length == 0) )
				{
					//length parameter is invalid.
					PacketStatusStruct[ Which ].PacketErrorCause = PacketErrLengthZero;
					//end the processing of this packet
					ProtocolState = ProtocolFailed;
				}
				//If the length is the value of the PSC, it is an error whether normal or extended packet
				else if( ThisCharacter == PSC )
				{
					//length parameter is invalid.
					PacketStatusStruct[ Which ].PacketErrorCause = PacketErrLengthInvalid;
					//end the processing of this packet
					ProtocolState = ProtocolFailed;
				}
				else
				{
					//Add in the rest of the source address for later reference
					PacketStatusStruct[ Which ].Length += (u16bit_t)(ThisCharacter);
					//move to next state
					ProtocolState = ProtcolStoreCommandType;
				}
			}
			break;

		//get command code
		case ProtcolStoreCommandType:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
				//Save the command code for easy reference later
				PacketStatusStruct[ Which ].CommandCode = (PacketCommandCodeType) ThisCharacter;
				//Where do we go next? Depends on whether the packet has a body section.
				//If the length is 1, there is no more body to the packet
				if( PacketStatusStruct[ Which ].Length == 1 )
				{
					//Since there is no body to the packet, make it explicit
					PacketStatusStruct[ Which ].BodyStartOffset = 0;
					ProtocolState = ProtocolStoreCRC;
				}
				//if the length is safe, go to storing the body
				else if( PacketStatusStruct[ Which ].Length <= MAX_VALID_LENGTH_VALUE )
				{
					//Store the index of the start of body to make it easier later
					PacketStatusStruct[ Which ].BodyStartOffset = PacketStatusStruct[ Which ].CharsReceived;
					ProtocolState = ProtocolStoreBody;
				}
				else
				{
					//length parameter is too big. Don't let it overwrite memory.
					PacketStatusStruct[ Which ].PacketErrorCause = PacketErrLengthLarge;
					//end the processing of this packet
					ProtocolState = ProtocolFailed;
				}
			}
			break;

		//store bytes of body of packet
		case ProtocolStoreBody:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
				//If this is a PSC value, check for PSC masking before we check character count
				if( ThisCharacter == PSC )
				{
					ProtocolState = ProtocolLookForPSCBodyMask;
				}
				//Have we received enough of the body? If so, go to next state
				else if( PacketStatusStruct[ Which ].CharsReceived > (PacketStatusStruct[ Which ].BodyStartOffset + PacketStatusStruct[ Which ].Length - 2) )
				{
					//move to next state
					ProtocolState = ProtocolStoreCRC;
				}
				else
				{
					//In the normal case, we stay in this state
				}
			}
			break;

		//handle the NULL that follows a PSC found in the body
		case ProtocolLookForPSCBodyMask:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//If this isn't a null, the packet is bad
				if( ThisCharacter != PSC_MASK_CHARACTER )
				{
					ProtocolState = ProtocolFailed;
				}
				//It was masked correctly.
				//We do not store the masking character.
				//If this is the last byte of the body, move on to the CRC
				else if( PacketStatusStruct[ Which ].CharsReceived > (PacketStatusStruct[ Which ].BodyStartOffset + PacketStatusStruct[ Which ].Length - 2) )
				{
					//move to next state
					ProtocolState = ProtocolStoreCRC;
				}
				else
				{
					//go back to previous state, continue storing the body
					ProtocolState = ProtocolStoreBody;
				}
			}
			break;

		//store CRC from packet.
		//Do not check CRC here, rejecting packet before it is done complicates things.
		case ProtocolStoreCRC:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;

				//Decide how to store this CRC byte.
				//Whether this character is a PSC or not, it's at least 1 byte of the CRC, so store it
				if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
				{
					//It's an extended packet, need to continue to store second byte of CRC.
					//Get the upper byte in position
					PacketStatusStruct[ Which ].CRC = (u16bit_t)(ThisCharacter<<8);
				}
				else
				{
					//Normal packet, just store the CRC
					PacketStatusStruct[ Which ].CRC = ThisCharacter;
				}

				//Now decide what the next state is
				if( ThisCharacter == PSC )
				{
					//If this a PSC, whether normal or extended packet, we have to handle masking.
					//Once that is done, we can decide where to go next.
					ProtocolState = ProtocolLookForPSCCRCMask;
				}
				else
				{
					//This CRC byte is not a PSC. Decide where to go next
					if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
					{
						//The packet is extended, so handle the next CRC byte
						ProtocolState = ProtocolStoreCRCExtended;
					}
					else
					{
						//Normal packet, look for end markers
						ProtocolState = ProtocolFindEndPSC;
					}
					//It's a normal packet, move to next state
				}
			}
			break;

		//handle the NULL that follows a PSC found in the CRC field
		case ProtocolLookForPSCCRCMask:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//If this isn't a null, the packet is bad
				if( ThisCharacter != PSC_MASK_CHARACTER )
				{
					ProtocolState = ProtocolFailed;
				}
				//It was masked correctly.
				//We do not store the masking character.
				else
				{
					//The first byte of CRC happened to be a PSC.
					//It was properly masked in the protocol.
					//Now decide where to continue.
					if( PacketStatusStruct[ Which ].PacketIsExtended == TRUE )
					{
						//The packet is extended, so handle the next CRC byte
						ProtocolState = ProtocolStoreCRCExtended;
					}
					else
					{
						//Normal packet, look for end markers
						ProtocolState = ProtocolFindEndPSC;
					}
				}
			}
			break;

		//store second byte of CRC from extended packet.
		//Do not check CRC here, rejecting packet before it is done complicates things.
		case ProtocolStoreCRCExtended:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;

				//It's an extended packet, need to continue to store second byte of CRC.
				//Add in the lower byte to the CRC value
				PacketStatusStruct[ Which ].CRC += (u16bit_t)(ThisCharacter);

				//Now decide what the next state is
				if( ThisCharacter == PSC )
				{
					//If this a PSC, we have to handle masking.
					ProtocolState = ProtocolLookForPSCCRCMaskExtended;
				}
				else
				{
					//Look for end markers
					ProtocolState = ProtocolFindEndPSC;
				}
			}
			break;

		//handle the NULL that follows a PSC found in the CRC field
		case ProtocolLookForPSCCRCMaskExtended:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//If this isn't a null, the packet is bad
				if( ThisCharacter != PSC_MASK_CHARACTER )
				{
					ProtocolState = ProtocolFailed;
				}
				//It was masked correctly.
				//We do not store the masking character.
				else
				{
					ProtocolState = ProtocolFindEndPSC;
				}
			}
			break;


		//next char must be the trailing PSC
		case ProtocolFindEndPSC:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
				//are we done here?
				if( ThisCharacter == PSC )
				{
					ProtocolState = ProtocolFindEndFlag;
				}
				else
				{
					//There was a character, but it was not a final PSC
					PacketStatusStruct[ Which ].PacketErrorCause = PacketErrNoEndPSC;
					ProtocolState = ProtocolFailed;
				}
			}
			break;

		//next char must be the trailing end flag
		case ProtocolFindEndFlag:
			//if no char is waiting, just return
			if( QueueIsRxQueueEmpty( Which ) == FALSE )
			{
				//get the character that is waiting in the queue
				ThisCharacter = QueuePullRxChar( Which );
				//store the char, bump the counter
				PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].CharsReceived++ ] = ThisCharacter;
				//are we done here?
				if( ThisCharacter == PACKET_END_CHARACTER )
				{
					//Now that all chars have been received, check the CRC
					CheckCRC = IsPacketCRCGood( Which );
					if( CheckCRC == TRUE )
					{
						//move to next state
						ProtocolState = ProtocolDone;
					}
					else
					{
						//everything else was ok, but CRC was bad
						PacketStatusStruct[ Which ].PacketErrorCause = PacketErrCRCbad;
						ProtocolState = ProtocolFailed;
					}
				}
				else
				{
					//There was a character, but it was not packet end char
					PacketStatusStruct[ Which ].PacketErrorCause = PacketErrNoEndFlag;
					ProtocolState = ProtocolFailed;
				}
			}
			break;

		case ProtocolDone:
			//overall, the packet is done and is good
			PacketStatusStruct[ Which ].PacketStatus = TRUE;
			//tell user he can check the state now and stop calling us.
			PacketStatusStruct[ Which ].Finished = TRUE;
			break;

		case ProtocolFailed:
			//It can get to the Failed state for several reasons.
			//The PacketStatus field will still be FALSE so it will be seen as bad packet.
			//tell user he can check the state now and stop calling us.
			PacketStatusStruct[ Which ].Finished = TRUE;
			//whether we are done or failed, just stay in that state till user resets us
			break;

		//invalid state in case statement
		default:
			PacketStatusStruct[ Which ].PacketErrorCause = PacketErrBadState;
			ProtocolState = ProtocolFailed;
			//tell user he can check the state now and stop calling us.
			PacketStatusStruct[ Which ].Finished = TRUE;
			//whether we are done or failed, just stay in that state till user resets us
			break;
	}

	PacketStatusStruct[ Which ].State = ProtocolState;

	// if this packet is done, and was destined for me, allow breakpoint
	if( (FoundMyAddress == TRUE) && (PacketStatusStruct[ Which ].Finished == TRUE) )
	{
		FoundMyAddress = TRUE;	//$$$ place for breakpoint
	}

	return( ProtocolState );
}

//! Check to see if this is an incoming packet we should process.
//! Verify that it has a good command code and is addressed to me.
//! Don't call this until the packet is in "Finished" state and status is TRUE meaning good structure.
//! @param Which Specifies which comm port this applies to.
u8bit_t CheckIncomingPacketValidity( Uint16 Which )
{
	PacketCommandCodeType CommandCode;
	u8bit_t		AddressFromPacket;
	u8bit_t		Retcode;
	u8bit_t		TempPointer;
	u16bit_t	Parameter;

	Retcode				= FALSE;	//assume it's not going to be a valid packet
	CommandCode			= (PacketCommandCodeType) PacketStatusStruct[ Which ].CommandCode;
	AddressFromPacket	= PacketStatusStruct[ Which ].DestinationAddress;

	//TODO - does not handle extended packets, but for now we don't receive big packets (firmware downloads), we send them. $$$

	//is it addressed to me?
	if( IsNormalPacketAddressedToMe( Which, AddressFromPacket ) == TRUE )
	{
		//Yes it is addressed to me. Is the command code valid?
		if( (CommandCode < CommandMaxNormalCommand) && (CommandCode != 0) )
		{
			//This is an ordinary command - check the length
			if( IncomingPacketCommandLength[ CommandCode ] == PacketStatusStruct[ Which ].Length )
			{
				//all tests pass!
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessValid;
				Retcode = TRUE;
			}
			else
			{
				//It's a valid command code, but the length is wrong.
				//Well, maybe it's not wrong. The commands that set and read parameters have a variable length.
				//At this point we're checking incoming packets, the set command to us will have a variable length, but not the read.
				//The read packet will have a variable length when we send the reply, but not at this point in the code.
				if( CommandCode == CommandSetParameter )
				{
					//This command has a special length table that depends on the parameter being touched.
					//Get the parameter code, validate it, and use it to index the special table
					//Get a pointer to the parameter which is 1 byte past the command
					TempPointer =	PacketStatusStruct[ Which ].BodyStartOffset;
					//Use that pointer to get the parameter code
					Parameter = 	PacketStatusStruct[ Which ].PacketContents[ TempPointer ];
					//Does the parameter number look valid?
					if( (Parameter != 0) && (Parameter < ParameterMaxValue) )
					{
						//It's a parameter-type command, and the parameter number looks good.
						//Now check the packet length.
						//I add 1 to the length in the table to include the command code. The table is the parameter length without the command code.
						if( (IncomingPacketParameterCommandLength[ Parameter ] + 2) == PacketStatusStruct[ Which ].Length )
						{
							//all tests pass!
							PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessValid;
							Retcode = TRUE;
						}
						else
						{
							//Nope, the length is wrong for this parameter
							PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessWrongLength;
						}
					}
					else
					{
						//Nope, the parameter code is invalid so it's a mistake
						PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessBadParamCode;
					}
				}
				else
				{
					//Nope, the length is wrong and it's a fixed-length command so it's a mistake
					PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessWrongLength;
				}
			}
		}
		else
		{
			//This command is larger than the normal range. Is it a test mode command?
			if( (CommandCode >= CommandTestModeEnter) && (CommandCode < CommandMaxTestModeValue) )
			{
				if( IncomingPacketTestModeCommandLength[ CommandCode-CommandTestModeEnter ] == PacketStatusStruct[ Which ].Length )
				{
					//all tests pass!
					PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessValid;
					Retcode = TRUE;
				}
				else
				{
					//It's a valid command code, but the length is wrong
					PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessWrongLength;
				}
			}
			else
			{
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessBadCommand;	//invalid command code
			}
		}
	}
	else
	{
		//It is not addressed to me, ignore it
		PacketStatusStruct[ Which ].PacketProcessStatus	= PacketProcessNotMe;
	}
	return( Retcode );
}

//! Do what the received comm packet requests.
//! Assumes user has decided the packet is good and worth processing.
//! @param Which Specifies which comm port this applies to.
void ProcessPacket( Uint16 Which )
{
	u8bit_t					i;
	PacketCommandCodeType	CommandCode;
	#if PROCESS_PACKET_DEBUG
	u8bit_t	LogThisCommand = FALSE;
	static u8bit_t SaveInfo = 0;
	static u8bit_t HoldCommandBuffer[10];
	#endif

	CommandCode = (PacketCommandCodeType) PacketStatusStruct[ Which ].CommandCode;
	//clear the scratch buffer the reply gets put into
	InitCommScratchBuffer( Which );

	//just a quick check that this packet is in the right state.
	//This code means the command code and length match, and it is addressed to me.
	if( PacketStatusStruct[ Which ].PacketProcessStatus == PacketProcessValid )
	{
		//see what the command is
		switch( CommandCode )
		{
			case CommandDeviceStatus:
				//build the information, mainline will send it back
				SystemUpdateStatus();
				BuildStatusPollReply( Which );
				NotifyPollReceived( Which );	//let dispense know a poll came in, part of state machine
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let user know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//report the firmware and bootloader (if any) rev to master.
			case CommandFirmwareTypeAndRev:
				LEDControl( D28, LED_RED ); //debug
				//make the reply packet
				BuildFirmwareRevReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				LEDControl( D28, LED_OFF ); //debug
				break;

			//report the hardware class and rev to master.
			case CommandHardwareClassAndRev:
				//make the reply packet
				BuildHardwareRevReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//store a number for comm testing
			case CommandStoreNumber:
				for( i = 0; i <4; i++ )
				{
					SavedNumber[ i ] = PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset + i];
				}
				//let user know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				break;

			//Return the stored number.
			case CommandReturnNumber:
				//make the reply packet
				BuildStoredNumberReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//Return the stored number in a huge packet for diagnostic purposes
			case CommandReturnNumberInHugePacket:
				//make the reply packet
				BuildStoredNumberReplyHuge( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//Set an operating parameter for the system (decimation, brake force, spring force, etc)
			case CommandSetParameter:
				//let user know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				//Handle storing the command
				ProcessSetParameterCommand( Which );
				break;

			//Read back an operating parameter for the system
			case CommandReadParameter:
				//make the reply packet
				BuildReadParameterReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//Return the device serial number.
			case CommandReturnDeviceSerialNumber:
				LEDControl( D28, LED_RED ); //serial number command start - debug
				//make the reply packet
				BuildSerialNumberReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				LEDControl( D28, LED_OFF ); //serial number command end - debug
				break;

			//Use the watchdog or flash password failure to reset the board
			case CommandHardwareReset:
				ForceHardReset();	//this routine does not return, board resets like powerup
				break;

			//Doesn't do much, but resets the software, clears test mode, sets the "reset" status bit
			case CommandSoftReset:
				//let user know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				SystemInitStatus(); //clears out status and sets the "reset" bit
				break;

			case CommandStartApplication:
				//This command transitions from the standby state to the running state
				//Let user know it was a good completion.
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				//tell the app to leave standby and start doing its real function
				ExchangeSetAppRunState( ProceedToRunState );
				break;

			case CommandStopApplication:
				//This command transitions from the run state to the stopped state, halting data collection
				//Let user know it was a good completion.
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				//tell the app to leave operation mode and prepare for downloading data
				ExchangeSetAppRunState( StopOperating );
				break;

			//Return the info about the data to be downloaded
			case CommandReturnDownloadInfo:
				//make the reply packet
				BuildDownloadInfoReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//Return the text header that describes settings used in the run
			case CommandReturnDownloadHeader:
				//make the reply packet
				BuildDownloadHeaderReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//Return a specified set of data from the last run
			case CommandReturnRangeOfData:
				//make the reply packet
				BuildDownloadRangeOfDataReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//tell the water twister to start a retraction
			case CommandStartRetract:
				//This command only applies to the water twister port, not the brake port.
				//The water twister and brake are on the same board. Handle that special case here.
				if (BoardCapability.FirmwareType == FIRMWARE_CLASS_WATERTWISTER_BRAKE )
				{
					//The uart channel, which is the LSB of the address, determines what function they are asking about
					if( (Which & 1) == 1 )
					{
						//The odd address is the brake
						//Do nothing, the brake doesn't respond to a retract command
					}
					else
					{
						//The even address is the water twister. Set the retraction flag for the app to see
						ExchangeSetRetractionFlag( TRUE );
					}
				}

				//let user know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				break;

			//Return readings of a temperature.
			case CommandReturnTemperature:
				//make the reply packet
				BuildReadTemperatureReply( Which );
				//let mainline know packet ready to send out
				ReplyMessageStruct[ Which ].TransmitState = PacketReplyReadyToSend;
				//let mainline know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				break;

			//Enter test mode, which for now just sets the test mode bit
			case CommandTestModeEnter:
				//let user know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				SystemStatus.BoardStatus.TestMode = TRUE;
				break;

			//Exit test mode
			case CommandTestModeExit:
				//let user know it was a good completion
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessDone;
				//this command does not have a reply
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				SystemStatus.BoardStatus.TestMode = FALSE;
				break;

			//this should never happen since the validity check should catch it
			default:
				PacketStatusStruct[ Which ].PacketProcessStatus = PacketProcessBadCommand;
				ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNoneNeeded;
				break;
		}
	}

	//debug code to see last several packet commands
	#if PROCESS_PACKET_DEBUG
	if( LogThisCommand == TRUE )
	{
		//if buffer not full
		if( SaveInfo < 10 )
		{
				HoldCommandBuffer[ SaveInfo++ ] = CommandCode; //$$$ store last several addresses or commands
		}
		else
		{
			SaveInfo = 0; //$$$ dummy to set breakpoint when buffer full
		}
	}
	#endif
}

//General utility
u8bit_t HighByte( u16bit_t thing )
{
	return ((thing >> 8) & 0xff );
}

u8bit_t LowByte( u16bit_t thing )
{
	return( thing & 0xff );
}

//! Pet the watchdog.
void NiceDoggy( void )
{
	//Pet the watchdog
}

//! Determine what processor type we are running on.
//! @retval 28335 The processor is an F28335.
//! @retval 2812 The processor is an F2812.
//! @retval 6713 The processor is a C6713.
Uint16 DetermineCPUType( void )
{
	Uint16 Retcode;

	//This is how the compiler lets us know what chip it thinks it is building for
	#if DSP28_28335
		Retcode = 28335;
	#endif

	#if DSP28_F2812
		Retcode = 2812;
	#endif

	#if CHIP_6713
		Retcode = 6713;
	#endif

	return( Retcode );
}

//! Hard reset the processor by enabling the watchdog then doing an illegal access to the watchdog control register.
void ForceHardReset( void )
{
	EALLOW;
	SysCtrlRegs.WDCR= 0x0028;	//enable the watchdog with a fast timeout
	SysCtrlRegs.WDCR= 0x0000;	//write an invalid check value which should reset immediately
    //You can put the EDIS here, but the processor will have already done a hard reset.
    EDIS;
}

//! Start transmission of queue data out an external UART.
//! The ISR will fill the uart's fifo with data.
void InternalUartStartTransmission( Uint16 WhichUart )
{
	//Enable the transmit-ready interrupt on that UART. The ISR will start moving data to the chip.
	InternalUartTXInterruptControl( WhichUart, TRUE );
}

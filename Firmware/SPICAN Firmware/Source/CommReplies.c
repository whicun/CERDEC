/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-12-29 14:42:01 -0500 (Fri, 29 Dec 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/CommReplies.c $ URL of repository
 *
 * $Rev:: 2591                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

/*! @file
 * Comm code for the ProD. Built from code for the slow side of the Dev2.
 *
 * This file contains the comm protocol handling code to do with replying to queries.
 * It was split off from the rest of the comm code because the comm file was getting huge.
 *
 */

//! Update the info in the flags to prepare for reporting back.
//! Get the motor status into the first feature status bit.
//! Motor enabled is no fault, motor disabled is fault.
void SystemUpdateStatus( void )
{
	Uint8 i;
	Uint8 StatusThisTime;
	Uint8 StatusMask;
	boolean	MotorStatus;

	//Before anything gets going, set the fault bit for feature 0 to be motor enable status
	MotorStatus = ExchangeGetMotorState();
	if( MotorStatus == TRUE )
	{
		//Motor is ready to go
		SystemStatus.FeatureStatus[ 0 ].Status = FeatureStatusGood;
	}
	else
	{
		//motor is not ready
		SystemStatus.FeatureStatus[ 0 ].Status = FeatureStatusFault;
	}

	//set up good status on the other features since not being used at present
	SystemStatus.FeatureStatus[ 1 ].Status = FeatureStatusGood;
	SystemStatus.FeatureStatus[ 2 ].Status = FeatureStatusGood;
	SystemStatus.FeatureStatus[ 3 ].Status = FeatureStatusGood;

	//Now continue on with generating status summary
	//Hope no error bits
	StatusThisTime = 0;
	//Set up mask for error bit
	StatusMask=1;
	//guess that nothing's going on
	SystemStatus.BoardStatus.Busy = FALSE;

	//Go through each feature checking to see if they are running, and if they are faulted
	for( i=0; i<FEATURES_PER_BOARD; i++ )
	{
		//if feature has a problem, keep track of it
		if( SystemStatus.FeatureStatus[i].Status == FeatureStatusFault )
		{
			SystemStatus.FeatureStatus[i].FeatureFault = TRUE;
			StatusThisTime |= StatusMask;
		}
		else
		{
			SystemStatus.FeatureStatus[i].FeatureFault = FALSE;
		}

		//move over to set the next bit
		StatusMask *=2;

		//is any feature doing something?
		if( SystemStatus.FeatureStatus[i].Status != FeatureStatusIdle )
		{
			SystemStatus.BoardStatus.Busy = TRUE;
		}
	}

	//Build the status word.
	//Lower 4 bits are feature fault bits
	//Then reset, busy, board fault, test mode
	if( SystemStatus.BoardStatus.Reset == TRUE )
	{
		StatusThisTime |= RESET_MASK;
		//clear the flag once it's been read
		SystemStatus.BoardStatus.Reset = FALSE;
	}

	if( SystemStatus.BoardStatus.Busy == TRUE )
	{
		StatusThisTime |= BUSY_MASK;
	}

	if( SystemStatus.BoardStatus.BoardFault == TRUE )
	{
		StatusThisTime |= BOARD_FAULT_MASK;
	}

	if( SystemStatus.BoardStatus.TestMode == TRUE )
	{
		StatusThisTime |= TEST_MODE_MASK;
	}

	//Store the status for the poll response we're preparing
	SystemStatus.BoardStatus.StatusSummary = StatusThisTime;
}

//! Init the reply structure, clear the buffer area, set the state variable to startup state.
//! Remember that the packet can be bigger than 255 locations after PSC masking.
//! @param Which Specifies which comm port this applies to.
void InitReplyStructure( Uint16 Which )
{
	u16bit_t i;

	if (SHOULD_I_UNNECESSARILY_CLEAR_BUFFERS == TRUE)
	{
		for( i = 0; i < MAX_OUTGOING_PACKET_LENGTH; i++ )
		{
			ReplyMessageStruct[ Which ].ReplyContents[ i ] = NULL;
		}
	}

	ReplyMessageStruct[ Which ].CharsToSend		= 0;
	ReplyMessageStruct[ Which ].TransmitState	= PacketReplyNotStarted;
}

//! A clean way to let other code set this flag.
//! @param Which Specifies which comm port this applies to.
void SetReplyBufferState( Uint16 Which, PacketReplyStateType state )
{
	ReplyMessageStruct[ Which ].TransmitState	= state;
}

//! A clean way to let other code check this flag.
//! @param Which Specifies which comm port this applies to.
PacketReplyStateType CheckReplyBufferState( Uint16 Which )
{
	return( (PacketReplyStateType) ReplyMessageStruct[ Which ].TransmitState );
}

//! Zero out the working buffer for comm.
//! @param Which Specifies which comm port this applies to.
void InitCommScratchBuffer( Uint16 Which )
{
	u16bit_t i;

	if (SHOULD_I_UNNECESSARILY_CLEAR_BUFFERS == TRUE)
	{
		for( i = 0; i < MAX_OUTGOING_PACKET_LENGTH; i++ )
		{
			CommScratchBuffer[ Which ][ i ] = NULL;
		}
	}
}

//! Build a reply address, only needs to be done once.
//! This builds the first byte of the reply.
//! It should come from the incoming packet if this is a reply.
void BuildReplyAddress( void )
{
	//For now, assume it is going back to the master CPU
	ReplyAddressNormalMode		= MASTER_CPU_ADDRESS;
	ReplyAddressExtendedMode	= MASTER_CPU_ADDRESS;
}

//! Build a message to send back to master CPU. Normal refers to length being under 255.
//! User supplies packet starting with length and body.
//! Rest of packet is built around that.
//! Note that this routine handles the offset in the address for which of the 2 comm ports is replying.
//! @param Which Specifies which comm port this applies to.
void BuildNormalReplyMessage( Uint16 Which, u8bit *ReplySource )
{
	u8bit_t		PacketLength;	//length the user passes to us, not including protocol overhead
	u8bit_t		i;				//loop counter
	u8bit_t		ThisCharacter;	//The current one we are putting in the packet
	u8bit_t		ThisPacketCRC;	//Hold the result of the CRC of packet we are building
	u16bit_t	PacketPointer;	//where am I in the packet I am building.
	u8bit		*CRCStartPointer;//where to start CRC
	u16bit_t	CRCLength;		//length to do CRC

	PacketLength	= *ReplySource++;	//first parameter is LEN field

	//keep protocol message clean, don't allow PSC value for length
	if( PacketLength == PSC )
	{
		PacketLength++;
	}

	//did user send us a dumb length?
	if( PacketLength == 0 )
	{
		PacketLength = 1;	//$$$ should we crash here?
	}

	//Build the packet header
	InitReplyStructure( Which );
	PacketPointer = 0;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = NORMAL_PACKET;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = ReplyAddressNormalMode;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = (MyAddress + Which);
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PacketLength;

	//Copy body of message WITHOUT adjusting for PSC characters in the body.
	//This is done so the CRC can be found on the packet as it will appear at the other end
	for( i = 0; i < PacketLength; i++ )
	{
		//Don't use ++ here because we will be doing this again.
		//Remember that a char is 16 bits - must limit to 8 bits
		ThisCharacter = (*(ReplySource + i)) & 0xff;
		ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer + i ] = ThisCharacter;
	}

	//Start CRC with the address destination field.
	//The length is body length plus 3. We include 2 addresses and the length.
	//No need to CRC two packet start chars, because if they are damaged, there is no packet.
	CRCStartPointer	= &ReplyMessageStruct[ Which ].ReplyContents[ PACKET_DESTINATION_ADDRESS_OFFSET ];
	CRCLength		= PacketLength + 3;
	ThisPacketCRC	= CalculateCRC8Comm( CRCStartPointer, CRCLength );

	//Copy body of message again, this time inserting PSC masking if needed.
	//Note that this process starts after the header, the pointer starts at the message body
	for( i = 0; i < PacketLength; i++ )
	{
		//Remember that a char is 16 bits - must limit to 8 bits
		ThisCharacter = (*(ReplySource + i)) & 0xff;
		ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = ThisCharacter;
		//Do we need to hide this character?
		if( ThisCharacter == PSC )
		{
			//yes, it's a PSC, mask it in the buffer
			ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC_MASK_CHARACTER;
		}
	}

	//now put in the CRC.
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = ThisPacketCRC;
	if( ThisPacketCRC == PSC )
	{
		//yes, it's a PSC, mask it in the buffer
		ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC_MASK_CHARACTER;
	}
	//the trailer
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PACKET_END_CHARACTER;
	//Set the actual transmit character count.
	ReplyMessageStruct[ Which ].CharsToSend = PacketPointer;

}

//! Build a message to send back to master CPU. Extended refers to large packet size.
//! User supplies packet starting with length and body.
//! Rest of packet is built around that.
//! @param Which Specifies which comm port this applies to.
void BuildExtendedReplyMessage( Uint16 Which, u8bit *ReplySource )
{
	u8bit_t		ThisCharacter;		//The current one we are putting in the packet
	u8bit		*CRCStartPointer;	//where to start CRC
	u16bit_t	i;					//loop counter
	u16bit_t	PacketLength;		//length the user passes to us, not including protocol overhead
	u16bit_t	PacketLengthHigh;	//length the user passes to us, not including protocol overhead
	u16bit_t	PacketLengthLow;	//length the user passes to us, not including protocol overhead
	u16bit_t	ThisPacketCRC;		//Hold the result of the CRC of packet we are building
	u16bit_t	PacketPointer;		//where am I in the packet I am building.
	u16bit_t	CRCLength;			//length to do CRC

	PacketLengthHigh	= (u16bit_t) *ReplySource++;	//first parameter is LEN high field
	PacketLengthLow		= (u16bit_t) *ReplySource++;	//then LEN low field

	//keep protocol message clean, don't allow PSC value for length
	if( PacketLengthHigh == PSC )
	{
		PacketLengthHigh++;
		//$$$ should I crash here? I just added 256 bytes to the message
	}

	//keep protocol message clean, don't allow PSC value for length
	if( PacketLengthLow == PSC )
	{
		PacketLengthLow++;
	}

	//Now find total packet length
	PacketLength = (PacketLengthHigh << 8) + PacketLengthLow;

	//did user send us a dumb length?
	if( PacketLength == 0 )
	{
		PacketLength = 1;	//$$$ should we crash here?
	}

	//Build the packet header
	InitReplyStructure( Which );
	PacketPointer = 0;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = EXTENDED_PACKET;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = 0; //long addressing not possible now, upper=0
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = ReplyAddressNormalMode;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = 0; //long addressing not possible now, upper=0
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = MyAddress;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = HighByte(	PacketLength );
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = LowByte(		PacketLength );

	//Copy body of message WITHOUT adjusting for PSC characters in the body.
	//This is done so the CRC can be found on the packet as it will appear at the other end
	for( i = 0; i < PacketLength; i++ )
	{
		//Don't use ++ here because we will be doing this again
		//Remember that a char is 16 bits - must limit to 8 bits
		ThisCharacter = (*(ReplySource + i)) & 0xff;
		ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer + i ] = ThisCharacter;
	}

	//Start CRC with the address destination field.
	//The length is body length plus 6. We include 2 addresses and the length.
	//No need to CRC two packet start chars, because if they are damaged, there is no packet.
	CRCStartPointer	= &ReplyMessageStruct[ Which ].ReplyContents[ EXTENDED_PACKET_DESTINATION_ADDRESS_OFFSET ];
	CRCLength		= PacketLength + 6;
	ThisPacketCRC	= CalculateCRC16CCITT( CRCStartPointer, CRCLength );

	//Copy body of message again, this time inserting PSC masking if needed
	for( i = 0; i < PacketLength; i++ )
	{
		//Remember that a char is 16 bits - must limit to 8 bits
		ThisCharacter = (*(ReplySource + i)) & 0xff;
		ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = ThisCharacter;
		//Do we need to hide this character?
		if( ThisCharacter == PSC )
		{
			//yes, it's a PSC, mask it in the buffer
			ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC_MASK_CHARACTER;
		}
	}

	//put in the CRC high byte
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = HighByte( ThisPacketCRC );
	if( HighByte( ThisPacketCRC ) == PSC )
	{
		//yes, it's a PSC, mask it in the buffer
		ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC_MASK_CHARACTER;
	}

	//put in the CRC low byte
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = LowByte( ThisPacketCRC );
	if( LowByte( ThisPacketCRC ) == PSC )
	{
		//yes, it's a PSC, mask it in the buffer
		ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC_MASK_CHARACTER;
	}

	//the trailer
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PSC;
	ReplyMessageStruct[ Which ].ReplyContents[ PacketPointer++ ] = PACKET_END_CHARACTER;
	//Set the actual transmit character count.
	ReplyMessageStruct[ Which ].CharsToSend = PacketPointer;
}

//! Reply to the firmware rev command.
//! The water twister and brake functions have the same firmware rev but different firmware type codes.
//! @param Which Specifies which comm port this applies to.
void BuildFirmwareRevReply( Uint16 Which )
{
	u8bit_t		i;
	u32bit_t	HoldFirmwareRev;
	u32bit_t	ThisByte;

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;

	//copy across the firmware rev value, high byte first
	HoldFirmwareRev	= THIS_SYSTEM_REVISION_NUMBER;
	for( i = 0; i < 4; i++ )
	{
		ThisByte = HoldFirmwareRev;
		ThisByte >>= (3-i) * 8;
		CommScratchBuffer[ Which ] [ i+2 ] = (u8bit) (ThisByte & 0xff);
	}

	//The water twister and brake are on the same board. Handle that special case here.
	if (BoardCapability.FirmwareType == FIRMWARE_CLASS_WATERTWISTER_BRAKE )
	{
		//The uart channel, which is the LSB of the address, determines what function they are asking about
		if( (Which & 1) == 1 )
		{
			//The odd address is the brake
			CommScratchBuffer[ Which ] [ 6 ] = HighByte(	FIRMWARE_CLASS_BRAKE );
			CommScratchBuffer[ Which ] [ 7 ] = LowByte(		FIRMWARE_CLASS_BRAKE );
		}
		else
		{
			//The even address is the water twister
			CommScratchBuffer[ Which ] [ 6 ] = HighByte(	FIRMWARE_CLASS_WATERTWISTER );
			CommScratchBuffer[ Which ] [ 7 ] = LowByte(		FIRMWARE_CLASS_WATERTWISTER );
		}
	}
	else
	{
		//This is not a watertwister / brake board, so just reply with the firmware type we are set up for
		CommScratchBuffer[ Which ] [ 6 ] = HighByte(	BoardCapability.FirmwareType );
		CommScratchBuffer[ Which ] [ 7 ] = LowByte(		BoardCapability.FirmwareType );
	}

	//now add the protocol stuff to the message
	BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Reply to the hardware class and rev command.
//! @param Which Specifies which comm port this applies to.
void BuildHardwareRevReply( Uint16 Which )
{
	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];

	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;

	//Put in the hardware class
	CommScratchBuffer[ Which ] [ 2 ] = HighByte(	BoardCapability.HardwareClass );
	CommScratchBuffer[ Which ] [ 3 ] = LowByte(		BoardCapability.HardwareClass );

	//Give the hardware revision
	CommScratchBuffer[ Which ] [ 4 ] = HighByte(	BoardCapability.HardwareRev );
	CommScratchBuffer[ Which ] [ 5 ] = LowByte(		BoardCapability.HardwareRev );

	//Give the hardware revision
	CommScratchBuffer[ Which ] [ 6 ] = HighByte(	BoardCapability.ProcessorType );
	CommScratchBuffer[ Which ] [ 7 ] = LowByte(		BoardCapability.ProcessorType );

	//now add the protocol stuff to the message
	BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Reply to the return stored number command.
//! @param Which Specifies which comm port this applies to.
void BuildStoredNumberReply( Uint16 Which )
{
	u8bit_t i;

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;

	//copy across the stored number
	for(i = 0; i < 4; i++ )
	{
		CommScratchBuffer[ Which ] [ i+2 ] = SavedNumber[ i ];
	}

	//now add the protocol stuff to the message
	BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Reply to the return stored number command with a HUGE packet, for test purposes
//! @param Which Specifies which comm port this applies to.
void BuildStoredNumberReplyHuge( Uint16 Which )
{
	u8bit_t i;

	//start with a cleared buffer
	InitCommScratchBuffer( Which );

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = HighByte(	OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ] );
	CommScratchBuffer[ Which ] [ 1 ] = LowByte(		OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ] );
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 2 ] = PacketStatusStruct[ Which ].CommandCode;

	//copy across the stored number
	for(i = 0; i < 4; i++ )
	{
		CommScratchBuffer[ Which ] [ i+3 ] = SavedNumber[ i ];
	}

	//the rest of the packet is zeroes which hopefully won't mess up the CRC

	//now add the protocol stuff to the message
	BuildExtendedReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Returns a variety of parameters for the device.
//! @param Which Specifies which comm port this applies to.
void BuildReadParameterReply( Uint16 Which )
{
	u8bit_t		ThisParameter;
	u16bit_t	Temp16bit;

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;
	//put in the requested parameter number
	CommScratchBuffer[ Which ] [ 2 ] = PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset ];
	//Make sure this is a valid parameter
	ThisParameter = PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset ];

	//Make sure parameter value is ok
	if( (ThisParameter != 0) && (ThisParameter < ParameterMaxValue) )
	{
		switch( ThisParameter )
		{
			case ParameterSystemParameterCode:
				//Get the current value from the exchange routines
				Temp16bit = ExchangeGetSystemParameterCode();
				//Return the requested parameter
				CommScratchBuffer[ Which ] [ 3 ] = HighByte( Temp16bit );
				CommScratchBuffer[ Which ] [ 4 ] = LowByte(	 Temp16bit );

				//now add the protocol stuff to the message
				BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
				break;

			case ParameterDecimationFactor:
				//Get the current value from the exchange routines
				Temp16bit = ExchangeGetDecimationFactor();
				//Return the requested parameter
				CommScratchBuffer[ Which ] [ 3 ] = HighByte( Temp16bit );
				CommScratchBuffer[ Which ] [ 4 ] = LowByte(	 Temp16bit );

				//now add the protocol stuff to the message
				BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
				break;

				//Should never hit this
			default:
				break;
		}
	}
	else
	{
		//Set fault bit for invalid parameter? $$$
	}
}

//! Command to return info about the data download. The data is built as soon as data collection ends, because it can take a while to build the header.
//! The info about the download goes back in a normal packet because there isn't that much info.
//! @param Which Specifies which comm port this applies to.
void BuildDownloadInfoReply( Uint16 Which )
{
	Uint16	PacketPointer;	//moving our way through the output packet
	DataDownloadInfoStruct ReplyDataDownloadInfo;	//populated with info the app sent about the download
	//u8bit	*PacketPointer;

	//populate our structure with the download info
	ExchangeGetDownloadInfo( &ReplyDataDownloadInfo );

	//The decimation factor may have changed. Update the numbers affected by it
	ReplyDataDownloadInfo.NumberOfDecimatedRecords = ReplyDataDownloadInfo.NumberOfRecords / (Uint32) ReplyDataDownloadInfo.DecimationValue;

	PacketPointer = 0;
	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ PacketPointer++ ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ PacketPointer++ ] = PacketStatusStruct[ Which ].CommandCode;

	//The following code forces a PSC into the data stream for testing, but it messes with the download length to do it.
	/*
	Uint32 doodoo;
	doodoo = ReplyDataDownloadInfo.NumberOfRecords & 0xffffff00; //drop out the lower 8 bits
	doodoo |= PSC; //make the lower bits be decimal 90, the PSC
	ReplyDataDownloadInfo.NumberOfRecords = doodoo;
	*/

	//Now start putting in the info
	Int32ToBytes(	ReplyDataDownloadInfo.NumberOfRecords,			&CommScratchBuffer[ Which ] [ PacketPointer ] );	PacketPointer += 4;
	Int32ToBytes(	ReplyDataDownloadInfo.NumberOfDecimatedRecords,	&CommScratchBuffer[ Which ] [ PacketPointer ] );	PacketPointer += 4;
	Int32ToBytes(	ReplyDataDownloadInfo.CommBufferSize,			&CommScratchBuffer[ Which ] [ PacketPointer ] );	PacketPointer += 4;

	CommScratchBuffer[ Which ] [ PacketPointer++ ] = HighByte(	ReplyDataDownloadInfo.DecimationValue );
	CommScratchBuffer[ Which ] [ PacketPointer++ ] = LowByte(	ReplyDataDownloadInfo.DecimationValue );
	CommScratchBuffer[ Which ] [ PacketPointer++ ] = HighByte(	ReplyDataDownloadInfo.HeaderSize );
	CommScratchBuffer[ Which ] [ PacketPointer++ ] = LowByte(	ReplyDataDownloadInfo.HeaderSize );
	CommScratchBuffer[ Which ] [ PacketPointer++ ] = 			ReplyDataDownloadInfo.BytesPerLine;
	CommScratchBuffer[ Which ] [ PacketPointer++ ] = 			ReplyDataDownloadInfo.BytesPerDecimatedLine;

	//now add the protocol stuff to the message
	BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Command to return the text header that has info about the settings used for data collection during the run.
//! The data is built as soon as data collection ends, because it can take a while to build the header.
//! The header info goes back in an extended packet because it's over 256 bytes (typically 1500 bytes).
//! @param Which Specifies which comm port this applies to.
void BuildDownloadHeaderReply( Uint16 Which )
{
	DataDownloadInfoStruct ReplyDataDownloadInfo;

	//populate our structure with the download info
	ExchangeGetDownloadInfo( &ReplyDataDownloadInfo );
	//The buffer is already built by the app, with the size and contents, but the command code is blank.
	//Put the command code in the reply message.
	ReplyDataDownloadInfo.BufferLocation[2] = PacketStatusStruct[ Which ].CommandCode;

	//This is typically a 1.5k message so it requires an extended message. Now add the protocol stuff to the message
	BuildExtendedReplyMessage( Which, (u8bit *)ReplyDataDownloadInfo.BufferLocation );
}

//! Command to return a specified range of data from the last run over comm.
//! @param Which Specifies which comm port this applies to.
void BuildDownloadRangeOfDataReply( Uint16 Which )
{
	DataDownloadInfoStruct ReplyDataDownloadInfo;
	Uint16	BytesToSend;
	Uint16	LinesToSend;
	Uint16	DecimationFactor;
	Uint16	BufferOffset;
	Uint8	*PacketPointer;
	Uint32	StartingSampleNumber;
	Uint32	EndingSampleNumber;
	Uint32	NumberOfSamples;

	//populate our structure with the download general info
	ExchangeGetDownloadInfo( &ReplyDataDownloadInfo );
	//Get total number of samples in the data set for validating the request
	NumberOfSamples = ReplyDataDownloadInfo.NumberOfRecords;
	//Will this download be decimated?
	DecimationFactor = ReplyDataDownloadInfo.DecimationValue;

	//get the start and end line numbers of data being requested, from the packet
	PacketPointer			= &PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset ];
	StartingSampleNumber	= BytesToInt32( PacketPointer + 0 );
	EndingSampleNumber		= BytesToInt32( PacketPointer + 4 );

	//validate user parameters
	if( StartingSampleNumber >= NumberOfSamples )
	{
		StartingSampleNumber = NumberOfSamples - 1;
	}

	if( StartingSampleNumber > EndingSampleNumber )
	{
		StartingSampleNumber = EndingSampleNumber-1;
	}

	//Don't run off the end of the data area
	if( EndingSampleNumber > ReplyDataDownloadInfo.NumberOfRecords )
	{
		EndingSampleNumber = ReplyDataDownloadInfo.NumberOfRecords - 1;
	}

	//So how many lines is that? First guess is no decimation.
	LinesToSend				= (EndingSampleNumber - StartingSampleNumber) + 1;

	//Find how many bytes we're sending
	if( DecimationFactor > 1 )
	{
		//handle the decimation, and the fact that we sometimes send less data on each line when decimatiing
		LinesToSend /= DecimationFactor;
		BytesToSend = LinesToSend * ReplyDataDownloadInfo.BytesPerDecimatedLine;

		//One small detail - how much space do we have to put data in?
		if( (BytesToSend + 50) > CHARS_IN_EACH_TX_QUEUE )
		{
			//Oops - don't blow the queue or the buffer
			//Run the math backwards - how many lines of data will fit in the buffer?
			LinesToSend = CHARS_IN_EACH_TX_QUEUE / ReplyDataDownloadInfo.BytesPerDecimatedLine;

			//Don't forget that there is some protocol overhead.
			LinesToSend--;
			LinesToSend--;	//this is two lines less, which is over 50 bytes

			BytesToSend = LinesToSend * ReplyDataDownloadInfo.BytesPerDecimatedLine;
		}
	}
	else
	{
		BytesToSend = LinesToSend * ReplyDataDownloadInfo.BytesPerLine;

		//One small detail - how much space do we have to put data in?
		if( BytesToSend > CHARS_IN_EACH_TX_QUEUE )
		{
			//Oops - don't blow the queue or the buffer
			//Run the math backwards - how many lines of data will fit in the buffer?
			LinesToSend = CHARS_IN_EACH_TX_QUEUE / ReplyDataDownloadInfo.BytesPerLine;
			BytesToSend = LinesToSend * ReplyDataDownloadInfo.BytesPerLine;
		}
	}

	//adjust byte count for command code
	BytesToSend++;

//FINDME
	BufferOffset = 0;
	//set the length field in the reply packet based on how much data the user requested
	//NOTE - we're adding more bytes - decimation factor and lines in the packet
	BytesToSend += 4;
	CommScratchBuffer[ Which ] [ BufferOffset++ ] = HighByte(	BytesToSend );
	CommScratchBuffer[ Which ] [ BufferOffset++ ] = LowByte(	BytesToSend );
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ BufferOffset++ ] = PacketStatusStruct[ Which ].CommandCode;
	//let the other end know if the data is decimated or not
	CommScratchBuffer[ Which ] [ BufferOffset++ ] = HighByte(	DecimationFactor );
	CommScratchBuffer[ Which ] [ BufferOffset++ ] = LowByte(	DecimationFactor );
	//let the other end know how many lines are in this packet
	CommScratchBuffer[ Which ] [ BufferOffset++ ] = HighByte(	LinesToSend );
	CommScratchBuffer[ Which ] [ BufferOffset++ ] = LowByte(	LinesToSend );

	//Request that the app put its data in our scratch buffer. The request handles decimation.
	ExchangeGetDownloadData( StartingSampleNumber, EndingSampleNumber, &CommScratchBuffer[ Which ] [ BufferOffset ] );
	//Add the protocol stuff to the message and prepare it for transmission
	BuildExtendedReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Utility routine that turns a stream of bytes into a 16 bit word. First byte in stream is most significant (big-endian)
//! @param Pointer Pointer to stream of bytes
//! @return 16 bit value of 2 bytes
Uint16 BytesTo16( Uint8 *Pointer )
{
	Uint16 Retcode;

	Retcode = (u16bit_t)( (u16bit_t) *(Pointer+1) + (u16bit_t) (*Pointer << 8) );

	return( Retcode );
}

//! Utility routine that turns an int16 into 2 bytes in a data stream
Uint8 *Int16ToBytes( Uint16 Thing, Uint8 *Pointer )
{
	*Pointer++ = HighByte(	Thing );
	*Pointer++ = LowByte(	Thing );

	return( Pointer );
}

//! Utility routine that turns a stream of bytes into a 32 bit word. First byte in stream is most significant (big-endian)
//! @param Pointer Pointer to stream of bytes
//! @return 32 bit value of 4 bytes
Uint32 BytesToInt32( Uint8 *Pointer )
{
	Uint32 Retcode;

	Retcode = (u32bit_t)(
							((u32bit_t) (*(Pointer+3))		)	+
							((u32bit_t) (*(Pointer+2)) <<  8)	+
							((u32bit_t) (*(Pointer+1)) << 16)	+
							((u32bit_t) (*(Pointer+0)) << 24)
						);

	return( Retcode );
}

//! Utility routine that turns an int32 into 4 bytes in a data stream.
//! @return Pointer to next location in destination array
Uint8 *Int32ToBytes( Uint32 Thing, Uint8 *Pointer )
{
	*Pointer++ = (Uint8) (Thing >> 24);
	*Pointer++ = (Uint8) (Thing >> 16);
	*Pointer++ = (Uint8) (Thing >>  8);
	*Pointer++ = (Uint8) (Thing      );
	return( Pointer );
}

//! Utility routine that turns a stream of bytes into a 32 bit word. First byte in stream is most significant (big-endian)
//! @param Pointer Pointer to stream of bytes
//! @return 32 bit value of 4 bytes
float32 BytesToFloat32( Uint8 *Pointer )
{
	float32 Retcode;
	Uint32	This32bitValue;

	//This union is used to convert from 32 bits to a float, which is not the same as a cast
	union FloatUnion
	{
		Uint32	Temp32bit;
		float32	TempFloat32;
	} FloatUnion;

	This32bitValue = (u32bit_t)(
									((u32bit_t) (*(Pointer+3))		)	+
									((u32bit_t) (*(Pointer+2)) <<  8)	+
									((u32bit_t) (*(Pointer+1)) << 16)	+
									((u32bit_t) (*(Pointer+0)) << 24)
								);

	//Turn them from a generic stream of bytes into a float.
	//This is not a cast. It's getting 4 bytes into a float without their being evaluated.
	FloatUnion.Temp32bit = This32bitValue;
	Retcode = FloatUnion.TempFloat32;

	return( Retcode );
}

//! Utility routine that turns a 32 bit float into a stream of 4 bytes. First byte in stream is most significant (big-endian).
//! This is not a cast, it is returning the internal representation of the float for comm transmission.
//! @param Pointer Pointer to stream of bytes
//! @return 32 bit value of 4 bytes
Uint8 * Float32ToBytes( float32 FloatInput, Uint8 *Pointer )
{
	//This union is used to convert from 32 bits to a float, which is not the same as a cast.
	//It's a little tricky because there isn't an 8 bit type to match up with the float.
	//So use a 32 bit and break it down.
	union FloatUnion
	{
		Uint32	Temp32bit;
		float32	TempFloat32;
	} FloatUnion;

	FloatUnion.TempFloat32 = FloatInput;

	*Pointer++ = (Uint8) ((FloatUnion.Temp32bit >> 24) & 0xff);
	*Pointer++ = (Uint8) ((FloatUnion.Temp32bit >> 16) & 0xff);
	*Pointer++ = (Uint8) ((FloatUnion.Temp32bit >>  8) & 0xff);
	*Pointer++ = (Uint8) ((FloatUnion.Temp32bit      ) & 0xff);

	return( Pointer );
}

//! Sets a variety of parameters for the device.
//! @param Which Specifies which comm port this applies to.
void ProcessSetParameterCommand( Uint16 Which )
{
	u8bit_t		ThisParameter;
	u8bit_t		*BytePointer;
	u16bit_t	ThisWordValue;
	Uint16		BrakeDelay;
	//u32bit_t	This32bitValue;
	u32bit_t	TriggerValue;
	float32		ThisFloat32;
	float32		TempWTConst;
	float32		TempWTZeroTorque;
	float32		BrakeZeta, BrakeOmegaN, BrakeACoeff, BrakeBCoeff, BrakeCCoeff;

	//Get a pointer to the start of the parameter values, one byte past the parameter number
	BytePointer = &PacketStatusStruct[ Which ].PacketContents[ PACKET_BODY_OFFSET+1 ];

	//Make sure value of the parameter number is ok
	ThisParameter = PacketStatusStruct[ Which ].PacketContents[ PACKET_BODY_OFFSET ];
	if( (ThisParameter != 0) && (ThisParameter < ParameterMaxValue) )
	{
		switch( ThisParameter )
		{
			//The SysParamCode represents a particular set of parameters, for example a particular type of plane.
			//It is used just for reference, it isn't used anywhere
			case ParameterSystemParameterCode:
				ThisWordValue = BytesTo16( BytePointer );
				//Store for future reference
				ExchangeSetSystemParameterCode( ThisWordValue );
				break;

			//Decimation factor is used to speed up data download after the run by skipping some of the data
			case ParameterDecimationFactor:
				//Store for future reference
				ThisWordValue = BytesTo16( BytePointer );
				ExchangeSetDecimationFactor( ThisWordValue );
				break;

			//The failure config struct looks the same for all functional modules,
			//but its contents are interpreted differently.
			case ParameterFailureConfigStruct:
				ThisWordValue	= BytesTo16		( BytePointer + 0	);	//first 2 bytes are failure type, int16
				TriggerValue	= BytesToInt32	( BytePointer + 2	); 	//next 4 bytes are trigger, don't know if float or int, treat as int
				ThisFloat32		= BytesToFloat32( BytePointer + 6	); 	//next 4 bytes are percentage of failure, float
				//Store the failure details
				ExchangeSetFailureDetails( ThisWordValue, TriggerValue, ThisFloat32 );
				break;

			//Water twister torque constant, and the extra torque always exerted to keep the cable from going slack
			case ParameterWaterTwisterConstants:
				TempWTConst			= BytesToFloat32( BytePointer + 0	);
				TempWTZeroTorque	= BytesToFloat32( BytePointer + 4	);
				ExchangeSetWaterTwisterConstants( TempWTConst, TempWTZeroTorque );
				break;

			//Water twister special-case torque of either sign added in by comm
			case ParameterWTCommAddedTorque:
				ThisFloat32 = BytesToFloat32( BytePointer );	//get the extra force
				ExchangeSetWTExtraTorque( ThisFloat32 );
				break;

			//Water twister pre-run torque
			case ParameterTwisterSetupTorque:
				ThisFloat32 = BytesToFloat32( BytePointer );
				ExchangeSetTwisterPrelimTorque( ThisFloat32 );
				break;

			//Brake parameters, the diff eq params and the simple delay
			case ParameterBrakeDelayDiffEqParams:
				BrakeZeta	= BytesToFloat32( BytePointer + 0	);
				BrakeOmegaN	= BytesToFloat32( BytePointer + 4	);
				BrakeACoeff	= BytesToFloat32( BytePointer + 8	);
				BrakeBCoeff	= BytesToFloat32( BytePointer + 12	);
				BrakeCCoeff	= BytesToFloat32( BytePointer + 16	);
				BrakeDelay	= BytesTo16		( BytePointer + 20	);
				ExchangeSetBrakeDelayParams( BrakeZeta, BrakeOmegaN, BrakeACoeff, BrakeBCoeff, BrakeCCoeff, BrakeDelay );
				break;

			case ParameterBrakeTorque:
				ThisFloat32 = BytesToFloat32( BytePointer );	//get the brake torque
				ExchangeSetBrakeTorque( ThisFloat32 );
				break;

			//Should never hit this $$$ - set fault bit for invalid param? Or just ignore things that don't apply to us?
			default:
				break;
		}
	}
	else
	{
		//Set fault bit for invalid parameter? $$$
	}
}

//! Read a specified temperature.
//! @param Which Specifies which comm port this applies to.
void BuildReadTemperatureReply( Uint16 Which )
{
	u8bit_t		ThisParameter;

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;
	//put in the requested parameter number
	CommScratchBuffer[ Which ] [ 2 ] = PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset ];
	//Get the parameter
	ThisParameter = PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset ];

	//Make sure parameter value is ok
	if( (ThisParameter != 0) && (ThisParameter < TemperatureParameterMaxValue) )
	{
		switch( ThisParameter )
		{
			case TemperatureOfBoard:
				//$$$READ THE BOARD TEMPERATURE FROM THE DS1820 or DS18S20
				SystemStatus.BoardTemperatureF = 0;
				//Return the requested parameter
				CommScratchBuffer[ Which ] [ 3 ] = 0;
				CommScratchBuffer[ Which ] [ 4 ] = SystemStatus.BoardTemperatureF;

				//now add the protocol stuff to the message
				BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
				break;

			//Should never hit this
			default:
				break;
		}
	}
	else
	{
		//Set fault bit for invalid parameter? $$$
	}
}

//! Reply to the serial number request command.
//! @param Which Specifies which comm port this applies to.
void BuildSerialNumberReply( Uint16 Which )
{
	u8bit_t i;

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;

	//copy across the serial number string
	for(i = 0; i < DEVICE_SERIAL_NUMBER_SIZE; i++ )
	{
		CommScratchBuffer[ Which ] [ i+2 ] = TempSensorROMInfo[ i ]; //this comes from a global in comm.c
	}

	//now add the protocol stuff to the message
	BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Reply to the status poll command.
//! @param Which Specifies which comm port this applies to.
void BuildStatusPollReply( Uint16 Which )
{
	CommMessageToAppType AppRunStatus;

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];

	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;

	//put in the status summary byte which was calculated just before calling this routine
	CommScratchBuffer[ Which ] [ 2 ] = SystemStatus.BoardStatus.StatusSummary;

	//There's another byte which is app run state (standby, running, etc)
	AppRunStatus = ExchangeGetAppRunState();
	CommScratchBuffer[ Which ] [ 3 ] = AppRunStatus;

	//now add the protocol stuff to the message
	BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );
}

//! Let the comm code tell the dispense code that a poll was received.
//! @param Which Specifies which comm port this applies to.
void NotifyPollReceived( Uint16 Which )
{
	//if he's waiting for a poll to arrive, let him know it's here
	//if( SystemStatus.BoardStatus.DispenseState == DispenseStateWaitingForPollToArrive )
	if( TRUE )
	{
		//SystemStatus.BoardStatus.DispenseState = DispenseStateWaitingForPollReply;
	}
}

//! Let the comm code tell the dispense code that a poll was responded to.
//! Needed for state machine sequencing under certain conditions.
//! @param Which Specifies which comm port this applies to.
void NotifyPollRespondedTo( Uint16 Which )
{
	//if he's waiting for poll reply to get out, let him know it's done
	//if( SystemStatus.BoardStatus.DispenseState == DispenseStateWaitingForPollReply )
	if( TRUE )
	{
		//SystemStatus.BoardStatus.DispenseState = DispenseStateDispenseStarting;
	}
}

//! Handle the dispense with transaction number command.
//! Dispensing will start as a result of this, but not immediately
//! Sets up info in system status structure to make dispense happen later.
//! This command causes a reply before it starts dispensing.
//! @param Which Specifies which comm port this applies to.
void BuildDispenseWithTransactionReply( Uint16 Which )
{
	u8bit_t Count;		//how many to dispense
	u8bit_t i;
	u8bit_t ReplyCode;	//what we send back
	u8bit_t	Error;		//something was bad in the command

	Error		= FALSE;
	ReplyCode	= DISPENSE_STARTING;	//keep the compiler happy

	//set the length field based on the incoming packet command code
	CommScratchBuffer[ Which ] [ 0 ] = OutgoingPacketLength[ PacketStatusStruct[ Which ].PacketContents[ PACKET_TYPE_OFFSET ] ];
	//put in the incoming packet command code
	CommScratchBuffer[ Which ] [ 1 ] = PacketStatusStruct[ Which ].CommandCode;
	//give back the count that was specified, and save it
	CommScratchBuffer[ Which ] [ 2 ] = Count = PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset ];

	//Check the number of tickets to dispense
	if( Count > 10 )
	{
		Error = TRUE;
		ReplyCode = DISPENSE_PARAMETER_ERROR;
	}

	//if good so far, see if we're already dispensing
	if( Error == FALSE )
	{
		//is the device already busy? Not likely because of how code works.
	}

	//Is this bin broken?
	if( Error == FALSE )
	{
		//This state is updated when homing or dispensing
		if( SystemStatus.FeatureStatus[ Which ].FeatureFault == TRUE )
		{
			Error = TRUE;
			ReplyCode = DISPENSE_FAULT_ERROR;
		}
	}

	//Is this bin empty? Might not be at cutter sensor, but is it at least in throat?
	if( Error == FALSE )
	{
		//if( IsCardInThroat() == FALSE )
		if( FALSE )
		{
			Error = TRUE;
			ReplyCode = DISPENSE_EMPTY_ERROR;
		}
	}

	//if all is good, say we're ready to start dispensing
	if( Error == FALSE )
	{
		//say that we're about to start dispensing
		ReplyCode = DISPENSE_STARTING;

		//say that we're starting up, mainline will handle actual dispense
		//SystemStatus.BoardStatus.DispenseState		= DispenseStateGotRequest;
		//SystemStatus.FeatureStatus.BinDispensing		= TRUE;
	}

	//Whether status is good or bad, give back the reply code we just built
	CommScratchBuffer[ Which ] [ 3 ] = ReplyCode;

	//Copy the transaction number, regardless of the error status, to variable and reply pkt
	for( i = 0; i < 4; i++ )
	{
		CommScratchBuffer[ Which ] [ i + 4 ] = TransactionNumber[ i ] = PacketStatusStruct[ Which ].PacketContents[ PacketStatusStruct[ Which ].BodyStartOffset + 1 + i ];
	}

	//now add the protocol stuff to the message
	BuildNormalReplyMessage( Which, &CommScratchBuffer[ Which ] [ 0 ] );

	//In this case, there is no transaction, so after the reply is copied, erase the transaction number.
	if( ReplyCode != DISPENSE_STARTING )
	{
		TransactionNumber[0]=TransactionNumber[1]=TransactionNumber[2]=TransactionNumber[3]=0;
		SystemStatus.FeatureStatus[ Which ].LastTransaction = 0;
	}
	else
	{
		//We got a real dispense, mark the transaction system as alive
		SystemStatus.FeatureStatus[ Which ].LastTransaction = 0x5a5a;
	}
}

//! Start a prebuilt packet on its way back to the master system.
//! @param Which Specifies which comm port and queue this applies to.
void SendReplyMessage( Uint16 Which )
{
	//make sure the packet is in the right state
	if( ReplyMessageStruct[ Which ].TransmitState == PacketReplyReadyToSend )
	{
		//put the prebuilt message on the specified transmit queue
		QueuePushTxNumBytes( Which, ReplyMessageStruct[ Which ].ReplyContents, ReplyMessageStruct[ Which ].CharsToSend );
		//the comm code will mark the buffer as being transmitted after it's done
		//let other code know we're sending this buffer
		SetReplyBufferState( Which, PacketReplySending );
		//SuspendInterrupts();
		//Enable the transmit-ready interrupt on this channel.
		InternalUartStartTransmission( Which );
		//RestoreInterrupts(); //starting UART
	}
}

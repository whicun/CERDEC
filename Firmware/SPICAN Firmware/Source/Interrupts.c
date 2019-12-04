/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2018-01-02 13:12:37 -0500 (Tue, 02 Jan 2018) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/Interrupts.c $ URL of repository
 *
 * $Rev:: 2613                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

const struct InterruptVectorTableType InterruptVectTableInit = {

	IsrSpurious,	//	PIE_RESERVED,	// Reserved space Reset
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space Int 1
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space
	IsrSpurious,	//	PIE_RESERVED,	// Reserved space Int 12


// Non-Peripheral Interrupts
	IsrSpurious,	//	INT13_ISR,		// XINT13 or CPU-Timer 1
	IsrInterrupt14,	//	CPU-Timer2		// Timer used for 500us ticks	*********vector D1C****************************************
	IsrSpurious,	//	DATALOG_ISR,	// Datalogging interrupt
	IsrSpurious,	//	RTOSINT_ISR,	// RTOS interrupt
	IsrSpurious,	//	EMUINT_ISR,		// Emulation interrupt
	IsrSpurious,	//	NMI_ISR,		// Non-maskable interrupt
	IsrSpurious,	//	ILLEGAL_ISR,	// Illegal operation TRAP
	IsrSpurious,	//	USER1_ISR,		// User Defined trap 1
	IsrSpurious,	//	USER2_ISR,		// User Defined trap 2
	IsrSpurious,	//	USER3_ISR,		// User Defined trap 3
	IsrSpurious,	//	USER4_ISR,		// User Defined trap 4
	IsrSpurious,	//	USER5_ISR,		// User Defined trap 5
	IsrSpurious,	//	USER6_ISR,		// User Defined trap 6
	IsrSpurious,	//	USER7_ISR,		// User Defined trap 7
	IsrSpurious,	//	USER8_ISR,		// User Defined trap 8
	IsrSpurious,	//	USER9_ISR,		// User Defined trap 9
	IsrSpurious,	//	USER10_ISR,		// User Defined trap 10
	IsrSpurious,	//	USER11_ISR,		// User Defined trap 11
	IsrSpurious,	//	USER12_ISR,		// User Defined trap 12

// Group 1 PIE Vectors, vectors 32-39
	IsrSpurious,	//	PDPINTA_ISR,	// EV-A
	IsrSpurious,	//	PDPINTB_ISR,	// EV-B
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	XINT1_ISR,		// External interrupt 1
	IsrSpurious,	//	XINT2_ISR,		// External interrupt 2
	IsrSpurious,	//	ADCINT_ISR,		// ADC
	IsrSpurious,	//	TINT0_ISR,		// Timer 0
	IsrSpurious,	//	WAKEINT_ISR,	// Lower power mode / Watchdog

// Group 2 PIE Vectors, vectors 40-47
	IsrSpurious,	//	CMP1INT_ISR,	// EV-A
	IsrSpurious,	//	CMP2INT_ISR,	// EV-A
	IsrSpurious,	//	CMP3INT_ISR,	// EV-A
	IsrSpurious,	//	T1PINT_ISR,		// EV-A
	IsrSpurious,	//	T1CINT_ISR,		// EV-A
	IsrSpurious,	//	T1UFINT_ISR,	// EV-A
	IsrSpurious,	//	T1OFINT_ISR,	// EV-A
	IsrSpurious,	//	rsvd_ISR,

// Group 3 PIE Vectors, vectors 48-55
	IsrSpurious,	//	T2PINT_ISR,    // EV-A
	IsrSpurious,	//	T2CINT_ISR,    // EV-A
	IsrSpurious,	//	T2UFINT_ISR,   // EV-A
	IsrSpurious,	//	T2OFINT_ISR,   // EV-A
	IsrSpurious,	//	CAPINT1_ISR,   // EV-A
	IsrSpurious,	//	CAPINT2_ISR,   // EV-A
	IsrSpurious,	//	CAPINT3_ISR,   // EV-A
	IsrSpurious,	//	rsvd_ISR,

// Group 4 PIE Vectors, vectors 56-63
	IsrSpurious,	//	CMP4INT_ISR,   // EV-B
	IsrSpurious,	//	CMP5INT_ISR,   // EV-B
	IsrSpurious,	//	CMP6INT_ISR,   // EV-B
	IsrSpurious,	//	T3PINT_ISR,    // EV-B
	IsrSpurious,	//	T3CINT_ISR,    // EV-B
	IsrSpurious,	//	T3UFINT_ISR,   // EV-B
	IsrSpurious,	//	T3OFINT_ISR,   // EV-B
	IsrSpurious,	//	rsvd_ISR,

// Group 5 PIE Vectors, vectors 64-71
	IsrSpurious,	//	T4PINT_ISR,    // EV-B
	IsrSpurious,	//	T4CINT_ISR,    // EV-B
	IsrSpurious,	//	T4UFINT_ISR,   // EV-B
	IsrSpurious,	//	T4OFINT_ISR,   // EV-B
	IsrSpurious,	//	CAPINT4_ISR,   // EV-B
	IsrSpurious,	//	CAPINT5_ISR,   // EV-B
	IsrSpurious,	//	CAPINT6_ISR,   // EV-B
	IsrSpurious,	//	rsvd_ISR,

// Group 6 PIE Vectors, vectors 72-79
	IsrSpurious,	//	SPIRXINTA_ISR,	// SPI-A
	IsrSpurious,	//	SPITXINTA_ISR,	// SPI-A
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	MRINTA_ISR,		// McBSP-A
	IsrSpurious,	//	MXINTA_ISR,		// McBSP-A
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,

// Group 7 PIE Vectors, vectors 80-87
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,

// Group 8 PIE Vectors, vectors 88-95
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,

// Group 9 PIE Vectors, vectors 96-103
	IsrUartARcv,	//	SCIRXINTA_ISR,	// SCI-A Receive	*************************************************
	IsrUartAXmit,	//	SCITXINTA_ISR,	// SCI-A Transmit	*************************************************
	IsrUartBRcv,	//	SCIRXINTB_ISR,	// SCI-B Receive	*************************************************
	IsrUartBXmit,	//	SCITXINTB_ISR,	// SCI-B Transmit	*************************************************
	IsrSpurious,	//	ECAN0INTA_ISR,	// eCAN
	IsrSpurious,	//	ECAN1INTA_ISR,	// eCAN
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,

// Group 10 PIE Vectors, vectors 104-111
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,

// Group 11 PIE Vectors, vectors 112-119
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,

// Group 12 PIE Vectors, vectors 120-127
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
	IsrSpurious,	//	rsvd_ISR,
};

//! This is the handler for unexpected interrupts.
//! It causes a fatal error.
interrupt void IsrSpurious(void)
{
	Uint16 HoldPieVect;

	DINT;
	//The PIE knows what vector was fetched. Help the user figure it out.
	HoldPieVect = PieCtrlRegs.PIECRTL.all;
	//The LSB will be 1 to indicate that the PIE is enabled. Remove it.
	HoldPieVect &= 0xFFFE;
	//Pull out the start address of the table
	HoldPieVect -= 0xD00;
	//Divide by 2 to get the vector number (2 bytes per vector)
	HoldPieVect /= 2;
	//Give the user the vector number
	FatalError( FATAL_ERROR_SPURIOUS_INT, HoldPieVect );
}

//! Copy the list of interrupt service routines into the vector area in the CPU.
void InitVectorTable(void)
{
	Uint16	i;
	Uint32 *Source;
	Uint32 *Dest;

	Source	= (void *) &InterruptVectTableInit;
	Dest	= (void *) &PieVectTable;

	//Make sure interrupts are off before we change the vector table!
	//Somebody else will enable interrupts later if needed.
	DINT;

	//The vector table contents are protected
	EALLOW;

	for(i=0; i < 128; i++)
	{
		*Dest++ = *Source++;
	}

	//Enable the PIE Vector Table
	PieCtrlRegs.PIECRTL.bit.ENPIE = 1;

	//back to protected mode
	EDIS;
}

//! This is the Timer2 ISR which is the 500us trigger for data collection
interrupt void IsrInterrupt14(void)
{
	//No point trying to light a LED when we're here, it's so brief the light is very faint.
	//Turn on a LED in the main.c routine that looks at the flag.

	//get timer ready to run again
	ReloadCpuTimer2();
	//Clear the interrupt, requires writing a zero
	//NOTE - you must use AND and OR to write to this register, or assign 0 to it.
	//Otherwise you get a mysterious error from the compiler about illegal use of a control register.
    IFR &= ~0x2000;
    //Clear the interupt flag in the timer, requires writing a 1
	CpuTimer2Regs.TCR.bit.TIF = 1;
	//Let the rest of the world know this happened
	Timer2InterruptFlag = TRUE;
}

#if ENABLE_TRACE_XMIT
typedef enum TraceCode
{
		Nothing,
		FIFOOverflow,
		EnterISR,
		HeadOfWhile,
		NeedToSend,
		QueueNowEmpty,
		FinalQueueEmpty,
		FinalFIFOFull,
		ReadyToLeaveISR,
		ExitISR,
		PIECTRLFollows,
		FIFOStatFollows,
		IERFollows,
		PIEACKFollows,
		SCICTL2Follows,
		CharFollows,
		SciRxStFollows,
		TransmitInterruptVector = 0xdc3,
} TraceCode;

Uint16 TraceCount=0;
TraceCode TraceBuffer[100];
void TraceAddTracePoint( TraceCode Value)
{
	Uint16 StopFlag = 0;
	if( TraceCount >= sizeof(TraceBuffer) )
	{
		StopFlag++; //place for breakpoint
		//ESTOP0;
	}
	else
	{
		TraceBuffer[ TraceCount++ ] = Value;
	}
}

void TraceSetup( void )
{
	Uint16 Hold = sizeof( TraceBuffer );
	Uint16 i;

	for( i=0; i<Hold; i++ )
	{
		TraceBuffer[i] = Nothing;
	}
}
#else
	//We're not doing tracing, so make the trace functions be empty.
	#define TraceAddTracePoint( IgnoredParam ) {}
	#define TraceSetup() {}
#endif

//! This is the UART A Transmit ISR. It is intended to work with FIFOs enabled, and comm queues.
interrupt void IsrUartAXmit(void)
{
	Uint8	CharToSend;	//char we're putting on the transmit queue
	Uint16	UartFIFOFull;
	Uint16	QueueEmpty;

	TraceAddTracePoint( EnterISR );
	TraceAddTracePoint( IERFollows );
	TraceAddTracePoint( (TraceCode) IER );
	TraceAddTracePoint( PIECTRLFollows );
	TraceAddTracePoint( (TraceCode) PieCtrlRegs.PIECRTL.all );

	//The transmitter on this channel interrupted because it can take more characters.
	//Are there chars to transmit on this queue?
	//This loop will run till the queue is empty or the fifo is full.
	QueueEmpty		= QueueIsTxQueueEmpty( UARTA );
	UartFIFOFull	= InternalUartIsTxFIFOFull( UARTA );
	while( TRUE )
	{
		TraceAddTracePoint( HeadOfWhile );
		if( (QueueEmpty == FALSE) && (UartFIFOFull == FALSE) )
		{
			TraceAddTracePoint( NeedToSend );
			//There's a character to send, and room to put it. Do it!
			CharToSend = QueuePullTxChar( UARTA );
			UARTATxBuff = CharToSend;
			//We need to know if we just sent the last character in the queue, for sequencing the transmit state machine.
			QueueEmpty = QueueIsTxQueueEmpty( UARTA );
			if( QueueEmpty == TRUE )
			{
				TraceAddTracePoint( QueueNowEmpty );
				//let other code know we're finished sending this buffer
				SetReplyBufferState( UARTA, PacketReplyDone );
				//let dispense state machine know we finished responding to a poll
				NotifyPollRespondedTo( UARTA );
			}
		}

		//Refresh our status
		QueueEmpty		= QueueIsTxQueueEmpty( UARTA );
		UartFIFOFull	= InternalUartIsTxFIFOFull( UARTA );

		//Should we keep going? Do we still have chars to send?
		if( QueueEmpty == TRUE )
		{
			TraceAddTracePoint( FinalQueueEmpty );
			//We're out of chars to send, so disable the transmit interrupt from this uart.
			InternalUartTXInterruptControl( UARTA, FALSE );
			//Clear the uart transmit-ready interrupt bit. We don't need an interrupt since we've done all we need to do.
			SciaRegs.SCIFFTX.bit.TXINTCLR = 1;
			break; //break out of the while loop that is trying to send all the chars in the queue to the uart's fifo
		}

		//Should we keep going? Can the UART take more chars?
		if( UartFIFOFull == TRUE )
		{
			TraceAddTracePoint( FinalFIFOFull );
			//There's no more room in the transmit FIFO for chars to send, so exit the ISR.
			//The interrupt is disabled when we enter the ISR, so we need to re-enable it.
			SciaRegs.SCIFFTX.bit.TXINTCLR		= 1;	// does joe need?
			break;
		}
	}

	TraceAddTracePoint( ReadyToLeaveISR );
	TraceAddTracePoint( PIEACKFollows );
	TraceAddTracePoint( (TraceCode) PieCtrlRegs.PIEACK.all );
	//Before we leave, re-enable the level 9 interrupt from PIE to CPU for the other uart interrupts
	PieCtrlRegs.PIEACK.bit.ACK9 = 1;

	TraceAddTracePoint( PIEACKFollows );
	TraceAddTracePoint( (TraceCode) PieCtrlRegs.PIEACK.all );
	TraceAddTracePoint( PIECTRLFollows );
	TraceAddTracePoint( (TraceCode) PieCtrlRegs.PIECRTL.all );
	TraceAddTracePoint( IERFollows );
	TraceAddTracePoint( (TraceCode) IER );
	TraceAddTracePoint( ExitISR );
}

//! This is the UART B Transmit ISR. It is intended to work with FIFOs enabled, and comm queues.
interrupt void IsrUartBXmit(void)
{
	Uint8	CharToSend;	//char we're putting on the transmit queue
	Uint16	UartFIFOFull;
	Uint16	QueueEmpty;

	//The transmitter on this channel interrupted because it can take more characters.
	//Are there chars to transmit on this queue?
	//This loop will run till the queue is empty or the fifo is full.
	QueueEmpty		= QueueIsTxQueueEmpty( UARTB );
	UartFIFOFull	= InternalUartIsTxFIFOFull( UARTB );
	while( TRUE )
	{
		if( (QueueEmpty == FALSE) && (UartFIFOFull == FALSE) )
		{
			//There's a character to send, and room to put it. Do it!
			CharToSend = QueuePullTxChar( UARTB );
			UARTBTxBuff = CharToSend;
			//We need to know if we just sent the last character in the queue, for sequencing the transmit state machine.
			QueueEmpty = QueueIsTxQueueEmpty( UARTB );
			if( QueueEmpty == TRUE )
			{
				//let other code know we're finished sending this buffer
				SetReplyBufferState( UARTB, PacketReplyDone );
				//let dispense state machine know we finished responding to a poll
				NotifyPollRespondedTo( UARTB );
			}
		}

		//Refresh our status
		QueueEmpty		= QueueIsTxQueueEmpty( UARTB );
		UartFIFOFull	= InternalUartIsTxFIFOFull( UARTB );

		//Should we keep going? Do we still have chars to send?
		if( QueueEmpty == TRUE )
		{
			//We're out of chars to send, so disable the transmit interrupt from this uart.
			InternalUartTXInterruptControl( UARTB, FALSE );
			//Clear the uart transmit-ready interrupt bit. We don't need an interrupt since we've done all we need to do.
			ScibRegs.SCIFFTX.bit.TXINTCLR = 1;
			break; //break out of the while loop that is trying to send all the chars in the queue to the uart's fifo
		}

		//Should we keep going? Can the UART take more chars?
		if( UartFIFOFull == TRUE )
		{
			//There's no more room in the transmit FIFO for chars to send, so exit the ISR.
			//The interrupt is disabled when we enter the ISR, so we need to re-enable it.
			ScibRegs.SCIFFTX.bit.TXINTCLR		= 1;
			break;
		}
	}

	//Before we leave, re-enable the level 9 interrupt from PIE to CPU for the other uart interrupts
	PieCtrlRegs.PIEACK.bit.ACK9 = 1;
}

#if ENABLE_TRACE_RCV
typedef enum TraceCode
{
		Nothing,
		FIFOOverflow,
		EnterISR,
		ReadyToLeaveISR,
		ExitISR,
		FoundGoodChar,
		FoundBadChar,
		FIFOStatFollows,
		CharFollows,
		SciRxStFollows,
} TraceCode;

Uint16 TraceCount=0;
TraceCode TraceBuffer[100];
void TraceAddTracePoint( TraceCode Value)
{
	Uint16 StopFlag = 0;
	TraceBuffer[ TraceCount++ ] = Value;
	if( TraceCount >= sizeof(TraceBuffer) )
	{
		StopFlag++; //place for breakpoint
	}
}

void TraceSetup( void )
{
	Uint16 Hold = sizeof( TraceBuffer );
	Uint16 i;

	for( i=0; i<Hold; i++ )
	{
		TraceBuffer[i] = Nothing;
	}
}
#endif

//! This is the UART A Receive ISR. It is intended to work with FIFOs enabled, and comm queues.
interrupt void IsrUartARcv(void)
{
	Uint16	CharReceived;	//char we're getting from uart and putting on receive queue. Need 16 bits so we can get error indication
	Uint16	UartFIFOEmpty;
	Uint16	QueueFull;

	//If there's a uart fifo overflow, we can't do anything about it but clear the status.
	//A fifo overflow does not cause an interrupt by itself.
	if( SciaRegs.SCIFFRX.bit.RXFFOVF == 1 )
	{
		//clear the fifo overflow status
		SciaRegs.SCIFFRX.bit.RXFFOVRCLR = 1;
	}

	//The receiver on this channel interrupted because it has one or more chars in its fifo.
	//This loop will run till the receive queue is full or the uart fifo is empty.
	QueueFull		= QueueIsRxQueueFull( UARTA );
	UartFIFOEmpty	= InternalUartIsRxFIFOEmpty( UARTA );
	while( TRUE )
	{
		//Check for the easy case - the queue has room, the uart has a char to give us.
		if( (QueueFull == FALSE) && (UartFIFOEmpty == FALSE) )
		{
			//There's a character to get, and room to put it. Do it!
			CharReceived = InternalUartGetFIFOCharacter( UARTA );
			//If it's a trash char, don't put it on the queue
			if( (CharReceived != BAD_CHAR) && (CharReceived != NO_CHAR) )
			{
				//The upper bits can be error status. As long as packets are checksummed, we can ignore them.
				QueuePushRxChar( UARTA, CharReceived & 0xff );
			}
			else
			{
				//The fifo has trash in it that didn't clear. Wipe it.
				SciaRegs.SCIFFRX.bit.RXFIFORESET	= 0;
				SciaRegs.SCIFFRX.bit.RXFIFORESET	= 1;
			}
		}

		//Refresh our status for the next time around the loop
		QueueFull		= QueueIsRxQueueFull( UARTA );
		UartFIFOEmpty	= InternalUartIsRxFIFOEmpty( UARTA );

		//Should we keep going? Do we still have chars to read from the uart fifo?
		if( UartFIFOEmpty == TRUE )
		{
			//Nothing left in the uart's fifo.
			//clear the fifo interrupt.
			SciaRegs.SCIFFRX.bit.RXFFINTCLR = 1;
			//No more chars in the uart, we're done
			break;
		}
		else
		{
			//There are more characters in the uart fifo.
			//Can we keep going reading them or do we have an overflow condition?
			if( QueueFull == TRUE )
			{
				//Uh-oh, the receive queue is full but there are still chars in the uart fifo.
				//If we don't clear them out, the interrupt will keep happening.
				//This will eventually cause a bad checksum or a bad format for the packet.
				//Wipe out all chars in the receive fifo of the uart.
				SciaRegs.SCIFFRX.bit.RXFIFORESET	= 0;
				SciaRegs.SCIFFRX.bit.RXFIFORESET	= 1;
				//clear the fifo interrupt.
				SciaRegs.SCIFFRX.bit.RXFFINTCLR = 1;

				//Now we leave the ISR
				break;
			}
			else
			{
				//There are more chars in the uart's fifo, and we have room to read them in the receive queue, so keep going aorund the loop.
			}
		}
	}

	//Before we leave, re-enable the level 9 interrupt from PIE to CPU for the other uart interrupts
	PieCtrlRegs.PIEACK.bit.ACK9 = 1;
}

//! This is the UART B Receive ISR. It is intended to work with FIFOs enabled, and comm queues.
interrupt void IsrUartBRcv(void)
{
	Uint16	CharReceived;	//char we're getting from uart and putting on receive queue. Need 16 bits so we can get error indication
	Uint16	UartFIFOEmpty;
	Uint16	QueueFull;

	//If there's a uart fifo overflow, we can't do anything about it but clear the status.
	//A fifo overflow does not cause an interrupt by itself.
	if( ScibRegs.SCIFFRX.bit.RXFFOVF == 1 )
	{
		//clear the fifo overflow status
		ScibRegs.SCIFFRX.bit.RXFFOVRCLR = 1;
	}

	//The receiver on this channel interrupted because it has one or more chars in its fifo.
	//This loop will run till the receive queue is full or the uart fifo is empty.
	QueueFull		= QueueIsRxQueueFull( UARTB );
	UartFIFOEmpty	= InternalUartIsRxFIFOEmpty( UARTB );
	while( TRUE )
	{
		//Check for the easy case - the queue has room, the uart has a char to give us.
		if( (QueueFull == FALSE) && (UartFIFOEmpty == FALSE) )
		{
			//There's a character to get, and room to put it. Do it!
			CharReceived = InternalUartGetFIFOCharacter( UARTB );
			//If it's a trash char, don't put it on the queue
			if( (CharReceived != BAD_CHAR) && (CharReceived != NO_CHAR) )
			{
				//The upper bits can be error status. As long as packets are checksummed, we can ignore them.
				QueuePushRxChar( UARTB, CharReceived & 0xff );
			}
			else
			{
				//The fifo has trash in it that didn't clear. Wipe it.
				ScibRegs.SCIFFRX.bit.RXFIFORESET	= 0;
				ScibRegs.SCIFFRX.bit.RXFIFORESET	= 1;
			}
		}

		//Refresh our status for the next time around the loop
		QueueFull		= QueueIsRxQueueFull( UARTB );
		UartFIFOEmpty	= InternalUartIsRxFIFOEmpty( UARTB );

		//Should we keep going? Do we still have chars to read from the uart fifo?
		if( UartFIFOEmpty == TRUE )
		{
			//Nothing left in the uart's fifo.
			//clear the fifo interrupt.
			ScibRegs.SCIFFRX.bit.RXFFINTCLR = 1;
			//No more chars in the uart, we're done
			break;
		}
		else
		{
			//There are more characters in the uart fifo.
			//Can we keep going reading them or do we have an overflow condition?
			if( QueueFull == TRUE )
			{
				//Uh-oh, the receive queue is full but there are still chars in the uart fifo.
				//If we don't clear them out, the interrupt will keep happening.
				//This will eventually cause a bad checksum or a bad format for the packet.
				//Wipe out all chars in the receive fifo of the uart.
				ScibRegs.SCIFFRX.bit.RXFIFORESET	= 0;
				ScibRegs.SCIFFRX.bit.RXFIFORESET	= 1;
				//clear the fifo interrupt.
				ScibRegs.SCIFFRX.bit.RXFFINTCLR = 1;

				//Now we leave the ISR
				break;
			}
			else
			{
				//There are more chars in the uart's fifo, and we have room to read them in the receive queue, so keep going aorund the loop.
			}
		}
	}

	//Before we leave, re-enable the level 9 interrupt from PIE to CPU for the other uart interrupts
	PieCtrlRegs.PIEACK.bit.ACK9 = 1;
}

//! Set up timer 2 to generate 2KHz interrupts
void SetUpTimer2Interrupts( void )
{
	//Make sure we're not interrupted
	DINT;
	//Let us make changes to peripherals
	EALLOW;
	//Put the timer 2 ISR flag in a known state
	InitTimer2ISRFlag();
	//Set up timer 2 for a 150MHz clock and a 500us period, 2KHz interrupts
	ConfigCpuTimer( &CpuTimer2, 150.0L, 976);
	//We're not using the PIE because timer2 goes direct, but make sure it's zeroed out before we enable interrupts
	//Clear any pending interrupt flags
	IFR = 0;
	//enable int14 for timer2
	IER |= 0x2000;
	//Start the timer running
	StartCpuTimer2();
	//Lock peripheral access before you enable interrupts (yes, this works)
	EDIS;
}

//! Set up to have the uart interrupt work through the PIE.
void SetUpUARTInterrupts( void )
{
	DINT; //keep us out of trouble

	EALLOW;

	//Enable the PIE
	//There's a typo in TI's setup for the F2812, they have CRTL instead of CTRL.
	PieCtrlRegs.PIECRTL.bit.ENPIE = 1;

    //Make sure the ack is clear for level 9 interrupt.
	PieCtrlRegs.PIEACK.bit.ACK9 = 1;

	//Tell the PIE to pass through all 4 uart interrupts (uart a and b, receive and transmit) which are on level 9.
    PieCtrlRegs.PIEIER9.bit.INTx1 = 1;
    PieCtrlRegs.PIEIER9.bit.INTx2 = 1;
    PieCtrlRegs.PIEIER9.bit.INTx3 = 1;
    PieCtrlRegs.PIEIER9.bit.INTx4 = 1;

    EDIS;

    //Enable the bit for INT9 which is where the PIE sends the uart interrupts
	IER |= 0x100;
}

/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-08-07 17:16:26 -0400 (Mon, 07 Aug 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/Queues.c $ URL of repository
 *
 * $Rev:: 1922                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

/*! @file
 * Queue handler code for the ProD boards.
 *
 * This is a reworking of the original Dev1/Dev2 bringup diagnostics.
 * This file contains the uart test code.
 *
 */

//Queue pointers
u16bit QueueRxCount[ NUMBER_OF_UART_QUEUES ];
u16bit QueueTxCount[ NUMBER_OF_UART_QUEUES ];
u16bit QueueRxNextIn[  NUMBER_OF_UART_QUEUES ];
u16bit QueueRxNextOut[ NUMBER_OF_UART_QUEUES ];
u16bit QueueTxNextIn[  NUMBER_OF_UART_QUEUES ];
u16bit QueueTxNextOut[ NUMBER_OF_UART_QUEUES ];
//for diagnostic use
u16bit QueueMaxDepth[ NUMBER_OF_UART_QUEUES ];
//Queue storage
u16bit QueueRxBuffer[ NUMBER_OF_UART_QUEUES ] [ CHARS_IN_EACH_RX_QUEUE ];
#pragma DATA_SECTION(QueueTxBuffer,"ExternMem");
//receive queues are pretty small, but the reply queue is huge for downloading data after a run, so put it in external ram
u16bit QueueTxBuffer[ NUMBER_OF_UART_QUEUES ] [ CHARS_IN_EACH_TX_QUEUE ];

//! Test the queue code. Requires that the fatal errors triggered by misuse of the queue are disabled.
//! @retval TRUE Queue code works.
//! @retval FALSE Queue code failed diagnostics.
Uint16 QueueTestQueueCode( void )
{
	Uint16 Retcode;
	Uint16 i,j,k;
	Uint16 ValueRX, ValueTX;

	//Verify that we can init the queues
	QueueInitAll();

	Retcode = TRUE;

	//Verify that empty/full works with empty queues
	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		if( QueueIsRxQueueEmpty( i ) == FALSE )
		{
			Retcode = FALSE;
			break;
		}

		if( QueueIsTxQueueEmpty( i ) == FALSE )
		{
			Retcode = FALSE;
			break;
		}

		if( QueueIsRxQueueFull( i ) == TRUE )
		{
			Retcode = FALSE;
			break;
		}

		if( QueueIsTxQueueFull( i ) == TRUE )
		{
			Retcode = FALSE;
			break;
		}
	}

	//Put a unique pattern into each queue entry
	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		//Start each RX queue with q*100
		//Put almost too many on each queue
		for( j = 0; j<CHARS_IN_EACH_RX_QUEUE; j++ )
		{
			QueuePushRxChar( i, (i*100) + j);
		}
		//Start each TX with q*200
		//Put almost too many on each queue
		for( j = 0; j<CHARS_IN_EACH_TX_QUEUE; j++ )
		{
			QueuePushTxChar( i, (i*200) + j);
		}
	}

	//Now verify that they are full and not empty
	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		if( QueueIsRxQueueEmpty( i ) == TRUE )
		{
			Retcode = FALSE;
			break;
		}

		if( QueueIsTxQueueEmpty( i ) == TRUE )
		{
			Retcode = FALSE;
			break;
		}

		if( QueueIsRxQueueFull( i ) == FALSE )
		{
			Retcode = FALSE;
			break;
		}

		if( QueueIsTxQueueFull( i ) == FALSE )
		{
			Retcode = FALSE;
			break;
		}
	}

	//Verify that the content of each queue is correct
	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		//Starting value of the sequence
		ValueRX = i*100;
		//Start each RX queue with q*100
		for( j = 0; j<CHARS_IN_EACH_RX_QUEUE; j++ )
		{
			if( QueuePullRxChar( i ) != ValueRX )
			{
				Retcode = FALSE;
				break;
			}
			ValueRX++;
		}

		//Starting value of the sequence
		ValueTX = i*200;
		//Start each RX queue with q*100
		for( j = 0; j<CHARS_IN_EACH_TX_QUEUE; j++ )
		{
			if( QueuePullTxChar( i ) != ValueTX )
			{
				Retcode = FALSE;
				break;
			}
			ValueTX++;
		}
	}

	//Fill each queue with FFs, then show that an underflow reads a null.
	//First, fill each queue with FFs
	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		//Start each RX queue with q*100 and each TX with q*200
		//Put almost too many on each queue
		for( j = 0; j<CHARS_IN_EACH_RX_QUEUE; j++ )
		{
			QueuePushRxChar( i, 0xFF);
		}
		//Start each RX queue with q*100 and each TX with q*200
		//Put almost too many on each queue
		for( j = 0; j<CHARS_IN_EACH_TX_QUEUE; j++ )
		{
			QueuePushTxChar( i, 0xFF);
		}
	}

	//Read too many entries and show that we get a null.
	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		//First the receive queues..........................................
		//Pull out all the chars
		for( j = 0; j<CHARS_IN_EACH_RX_QUEUE; j++ )
		{
			ValueRX = QueuePullRxChar( i );
		}

		//Make sure the last one we read out is correct
		if( ValueRX != 0xFF )
		{
			Retcode = FALSE;
			break;
		}

		//Now read one more and make sure it's a NULL
		ValueRX = QueuePullRxChar( i );
		if( ValueRX != 0 )
		{
			Retcode = FALSE;
			break;
		}

		//Then the transmit queues..........................................
		//Pull out all the chars
		for( j = 0; j<CHARS_IN_EACH_TX_QUEUE; j++ )
		{
			ValueTX = QueuePullTxChar( i );
		}

		//Make sure the last one we read out is correct
		if( ValueTX != 0xFF )
		{
			Retcode = FALSE;
			break;
		}

		//Now read one more and make sure it's a NULL
		ValueTX = QueuePullTxChar( i );
		if( ValueTX != 0 )
		{
			Retcode = FALSE;
			break;
		}
	}

	//Ok, let's really test them. Put data on by the 7s and take it off by 6s.
	//Run the test 50 times
	for( k=1; k<=50; k++ )
	{
		//Do it to all the queues
		for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
		{
			//Put 7 pieces of data on the queue
			for( j=1; j<=7; j++ )
			{
				ValueRX = ((k-1)*7)+j;	//this counts up by 7s each test
				QueuePushRxChar( i, ValueRX );
				ValueTX = ((k-1)*7)+j+1;	//this counts up by 7s each test but offset by 1 for transmit queue
				QueuePushTxChar( i, ValueTX );
			}
		}

		//Do it to all the queues
		for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
		{
			//We put 7 items on each queue, now pull 6 of them off.
			//This leaves a multiple of 7 on the queue that we can see later in the debugger
			for( j=1; j<=6; j++ )
			{
				ValueRX = QueuePullRxChar( i );
				ValueTX = QueuePullTxChar( i );
			}
		}
	}

	//When this part is done, there should be exactly 50 items on each queue, but who knows what they are!
	//Do it to all the queues
	for( i=0; i<NUMBER_OF_UART_QUEUES; i++ )
	{
		//check receive and transmit queues for having the right number of entries
		if(QueueRxCount[ i ] != 50 )
		{
			Retcode = FALSE;
			break;
		}

		if(QueueTxCount[ i ] != 50 )
		{
			Retcode = FALSE;
			break;
		}
	}

	//The following tests throw fatal errors, so keep them disabled most of the time.
#if 0
	//Try an invalid queue (enable the fatal error for this to test)
	QueueIsRxQueueEmpty( NUMBER_OF_UART_QUEUES );

	//Put too many chars on a queue and see that we throw a fatal error.
	//Start by filling the  queue to capacity.
	for( j = 0; j<CHARS_IN_EACH_RX_QUEUE; j++ )
	{
		QueuePushRxChar( 7, 0xFF);
	}
	//this line should throw a fatal
	QueuePushRxChar( 7, 0xFF);
#endif

	//Clear up the mess we left behind in the queues
	QueueInitAll();

	return( Retcode );
}

//! Init all the queues and pointers
void QueueInitAll( void )
{
	Uint16 i;	//loop counter

	//Call the queue init code for all of them
	for( i=0; i< NUMBER_OF_UART_QUEUES; i++ )
	{
		QueueInitQueue( i );
	}
}

//! Init a specified queue, both the RX and TX sides. Clears pointers and zeroes buffers.
void QueueInitQueue( Uint16 Which )
{
	Uint16 j;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		//Clear the character counts and pointers
		QueueRxCount[ Which ]	= 0;
		QueueTxCount[ Which ]	= 0;
		QueueRxNextIn [ Which ]	= 0;
		QueueRxNextOut[ Which ]	= 0;
		QueueTxNextIn [ Which ]	= 0;
		QueueTxNextOut[ Which ]	= 0;
		//Used for debug
		QueueMaxDepth[ Which ] = 0;

		//Clear this queue's receive buffer
		for( j=0; j<CHARS_IN_EACH_RX_QUEUE; j++ )
		{
			QueueRxBuffer[ Which ] [ j ] = 0;
		}

		//Clear this queue's transmit buffer
		for( j=0; j<CHARS_IN_EACH_TX_QUEUE; j++ )
		{
			QueueTxBuffer[ Which ] [ j ] = 0;
		}

	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Init a specified receive queue, but not the transmit side. Clears pointers and zeroes buffers.
void QueueInitRxQueue( Uint16 Which )
{
	Uint16 j;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		//Clear the character counts and pointers
		QueueRxCount[ Which ]	= 0;
		QueueRxNextIn [ Which ]	= 0;
		QueueRxNextOut[ Which ]	= 0;

		//Clear this queue's receive buffer
		for( j=0; j<CHARS_IN_EACH_RX_QUEUE; j++ )
		{
			QueueRxBuffer[ Which ] [ j ] = 0;
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Init a specified transmit queue but not the receive side. Clears pointers and zeroes buffers.
void QueueInitTxQueue( Uint16 Which )
{
	Uint16 j;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		//Clear the character counts and pointers
		QueueTxCount[ Which ]	= 0;
		QueueTxNextIn [ Which ]	= 0;
		QueueTxNextOut[ Which ]	= 0;
		//Used for debug
		QueueMaxDepth[ Which ] = 0;

		//Clear this queue's transmit buffer
		for( j=0; j<CHARS_IN_EACH_TX_QUEUE; j++ )
		{
			QueueTxBuffer[ Which ] [ j ] = 0;
		}

	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Put a character on a receive queue.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @param ThisChar Character to push on the queue. If the queue is full, do nothing, and optionally throw fatal error.
void QueuePushRxChar( Uint16 Which, u8bit ThisChar )
{
	Uint16 NextPosition;

	//Is the queue number valid?
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		//Is the queue already full?
		if( QueueRxCount[ Which ] < CHARS_IN_EACH_RX_QUEUE )
		{
			//There's room on the queue. Store the char in the buffer.
			NextPosition = QueueRxNextIn [ Which ];
			QueueRxBuffer[ Which ] [ NextPosition ] = ThisChar;
			//move the pointer ahead by one
			QueueRxNextIn[ Which ]++;
			//Handle wrap
			if( QueueRxNextIn[ Which ] >= CHARS_IN_EACH_RX_QUEUE )
			{
				QueueRxNextIn[ Which ] = 0;
			}
			//Bump up the count
			QueueRxCount[ Which ]++;

			#if MONITOR_QUEUE_LEVELS
			//See if this is a new maximum level for this queue
			if( QueueRxCount[ Which ] > QueueMaxDepth[ Which ] )
			{
				QueueMaxDepth[ Which ] = QueueRxCount[ Which ];
			}
			#endif
		}
		//If we decided this is really bad, crash the system for this
		#if FATAL_ERROR_FOR_QUEUE_OVERFLOW
		else
		{
			FatalError( FATAL_ERROR_OVERFLOW_RXQUEUE, Which );
		}
		#endif
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Put a character on a transmit queue.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @param ThisChar Character to push on the queue. If the queue is full, do nothing, and optionally throw fatal error.
void QueuePushTxChar( Uint16 Which, u8bit ThisChar )
{
	Uint16 NextPosition;

	//Is the queue number valid?
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		//Is the queue already full?
		if( QueueTxCount[ Which ] < CHARS_IN_EACH_TX_QUEUE )
		{
			//There's room on the queue. Store the char in the buffer.
			NextPosition = QueueTxNextIn [ Which ];
			QueueTxBuffer[ Which ] [ NextPosition ] = ThisChar;
			//move the pointer ahead by one
			QueueTxNextIn[ Which ]++;
			//Handle wrap
			if( QueueTxNextIn[ Which ] >= CHARS_IN_EACH_TX_QUEUE )
			{
				QueueTxNextIn[ Which ] = 0;
			}
			//Bump up the count
			QueueTxCount[ Which ]++;
		}
		//If we decided this is really bad, crash the system for this
		#if FATAL_ERROR_FOR_QUEUE_OVERFLOW
		else
		{
			FatalError( FATAL_ERROR_OVERFLOW_TXQUEUE, Which );
		}
		#endif
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Pull a character from a receive queue.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @return ThisChar Character to push on the queue. If the queue is full, do nothing, and optionally throw fatal error.
u8bit QueuePullRxChar( Uint16 Which )
{
	Uint8	ThisChar;
	Uint16	PullPosition;

	//Handle the case of bad parms where we don't throw a fatal error
	ThisChar = 0;

	//Is the queue number valid?
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		//Is the queue empty?
		if( QueueRxCount[ Which ] != 0 )
		{
			//There's at least 1 char on the queue. Get the char from the buffer.
			PullPosition = QueueRxNextOut[ Which ];
			ThisChar = QueueRxBuffer[ Which ] [ PullPosition ];
			//move the pointer ahead by one
			QueueRxNextOut[ Which ]++;
			//Handle wrap
			if( QueueRxNextOut [ Which ] >= CHARS_IN_EACH_RX_QUEUE )
			{
				QueueRxNextOut [ Which ] = 0;
			}
			//Decrement the count
			QueueRxCount[ Which ]--;
		}
		//If we decided this is really bad, crash the system for this
		#if FATAL_ERROR_FOR_QUEUE_UNDERFLOW
		else
		{
			FatalError( FATAL_ERROR_UNDERFLOW_RXQUEUE, Which );
		}
		#endif
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif

	return( ThisChar );
}

//! Pull a character from a transmit queue.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @return ThisChar Character to push on the queue. If the queue is full, do nothing, and optionally throw fatal error.
u8bit QueuePullTxChar( Uint16 Which )
{
	u8bit	ThisChar;
	Uint16	PullPosition;

	//Handle the case of bad parms where we don't throw a fatal error
	ThisChar = 0;

	//Is the queue number valid?
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		//Is the queue empty?
		if( QueueTxCount[ Which ] != 0 )
		{
			//There's at least 1 char on the queue. Get the char from the buffer.
			PullPosition = QueueTxNextOut[ Which ];
			ThisChar = QueueTxBuffer[ Which ] [ PullPosition ];
			//move the pointer ahead by one
			QueueTxNextOut[ Which ]++;
			//Handle wrap
			if( QueueTxNextOut [ Which ] >= CHARS_IN_EACH_TX_QUEUE )
			{
				QueueTxNextOut [ Which ] = 0;
			}
			//Decrement the count
			QueueTxCount[ Which ]--;
		}
		//If we decided this is really bad, crash the system for this
		#if FATAL_ERROR_FOR_QUEUE_UNDERFLOW
		else
		{
			FatalError( FATAL_ERROR_UNDERFLOW_TXQUEUE, Which );
		}
		#endif
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif

	return( ThisChar );
}

//! Check if a receive queue is empty.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @retcode TRUE means the queue is empty, FALSE if there is something in it.
Uint16 QueueIsRxQueueEmpty( Uint16 Which )
{
	Uint16 Retcode;

	//This covers the case where the queue number is invalid but we're choosing not to crash for that error.
	Retcode = TRUE;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		if( QueueRxCount[ Which ] != 0 )
		{
			Retcode = FALSE;
		}
		else
		{
			Retcode = TRUE;
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif

	return( Retcode );
}

//! Check if a transmit queue is empty.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @retcode TRUE means the queue is empty, FALSE if there is something in it.
Uint16 QueueIsTxQueueEmpty( Uint16 Which )
{
	Uint16 Retcode;

	//This covers the case where the queue number is invalid but we're choosing not to crash for that error.
	Retcode = TRUE;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		if( QueueTxCount[ Which ] != 0 )
		{
			Retcode = FALSE;
		}
		else
		{
			Retcode = TRUE;
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif

	return( Retcode );
}

//! Check if a receive queue is full.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @retcode TRUE means the queue is empty, FALSE if there is something in it.
Uint16 QueueIsRxQueueFull( Uint16 Which )
{
	Uint16 Retcode;

	//This covers the case where the queue number is invalid but we're choosing not to crash for that error.
	Retcode = TRUE;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		if( QueueRxCount[ Which ] >= CHARS_IN_EACH_RX_QUEUE )
		{
			Retcode = TRUE;
		}
		else
		{
			Retcode = FALSE;
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif

	return( Retcode );
}

//! Check if a transmit queue is full.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @retcode TRUE means the queue is empty, FALSE if there is something in it.
Uint16 QueueIsTxQueueFull( Uint16 Which )
{
	Uint16 Retcode;

	//This covers the case where the queue number is invalid but we're choosing not to crash for that error.
	Retcode = TRUE;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		if( QueueTxCount[ Which ] >= CHARS_IN_EACH_TX_QUEUE )
		{
			Retcode = TRUE;
		}
		else
		{
			Retcode = FALSE;
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif

	return( Retcode );
}

//! Put a string on a receive queue.
//! Overrun handling is by the character queue routine.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @param s String to put on the queue.
void QueuePushRxString( Uint16 Which, u8bit_t *s )
{
	u8bit_t i;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		for( i = 0; s[i] != 0; i++ )
		{
			QueuePushRxChar( Which, s[ i ] );
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Put a string on a transmit queue.
//! Overrun handling is by the character queue routine.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @param s String to put on the queue.
void QueuePushTxString( Uint16 Which, u8bit_t *s )
{
	u8bit_t i;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		for( i = 0; s[i] != 0; i++ )
		{
			QueuePushTxChar( Which, s[ i ] );
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Put a certain number of bytes on a receive queue.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @param s Pointer to string of bytes to put on queue.
//! @param ByteCount Number of bytes to put on queue.
void QueuePushRxNumBytes( Uint16 Which, u8bit *s, u8bit ByteCount )
{
	u8bit_t i;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		for( i = 0; i < ByteCount; i++ )
		{
			QueuePushRxChar( Which, s[ i ] );
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Put a certain number of bytes on a transmit queue.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
//! @param s Pointer to string of bytes to put on queue.
//! @param ByteCount Number of bytes to put on queue.
void QueuePushTxNumBytes( Uint16 Which, u8bit *s, u8bit ByteCount )
{
	u8bit_t i;

	if( Which < NUMBER_OF_UART_QUEUES )
	{
		for( i = 0; i < ByteCount; i++ )
		{
			QueuePushTxChar( Which, s[ i ] );
		}
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Waits till the specified receive queue is empty.
//! An invalid queue is always empty
//! @param Which Queue number. If out of range, optionally declare a fatal error.
void QueueWaitRxQueueEmpty( Uint16 Which )
{
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		while( QueueIsRxQueueEmpty( Which ) == FALSE ) NiceDoggy();
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Waits till the specified transmit queue is empty.
//! An invalid queue is always empty.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
void QueueWaitTxQueueEmpty( Uint16 Which )
{
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		while( QueueIsTxQueueEmpty( Which ) == FALSE ) NiceDoggy();
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Waits till the specified queue is NOT empty.
//! An invalid queue is always empty.
//! @param Which Queue number. If out of range, optionally declare a fatal error.
void QueueWaitRxQueueNotEmpty( Uint16 Which )
{
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		while( QueueIsRxQueueEmpty( Which ) == TRUE ) NiceDoggy();
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}
//! Waits till the specified queue is NOT empty.
//! An invalid queue is always empty
//! @param Which Queue number. If out of range, optionally declare a fatal error.
void QueueWaitTxQueueNotEmpty( Uint16 Which )
{
	if( Which < NUMBER_OF_UART_QUEUES )
	{
		while( QueueIsTxQueueEmpty( Which ) == TRUE ) NiceDoggy();
	}

	//If we decided this is really bad, crash the system for this
	#if FATAL_ERROR_FOR_BAD_QUEUE_NUMBER
	else
	{
		FatalError( FATAL_ERROR_INVALID_QUEUE, Which );
	}
	#endif
}

//! Transfer the contents of a transmit queue to a different receive queue.
//! Used for diagnostics, to deliver a packet without really sending it.
//! No error checking done, but suggest you enable fatal errors for queue code.
//! @param Which1 Queue number for transmit queue.
//! @param Which2 Queue number for queue to receive the data from the transmit queue.
void QueueTransferTxRxQueues( Uint16 Which1, Uint16 Which2 )
{
	while( QueueIsTxQueueEmpty( Which1 ) == FALSE )
	{
		QueuePushRxChar( Which2, QueuePullTxChar( Which1 ) );
	}
}


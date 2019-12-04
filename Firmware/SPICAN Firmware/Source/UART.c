/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-09-01 12:33:46 -0400 (Fri, 01 Sep 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/UART.c $ URL of repository
 *
 * $Rev:: 2042                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */
#include "ProjectInclude.h"

//! @file
//! This file containts the code that supports both UART (SCI) ports, A and B, within the DSP;
//! in addition, it interfaces with the external CPLD, which controls the serial interface that UARTA is fed through

//! Define the starting value of the UART debug flag, FALSE (so UARTs function as normal)
boolean disableUARTsForDebug = FALSE;

//! Initialize the UARTA port

//! Define a transmission "character", enable the appropriate clocks, set the baud rate to the argument,
//! and finally enable the UART, in default RS232 mode.
//! @param baud		Defines the desired baud rate for the UART. Actual baud rate varies by a small percentage (because of roundoff error)
void InitUARTA( Uint32 baud )
{
	InitUARTAGPIO();				// set up the GPIO control registers for UARTA functionality

	UARTAComm					= 7;		// 1 stop bit, no parity, 8 character bits, idle-line protocol, no loopback, async mode
	UARTACtrl1					= 3;		// enable TX, RX, internal SCICLK; disable RX ERR, SLEEP, TXWAKE
	UARTACtrl2.bit.TXINTENA		= 1;		//enable transmit interrutps
	UARTACtrl2.bit.RXBKINTENA	= 1;		//enable receiver (data or break) interrutps
	UARTA_RUN_IN_DEBUG			= 1;		//let it run during emulator breaks

	SetBaudUARTA(baud);				// set the baud rate to the argument

	SelUARTAInterface(SEL_RS232);	// set the default UARTA interface to RS232
}

//! Control the state of the FIFO features for a given UART.
//! Might need to turn the features off to talk to a debug terminal
//! @param Which Specifies UART A (0) or B (nonzero)
//! @param Control TRUE means turn them on, FALSE means turn them off.
void UartFifoControl( Uint16 Which, Uint16 Control)
{
	if( Which == 0 )
	{
		//Uart A
		if( Control == 0 )
		{
			//Disable FIFO
			UARTA_FIFO_ENABLE	= 0;
			//Hold the FIFO in reset
			UARTA_FIFO_RESET	= 0;
		}
		else
		{
			//Enable FIFO
			UARTA_FIFO_ENABLE	= 1;
			//Make sure the FIFO is not in reset
			UARTA_FIFO_RESET	= 1;
		}
	}
	else
	{
		//Uart B
		if( Control == 0 )
		{
			//Disable FIFO
			UARTB_FIFO_ENABLE	= 0;
			//Hold the FIFO in reset
			UARTB_FIFO_RESET	= 0;
		}
		else
		{
			//Enable FIFO
			UARTB_FIFO_ENABLE	= 1;
			//Make sure the FIFO is not in reset
			UARTB_FIFO_RESET	= 1;
		}
	}
}

//! Select the interface to be enabled on UARTA

//! Communicate with the on-board CPLD in order to select for RS232, RS485,
//! Ethernet, or USB serial interface (as defined in ProDCPLD.h)
//! @param interface	Only the two LSBs are read - can also use macro definitions
//! 					SEL_RS232, SEL_USB, SEL_RS485, and SEL_ETHERNET
void SelUARTAInterface( Uint16 interface )
{
	MISC_OUTPUT_PORT = interface;	// load "interface" argument into address pointed to by MISC_OUTPUT_PORT definition
}

//! Initialize the UARTB port

//! Define a transmission "character", enable the appropriate clocks, set the baud rate, and enable the UART
//! @param baud		Defines the desired baud rate for the UART. Actual baud rate varies by a small percentage (because of roundoff error)
void InitUARTB ( Uint32 baud )
{
	InitUARTBGPIO();		// set up the GPIO control registers for UARTB functionality

	UARTBComm					= 7;		// 1 stop bit, no parity, 8 character bits, idle-line protocol, no loopback, async mode
	UARTBCtrl1					= 3;		// enable TX, RX, internal SCICLK; disable RX ERR, SLEEP, TXWAKE
	UARTBCtrl2.bit.TXINTENA		= 1;		//enable transmit interrutps
	UARTBCtrl2.bit.RXBKINTENA	= 1;		//enable transmit interrutps
	UARTB_RUN_IN_DEBUG			= TRUE;		//let it run during emulator breaks

	SetBaudUARTB(baud);		// set the baud rate to the argument
}

//! Initialize GPIO for the UARTA

//! Set the GPIO control registers, selecting GPIOF5 as the UARTA receiver (RxD0), and GPIOF4 as the transmitter (TxD0)
void InitUARTAGPIO( void )
{
	EALLOW;					// enable editing of GPIO registers

	UARTARxMUX();			// select for RxD0 (SCIA)
	UARTATxMUX();			// select for TxD0 (SCIA)

	EDIS;					// disable editing
}

//! Initialize GPIO for the UARTB

//! Set the GPIO control registers, selecting GPIOG5 as the UARTA receiver (RxD1), and GPIOG4 as the transmitter (TxD1)
void InitUARTBGPIO( void )
{
	EALLOW;					// enable editing of GPIO registers

	UARTBRxMUX();			// select for RxD1 (SCIB)
	UARTBTxMUX();			// select for TxD1 (SCIB)

	EDIS;					// disable editing
}

//! Check to see if a specified UART's transmit FIFO is full.
//! @param Channel Which FIFO to check.
//! @return TRUE means the transmit FIFO is full, FALSE means not full.
Uint16 InternalUartIsTxFIFOFull( Uint16 Channel )
{
	Uint16 Retcode;

	Retcode = FALSE;

	if( Channel == 0 )
	{
		//If the count of used FIFO locations is 16, it's full
		if( UARTA_TX_FIFO_COUNT == FIFO_FULL_LEVEL )
		{
			Retcode = TRUE;
		}
	}
	else
	{
		//If the count of used FIFO locations is 16, it's full
		if( UARTB_TX_FIFO_COUNT == FIFO_FULL_LEVEL )
		{
			Retcode = TRUE;
		}
	}
	return( Retcode );
}

//! Check to see if a specified UART's receive FIFO is empty.
//! @param Channel Which FIFO to check.
//! @return TRUE means the transmit FIFO is full, FALSE means not full.
Uint16 InternalUartIsRxFIFOEmpty( Uint16 Channel )
{
	Uint16 Retcode;

	Retcode = FALSE;

	if( Channel == 0 )
	{
		//If the count of used FIFO locations is 0, it's empty
		if( UARTA_RX_FIFO_COUNT == 0 )
		{
			Retcode = TRUE;
		}
	}
	else
	{
		//If the count of used FIFO locations is 0, it's empty
		if( UARTB_RX_FIFO_COUNT == 0 )
		{
			Retcode = TRUE;
		}
	}
	return( Retcode );
}

//! Get a character from the specified uart. ONLY WORKS WITH FIFO MODE. Handles errors if any.
//! @param Channel Which internal uart to check.
//! @return Character found in the uart. If there was an error, the character will be BAD_CHAR which is larger than 8 bits. If empty is will be NO_CHAR
Uint16 InternalUartGetFIFOCharacter( Uint16 Channel )
{
	Uint16 UartChar;

	if( Channel == 0 )
	{
		//If the count of used FIFO locations is 0, it's empty
		if( UARTA_RX_FIFO_COUNT == 0 )
		{
			UartChar = NO_CHAR;
		}
		else
		{
			//There's at least one character waiting in the FIFO.
			//Check if the error bit in the status word is set. If so, it must be manually cleared.
			if( SciaRegs.SCIRXST.bit.RXERROR == 1 )
			{
				SciaRegs.SCICTL1.bit.SWRESET = 0;
				SciaRegs.SCICTL1.bit.SWRESET = 1;

				//If the error was due to a break, there may be 2 or 4 chars of trash. Eat them.
				SciaRegs.SCIFFRX.bit.RXFIFORESET	= 0;
				SciaRegs.SCIFFRX.bit.RXFIFORESET	= 1;
				//Let the caller know there was a problem
				UartChar = BAD_CHAR;
			}
			else
			{
				//Normal case - there's a character to read
				UartChar = UARTARxBuff;
				//should be impossible, but check for errors anyway
				if( (UartChar & UART_ERROR_MASK) != 0 )
				{
					UartChar = BAD_CHAR;
				}
			}
		}
	}
	else
	{
		//If the count of used FIFO locations is 0, it's empty
		if( UARTB_RX_FIFO_COUNT == 0 )
		{
			UartChar = NO_CHAR;
		}
		else
		{
			//There's at least one character waiting in the FIFO.
			//Check if the error bit in the status word is set. If so, it must be manually cleared.
			if( ScibRegs.SCIRXST.bit.RXERROR == 1 )
			{
				ScibRegs.SCICTL1.bit.SWRESET = 0;
				ScibRegs.SCICTL1.bit.SWRESET = 1;

				//If the error was due to a break, there may be 2 or 4 chars of trash. Eat them.
				ScibRegs.SCIFFRX.bit.RXFIFORESET	= 0;
				ScibRegs.SCIFFRX.bit.RXFIFORESET	= 1;
				//Let the caller know there was a problem
				UartChar = BAD_CHAR;
			}
			else
			{
				//Normal case - there's a character to read
				UartChar = UARTBRxBuff;
				//should be impossible, but check for errors anyway
				if( (UartChar & UART_ERROR_MASK) != 0 )
				{
					UartChar = BAD_CHAR;
				}
			}
		}
	}
	return( UartChar );
}

//! Control the transmit interrupt for the given UART channel.
//! @param Which Which UART channel
//! @param TxIntrControl FALSE means just enable receive interrupts on the UART, TRUE means Tx and Rx interrupts enabled.
void InternalUartTXInterruptControl( Uint16 Which, Uint16 TxIntrControl )
{
	if( TxIntrControl == FALSE )
	{
		//Enable Rx data interrupt only
		if( Which == UARTA )
		{
			//Enable receive interrupts
			SciaRegs.SCIFFRX.bit.RXFFIENA		= 1;
			//Disable transmit interrupts
			SciaRegs.SCIFFTX.bit.TXFFIENA		= 0;
			//Turn off the regular receive/break and transmit interrupts, not used in FIFO mode
			SciaRegs.SCICTL2.bit.RXBKINTENA		= 0;
			SciaRegs.SCICTL2.bit.TXINTENA		= 0;
		}
		else
		{
			//Enable receive interrupts
			ScibRegs.SCIFFRX.bit.RXFFIENA		= 1;
			//Disable transmit interrupts
			ScibRegs.SCIFFTX.bit.TXFFIENA		= 0;
			//Turn off the regular receive/break and transmit interrupts, not used in FIFO mode
			ScibRegs.SCICTL2.bit.RXBKINTENA		= 0;
			ScibRegs.SCICTL2.bit.TXINTENA		= 0;

		}
	}
	else
	{
		//Enable both Rx interrupt and transmit interrupt
		if( Which == UARTA )
		{
			//Enable receive interrupts
			SciaRegs.SCIFFRX.bit.RXFFIENA		= 1;
			//Enable transmit interrupts
			SciaRegs.SCIFFTX.bit.TXFFIENA		= 1;
			//Turn off the regular receive/break and transmit interrupts, not used in FIFO mode
			SciaRegs.SCICTL2.bit.RXBKINTENA		= 0;
			SciaRegs.SCICTL2.bit.TXINTENA		= 0;

		}
		else
		{
			//Enable receive interrupts
			ScibRegs.SCIFFRX.bit.RXFFIENA		= 1;
			//Enable transmit interrupts
			ScibRegs.SCIFFTX.bit.TXFFIENA		= 1;
			//Turn off the regular receive/break and transmit interrupts, not used in FIFO mode
			ScibRegs.SCICTL2.bit.RXBKINTENA		= 0;
			ScibRegs.SCICTL2.bit.TXINTENA		= 0;
		}
	}
}

//! Set the baud rate of UARTA

//! Calculate the equivalent baud rate (brr) from the argument, otherwise preserving the state of the UART.
//! @param baud		Defines the desired baud rate for the UART. Actual baud rate varies by a small percentage (because of roundoff error).
//!					If baud isn't within predefined limits, the routine automatically limits it.
void SetBaudUARTA( Uint32 baud )
{
	Uint16 brr = 0;								// baud rate register equivalent
	Uint32 divisor = 0;							// used for intermittent error-checking in calculation of brr

	UARTACtrl1 &= ~0x0020;						// disable UART A, by turning off bit 5

	if (baud > MAX_BAUD)						// if baud rate supercedes limits, reassign it with scaled back number
	{
		baud = MAX_BAUD;
	}
	else if (baud < MIN_BAUD)
	{
		baud = MIN_BAUD;
	}

	divisor = baud * 8;
	if (divisor != 0)							// check to make sure that the divisor didn't magically become a divide-by-0 problem
	{
		brr = LSPCLK_VAL / divisor - 1;			// calculate the virtual baudDiv from the given baud rate, (baudDiv="BRR") = (LSPCLK)/(baud*8)) - 1
	}
	else										// if it did, reassert that baud = MIN_BAUD
	{
		brr = LSPCLK_VAL / (MIN_BAUD * 8) - 1;
	}

	//$$$ The formula doesn't work right for 125k, and it has to exactly match the Dev2, so handle that here
	//If the brr variable were a float with rounding, it would work.
	if( baud == 125000)
	{
		brr = 37;
	}

	UARTABaudHi = 0xff & (brr >> 8);			// port the calculated brr into high and low baud rate definition registers
	UARTABaudLo = 0xff & brr;

	UARTACtrl1 |= 0x0020;						// reenable UART A, by turning on bit 5
}

//! Set the baud rate of UARTB

//! Calculate the equivalent baud rate (brr) from the argument, otherwise preserving the state of the UART
//! @param baud 	Defines the desired baud rate for the UART. Actual baud rate varies by a small percentage (because of roundoff error)
//!					If baud isn't within predefined limits, the routine automatically limits it
void SetBaudUARTB( Uint32 baud )
{
	Uint16 brr = 0;								// baud rate register equivalent
	Uint32 divisor = 0;							// used for intermittent error-checking in calculation of brr

	UARTBCtrl1 &= ~0x0020;						// disable UART B, by turning off bit 5

	if (baud > MAX_BAUD)						// if baud rate supercedes limits, reassign it with scaled back number
	{
		baud = MAX_BAUD;
	}
	else if (baud < MIN_BAUD)
	{
		baud = MIN_BAUD;
	}

	divisor = baud * 8;
	if (divisor != 0)							// check to make sure that the divisor didn't magically become a divide-by-0 problem
	{
		brr = LSPCLK_VAL / divisor - 1;			// calculate the virtual baudDiv from the given baud rate, (baudDiv="BRR") = (LSPCLK)/(baud*8)) - 1
	}
	else										// if it did, reassert that baud = MIN_BAUD
	{
		brr = LSPCLK_VAL / (MIN_BAUD * 8) - 1;
	}

	//$$$ The formula doesn't work right for 125k, and it has to exactly match the Dev2, so handle that here
	//If the brr variable were a float with rounding, it would work.
	if( baud == 125000)
	{
		brr = 37;
	}

	UARTBBaudHi = 0xff & (brr >> 8);			// port the calculated brr into high and low baud rate definition registers
	UARTBBaudLo = 0xff & brr;

	UARTBCtrl1 |= 0x0020;						// reenable UART B, by turning on bit 5
}

//! Output a single (8-bit) character to the UARTA

//! Send a character to the transmit buffer for UART A, ensuring that it is empty before and after
//! @param data 	Defines an 8-bit ASCII character to be transmitted through the UARTA
//!					The upper 9 bits of the input are masked out, so a valid character is always sent
void SendCharUARTA( Uint16 data )
{
	if (disableUARTsForDebug)					// test UART disable flag, and only write the character if it isn't set
	{
		return;
	}
	else
	{
		data &= 0x007F;							// mask out the upper 9 bits, leaving the lower 7 bits as valid character data
		while (UARTACtrl2.bit.TXEMPTY == 0);	// wait until both the transmitter buffer and shift register are empty
		UARTATxBuff = data;						// fill the buffer with the given character
		asm(" RPT #11 || NOP");					// wait for full flag to be set
		while (UARTACtrl2.bit.TXEMPTY == 0);	// wait for buffer to be empty again
	}
}

//! Output a string to the UARTA

//! Send a null-terminated string to the UARTA transmit buffer one character at a time, ensuring it is empty before, between characters, and after
//! @param strData		Points to a string of 16-bit integer "characters"
void SendStrUARTA( char16* strData )
{
	Uint16 strIndex = 0;

	if (disableUARTsForDebug)					// test UART disable flag, and only write the string if it isn't set
	{
		return;
	}
	else
	{
		while(strData[strIndex] != NULL)		// only executes until it finds a null in the string
		{
			SendCharUARTA(strData[strIndex]);	// pass the character indexed by strIndex
			strIndex++;							// increment the index variable
		}
	}
}

//! Get the (8-bit) character stored in the UARTA

//! Wait until a character has been received (and the flag is raised), and read and return the contents of the UARTA receive buffer
//! @return data	The character received from the UARTA Rx buffer; only the lower 8 bits are relevant ASCII code
Uint16 GetCharUARTA( void )
{
	Uint16 data = 0;

	if (disableUARTsForDebug)					// test UART disable flag, and only read the character if it isn't set
	{
		return( NULL );
	}
	else
	{
		while (UARTARxReady == 0);	// wait until the ready flag is set, meaning the receiver buffer is full
		data = UARTARxBuff;			// read from the buffer, which clears the ready flag

		return( data );
	}
}

//! Output a single (8-bit) character to the UARTB

//! Send a character to the transmit buffer for UARTB, ensuring that it is empty before and after
//! @param data		Defines an 8-bit ASCII character to be transmitted through the UARTB
//!					The upper 9 bits of the input are masked out, so a valid character is always sent
void SendCharUARTB( Uint16 data )
{
	if (disableUARTsForDebug)					// test UART disable flag, and only write the character if it isn't set
	{
		return;
	}
	else
	{
		data &= 0x007F;							// mask out the upper 9 bits, leaving the lower 7 bits as valid character data
		while (UARTBCtrl2.bit.TXEMPTY == 0);	// wait until both the transmitter buffer and shift register are empty
		UARTBTxBuff = data;						// fill the buffer with the given character
		asm(" RPT #11 || NOP");					// wait for full flag to be set
		while (UARTBCtrl2.bit.TXEMPTY == 0);	// wait for buffer to be empty again
	}
}

//! Output a string to the UARTB

//! Send a null-terminated string to the UARTB transmit buffer one character at a time, ensuring it is empty before, between characters, and after
//! @param strData		Points to a string of 16-bit integer "characters"
void SendStrUARTB( char16* strData )
{
	Uint16 strIndex = 0;

	if (disableUARTsForDebug)							// test UART disable flag, and only write the string if it isn't set
	{
		return;
	}
	else
	{
		while(strData[strIndex] != NULL)				// only executes until it finds a null in the string
		{
			SendCharUARTB((Uint16)strData[strIndex]);	// pass the character indexed by strIndex
			strIndex++;									// increment the index variable
		}
	}
}

//! Get the (8-bit) character stored in the UARTB

//! Wait until a character has been received (and the flag is raised), and read and return the contents of the UARTB receive buffer
//! @return data	The character received from the UARTB Rx buffer; only the lower 8 bits are relevant ASCII code
Uint16 GetCharUARTB( void )
{
	Uint16 data = 0;

	if (disableUARTsForDebug)		// test UART disable flag, and only read the character if it isn't set
	{
		return( NULL );
	}
	else
	{
		while (UARTBRxReady == 0);	// wait until the ready flag is set, meaning the receiver buffer is full
		data = UARTBRxBuff;			// read from the buffer, which clears the ready flag

		return( data );
	}
}

//! Wait until the user presses a particular key in the specific UART interface

//! That's pretty much it. This is to be used in a text interface (i.e. Putty) connected to either UARTA or UARTB. It tells the user to press the key (by name) to
//! continue, and simply ignores all received characters until the user presses that key, then returns. THIS IS SIMPLY A WRAPPER FUNCTION FOR waitForMany, WITH A
//! SINGLE ELEMENT ARRAY OF 'ENTER'
//! @param thisKey			An enumerated type that indicates the ASCII code for particular keys
//! @param whichUART		Designates which UART to look at, either UARTA or UARTB
void waitFor( keyName thisKey, UARTChannel whichUART)
{
	if (disableUARTsForDebug)					// test UART disable flag, and only run the routine if it isn't set
	{
		return;
	}
	else
	{
		waitForMany(&thisKey, 1, whichUART);
	}
}

//! Wait until the user presses one of an array of keys in the specific UART interface

//! This is to be used in a text interface (i.e. Putty) connected to either UARTA or UARTB. It tells the user to press the key(s) (by name) to continue,
//! and simply ignores all received characters until the user presses one of those keys. It returns the enumerated key name.
//! @param *theseKeys		Pointer to an array of this special type, whose values indicate the ASCII code for particular key(s)
//! @param howManyKeys		The number of keys to look for (i.e. the relevant length of the array); maximum value is 4
//! @param whichUART		Designates which UART to look at, either UARTA or UARTB
//! @return foundKey		The key (from the input list) pressed first by the user
keyName waitForMany( keyName *theseKeys, Uint16 howManyKeys, UARTChannel whichUART )
//keyName waitForMany( keyName *theseKeys, Uint16 howManyKeys, UARTChannel whichUART, boolean updateEncoder, void *SpringParametersPtr )
{
	Uint16 elementIndex = 0;													// an iteration variable, to move through arrays
	Uint16 newChar = 0;															// the user-input character
	boolean newCharFlag = FALSE;												// whether the new character is one of the given keys
	keyName foundKey = NULLKEY;													// the key that is found as user input

	if (whichUART != UARTA && whichUART != UARTB)								// error-check the given UART channel
	{
		whichUART = UARTB;
	}

	if (disableUARTsForDebug || howManyKeys == 0)								// test UART disable flag and/or if user-defined key array is empty...
	{
		return( NULLKEY );														// and only run the routine if neither condition is true
	}
	else
	{
		if (howManyKeys > 5)													// there are only 5 possible keys, so if the length is designated as more, this only looks at the first 5 elements of the array
		{
			howManyKeys = 5;
		}

		while(!newCharFlag)														// continuously monitor...
		{
			if (whichUART == UARTA)												// the appropriate UART channel...
			{
				newChar = GetCharUARTA();										// for user input...
			}
			else																// UARTB, then
			{
				newChar = GetCharUARTB();
			}

			for (elementIndex = 0; elementIndex < howManyKeys; elementIndex++)
			{
				if (newChar == *(theseKeys + elementIndex))						// until the new character matches one of the user input keys
				{
					foundKey = (keyName)newChar;
					newCharFlag = TRUE;
					break;														// and break out of the loop when it does
				}
			}
		}
		return( foundKey );														// and return the first-found key once this happens
	}
}

//! Take a stream of user input from a UART channel, adjusting for non-text characters (i.e. backspace)

//! This function is a way to take a stream of mixed command and text user input from the argued UART channel. It continues to read input until either the user indicates
//! a stop (by the ENTER, DELETE, or ESCAPE keys) or the "length"-character buffer fills (with innate null-termination). The code also correctly handles the backspace key within
//! the buffer (and maps a tab to a single space), and user input is printed in real-time.
//! @param inputUART	Designates which UART to read from, either UARTA or UARTB
//! @param outputUART	Designates which UART to write to, either UARTA or UARTB
//! @param *buffer		A "length"-element buffer to be filled with parsed user input, including a final NULL character
//! @param length		The maximum length of data in the buffer, including the final NULL character
//! @retval TRUE		Indicates that ENTER has been pressed prior to, or exactly at, the buffer being filled (including NULL-termination)
//! @retval FALSE		Indicates that ESCAPE or DELETE was pressed before the user tried to over-write the buffer, or they tried to overwrite the buffer (still NULL-terminated),
//!						or that there was some indexing/sizing error in the buffer
boolean parseUserInput( UARTChannel inputUART, UARTChannel outputUART, char16 *buffer, Uint16 length )
{
	boolean readAgain = TRUE;											// the flag to run the while loop; if a condition arises where the loop needs to exit, this values goes FALSE and the routine returns as appropriate
	char16 inputChar = 0;												// storage buffer for a single user input character, including commands (i.e. backspace)
	Uint16 bufferIndex = 0;												// the index into the string buffer, assumed to be pointing to the current-write location at the start of the while loop
	boolean RetCode = TRUE;												// value to be returned; indicates how the input string was ended (with an enter (T) or an escape/delete/overwrite (F))

	if (inputUART != UARTA && inputUART != UARTB)						// error-check the given input UART channel
	{
		inputUART = UARTB;
	}

	if (outputUART != UARTA && outputUART != UARTB)						// and the output channel
	{
		outputUART = UARTB;
	}

	if (disableUARTsForDebug)											// test UART disable flag, and only write the string if it isn't set
	{
		return( FALSE );
	}
	else
	{
		if (length <= 1)												// if the buffer is an inappropriate length, 0 or 1
		{
			*(buffer) = NULL;											// .....fill the pointer location with the NULL-termination
			readAgain = FALSE;											// .....and bypass the while loop completely,
			RetCode = FALSE;											// .....returning a FALSE flag
		}
		else															// otherwise, just clear everything in preparation for the loop filling it
		{
			for (bufferIndex = 0; bufferIndex < length; bufferIndex++)
			{
				*(buffer + bufferIndex) = 0;
			}
			bufferIndex = 0;											// and make sure the bufferIndex is re-zeroed
		}

		while(readAgain == TRUE)										// if the buffer is an appropriate length, for as long as this flag indicates continued reading, operate as a state machine
		{
			if (bufferIndex >= length)									// if we somehow get into a state where the index moves beyond the bounds of the buffer (which should never happen if I've coded this right...)
			{															// ^^^**famous last words**
				bufferIndex = length - 1;								// .....assert that the index is the last element of the buffer
				*(buffer + bufferIndex) = NULL;							// .....overwrite the last character with a NULL-termination
				readAgain = FALSE;										// .....set the appropriate error flags
				RetCode = FALSE;
				break;													// .....and immediately break out of the state machine with the FALSE/error flags set
			}

			if (inputUART == UARTA)										// first, read from whichever UART channel is specified
			{
				inputChar = GetCharUARTA();
			}
			else if (inputUART == UARTB)
			{
				inputChar = GetCharUARTB();
			}

			switch (inputChar)											// and act depending on the character:
			{
				case 0x7F:												// the character is a functional backspace (ASCII-termed 'delete', keyboard <Backspace>)
					if (bufferIndex > 0)								// .....if we're at any position but the first
					{
						bufferIndex--;									// ..........backup the position
						*(buffer + bufferIndex) = 0;					// ..........clear what its pointing to
						if (outputUART == UARTA)						// ..........send the actual backspace command to the right UART
						{
							SendCharUARTA(0x7F);
						}
						else if (outputUART == UARTB)
						{
							SendCharUARTB(0x7F);
						}
						readAgain = TRUE;								// ..........and assert that we'd like to read again
					}
					else												//.....and if we're at the first position
					{
						readAgain = TRUE;								//..........do nothing except asserting readAgain as TRUE
					}
					break;
				case 0xD:												// the character is a functional enter (ASCII-termed 'carriage return', keyboard ENTER)
					*(buffer + bufferIndex) = NULL;						// .....terminate the string with the required NULL character
					readAgain = FALSE;									// .....lower the flag, so the loop ends and the routine returns
					RetCode = TRUE;										// .....and return a "success" flag
					break;
				case 0x1B:												// the character is a functional escape (ASCII-termed 'escape', keyboard ESCAPE and DELETE)
					*(buffer + bufferIndex) = NULL;						// .....terminate the string with the required NULL character
					readAgain = FALSE;									// .....lower the readAgain flag, so the loop ends and the routine turns
					if (inputUART == UARTA)								// .....clear the appropriate UART Rx buffer, because DELETE can transmit in a second character byte
					{
						GetCharUARTA();
					}
					else if (inputUART == UARTB)
					{
						GetCharUARTB();
					}
					RetCode = FALSE;									// .....and return a "failure" flag
					break;
				default:												// the character is anything else, including whitespace
					if (inputChar == 0x9)								// .....if the character is a tab
					{
						inputChar = 0x20;								// .....map it to a single space! (because the user shouldn't be pressing tab anyway)
					}

					if (bufferIndex <= length - 2)						// .....if there are at least 2 open string elements, meaning there is at least space for the final character and the NULL-termination
					{													// .....(which will be assigned next iteration, if appropriate)
						*(buffer + bufferIndex) = inputChar;			// ..........store the character in the right element know that, if bufferIndex == length-2, the next read MUST be an ENTER
																		// ..........in order for the input stream to be successful, or an ESCAPE/DELETE or overwrite to be unsuccessful
						if (outputUART == UARTA)						// ..........send the character to the right UART
						{
							SendCharUARTA(inputChar);
						}
						else if (outputUART == UARTB)
						{
							SendCharUARTB(inputChar);
						}
						bufferIndex++;									// ..........increment the string buffer index, which now points to the last element if it started as ==length-2
						readAgain = TRUE;								// ..........and assert a read-again state
					}
					else if (bufferIndex == length-1)					// .....if there is exactly 1 open string element, but the user has tried to enter another non-terminate character
					{
						*(buffer + bufferIndex) = NULL;					// ..........fill the last index with the NULL-termination
						readAgain = FALSE;								// ..........no more reads are possible
						RetCode = FALSE;								// ..........but the input read didn't end on the user's terms, so indicate that with a FALSE return value
					}
					break;
			}
		}
		return( RetCode );												// return the appropriate flag, as set in the code above
	}
}

//! Print the binary form of a variable to the UARTB channel

//! This is helpful for debugging, specifically functionality having to do with the one-wire interface (where strings of bits are passed back and forth and would otherwise
//! require an oscilliscope to view. This takes in a pointer to a data byte, a variable size/type variableCode, and a message to print alongside the output. If the variable is a
//! Uint-16, 32, or 64, define its length and cast the data to a Uint64 storage variable. Output formatting strings, and then cycle through each bit of the variable, outputing
//! the appropriate character and a '.' between nibbles/hex character groupings for readability.
//! @param *dataPtr			A pointer to the desired variable, of unknown type. Uint16, Uint32, and Uint64 variable types are supported.
//! @param variableCode 	This is a numerical code that indicates the variable type of *dataPtr. 0 is Uint16, 1 is Uint32, 2 is Uint64,
//!							3 is an array of numElements Uint16s with 8 MSBs of each element masked out, 4 is the same as 3 but with all 16 bits
//! @param numElements		The number of elements in the array, if applicable; otherwise, this number is ignored
//! @param message			This is the message that the user wants to print right before the binary string to frame it or otherwise aid in debugging.
void PrintBinaryUARTB( void *dataPtr, Uint16 variableCode, Uint16 numElements, char16* message )
{
	Uint16 thisbit = 0;														// each individual bit value is stored intermittently here, when appropriate
	Uint16 thisByte = 0;													// each individual byte value is stored intermittently here, when appropriate
	Uint16 i = 0;															// a counting variable for cycling through the input data
	Uint16 nibbleCount = 0;													// this is incremented (0, 1, 2, 3, reset) after each bit, to indicate when a '.' should be printed to visually divide nibbles
	Uint16 wordCount = 0;													// this is incremented after each bit, to indicate when a '|' should be printed between words/elements
	Uint16 length;															// the length of the input data, when appropriate
	Uint64 data;															// stores the value of the input data once it is dereferenced
	Uint64 importantBitInLSB;												// used within the scanner loop to store the current working bit from data (in the LSB) and nothing else
	Uint16* newDataPtr;														// a pointer to Uint16, used when variableCode is 3 (and this receives an array of 8-bit elements)
	Uint16 numBitsToUse;													// the number of bits to use in the array elements, if applicable

	if (disableUARTsForDebug)												// test UART disable flag, and only write the string if it isn't set
	{
		return;
	}
	else
	{
		SendStrUARTB("\n\r");												// send the user-defined output message, and move to a new line to prepare for binary output
		SendStrUARTB(message);
		SendStrUARTB("\n\r");

		if (variableCode == 0 || variableCode == 1 || variableCode == 2)	// Uint16, Uint32, or Uint64, dealt with similarly
		{
			switch(variableCode)											// extract the actual data value in one of those three cases by casting...
			{																// ...it to the appropriate pointer, dereferencing the pointer, then casting it to a Uint64
				case 0:														// this is for a Uint16
					length = 16;
					data = (Uint64)	*((Uint16*)dataPtr);
					break;
				case 1:														// and a Uint32
					length = 32;
					data = (Uint64)	*((Uint32*)dataPtr);
					break;
				case 2:														// and a Uint64, which doesn't need to be cast
					length = 64;
					data =			*((Uint64*)dataPtr);
					break;
				default:													// default, "because we're not savages" ~Lloyd
					data = 0L;
					break;
				}

			for (i = length; i > 0; i--)									// scanner loop, which iterates over all bits in the data, starting with the MSB, in order to print them
			{
				importantBitInLSB = (data >> (i-1)) & 0x01;					// shift the relevant bit to index 0 then clear everything else
				thisbit = (Uint16) importantBitInLSB;						// cast it into one word, for usability - this stores either 0x0000 or 0x0001, indicating a binary 0 or 1 respectively

				SendCharUARTB(thisbit + '0');								// if thisbit is 0x0000, output a '0' ASCII character; if thisbit is 0x0001, output a '1' ASCII character

				nibbleCount++;												// increment nibbleCount to indicate another bit printed
				if (nibbleCount == 4 && i != 1)								// and every time 4 bits have been printed, except at the end of the output
				{
					SendCharUARTB('.');										// print a '.' to separate nibbles/hex characters
					nibbleCount = 0;										// and reset the counter
				}
			}
		}
		else if (variableCode == 3 || variableCode == 4)					// an array of Uint16s, either with only 8 LSBs (3) or all bits (4)
		{
			if (variableCode == 3)											// depending on whether it's an array of 8- or 16-relevant-bit Uint16s
			{
				numBitsToUse = 8;											// set the variable to the appropriate number
			}
			else
			{
				numBitsToUse = 16;
			}
			newDataPtr = (Uint16*)dataPtr;									// cast the void pointer to a Uint16 pointer

			for (i = 0; i < numElements*numBitsToUse; i++)					// scanner loop, which iterates over each bit in each element of the data, starting with the MSB of the first element and ending with the LSB of the last element
			{
				thisByte = *(newDataPtr + i/numBitsToUse);					// the working byte is determined by an integer division of i (over numBitsToUse bits)
				thisbit = (thisByte >> ((numBitsToUse - i - 1)
						   %numBitsToUse)) & 0x01;							// and then shift the working bit over to index 0 and clear everything else

				SendCharUARTB(thisbit + '0');								// if thisbit is 0x0000, output a '0' ASCII character; if 0x0001, output a '1'

				wordCount++;												// increment wordCount to indicate another bit printed
				if (wordCount%4 == 0 && i != (numElements*numBitsToUse-1))	// and every time 4 bits have been printed, except at the end of the output
				{
					if (wordCount%numBitsToUse == 0)						// if 8/16 bits (a full word) have been printed
					{
						SendCharUARTB('|');									// print a '|' to separate words
						wordCount = 0;										// and reset the word counter
					}
					else
					{
						SendCharUARTB('.');									// otherwise print a '.' to separate nibbles/hex characters
					}
				}
			}
		}
		else
		{
			SendStrUARTB("Invalid function call.");
		}

		SendStrUARTB("\n\r");												// finish with a newline and carriage return
	}
}

//! Delete a specific number of characters from the current line of the terminal on UARTB

//! numberChars		The number of characters to delete
void DeleteCharsUARTB( Uint16 numberChars )
{
	Uint16 i = 0;						// iteration variable

	for (i = 0; i < numberChars; i++)	// iterate 'numberChars' times
	{
		SendCharUARTB(0x7F);			// and delete characters one at a time
	}
}

//! Test all functionality of the UARTA

//! Test the ability to send and receive an individual character through the UARTA
//! This assumes that the RS232 Tx and Rx pins are connected!
void TestUARTA( void )
{
	if (disableUARTsForDebug)																// test UART disable flag, and only write the string if it isn't set
	{
		return;
	}
	else
	{
		SendStrUARTB("\n\rCharacters sent through RS232 on UARTA: 'A','B'\n\r");			// send various strings
		SendStrUARTB("Characters received through RS232 on UARTA: ");
		SendCharUARTA('A');																	// and characters over UARTA,
		SendCharUARTB(GetCharUARTA());														// and test receipt of characters
		SendCharUARTA('B');
		SendCharUARTB(GetCharUARTA());
		SendStrUARTB("\n\rVerified transmission and receipt of characters over UARTA.\n\r");
	}
}

//! Test all functionality of the UART B

//! Test the ability to send a string and an individual character, and receive a character, through the UARTB
void TestUARTB( void )
{
	Uint16 data[5];																		// this holds user input data
	Uint16 i = 0;																		// a counting variable

	if (disableUARTsForDebug)					// test UART disable flag, and only write the string if it isn't set
	{
		return;
	}
	else
	{
		SetBaudUARTB(UART_INTERFACE_BAUD_RATE);												// adjust the baud rate,
		SendStrUARTB("\n\rSetBAUDUARTB is functional, BAUD reset to 115200.\n\r");			// send various strings,
		SendStrUARTB("Verified transmission of characters and strings over UARTB.\n\r");
		SendStrUARTB("Please enter 5 characters:\n\r");

		for (i = 0; i < 5; i++)
		{
			data[i] = GetCharUARTB();														// take multiple user character inputs,
		}
		for (i = 0; i < 5; i++)
		{
			SendCharUARTB(data[i]);															// and parrot them back, all using UARTB to test receipt of characters
		}
		SendStrUARTB("\n\rVerified receipt of characters over UARTB.\n\r");
	}
}

//! Test all functionality of both UART channels

//! Test the ability to send a string and an individual character, and receive a character, through both UART channels
void TestUARTs( void )
{
	Uint16 i = 0;																	// a counting variable
	Uint16 data[10], newdata[10];													// storing user data, and encoded data
	Uint16 temp = 0;																// a temporary storage variable, for encoding user input

	if (disableUARTsForDebug)					// test UART disable flag, and only write the string if it isn't set
	{
		return;
	}
	else
	{
		DELAY_US(300);
		SendStrUARTB("Hello. Please type a 10-character phrase to be encoded:\n\r");	// send a string on UARTB

		for (i = 0; i < 10; i++)														// and fill an array with user input characters on UARTB
		{
			data[i] = GetCharUARTB();
		}

		for (i = 0; i < 10; i++)														// encode the user input, and while doing so send them over UARTA as individual characters
		{
			SendCharUARTA(data[i]+1);
			temp = i%3;
			newdata[i] = GetCharUARTA() - temp;
		}
		SendStrUARTB("Your encoded phrase is: ");
		for (i = 0; i < 10; i++)
		{
			SendCharUARTB(newdata[i]);													// and finally display the encoded phrase to the user
		}
	}
}

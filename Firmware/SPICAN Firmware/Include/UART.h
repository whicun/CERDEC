/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-06-13 15:31:06 -0400 (Tue, 13 Jun 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/UART.h $ URL of repository
 *
 * $Rev:: 1730                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file contains the function declarations for the on-chip UART ports

#ifndef UART_H_
#define UART_H_

	//! UART debug flag: halts UART communication when set
	extern boolean disableUARTsForDebug;

	//! Select the MUX bit so the port is the UARTA Receiver
	#define UARTARxMUX()				GpioMuxRegs.GPFMUX.bit.SCIRXDA_GPIOF5 = 1
	//! Select the MUX bit so the port is the UARTA Transmitter
	#define UARTATxMUX()				GpioMuxRegs.GPFMUX.bit.SCITXDA_GPIOF4 = 1

	//! UARTA Communications Control Register
	#define UARTAComm		SciaRegs.SCICCR.all
	//! UARTA Control Register 1
	#define UARTACtrl1 		SciaRegs.SCICTL1.all
	//! UARTA Control Register 2
	#define UARTACtrl2		SciaRegs.SCICTL2
	//! UARTA Baud Register, High Bits
	#define UARTABaudHi		SciaRegs.SCIHBAUD
	//! UARTA Baud Register, Low Bits
	#define UARTABaudLo		SciaRegs.SCILBAUD
	//! UARTA Receive Ready Flag (not used in FIFO mode)
	#define UARTARxReady	SciaRegs.SCIRXST.bit.RXRDY
	//! UARTA Receive Data Buffer Register
	#define UARTARxBuff		SciaRegs.SCIRXBUF.all
	//! UARTA Transmit Data Buffer Register
	#define UARTATxBuff		SciaRegs.SCITXBUF
	//! Uart A error flag - summarizes several other errors
	#define UARTARxErrSummary SciaRegs.SCIRXST.

	//! Select the MUX bit so the port is the UARTB Receiver
	#define UARTBRxMUX()				GpioMuxRegs.GPGMUX.bit.SCIRXDB_GPIOG5 = 1
	//! Select the MUX bit so the port is the UARTB Transmitter
	#define UARTBTxMUX()				GpioMuxRegs.GPGMUX.bit.SCITXDB_GPIOG4 = 1

	//! UARTB Communications Control Register
	#define UARTBComm		ScibRegs.SCICCR.all
	//! UARTB Control Register 1
	#define UARTBCtrl1 		ScibRegs.SCICTL1.all
	//! UARTB Control Register 2
	#define UARTBCtrl2		ScibRegs.SCICTL2
	//! UARTB Baud Register, High Bits
	#define UARTBBaudHi		ScibRegs.SCIHBAUD
	//! UARTB Baud Register, Low Bits
	#define UARTBBaudLo		ScibRegs.SCILBAUD
	//! UARTB Receive Ready Flag
	#define UARTBRxReady	ScibRegs.SCIRXST.bit.RXRDY
	//! UARTB Receive Data Buffer Register
	#define UARTBRxBuff		ScibRegs.SCIRXBUF.all
	//! UARTB Transmit Data Buffer Register
	#define UARTBTxBuff		ScibRegs.SCITXBUF

	// Standard BAUD rates
	#define UART_INTERFACE_BAUD_RATE	115200

	//what to return when the uart reports a character error like break or framing error.
	//This value is not possible in 8 bits so it's a good indication of an error.
	#define BAD_CHAR	0x100

	//! There are 2 uppper bits indicating error in the receive register
	#define UART_ERROR_MASK	0xC000

	//This value is not possible in 8 bits so it's a good indication of an error.
	#define NO_CHAR	0x200

	//character that clears screen on PuTTY screen
	#define	CLEAR_SCREEN	0xC

	//FIFO full threshold - 16 is the real value
	#define FIFO_FULL_LEVEL		(16)

	//! Enumerate the two UART channels as variables
	typedef enum
	{
		UARTA,
		UARTB
	} UARTChannel;

	//! Enumerate common keyboard control keys to their ASCII values
	typedef enum
	{
		ENTER		= 0xD,
		BACKSPACE	= 0x7F,
		TAB 		= 0x9,
		ESCAPE		= 0x1B,
		SPACEBAR	= 0x20,
		e			= 0x65,
		v			= 0x76,
		u			= 0x75,
		d			= 0x64,
		NULLKEY		= 0x0
	}keyName;

	void InitUARTA( Uint32 baud );
	void SelUARTAInterface( Uint16 interface );
	void InitUARTB( Uint32 baud );
	void InitUARTAGPIO( void );
	void InitUARTBGPIO( void );
	void SetBaudUARTA( Uint32 baud );
	void SetBaudUARTB( Uint32 baud );
	void UartFifoControl( Uint16 Which, Uint16 Control);
	void SendCharUARTA( Uint16 data );
	void SendStrUARTA( char16* strData );
	Uint16 GetCharUARTA( void );
	void SendCharUARTB( Uint16 data );
	void SendStrUARTB( char16* strData );
	Uint16 GetCharUARTB( void );
	void waitFor( keyName thisKey, UARTChannel whichUART );
	keyName waitForMany( keyName *theseKeys, Uint16 howManyKeys, UARTChannel whichUART );
	boolean parseUserInput( UARTChannel inputUART, UARTChannel outputUART, char16 *buffer, Uint16 length );
	void PrintBinaryUARTB( void *dataPtr, Uint16 variableCode, Uint16 numElements, char16* message );
	void DeleteCharsUARTB( Uint16 numberChars );
	void TestUARTA( void );
	void TestUARTB( void );
	void TestUARTs( void );

#endif /* UART_H_ */

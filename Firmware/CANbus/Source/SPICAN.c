//This file contains code for the SPI to CAN converter used in the CERDEC System

#include "SPICAN.h"
#include "spi.h"

void SPICANReset (void)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_RESET);						//Transmit Reset command
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
}

// Responsible for reading the status of a
// register address on the SPICAN Control Register
// See Pg. 61 in (Table 11-2) for list of addresses
Uint16 SPICANRead (Uint16 Input)
{
	Uint16	RetVal;
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_READ);
	spi_xmit(Input);
	RetVal = spi_recv();
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
	return(RetVal);
}

// Responsible for writing the status of a
// register address on the SPICAN Control Register
// See Pg. 61 in (Table 11-2) for list of addresses
void SPICANWrite (Uint16 ADDR, Uint16 Input)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_WRITE);						//Write command
	spi_xmit(ADDR);								//Write location
	spi_xmit(Input);							//Write Info
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;
}

// Quick polling command that reads several status bits for transmit
// and receive functions.
Uint16 SPICANReadStat (void)
{
	Uint16	RetVal;
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_READ);
	spi_xmit(SPICAN_CANSTAT);
	RetVal = spi_recv();
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
	return(RetVal);
}

void SPICANSetNorm (void)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_WRITE);
	spi_xmit(SPICAN_CANCTRL);
	spi_xmit(0x00);								//Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
}

void SPICANIntEn (void)							//Enables RX interupts for now
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_WRITE);
	spi_xmit(0x2B);
	spi_xmit(0x03);								//Enable RX Interupts
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
}

Uint16 SPICANReadInt (void)
{
	Uint16 RetVal;
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_READ);
	spi_xmit(0x2B);
	RetVal = spi_recv();
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
}

Uint16 SPICANRXStatus (void)
{
	Uint16	RetVal;
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_RXSTAT);
	RetVal = spi_recv();
	RetVal = spi_recv();
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
	return(RetVal);
}

Uint32 SPICANReadBuf1 (void)
{
	Uint32  RetVal;
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_RXBUF1);
	RetVal = spi_recv() << 24;
	RetVal |= spi_recv() << 16;
	RetVal |= spi_recv() << 8;
	RetVal |= spi_recv();
	spi_recv();
	spi_recv();
	spi_recv();
	spi_recv();
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
	return(RetVal);
}

// Refer to Table 11-2 and pages 19 - 21 for formatting message
void SPICANReadSetT0Message(Uint16 canAddress, Uint16 numBytes, char *buf)
{
	// Set the new address
	SPICAN_SetT0Addr(canAddress);

	// Set the data
	SPICAN_SetT0Data(numBytes, buf);
}

// For specifics on format look at Pg 19/20 in the SPI CAN documentation
// canAddress -> XXXXX HHHHHHHH LLL
void SPICAN_SetT0Addr(Uint16 canAddress)
{
	Uint16 addrHi, addrLo;

	// First grab the important bits
	addrHi = canAddress & 0x7F8;
	addrLo = canAddress & 0x7;

	// Now shift them to the right places
	addrHi = addrHi >> 3;
	addrLo = addrLo << 5;

	// Set up the ID (X - unused, H - Hi, L - Lo)
	// Want to first send 0bHHHHHHHH
	SPICANWrite(SPICAN_TXB0SIDH, addrHi); // H (SID10 - SID3)
	// Then want to send 0bLLL00000
	SPICANWrite(SPICAN_TXB0SIDL, addrLo); // L (SID2 - SID0)
}

// For specifics on format look at Pg 21 in the SPI CAN documentation
void SPICAN_SetT0Data(Uint16 numBytes, char *buf)
{
	Uint16 k;

	// Send how much data content there is
	SPICANWrite(SPICAN_TXB0DLC, numBytes);

	// Fill in the data buffer
	for(k = 0; k < numBytes; k++)
	{
		SPICANWrite(SPICAN_TXB0D0 + k, buf[k]);
	}
}

void SPICAN_T0_RTS (void)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_RTS + 0x1);
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
}

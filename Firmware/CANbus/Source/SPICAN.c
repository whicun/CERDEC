//This file contains code for the SPI to CAN converter used in the CERDEC System

#include "SPICAN.h"
#include "spi.h"

void SPICANReset (void)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_RESET);						//Transmit Reset command
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
}

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

void SPICANWrite (Uint16 ADDR, Uint16 Input)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_WRITE);						//Write command
	spi_xmit(ADDR);								//Write location
	spi_xmit(Input);							//Write Info
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;
}

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

//This file contains code for the SPI to CAN converter used in the CERDEC System

#include "SPICAN.h"
#include "spi.h"
#include "common.h"



void SPICANInit(void)
{
	SPICANReset();					// Reset Command
	SPICANReadStat();				// Make sure we're in config mode
	delay_us(10);					// Need some form of delay
	
	// Factory Settings
	// SPICANWrite(0x2A, 0x44);		// Setting up CNF1
	// SPICANWrite(0x2A, 0x40);		// Setting up CNF1
	// SPICANWrite(0x29, 0x98);		// Setting up CNF2
	// SPICANWrite(0x28, 0x01);		// Setting up CNF3

	// For configuration details, see note at bottom
	SPICANWrite(0x2A, 0x81);		// Setting up CNF1
	SPICANWrite(0x29, 0xD0);		// Setting up CNF2
	SPICANWrite(0x28, 0xC2);		// Setting up CNF3	

	SPICANWrite(0x2B, 0x00);		// Clearing all interrupts
	SPICANWrite(0x60, 0x60);		// Setup up RXB0 to receive all messages
	SPICANWrite(0x70, 0x60);		// Setup up RXB1 to receive all messages
	SPICANSetNorm();				// Allow for Normal Mode
	SPICANReadStat();				// Confirm we are in Normal Mode
	return;
}

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
	spi_recv();
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

// CONFIGURATION NOTE

/*

	// Trying to configure the SPI CAN module for use with ESL ProD
	// ProD SPI is 9.375MHz
	// CAN Bus is 500kHz

	// Following the manual on Pg. 41
	// https://microcontrollershop.com/download/21801F.pdf


	SECS2NANO = 1*10**9

	// Oscillation freq. of the SPI on ProD
	f_osc = 9.375*10**6 //9.375MHz
	t_osc = 1/f_osc
	t_osc_ns = t_osc * SECS2NANO

	// Baud Rate Prescaler
	brp = 4

	// Time Quanta (tq)
	t_q = 2 * brp * t_osc_ns

	// Oscillation for CAN bus
	can_osc = 500000 // 500kHz
	t_can = 1/can_osc
	t_can_ns = t_can * SECS2NANO

	// Bit Time in tq
	bit_time = t_can / t_osc // 18.75

	// Nominal Bit Time in tq
	nom_bit_time = Math.ceil(bit_time) // 19

	// Phase Segment 2 should happen at
	// ~60-70% bit_time
	ps2_time_min = nom_bit_time * 0.6 // 11.4
	ps2_time_max = nom_bit_time * 0.7 // 13.3

	// Go with 12 then I guess

	// Phase Segment 2 (PS2) tq
	ps2_tq = nom_bit_time - 12 // 7

	// Sync Segment tq
	sync_seg_tq = 1

	// Propagation Segment tq
	prop_seg_tq = 2

	// PS1 tq
	ps1_tq = nom_bit_time- ps2_tq - sync_seg_tq - prop_seg_tq // 9

	// So, we have all the important pieces now for this, except SJW
	// SJW looks like it helps with unstable clocks in the CAN nodes?
	// Let's go read about it
	// ...
	// First off, it looks to stand for "Synchronization Jump Width (SJW)" Pg. 38
	// ...
	// Okay, after reading through all that, it seems that SJW
	// works to help with giving flexibility to parsing the message in the
	// Phase Segments PS1 and PS2 (Pg. 39-40)
	// First, there is no clock encoded into a CAN message using NRZ bit coding 
	// This means that the clock must be derived from the shape of the signal itself
	// To ensure synchronization can be easily obtained, the SJW appears to be
	// a sort of "buffer" that allows the module to borrow/give to either
	// PS1 or PS2 depending on how the bits align.
	// Look at Pg. 39 of manual for Geek Speak
	// Look at Pg. 40 of manual for Pretty Pics

	// They say an SJW of 1 tq is usually enough, but IDK if that's kinda arbitrary
	// or if I should just max it out at 4 tq, or if a number like 3 tq is "bad"
	// There's no easy to see logic here so I'll go with 2 for now(?)

	// Setting up CNF1 (0x2A) for:
	//  [SJW 7:6, BRP 5:0]
	//  0b 01 000100 => 0x44

	// Setting up CNF2 (0x29) for:
	//  [BTLMODE, SAM, PHSEG1 5:3, PRSEG 2:0]
	//  0b 1 1 101 010 => 0xEA

	// Setting up CNF3 (0x28) for:
	//  [SOF, WAKFIL, NA 5:3, PHSEG2 2:0]
	//  0b 1 1 000 111 => 0xC7

*/

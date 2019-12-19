//This file contains code for the SPI to CAN converter used in the CERDEC System

#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>

#include "SPICAN.h"
#include "spi.h"
#include "common.h"



void SPICANInit(void)
{
	SPICANReset();					// Reset Command
	SPICANReadyConfig();
	
	SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits
	// SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits
	SPICANMasksFilts();
	SPICANWrite(0x60, 0x04);
	SPICANWrite(0x70, 0x00);
	SPICANWrite(0x0D, 0x00);
	// SPICANBitModify(0x60, 0xFF, 0x04);		// Set BUKT to be 1
	// SPICANBitModify(0x70, 0xFF, 0x00);		// Setup up RXB1 to receive all messages
	// SPICANBitModify(0x0C, 0xFF, 0x00); // Set TXRTSCTRL to 0x00
	
	SPICANConfigure();	
	SPICANWrite(0x2C, 0x00);		// Clearing all interrupts
	SPICANWrite(0x2B, 0x3F);		// Clearing all interrupts

	SPICANWrite(0x0F, 0x00); // Set CANCTRL to 0x00
	// SPICANBitModify(0x0F, 0xFF, 0x00); // Set TXRTSCTRL to 0x00
	SPICANReadStat();				// Confirm we are in Normal Mode
	return;
}

void SPICANReadyConfig(void)
{
	Uint16 res;
	res = SPICANRead(SPICAN_CANSTAT);
	while((res & 0xE0) != 0x80)
		res = SPICANRead(SPICAN_CANSTAT);
	return;
}

void SPICANMasksFilts(void)
{
	// Set up filters for RX buffs
	while(SPICANRead(0x00) != 0x80)
		SPICANWrite(0x00, 0x80);
	
	while(SPICANRead(0x01) != 0x00)
		SPICANWrite(0x01, 0x00);

	// Set up masks for RX buffs
	while(SPICANRead(0x20) != 0xF9)
		SPICANWrite(0x20, 0xF9);

	while(SPICANRead(0x21) != 0x80)
		SPICANWrite(0x21, 0x00);

	// MASK: 111 1100 1000
	// FILT: 100 0000 0000
	// RSLT: 100 00XX 0XXX (X is don't care)
	return;
}

void SPICANReset (void)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_RESET);						//Transmit Reset command
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
	return;
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

void SPICANReadBuf_Array (Uint16 data[], Uint16 whichBuf)
{
	int k;
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(SPICAN_RXBUF0 + 4 * whichBuf);
	for(k = 0; k < 8; k++)
	{
		data[k] = spi_recv();
	}
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;		//Release chip select
}

// Refer to Table 11-2 and pages 19 - 21 for formatting message
void SPICANReadSetT0Message(Uint16 canAddress, Uint16 numBytes, Uint16 *buf)
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
void SPICAN_SetT0Data(Uint16 numBytes, Uint16 *buf)
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

Uint16 SPICANRXBufReady(void)
{
	return (SPICANRXStatus() & 0xC0) >> 6;
}

Uint16 SPICANReadBufs(Uint16 buf1[], Uint16 buf2[])
{
	Uint16 buf_status;
	Uint16 res = 0x00;

	// Get the status of the RX Buffs
	buf_status = SPICANRXBufReady();
	// buf_status = SPICANRead(0x2C); // Get the interrupt status
	// SPICANWrite(0x2C, (buf_status & 0xFC)); // Reset the RX interrupts
	// buf_status = (buf_status & 0x03);

	// Check if there's a message in the RX Buffers
	if(buf_status != 0x00)
	{
		// First RX Buffer 0
		if((buf_status & 0x01) == 0x01)
		{
			SPICANReadBuf_Array(buf1, 0);
			res |= 0x01;
		}

		// Second RX Buffer 1
		if((buf_status & 0x02) == 0x02)
		{
			SPICANReadBuf_Array(buf2, 1);
			res |= 0x02;
		}
	}
	return res;
}

int SPICANVerifyTXBuf(Uint16 buf, Uint16 data_check[])
{
	Uint16 data[8];
	int k;
	for(k = 0; k < 8; k++)
	{
		if(data_check[k] != SPICANRead(SPICAN_TXB0D0 + k))
		{
			return 0;
		}
	}
	return 1;
}

void SPICANWaitForTXBuf(Uint16 buf_num)
{
	Uint16 res;
	res = SPICANRead(0x30 + (buf_num << 8));
	while((res & 0x08) == 0x08)
	{
		delay_us(1);
		res = SPICANRead(0x30 + (buf_num << 8));
	}
}

void SPICANBitModify(Uint16 address, Uint16 mask, Uint16 data_byte)
{
	GpioDataRegs.GPADAT.bit.GPIOA0	= 0;		//Chip Select Low
	spi_xmit(0x05);						//Bit modify command
	spi_xmit(address);								//Write location
	spi_xmit(mask);							//Write Info
	spi_xmit(data_byte);							//Write Info
	GpioDataRegs.GPADAT.bit.GPIOA0	= 1;
}

Uint16 SPICANReadInts(void)
{
	Uint16 count, res;
	count = 0;
	res = SPICANRead(0x2C);
	while(res == 0xFF)
	{
		// delay_us(1);
		res = SPICANRead(0x2C);
	}
	return res;
}

void SPICANConfigure(void)
{

	// For configuration details, see note at bottom
	// SPICANWrite(0x2A, 0x81);		// Setting up CNF1
	// SPICANWrite(0x29, 0xD0);		// Setting up CNF2
	// SPICANWrite(0x28, 0xC2);		// Setting up CNF3
	SPICANWrite(0x2A, 0x01);		// Setting up CNF1
	SPICANWrite(0x29, 0xD0);		// Setting up CNF2
	SPICANWrite(0x28, 0xC2);		// Setting up CNF3
	return;

	/*

	// Trying to configure the SPI CAN module for use with ESL ProD
	// ProD SPI is 9.375MHz
	// SPICAN Oscillator is 16MHz
	// CAN Bus is 500kHz

	// Following the manual on Pg. 41
	// https://microcontrollershop.com/download/21801F.pdf
	// And this one helped a lot with understanding everything
	// http://ww1.microchip.com/downloads/en/Appnotes/00754.pdf

	Logic behind configuration
	Necessary pieces:
		SJW - Synchronization Jump Width
		BRP - Baud Rate Prescalar
		BTLMODE - Mode for determining PHSEG2
		SAM - Sample Point Configuration
		PRSEG - Propagation Segment
		PHSEG1 - Phase Segment 1 (PS1)
		PHSEG2 - Phase Segment 2 (PS2)

		I used the second link
		(http://ww1.microchip.com/downloads/en/Appnotes/00754.pdf)
		to calculate the maximum SJW I want to use, which was 3 TQs in this case:
		Code below is in Javascript and can be run in an internet browser
			// Inits
			SEC2NANO = 1 * 10 ** 9;
			f_osc = 500 * 10 ** 3; // 500 kHz
			t_bit = 1.0 / f_osc;

			console.log("t_bit is: " + (t_bit * SEC2NANO) + " ns");

			t_bit_min = t_bit * (1 - .0125);
			t_bit_max = t_bit * (1 + .0125);

			console.log("t_bit_min is: " + (t_bit_min * SEC2NANO) + " ns");
			console.log("t_bit_max is: " + (t_bit_max * SEC2NANO) + " ns");

			t_q_per_bit = 8.0;
			t_q_min = t_bit_min / t_q_per_bit;
			t_q_max = t_bit_max / t_q_per_bit;

			console.log("t_q_min is: " + (t_q_min * SEC2NANO) + " ns");
			console.log("t_q_max is: " + (t_q_max * SEC2NANO) + " ns");

			t_diff = 10 * t_bit_max - 10 * t_bit_min
			console.log("t_diff is: " + (t_diff * SEC2NANO) + " ns");

			t_q_sjw = Math.ceil(t_diff / t_q_min);
			console.log("t_q_sjw is: " + (t_q_sjw) + " TQs");
		
		I then looked at all the examples, and in the second link it said max
		oscillator tolerance is found when the length of PS1 == PS2 == SJW (pg. 8)
		(Although that was if SJW is the max of 4 TQs)

		So I set the length of SJW == PS1 == PS2 == 3

		Since I am using 8 TQ per 1 bit, that leaves me with 8 - 3 - 3 == 2 TQ
		for the Sync Segment and the Propagation Segment, so 1 TQ for each

		THUS

		Setting up CNF1 (0x2A) for:
		 [SJW 7:6, BRP 5:0]
		 0b 10 000001 => 0x81

		Setting up CNF2 (0x29) for:
		 [BTLMODE, SAM, PHSEG1 5:3, PRSEG 2:0]
		 0b 1 1 010 000 => 0xD0

		Setting up CNF3 (0x28) for:
		 [SOF, WAKFIL, NA 5:3, PHSEG2 2:0]
		 0b 1 1 000 010 => 0xC2		

*/
}

void SPICANRoutine(void)
{
	Uint16 interrupts;
	// Check interrupts for what all happened
	interrupts = SPICANRead(0x2C);

	// TX Interrupts

	// RX Interrupts
	if((interrupts & 0x03) > 0x00)
	{

		Uint16 arr[8];
		char bits_to_flip = 0x00;

		// RX1 Interrupt
		if((interrupts & 0x02) == 0x02)
		{
			SPICANReadBuf_Array(arr, 0);
			// For now, send back dummy data
			// Wait for the TX Buffer to be ready
			SPICANWaitForTXBuf(0);
			// Set the message on the buffer
			SPICANReadSetT0Message(0x32, 8, arr);
			SPICANWaitForTXBuf(0);
			// Signal that the message is ready to send
			// SPICAN_T0_RTS();
			bits_to_flip |= 0x02;
		}
		// RX0 Interrupt
		if((interrupts & 0x01) == 0x01)
		{
			SPICANReadBuf_Array(arr, 1);
			// For now, send back dummy data
			// Wait for the TX Buffer to be ready
			SPICANWaitForTXBuf(0);
			// Set the message on the buffer
			SPICANReadSetT0Message(0x43, 8, arr);
			SPICANWaitForTXBuf(0);
			// Signal that the message is ready to send
			// SPICAN_T0_RTS();
			bits_to_flip |= 0x01;
		}
		SPICANBitModify(0x2C, bits_to_flip, 0x00);
	}

	// Clear the interrupts
	// SPICANWrite(0x0E, 0x00);
	// SPICANWrite(0x2C, 0x00);
//	SPICANCheckInts(447);
	return;
}

void SPICANCheckInts(int line)
{
	volatile Uint16 interrupts;
	char buff[80];
	// Check interrupts for what all happened
	interrupts = SPICANRead(0x2C);

	// TX Interrupts
	buff[0] = interrupts;
	// RX Interrupts
	if((interrupts & 0x03) > 0x00)
	{
		sprintf( buff, "There was an interrupt on line: %d", line);
//		printf("%s", buff);
	}
	return;
}

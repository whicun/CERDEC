//SPICAN.h
//Include file for SPICAN.c

#ifndef SPICAN_H
	#define SPICAN_H

#include "DSP281x_Device.h"

//Commands
#define SPICAN_RESET	0xC0
#define	SPICAN_READ		0x03
#define	SPICAN_RXBUF1	0x92
#define SPICAN_RXBUF2	0x96
#define	SPICAN_WRITE	0x02
#define	SPICAN_TXBUF	0x40	//needs modification
#define	SPICAN_RTS		0x80	//needs modification
#define	SPICAN_READSTAT	0xA0
#define	SPICAN_RXSTAT	0xB0
#define SPICAN_BITMOD	0x05
#define SPICAN_TXB0CTRL 0x30
#define SPICAN_TXB0SIDH 0x31
#define SPICAN_TXB0SIDL 0x32
#define SPICAN_TXB0EID8 0x33
#define SPICAN_TXB0EID0 0x34
#define SPICAN_TXB0DLC 0x35
#define SPICAN_TXB0D0 0x36
#define SPICAN_TXB0D1 0x37
#define SPICAN_TXB0D2 0x38
#define SPICAN_TXB0D3 0x39
#define SPICAN_TXB0D4 0x3A
#define SPICAN_TXB0D5 0x3B
#define SPICAN_TXB0D6 0x3C
#define SPICAN_TXB0D7 0x3D


//Registers
#define SPICAN_CANSTAT	0x0E	//first byte is dont care
#define SPICAN_CANCTRL	0x0F	//first byte is dont care


void SPICANReset (void);
Uint16 SPICANReadStat (void);
void SPICANSetNorm (void);
Uint16 SPICANRXStatus (void);
Uint32 SPICANReadBuf1 (void);
void SPICANIntEn (void);
Uint16 SPICANReadInt (void);
Uint16 SPICANRead (Uint16 Input);
void SPICANWrite (Uint16 ADDR, Uint16 Input);
void SPICANReadSetT0Message (Uint16 canAddress, Uint16 numBytes, char *buf);

#endif

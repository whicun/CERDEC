//SPICAN.h
//Include file for SPICAN.c

#ifndef SPICAN_H
	#define SPICAN_H

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

#endif

/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/Flash2812_API.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file contains the function declarations and defines for use of the Flash API.
//! This is adapted from TI example code.

#ifndef FLASH2812_API_H_
#define FLASH2812_API_H_

// Function declarations
void InitFlashAPI( void );
Uint16 FlashCsmUnlock(void);         // Unlock the Code Security Module
void FlashError(Uint16 Status); // If an error, stop here
void FlashDone(void);        	// If done, stop here
void CallFlashAPI(void);     	// Kernel function that interfaces to the API

// Register definitions
#define FBANKWAIT    (volatile Uint16*)0x00000A86   // Flash Waitstate control
#define FOTPWAIT     (volatile Uint16*)0x00000A87   // OTP Waitstate control
#define WDKEY        (volatile Uint16*)0x00007025   // Watchdog key register
#define CSMSCR       (volatile Uint16*)0x00000AEF   // CSM status and control register
#define KEY0         (volatile Uint16*)0x00000AE0   // low word of the 128-bit key
#define KEY1         (volatile Uint16*)0x00000AE1   // next word in 128-bit key
#define KEY2         (volatile Uint16*)0x00000AE2   // next word in 128-bit key
#define KEY3         (volatile Uint16*)0x00000AE3   // next word in 128-bit key
#define KEY4         (volatile Uint16*)0x00000AE4   // next word in 128-bit key
#define KEY5         (volatile Uint16*)0x00000AE5   // next word in 128-bit key
#define KEY6         (volatile Uint16*)0x00000AE6   // next word in 128-bit key
#define KEY7         (volatile Uint16*)0x00000AE7   // high word of the 128-bit key
#define PWL0         (volatile Uint16*)0x003F7FF8   // Password 0
#define PWL1         (volatile Uint16*)0x003F7FF9   // Password 1
#define PWL2         (volatile Uint16*)0x003F7FFA   // Password 2
#define PWL3         (volatile Uint16*)0x003F7FFB   // Password 3
#define PWL4         (volatile Uint16*)0x003F7FFC   // Password 4
#define PWL5         (volatile Uint16*)0x003F7FFD   // Password 5
#define PWL6         (volatile Uint16*)0x003F7FFE   // Password 6
#define PWL7         (volatile Uint16*)0x003F7FFF   // Password 7

// Key values, used to unlock CSM
extern Uint16 PRG_key0;
extern Uint16 PRG_key1;
extern Uint16 PRG_key2;
extern Uint16 PRG_key3;
extern Uint16 PRG_key4;
extern Uint16 PRG_key5;
extern Uint16 PRG_key6;
extern Uint16 PRG_key7;

// CPU definitions
#define	 EALLOW	asm(" EALLOW")
#define	 EDIS	asm(" EDIS")
#define  DINT   asm(" setc INTM")

// Constant definitions
#define  WORDS_IN_FLASH_BUFFER 0x800               // Programming data buffer, Words

#endif /* FLASH2812_API_H_ */

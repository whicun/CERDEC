/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/Flash2812_API.c $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

//! @file
//! This file contains the code that supports  use of the Flash API, above and beyond what is provided in the library.
//! This is adapted from TI example code.

// Declare global variables used to interface to the flash routines
FLASH_ST EraseStatus;
FLASH_ST ProgStatus;
FLASH_ST VerifyStatus;

// Buffer used to test Flash API functions
volatile Uint16  FlashBuffer[WORDS_IN_FLASH_BUFFER];

// Callback function, specified by defining Flash_CallbackPtr
void MyCallbackFunction(void);
Uint32 MyCallbackCounter; // Just increment a counter in the callback function

//!
void InitFlashAPI( void )
{
	Uint16 Status;

	// Unlock the CSM.
	Status = FlashCsmUnlock();	if (Status != STATUS_SUCCESS)	{		FlashError(Status);	}

    // Copy the Flash API functions to SARAM
    MemCopy(&Flash28_API_LoadStart, &Flash28_API_LoadEnd, &Flash28_API_RunStart);

    // Also copy the required user interface functions to RAM.
    MemCopy(&RamfuncsLoadStart, &RamfuncsLoadEnd, &RamfuncsRunStart);
    // Initialize Flash CPU Scale Factor
    Flash_CPUScaleFactor = SCALE_FACTOR;

    // Initialize pointer to MyCallbackFunction
    Flash_CallbackPtr = &MyCallbackFunction;
    MyCallbackCounter = 0; 						// pointer to be incremented in the callback function
}

//!
Uint16 FlashCsmUnlock()
{
    volatile Uint16 temp;
    Uint16 RetCode;

    // Load the key registers with the current password
    EALLOW;
    *KEY0 = PRG_key0;
    *KEY1 = PRG_key1;
    *KEY2 = PRG_key2;
    *KEY3 = PRG_key3;
    *KEY4 = PRG_key4;
    *KEY5 = PRG_key5;
    *KEY6 = PRG_key6;
    *KEY7 = PRG_key7;
    EDIS;

    // Perform a dummy read of the password locations if they match the key values, the CSM will unlock
    temp = *PWL0;
    temp = *PWL1;
    temp = *PWL2;
    temp = *PWL3;
    temp = *PWL4;
    temp = *PWL5;
    temp = *PWL6;
    temp = *PWL7;

    // If the CSM unlocked, return succes, otherwise return failure.
    if ((*CSMSCR & 0x0001) == 0)
    {
    	RetCode = STATUS_SUCCESS;
    }
    else
    {
    	RetCode = STATUS_FAIL_CSM_LOCKED;
    }

    return RetCode;
}

//!
#pragma CODE_SECTION(FlashError,"ramfuncs");
void FlashError(Uint16 Status)
{
	// Error code will be in the AL register.
    asm("    ESTOP0");
    asm("    SB 0, UNC");
}

//!
#pragma CODE_SECTION(MyCallbackFunction,"ramfuncs");
void MyCallbackFunction(void)
{
    // Toggle pin, service external watchdog etc
    MyCallbackCounter++;
    asm("    NOP");

}

//!
#pragma CODE_SECTION(FlashDone,"ramfuncs");
void FlashDone(void)
{

    asm("    ESTOP0");
    asm("    SB 0, UNC");
}

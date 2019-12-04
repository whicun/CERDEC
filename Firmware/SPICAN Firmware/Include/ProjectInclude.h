/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-07-18 11:57:35 -0400 (Tue, 18 Jul 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/ProjectInclude.h $ URL of repository
 *
 * $Rev:: 1813                    $ Revision of last commit
 * $Author:: akithes              $ Author of last commit
 *
 */

//! @file
//! This file is the master include file for the project.
//! It should be the first and only include in all C files.

#ifndef PROJECTINCLUDE_H_
	#define PROJECTINCLUDE_H_

	// System timing definitions
	// the crystal on the board - 30MHz in our case - called XCLKIN within DSP
	#define XCLKIN_VAL			30E6
	// phase-locked loop control register divider
	#define PLLCR_DIV			0x000A
	#if PLLCR_DIV==0
		// special value, where PLL is simply bypassed (not *0)
		#define SYSCLKOUT_VAL	XCLKIN_VAL / 2.0
	#else
		// major clock signal within DSP, defined by PLL rate
		#define SYSCLKOUT_VAL	XCLKIN_VAL * PLLCR_DIV / 2.0
	#endif
	// low-speed peripheral clock prescaler
	#define LOSPCP_DIV			0x0002
	#if LOSPCP_DIV==0
		// special value, where the low-speed peripheral clock is the system clock
		#define LSPCLK_VAL		SYSCLKOUT_VAL
	#else
		// calculate this frequency, 37.5MHz
		#define LSPCLK_VAL		SYSCLKOUT_VAL / (LOSPCP_DIV * 2.)
	#endif

	//Even with a divisor of 0, LSPCLK_VAL/16 is the max baud rate possible
	#define MAX_BAUD			(LSPCLK_VAL / 16)
	// this is more arbitrary - theoretical minimum is 76
	#define MIN_BAUD			300

	// TI Header Files
	#include "DSP281x_Device.h"     			// DSP281x Headerfile
	#include "DSP281x_GlobalPrototypes.h"       // Prototypes for global functions within the .c files.
	#include "DSP281x_Examples.h"				// Some extra bits of mostly unneeded code
	#include "DSP281x_SysCtrl.h"				// For the watchdog routines
	#include "Flash281x_API_Config.h"			// Files to allow use for the Flash API
	#include "Flash281x_API_Library.h"
	#include "Flash2812_API.h"

	// C Header Files
	#include <stdlib.h>							// Standard library
	#include <stdio.h>
	#include <math.h>
	#include <string.h>

	// Include files not used with DSP/BIOS
	#ifndef DSP28_BIOS
		#include "DSP281x_DefaultISR.h"
	#endif

	// Our Processor Header Files
	#include "Types.h"
	#include "ProDCPLD.h"				//! Definitions for interfacing with the CPLD

	//Header files for ESL code
	#include "Comm.h"					//! Comm code defines
	#include "CPUControl.h"				//! CPU specific defines
	//CommAndAppExchange has to be after comm and cpu control but before others
	#include "CommAndAppExchange.h"		//! Interactions between comm and the app - need to appear before other software includes63
	#include "Interrupts.h"			//! Interrupt handler code
	#include "Hardware.h"			//! Hardware specific defines
	#include "ProdCPLD.h"			//! For the onboard Altera CPLD decode functions, etc.
	#include "ADCInternal.h"		//! The ADC in the chip, as opposed to the external ones for strain gauges
	#include "ADCExternal.h"		//! For the external 24 bit ADCs for strain gauge inputs
	#include "Quadrature.h"			//! Quadrature encoder handler
	#include "UART.h"				//! UART handler
	#include "DAC.h"				//! External DAC handler
	#include "OneWire.h"			//! OneWire Dallas device - onboard temperature sensor and serial numbers in strain gauge connectors
	#include "TempSensor.h"			//! Code specific to the onboard temperature sensor
	#include "TwisterBrake.h"		//! State machine and related functions for linear motor shock absorber behavior
	#include "BrainWave.h"
	#include "SPICAN.h"
	//#include "BrainWave.h"			//Brain project stuff
	//! Declaration of global variables and constants
	extern float32 DACVoltagesNow[4];				// the current voltage on each of the four DAC channels, by index
	extern ADCCalParamsStruct ThisBoardsADCParams;
	extern FLASH_ST EraseStatus;					// flash structures, for the status of the flash actions
	extern FLASH_ST ProgStatus;
	extern FLASH_ST VerifyStatus;
	extern volatile Uint16 FlashBuffer[WORDS_IN_FLASH_BUFFER];

	// Data buffer sizes, keeping in mind that we have 1M = 2^20 words - so these two buffers (plus the 2000 word comm buffer) must sum to no more than 2^20 words
	#define MAX_NUMBER_OF_SAMPLES	1000//31000	// 90% of total, so (1M = 2^20 words) * (0.9) / (30 words per sample) ~= 31.4k samples, rounded down
	#define RETRACT_MAX_SAMPLES		1000//10000	// 10% of total, so (1M = 2^20 words) - (1M = 2^20 words) * (0.1) / (10 words per sample) ~= 10.4k samples, rounded down
											// a typical retraction is 22s, so data will be decimated by 5 and taken until the data buffer runs out, at 25 seconds
	#define MAX_SAMPLE				3110	// For Greg
	#define PI 3.141592654
#endif /* PROJECTINCLUDE_H_ */

// TI File $Revision: 1038 $
// Checkin $Date: 2016-12-02 16:33:40 -0500 (Fri, 02 Dec 2016) $
//###########################################################################
//
// FILE:	DSP281x_InitPeripherals.c
//
// TITLE:	DSP281x Device Initialization To Default State.
//
//###########################################################################
// $TI Release: DSP281x C/C++ Header Files V1.20 $
// $Release Date: July 27, 2009 $
//###########################################################################

#include "DSP281x_Device.h"     // DSP281x Headerfile Include File
#include "DSP281x_Examples.h"   // DSP281x Examples Include File

//---------------------------------------------------------------------------
// InitPeripherals:
//---------------------------------------------------------------------------
// The following function initializes the peripherals to a default state.
// It calls each of the peripherals default initialization functions.
// This function should be executed at boot time or on a soft reset.
//
void InitPeripherals(void)
{

        #if DSP28_F2812
        // Initialize External Interface To default State:
        InitXintf();
        #endif

	// Initialize CPU Timers To default State:
	InitCpuTimers();

	// Initialize McBSP Peripheral To default State:
	InitMcbsp();

	// Initialize Event Manager Peripheral To default State:
	InitEv();
	
         // Initialize ADC Peripheral To default State:
        InitAdc();
	
	// Initialize eCAN Peripheral To default State:
        InitECan();

	// Initialize SPI Peripherals To default State:
	InitSpi();

	// Initialize SCI Peripherals To default State:
	InitSci();
}

//===========================================================================
// No more.
//===========================================================================

/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Source/Quadrature.c $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#include "ProjectInclude.h"

//!
//! @file
//! This file contains the code that handles the quadrature encoder inputs.
//!

//!
//! @brief Configure the quadrature encoder ports.
//!
//! Sets up pins for quadrature encoder channels A and B, optionally allowing for the index pulse inputs.
//! Set the GPIO pins for CAP_QEP Peripheral Function.
//! @param AllowIndex If set to FALSE, index pins and functions will not be enabled, otherwise they will.
//! This parameter applies to both channels.
void InitQuadrature( Uint16 AllowIndex )
{
	//Qualify the user parameter
	if( AllowIndex != FALSE )
	{
		AllowIndex = TRUE;
	}

	EALLOW;
	//The original code didn't include support for Index pulse. Added by LRS 5/26/16.
	// Setup Capture Compare / Quadrature Encoder Pulse for QEP operation
	if( AllowIndex == FALSE )
	{
		// Quadrature Encoder Pulses for EVA (J19), channel X
		GpioMuxRegs.GPAMUX.all |= 0x0300;	// Set GPIOA8 /CAP1_QEP1_(I) to CAP1_QEP1 for CHAX
											// Set GPIOA9 /CAP2_QEP2_(I) to CAP2_QEP2 for CHBX
		// Quadrature Encoder Pulses for EVB (J20), channel Y
		GpioMuxRegs.GPBMUX.all |= 0x0300;	// Set GPIOB8/CAP4_QEP3_(I) to CAP4_QEP3 for CHAY
											// Set GPIOB9/CAP5_QEP4_(I) to CAP5_QEP4 for CHBY
	}
	else
	{
		// Quadrature Encoder Pulses for EVA (J19), channel X
		GpioMuxRegs.GPAMUX.all |= 0x0700;	// Set GPIOA8 /CAP1_QEP1_(I)  to CAP1_QEP1  for CHAX
											// Set GPIOA9 /CAP2_QEP2_(I)  to CAP2_QEP2  for CHBX
											// Set GPIOA10/CAP3_QEPI1_(I) to CAP3_QEPI1 for CHIX (Index)
		// Quadrature Encoder Pulses for EVB (J20), channel Y
		GpioMuxRegs.GPBMUX.all |= 0x0700;	// Set GPIOB8 /CAP4_QEP3_(I)  to CAP4_QEP3  for CHAY
											// Set GPIOB9 /CAP5_QEP4_(I)  to CAP5_QEP4  for CHBY
											// Set GPIOB10/CAP6_QEPI2_(I) to CAP6_QEPI2 for CHIY (Index)
	}

 	EDIS;

	/* Configure GP Timer 2 for QEP (Quadrature encoder) use.
 	From SPRU065e: The time base for the QEP circuit is provided by GP timer 2 (GP timer 4, in case
 	of EVB). The GP timer must be put in directional-up/down count mode with the
 	QEP circuit as the clock source.
 	*/

 	// Configure GP Timer 2 for QEP use.
	EvaRegs.T2CNT	= 0;			// Set Timer 2 Counter value to 0
	EvaRegs.T2PR	= 0xFFFF;		// Set Timer 2 Period value to 65535, don't know why old code did this $$$
	EvaRegs.T2CMPR	= 0x3C00;		// Set Timer 2 Compare value to 15360 which is 15 full revolutions of 1024 counts, don't know why $$$

	// Configure GP Timer 4 for QEP use
	EvbRegs.T4CNT	= 0;			// Set Timer 4 Counter value to 0
	EvbRegs.T4PR	= 0xFFFF;		// Set Timer 4 Period value to 65535, don't know why old code did this $$$
	EvbRegs.T4CMPR	= 0x3C00;		// Set Timer 4 Compare value to 15360 which is 15 full revolutions of 1024 counts $$$

	//If we are configuring for the index pulse, do the other required setup.
	if( AllowIndex == TRUE )
	{
		//Enable the QEP Index pulse enable for EVA. This can cause the timer configured as the QEP counter to reset.
		EvaRegs.EXTCONA.bit.QEPIE		= 1;
		//Turn ON the CAP3_QEPI1 Index Qualification Mode.
		//This mode being on requires that A and B both be high for an index pulse to be allowed in.
		EvaRegs.EXTCONA.bit.QEPIQUAL	= 1;

		//Enable the QEP Index pulse enable for EVB. This can cause the timer configured as the QEP counter to reset.
		EvbRegs.EXTCONB.bit.QEPIE		= 1;
		//Turn ON the CAP6_QEPI2 Index Qualification Mode.
		//This mode being on requires that A and B both be high for an index pulse to be allowed in.
		EvbRegs.EXTCONB.bit.QEPIQUAL	= 1;
	}
	else
	{
		//Don't need to do this for initial powerup, but if the user changes the config to no index, I need to kill these bits.
		//Disable the QEP Index pulse enable for EVA. This can cause the timer configured as the QEP counter to reset.
		EvaRegs.EXTCONA.bit.QEPIE		= 0;
		//Turn OFF the CAP3_QEPI1 Index Qualification Mode.
		//This mode being on requires that A and B both be high for an index pulse to be allowed in.
		EvaRegs.EXTCONA.bit.QEPIQUAL	= 0;

		//Disable the QEP Index pulse enable for EVB. This can cause the timer configured as the QEP counter to reset.
		EvbRegs.EXTCONB.bit.QEPIE		= 0;
		//Turn OFF the CAP6_QEPI2 Index Qualification Mode.
		//This mode being on requires that A and B both be high for an index pulse to be allowed in.
		EvbRegs.EXTCONB.bit.QEPIQUAL	= 0;

	}
	//Set up Counter2
	EvaRegs.T2CON.all = 0x9870;		// FREE: Timer operation is not affected by suspend
									// TMODE 3: Directional Up/Down Count Mode (Required for QEP)
									// No input clock prescaler
									// T2SWT1 off: Timer 2 does not start with timer 1
									// Enable Timer
									// Clock source 3: clock source is QEP circuit
									// Reload condition when counter is 0
									// Disable Timer 2 Compare operation
									// Use own period register, do not use other timer's register

	//Set up Counter4
	EvbRegs.T4CON.all = 0x9870;		// FREE: Timer operation is not affected by suspend
									// TMODE 3: Directional Up/Down Count Mode (Required for QEP)
									// No input clock prescaler
									// T2SWT1 off: Timer 4 does not start with timer 3
									// Enable Timer
									// Clock source 3: clock source is QEP circuit
									// Reload condition when counter is 0
									// Disable Timer 2 Compare operation
									// Use own period register, do not use other timer's register
}

//! Read current value of quadrature encoder A
//! @return Contents of the 16 bit encoder register.
Uint16 GetQuadratureCountA( void )
{
	return( EvaRegs.T2CNT );
}

//! Read current value of quadrature encoder B
//! @return Contents of the 16 bit encoder register.
Uint16 GetQuadratureCountB( void )
{
	return( EvbRegs.T4CNT );
}

//! Reset count of quadrature encoder A
void ResetQuadratureCountA( void )
{
	EvaRegs.T2CNT = 0;
}

//! Reset count of quadrature encoder B
void ResetQuadratureCountB( void )
{
	EvbRegs.T4CNT = 0;
}

/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/DAC.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file contains the function declarations for the external DACs

#ifndef DAC_H_
#define DAC_H_

	// Define some parameters used in initializing/operating the McBSP
		// McBSP Sample Rate Generator frequency
		#define MCBSP_SRG_FREQ   LSPCLK_VAL
		// McBSP Sample Rate Generator period
		#define MCBSP_SRG_PERIOD 1/MCBSP_SRG_FREQ
		// McBSP Initialization delay of >= 2 clock cycles (just rounded up to 10us)
		#define MCBSP_INIT_DELAY 10

	//! Enumerate codes for the four DAC channels, bits 12-15 of the GPIOB
	typedef enum
	{
		DAC_CH1 = 0x1000,
		DAC_CH2	= 0x2000,
		DAC_CH3	= 0x4000,
		DAC_CH4	= 0x8000,
		DAC_ALL	= 0xF000,
		error 	= 0x0000
	} DACChannel;

	// Define parameters for converting between desired voltage output and digital signal
		// in kOhm
		#define Rref_minus		5.1
		// in kOhm
		#define Rminus_out		36.0
		// in kOhm
		#define Rsum			(Rref_minus + Rminus_out)
		// For LinMot ProD, in volts
		// <%MyTaG&>:#define Vref			1.427
		// For my ProD, in volts
		#define Vref			1.425
		// in volts
		#define Voutmax			2.5
		// 0xFFFF, largest 16 bit word
		#define codemax			65536.0
		// scaling factor between digital and analog signals
		#define DACratio		(codemax / Voutmax)
		// calculate as codeToDAC = DACslope * V_desired + DACintercept
		#define DACslope		(Rref_minus / Rsum * DACratio)
		#define DACintercept	(Rminus_out * Vref / Rsum * DACratio)
		// calculate the maximum and minimum possible voltages (from the inverse codeToDAC equation above) which are at the extreme values of the digital code
		#define DACVmax			((65536.0 - DACintercept) / DACslope)
		#define DACVmin			(0.0 - DACintercept / DACslope)

	void InitDAC( void );
	void InitDACGPIO( void );
	void InitDACMcBSP( void );
	//void CodetoDAC( Uint16 code, DACChannel channel );
	void VoltagetoDAC( float32 voltage, DACChannel channel );
	void DACLinearRamp( float32 Vstart, float32 Vend, Uint16 period, Uint16 steps, DACChannel channel );
	void DACTrigWave( DACChannel channel );
	void DACSinWave( DACChannel channel );
	void DAC3_3VSquareWave( DACChannel channel );
	void MotorContinuousSineWave( float32 Vmin, float32 Vmax, float32 period, DACChannel channel );

#endif /* DAC_H_ */

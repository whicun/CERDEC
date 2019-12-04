/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-26 14:38:00 -0400 (Sun, 26 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/Interrupts.h $ URL of repository
 *
 * $Rev:: 1493                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#ifndef INTERRUPTS_H_
	#define INTERRUPTS_H_

	//define the structure type that holds the vector table
	struct InterruptVectorTableType
	{
		PtrISRFunc VectorTable[128];
	};

	void InitVectorTable(void);
	interrupt void IsrInterrupt14(void);
	interrupt void IsrUartAXmit(void);
	interrupt void IsrUartBXmit(void);
	interrupt void IsrUartARcv(void);
	interrupt void IsrUartBRcv(void);
	interrupt void IsrSpurious(void);

	void SetUpUARTInterrupts( void );
	void SetUpTimer2Interrupts( void );

#endif

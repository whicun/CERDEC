/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/ProDCPLD.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#ifndef INCLUDE_PRODCPLD_H_
	#define INCLUDE_PRODCPLD_H_

	//! @file ProDCPLD.h
	//! This file has the definitions for bits inside the CPLD on the ProD board that handles
	//! chip selects, LCD interface, SD card, digital input ports, etc.
	//! This Altera CPLD also does RAM decoding.
	//! External RAM goes from 0x80000 - 0x17FFFF for a total of 2MB in 4 chips each with 256K words of 16 bits.
	//! This reflects CPLD version 1.01, first released 3/31/08, edited 12/16/11.

	//! @name Digital Input Ports
	//! These ports on the CPLD generate chip selects for the parallel input ports.
	//! There are (4) 16 bit input ports. They are latched simultaneously and read one at a time.
	//! @{
	#define DIGITAL_IN1_PORT	*(volatile Uint16 *)0x4000
	#define DIGI_IN1			1
	#define DIGITAL_IN2_PORT	*(volatile Uint16 *)0x4001
	#define DIGITAL_IN3_PORT	*(volatile Uint16 *)0x4002
	#define DIGITAL_IN4_PORT	*(volatile Uint16 *)0x4003
	//! @}

	//! The CPLD revision can be read from this port.
	//! It currently is 0x0101 or 257 decimal, which represents version 1.01, as of May 2016 LRS
	#define CPLD_REV_PORT		*(volatile Uint16 *)0x4004

	//! @name Analog Port, SSR Port
	//! @{
	//! This port is called the "Analog" port in the VHDL code.
	//! But we'll also call it the SSR port because the SSRs are on it.
	//! It is write only. Its latch signals are delayed 3 clocks for timing reasons, see VHDL code.
	#define ANALOG_PORT			*(volatile Uint16 *)0x4005
	#define SSR_PORT			*(volatile Uint16 *)0x4005
	//! Set to 1 to drive the latching relay to turn on cal of strain gauges
	#define CAL_SET				1
	//! Set to 1 to drive the latching relay to turn off cal of strain gauges
	#define CAL_RESET			2
	//! This bit goes to the wireless connector J3, normally left at zero
	#define WIRELESS_CMD		4
	//! This signal resets the wireless board connected to J3. It does NOT reset the ProD board.
	#define WIRELESS_RESET		8
	//! The solid state relays turn on when the bit is zero.
	#define SSR1_DRIVE			0x10
	#define SSR2_DRIVE			0x20
	#define SSR3_DRIVE			0x40
	#define SSR4_DRIVE			0x80
	//! @}

	//! @name LCD data port
	//! @{
	//! The lower 8 bits are written to a register and passed to the LCD connector.
	//! It is write only. Its latch signals are delayed 3 clocks for timing reasons, see VHDL code.
	//! The LCD_EN bit is on another port on this chip.
	#define LCD_DATA_PORT		*(volatile Uint16 *)0x4006
	//! @brief Two of the LCD control signals come off the main processor's GPIO bits, LCD_EN is in this chip
	//! LCD register select pin
	#define LCD_RS	GpioDataRegs.GPFDAT.bit.GPIOF3
	//! LCD Read/write pin
	#define LCD_RW	GpioDataRegs.GPBDAT.bit.GPIOB11
	//! @}

	//! @name SD card data port
	//! @{
	//! Port for reading the SD card data that was last shifted in.
	#define SDIN_DATA_PORT		*(volatile Uint16 *)0x4007
	//! @brief Port for writing to the SD card is same address. Writing starts the transmission state machine.
	#define SDOUT_DATA_PORT		*(volatile Uint16 *)0x4007
	//! @}

	//! @name Counter clearing port (also includes RS232/485 enable)
	//! @{
	//! Port to clear the 3 counters, write only. Also controls RS232 and RS485 drive signals
	#define COUNTER_CLEAR_PORT	*(volatile Uint16 *)0x4008
	#define	CLR_COUNTER1_BIT	1
	#define	CLR_COUNTER2_BIT	2
	#define	CLR_COUNTER3_BIT	4
	//! @brief Low forces RS232 driver into shutdown and disables RS485 driver for multimaster applications
	#define RS232_485_EN_BIT	8
	//! @}

	//! @name Misc control port for UART mux, LED_EN, SD card signals
	//! @{
	//! Port for setting UART Mux, LCD_EN signal, and SD card SDSEL and SDEN signals
	//! This port is WRITE ONLY so you must keep a copy of its image to update it.
	#define MISC_OUTPUT_PORT	*(volatile Uint16 *)0x4009
	//! The next 4 are VALUES not BITS
	#define	SEL_RS232			0
	#define	SEL_RS485			1
	#define	SEL_ETHERNET		2
	#define	SEL_USB				3
	//! @brief The next 3 defines are BITS to be OR'd in. This bit is LCD_EN that clocks a command into the LCD controller.
	#define LCD_EN_BIT			4
	//! One bit is skipped in the sequence, then we have the SD card control bits
	#define SD_SEL_BIT			0x10
	#define SD_EN_BIT			0x20
	//! @}

	//! There is an unimplemented feature to generate an interrupt based on several conditions.
	//! It allowed selecting among opto isolated digital inputs, either onboard pushbutton, or SD card completion.
	//! The mask register is implemented, but the interrupt generating logic is not.
	//! This is the por to write the mask register. It is write only.
	#define INTR_MASK_PORT		*(volatile Uint16 *)0x400A

	//! @name Ports to read the counters driven by user input signals
	//! @{
	//! There is an unimplemented feature in the VHDL that copies the 3 counters to a buffered version
	//! on every access that does not read the counters.
	//! This would imply that you should do a dummy read of some other port on the CPLD before
	//! reading the counters. But the code that does it is turned off.
	//! These ports are readonly.
	#define COUNTER1_READ_PORT	*(volatile Uint16 *)0x400A
	#define COUNTER2_READ_PORT	*(volatile Uint16 *)0x400B
	#define COUNTER3_READ_PORT	*(volatile Uint16 *)0x400C
	//! @}

	//! @name Port to read the 8 external switches on J26, readonly.
	//! @{
	//! The upper 8 bits read from this port are undefined, so mask them off before using.
	#define SWITCHES_J26_PORT	*(volatile Uint16 *)0x400D
	#define SWITCHES_J26_MASK	0xFF
	//! @}

	//! @name Pushbutton status port.
	//! @{
	#define PUSHBUTTON_PORT		*(volatile Uint16 *)0x400e
	#define SW2					0x10
	#define SW3					0x20
	#define PRESSED				0
	//! @}

	//! @name Opto isolated digital inputs.
	//! The pins are set up so that when the input is active (high), the NPN is on, and the bit read back is 1
	//! @{
	#define DIG_ISO_IN_PORT		*(volatile Uint16 *)0x400e
	#define DIG_ISO_IN1			1
	#define DIG_ISO_IN2			2
	#define DIG_ISO_IN3			4
	#define DIG_ISO_IN4			8
	//! @}

	//! @name SD card signals. Read only.
	//! @{
	//! SD card status port
	#define SD_CARD_STATUS_PORT	*(volatile Uint16 *)0x400e
	//NOTE: This bit is set to zero in the VHDL code in the CPLD, but called SDINT in some old code.
	#define SD_INT				0x40
	//This is a combination of SD state machine running or starting up.
	#define SD_BUSY				0x80
	//! @}

#endif /* INCLUDE_PRODCPLD_H_ */

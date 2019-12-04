/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-21 17:02:30 -0400 (Tue, 21 Mar 2017) $ Date of last commit
 * $HeadURL: https://esl-dell4:555/svn/r_and_d/AAG/Experimental/Alex/trunk/Water%20Twister%20Brake/Flash%20link.cmd $ URL of repository
 *
 * $Rev:: 1464                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

 // WARNING! - The linker will let you allocate the same memory on page 0 and page 1 and not complain
 // when it puts different data in the same location.
 // You find out when flash download fails (if it's in a flash zone), or your code crashes (if it's in a RAM zone).

 //When using this linker file, you only need to erase and reprogram these flash segments:
 // C, D, G, H. A and B have to be erased once for the CSM to work (assuming no CSM password).

MEMORY
{
	PAGE 0://* Program Memory ************************************************************************
	L0SARAM : origin = 0x008000, length = 0x001000 // 4Kw L0 SARAM

//In the water twister, EF and I are not used. J is used by the parameter storage routines, so tell Debugger not to erase it during download.
	//Flash zones. Combined to get bigger contiguous sections.
	FLASH_J:			origin = 0x3D8000, length = 0x002000 // 8Kw on-chip FLASH
	FLASH_I:			origin = 0x3DA000, length = 0x002000 // 8Kw on-chip FLASH
	FLASH_GH:			origin = 0x3DC100, length = 0x007F00 // 32Kw on-chip FLASH, missing a little for BINIT table
	FLASH_EF: 			origin = 0x3E4000, length = 0x008000 // 32Kw on-chip FLASH
	FLASH_CD: 			origin = 0x3EC000, length = 0x008000 // 32Kw on-chip FLASH
	//FLASH_CDEF: 		origin = 0x3E4000, length = 0x010000 // 32Kw on-chip FLASH
	FLASH_AB: 			origin = 0x3F4000, length = 0x003F80 // 16Kw on-chip FLASH but leave room for CSM and boot to flash zone
	BEGIN_FLASH:		origin = 0x3F7FF6, length = 0x000002 // Part of FLASHA. Used for "boot to flash" bootloader mode.

	CSM_RSVD	(RWI):	origin = 0x3F7F80, length = 0x000076 // Part of FLASHA. Program with all 0x0000 when CSM is in use.
	CSM_PWL		(RW):	origin = 0x3F7FF8, length = 0x000008 // Part of FLASHA. CSM password locations in FLASHA
	//This is a little piece of H0 except for the BEGIN zone that holds a jump to DSP281x_CodeStartBranch.asm
	PRAMH0		(RWXI):	origin = 0x3F8002, length = 0x00000E
	//This is the first half of the H0 RAM zone in internal RAM that holds the RAMFUNC routines.
	//Total size 8k, but leave a little room from the edge just for extra safety - these are critical routines.
	//Rest of H0 is used in page 1.
	//This holds the code that is copied to run from internal RAM.
	RAMFUNCRAM	(RWXI):	origin = 0x3F8010, length = 0x000FE0

	BOOTROM:			origin = 0x3FF000, length = 0x000FC0 // boot ROM zone just for reference
	RESET:				origin = 0x3FFFC0, length = 0x000002 // reset vector zone in the boot rom
	VECTORS:			origin = 0x3FFFC2, length = 0x00003E // The only vector that should be used in the ROM is the reset vector

	PAGE 1 : // Data Memory *****************************************************************************
	M0SARAM:			origin = 0x000000, length = 0x000400 // 1Kw M0 SARAM
	M1SARAM:			origin = 0x000400, length = 0x000400 // 1Kw M1 SARAM
	L1SARAMStack:		origin = 0x009000, length = 0x000600 // 1.5Kw L1 SARAM for stack area
	L1SARAM:			origin = 0x009600, length = 0x000A00 // 2.5Kw L1 SARAM
	ZONE0:				origin = 0x002000, length = 0x002000 // not used XINTF zone 0
	ZONE1:				origin = 0x004000, length = 0x00000E // Altera CPLD is in this area
	ZONE26:				origin = 0x080000, length = 0x100000 // 1Mw XINTF zone 2 & 6
	//This holds the BINIT table that contains info on setting up RAMFUNC routines at startup. See linker map file.
	FLASH_GH_BINIT:		origin = 0x3DC000, length = 0x000100 // ramfunc config table
	H0SARAM:			origin = 0x3F8800, length = 0x001000 // 8Kw H0 SARAM  - this is part of ramfuncram if you're not careful
	//Hold the operating parameters for the code that we store in section J
	FLASH_J:			origin = 0x3D8000, length = 0x000400 //allow 1k of parameter storage, but not handled through linker
}


SECTIONS
{
	/* Program memory (PAGE 0) sections */
	.text:		>		FLASH_CD,		PAGE = 0	//code
	.binit:		>		FLASH_GH_BINIT,	PAGE = 1	//ramfuncs copy info table
	.cinit:		>		FLASH_GH,		PAGE = 0	//initialized variables
	.econst:	>		FLASH_GH,		PAGE = 0	//initialized constants like strings
	.switch:	>		FLASH_GH,		PAGE = 0	//tables for switch statements

	/* Data Memory (PAGE 1) sections */
	//.ebss:		>		H0SARAM,		PAGE = 1	//uninitialized globals
	//.ebss:		>		ZONE26,		PAGE = 1	//uninitialized globals
	.ebss:		>>		H0SARAM | M0SARAM | M1SARAM,		PAGE = 1	//uninitialized globals
	//Note - the stack pointer is only 16 bits, so stack must be in first 64k of RAM
	.stack:		>		L1SARAMStack,	PAGE = 1	//system stack *****WARNING***** sprintf etc need stack size set to 1k (uses 850 bytes)
	.esysmem:	>		H0SARAM,		PAGE = 1	//malloc and heap

	codestart:	>		BEGIN_FLASH,	PAGE = 0	//Used by file CodeStartBranch.asm

	csmpasswds:	>		CSM_PWL,		PAGE = 0	//Handle the code security system locations
	csm_rsvd:	>		CSM_RSVD,		PAGE = 0	//Handle the code security system locations

	ExternMem:	>		ZONE26,			PAGE = 1	//Used for the data buffer

	/*	The code that will end up as ramfunc code is stored in flash_gh.
		It will run in RAMFUNCRAM.
		The table that describes how to set it up is in BINIT, which has its own allocation area.
		BINIT is in the same area as CINIT values and similar inits.
	*/
	ramfuncs :	LOAD =		FLASH_GH,
				RUN =		RAMFUNCRAM,
				LOAD_START	(_RamfuncsLoadStart),
				LOAD_END	(_RamfuncsLoadEnd),
				RUN_START	(_RamfuncsRunStart),
				TABLE		(BINIT),
				PAGE = 		0

	//Two different files in TI's code generate a reset vector, using different section names.
	//Neither of them really does anything because the reset vector is in ROM, so they use a dummy section (DSECT).
	//If you don't have these defs, you get warnings from the linker.
	.reset		: LOAD = RESET,			PAGE = 0, TYPE = DSECT //DSECT means dummy section, don't try to store there.
	reset_vec	: LOAD = RESET,			PAGE = 0, TYPE = DSECT //DSECT means dummy section, don't try to store there.
	//Parameter storage area for this code's operation. Don't want the linker messing with it, but we have to let our code know where it is.
	Parameters	: LOAD = FLASH_J,		PAGE = 1, TYPE = DSECT //DSECT means dummy section, tells linker not to try to write there

	//Allocate IQ math areas:
	//IQmath : > FLASH_CDPAGE = 0/* Math Code */
	//IQmathTables : > BOOTROM PAGE = 0, TYPE = NOLOAD /* Math Tables In ROM */

	/* The Flash API functions can be grouped together as shown below.
	The defined symbols _Flash28_API_LoadStart, _Flash28_API_LoadEnd
	and _Flash28_API_RunStart are used to copy the API functions out
	of flash memory and into SARAM*/
/*
	Flash28_API:
	{
		-lFlash2812_API_V210.lib(.econst)
		-lFlash2812_API_V210.lib(.text)
	}
		LOAD = 		FLASH_AB,
		RUN = 		L0SARAM,
		LOAD_START	(_Flash28_API_LoadStart),
		LOAD_END	(_Flash28_API_LoadEnd),
		RUN_START	(_Flash28_API_RunStart),
		PAGE = 		0
*/
}


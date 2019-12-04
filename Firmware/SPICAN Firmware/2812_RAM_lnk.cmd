// In addition to this memory linker command file, 
// add the header linker command file directly to the project. 
// The header linker command file is required to link the
// peripheral structures to the proper locations within 
// the memory map.
//
// The header linker files are found in <base>\DSP281x_Headers\cmd
//   
// For BIOS applications add:      DSP281x_Headers_BIOS.cmd
// For nonBIOS applications add:   DSP281x_Headers_nonBIOS.cmd    

//Memory pages are each an independent memory map which can overlap.
//Inside each page, the memory must not overlap.
//This section tells the linker the memory map of your system.
//See document SPRU513j section 8.5.4
MEMORY
{
	//Typically page 0 is program memory and page 1 is data memory
	PAGE 0 :
		/* For this example, H0 is split between PAGE 0 and PAGE 1 */
		/* BEGIN is used for the "boot to HO" bootloader mode */
		/* RESET is loaded with the reset vector only if  */
		/* the boot is from XINTF Zone 7. Otherwise reset vector */
		/* is fetched from boot ROM. See .reset section below */

	//Attributes are R (read) W (write) X (execute code) I (initialized)
	//The external RAM chips
	//The following line fills external RAM with ESTOP0 instructions. Takes little longer to build but helps catch code runaways.
	//EXTERNAL_RAM	(RWXI)	:	origin = 0x80000,	length = 0x100000, fill = 0x7625
	EXTERNAL_RAM	(RWXI)	:	origin = 0x80000,	length = 0x100000
	//The M0 SARAM
	RAMM0			(RWXI)	:	origin = 0x000040,	length = 0x000400
	//A jump to DSP281x_CodeStartBranch.asm is kept here
	BEGIN			(RWXI)	:	origin = 0x3F8000,	length = 0x000002
	//This is the first half of H0 except for the BEGIN zone that holds a jump to DSP281x_CodeStartBranch.asm
	PRAMH0			(RWXI)	:	origin = 0x3F8002,	length = 0x000FFE
	//This is the reset vector where the hardware jumps to at power up. It's in ROM
	RESET			(RX)	:	origin = 0x3FFFC0,	length = 0x000002

	//added Lloyd, copied from elsewhere, covers the code security module $$$
	//These defs must be here in Page 0 to meet up with defs in DSP281x_Headers_nonBios.cmd
	CSM_RSVD		(RWI)	:	origin = 0x3F7F80,	length = 0x000076 /* Part of FLASHA. Program with all 0x0000 when CSM is in use. */
	CSM_PWL			(RW)	:	origin = 0x3F7FF8,	length = 0x000008 /* Part of FLASHA. CSM password locations in FLASHA */

	//Typically page 0 is program memory and page 1 is data memory
	PAGE 1 :
	EXTERNAL_RAM	(RWXI)	:	origin = 0x80000,	length = 0x100000
	/* For this example, H0 is split between PAGE 0 and PAGE 1 */
	//area 0x400-0x7ff is M0 and M1 SARAM
	RAMM1			(RWXI)	: origin = 0x000400,	length = 0x000400
	//This is the second half of H0
	DRAMH0			(RWXI)	: origin = 0x3f9000,	length = 0x001000
}

//This section tells the linker where each type of object gets put in memory.
//See document SPRU513j section 8.5.5
SECTIONS
{
	/* Setup for "boot to H0" mode:
	The codestart section (found in DSP28_CodeStartBranch.asm)
	re-directs execution to the start of user code.
	Place this section at the start of H0 */

	codestart	: LOAD = BEGIN,			PAGE = 0
	//Put ramfuncs in fast internal RAM
	ramfuncs	: LOAD = PRAMH0,		PAGE = 0

	//Executable code
	.text		: LOAD = EXTERNAL_RAM,	PAGE = 0
	//Init C globals at startup
	.cinit		: LOAD = EXTERNAL_RAM,	PAGE = 0
	//The .pinit section is for C++ global constructors
	//.pinit		: LOAD = EXTERNAL_RAM,	PAGE = 0
	//Jump tables for large switch statements
	.switch		: LOAD = EXTERNAL_RAM,	PAGE = 0
	//Two different files in TI's code generate a reset vector, using different sectio names
	.reset		: LOAD = RESET,			PAGE = 0, TYPE = DSECT //DSECT means dummy section, don't try to store there
	reset_vec	: LOAD = RESET,			PAGE = 0, TYPE = DSECT //DSECT means dummy section, don't try to store there
	// added by Lloyd $$$ to handle the code security system locations
	csmpasswds	: > CSM_PWL,			PAGE = 0
	csm_rsvd	: > CSM_RSVD,			PAGE = 0

	//The stack
	.stack		: > RAMM1 (HIGH),		PAGE = 1 //stack must be in the first 64k since stack pointer is 16 bits. Put at end of its area for safety.
	//Storage for global and static variables changed by LRS $$$
	.ebss		: > DRAMH0,				PAGE = 1
	//CONST variables both global and static
	.econst		: > DRAMH0,				PAGE = 1
	//The .esysmem section is for heap and malloc
	.esysmem	: > DRAMH0,				PAGE = 1

	//This seems to be for very old compilers, the symbol is different now, it has trailing underscores.
	#ifdef __TI_COMPILER_VERSION
		#if __TI_COMPILER_VERSION >= 15009000
			.TI.ramfunc : {} > PRAMH0, PAGE = 0
		#endif
	#endif
}

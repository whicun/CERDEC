/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-10-04 14:07:46 -0400 (Wed, 04 Oct 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/CPUControl.h $ URL of repository
 *
 * $Rev:: 2126                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

#ifndef INCLUDE_CPUCONTROL_H_
#define INCLUDE_CPUCONTROL_H_

	// macro definition for microsecond delay (function defined in DSP281x_usDelay.asm)
	#define DELAY_US(A)  DSP28x_usDelay(((((long double) A * 1000.0L) / (long double)CPU_RATE) - 9.0L) / 5.0L)

	extern const u8 BuildDateAndTime[];
	#define PROCESSOR_PART_ID_CODE_ADDR			0x882
	#define PROCESSOR_CHIP_REV_CODE_ADDR		0x883
	#define PROCESSOR_ROM_REV_CODE_ADDR			0x3fffba
	//fill free space with ESTOP0 instruction so hit a breakpoint if code runs away
	#define	ESTOP0_BREAKPOINT					0x7625

	#define FILL_SRAM_AT_POWERUP	TRUE
	#define POWERUP_MEM_FILL_VALUE	0

	#define M0_VECTOR_START			0
	#define M1_SARAM_END			0x800

	#define PIE_VECTOR_START		0xD00
	#define PIE_VECTOR_END			0xE00

	#define L0_SARAM_START			0x8000
	#define L0_SARAM_END			0x9000
	//special case for L1 because we're on that stack!
	#define L1_SARAM_START			0x9000 + 12
	#define L1_SARAM_END			0xA000

	#define H0_SARAM_START			0x3F8000
	#define H0_SARAM_END			0x3FA000

	// defines to be used in the system info structure
	#define THIS_SYSTEM_HARDWARE_CLASS			HARDWARE_CLASS_PROD
	#define THIS_SYSTEM_PRODUCT_CLASS			FIRMWARE_CLASS_WATERTWISTER_BRAKE
	#define THIS_SYSTEM_HARDWARE_REV			1
	//These numbers are in accordance with ESL company standard 4-6-07-013 rev C, where the last digit represents the internal rev letter
	#define THIS_SYSTEM_REVISION_NUMBER_STRING	"1.6.8a"
	#define THIS_SYSTEM_REVISION_NUMBER			0x01060800

	// typedef of system info structure
	typedef struct SystemInfoStruct
	{
		Uint16 HardwareClass;				// type of board
		Uint16 HardwareRev;					// subtype of board
		Uint16 ProductClass;				// type of product
		char16 RevisionNumberString[20];	// revision of that product software, printable (will be replaced by printing the rev number)
		Uint16 DallasSerialBytes[8];		// Dallas serial number as 8 separate bytes (comm needs it this way)
		Uint16 IsStarboardJumperInstalled;	// true if starboard side
		Uint32 RevisionNumber;				// revision of the product software
		Uint64 DallasSerialNumber;		// 64-bit ROM code of Dallas temperature sensor built into board, with CRC in the 8 MSBs of the Uint64
	} SystemInfoStruct;

	Uint16 ReadProcessorSiliconRevCode( void );
	Uint16 CheckProcessorPartIDCode( void );
	Uint32 ReadProcessorROMRevCode( void );
	Uint16 PrintSystemInfoString( void );
	void InitProcessor( void );
	void InitClockspeedSettings( void );
	void RamSpeedAdjustXINTF( void );
	void MemFill(Uint16 *StartAddr, Uint16* EndAddr, Uint16 FillValue);
	u16 _system_pre_init(void);
	Uint16 CalculateCRC8( Uint16 *buffer, Uint16 howManyBytes, Uint16 howManyBits );
	boolean ValidateCRCOperation( void );
#endif /* INCLUDE_CPUCONTROL_H_ */

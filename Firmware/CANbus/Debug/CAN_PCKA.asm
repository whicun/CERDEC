;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.7.LTS *
;* Date/Time created: Fri Dec 20 09:01:42 2019                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/CAN_PCKA.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.7.LTS Copyright (c) 1996-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\ebenton\Documents\CERDEC TS\Firmware\CANbus\Debug")
	.global	_bms_cmd
_bms_cmd:	.usect	".ebss",2,1,1
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("bms_cmd")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_bms_cmd")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _bms_cmd]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$1, DW_AT_external

	.global	_bms_status
_bms_status:	.usect	".ebss",4,1,1
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("bms_status")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_bms_status")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _bms_status]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$2, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\{B219BDDF-11D4-40F8-9839-FC1FB91CA0A9} C:\\Users\\ebenton\\AppData\\Local\\Temp\\{4A813130-0C31-44CC-BBF9-1E8988CDC8F8} 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\{6C63054B-F530-4C61-A43A-9CE01D945DB6} 

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$19	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$19, DW_AT_name("BMSSTAT1_REG")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x02)
$C$DW$3	.dwtag  DW_TAG_member
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$3, DW_AT_name("all")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$3, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$3, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$4	.dwtag  DW_TAG_member
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$4, DW_AT_name("bits")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_bits")
	.dwattr $C$DW$4, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$4, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$19


$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("BMSSTATUS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x04)
$C$DW$5	.dwtag  DW_TAG_member
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_name("status")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$5, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$5, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$6	.dwtag  DW_TAG_member
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$6, DW_AT_name("faultcode")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_faultcode")
	.dwattr $C$DW$6, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$6, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$21, DW_AT_name("BMS_CMD_BIT")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x02)
$C$DW$7	.dwtag  DW_TAG_member
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$7, DW_AT_name("MODE")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_MODE")
	.dwattr $C$DW$7, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$7, DW_AT_bit_size(0x03)
	.dwattr $C$DW$7, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$7, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$8	.dwtag  DW_TAG_member
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$8, DW_AT_name("RESET")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_RESET")
	.dwattr $C$DW$8, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$8, DW_AT_bit_size(0x01)
	.dwattr $C$DW$8, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$8, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$9	.dwtag  DW_TAG_member
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$9, DW_AT_name("RESERVED")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_RESERVED")
	.dwattr $C$DW$9, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$9, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$9, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$9, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$10	.dwtag  DW_TAG_member
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$10, DW_AT_name("MSGCOUNTRX")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_MSGCOUNTRX")
	.dwattr $C$DW$10, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$10, DW_AT_bit_size(0x10)
	.dwattr $C$DW$10, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$10, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("BMS_CMD_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$11	.dwtag  DW_TAG_member
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$11, DW_AT_name("all")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$11, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$11, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$12	.dwtag  DW_TAG_member
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$12, DW_AT_name("bit")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$12, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$12, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("BMS_STATUS_BIT1")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$13	.dwtag  DW_TAG_member
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$13, DW_AT_name("MODE")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_MODE")
	.dwattr $C$DW$13, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$13, DW_AT_bit_size(0x03)
	.dwattr $C$DW$13, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$13, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$14	.dwtag  DW_TAG_member
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$14, DW_AT_name("CONTACTOR")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_CONTACTOR")
	.dwattr $C$DW$14, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$14, DW_AT_bit_size(0x01)
	.dwattr $C$DW$14, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$14, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$15	.dwtag  DW_TAG_member
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$15, DW_AT_name("BALANCING")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_BALANCING")
	.dwattr $C$DW$15, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$15, DW_AT_bit_size(0x01)
	.dwattr $C$DW$15, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$15, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$16	.dwtag  DW_TAG_member
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$16, DW_AT_name("OTWARNING")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_OTWARNING")
	.dwattr $C$DW$16, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$16, DW_AT_bit_size(0x01)
	.dwattr $C$DW$16, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$16, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$17, DW_AT_name("OVWARNING")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_OVWARNING")
	.dwattr $C$DW$17, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$17, DW_AT_bit_size(0x01)
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$18, DW_AT_name("OCWARNING")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_OCWARNING")
	.dwattr $C$DW$18, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$18, DW_AT_bit_size(0x01)
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$19, DW_AT_name("TRIPCODE")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_TRIPCODE")
	.dwattr $C$DW$19, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$19, DW_AT_bit_size(0x05)
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)

$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)

$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)

$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)

	.dwendtag $C$DW$CU


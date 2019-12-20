;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.7.LTS *
;* Date/Time created: Fri Dec 20 09:01:48 2019                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/ad7738.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.7.LTS Copyright (c) 1996-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\ebenton\Documents\CERDEC TS\Firmware\CANbus\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_cccp$1+0,32
	.bits	0,16			; _cccp$1 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tempread+0,32
	.bits	0,16			; _tempread @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_prevSysState+0,32
	.bits	0,16			; _prevSysState @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tagscnt+0,32
	.bits	0,16			; _tagscnt @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_sysState+0,32
	.bits	0,16			; _sysState @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tagsdetect+0,32
	.bits	0,16			; _tagsdetect @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tempstart+0,32
	.bits	0,16			; _tempstart @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tempcnt+0,32
	.bits	0,16			; _tempcnt @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_mon_cnt+0,32
	.bits	0,16			; _mon_cnt @ 0


$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("setSystemOutCurrentF")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_setSystemOutCurrentF")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$1

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("BITMAP")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_BITMAP")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("mcbsp_xmit")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_mcbsp_xmit")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$11)

$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$4


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("mcbsp_init")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_mcbsp_init")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("lcd_next")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_lcd_next")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("ssr_set")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_ssr_set")
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$27)

$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$9


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("prod_add")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_prod_add")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$134)

	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("prod_init")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_prod_init")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwendtag $C$DW$14


$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("spi_xmit")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_spi_xmit")
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$27)

	.dwendtag $C$DW$15


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("spi_init")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_spi_init")
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwendtag $C$DW$17


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("wakeUpMCs")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_wakeUpMCs")
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwendtag $C$DW$18


$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("qep_init")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_qep_init")
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwendtag $C$DW$19


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("processJSRGlobal")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_processJSRGlobal")
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$20


$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("sendModStatus")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_sendModStatus")
	.dwattr $C$DW$22, DW_AT_declaration
	.dwattr $C$DW$22, DW_AT_external
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$22


$C$DW$25	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$25, DW_AT_name("CAN_Tx_SendInformationRequest")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_CAN_Tx_SendInformationRequest")
	.dwattr $C$DW$25, DW_AT_declaration
	.dwattr $C$DW$25, DW_AT_external
$C$DW$26	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$12)

$C$DW$27	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$12)

	.dwendtag $C$DW$25


$C$DW$28	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$28, DW_AT_name("setSystemCapVoltageF")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_setSystemCapVoltageF")
	.dwattr $C$DW$28, DW_AT_declaration
	.dwattr $C$DW$28, DW_AT_external
$C$DW$29	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$28

_cccp$1:	.usect	".ebss",1,1,0
	.global	_peak_reset
_peak_reset:	.usect	".ebss",1,1,0
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("peak_reset")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_peak_reset")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _peak_reset]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$30, DW_AT_external

	.global	_velidx
_velidx:	.usect	".ebss",1,1,0
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("velidx")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_velidx")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _velidx]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$31, DW_AT_external

	.global	_vall_reset
_vall_reset:	.usect	".ebss",1,1,0
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("vall_reset")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_vall_reset")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr _vall_reset]
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$32, DW_AT_external

	.global	_tempread
_tempread:	.usect	".ebss",1,1,0
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("tempread")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_tempread")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr _tempread]
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$33, DW_AT_external

	.global	_prevSysState
_prevSysState:	.usect	".ebss",1,1,0
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("prevSysState")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_prevSysState")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr _prevSysState]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_external

	.global	_monrdy
_monrdy:	.usect	".ebss",1,1,0
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("monrdy")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_monrdy")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr _monrdy]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$35, DW_AT_external

	.global	_tagscnt
_tagscnt:	.usect	".ebss",1,1,0
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("tagscnt")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_tagscnt")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr _tagscnt]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$36, DW_AT_external

	.global	_tare_reset
_tare_reset:	.usect	".ebss",1,1,0
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("tare_reset")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_tare_reset")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr _tare_reset]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$37, DW_AT_external

	.global	_sysState
_sysState:	.usect	".ebss",1,1,0
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("sysState")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_sysState")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _sysState]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$38, DW_AT_external

	.global	_ad7738_ph
_ad7738_ph:	.usect	".ebss",1,1,0
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("ad7738_ph")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_ad7738_ph")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr _ad7738_ph]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$39, DW_AT_external

	.global	_tagsdetect
_tagsdetect:	.usect	".ebss",1,1,0
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("tagsdetect")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_tagsdetect")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr _tagsdetect]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_external

	.global	_tempstart
_tempstart:	.usect	".ebss",1,1,0
$C$DW$41	.dwtag  DW_TAG_variable
	.dwattr $C$DW$41, DW_AT_name("tempstart")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_tempstart")
	.dwattr $C$DW$41, DW_AT_location[DW_OP_addr _tempstart]
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$41, DW_AT_external

	.global	_tempcnt
_tempcnt:	.usect	".ebss",1,1,0
$C$DW$42	.dwtag  DW_TAG_variable
	.dwattr $C$DW$42, DW_AT_name("tempcnt")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_tempcnt")
	.dwattr $C$DW$42, DW_AT_location[DW_OP_addr _tempcnt]
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$42, DW_AT_external

	.global	_dacvalue
_dacvalue:	.usect	".ebss",1,1,0
$C$DW$43	.dwtag  DW_TAG_variable
	.dwattr $C$DW$43, DW_AT_name("dacvalue")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_dacvalue")
	.dwattr $C$DW$43, DW_AT_location[DW_OP_addr _dacvalue]
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$43, DW_AT_external

	.global	_dacsetvolt
_dacsetvolt:	.usect	".ebss",1,1,0
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("dacsetvolt")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_dacsetvolt")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr _dacsetvolt]
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_external

	.global	_mon_cnt
_mon_cnt:	.usect	".ebss",1,1,0
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("mon_cnt")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_mon_cnt")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr _mon_cnt]
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$45, DW_AT_external

	.global	_rawrdy
_rawrdy:	.usect	".ebss",1,1,0
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("rawrdy")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_rawrdy")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr _rawrdy]
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$46, DW_AT_external


$C$DW$47	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$47, DW_AT_name("spi_recv")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_spi_recv")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$47, DW_AT_declaration
	.dwattr $C$DW$47, DW_AT_external
	.dwendtag $C$DW$47

	.global	_ad7738_rev
_ad7738_rev:	.usect	".ebss",2,1,0
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("ad7738_rev")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_ad7738_rev")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr _ad7738_rev]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$48, DW_AT_external


$C$DW$49	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$49, DW_AT_name("labs")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_labs")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$49, DW_AT_declaration
	.dwattr $C$DW$49, DW_AT_external
$C$DW$50	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$12)

	.dwendtag $C$DW$49


$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("memcpy")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$51, DW_AT_declaration
	.dwattr $C$DW$51, DW_AT_external
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$3)

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$167)

$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$168)

	.dwendtag $C$DW$51

$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("bms_cmd")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_bms_cmd")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$55, DW_AT_declaration
	.dwattr $C$DW$55, DW_AT_external


$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("getSystemCapVoltageF")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_getSystemCapVoltageF")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$56, DW_AT_declaration
	.dwattr $C$DW$56, DW_AT_external
	.dwendtag $C$DW$56

	.global	_adcdiff
_adcdiff:	.usect	".ebss",2,1,1
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("adcdiff")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_adcdiff")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr _adcdiff]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$57, DW_AT_external

	.global	_limitchgd
_limitchgd:	.usect	".ebss",4,1,0
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("limitchgd")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_limitchgd")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr _limitchgd]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$58, DW_AT_external

	.global	_mafsize
_mafsize:	.usect	".ebss",4,1,0
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("mafsize")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_mafsize")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _mafsize]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$59, DW_AT_external

	.global	_mafidx
_mafidx:	.usect	".ebss",4,1,0
$C$DW$60	.dwtag  DW_TAG_variable
	.dwattr $C$DW$60, DW_AT_name("mafidx")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_mafidx")
	.dwattr $C$DW$60, DW_AT_location[DW_OP_addr _mafidx]
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$60, DW_AT_external

	.global	_ad7738_err
_ad7738_err:	.usect	".ebss",4,1,0
$C$DW$61	.dwtag  DW_TAG_variable
	.dwattr $C$DW$61, DW_AT_name("ad7738_err")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_ad7738_err")
	.dwattr $C$DW$61, DW_AT_location[DW_OP_addr _ad7738_err]
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$195)
	.dwattr $C$DW$61, DW_AT_external

	.global	_enccnt
_enccnt:	.usect	".ebss",4,1,1
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("enccnt")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_enccnt")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _enccnt]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$62, DW_AT_external

	.global	_veldsum
_veldsum:	.usect	".ebss",4,1,1
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("veldsum")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_veldsum")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr _veldsum]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$63, DW_AT_external

	.global	_limit
_limit:	.usect	".ebss",4,1,0
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("limit")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_limit")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr _limit]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$64, DW_AT_external

$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("CpuTimer0Regs")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_CpuTimer0Regs")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$65, DW_AT_declaration
	.dwattr $C$DW$65, DW_AT_external

	.global	_ad7738_cnt
_ad7738_cnt:	.usect	".ebss",8,1,1
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("ad7738_cnt")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_ad7738_cnt")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr _ad7738_cnt]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$66, DW_AT_external

	.global	_ad7738_raw
_ad7738_raw:	.usect	".ebss",8,1,1
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("ad7738_raw")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_ad7738_raw")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_addr _ad7738_raw]
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$67, DW_AT_external

	.global	_daci
_daci:	.usect	".ebss",8,1,1
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("daci")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_daci")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr _daci]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$68, DW_AT_external

	.global	_mafdiff
_mafdiff:	.usect	".ebss",8,1,1
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("mafdiff")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_mafdiff")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _mafdiff]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_external

	.global	_dacs
_dacs:	.usect	".ebss",16,1,1
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("dacs")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_dacs")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr _dacs]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$70, DW_AT_external

	.global	_ad7738_load
_ad7738_load:	.usect	".ebss",16,1,1
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("ad7738_load")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_ad7738_load")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr _ad7738_load]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$71, DW_AT_external

	.global	_ad7738_mon
_ad7738_mon:	.usect	".ebss",16,1,1
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("ad7738_mon")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_ad7738_mon")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr _ad7738_mon]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$72, DW_AT_external

	.global	_hfactor
_hfactor:	.usect	".ebss",16,1,1
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("hfactor")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_hfactor")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr _hfactor]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$73, DW_AT_external

	.global	_ad7738_peak
_ad7738_peak:	.usect	".ebss",16,1,1
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("ad7738_peak")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_ad7738_peak")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr _ad7738_peak]
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$74, DW_AT_external

	.global	_ad7738_vall
_ad7738_vall:	.usect	".ebss",16,1,1
$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("ad7738_vall")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_ad7738_vall")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_addr _ad7738_vall]
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$75, DW_AT_external

	.global	_mafsum
_mafsum:	.usect	".ebss",16,1,1
$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("mafsum")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_mafsum")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_addr _mafsum]
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$76, DW_AT_external

	.global	_ad7738_tare
_ad7738_tare:	.usect	".ebss",16,1,1
$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("ad7738_tare")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_ad7738_tare")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_addr _ad7738_tare]
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$77, DW_AT_external

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_PieCtrlRegs")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$79, DW_AT_declaration
	.dwattr $C$DW$79, DW_AT_external

	.global	_intercept
_intercept:	.usect	".ebss",176,1,1
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("intercept")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_intercept")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr _intercept]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$80, DW_AT_external

	.global	_slope
_slope:	.usect	".ebss",176,1,1
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("slope")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_slope")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr _slope]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$81, DW_AT_external

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("PieVectTable")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_PieVectTable")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("conf_data")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_conf_data")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external

	.global	_velpbuf
_velpbuf:	.usect	"bigbuffer",4096,1,1
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("velpbuf")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_velpbuf")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr _velpbuf]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$84, DW_AT_external

	.global	_veldbuf
_veldbuf:	.usect	"bigbuffer",4096,1,1
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("veldbuf")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_veldbuf")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr _veldbuf]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$222)
	.dwattr $C$DW$85, DW_AT_external

	.global	_mafbuf
_mafbuf:	.usect	"bigbuffer",32768,1,1
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("mafbuf")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_mafbuf")
	.dwattr $C$DW$86, DW_AT_location[DW_OP_addr _mafbuf]
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$86, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\{E12FB43E-9979-4530-A8E5-121A7EDADC97} C:\\Users\\ebenton\\AppData\\Local\\Temp\\{0967BFDD-ED3A-4514-9B1E-D6137DBCA08F} 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\{B1CB67CE-2C58-4EE7-AB76-E5ADCA823E41} 
	.sect	".text"
	.clink
	.global	_velf_rst

$C$DW$87	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$87, DW_AT_name("velf_rst")
	.dwattr $C$DW$87, DW_AT_low_pc(_velf_rst)
	.dwattr $C$DW$87, DW_AT_high_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_velf_rst")
	.dwattr $C$DW$87, DW_AT_external
	.dwattr $C$DW$87, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$87, DW_AT_TI_begin_line(0xe4)
	.dwattr $C$DW$87, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$87, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/ad7738.c",line 229,column 1,is_stmt,address _velf_rst,isa 0

	.dwfde $C$DW$CIE, _velf_rst
;----------------------------------------------------------------------
; 228 | void velf_rst()                                                        
; 230 | int i, j;                                                              
; 232 | for( i = 0; i < ENC_MAX; i++ )                                         
; 234 |   enccnt[i] = 0;                                                       
; 235 |   for( j = 0; j < VEL_MAX; j++ )                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _velf_rst                     FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_velf_rst:
;* AR6   assigned to $O$L2
;* AL    assigned to $O$U11
;* AR1   assigned to $O$U30
;* AR7   assigned to $O$U21
;* AR5   assigned to $O$U17
;* AR0   assigned to $O$U7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVB      ACC,#0                ; [CPU_] 
        MOVL      XAR0,#_enccnt         ; [CPU_U] 
        MOVB      XAR4,#1               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 237,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 237 | velpbuf[i][j] = 0;                                                     
;----------------------------------------------------------------------
        MOV       P,#0                  ; [CPU_] |237| 
        MOVL      XAR1,#_veldsum        ; [CPU_U] 
$C$L1:    
        MOVL      XAR5,#_velpbuf        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 234,column 5,is_stmt,isa 0
        MOVB      XAR6,#0               ; [CPU_] |234| 
        MOVL      XAR7,#_veldbuf        ; [CPU_U] 
        ADDL      XAR5,ACC              ; [CPU_] 
        ADDL      XAR7,ACC              ; [CPU_] 
        MOVL      *+XAR0[0],XAR6        ; [CPU_] |234| 
        MOVL      XAR6,#1023            ; [CPU_] 
$C$L2:    
	.dwpsn	file "../Source/ad7738.c",line 237,column 7,is_stmt,isa 0
        MOVL      *XAR5++,P             ; [CPU_] |237| 
	.dwpsn	file "../Source/ad7738.c",line 238,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | veldbuf[i][j] = 0;                                                     
;----------------------------------------------------------------------
        MOVL      *XAR7++,P             ; [CPU_] |238| 
	.dwpsn	file "../Source/ad7738.c",line 235,column 17,is_stmt,isa 0
        BANZ      $C$L2,AR6--           ; [CPU_] |235| 
        ; branchcc occurs ; [] |235| 
	.dwpsn	file "../Source/ad7738.c",line 240,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 240 | veldsum[i] = 0;                                                        
;----------------------------------------------------------------------
        MOVB      XAR6,#0               ; [CPU_] |240| 
	.dwpsn	file "../Source/ad7738.c",line 232,column 15,is_stmt,isa 0
        ADDB      XAR0,#2               ; [CPU_] |232| 
        ADD       ACC,#1 << 11          ; [CPU_] |232| 
	.dwpsn	file "../Source/ad7738.c",line 240,column 5,is_stmt,isa 0
        MOVL      *XAR1++,XAR6          ; [CPU_] |240| 
	.dwpsn	file "../Source/ad7738.c",line 232,column 15,is_stmt,isa 0
        BANZ      $C$L1,AR4--           ; [CPU_] |232| 
        ; branchcc occurs ; [] |232| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
        MOVW      DP,#_velidx           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 242,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 242 | velidx = 0;                                                            
;----------------------------------------------------------------------
        MOV       @_velidx,#0           ; [CPU_] |242| 
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$87, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$87, DW_AT_TI_end_line(0xf3)
	.dwattr $C$DW$87, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$87

	.sect	".text"
	.clink
	.global	_checkFaults

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("checkFaults")
	.dwattr $C$DW$89, DW_AT_low_pc(_checkFaults)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_checkFaults")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$89, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x2ac)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../Source/ad7738.c",line 684,column 23,is_stmt,address _checkFaults,isa 0

	.dwfde $C$DW$CIE, _checkFaults
;----------------------------------------------------------------------
; 684 | int checkFaults(void) {                                                
; 685 | float capVolt1, capVolt2, outCurr, maxTemp;                            
; 686 | int fault=0;                                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _checkFaults                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_checkFaults:
;* AR1   assigned to _fault
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("fault")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_fault")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _maxTemp
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("maxTemp")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_maxTemp")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _outCurr
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("outCurr")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_outCurr")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _capVolt2
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("capVolt2")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_capVolt2")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg8]

;* AR2   assigned to _capVolt1
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("capVolt1")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_capVolt1")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../Source/ad7738.c",line 688,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 688 | capVolt1 = getSystemCapVoltageF();                                     
; 689 | //capVolt2 = ((float)System.capVoltage)/10.0;                          
; 691 | //outCurr = System.outCurrentF;                                        
; 692 | //maxTemp = (float)(System.shelves[0].maxTemp/10.0);                   
; 694 | if(capVolt1 > MAXCAPVOLTFAULT || capVolt2 > MAXCAPVOLTFAULT) {         
;----------------------------------------------------------------------
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_getSystemCapVoltageF")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_getSystemCapVoltageF ; [CPU_] |688| 
        ; call occurs [#_getSystemCapVoltageF] ; [] |688| 
        MOVL      XAR2,ACC              ; [CPU_] |688| 
	.dwpsn	file "../Source/ad7738.c",line 695,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 695 | fault |= FAULTOVERVOLT;                                                
; 697 | else if(capVolt1 > MAXCAPVOLTALARM || capVolt2 > MAXCAPVOLTALARM) {    
; 698 | fault |= ALARMOVERVOLT;                                                
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |695| 
        MOV       AH,#17307             ; [CPU_] |695| 
        MOVL      *-SP[2],ACC           ; [CPU_] |695| 
        MOVL      ACC,XAR2              ; [CPU_] |695| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |695| 
        ; call occurs [#FS$$CMP] ; [] |695| 
        CMPB      AL,#0                 ; [CPU_] |695| 
        B         $C$L3,GT              ; [CPU_] |695| 
        ; branchcc occurs ; [] |695| 
        MOV       AL,#0                 ; [CPU_] |695| 
        MOV       AH,#17307             ; [CPU_] |695| 
        MOVL      *-SP[2],ACC           ; [CPU_] |695| 
        MOVL      ACC,XAR2              ; [CPU_] |695| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |695| 
        ; call occurs [#FS$$CMP] ; [] |695| 
        CMPB      AL,#0                 ; [CPU_] |695| 
        B         $C$L4,LEQ             ; [CPU_] |695| 
        ; branchcc occurs ; [] |695| 
$C$L3:    
        MOVB      XAR1,#16              ; [CPU_] |695| 
        B         $C$L5,UNC             ; [CPU_] |695| 
        ; branch occurs ; [] |695| 
$C$L4:    
        MOV       AL,#32768             ; [CPU_] |695| 
        MOV       AH,#17304             ; [CPU_] |695| 
        MOVL      *-SP[2],ACC           ; [CPU_] |695| 
        MOVL      ACC,XAR2              ; [CPU_] |695| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |695| 
        ; call occurs [#FS$$CMP] ; [] |695| 
        MOVB      XAR1,#1               ; [CPU_] |695| 
        CMPB      AL,#0                 ; [CPU_] |695| 
        B         $C$L5,GT              ; [CPU_] |695| 
        ; branchcc occurs ; [] |695| 
        MOV       AL,#32768             ; [CPU_] |695| 
        MOV       AH,#17304             ; [CPU_] |695| 
        MOVL      *-SP[2],ACC           ; [CPU_] |695| 
        MOVL      ACC,XAR2              ; [CPU_] |695| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |695| 
        ; call occurs [#FS$$CMP] ; [] |695| 
        CMPB      AL,#0                 ; [CPU_] |695| 
        MOVB      XAR1,#0,LEQ           ; [CPU_] |695| 
$C$L5:    
	.dwpsn	file "../Source/ad7738.c",line 700,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 700 | if(capVolt1 < MINCAPVOLTFAULT || capVolt2 < MINCAPVOLTFAULT) {         
; 701 |         fault |= FAULTUNDERVOLT;                                       
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |700| 
        MOV       AH,#17262             ; [CPU_] |700| 
        MOVL      *-SP[2],ACC           ; [CPU_] |700| 
        MOVL      ACC,XAR2              ; [CPU_] |700| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |700| 
        ; call occurs [#FS$$CMP] ; [] |700| 
        CMPB      AL,#0                 ; [CPU_] |700| 
        B         $C$L7,LT              ; [CPU_] |700| 
        ; branchcc occurs ; [] |700| 
        MOV       AL,#0                 ; [CPU_] |700| 
        MOV       AH,#17262             ; [CPU_] |700| 
        MOVL      *-SP[2],ACC           ; [CPU_] |700| 
        MOVL      ACC,XAR2              ; [CPU_] |700| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |700| 
        ; call occurs [#FS$$CMP] ; [] |700| 
        CMPB      AL,#0                 ; [CPU_] |700| 
        B         $C$L7,LT              ; [CPU_] |700| 
        ; branchcc occurs ; [] |700| 
	.dwpsn	file "../Source/ad7738.c",line 703,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 703 | else if(capVolt1 < MINCAPVOLTALARM || capVolt2 < MINCAPVOLTALARM) {    
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |703| 
        MOV       AH,#17274             ; [CPU_] |703| 
        MOVL      *-SP[2],ACC           ; [CPU_] |703| 
        MOVL      ACC,XAR2              ; [CPU_] |703| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |703| 
        ; call occurs [#FS$$CMP] ; [] |703| 
        CMPB      AL,#0                 ; [CPU_] |703| 
        B         $C$L6,LT              ; [CPU_] |703| 
        ; branchcc occurs ; [] |703| 
        MOV       AL,#0                 ; [CPU_] |703| 
        MOV       AH,#17274             ; [CPU_] |703| 
        MOVL      *-SP[2],ACC           ; [CPU_] |703| 
        MOVL      ACC,XAR2              ; [CPU_] |703| 
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |703| 
        ; call occurs [#FS$$CMP] ; [] |703| 
        CMPB      AL,#0                 ; [CPU_] |703| 
        B         $C$L9,GEQ             ; [CPU_] |703| 
        ; branchcc occurs ; [] |703| 
$C$L6:    
        MOV       AL,AR1                ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 704,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 704 | fault |= ALARMUNDERVOLT;                                               
;----------------------------------------------------------------------
        ORB       AL,#0x02              ; [CPU_] |704| 
        B         $C$L8,UNC             ; [CPU_] |704| 
        ; branch occurs ; [] |704| 
$C$L7:    
        MOV       AL,AR1                ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 701,column 3,is_stmt,isa 0
        ORB       AL,#0x20              ; [CPU_] |701| 
$C$L8:    
        MOVZ      AR1,AL                ; [CPU_] |701| 
$C$L9:    
	.dwpsn	file "../Source/ad7738.c",line 706,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 706 | if(outCurr > MAXCURRFAULT) {                                           
; 707 |         fault |= FAULTOVERCURR;                                        
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |706| 
        MOV       AH,#17530             ; [CPU_] |706| 
        MOVL      *-SP[2],ACC           ; [CPU_] |706| 
        MOVL      ACC,XAR1              ; [CPU_] |706| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |706| 
        ; call occurs [#FS$$CMP] ; [] |706| 
        CMPB      AL,#0                 ; [CPU_] |706| 
        B         $C$L10,GT             ; [CPU_] |706| 
        ; branchcc occurs ; [] |706| 
	.dwpsn	file "../Source/ad7738.c",line 709,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 709 | else if(outCurr > MAXCURRALARM) {                                      
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |709| 
        MOV       AH,#17302             ; [CPU_] |709| 
        MOVL      *-SP[2],ACC           ; [CPU_] |709| 
        MOVL      ACC,XAR1              ; [CPU_] |709| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |709| 
        ; call occurs [#FS$$CMP] ; [] |709| 
        CMPB      AL,#0                 ; [CPU_] |709| 
        B         $C$L12,LEQ            ; [CPU_] |709| 
        ; branchcc occurs ; [] |709| 
        MOV       AL,AR1                ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 710,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 710 | fault |= ALARMOVERCURR;                                                
;----------------------------------------------------------------------
        ORB       AL,#0x04              ; [CPU_] |710| 
        B         $C$L11,UNC            ; [CPU_] |710| 
        ; branch occurs ; [] |710| 
$C$L10:    
        MOV       AL,AR1                ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 707,column 3,is_stmt,isa 0
        ORB       AL,#0x40              ; [CPU_] |707| 
$C$L11:    
        MOVZ      AR1,AL                ; [CPU_] |707| 
$C$L12:    
	.dwpsn	file "../Source/ad7738.c",line 712,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 712 | if(maxTemp > MAXCAPTEMPFAULT) {                                        
; 713 |         fault |= FAULTOVERCURR;                                        
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |712| 
        MOV       AH,#17036             ; [CPU_] |712| 
        MOVL      *-SP[2],ACC           ; [CPU_] |712| 
        MOVL      ACC,XAR1              ; [CPU_] |712| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |712| 
        ; call occurs [#FS$$CMP] ; [] |712| 
        CMPB      AL,#0                 ; [CPU_] |712| 
        B         $C$L13,GT             ; [CPU_] |712| 
        ; branchcc occurs ; [] |712| 
	.dwpsn	file "../Source/ad7738.c",line 715,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 715 | else if(maxTemp > MAXCAPTEMPALARM) {                                   
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |715| 
        MOV       AH,#16968             ; [CPU_] |715| 
        MOVL      *-SP[2],ACC           ; [CPU_] |715| 
        MOVL      ACC,XAR1              ; [CPU_] |715| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |715| 
        ; call occurs [#FS$$CMP] ; [] |715| 
        CMPB      AL,#0                 ; [CPU_] |715| 
        B         $C$L15,LEQ            ; [CPU_] |715| 
        ; branchcc occurs ; [] |715| 
        MOV       AL,AR1                ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 716,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 716 | fault |= ALARMOVERCURR;                                                
; 719 | return fault;                                                          
;----------------------------------------------------------------------
        ORB       AL,#0x04              ; [CPU_] |716| 
        B         $C$L14,UNC            ; [CPU_] |716| 
        ; branch occurs ; [] |716| 
$C$L13:    
        MOV       AL,AR1                ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 713,column 3,is_stmt,isa 0
        ORB       AL,#0x40              ; [CPU_] |713| 
$C$L14:    
        MOVZ      AR1,AL                ; [CPU_] |713| 
$C$L15:    
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -6
        MOV       AL,AR1                ; [CPU_] 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x2d1)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.clink
	.global	_stateMachine

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("stateMachine")
	.dwattr $C$DW$109, DW_AT_low_pc(_stateMachine)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_stateMachine")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x2dc)
	.dwattr $C$DW$109, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/ad7738.c",line 732,column 25,is_stmt,address _stateMachine,isa 0

	.dwfde $C$DW$CIE, _stateMachine
;----------------------------------------------------------------------
; 732 | void stateMachine(void) {                                              
; 733 | int faults;                                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _stateMachine                 FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_stateMachine:
;* AR1   assigned to _faults
$C$DW$110	.dwtag  DW_TAG_variable
	.dwattr $C$DW$110, DW_AT_name("faults")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_faults")
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/ad7738.c",line 735,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 735 | faults = checkFaults()&0xFFF0;                                         
;----------------------------------------------------------------------
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_checkFaults")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #_checkFaults         ; [CPU_] |735| 
        ; call occurs [#_checkFaults] ; [] |735| 
        MOVW      DP,#_sysState         ; [CPU_U] 
        AND       AL,AL,#0xfff0         ; [CPU_] |735| 
        MOVZ      AR1,AL                ; [CPU_] |735| 
	.dwpsn	file "../Source/ad7738.c",line 737,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 737 | switch(sysState) {                                                     
; 738 |         case sOFF:                                                     
; 739 |                 if(prevSysState != sOFF) {                             
; 741 |                 prevSysState = sOFF;                                   
; 742 |                 sysState = sINIT;                                      
; 743 |         break;                                                         
; 744 |         case sINIT:                                                    
; 745 |                 if(prevSysState != sINIT) {                            
; 746 |                         // TODO: verify contactor is open              
; 747 |                         wakeUpMCs();                                   
; 750 |                 prevSysState = sINIT;                                  
; 752 |                 if(faults == 0 && bms_cmd.bit.MODE == 1) {             
; 753 |                         sysState = sSTANDBY;                           
; 756 |         break;                                                         
; 757 |         case sSTANDBY:                                                 
; 758 |                 if(prevSysState != sSTANDBY) {                         
; 760 |                 prevSysState = sSTANDBY;                               
; 762 |                 if(faults) {                                           
; 763 |                         sysState = sFAULT;                             
; 765 |                 else if(faults == 0 && bms_cmd.bit.MODE == 2) {        
; 766 |                         sysState = sON;                                
; 771 |         break;                                                         
; 772 |         case sON:                                                      
; 773 |                 if(prevSysState != sON) {                              
; 774 |                         // TODO: Close contactor                       
;----------------------------------------------------------------------
        MOV       AL,@_sysState         ; [CPU_] |737| 
        CMPB      AL,#2                 ; [CPU_] |737| 
        B         $C$L16,GT             ; [CPU_] |737| 
        ; branchcc occurs ; [] |737| 
        CMPB      AL,#2                 ; [CPU_] |737| 
        B         $C$L18,EQ             ; [CPU_] |737| 
        ; branchcc occurs ; [] |737| 
        CMPB      AL,#0                 ; [CPU_] |737| 
        B         $C$L24,EQ             ; [CPU_] |737| 
        ; branchcc occurs ; [] |737| 
        CMPB      AL,#1                 ; [CPU_] |737| 
        B         $C$L20,EQ             ; [CPU_] |737| 
        ; branchcc occurs ; [] |737| 
        B         $C$L25,UNC            ; [CPU_] |737| 
        ; branch occurs ; [] |737| 
$C$L16:    
        CMPB      AL,#3                 ; [CPU_] |737| 
        B         $C$L17,EQ             ; [CPU_] |737| 
        ; branchcc occurs ; [] |737| 
        CMPB      AL,#7                 ; [CPU_] |737| 
        B         $C$L23,EQ             ; [CPU_] |737| 
        ; branchcc occurs ; [] |737| 
        B         $C$L25,UNC            ; [CPU_] |737| 
        ; branch occurs ; [] |737| 
$C$L17:    
	.dwpsn	file "../Source/ad7738.c",line 776,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 776 | prevSysState = sON;                                                    
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |776| 
        MOVB      @_prevSysState,#3,UNC ; [CPU_] |776| 
	.dwpsn	file "../Source/ad7738.c",line 778,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 778 | if(faults) {                                                           
; 779 |         sysState = sFAULT;                                             
; 781 | else if(faults == 0 && bms_cmd.bit.MODE == 1) {                        
; 782 |         sysState = sSTANDBY;                                           
; 785 | break;                                                                 
; 786 | case sFAULT:                                                           
; 787 | if(prevSysState != sFAULT) {                                           
;----------------------------------------------------------------------
        B         $C$L19,NEQ            ; [CPU_] |778| 
        ; branchcc occurs ; [] |778| 
        B         $C$L22,UNC            ; [CPU_] |778| 
        ; branch occurs ; [] |778| 
$C$L18:    
	.dwpsn	file "../Source/ad7738.c",line 760,column 4,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |760| 
        MOVB      @_prevSysState,#2,UNC ; [CPU_] |760| 
	.dwpsn	file "../Source/ad7738.c",line 762,column 4,is_stmt,isa 0
        B         $C$L19,NEQ            ; [CPU_] |762| 
        ; branchcc occurs ; [] |762| 
        MOVW      DP,#_bms_cmd          ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 765,column 9,is_stmt,isa 0
        MOV       AL,@_bms_cmd          ; [CPU_] |765| 
        ANDB      AL,#0x07              ; [CPU_] |765| 
        MOVW      DP,#_sysState         ; [CPU_U] 
        CMPB      AL,#2                 ; [CPU_] |765| 
	.dwpsn	file "../Source/ad7738.c",line 766,column 5,is_stmt,isa 0
        MOVB      @_sysState,#3,EQ      ; [CPU_] |766| 
        B         $C$L25,UNC            ; [CPU_] |766| 
        ; branch occurs ; [] |766| 
$C$L19:    
	.dwpsn	file "../Source/ad7738.c",line 763,column 5,is_stmt,isa 0
        MOVB      @_sysState,#7,UNC     ; [CPU_] |763| 
	.dwpsn	file "../Source/ad7738.c",line 764,column 4,is_stmt,isa 0
        B         $C$L25,UNC            ; [CPU_] |764| 
        ; branch occurs ; [] |764| 
$C$L20:    
	.dwpsn	file "../Source/ad7738.c",line 745,column 4,is_stmt,isa 0
        MOV       AL,@_prevSysState     ; [CPU_] |745| 
        CMPB      AL,#1                 ; [CPU_] |745| 
        B         $C$L21,EQ             ; [CPU_] |745| 
        ; branchcc occurs ; [] |745| 
	.dwpsn	file "../Source/ad7738.c",line 747,column 5,is_stmt,isa 0
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_wakeUpMCs")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #_wakeUpMCs           ; [CPU_] |747| 
        ; call occurs [#_wakeUpMCs] ; [] |747| 
$C$L21:    
        MOVW      DP,#_prevSysState     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 750,column 4,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |750| 
        MOVB      @_prevSysState,#1,UNC ; [CPU_] |750| 
	.dwpsn	file "../Source/ad7738.c",line 752,column 4,is_stmt,isa 0
        B         $C$L25,NEQ            ; [CPU_] |752| 
        ; branchcc occurs ; [] |752| 
$C$L22:    
        MOVW      DP,#_bms_cmd          ; [CPU_U] 
        MOV       AL,@_bms_cmd          ; [CPU_] |752| 
        ANDB      AL,#0x07              ; [CPU_] |752| 
        MOVW      DP,#_sysState         ; [CPU_U] 
        CMPB      AL,#1                 ; [CPU_] |752| 
	.dwpsn	file "../Source/ad7738.c",line 753,column 5,is_stmt,isa 0
        MOVB      @_sysState,#2,EQ      ; [CPU_] |753| 
        B         $C$L25,UNC            ; [CPU_] |753| 
        ; branch occurs ; [] |753| 
$C$L23:    
	.dwpsn	file "../Source/ad7738.c",line 789,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 789 | prevSysState = sFAULT;                                                 
;----------------------------------------------------------------------
        MOVB      @_prevSysState,#7,UNC ; [CPU_] |789| 
	.dwpsn	file "../Source/ad7738.c",line 791,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 791 | break;                                                                 
; 793 | default:                                                               
; 794 | break;                                                                 
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_] |791| 
        ; branch occurs ; [] |791| 
$C$L24:    
	.dwpsn	file "../Source/ad7738.c",line 741,column 4,is_stmt,isa 0
        MOV       @_prevSysState,#0     ; [CPU_] |741| 
	.dwpsn	file "../Source/ad7738.c",line 742,column 4,is_stmt,isa 0
        MOVB      @_sysState,#1,UNC     ; [CPU_] |742| 
$C$L25:    
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x31d)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text"
	.clink
	.global	_maf_rst

$C$DW$114	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$114, DW_AT_name("maf_rst")
	.dwattr $C$DW$114, DW_AT_low_pc(_maf_rst)
	.dwattr $C$DW$114, DW_AT_high_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_maf_rst")
	.dwattr $C$DW$114, DW_AT_external
	.dwattr $C$DW$114, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$114, DW_AT_TI_begin_line(0xd1)
	.dwattr $C$DW$114, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$114, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/ad7738.c",line 210,column 1,is_stmt,address _maf_rst,isa 0

	.dwfde $C$DW$CIE, _maf_rst
;----------------------------------------------------------------------
; 209 | void maf_rst()                                                         
; 211 | int i, j;                                                              
; 213 | for( i = 0; i < CHS_MAX; i++ )                                         
; 215 |   for( j = 0; j < MAF_MAX; j++ )                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _maf_rst                      FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_maf_rst:
;* AR6   assigned to $O$L2
;* XT    assigned to $O$U5
;* AR1   assigned to $O$U31
;* AR0   assigned to $O$U27
;* AR7   assigned to $O$U23
;* AR5   assigned to $O$U12
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVB      ACC,#0                ; [CPU_] 
        MOVL      XAR0,#_mafidx         ; [CPU_U] 
        MOVL      XAR7,#_mafsum         ; [CPU_U] 
        MOVB      XAR4,#3               ; [CPU_] 
        MOVL      XAR1,#_mafsize        ; [CPU_U] 
        MOVL      XT,ACC                ; [CPU_] 
$C$L26:    
        MOVL      XAR5,#_mafbuf         ; [CPU_U] 
        ADDL      XAR5,ACC              ; [CPU_] 
        MOVL      XAR6,#4095            ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 217,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | mafbuf[i][j] = 0;                                                      
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |217| 
$C$L27:    
        MOVL      *XAR5++,ACC           ; [CPU_] |217| 
	.dwpsn	file "../Source/ad7738.c",line 215,column 17,is_stmt,isa 0
        BANZ      $C$L27,AR6--          ; [CPU_] |215| 
        ; branchcc occurs ; [] |215| 
	.dwpsn	file "../Source/ad7738.c",line 219,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 219 | mafsum[i] = 0;                                                         
;----------------------------------------------------------------------
        ZAPA      ; [CPU_] |219| 
        MOVL      *XAR7++,P             ; [CPU_] |219| 
        MOVL      *XAR7++,ACC           ; [CPU_] |219| 
	.dwpsn	file "../Source/ad7738.c",line 220,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | mafidx[i] = 0;                                                         
;----------------------------------------------------------------------
        MOV       *XAR0++,#0            ; [CPU_] |220| 
	.dwpsn	file "../Source/ad7738.c",line 221,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 221 | mafsize[i] = 0;                                                        
;----------------------------------------------------------------------
        MOVL      ACC,XT                ; [CPU_] |221| 
        MOV       *XAR1++,#0            ; [CPU_] |221| 
	.dwpsn	file "../Source/ad7738.c",line 213,column 15,is_stmt,isa 0
        ADD       ACC,#1 << 13          ; [CPU_] |213| 
        MOVL      XT,ACC                ; [CPU_] |213| 
        BANZ      $C$L26,AR4--          ; [CPU_] |213| 
        ; branchcc occurs ; [] |213| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$114, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$114, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$114, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$114

	.sect	".text"
	.clink
	.global	_dac_setmode

$C$DW$116	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$116, DW_AT_name("dac_setmode")
	.dwattr $C$DW$116, DW_AT_low_pc(_dac_setmode)
	.dwattr $C$DW$116, DW_AT_high_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_dac_setmode")
	.dwattr $C$DW$116, DW_AT_external
	.dwattr $C$DW$116, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$116, DW_AT_TI_begin_line(0x19b)
	.dwattr $C$DW$116, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$116, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 412,column 1,is_stmt,address _dac_setmode,isa 0

	.dwfde $C$DW$CIE, _dac_setmode
$C$DW$117	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$117, DW_AT_name("mode")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 411 | void dac_setmode( int mode )                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _dac_setmode                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_dac_setmode:
;* AL    assigned to _mode
$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("mode")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_dacsetvolt       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 413,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 413 | dacsetvolt = mode;                                                     
;----------------------------------------------------------------------
        MOV       @_dacsetvolt,AL       ; [CPU_] |413| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$116, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$116, DW_AT_TI_end_line(0x19e)
	.dwattr $C$DW$116, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$116

	.sect	"secureRamFuncs:retain"
	.retain
	.retainrefs
	.global	_cpu_timer0_isr

$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("cpu_timer0_isr")
	.dwattr $C$DW$120, DW_AT_low_pc(_cpu_timer0_isr)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_cpu_timer0_isr")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x322)
	.dwattr $C$DW$120, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$120, DW_AT_TI_interrupt
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(-58)
	.dwpsn	file "../Source/ad7738.c",line 803,column 1,is_stmt,address _cpu_timer0_isr,isa 0

	.dwfde $C$DW$CIE, _cpu_timer0_isr
$C$DW$121	.dwtag  DW_TAG_variable
	.dwattr $C$DW$121, DW_AT_name("cccp")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_cccp$1")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_addr _cccp$1]

;----------------------------------------------------------------------
; 802 | interrupt void cpu_timer0_isr()                                        
; 805 | int i, j, g;                                                           
; 806 | long temp;                                                             
; 807 | int status;                                                            
; 808 | double limld;                                                          
; 809 |       static int cccp=0;                                               
; 811 | // GpioDataRegs.GPBCLEAR.bit.GPIOB3 = 1;      // DEBUG: TAG_TX         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _cpu_timer0_isr               FR SIZE:  56           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter, 36 Auto, 16 SOE     *
;***************************************************************

_cpu_timer0_isr:
;* AR2   assigned to $O$C3
;* AL    assigned to $O$C4
;* AR7   assigned to $O$C5
;* AR7   assigned to $O$C6
;* AR4   assigned to $O$C7
;* AR4   assigned to $O$C8
;* AR4   assigned to $O$C9
;* AR4   assigned to $O$C10
;* AR1   assigned to $O$U21
;* AR6   assigned to $O$U127
;* AR0   assigned to $O$K134
;* XT    assigned to $O$U132
;* AR1   assigned to $O$U129
;* AR4   assigned to $O$U118
;* AR2   assigned to $O$U140
;* AR5   assigned to $O$U151
;* AR3   assigned to $O$K114
;* AR6   assigned to $O$U182
;* AL    assigned to $O$U212
;* AR6   assigned to $O$P1
;* PL    assigned to $O$P2
;* AR4   assigned to _j
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("j")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg12]

$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("i")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_breg20 -17]

;* AR1   assigned to $O$K206
;* AR1   assigned to _status
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("status")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _status
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("status")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _status
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("status")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _status
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("status")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg6]

;* AR3   assigned to _temp
$C$DW$128	.dwtag  DW_TAG_variable
	.dwattr $C$DW$128, DW_AT_name("temp")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg10]

;* AR3   assigned to _temp
$C$DW$129	.dwtag  DW_TAG_variable
	.dwattr $C$DW$129, DW_AT_name("temp")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg10]

;* AR3   assigned to _temp
$C$DW$130	.dwtag  DW_TAG_variable
	.dwattr $C$DW$130, DW_AT_name("temp")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$130, DW_AT_location[DW_OP_reg10]

;* AR3   assigned to _temp
$C$DW$131	.dwtag  DW_TAG_variable
	.dwattr $C$DW$131, DW_AT_name("temp")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_temp")
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$131, DW_AT_location[DW_OP_reg10]

$C$DW$132	.dwtag  DW_TAG_variable
	.dwattr $C$DW$132, DW_AT_name("spi_buf")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_spi_buf")
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$132, DW_AT_location[DW_OP_breg20 -16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ASP       ; [CPU_] 
        PUSH      AR1H:AR0H             ; [CPU_] 
	.dwcfi	save_reg_to_mem, 5, 2
	.dwcfi	save_reg_to_mem, 7, 3
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XT              ; [CPU_] 
	.dwcfi	save_reg_to_mem, 21, 4
	.dwcfi	save_reg_to_mem, 22, 5
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 8, 6
	.dwcfi	save_reg_to_mem, 9, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR3            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 10, 8
	.dwcfi	save_reg_to_mem, 11, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR4            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 12, 10
	.dwcfi	save_reg_to_mem, 13, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR5            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 14, 12
	.dwcfi	save_reg_to_mem, 15, 13
	.dwcfi	cfa_offset, -14
        MOVL      *SP++,XAR6            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 16, 14
	.dwcfi	save_reg_to_mem, 17, 15
	.dwcfi	cfa_offset, -16
        MOVL      *SP++,XAR7            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 18, 16
	.dwcfi	save_reg_to_mem, 19, 17
	.dwcfi	cfa_offset, -18
        ADDB      SP,#40                ; [CPU_U] 
	.dwcfi	cfa_offset, -58
        SPM       0                     ; [CPU_] 
        CLRC      PAGE0,OVM             ; [CPU_] 
        CLRC      AMODE                 ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 813,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 813 | processJSRGlobal(1);            // Shelf 1                             
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |813| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_processJSRGlobal")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #_processJSRGlobal    ; [CPU_] |813| 
        ; call occurs [#_processJSRGlobal] ; [] |813| 
        MOVW      DP,#_cccp$1           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 815,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 815 | if(cccp == 100) {                                                      
; 816 |         sendModStatus(1, 1);    // Shelf 1 Module 1+2                  
; 817 |         sendModStatus(1, 3);                                           
; 818 |         sendModStatus(1, 5);                                           
; 819 |         sendModStatus(1, 7);                                           
; 820 |         sendModStatus(1, 9);                                           
;----------------------------------------------------------------------
        MOV       AL,@_cccp$1           ; [CPU_] |815| 
        CMPB      AL,#100               ; [CPU_] |815| 
        B         $C$L28,EQ             ; [CPU_] |815| 
        ; branchcc occurs ; [] |815| 
	.dwpsn	file "../Source/ad7738.c",line 822,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 822 | else if(cccp >= 200) {                                                 
; 823 |         cccp = 0;                                                      
;----------------------------------------------------------------------
        CMPB      AL,#200               ; [CPU_] |822| 
        B         $C$L29,LT             ; [CPU_] |822| 
        ; branchcc occurs ; [] |822| 
	.dwpsn	file "../Source/ad7738.c",line 824,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 824 | CAN_Tx_SendInformationRequest(MOD_1_2, (long)0);                // Shel
;     | f 1 Module 1+2                                                         
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |824| 
        MOVL      XAR4,#45311           ; [CPU_U] |824| 
	.dwpsn	file "../Source/ad7738.c",line 823,column 3,is_stmt,isa 0
        MOV       @_cccp$1,#0           ; [CPU_] |823| 
	.dwpsn	file "../Source/ad7738.c",line 824,column 3,is_stmt,isa 0
        MOVL      *-SP[2],ACC           ; [CPU_] |824| 
        MOVL      ACC,XAR4              ; [CPU_] |824| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_CAN_Tx_SendInformationRequest")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_CAN_Tx_SendInformationRequest ; [CPU_] |824| 
        ; call occurs [#_CAN_Tx_SendInformationRequest] ; [] |824| 
	.dwpsn	file "../Source/ad7738.c",line 825,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 825 | CAN_Tx_SendInformationRequest(MOD_3_4, (long)0);                       
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |825| 
        MOVL      XAR4,#45567           ; [CPU_U] |825| 
        MOVL      *-SP[2],ACC           ; [CPU_] |825| 
        MOVL      ACC,XAR4              ; [CPU_] |825| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_CAN_Tx_SendInformationRequest")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #_CAN_Tx_SendInformationRequest ; [CPU_] |825| 
        ; call occurs [#_CAN_Tx_SendInformationRequest] ; [] |825| 
	.dwpsn	file "../Source/ad7738.c",line 826,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 826 | CAN_Tx_SendInformationRequest(MOD_5_6, (long)0);                       
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |826| 
        MOVL      XAR4,#45823           ; [CPU_U] |826| 
        MOVL      *-SP[2],ACC           ; [CPU_] |826| 
        MOVL      ACC,XAR4              ; [CPU_] |826| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_CAN_Tx_SendInformationRequest")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_CAN_Tx_SendInformationRequest ; [CPU_] |826| 
        ; call occurs [#_CAN_Tx_SendInformationRequest] ; [] |826| 
	.dwpsn	file "../Source/ad7738.c",line 827,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 827 | CAN_Tx_SendInformationRequest(MOD_7_8, (long)0);                       
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |827| 
        MOVL      XAR4,#46079           ; [CPU_U] |827| 
        MOVL      *-SP[2],ACC           ; [CPU_] |827| 
        MOVL      ACC,XAR4              ; [CPU_] |827| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_CAN_Tx_SendInformationRequest")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_CAN_Tx_SendInformationRequest ; [CPU_] |827| 
        ; call occurs [#_CAN_Tx_SendInformationRequest] ; [] |827| 
	.dwpsn	file "../Source/ad7738.c",line 828,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 828 | CAN_Tx_SendInformationRequest(MOD_9_10, (long)0);                      
; 830 | //wakeUpMCs();                                                         
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |828| 
        MOVL      XAR4,#46335           ; [CPU_U] |828| 
        MOVL      *-SP[2],ACC           ; [CPU_] |828| 
        MOVL      ACC,XAR4              ; [CPU_] |828| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_CAN_Tx_SendInformationRequest")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_CAN_Tx_SendInformationRequest ; [CPU_] |828| 
        ; call occurs [#_CAN_Tx_SendInformationRequest] ; [] |828| 
        B         $C$L29,UNC            ; [CPU_] |828| 
        ; branch occurs ; [] |828| 
$C$L28:    
	.dwpsn	file "../Source/ad7738.c",line 816,column 3,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |816| 
        MOVB      AH,#1                 ; [CPU_] |816| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_sendModStatus")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #_sendModStatus       ; [CPU_] |816| 
        ; call occurs [#_sendModStatus] ; [] |816| 
	.dwpsn	file "../Source/ad7738.c",line 817,column 3,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |817| 
        MOVB      AH,#3                 ; [CPU_] |817| 
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_sendModStatus")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_sendModStatus       ; [CPU_] |817| 
        ; call occurs [#_sendModStatus] ; [] |817| 
	.dwpsn	file "../Source/ad7738.c",line 818,column 3,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |818| 
        MOVB      AH,#5                 ; [CPU_] |818| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_sendModStatus")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #_sendModStatus       ; [CPU_] |818| 
        ; call occurs [#_sendModStatus] ; [] |818| 
	.dwpsn	file "../Source/ad7738.c",line 819,column 3,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |819| 
        MOVB      AH,#7                 ; [CPU_] |819| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_sendModStatus")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #_sendModStatus       ; [CPU_] |819| 
        ; call occurs [#_sendModStatus] ; [] |819| 
	.dwpsn	file "../Source/ad7738.c",line 820,column 3,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |820| 
        MOVB      AH,#9                 ; [CPU_] |820| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_sendModStatus")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #_sendModStatus       ; [CPU_] |820| 
        ; call occurs [#_sendModStatus] ; [] |820| 
$C$L29:    
        MOVZ      AR4,SP                ; [CPU_] 
        MOVW      DP,#_cccp$1           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 832,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 832 | cccp++;                                                                
; 834 | int spi_buf[12];                                                       
; 835 | for(g = 0; g < 12; g++)                                                
;----------------------------------------------------------------------
        INC       @_cccp$1              ; [CPU_] |832| 
        SUBB      XAR4,#16              ; [CPU_U] 
        MOVZ      AR1,AR4               ; [CPU_] 
        MOVB      XAR2,#11              ; [CPU_] 
$C$L30:    
	.dwpsn	file "../Source/ad7738.c",line 837,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 837 | spi_buf[g] = spi_recv();                                               
; 839 | spi_buf[0] = spi_buf[0];                                               
; 842 | //  ***** read the converted data *****                                
;----------------------------------------------------------------------
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_spi_recv")
	.dwattr $C$DW$144, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |837| 
        ; call occurs [#_spi_recv] ; [] |837| 
        MOV       *XAR1++,AL            ; [CPU_] |837| 
	.dwpsn	file "../Source/ad7738.c",line 835,column 13,is_stmt,isa 0
        BANZ      $C$L30,AR2--          ; [CPU_] |835| 
        ; branchcc occurs ; [] |835| 
        MOVW      DP,#_ad7738_ph        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 843,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 843 | if (0 == ad7738_ph)                             // phase 0             
; 846 |         // --- chip 1 ---                                              
;----------------------------------------------------------------------
        MOV       AL,@_ad7738_ph        ; [CPU_] |843| 
        B         $C$L45,NEQ            ; [CPU_] |843| 
        ; branchcc occurs ; [] |843| 
	.dwpsn	file "../Source/ad7738.c",line 847,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 847 | if (GpioDataRegs.GPDDAT.bit.GPIOD5) {                                  
; 848 |         ad7738_err[0] = 1;                      // error, not coverting
; 849 | } else {                                                               
;----------------------------------------------------------------------
        MOVL      XAR4,#_GpioDataRegs   ; [CPU_U] |847| 
        MOVB      XAR0,#12              ; [CPU_] |847| 
        TBIT      *+XAR4[AR0],#5        ; [CPU_] |847| 
        B         $C$L37,TC             ; [CPU_] |847| 
        ; branchcc occurs ; [] |847| 
	.dwpsn	file "../Source/ad7738.c",line 850,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 850 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;   // A0CSn low                   
; 852 | // Channel 1A                                                          
; 853 | ad7738_err[0] = 0;                      // no error                    
;----------------------------------------------------------------------
        OR        *+XAR4[6],#0x0020     ; [CPU_] |850| 
	.dwpsn	file "../Source/ad7738.c",line 855,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 855 | spi_xmit( ADCREG_DATA);                 // send the read command       
;----------------------------------------------------------------------
        MOVB      AL,#72                ; [CPU_] |855| 
	.dwpsn	file "../Source/ad7738.c",line 853,column 4,is_stmt,isa 0
        MOV       @_ad7738_err,#0       ; [CPU_] |853| 
	.dwpsn	file "../Source/ad7738.c",line 855,column 4,is_stmt,isa 0
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |855| 
        ; call occurs [#_spi_xmit] ; [] |855| 
	.dwpsn	file "../Source/ad7738.c",line 856,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 856 | status = spi_recv();                    // read the status byte        
;----------------------------------------------------------------------
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_spi_recv")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |856| 
        ; call occurs [#_spi_recv] ; [] |856| 
	.dwpsn	file "../Source/ad7738.c",line 857,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 857 | temp = 0;                                                              
; 858 | for (i = 0; i < 3; i++) {                                              
;----------------------------------------------------------------------
        MOVB      XAR3,#0               ; [CPU_] |857| 
        MOVB      XAR2,#2               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 856,column 4,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_] |856| 
$C$L31:    
        MOVL      ACC,XAR3              ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 859,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 859 | temp <<= 8;                                                            
;----------------------------------------------------------------------
        LSL       ACC,8                 ; [CPU_] |859| 
        MOVL      XAR3,ACC              ; [CPU_] |859| 
	.dwpsn	file "../Source/ad7738.c",line 860,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 860 | temp |= spi_recv();                     // read three bytes (24bits)   
;----------------------------------------------------------------------
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_spi_recv")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |860| 
        ; call occurs [#_spi_recv] ; [] |860| 
        MOVZ      AR6,AL                ; [CPU_] |860| 
        MOVL      ACC,XAR3              ; [CPU_] |860| 
        OR        ACC,AR6               ; [CPU_] |860| 
        MOVL      XAR3,ACC              ; [CPU_] |860| 
	.dwpsn	file "../Source/ad7738.c",line 858,column 16,is_stmt,isa 0
        BANZ      $C$L31,AR2--          ; [CPU_] |858| 
        ; branchcc occurs ; [] |858| 
	.dwpsn	file "../Source/ad7738.c",line 863,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 863 | if (0x0004 & status)                    // no ref                      
; 865 |         ad7738_err[0] = 1;                      // error               
; 866 | } else if (0x0001 & status)             // over                        
; 868 |         if (0x0002 & status)                    // negative            
;----------------------------------------------------------------------
        TBIT      AR1,#2                ; [CPU_] |863| 
        B         $C$L35,TC             ; [CPU_] |863| 
        ; branchcc occurs ; [] |863| 
	.dwpsn	file "../Source/ad7738.c",line 870,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 870 | ad7738_cnt.adc[0] = temp - 0x01800000;                                 
;----------------------------------------------------------------------
        TBIT      AR1,#0                ; [CPU_] |870| 
        B         $C$L33,NTC            ; [CPU_] |870| 
        ; branchcc occurs ; [] |870| 
        TBIT      AR1,#1                ; [CPU_] |870| 
        B         $C$L32,NTC            ; [CPU_] |870| 
        ; branchcc occurs ; [] |870| 
        SUB       ACC,#768 << 15        ; [CPU_] |870| 
        B         $C$L34,UNC            ; [CPU_] |870| 
        ; branch occurs ; [] |870| 
$C$L32:    
        ADD       ACC,#256 << 15        ; [CPU_] |870| 
        B         $C$L34,UNC            ; [CPU_] |870| 
        ; branch occurs ; [] |870| 
$C$L33:    
        SUB       ACC,#256 << 15        ; [CPU_] |870| 
$C$L34:    
        MOVW      DP,#_ad7738_cnt       ; [CPU_U] 
        MOVL      @_ad7738_cnt,ACC      ; [CPU_] |870| 
	.dwpsn	file "../Source/ad7738.c",line 871,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 871 | } else                                  // positive                    
; 873 |         ad7738_cnt.adc[0] = temp + 0x00800000;                         
; 875 | } else                                  // normal range                
; 877 | ad7738_cnt.adc[0] = temp - 0x00800000;                                 
;----------------------------------------------------------------------
        B         $C$L36,UNC            ; [CPU_] |871| 
        ; branch occurs ; [] |871| 
$C$L35:    
        MOVW      DP,#_ad7738_err       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 865,column 5,is_stmt,isa 0
        MOVB      @_ad7738_err,#1,UNC   ; [CPU_] |865| 
$C$L36:    
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 879,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 879 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;     // A0CSn high                  
; 882 | // --- chip 2 ---                                                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0020 ; [CPU_] |879| 
        B         $C$L38,UNC            ; [CPU_] |879| 
        ; branch occurs ; [] |879| 
$C$L37:    
	.dwpsn	file "../Source/ad7738.c",line 848,column 4,is_stmt,isa 0
        MOVB      @_ad7738_err,#1,UNC   ; [CPU_] |848| 
$C$L38:    
	.dwpsn	file "../Source/ad7738.c",line 883,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 883 | if (GpioDataRegs.GPDDAT.bit.GPIOD6) {                                  
; 884 |         ad7738_err[2] = 1;                      // error, not coverting
; 885 | } else {                                                               
;----------------------------------------------------------------------
        MOVL      XAR4,#_GpioDataRegs   ; [CPU_U] |883| 
        MOVB      XAR0,#12              ; [CPU_] |883| 
        TBIT      *+XAR4[AR0],#6        ; [CPU_] |883| 
        B         $C$L44,TC             ; [CPU_] |883| 
        ; branchcc occurs ; [] |883| 
	.dwpsn	file "../Source/ad7738.c",line 886,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 886 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;   // A1CSn low                   
; 888 | // Channel 2A                                                          
; 889 | ad7738_err[2] = 0;                      // no error                    
;----------------------------------------------------------------------
        OR        *+XAR4[6],#0x0010     ; [CPU_] |886| 
        MOVW      DP,#_ad7738_err+2     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 890,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 890 | spi_xmit( ADCREG_DATA);                 // send the read command       
;----------------------------------------------------------------------
        MOVB      AL,#72                ; [CPU_] |890| 
	.dwpsn	file "../Source/ad7738.c",line 889,column 4,is_stmt,isa 0
        MOV       @_ad7738_err+2,#0     ; [CPU_] |889| 
	.dwpsn	file "../Source/ad7738.c",line 890,column 4,is_stmt,isa 0
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |890| 
        ; call occurs [#_spi_xmit] ; [] |890| 
	.dwpsn	file "../Source/ad7738.c",line 891,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 891 | status = spi_recv();                    // read the status byte        
;----------------------------------------------------------------------
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_spi_recv")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |891| 
        ; call occurs [#_spi_recv] ; [] |891| 
	.dwpsn	file "../Source/ad7738.c",line 892,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 892 | temp = 0;                                                              
; 893 | for (i = 0; i < 3; i++) {                                              
;----------------------------------------------------------------------
        MOVB      XAR3,#0               ; [CPU_] |892| 
        MOVB      XAR2,#2               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 891,column 4,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_] |891| 
$C$L39:    
        MOVL      ACC,XAR3              ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 894,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 894 | temp <<= 8;                                                            
;----------------------------------------------------------------------
        LSL       ACC,8                 ; [CPU_] |894| 
        MOVL      XAR3,ACC              ; [CPU_] |894| 
	.dwpsn	file "../Source/ad7738.c",line 895,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 895 | temp |= spi_recv();                     // read three bytes (24bits)   
;----------------------------------------------------------------------
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_spi_recv")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |895| 
        ; call occurs [#_spi_recv] ; [] |895| 
        MOVZ      AR6,AL                ; [CPU_] |895| 
        MOVL      ACC,XAR3              ; [CPU_] |895| 
        OR        ACC,AR6               ; [CPU_] |895| 
        MOVL      XAR3,ACC              ; [CPU_] |895| 
	.dwpsn	file "../Source/ad7738.c",line 893,column 16,is_stmt,isa 0
        BANZ      $C$L39,AR2--          ; [CPU_] |893| 
        ; branchcc occurs ; [] |893| 
	.dwpsn	file "../Source/ad7738.c",line 898,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 898 | if (0x0004 & status)                    // no ref                      
; 900 |         ad7738_err[2] = 1;                      // error               
; 901 | } else if (0x0001 & status)             // over                        
; 903 |         if (0x0002 & status)                    // negative            
;----------------------------------------------------------------------
        TBIT      AR1,#2                ; [CPU_] |898| 
        B         $C$L43,TC             ; [CPU_] |898| 
        ; branchcc occurs ; [] |898| 
	.dwpsn	file "../Source/ad7738.c",line 905,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 905 | ad7738_cnt.adc[2] = temp - 0x01800000;                                 
;----------------------------------------------------------------------
        TBIT      AR1,#0                ; [CPU_] |905| 
        B         $C$L41,NTC            ; [CPU_] |905| 
        ; branchcc occurs ; [] |905| 
        TBIT      AR1,#1                ; [CPU_] |905| 
        B         $C$L40,NTC            ; [CPU_] |905| 
        ; branchcc occurs ; [] |905| 
        SUB       ACC,#768 << 15        ; [CPU_] |905| 
        B         $C$L42,UNC            ; [CPU_] |905| 
        ; branch occurs ; [] |905| 
$C$L40:    
        ADD       ACC,#256 << 15        ; [CPU_] |905| 
        B         $C$L42,UNC            ; [CPU_] |905| 
        ; branch occurs ; [] |905| 
$C$L41:    
        SUB       ACC,#256 << 15        ; [CPU_] |905| 
$C$L42:    
        MOVW      DP,#_ad7738_cnt+4     ; [CPU_U] 
        MOVL      @_ad7738_cnt+4,ACC    ; [CPU_] |905| 
	.dwpsn	file "../Source/ad7738.c",line 906,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 906 | } else                                  // positive                    
; 908 |         ad7738_cnt.adc[2] = temp + 0x00800000;                         
; 910 | } else                                  // normal range                
; 912 | ad7738_cnt.adc[2] = temp - 0x00800000;                                 
; 915 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;     // A1CSn high                  
; 928 | } else                                          // phase 1             
; 931 | // --- chip 1 ---                                                      
;----------------------------------------------------------------------
        B         $C$L59,UNC            ; [CPU_] |906| 
        ; branch occurs ; [] |906| 
$C$L43:    
        MOVW      DP,#_ad7738_err+2     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 900,column 5,is_stmt,isa 0
        MOVB      @_ad7738_err+2,#1,UNC ; [CPU_] |900| 
	.dwpsn	file "../Source/ad7738.c",line 901,column 4,is_stmt,isa 0
        B         $C$L59,UNC            ; [CPU_] |901| 
        ; branch occurs ; [] |901| 
$C$L44:    
        MOVW      DP,#_ad7738_err+2     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 884,column 4,is_stmt,isa 0
        MOVB      @_ad7738_err+2,#1,UNC ; [CPU_] |884| 
	.dwpsn	file "../Source/ad7738.c",line 885,column 3,is_stmt,isa 0
        B         $C$L61,UNC            ; [CPU_] |885| 
        ; branch occurs ; [] |885| 
$C$L45:    
	.dwpsn	file "../Source/ad7738.c",line 932,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 932 | if (GpioDataRegs.GPDDAT.bit.GPIOD5) {                                  
; 933 |         ad7738_err[1] = 1;                      // error, not coverting
; 934 | } else {                                                               
;----------------------------------------------------------------------
        MOVL      XAR4,#_GpioDataRegs   ; [CPU_U] |932| 
        MOVB      XAR0,#12              ; [CPU_] |932| 
        TBIT      *+XAR4[AR0],#5        ; [CPU_] |932| 
        B         $C$L52,TC             ; [CPU_] |932| 
        ; branchcc occurs ; [] |932| 
	.dwpsn	file "../Source/ad7738.c",line 936,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 936 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;   // A0CSn low                   
; 938 | // Channel 1B                                                          
; 939 | ad7738_err[1] = 0;                      // no error                    
;----------------------------------------------------------------------
        OR        *+XAR4[6],#0x0020     ; [CPU_] |936| 
	.dwpsn	file "../Source/ad7738.c",line 941,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 941 | spi_xmit( ADCREG_DATA + 1);             // send the read command       
;----------------------------------------------------------------------
        MOVB      AL,#73                ; [CPU_] |941| 
	.dwpsn	file "../Source/ad7738.c",line 939,column 4,is_stmt,isa 0
        MOV       @_ad7738_err+1,#0     ; [CPU_] |939| 
	.dwpsn	file "../Source/ad7738.c",line 941,column 4,is_stmt,isa 0
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |941| 
        ; call occurs [#_spi_xmit] ; [] |941| 
	.dwpsn	file "../Source/ad7738.c",line 942,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 942 | status = spi_recv();                    // read the status byte        
;----------------------------------------------------------------------
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_spi_recv")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |942| 
        ; call occurs [#_spi_recv] ; [] |942| 
	.dwpsn	file "../Source/ad7738.c",line 943,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 943 | temp = 0;                                                              
; 944 | for (i = 0; i < 3; i++) {                                              
;----------------------------------------------------------------------
        MOVB      XAR3,#0               ; [CPU_] |943| 
        MOVB      XAR2,#2               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 942,column 4,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_] |942| 
$C$L46:    
        MOVL      ACC,XAR3              ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 945,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 945 | temp <<= 8;                                                            
;----------------------------------------------------------------------
        LSL       ACC,8                 ; [CPU_] |945| 
        MOVL      XAR3,ACC              ; [CPU_] |945| 
	.dwpsn	file "../Source/ad7738.c",line 946,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 946 | temp |= spi_recv();                     // read three bytes (24bits)   
;----------------------------------------------------------------------
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_spi_recv")
	.dwattr $C$DW$153, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |946| 
        ; call occurs [#_spi_recv] ; [] |946| 
        MOVZ      AR6,AL                ; [CPU_] |946| 
        MOVL      ACC,XAR3              ; [CPU_] |946| 
        OR        ACC,AR6               ; [CPU_] |946| 
        MOVL      XAR3,ACC              ; [CPU_] |946| 
	.dwpsn	file "../Source/ad7738.c",line 944,column 16,is_stmt,isa 0
        BANZ      $C$L46,AR2--          ; [CPU_] |944| 
        ; branchcc occurs ; [] |944| 
	.dwpsn	file "../Source/ad7738.c",line 949,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 949 | if (0x0004 & status)                    // no ref                      
; 951 |         ad7738_err[1] = 1;                      // error               
; 952 | } else if (0x0001 & status)             // over                        
; 954 |         if (0x0002 & status)                    // negative            
;----------------------------------------------------------------------
        TBIT      AR1,#2                ; [CPU_] |949| 
        B         $C$L50,TC             ; [CPU_] |949| 
        ; branchcc occurs ; [] |949| 
	.dwpsn	file "../Source/ad7738.c",line 956,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 956 | ad7738_cnt.adc[1] = temp - 0x01800000;                                 
;----------------------------------------------------------------------
        TBIT      AR1,#0                ; [CPU_] |956| 
        B         $C$L48,NTC            ; [CPU_] |956| 
        ; branchcc occurs ; [] |956| 
        TBIT      AR1,#1                ; [CPU_] |956| 
        B         $C$L47,NTC            ; [CPU_] |956| 
        ; branchcc occurs ; [] |956| 
        SUB       ACC,#768 << 15        ; [CPU_] |956| 
        B         $C$L49,UNC            ; [CPU_] |956| 
        ; branch occurs ; [] |956| 
$C$L47:    
        ADD       ACC,#256 << 15        ; [CPU_] |956| 
        B         $C$L49,UNC            ; [CPU_] |956| 
        ; branch occurs ; [] |956| 
$C$L48:    
        SUB       ACC,#256 << 15        ; [CPU_] |956| 
$C$L49:    
        MOVW      DP,#_ad7738_cnt+2     ; [CPU_U] 
        MOVL      @_ad7738_cnt+2,ACC    ; [CPU_] |956| 
	.dwpsn	file "../Source/ad7738.c",line 957,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 957 | } else                                  // positive                    
; 959 |         ad7738_cnt.adc[1] = temp + 0x00800000;                         
; 961 | } else                                  // normal range                
; 963 | ad7738_cnt.adc[1] = temp - 0x00800000;                                 
;----------------------------------------------------------------------
        B         $C$L51,UNC            ; [CPU_] |957| 
        ; branch occurs ; [] |957| 
$C$L50:    
        MOVW      DP,#_ad7738_err+1     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 951,column 5,is_stmt,isa 0
        MOVB      @_ad7738_err+1,#1,UNC ; [CPU_] |951| 
$C$L51:    
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 966,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 966 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;     // A0CSn high                  
; 969 | // --- chip 2 ---                                                      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0020 ; [CPU_] |966| 
        B         $C$L53,UNC            ; [CPU_] |966| 
        ; branch occurs ; [] |966| 
$C$L52:    
	.dwpsn	file "../Source/ad7738.c",line 933,column 4,is_stmt,isa 0
        MOVB      @_ad7738_err+1,#1,UNC ; [CPU_] |933| 
$C$L53:    
	.dwpsn	file "../Source/ad7738.c",line 970,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 970 | if (GpioDataRegs.GPDDAT.bit.GPIOD6) {                                  
; 971 |         ad7738_err[3] = 1;                      // error, not coverting
; 972 | } else {                                                               
;----------------------------------------------------------------------
        MOVL      XAR4,#_GpioDataRegs   ; [CPU_U] |970| 
        MOVB      XAR0,#12              ; [CPU_] |970| 
        TBIT      *+XAR4[AR0],#6        ; [CPU_] |970| 
        B         $C$L60,TC             ; [CPU_] |970| 
        ; branchcc occurs ; [] |970| 
	.dwpsn	file "../Source/ad7738.c",line 973,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 973 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;   // A1CSn low                   
; 975 | // Channel 2B                                                          
; 976 | ad7738_err[3] = 0;                      // no error                    
;----------------------------------------------------------------------
        OR        *+XAR4[6],#0x0010     ; [CPU_] |973| 
        MOVW      DP,#_ad7738_err+3     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 977,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 977 | spi_xmit( ADCREG_DATA + 1);             // send the read command       
;----------------------------------------------------------------------
        MOVB      AL,#73                ; [CPU_] |977| 
	.dwpsn	file "../Source/ad7738.c",line 976,column 4,is_stmt,isa 0
        MOV       @_ad7738_err+3,#0     ; [CPU_] |976| 
	.dwpsn	file "../Source/ad7738.c",line 977,column 4,is_stmt,isa 0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |977| 
        ; call occurs [#_spi_xmit] ; [] |977| 
	.dwpsn	file "../Source/ad7738.c",line 978,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 978 | status = spi_recv();                    // read the status byte        
;----------------------------------------------------------------------
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_spi_recv")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |978| 
        ; call occurs [#_spi_recv] ; [] |978| 
	.dwpsn	file "../Source/ad7738.c",line 979,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 979 | temp = 0;                                                              
; 980 | for (i = 0; i < 3; i++) {                                              
;----------------------------------------------------------------------
        MOVB      XAR3,#0               ; [CPU_] |979| 
        MOVB      XAR2,#2               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 978,column 4,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_] |978| 
$C$L54:    
        MOVL      ACC,XAR3              ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 981,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 981 | temp <<= 8;                                                            
;----------------------------------------------------------------------
        LSL       ACC,8                 ; [CPU_] |981| 
        MOVL      XAR3,ACC              ; [CPU_] |981| 
	.dwpsn	file "../Source/ad7738.c",line 982,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 982 | temp |= spi_recv();                     // read three bytes (24bits)   
;----------------------------------------------------------------------
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_spi_recv")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |982| 
        ; call occurs [#_spi_recv] ; [] |982| 
        MOVZ      AR6,AL                ; [CPU_] |982| 
        MOVL      ACC,XAR3              ; [CPU_] |982| 
        OR        ACC,AR6               ; [CPU_] |982| 
        MOVL      XAR3,ACC              ; [CPU_] |982| 
	.dwpsn	file "../Source/ad7738.c",line 980,column 16,is_stmt,isa 0
        BANZ      $C$L54,AR2--          ; [CPU_] |980| 
        ; branchcc occurs ; [] |980| 
	.dwpsn	file "../Source/ad7738.c",line 985,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 985 | if (0x0004 & status)                    // no ref                      
; 987 |         ad7738_err[3] = 1;                      // error               
; 988 | } else if (0x0001 & status)             // over                        
; 990 |         if (0x0002 & status)                    // negative            
;----------------------------------------------------------------------
        TBIT      AR1,#2                ; [CPU_] |985| 
        B         $C$L58,TC             ; [CPU_] |985| 
        ; branchcc occurs ; [] |985| 
	.dwpsn	file "../Source/ad7738.c",line 992,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 992 | ad7738_cnt.adc[3] = temp - 0x01800000;                                 
;----------------------------------------------------------------------
        TBIT      AR1,#0                ; [CPU_] |992| 
        B         $C$L56,NTC            ; [CPU_] |992| 
        ; branchcc occurs ; [] |992| 
        TBIT      AR1,#1                ; [CPU_] |992| 
        B         $C$L55,NTC            ; [CPU_] |992| 
        ; branchcc occurs ; [] |992| 
        SUB       ACC,#768 << 15        ; [CPU_] |992| 
        B         $C$L57,UNC            ; [CPU_] |992| 
        ; branch occurs ; [] |992| 
$C$L55:    
        ADD       ACC,#256 << 15        ; [CPU_] |992| 
        B         $C$L57,UNC            ; [CPU_] |992| 
        ; branch occurs ; [] |992| 
$C$L56:    
        SUB       ACC,#256 << 15        ; [CPU_] |992| 
$C$L57:    
        MOVW      DP,#_ad7738_cnt+6     ; [CPU_U] 
        MOVL      @_ad7738_cnt+6,ACC    ; [CPU_] |992| 
	.dwpsn	file "../Source/ad7738.c",line 993,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 993 | } else                                  // positive                    
; 995 |         ad7738_cnt.adc[3] = temp + 0x00800000;                         
; 997 | } else                                  // normal range                
; 999 | ad7738_cnt.adc[3] = temp - 0x00800000;                                 
;----------------------------------------------------------------------
        B         $C$L59,UNC            ; [CPU_] |993| 
        ; branch occurs ; [] |993| 
$C$L58:    
        MOVW      DP,#_ad7738_err+3     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 987,column 5,is_stmt,isa 0
        MOVB      @_ad7738_err+3,#1,UNC ; [CPU_] |987| 
$C$L59:    
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1002,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1002 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;     // A1CSn high                  
; 1006 | // ***** start the next conversion *****                               
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0010 ; [CPU_] |1002| 
        B         $C$L61,UNC            ; [CPU_] |1002| 
        ; branch occurs ; [] |1002| 
$C$L60:    
        MOVW      DP,#_ad7738_err+3     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 971,column 4,is_stmt,isa 0
        MOVB      @_ad7738_err+3,#1,UNC ; [CPU_] |971| 
$C$L61:    
        MOVW      DP,#_GpioDataRegs+6   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1008,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1008 | GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;           // A_SYNC low          
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0080 ; [CPU_] |1008| 
	.dwpsn	file "../Source/ad7738.c",line 1010,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1010 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;           // A0CSn               
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0020 ; [CPU_] |1010| 
	.dwpsn	file "../Source/ad7738.c",line 1011,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1011 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;           // A1CSn               
; 1013 | // send command to start the next conversion                           
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+6,#0x0010 ; [CPU_] |1011| 
        MOVW      DP,#_ad7738_ph        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1014,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1014 | if (0 == ad7738_ph)                             // phase 0             
;----------------------------------------------------------------------
        MOV       AL,@_ad7738_ph        ; [CPU_] |1014| 
        B         $C$L62,NEQ            ; [CPU_] |1014| 
        ; branchcc occurs ; [] |1014| 
	.dwpsn	file "../Source/ad7738.c",line 1016,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1016 | spi_xmit( ADCREG_MODE + 1);                     // mode                
;----------------------------------------------------------------------
        MOVB      AL,#57                ; [CPU_] |1016| 
	.dwpsn	file "../Source/ad7738.c",line 1017,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1017 | } else                                          // phase 1             
;----------------------------------------------------------------------
        B         $C$L63,UNC            ; [CPU_] |1017| 
        ; branch occurs ; [] |1017| 
$C$L62:    
	.dwpsn	file "../Source/ad7738.c",line 1019,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1019 | spi_xmit( ADCREG_MODE);                 // mode                        
;----------------------------------------------------------------------
        MOVB      AL,#56                ; [CPU_] |1019| 
$C$L63:    
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |1019| 
        ; call occurs [#_spi_xmit] ; [] |1019| 
	.dwpsn	file "../Source/ad7738.c",line 1021,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1021 | spi_xmit(0x5a);                         // single conversion, dump, 24b
;     | it, np clamp                                                           
;----------------------------------------------------------------------
        MOVB      AL,#90                ; [CPU_] |1021| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |1021| 
        ; call occurs [#_spi_xmit] ; [] |1021| 
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1023,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1023 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;             // A0CSn               
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0020 ; [CPU_] |1023| 
	.dwpsn	file "../Source/ad7738.c",line 1024,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1024 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;             // A1CSn               
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0010 ; [CPU_] |1024| 
	.dwpsn	file "../Source/ad7738.c",line 1026,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1026 | GpioDataRegs.GPBSET.bit.GPIOB7 = 1;             // A_SYNC high         
; 1028 | // ****** processing data ******                                       
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0080 ; [CPU_] |1026| 
        MOVW      DP,#_ad7738_ph        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1030,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1030 | if (0 == ad7738_ph) {                                                  
; 1031 |         // --- phase 0 ---              // processing encoder data     
; 1236 |         // ***** temperature reading count *****                       
;----------------------------------------------------------------------
        MOV       AL,@_ad7738_ph        ; [CPU_] |1030| 
        B         $C$L67,NEQ            ; [CPU_] |1030| 
        ; branchcc occurs ; [] |1030| 
	.dwpsn	file "../Source/ad7738.c",line 1237,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1237 | tempcnt++;                                      // increase temperature
;     |  count                                                                 
; 1238 | if (tempcnt == TEMPRATE) {                                             
; 1239 |         tempstart = 1;                          // time to start conver
;     | sion                                                                   
;----------------------------------------------------------------------
        INC       @_tempcnt             ; [CPU_] |1237| 
        CMP       @_tempcnt,#1000       ; [CPU_] |1237| 
        B         $C$L64,EQ             ; [CPU_] |1237| 
        ; branchcc occurs ; [] |1237| 
	.dwpsn	file "../Source/ad7738.c",line 1240,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 1240 | } else if (tempcnt >= 2 * TEMPRATE) {                                  
;----------------------------------------------------------------------
        CMP       @_tempcnt,#2000       ; [CPU_] |1240| 
        B         $C$L65,LT             ; [CPU_] |1240| 
        ; branchcc occurs ; [] |1240| 
	.dwpsn	file "../Source/ad7738.c",line 1241,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1241 | tempcnt = 0;                            // reset count                 
;----------------------------------------------------------------------
        MOV       @_tempcnt,#0          ; [CPU_] |1241| 
	.dwpsn	file "../Source/ad7738.c",line 1242,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1242 | tempread = 1;                           // time to read                
; 1245 | // ***** tag id detection count *****                                  
;----------------------------------------------------------------------
        MOVB      @_tempread,#1,UNC     ; [CPU_] |1242| 
        B         $C$L65,UNC            ; [CPU_] |1242| 
        ; branch occurs ; [] |1242| 
$C$L64:    
	.dwpsn	file "../Source/ad7738.c",line 1239,column 4,is_stmt,isa 0
        MOVB      @_tempstart,#1,UNC    ; [CPU_] |1239| 
$C$L65:    
	.dwpsn	file "../Source/ad7738.c",line 1246,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1246 | tagscnt++;                                                             
; 1247 | if (tagscnt == TAGSRATE) {                                             
;----------------------------------------------------------------------
        INC       @_tagscnt             ; [CPU_] |1246| 
        MOV       AL,@_tagscnt          ; [CPU_] |1246| 
        CMPB      AL,#250               ; [CPU_] |1246| 
        B         $C$L66,NEQ            ; [CPU_] |1246| 
        ; branchcc occurs ; [] |1246| 
	.dwpsn	file "../Source/ad7738.c",line 1248,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1248 | tagscnt = 0;                                                           
;----------------------------------------------------------------------
        MOV       @_tagscnt,#0          ; [CPU_] |1248| 
	.dwpsn	file "../Source/ad7738.c",line 1249,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1249 | tagsdetect = 1;                                                        
; 1252 | // ***** update LCD display, one character *****                       
; 1253 | #if(SAMPRATE < 3001)                                                   
;----------------------------------------------------------------------
        MOVB      @_tagsdetect,#1,UNC   ; [CPU_] |1249| 
$C$L66:    
	.dwpsn	file "../Source/ad7738.c",line 1254,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1254 | if (!(mon_cnt & 0x01))                                                 
; 1255 | #endif                                                                 
;----------------------------------------------------------------------
        TBIT      @_mon_cnt,#0          ; [CPU_] |1254| 
        B         $C$L81,TC             ; [CPU_] |1254| 
        ; branchcc occurs ; [] |1254| 
	.dwpsn	file "../Source/ad7738.c",line 1257,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1257 | lcd_next();                             // update lcd                  
; 1260 | #ifdef SDHCCARD                                                        
; 1261 | disk_timerproc();                               // SD library          
; 1262 | #endif                                                                 
; 1264 | } else {                                                               
; 1266 | // ***** phase 1 *****                                                 
; 1267 | // process analog data                                                 
;----------------------------------------------------------------------
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_lcd_next")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #_lcd_next            ; [CPU_] |1257| 
        ; call occurs [#_lcd_next] ; [] |1257| 
        B         $C$L81,UNC            ; [CPU_] |1257| 
        ; branch occurs ; [] |1257| 
$C$L67:    
        MOVL      XAR4,#_ad7738_load    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1269,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 1269 | for (i = 0; i < CHS_MAX; i++) {                                        
; 1270 |         if (ad7738_err[i]) {                                           
; 1271 |                 // error condition                                     
; 1272 |                 //ad7738_cnt.adc[i] = 0;                               
; 1273 |                 //ad7738_raw.adc[i] = 0;                               
; 1274 |                 //ad7738_load.adw[i] = 0;                              
;----------------------------------------------------------------------
        MOV       *-SP[17],#0           ; [CPU_] |1269| 
        MOVL      *-SP[36],XAR4         ; [CPU_] 
        MOVL      XAR4,#_ad7738_err     ; [CPU_U] 
        MOVL      *-SP[20],XAR4         ; [CPU_] 
$C$L68:    
        MOVL      XAR4,*-SP[20]         ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1275,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1275 | continue;                                                              
; 1278 | // no error on adc reading                                             
; 1279 | // *** moving average filter ***                                       
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[0]          ; [CPU_] |1275| 
        B         $C$L80,NEQ            ; [CPU_] |1275| 
        ; branchcc occurs ; [] |1275| 
	.dwpsn	file "../Source/ad7738.c",line 1280,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1280 | if (conf_data.filter > 1) {                                            
; 1281 |         // first calculate the diff between the oldest and newset      
;----------------------------------------------------------------------
        MOVL      XAR3,#_conf_data      ; [CPU_U] |1280| 
        MOVB      XAR0,#38              ; [CPU_] |1280| 
        MOVB      XAR6,#0               ; [CPU_] |1280| 
        SETC      SXM                   ; [CPU_] 
        MOVL      XAR4,#_hfactor        ; [CPU_U] 
        MOV       AL,*+XAR3[AR0]        ; [CPU_] |1280| 
        CMPB      AL,#1                 ; [CPU_] |1280| 
        MOVB      XAR6,#1,HI            ; [CPU_] |1280| 
        MOV       AL,*-SP[17]           ; [CPU_] |1280| 
        MOV       ACC,AL << 1           ; [CPU_] 
        ADDL      XAR4,ACC              ; [CPU_] 
        MOVL      XAR1,#_ad7738_cnt     ; [CPU_U] 
        MOV       T,*-SP[17]            ; [CPU_] 
        MOVL      *-SP[22],XAR4         ; [CPU_] 
        MOVL      XAR4,#_ad7738_raw     ; [CPU_U] 
        ADDL      XAR4,ACC              ; [CPU_] 
        MOVL      *-SP[28],ACC          ; [CPU_] 
        ADDL      XAR1,ACC              ; [CPU_] 
        MOVL      XAR7,*-SP[28]         ; [CPU_] 
        MOVL      *-SP[24],XAR4         ; [CPU_] 
        MPYB      ACC,T,#10             ; [CPU_] 
        MOVL      XAR4,#_BITMAP         ; [CPU_U] 
        ADDL      ACC,XAR3              ; [CPU_] 
        ADDB      ACC,#42               ; [CPU_] 
        MOVL      *-SP[26],ACC          ; [CPU_] 
        MOVL      ACC,*-SP[36]          ; [CPU_] 
        ADDL      ACC,XAR7              ; [CPU_] 
        MOVL      *-SP[30],ACC          ; [CPU_] 
        MOVL      ACC,XAR4              ; [CPU_] 
        MOVL      XAR4,#_ad7738_tare    ; [CPU_U] 
        ADD       ACC,*-SP[17]          ; [CPU_] 
        MOVL      *-SP[32],ACC          ; [CPU_] 
        MOVL      ACC,*-SP[28]          ; [CPU_] 
        ADDL      XAR4,ACC              ; [CPU_] 
        MOVL      *-SP[34],XAR4         ; [CPU_] 
        MOV       AL,AR6                ; [CPU_] 
        B         $C$L75,EQ             ; [CPU_] |1280| 
        ; branchcc occurs ; [] |1280| 
	.dwpsn	file "../Source/ad7738.c",line 1282,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1282 | if (mafsize[i] < conf_data.filter)      // moving window not full      
; 1284 |         if (mafsize[i] > 0) {                                          
; 1285 |                 mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][0];// diff f
;     | rom current to the first (oldest)                                      
; 1286 |         } else {                                                       
; 1287 |                 mafdiff[i] = 0;                                        
; 1289 |         mafsize[i]++;                           // one more added      
; 1290 | } else                                  // moving window full          
;----------------------------------------------------------------------
        MOVL      XAR4,#_mafsize        ; [CPU_U] |1282| 
        MOVL      ACC,XAR4              ; [CPU_] |1282| 
        ADD       ACC,*-SP[17]          ; [CPU_] |1282| 
        MOVL      XAR4,ACC              ; [CPU_] |1282| 
        MOVZ      AR7,*+XAR4[0]         ; [CPU_] |1282| 
        MOV       PL,#0                 ; [CPU_] |1282| 
        MOVB      XAR0,#38              ; [CPU_] |1282| 
        MOV       AL,AR7                ; [CPU_] |1282| 
        CMP       AL,*+XAR3[AR0]        ; [CPU_] |1282| 
        B         $C$L69,HIS            ; [CPU_] |1282| 
        ; branchcc occurs ; [] |1282| 
        MOV       PL,#1                 ; [CPU_] |1282| 
$C$L69:    
        MOVL      XAR6,#_mafdiff        ; [CPU_U] 
        MOVL      ACC,*-SP[28]          ; [CPU_] 
        MOVL      XAR2,#_mafidx         ; [CPU_U] 
        MOVL      XAR5,#_mafsum         ; [CPU_U] 
        ADDL      XAR6,ACC              ; [CPU_] 
        MOVL      XAR0,#_mafbuf         ; [CPU_U] 
        MOV       AL,*-SP[17]           ; [CPU_] 
        MOV       ACC,AL << 13          ; [CPU_] 
        MOVL      XT,ACC                ; [CPU_] 
        MOVL      ACC,XAR2              ; [CPU_] 
        ADD       ACC,*-SP[17]          ; [CPU_] 
        MOVL      XAR2,ACC              ; [CPU_] 
        MOV       AL,*-SP[17]           ; [CPU_] 
        MOV       ACC,AL << 2           ; [CPU_] 
        ADDL      XAR5,ACC              ; [CPU_] 
        MOV       AL,PL                 ; [CPU_] 
        B         $C$L70,NEQ            ; [CPU_] |1282| 
        ; branchcc occurs ; [] |1282| 
        CLRC      SXM                   ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1292,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 1292 | mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][mafidx[i]];                 
;----------------------------------------------------------------------
        MOV       ACC,*+XAR2[0] << 1    ; [CPU_] |1292| 
        ADDL      ACC,XT                ; [CPU_] |1292| 
        ADDL      ACC,XAR0              ; [CPU_] |1292| 
        MOVL      XAR7,ACC              ; [CPU_] |1292| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1292| 
        SUBL      ACC,*+XAR7[0]         ; [CPU_] |1292| 
        MOVL      *+XAR6[0],ACC         ; [CPU_] |1292| 
	.dwpsn	file "../Source/ad7738.c",line 1293,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 1293 | mafsum[i] -= mafbuf[i][mafidx[i]];// remove the oldest point           
;----------------------------------------------------------------------
        MOVL      P,*-SP[38]            ; [CPU_] |1293| 
        MOVL      ACC,*+XAR7[0]         ; [CPU_] |1293| 
        ASR64     ACC:P,16              ; [CPU_] |1293| 
        ASR64     ACC:P,16              ; [CPU_] |1293| 
        MOVL      *-SP[38],P            ; [CPU_] |1293| 
        MOVL      XAR3,*-SP[38]         ; [CPU_] |1293| 
        MOVL      XAR7,ACC              ; [CPU_] |1293| 
        MOVL      P,*+XAR5[0]           ; [CPU_] |1293| 
        MOVL      ACC,*+XAR5[2]         ; [CPU_] |1293| 
        SUBUL     P,XAR3                ; [CPU_] |1293| 
        MOVL      *+XAR5[0],P           ; [CPU_] |1293| 
        SUBBL     ACC,XAR7              ; [CPU_] |1293| 
        MOVL      *+XAR5[2],ACC         ; [CPU_] |1293| 
        B         $C$L73,UNC            ; [CPU_] |1293| 
        ; branch occurs ; [] |1293| 
$C$L70:    
        MOV       AL,AR7                ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1285,column 7,is_stmt,isa 0
        B         $C$L71,EQ             ; [CPU_] |1285| 
        ; branchcc occurs ; [] |1285| 
        MOVL      XAR7,XAR0             ; [CPU_] |1285| 
        MOVL      ACC,XT                ; [CPU_] |1285| 
        ADDL      XAR7,ACC              ; [CPU_] |1285| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1285| 
        SUBL      ACC,*+XAR7[0]         ; [CPU_] |1285| 
        B         $C$L72,UNC            ; [CPU_] |1285| 
        ; branch occurs ; [] |1285| 
$C$L71:    
        MOVB      ACC,#0                ; [CPU_] |1285| 
$C$L72:    
        MOVL      *+XAR6[0],ACC         ; [CPU_] |1285| 
	.dwpsn	file "../Source/ad7738.c",line 1289,column 6,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_] |1289| 
$C$L73:    
	.dwpsn	file "../Source/ad7738.c",line 1296,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1296 | if (labs(mafdiff[i]) > adcdiff) {                                      
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR6[0]         ; [CPU_] |1296| 
        MOVW      DP,#_adcdiff          ; [CPU_U] 
        ABS       ACC                   ; [CPU_] |1296| 
        CMPL      ACC,@_adcdiff         ; [CPU_] |1296| 
        B         $C$L74,LEQ            ; [CPU_] |1296| 
        ; branchcc occurs ; [] |1296| 
	.dwpsn	file "../Source/ad7738.c",line 1297,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 1297 | mafsum[i] = 0;                                                         
;----------------------------------------------------------------------
        ZAPA      ; [CPU_] |1297| 
        MOVL      *+XAR5[0],P           ; [CPU_] |1297| 
        MOVL      *+XAR5[2],ACC         ; [CPU_] |1297| 
	.dwpsn	file "../Source/ad7738.c",line 1298,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 1298 | mafidx[i] = 0;                                                         
;----------------------------------------------------------------------
        MOV       *+XAR2[0],#0          ; [CPU_] |1298| 
	.dwpsn	file "../Source/ad7738.c",line 1299,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 1299 | mafsize[i] = 1;                                                        
;----------------------------------------------------------------------
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_] |1299| 
$C$L74:    
        CLRC      SXM                   ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1302,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1302 | mafbuf[i][mafidx[i]] = ad7738_cnt.adc[i];// load the new value to buffe
;     | r                                                                      
;----------------------------------------------------------------------
        MOV       ACC,*+XAR2[0] << 1    ; [CPU_] |1302| 
        MOVL      XAR7,*+XAR1[0]        ; [CPU_] |1302| 
        ADDL      ACC,XT                ; [CPU_] |1302| 
        ADDL      ACC,XAR0              ; [CPU_] |1302| 
        MOVL      XAR6,ACC              ; [CPU_] |1302| 
        MOVL      *+XAR6[0],XAR7        ; [CPU_] |1302| 
	.dwpsn	file "../Source/ad7738.c",line 1303,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1303 | mafsum[i] += ad7738_cnt.adc[i];         // add the newest              
;----------------------------------------------------------------------
        MOVL      P,*-SP[40]            ; [CPU_] |1303| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1303| 
        ASR64     ACC:P,16              ; [CPU_] |1303| 
        ASR64     ACC:P,16              ; [CPU_] |1303| 
        ADDUL     P,*+XAR5[0]           ; [CPU_] |1303| 
        MOVL      *-SP[40],P            ; [CPU_] |1303| 
        ADDCL     ACC,*+XAR5[2]         ; [CPU_] |1303| 
        MOVL      *+XAR5[0],P           ; [CPU_] |1303| 
        MOVL      *+XAR5[2],ACC         ; [CPU_] |1303| 
	.dwpsn	file "../Source/ad7738.c",line 1305,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1305 | ad7738_cnt.adc[i] = mafsum[i] / mafsize[i];     // calculate the averag
;     | e                                                                      
; 1307 | mafidx[i]++;                            // point to the next cell      
;----------------------------------------------------------------------
        MOVU      ACC,*+XAR4[0]         ; [CPU_] |1305| 
        MOVL      *-SP[4],ACC           ; [CPU_] |1305| 
        MOV       *-SP[2],#0            ; [CPU_] |1305| 
        MOV       *-SP[1],#0            ; [CPU_] |1305| 
        MOVL      ACC,*+XAR5[2]         ; [CPU_] |1305| 
        MOVL      P,*+XAR5[0]           ; [CPU_] |1305| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("LL$$DIV")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #LL$$DIV              ; [CPU_] |1305| 
        ; call occurs [#LL$$DIV] ; [] |1305| 
	.dwpsn	file "../Source/ad7738.c",line 1308,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1308 | if (mafidx[i] >= conf_data.filter) {                                   
;----------------------------------------------------------------------
        MOVL      XAR3,#_conf_data      ; [CPU_U] |1308| 
        MOVB      XAR0,#38              ; [CPU_] |1308| 
	.dwpsn	file "../Source/ad7738.c",line 1305,column 5,is_stmt,isa 0
        MOVL      *+XAR1[0],P           ; [CPU_] |1305| 
	.dwpsn	file "../Source/ad7738.c",line 1307,column 5,is_stmt,isa 0
        INC       *+XAR2[0]             ; [CPU_] |1307| 
        MOV       AL,*+XAR2[0]          ; [CPU_] |1307| 
	.dwpsn	file "../Source/ad7738.c",line 1308,column 5,is_stmt,isa 0
        CMP       AL,*+XAR3[AR0]        ; [CPU_] |1308| 
        B         $C$L75,LO             ; [CPU_] |1308| 
        ; branchcc occurs ; [] |1308| 
	.dwpsn	file "../Source/ad7738.c",line 1309,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 1309 | mafidx[i] = 0;                  // loop back                           
; 1313 | // *** heat correction here ***                                        
;----------------------------------------------------------------------
        MOV       *+XAR2[0],#0          ; [CPU_] |1309| 
$C$L75:    
	.dwpsn	file "../Source/ad7738.c",line 1314,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1314 | ad7738_cnt.adc[i] *= hfactor.adw[i];                                   
; 1316 | // *** keep a copy for raw reading ***                                 
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1314| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |1314| 
        ; call occurs [#L$$TOFS] ; [] |1314| 
        MOVL      XAR4,*-SP[22]         ; [CPU_] |1314| 
        MOVL      XAR6,*+XAR4[0]        ; [CPU_] |1314| 
        MOVL      *-SP[2],XAR6          ; [CPU_] |1314| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |1314| 
        ; call occurs [#FS$$MPY] ; [] |1314| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |1314| 
        ; call occurs [#FS$$TOL] ; [] |1314| 
        MOVL      *+XAR1[0],ACC         ; [CPU_] |1314| 
	.dwpsn	file "../Source/ad7738.c",line 1317,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1317 | ad7738_raw.adc[i] = ad7738_cnt.adc[i];                                 
; 1319 | // *** apply cal scales ***                                            
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[24]         ; [CPU_] |1317| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1317| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |1317| 
	.dwpsn	file "../Source/ad7738.c",line 1320,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1320 | j = 0;                                                                 
;----------------------------------------------------------------------
        MOVL      XAR5,*-SP[26]         ; [CPU_] |1320| 
	.dwpsn	file "../Source/ad7738.c",line 1321,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1321 | if (conf_data.sensor[conf_data.ch[i].ci].points > 2) {                 
;----------------------------------------------------------------------
        MOV       T,*+XAR5[0]           ; [CPU_] |1321| 
        MPYB      ACC,T,#152            ; [CPU_] |1321| 
        ADDL      ACC,XAR3              ; [CPU_] |1321| 
        MOVL      XAR5,ACC              ; [CPU_] |1321| 
	.dwpsn	file "../Source/ad7738.c",line 1320,column 4,is_stmt,isa 0
        MOVB      XAR4,#0               ; [CPU_] |1320| 
	.dwpsn	file "../Source/ad7738.c",line 1321,column 4,is_stmt,isa 0
        MOVB      XAR0,#128             ; [CPU_] |1321| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_] |1321| 
        CMPB      AL,#2                 ; [CPU_] |1321| 
        B         $C$L78,LEQ            ; [CPU_] |1321| 
        ; branchcc occurs ; [] |1321| 
        MOVB      XAR6,#0               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1322,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1322 | while (ad7738_cnt.adc[i]                                               
; 1323 |                 > conf_data.sensor[conf_data.ch[i].ci].adc[j + 1]      
; 1324 |                 && j < conf_data.sensor[conf_data.ch[i].ci].points - 2)
;     |  {                                                                     
;----------------------------------------------------------------------
        B         $C$L77,UNC            ; [CPU_] |1322| 
        ; branch occurs ; [] |1322| 
$C$L76:    
	.dwpsn	file "../Source/ad7738.c",line 1325,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 1325 | j++;                                                                   
;----------------------------------------------------------------------
        ADDB      XAR6,#2               ; [CPU_] |1325| 
        ADDB      XAR4,#1               ; [CPU_] |1325| 
$C$L77:    
        MOVL      XAR5,*-SP[26]         ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1322,column 12,is_stmt,isa 0
        MOV       T,*+XAR5[0]           ; [CPU_] |1322| 
        MPYB      ACC,T,#152            ; [CPU_] |1322| 
        ADDL      ACC,XAR6              ; [CPU_] |1322| 
        ADDL      ACC,XAR3              ; [CPU_] |1322| 
        MOVL      XAR5,ACC              ; [CPU_] |1322| 
        MOVB      XAR0,#156             ; [CPU_] |1322| 
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_] |1322| 
        CMPL      ACC,*+XAR1[0]         ; [CPU_] |1322| 
        B         $C$L78,GEQ            ; [CPU_] |1322| 
        ; branchcc occurs ; [] |1322| 
        MOVL      XAR5,*-SP[26]         ; [CPU_] 
        MOV       T,*+XAR5[0]           ; [CPU_] |1322| 
        MPYB      ACC,T,#152            ; [CPU_] |1322| 
        ADDL      ACC,XAR3              ; [CPU_] |1322| 
        MOVL      XAR5,ACC              ; [CPU_] |1322| 
        MOVB      XAR0,#128             ; [CPU_] |1322| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_] |1322| 
        ADDB      AL,#-2                ; [CPU_] |1322| 
        CMP       AL,AR4                ; [CPU_] |1322| 
        B         $C$L76,GT             ; [CPU_] |1322| 
        ; branchcc occurs ; [] |1322| 
$C$L78:    
	.dwpsn	file "../Source/ad7738.c",line 1328,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1328 | ad7738_load.adw[i] = ad7738_cnt.adc[i] * slope[j].adw[i]               
; 1329 |                 + intercept[j].adw[i];                                 
; 1331 | // *** tare here ***                                                   
;----------------------------------------------------------------------
        MOVL      XAR6,*-SP[28]         ; [CPU_] |1328| 
        SETC      SXM                   ; [CPU_] 
        MOV       ACC,AR4 << 4          ; [CPU_] |1328| 
        ADDL      ACC,XAR6              ; [CPU_] |1328| 
        MOVL      XAR2,ACC              ; [CPU_] |1328| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1328| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |1328| 
        ; call occurs [#L$$TOFS] ; [] |1328| 
        MOVL      XAR4,#_slope          ; [CPU_U] |1328| 
        MOVL      XAR6,ACC              ; [CPU_] |1328| 
        MOVL      ACC,XAR2              ; [CPU_] |1328| 
        ADDL      XAR4,ACC              ; [CPU_] |1328| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |1328| 
        MOVL      *-SP[2],ACC           ; [CPU_] |1328| 
        MOVL      ACC,XAR6              ; [CPU_] |1328| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |1328| 
        ; call occurs [#FS$$MPY] ; [] |1328| 
        MOVL      XAR4,#_intercept      ; [CPU_U] |1328| 
        MOVL      XAR6,ACC              ; [CPU_] |1328| 
        MOVL      ACC,XAR2              ; [CPU_] |1328| 
        ADDL      XAR4,ACC              ; [CPU_] |1328| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |1328| 
        MOVL      *-SP[2],ACC           ; [CPU_] |1328| 
        MOVL      ACC,XAR6              ; [CPU_] |1328| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$166, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_] |1328| 
        ; call occurs [#FS$$ADD] ; [] |1328| 
        MOVL      XAR4,*-SP[30]         ; [CPU_] |1328| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |1328| 
        MOVL      XAR4,*-SP[32]         ; [CPU_] |1328| 
        MOVW      DP,#_tare_reset       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1332,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1332 | if (tare_reset & BITMAP[i])             // new tare value              
; 1334 |         tare_reset &= ~BITMAP[i];                                      
; 1335 |         ad7738_tare.adw[i] = ad7738_load.adw[i];                       
; 1336 |         ad7738_load.adw[i] = 0;                                        
; 1337 | } else                                  // apply tare                  
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[0]          ; [CPU_] |1332| 
        MOV       AH,AL                 ; [CPU_] |1332| 
        AND       AH,@_tare_reset       ; [CPU_] |1332| 
        B         $C$L79,NEQ            ; [CPU_] |1332| 
        ; branchcc occurs ; [] |1332| 
        MOVL      XAR4,*-SP[34]         ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1339,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 1339 | ad7738_load.adw[i] -= ad7738_tare.adw[i];                              
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |1339| 
        MOVL      *-SP[2],ACC           ; [CPU_] |1339| 
        MOVL      XAR1,*-SP[30]         ; [CPU_] |1339| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1339| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("FS$$SUB")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #FS$$SUB              ; [CPU_] |1339| 
        ; call occurs [#FS$$SUB] ; [] |1339| 
        MOVL      *+XAR1[0],ACC         ; [CPU_] |1339| 
        B         $C$L80,UNC            ; [CPU_] |1339| 
        ; branch occurs ; [] |1339| 
$C$L79:    
	.dwpsn	file "../Source/ad7738.c",line 1334,column 5,is_stmt,isa 0
        MOVL      XAR4,*-SP[30]         ; [CPU_] |1334| 
	.dwpsn	file "../Source/ad7738.c",line 1335,column 5,is_stmt,isa 0
        MOVL      XAR5,*-SP[34]         ; [CPU_] |1335| 
	.dwpsn	file "../Source/ad7738.c",line 1334,column 5,is_stmt,isa 0
        NOT       AL                    ; [CPU_] |1334| 
        AND       @_tare_reset,AL       ; [CPU_] |1334| 
	.dwpsn	file "../Source/ad7738.c",line 1335,column 5,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |1335| 
        MOVL      *+XAR5[0],ACC         ; [CPU_] |1335| 
	.dwpsn	file "../Source/ad7738.c",line 1336,column 5,is_stmt,isa 0
        MOV       AL,#0                 ; [CPU_] |1336| 
        MOV       AH,#0                 ; [CPU_] |1336| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |1336| 
$C$L80:    
        MOVL      ACC,*-SP[20]          ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 1269,column 15,is_stmt,isa 0
        INC       *-SP[17]              ; [CPU_] |1269| 
        ADDB      ACC,#1                ; [CPU_] |1269| 
        MOVL      *-SP[20],ACC          ; [CPU_] |1269| 
        MOV       AL,*-SP[17]           ; [CPU_] |1269| 
        CMPB      AL,#4                 ; [CPU_] |1269| 
        B         $C$L68,LT             ; [CPU_] |1269| 
        ; branchcc occurs ; [] |1269| 
        MOVW      DP,#_rawrdy           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1364,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1364 | rawrdy = 1;                                                            
; 1366 | // *** add to the big buffer ***                                       
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[36]         ; [CPU_] |1364| 
        MOVB      @_rawrdy,#1,UNC       ; [CPU_] |1364| 
	.dwpsn	file "../Source/ad7738.c",line 1367,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1367 | prod_add(&ad7738_load);                                                
; 1369 | // *** monitor data check ***                                          
;----------------------------------------------------------------------
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_prod_add")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_prod_add            ; [CPU_] |1367| 
        ; call occurs [#_prod_add] ; [] |1367| 
        MOVW      DP,#_mon_cnt          ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1370,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1370 | mon_cnt++;                                                             
; 1371 | if (mon_cnt > MON_RATE) {                                              
;----------------------------------------------------------------------
        INC       @_mon_cnt             ; [CPU_] |1370| 
        CMP       @_mon_cnt,#1000       ; [CPU_] |1370| 
        B         $C$L81,LEQ            ; [CPU_] |1370| 
        ; branchcc occurs ; [] |1370| 
	.dwpsn	file "../Source/ad7738.c",line 1372,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1372 | mon_cnt = 0;                                                           
;----------------------------------------------------------------------
        MOV       @_mon_cnt,#0          ; [CPU_] |1372| 
	.dwpsn	file "../Source/ad7738.c",line 1373,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1373 | memcpy((void*) &ad7738_mon, (void*) &ad7738_load, sizeof(adcwt_t));    
;----------------------------------------------------------------------
        MOVL      XAR7,*-SP[36]         ; [CPU_] |1373| 
        MOVL      XAR4,#_ad7738_mon     ; [CPU_U] |1373| 
        RPT       #15
||     PREAD     *XAR4++,*XAR7         ; [CPU_] |1373| 
	.dwpsn	file "../Source/ad7738.c",line 1374,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1374 | monrdy = 1;                                                            
; 1379 | // change phase                                                        
;----------------------------------------------------------------------
        MOVB      @_monrdy,#1,UNC       ; [CPU_] |1374| 
$C$L81:    
        MOVW      DP,#_ad7738_ph        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1380,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1380 | ad7738_ph++;                                                           
; 1381 | if (ad7738_ph > 1) {                                                   
;----------------------------------------------------------------------
        INC       @_ad7738_ph           ; [CPU_] |1380| 
        CMP       @_ad7738_ph,#1        ; [CPU_] |1380| 
        B         $C$L82,LOS            ; [CPU_] |1380| 
        ; branchcc occurs ; [] |1380| 
	.dwpsn	file "../Source/ad7738.c",line 1382,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1382 | ad7738_ph = 0;                                                         
;----------------------------------------------------------------------
        MOV       @_ad7738_ph,#0        ; [CPU_] |1382| 
$C$L82:    
	.dwpsn	file "../Source/ad7738.c",line 1385,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1385 | setSystemCapVoltageF(ad7738_load.adw[0]);                              
;----------------------------------------------------------------------
        MOVL      XAR1,#_ad7738_load    ; [CPU_U] |1385| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |1385| 
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_setSystemCapVoltageF")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_setSystemCapVoltageF ; [CPU_] |1385| 
        ; call occurs [#_setSystemCapVoltageF] ; [] |1385| 
	.dwpsn	file "../Source/ad7738.c",line 1386,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1386 | setSystemOutCurrentF(ad7738_load.adw[1]);                              
; 1388 | // GpioDataRegs.GPBSET.bit.GPIOB3 = 1;  // DEBUG: TAG_TX               
; 1390 | // Acknowledge this interrupt to receive more interrupts from group 1  
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR1[2]         ; [CPU_] |1386| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_setSystemOutCurrentF")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_setSystemOutCurrentF ; [CPU_] |1386| 
        ; call occurs [#_setSystemOutCurrentF] ; [] |1386| 
        SUBB      SP,#40                ; [CPU_U] 
	.dwcfi	cfa_offset, -18
        MOVW      DP,#_PieCtrlRegs+1    ; [CPU_U] 
        MOVL      XAR7,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -16
	.dwcfi	restore_reg, 18
        MOVL      XAR6,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -14
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 12
        MOVL      XAR3,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 10
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 8
        MOVL      XT,*--SP              ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
	.dwpsn	file "../Source/ad7738.c",line 1391,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1391 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1;                                
;----------------------------------------------------------------------
        MOVB      @_PieCtrlRegs+1,#1,UNC ; [CPU_] |1391| 
        NASP      ; [CPU_] 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return

        IRET      ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$120, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x570)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$120

	.sect	".text"
	.clink
	.global	_ad7738_tempstart

$C$DW$172	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$172, DW_AT_name("ad7738_tempstart")
	.dwattr $C$DW$172, DW_AT_low_pc(_ad7738_tempstart)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_ad7738_tempstart")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$172, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x260)
	.dwattr $C$DW$172, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 609,column 1,is_stmt,address _ad7738_tempstart,isa 0

	.dwfde $C$DW$CIE, _ad7738_tempstart
;----------------------------------------------------------------------
; 608 | int ad7738_tempstart()                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_tempstart             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_tempstart:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_tempstart        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 610,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 610 | if( tempstart )                                                        
; 612 |   tempstart = 0;                              // reset flag            
;----------------------------------------------------------------------
        MOV       AL,@_tempstart        ; [CPU_] |610| 
        B         $C$L83,EQ             ; [CPU_] |610| 
        ; branchcc occurs ; [] |610| 
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 613,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 613 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |613| 
	.dwpsn	file "../Source/ad7738.c",line 612,column 5,is_stmt,isa 0
        MOV       @_tempstart,#0        ; [CPU_] |612| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L83:    
	.dwpsn	file "../Source/ad7738.c",line 615,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 615 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |615| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$172, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x268)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text"
	.clink
	.global	_ad7738_tempread

$C$DW$175	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$175, DW_AT_name("ad7738_tempread")
	.dwattr $C$DW$175, DW_AT_low_pc(_ad7738_tempread)
	.dwattr $C$DW$175, DW_AT_high_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_ad7738_tempread")
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$175, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$175, DW_AT_TI_begin_line(0x26c)
	.dwattr $C$DW$175, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$175, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 621,column 1,is_stmt,address _ad7738_tempread,isa 0

	.dwfde $C$DW$CIE, _ad7738_tempread
;----------------------------------------------------------------------
; 620 | int ad7738_tempread()                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_tempread              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_tempread:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_tempread         ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 622,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 622 | if( tempread )                                                         
; 624 |   tempread = 0;                               // reset flag            
;----------------------------------------------------------------------
        MOV       AL,@_tempread         ; [CPU_] |622| 
        B         $C$L84,EQ             ; [CPU_] |622| 
        ; branchcc occurs ; [] |622| 
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 625,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 625 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |625| 
	.dwpsn	file "../Source/ad7738.c",line 624,column 5,is_stmt,isa 0
        MOV       @_tempread,#0         ; [CPU_] |624| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L84:    
	.dwpsn	file "../Source/ad7738.c",line 627,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 627 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |627| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$175, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$175, DW_AT_TI_end_line(0x274)
	.dwattr $C$DW$175, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$175

	.sect	".text"
	.clink
	.global	_ad7738_tagsdetect

$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("ad7738_tagsdetect")
	.dwattr $C$DW$178, DW_AT_low_pc(_ad7738_tagsdetect)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_ad7738_tagsdetect")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$178, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x278)
	.dwattr $C$DW$178, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 633,column 1,is_stmt,address _ad7738_tagsdetect,isa 0

	.dwfde $C$DW$CIE, _ad7738_tagsdetect
;----------------------------------------------------------------------
; 632 | int ad7738_tagsdetect()                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_tagsdetect            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_tagsdetect:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_tagsdetect       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 634,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 634 | if( tagsdetect )                                                       
; 636 |   tagsdetect = 0;                                                      
;----------------------------------------------------------------------
        MOV       AL,@_tagsdetect       ; [CPU_] |634| 
        B         $C$L85,EQ             ; [CPU_] |634| 
        ; branchcc occurs ; [] |634| 
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 637,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 637 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |637| 
	.dwpsn	file "../Source/ad7738.c",line 636,column 5,is_stmt,isa 0
        MOV       @_tagsdetect,#0       ; [CPU_] |636| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L85:    
	.dwpsn	file "../Source/ad7738.c",line 639,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 639 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |639| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$178, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x280)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".text"
	.clink
	.global	_ad7738_settemp

$C$DW$181	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$181, DW_AT_name("ad7738_settemp")
	.dwattr $C$DW$181, DW_AT_low_pc(_ad7738_settemp)
	.dwattr $C$DW$181, DW_AT_high_pc(0x00)
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_ad7738_settemp")
	.dwattr $C$DW$181, DW_AT_external
	.dwattr $C$DW$181, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$181, DW_AT_TI_begin_line(0x283)
	.dwattr $C$DW$181, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$181, DW_AT_TI_max_frame_size(-30)
	.dwpsn	file "../Source/ad7738.c",line 644,column 1,is_stmt,address _ad7738_settemp,isa 0

	.dwfde $C$DW$CIE, _ad7738_settemp
$C$DW$182	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$182, DW_AT_name("tempv")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_tempv")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 643 | void ad7738_settemp( double tempv )                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_settemp               FR SIZE:  28           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 20 Auto,  6 SOE     *
;***************************************************************

_ad7738_settemp:
;* AR2   assigned to _tempv
$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("tempv")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_tempv")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$235)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to $O$U22
;* AR1   assigned to $O$U7
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("hf")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_hf")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_breg20 -18]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#22                ; [CPU_U] 
	.dwcfi	cfa_offset, -30
        MOVZ      AR4,SP                ; [CPU_] 
;----------------------------------------------------------------------
; 645 | int i;                                                                 
; 646 | adcwt_t hf;                                                            
; 648 | for( i = 0; i < CHS_MAX; i++ )                                         
;----------------------------------------------------------------------
        MOVL      XAR2,ACC              ; [CPU_] |644| 
        MOVL      XAR1,#_conf_data+46   ; [CPU_U] 
        MOV       *-SP[19],#3           ; [CPU_] 
        SUBB      XAR4,#18              ; [CPU_U] 
        MOVZ      AR3,AR4               ; [CPU_] 
$C$L86:    
	.dwpsn	file "../Source/ad7738.c",line 650,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 650 | hf.adw[i] = conf_data.ch[i].tcx * tempv * tempv + conf_data.ch[i].tcy *
;     |  tempv + conf_data.ch[i].tcz;                                          
; 653 | DINT;                                                                  
;----------------------------------------------------------------------
        MOVL      *-SP[2],XAR2          ; [CPU_] |650| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |650| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |650| 
        ; call occurs [#FS$$MPY] ; [] |650| 
        MOVL      *-SP[2],XAR2          ; [CPU_] |650| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |650| 
        ; call occurs [#FS$$MPY] ; [] |650| 
        MOVL      *-SP[22],ACC          ; [CPU_] |650| 
        MOVL      *-SP[2],XAR2          ; [CPU_] |650| 
        MOVL      ACC,*+XAR1[2]         ; [CPU_] |650| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |650| 
        ; call occurs [#FS$$MPY] ; [] |650| 
        MOVL      *-SP[2],ACC           ; [CPU_] |650| 
        MOVL      ACC,*-SP[22]          ; [CPU_] |650| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_] |650| 
        ; call occurs [#FS$$ADD] ; [] |650| 
        MOVL      XAR6,*+XAR1[4]        ; [CPU_] |650| 
        MOVL      *-SP[2],XAR6          ; [CPU_] |650| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_] |650| 
        ; call occurs [#FS$$ADD] ; [] |650| 
        MOVL      *XAR3++,ACC           ; [CPU_] |650| 
	.dwpsn	file "../Source/ad7738.c",line 648,column 15,is_stmt,isa 0
        MOVZ      AR6,*-SP[19]          ; [CPU_] |648| 
        SUBB      XAR6,#1               ; [CPU_U] |648| 
        MOVZ      AR0,AR6               ; [CPU_] |648| 
        ADDB      XAR1,#10              ; [CPU_] |648| 
        MOV       *-SP[19],AR6          ; [CPU_] |648| 
        CMP       AR0,#-1               ; [CPU_] |648| 
        B         $C$L86,NEQ            ; [CPU_] |648| 
        ; branchcc occurs ; [] |648| 
 setc INTM
	.dwpsn	file "../Source/ad7738.c",line 654,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 654 | memcpy( (void*)&hfactor, (void*)&hf, sizeof(adcwt_t) );                
; 655 | EINT;                                                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |654| 
        SUBB      XAR4,#18              ; [CPU_U] |654| 
        MOVZ      AR7,AR4               ; [CPU_] |654| 
        MOVL      XAR4,#_hfactor        ; [CPU_U] |654| 
        RPT       #15
||     PREAD     *XAR4++,*XAR7         ; [CPU_] |654| 
 clrc INTM
        SPM       #0                    ; [CPU_] 
        SUBB      SP,#22                ; [CPU_U] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$181, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$181, DW_AT_TI_end_line(0x290)
	.dwattr $C$DW$181, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$181

	.sect	".text"
	.clink
	.global	_ad7738_setlimitchgd

$C$DW$191	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$191, DW_AT_name("ad7738_setlimitchgd")
	.dwattr $C$DW$191, DW_AT_low_pc(_ad7738_setlimitchgd)
	.dwattr $C$DW$191, DW_AT_high_pc(0x00)
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_ad7738_setlimitchgd")
	.dwattr $C$DW$191, DW_AT_external
	.dwattr $C$DW$191, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$191, DW_AT_TI_begin_line(0x1e6)
	.dwattr $C$DW$191, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$191, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 487,column 1,is_stmt,address _ad7738_setlimitchgd,isa 0

	.dwfde $C$DW$CIE, _ad7738_setlimitchgd
;----------------------------------------------------------------------
; 486 | void ad7738_setlimitchgd()                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_setlimitchgd          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_setlimitchgd:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_limitchgd        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 488,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 488 | limitchgd[0] =1;                                                       
;----------------------------------------------------------------------
        MOVB      @_limitchgd,#1,UNC    ; [CPU_] |488| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$191, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$191, DW_AT_TI_end_line(0x1e9)
	.dwattr $C$DW$191, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$191

	.sect	".text"
	.clink
	.global	_ad7738_setcal

$C$DW$193	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$193, DW_AT_name("ad7738_setcal")
	.dwattr $C$DW$193, DW_AT_low_pc(_ad7738_setcal)
	.dwattr $C$DW$193, DW_AT_high_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_ad7738_setcal")
	.dwattr $C$DW$193, DW_AT_external
	.dwattr $C$DW$193, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$193, DW_AT_TI_begin_line(0x222)
	.dwattr $C$DW$193, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$193, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../Source/ad7738.c",line 547,column 1,is_stmt,address _ad7738_setcal,isa 0

	.dwfde $C$DW$CIE, _ad7738_setcal
;----------------------------------------------------------------------
; 546 | void ad7738_setcal()                                                   
; 548 | int i, j;                                                              
; 550 | // set adc calibration                                                 
; 551 | for( i = 0; i < CHS_MAX; i++ )                                         
; 553 |   for( j = 0; j < PNT_MAX-1; j++ )                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_setcal                FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  8 Auto,  6 SOE     *
;***************************************************************

_ad7738_setcal:
;* AR6   assigned to $O$C1
;* AR2   assigned to $O$U20
;* AR1   assigned to $O$U7
;* AR2   assigned to $O$U54
;* AR3   assigned to $O$U58
;* AR4   assigned to $O$U71
;* AR7   assigned to $O$U76
;* AR5   assigned to $O$U80
;* AR1   assigned to $O$U83
;* AR3   assigned to $O$U88
;* AR2   assigned to $O$U94
;* AR3   assigned to $O$K6
;* AR2   assigned to $O$K6
;* AR1   assigned to $O$K6
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      *SP++,XAR3            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        ADDB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -18
        MOVL      XAR3,#_conf_data      ; [CPU_U] 
        MOVL      XAR1,XAR3             ; [CPU_] 
        MOV       *-SP[3],#3            ; [CPU_] 
        MOVB      ACC,#0                ; [CPU_] 
        MOVL      *-SP[10],ACC          ; [CPU_] 
        ADDB      XAR1,#42              ; [CPU_] 
$C$L87:    
        MOVL      XAR4,#_slope          ; [CPU_U] 
        ADDL      XAR4,ACC              ; [CPU_] 
        MOVL      *-SP[6],XAR4          ; [CPU_] 
        MOVL      XAR4,#_intercept      ; [CPU_U] 
        ADDL      XAR4,ACC              ; [CPU_] 
        MOV       *-SP[4],#10           ; [CPU_] 
        MOVB      XAR2,#0               ; [CPU_] 
        MOVL      *-SP[8],XAR4          ; [CPU_] 
$C$L88:    
	.dwpsn	file "../Source/ad7738.c",line 555,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 555 | slope[j].adw[i] = conf_data.sensor[conf_data.ch[i].ci].ufactor * conf_d
;     | ata.ch[i].bslope * conf_data.sensor[conf_data.ch[i].ci].slope[j];      
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR1[2]         ; [CPU_] |555| 
        MOVL      *-SP[2],ACC           ; [CPU_] |555| 
        MOV       T,*+XAR1[0]           ; [CPU_] |555| 
        MPYB      ACC,T,#152            ; [CPU_] |555| 
        ADDL      ACC,XAR3              ; [CPU_] |555| 
        MOVL      XAR4,ACC              ; [CPU_] |555| 
        MOVB      XAR0,#126             ; [CPU_] |555| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |555| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |555| 
        ; call occurs [#FS$$MPY] ; [] |555| 
        MOV       T,*+XAR1[0]           ; [CPU_] |555| 
        MOVL      XAR6,ACC              ; [CPU_] |555| 
        MPYB      ACC,T,#152            ; [CPU_] |555| 
        ADDL      ACC,XAR2              ; [CPU_] |555| 
        ADDL      ACC,XAR3              ; [CPU_] |555| 
        MOVL      XAR4,ACC              ; [CPU_] |555| 
        MOVB      XAR0,#178             ; [CPU_] |555| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |555| 
        MOVL      *-SP[2],ACC           ; [CPU_] |555| 
        MOVL      ACC,XAR6              ; [CPU_] |555| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |555| 
        ; call occurs [#FS$$MPY] ; [] |555| 
        MOVL      XAR4,*-SP[6]          ; [CPU_] |555| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |555| 
	.dwpsn	file "../Source/ad7738.c",line 556,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 556 | intercept[j].adw[i] = conf_data.sensor[conf_data.ch[i].ci].ufactor * co
;     | nf_data.sensor[conf_data.ch[i].ci].intercept[j];                       
;----------------------------------------------------------------------
        MOV       T,*+XAR1[0]           ; [CPU_] |556| 
        MPYB      ACC,T,#152            ; [CPU_] |556| 
        ADDL      ACC,XAR2              ; [CPU_] |556| 
        ADDL      ACC,XAR3              ; [CPU_] |556| 
        MOVL      XAR4,ACC              ; [CPU_] |556| 
        MOVB      XAR0,#200             ; [CPU_] |556| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |556| 
        MOVL      *-SP[2],ACC           ; [CPU_] |556| 
        MOV       T,*+XAR1[0]           ; [CPU_] |556| 
        MPYB      ACC,T,#152            ; [CPU_] |556| 
        ADDL      ACC,XAR3              ; [CPU_] |556| 
        MOVL      XAR4,ACC              ; [CPU_] |556| 
        MOVB      XAR0,#126             ; [CPU_] |556| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |556| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$196, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |556| 
        ; call occurs [#FS$$MPY] ; [] |556| 
        MOVL      XAR4,*-SP[8]          ; [CPU_] |556| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |556| 
	.dwpsn	file "../Source/ad7738.c",line 553,column 17,is_stmt,isa 0
        MOVZ      AR6,*-SP[4]           ; [CPU_] |553| 
        ADDB      XAR2,#2               ; [CPU_] |553| 
        MOVL      ACC,*-SP[6]           ; [CPU_] |553| 
        SUBB      XAR6,#1               ; [CPU_U] |553| 
        ADDB      ACC,#16               ; [CPU_] |553| 
        MOVL      *-SP[6],ACC           ; [CPU_] |553| 
        MOV       *-SP[4],AR6           ; [CPU_] |553| 
        MOVL      ACC,*-SP[8]           ; [CPU_] |553| 
        ADDB      ACC,#16               ; [CPU_] |553| 
        MOVL      *-SP[8],ACC           ; [CPU_] |553| 
        CMP       AR6,#-1               ; [CPU_] |553| 
        B         $C$L88,NEQ            ; [CPU_] |553| 
        ; branchcc occurs ; [] |553| 
	.dwpsn	file "../Source/ad7738.c",line 551,column 15,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_] |551| 
        MOVL      ACC,*-SP[10]          ; [CPU_] |551| 
        ADDB      ACC,#2                ; [CPU_] |551| 
        SUBB      XAR6,#1               ; [CPU_U] |551| 
        MOVZ      AR0,AR6               ; [CPU_] |551| 
        ADDB      XAR1,#10              ; [CPU_] |551| 
        MOVL      *-SP[10],ACC          ; [CPU_] |551| 
        MOV       *-SP[3],AR6           ; [CPU_] |551| 
        CMP       AR0,#-1               ; [CPU_] |551| 
        B         $C$L87,NEQ            ; [CPU_] |551| 
        ; branchcc occurs ; [] |551| 
	.dwpsn	file "../Source/ad7738.c",line 559,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 559 | adcdiff = conf_data.diffwin * 0x01000000;                              
; 561 | // position factor                                                     
; 562 | for( i = 0; i < ENC_MAX; i++ )                                         
; 564 |   slope[0].pos[i] = 1.0 / (double)conf_data.cntperin[i];               
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |559| 
        MOV       AH,#19328             ; [CPU_] |559| 
        MOVL      XAR2,#_conf_data      ; [CPU_U] |559| 
        MOVB      XAR0,#40              ; [CPU_] |559| 
        MOVL      *-SP[2],ACC           ; [CPU_] |559| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_] |559| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |559| 
        ; call occurs [#FS$$MPY] ; [] |559| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |559| 
        ; call occurs [#FS$$TOL] ; [] |559| 
        MOVW      DP,#_adcdiff          ; [CPU_U] 
        MOVL      @_adcdiff,ACC         ; [CPU_] |559| 
        MOVL      ACC,XAR2              ; [CPU_] 
        ADD       ACC,#201 << 4         ; [CPU_] 
        MOVL      XAR2,ACC              ; [CPU_] 
        MOV       *-SP[3],#1            ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 565,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 565 | slope[0].vel[i] = 60.0 * SAMPRATE * slope[0].pos[i] / ((double)conf_dat
;     | a.velfilter * (double)conf_data.velfilter);                            
;----------------------------------------------------------------------
        MOVL      XAR1,#_conf_data      ; [CPU_U] |565| 
        MOVL      XAR3,#_slope+8        ; [CPU_U] 
$C$L89:    
	.dwpsn	file "../Source/ad7738.c",line 564,column 5,is_stmt,isa 0
        MOVL      ACC,*XAR2++           ; [CPU_] |564| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |564| 
        ; call occurs [#L$$TOFS] ; [] |564| 
        MOVL      *-SP[2],ACC           ; [CPU_] |564| 
        MOV       ACC,#32512 << 15      ; [CPU_] |564| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_] |564| 
        ; call occurs [#FS$$DIV] ; [] |564| 
        MOVL      *+XAR3[0],ACC         ; [CPU_] |564| 
        MOVL      XAR6,ACC              ; [CPU_] |564| 
	.dwpsn	file "../Source/ad7738.c",line 565,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 568 | // set limit                                                           
; 569 | for( i = 0; i < LIM_MAX; i++ )                                         
;----------------------------------------------------------------------
        MOV       AL,#24576             ; [CPU_] |565| 
        MOV       AH,#18282             ; [CPU_] |565| 
        MOVL      *-SP[2],ACC           ; [CPU_] |565| 
        MOVL      ACC,XAR6              ; [CPU_] |565| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$201, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |565| 
        ; call occurs [#FS$$MPY] ; [] |565| 
        MOVW      DP,#_conf_data+3214   ; [CPU_U] 
        MOVL      *-SP[8],ACC           ; [CPU_] |565| 
        MOV       AL,@_conf_data+3214   ; [CPU_] |565| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("U$$TOFS")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #U$$TOFS              ; [CPU_] |565| 
        ; call occurs [#U$$TOFS] ; [] |565| 
        MOVL      XAR0,#3214            ; [CPU_] |565| 
        MOVL      *-SP[6],ACC           ; [CPU_] |565| 
        MOV       AL,*+XAR1[AR0]        ; [CPU_] |565| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("U$$TOFS")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #U$$TOFS              ; [CPU_] |565| 
        ; call occurs [#U$$TOFS] ; [] |565| 
        MOVL      *-SP[2],ACC           ; [CPU_] |565| 
        MOVL      ACC,*-SP[6]           ; [CPU_] |565| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |565| 
        ; call occurs [#FS$$MPY] ; [] |565| 
        MOVL      *-SP[2],ACC           ; [CPU_] |565| 
        MOVL      ACC,*-SP[8]           ; [CPU_] |565| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_] |565| 
        ; call occurs [#FS$$DIV] ; [] |565| 
        MOVL      *+XAR3[4],ACC         ; [CPU_] |565| 
	.dwpsn	file "../Source/ad7738.c",line 562,column 15,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_] |562| 
        SUBB      XAR6,#1               ; [CPU_U] |562| 
        MOVZ      AR0,AR6               ; [CPU_] |562| 
        ADDB      XAR3,#2               ; [CPU_] |562| 
        MOV       *-SP[3],AR6           ; [CPU_] |562| 
        CMP       AR0,#-1               ; [CPU_] |562| 
        B         $C$L89,NEQ            ; [CPU_] |562| 
        ; branchcc occurs ; [] |562| 
        MOVL      ACC,XAR1              ; [CPU_] 
        ADD       ACC,#199 << 4         ; [CPU_] 
        MOVL      XAR4,ACC              ; [CPU_] 
        MOVB      XAR6,#3               ; [CPU_] 
        MOVL      XAR7,#_limit          ; [CPU_U] 
        MOVL      XAR5,#_limitchgd      ; [CPU_U] 
$C$L90:    
	.dwpsn	file "../Source/ad7738.c",line 571,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 571 | limit[i] = conf_data.lim[i].limit;                                     
;----------------------------------------------------------------------
        MOV       AL,*+XAR4[0]          ; [CPU_] |571| 
        MOV       *XAR7++,AL            ; [CPU_] |571| 
	.dwpsn	file "../Source/ad7738.c",line 569,column 15,is_stmt,isa 0
        ADDB      XAR4,#8               ; [CPU_] |569| 
	.dwpsn	file "../Source/ad7738.c",line 572,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 572 | limitchgd[i] = 1;                                                      
; 575 | // set dac calibration                                                 
; 576 | for( i = 0; i < DAC_MAX; i++ )                                         
; 579 | //if( VFD_LOAD == conf_data.dac[i].what ||                             
; 580 |     //VFD_PEAK == conf_data.dac[i].what ||                             
; 581 |     //VFD_VALL == conf_data.dac[i].what )                              
; 582 | //{                                                                    
; 583 |   //daci.adc[i] = conf_data.dac[i].dslope * conf_data.sensor[conf_data.
;     | ch[conf_data.dac[i].ch].ci].dacoff + conf_data.dac[i].dint;            
; 584 |   //dacs.adw[i] = conf_data.dac[i].dslope * conf_data.sensor[conf_data.
;     | ch[conf_data.dac[i].ch].ci].dacgain / conf_data.sensor[conf_data.ch[con
;     | f_data.dac[i].ch].ci].ufactor;                                         
; 585 | //  daci.adc[i] = conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci
;     | ].dacoff;                                                              
; 586 | //  dacs.adw[i] = conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci
;     | ].dacgain / conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci].ufac
;     | tor;                                                                   
; 587 | //}                                                                    
; 588 | //else if( VFD_POSI == conf_data.dac[i].what ||                        
; 589 |     //     VFD_VELO == conf_data.dac[i].what )                         
; 590 | //{                                                                    
; 591 |   // position and velocity                                             
; 592 |   //daci.adc[i] = conf_data.dac[i].dslope * conf_data.dac[i].offset + c
;     | onf_data.dac[i].dint;                                                  
; 593 |   //dacs.adw[i] = conf_data.dac[i].dslope * conf_data.dac[i].gain;     
;----------------------------------------------------------------------
        MOVB      *XAR5++,#1,UNC        ; [CPU_] |572| 
	.dwpsn	file "../Source/ad7738.c",line 569,column 15,is_stmt,isa 0
        BANZ      $C$L90,AR6--          ; [CPU_] |569| 
        ; branchcc occurs ; [] |569| 
        MOVL      ACC,XAR1              ; [CPU_] 
        ADD       ACC,#1571 << 1        ; [CPU_] 
        MOVL      XAR1,ACC              ; [CPU_] 
        MOVL      XAR3,#_daci           ; [CPU_U] 
        MOVL      XAR2,#_dacs           ; [CPU_U] 
        MOV       *-SP[3],#3            ; [CPU_] 
$C$L91:    
	.dwpsn	file "../Source/ad7738.c",line 594,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 594 | daci.adc[i] = conf_data.dac[i].offset;                                 
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR1[2]         ; [CPU_] |594| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |594| 
        ; call occurs [#FS$$TOL] ; [] |594| 
        MOVL      *XAR3++,ACC           ; [CPU_] |594| 
	.dwpsn	file "../Source/ad7738.c",line 595,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 595 | dacs.adw[i] = conf_data.dac[i].gain;                                   
; 596 | //}                                                                    
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |595| 
        MOVL      *XAR2++,ACC           ; [CPU_] |595| 
	.dwpsn	file "../Source/ad7738.c",line 576,column 15,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_] |576| 
        SUBB      XAR6,#1               ; [CPU_U] |576| 
        MOVZ      AR0,AR6               ; [CPU_] |576| 
        ADDB      XAR1,#12              ; [CPU_] |576| 
        MOV       *-SP[3],AR6           ; [CPU_] |576| 
        CMP       AR0,#-1               ; [CPU_] |576| 
        B         $C$L91,NEQ            ; [CPU_] |576| 
        ; branchcc occurs ; [] |576| 
        SUBB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -8
        MOVL      XAR3,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$193, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$193, DW_AT_TI_end_line(0x256)
	.dwattr $C$DW$193, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$193

	.sect	".text"
	.clink
	.global	_ad7738_resetvall

$C$DW$208	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$208, DW_AT_name("ad7738_resetvall")
	.dwattr $C$DW$208, DW_AT_low_pc(_ad7738_resetvall)
	.dwattr $C$DW$208, DW_AT_high_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_ad7738_resetvall")
	.dwattr $C$DW$208, DW_AT_external
	.dwattr $C$DW$208, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$208, DW_AT_TI_begin_line(0x1f4)
	.dwattr $C$DW$208, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$208, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 501,column 1,is_stmt,address _ad7738_resetvall,isa 0

	.dwfde $C$DW$CIE, _ad7738_resetvall
$C$DW$209	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$209, DW_AT_name("bm")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 500 | void ad7738_resetvall( Uint16 bm )                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_resetvall             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_resetvall:
;* AL    assigned to _bm
$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("bm")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_vall_reset       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 502,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 502 | vall_reset = bm;                                                       
;----------------------------------------------------------------------
        MOV       @_vall_reset,AL       ; [CPU_] |502| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$208, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$208, DW_AT_TI_end_line(0x1f7)
	.dwattr $C$DW$208, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$208

	.sect	".text"
	.clink
	.global	_ad7738_resettare

$C$DW$212	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$212, DW_AT_name("ad7738_resettare")
	.dwattr $C$DW$212, DW_AT_low_pc(_ad7738_resettare)
	.dwattr $C$DW$212, DW_AT_high_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_ad7738_resettare")
	.dwattr $C$DW$212, DW_AT_external
	.dwattr $C$DW$212, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$212, DW_AT_TI_begin_line(0x1fb)
	.dwattr $C$DW$212, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$212, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 508,column 1,is_stmt,address _ad7738_resettare,isa 0

	.dwfde $C$DW$CIE, _ad7738_resettare
$C$DW$213	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$213, DW_AT_name("bm")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 507 | void ad7738_resettare( Uint16 bm )                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_resettare             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_resettare:
;* AL    assigned to _bm
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("bm")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_tare_reset       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 509,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 509 | tare_reset = bm;                                                       
;----------------------------------------------------------------------
        MOV       @_tare_reset,AL       ; [CPU_] |509| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$212, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$212, DW_AT_TI_end_line(0x1fe)
	.dwattr $C$DW$212, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$212

	.sect	".text"
	.clink
	.global	_ad7738_resetpeak

$C$DW$216	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$216, DW_AT_name("ad7738_resetpeak")
	.dwattr $C$DW$216, DW_AT_low_pc(_ad7738_resetpeak)
	.dwattr $C$DW$216, DW_AT_high_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_ad7738_resetpeak")
	.dwattr $C$DW$216, DW_AT_external
	.dwattr $C$DW$216, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$216, DW_AT_TI_begin_line(0x1ee)
	.dwattr $C$DW$216, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$216, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 495,column 1,is_stmt,address _ad7738_resetpeak,isa 0

	.dwfde $C$DW$CIE, _ad7738_resetpeak
$C$DW$217	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$217, DW_AT_name("bm")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 494 | void ad7738_resetpeak( Uint16 bm )                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_resetpeak             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_resetpeak:
;* AL    assigned to _bm
$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("bm")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_peak_reset       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 496,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 496 | peak_reset = bm;                                                       
;----------------------------------------------------------------------
        MOV       @_peak_reset,AL       ; [CPU_] |496| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$216, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$216, DW_AT_TI_end_line(0x1f1)
	.dwattr $C$DW$216, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$216

	.sect	".text"
	.clink
	.global	_ad7738_resetlimit

$C$DW$220	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$220, DW_AT_name("ad7738_resetlimit")
	.dwattr $C$DW$220, DW_AT_low_pc(_ad7738_resetlimit)
	.dwattr $C$DW$220, DW_AT_high_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_ad7738_resetlimit")
	.dwattr $C$DW$220, DW_AT_external
	.dwattr $C$DW$220, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$220, DW_AT_TI_begin_line(0x202)
	.dwattr $C$DW$220, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$220, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/ad7738.c",line 515,column 1,is_stmt,address _ad7738_resetlimit,isa 0

	.dwfde $C$DW$CIE, _ad7738_resetlimit
$C$DW$221	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$221, DW_AT_name("ch")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 514 | void ad7738_resetlimit( Uint16 ch )                                    
; 516 | int i;                                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_resetlimit            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_ad7738_resetlimit:
;* AR6   assigned to $O$C1
;* AL    assigned to $O$C2
;* AH    assigned to $O$C3
;* AL    assigned to $O$C4
;* AR0   assigned to _ch
$C$DW$222	.dwtag  DW_TAG_variable
	.dwattr $C$DW$222, DW_AT_name("ch")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg4]

;* AR1   assigned to _i
$C$DW$223	.dwtag  DW_TAG_variable
	.dwattr $C$DW$223, DW_AT_name("i")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to $O$U25
;* AR4   assigned to $O$K6
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/ad7738.c",line 517,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 517 | if( ch < LIM_MAX )                                                     
;----------------------------------------------------------------------
        CMPB      AL,#4                 ; [CPU_] |517| 
	.dwpsn	file "../Source/ad7738.c",line 515,column 1,is_stmt,isa 0
        MOVZ      AR0,AL                ; [CPU_] |515| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/ad7738.c",line 517,column 3,is_stmt,isa 0
        B         $C$L92,HIS            ; [CPU_] |517| 
        ; branchcc occurs ; [] |517| 
	.dwpsn	file "../Source/ad7738.c",line 519,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 519 | if( (limit[ch] & LIM_LA) && (limit[ch] & LIM_ST) )                     
; 520 | {                                           // latching and triggered  
;----------------------------------------------------------------------
        MOVL      XAR4,#_limit          ; [CPU_U] |519| 
        MOVL      ACC,XAR4              ; [CPU_] |519| 
        ADDU      ACC,AR0               ; [CPU_] |519| 
        MOVL      XAR4,ACC              ; [CPU_] |519| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |519| 
        TBIT      AL,#5                 ; [CPU_] |519| 
        B         $C$L95,NTC            ; [CPU_] |519| 
        ; branchcc occurs ; [] |519| 
        TBIT      AL,#0                 ; [CPU_] |519| 
        B         $C$L95,NTC            ; [CPU_] |519| 
        ; branchcc occurs ; [] |519| 
	.dwpsn	file "../Source/ad7738.c",line 521,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 521 | limit[ch] &= ~LIM_ST;                     // set status bit            
;----------------------------------------------------------------------
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_] |521| 
        MOV       *+XAR4[0],AL          ; [CPU_] |521| 
        MOV       AH,AL                 ; [CPU_] |521| 
	.dwpsn	file "../Source/ad7738.c",line 522,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 522 | limitchgd[ch] = 1;                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#_limitchgd      ; [CPU_U] |522| 
	.dwpsn	file "../Source/ad7738.c",line 523,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 523 | ssr_set( ch, (limit[ch] & LIM_NC) );                                   
;----------------------------------------------------------------------
        ANDB      AH,#64                ; [CPU_] |523| 
        MOV       AL,AR0                ; [CPU_] |523| 
	.dwpsn	file "../Source/ad7738.c",line 522,column 7,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_] |522| 
	.dwpsn	file "../Source/ad7738.c",line 523,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 526 | else                                                                   
;----------------------------------------------------------------------
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_ssr_set")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_ssr_set             ; [CPU_] |523| 
        ; call occurs [#_ssr_set] ; [] |523| 
        B         $C$L95,UNC            ; [CPU_] |523| 
        ; branch occurs ; [] |523| 
$C$L92:    
        MOVL      XAR2,#_limit          ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 528,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 528 | for( i = 0; i < LIM_MAX; i++ )                                         
;----------------------------------------------------------------------
        MOVB      XAR1,#0               ; [CPU_] |528| 
$C$L93:    
	.dwpsn	file "../Source/ad7738.c",line 530,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 530 | if( (limit[i] & LIM_LA) && (limit[i] & LIM_ST) )                       
; 531 | {                                         // latching and triggered    
;----------------------------------------------------------------------
        MOV       AL,*+XAR2[0]          ; [CPU_] |530| 
        TBIT      AL,#5                 ; [CPU_] |530| 
        B         $C$L94,NTC            ; [CPU_] |530| 
        ; branchcc occurs ; [] |530| 
        TBIT      AL,#0                 ; [CPU_] |530| 
        B         $C$L94,NTC            ; [CPU_] |530| 
        ; branchcc occurs ; [] |530| 
	.dwpsn	file "../Source/ad7738.c",line 532,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 532 | limit[i] &= ~LIM_ST;                    // set status bit              
;----------------------------------------------------------------------
        AND       AH,*+XAR2[0],#0xfffe  ; [CPU_] |532| 
	.dwpsn	file "../Source/ad7738.c",line 533,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 533 | limitchgd[i] = 1;                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#_limitchgd      ; [CPU_U] |533| 
        SETC      SXM                   ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 532,column 2,is_stmt,isa 0
        MOVZ      AR6,AH                ; [CPU_] |532| 
        MOV       *+XAR2[0],AH          ; [CPU_] |532| 
	.dwpsn	file "../Source/ad7738.c",line 533,column 2,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_] |533| 
        ADD       ACC,AR1               ; [CPU_] |533| 
        MOVL      XAR4,ACC              ; [CPU_] |533| 
	.dwpsn	file "../Source/ad7738.c",line 534,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 534 | ssr_set( i, (limit[i] & LIM_NC) );                                     
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |534| 
        AND       AH,AR6,#0x0040        ; [CPU_] |534| 
	.dwpsn	file "../Source/ad7738.c",line 533,column 2,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_] |533| 
	.dwpsn	file "../Source/ad7738.c",line 534,column 2,is_stmt,isa 0
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_ssr_set")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_ssr_set             ; [CPU_] |534| 
        ; call occurs [#_ssr_set] ; [] |534| 
$C$L94:    
	.dwpsn	file "../Source/ad7738.c",line 528,column 17,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |528| 
        ADDB      XAR2,#1               ; [CPU_] |528| 
        MOV       AL,AR1                ; [CPU_] |528| 
        CMPB      AL,#4                 ; [CPU_] |528| 
        B         $C$L93,LT             ; [CPU_] |528| 
        ; branchcc occurs ; [] |528| 
$C$L95:    
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$220, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$220, DW_AT_TI_end_line(0x21a)
	.dwattr $C$DW$220, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$220

	.sect	".text"
	.clink
	.global	_ad7738_rawrdy

$C$DW$227	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$227, DW_AT_name("ad7738_rawrdy")
	.dwattr $C$DW$227, DW_AT_low_pc(_ad7738_rawrdy)
	.dwattr $C$DW$227, DW_AT_high_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_ad7738_rawrdy")
	.dwattr $C$DW$227, DW_AT_external
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$227, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$227, DW_AT_TI_begin_line(0x1a2)
	.dwattr $C$DW$227, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$227, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 419,column 1,is_stmt,address _ad7738_rawrdy,isa 0

	.dwfde $C$DW$CIE, _ad7738_rawrdy
;----------------------------------------------------------------------
; 418 | int ad7738_rawrdy()                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_rawrdy                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_rawrdy:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_rawrdy           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 420,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 420 | return rawrdy;                                                         
;----------------------------------------------------------------------
        MOV       AL,@_rawrdy           ; [CPU_] |420| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$227, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$227, DW_AT_TI_end_line(0x1a5)
	.dwattr $C$DW$227, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$227

	.sect	".text"
	.clink
	.global	_ad7738_monrdy

$C$DW$229	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$229, DW_AT_name("ad7738_monrdy")
	.dwattr $C$DW$229, DW_AT_low_pc(_ad7738_monrdy)
	.dwattr $C$DW$229, DW_AT_high_pc(0x00)
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_ad7738_monrdy")
	.dwattr $C$DW$229, DW_AT_external
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$229, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$229, DW_AT_TI_begin_line(0x1b1)
	.dwattr $C$DW$229, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$229, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 434,column 1,is_stmt,address _ad7738_monrdy,isa 0

	.dwfde $C$DW$CIE, _ad7738_monrdy
;----------------------------------------------------------------------
; 433 | int ad7738_monrdy()                                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_monrdy                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_monrdy:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_monrdy           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 435,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 435 | return monrdy;                                                         
;----------------------------------------------------------------------
        MOV       AL,@_monrdy           ; [CPU_] |435| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$229, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$229, DW_AT_TI_end_line(0x1b4)
	.dwattr $C$DW$229, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$229

	.sect	".text"
	.clink
	.global	_ad7738_monclr

$C$DW$231	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$231, DW_AT_name("ad7738_monclr")
	.dwattr $C$DW$231, DW_AT_low_pc(_ad7738_monclr)
	.dwattr $C$DW$231, DW_AT_high_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_ad7738_monclr")
	.dwattr $C$DW$231, DW_AT_external
	.dwattr $C$DW$231, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$231, DW_AT_TI_begin_line(0x1b8)
	.dwattr $C$DW$231, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$231, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 441,column 1,is_stmt,address _ad7738_monclr,isa 0

	.dwfde $C$DW$CIE, _ad7738_monclr
;----------------------------------------------------------------------
; 440 | void ad7738_monclr()                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_monclr                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_monclr:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_monrdy           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 442,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 442 | monrdy = 0;                                                            
;----------------------------------------------------------------------
        MOV       @_monrdy,#0           ; [CPU_] |442| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$231, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$231, DW_AT_TI_end_line(0x1bb)
	.dwattr $C$DW$231, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$231

	.sect	".text"
	.clink
	.global	_InitCpuTimer0

$C$DW$233	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$233, DW_AT_name("InitCpuTimer0")
	.dwattr $C$DW$233, DW_AT_low_pc(_InitCpuTimer0)
	.dwattr $C$DW$233, DW_AT_high_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_InitCpuTimer0")
	.dwattr $C$DW$233, DW_AT_external
	.dwattr $C$DW$233, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$233, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$233, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$233, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 141,column 1,is_stmt,address _InitCpuTimer0,isa 0

	.dwfde $C$DW$CIE, _InitCpuTimer0
;----------------------------------------------------------------------
; 140 | void InitCpuTimer0()                                                   
; 143 | // Interrupts that are used in this example are re-mapped to           
; 144 | // ISR functions found within this file.                               
; 145 | EALLOW;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitCpuTimer0                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitCpuTimer0:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
 EALLOW
	.dwpsn	file "../Source/ad7738.c",line 146,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | PieVectTable.TINT0 = &cpu_timer0_isr;                                  
; 147 | EDIS;                                                                  
; 149 | // Initialize timer period to maximum:                                 
;----------------------------------------------------------------------
        MOVL      XAR4,#_cpu_timer0_isr ; [CPU_U] |146| 
        MOVW      DP,#_PieVectTable+76  ; [CPU_U] 
        MOVL      @_PieVectTable+76,XAR4 ; [CPU_] |146| 
 EDIS
	.dwpsn	file "../Source/ad7738.c",line 150,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | CpuTimer0Regs.PRD.all  = 0xFFFFFFFF;                                   
; 152 | // Initialize pre-scale counter to divide by 1 (SYSCLKOUT):            
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |150| 
        MOVW      DP,#_CpuTimer0Regs+2  ; [CPU_U] 
        SUBB      ACC,#1                ; [CPU_] |150| 
        MOVL      @_CpuTimer0Regs+2,ACC ; [CPU_] |150| 
	.dwpsn	file "../Source/ad7738.c",line 153,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | CpuTimer0Regs.TPR.all  = 0;                                            
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+6,#0  ; [CPU_] |153| 
	.dwpsn	file "../Source/ad7738.c",line 154,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 154 | CpuTimer0Regs.TPRH.all = 0;                                            
; 156 | // Make sure timer is stopped:                                         
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+7,#0  ; [CPU_] |154| 
	.dwpsn	file "../Source/ad7738.c",line 157,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 157 | CpuTimer0Regs.TCR.bit.TSS = 1;                                         
; 159 | // Reload all counter register with period value:                      
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0010 ; [CPU_] |157| 
	.dwpsn	file "../Source/ad7738.c",line 160,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 160 | CpuTimer0Regs.TCR.bit.TRB = 1;                                         
; 162 | // Enable CPU INT1 which is connected to CPU-Timer 0:                  
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0020 ; [CPU_] |160| 
	.dwpsn	file "../Source/ad7738.c",line 163,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | IER |= M_INT1;                                                         
; 165 | // Enable TINT0 in the PIE: Group 1 interrupt 7                        
;----------------------------------------------------------------------
        OR        IER,#0x0001           ; [CPU_] |163| 
        SPM       #0                    ; [CPU_] 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 166,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 166 | PieCtrlRegs.PIEIER1.bit.INTx7 = 1;                                     
;----------------------------------------------------------------------
        OR        @_PieCtrlRegs+2,#0x0040 ; [CPU_] |166| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$233, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$233, DW_AT_TI_end_line(0xa7)
	.dwattr $C$DW$233, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$233

	.sect	".text"
	.clink
	.global	_ConfigCpuTimer0

$C$DW$235	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$235, DW_AT_name("ConfigCpuTimer0")
	.dwattr $C$DW$235, DW_AT_low_pc(_ConfigCpuTimer0)
	.dwattr $C$DW$235, DW_AT_high_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_ConfigCpuTimer0")
	.dwattr $C$DW$235, DW_AT_external
	.dwattr $C$DW$235, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$235, DW_AT_TI_begin_line(0xb2)
	.dwattr $C$DW$235, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$235, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/ad7738.c",line 179,column 1,is_stmt,address _ConfigCpuTimer0,isa 0

	.dwfde $C$DW$CIE, _ConfigCpuTimer0
$C$DW$236	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$236, DW_AT_name("Freq")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_Freq")
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$236, DW_AT_location[DW_OP_reg0]

$C$DW$237	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$237, DW_AT_name("Period")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_Period")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_breg20 -6]

;----------------------------------------------------------------------
; 178 | void ConfigCpuTimer0( float Freq, float Period )                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ConfigCpuTimer0              FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ConfigCpuTimer0:
;* AR6   assigned to _Period
$C$DW$238	.dwtag  DW_TAG_variable
	.dwattr $C$DW$238, DW_AT_name("Period")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_Period")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$231)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 181 | // Initialize timer period:                                            
;----------------------------------------------------------------------
        MOVL      XAR6,*-SP[6]          ; [CPU_] |179| 
	.dwpsn	file "../Source/ad7738.c",line 182,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | CpuTimer0Regs.PRD.all = (long)(Freq * Period);                         
; 184 | // Set pre-scale counter to divide by 1 (SYSCLKOUT):                   
;----------------------------------------------------------------------
        MOVL      *-SP[2],XAR6          ; [CPU_] |182| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$239, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |182| 
        ; call occurs [#FS$$MPY] ; [] |182| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$240, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |182| 
        ; call occurs [#FS$$TOL] ; [] |182| 
        MOVW      DP,#_CpuTimer0Regs+2  ; [CPU_U] 
        MOVL      @_CpuTimer0Regs+2,ACC ; [CPU_] |182| 
	.dwpsn	file "../Source/ad7738.c",line 185,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | CpuTimer0Regs.TPR.all  = 0;                                            
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+6,#0  ; [CPU_] |185| 
	.dwpsn	file "../Source/ad7738.c",line 186,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | CpuTimer0Regs.TPRH.all  = 0;                                           
; 188 | // Initialize timer control register:                                  
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+7,#0  ; [CPU_] |186| 
	.dwpsn	file "../Source/ad7738.c",line 189,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | CpuTimer0Regs.TCR.bit.TSS = 1;        // 1 = Stop timer, 0 = Start/Rest
;     | art Timer                                                              
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0010 ; [CPU_] |189| 
	.dwpsn	file "../Source/ad7738.c",line 190,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | CpuTimer0Regs.TCR.bit.TRB = 1;        // 1 = reload timer              
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0020 ; [CPU_] |190| 
	.dwpsn	file "../Source/ad7738.c",line 191,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | CpuTimer0Regs.TCR.bit.SOFT = 1;                                        
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0400 ; [CPU_] |191| 
	.dwpsn	file "../Source/ad7738.c",line 192,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | CpuTimer0Regs.TCR.bit.FREE = 1;       // Timer Free Run                
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0800 ; [CPU_] |192| 
	.dwpsn	file "../Source/ad7738.c",line 193,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 193 | CpuTimer0Regs.TCR.bit.TIE = 1;        // 0 = Disable / 1 = Enable Timer
;     |  Interrupt                                                             
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x4000 ; [CPU_] |193| 
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$235, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$235, DW_AT_TI_end_line(0xc3)
	.dwattr $C$DW$235, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$235

	.sect	".text"
	.clink
	.global	_ad7738_init

$C$DW$242	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$242, DW_AT_name("ad7738_init")
	.dwattr $C$DW$242, DW_AT_low_pc(_ad7738_init)
	.dwattr $C$DW$242, DW_AT_high_pc(0x00)
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_ad7738_init")
	.dwattr $C$DW$242, DW_AT_external
	.dwattr $C$DW$242, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$242, DW_AT_TI_begin_line(0xfb)
	.dwattr $C$DW$242, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$242, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/ad7738.c",line 252,column 1,is_stmt,address _ad7738_init,isa 0

	.dwfde $C$DW$CIE, _ad7738_init
;----------------------------------------------------------------------
; 251 | void ad7738_init()                                                     
; 253 | int i;                                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_init                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_ad7738_init:
;* AR1   assigned to $O$C1
;* AR1   assigned to $O$C2
;* AR1   assigned to $O$U69
;* AR0   assigned to $O$U52
;* AR0   assigned to $O$U52
;* AR7   assigned to $O$U57
;* AR7   assigned to $O$U57
;* AR5   assigned to $O$U61
;* AR5   assigned to $O$U61
;* AR4   assigned to $O$U65
;* AR4   assigned to $O$U65
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/ad7738.c",line 255,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | spi_init();                                   // SPI init              
;----------------------------------------------------------------------
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_spi_init")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #_spi_init            ; [CPU_] |255| 
        ; call occurs [#_spi_init] ; [] |255| 
	.dwpsn	file "../Source/ad7738.c",line 256,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 256 | mcbsp_init();                                 // the other SPI         
;----------------------------------------------------------------------
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_mcbsp_init")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #_mcbsp_init          ; [CPU_] |256| 
        ; call occurs [#_mcbsp_init] ; [] |256| 
	.dwpsn	file "../Source/ad7738.c",line 257,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 257 | qep_init();                                                            
; 260 | // reset the ad7738 chips                                              
;----------------------------------------------------------------------
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_qep_init")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #_qep_init            ; [CPU_] |257| 
        ; call occurs [#_qep_init] ; [] |257| 
	.dwpsn	file "../Source/ad7738.c",line 261,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 261 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;         // A0CSn                 
; 262 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;         // A1CSn                 
;----------------------------------------------------------------------
        MOVL      XAR1,#_GpioDataRegs   ; [CPU_U] |261| 
        MOVL      XAR4,XAR1             ; [CPU_] |261| 
        MOVW      DP,#_GpioDataRegs+6   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 263,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 263 | spi_xmit( 0x00 );                             // N "0"s                
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |263| 
	.dwpsn	file "../Source/ad7738.c",line 261,column 3,is_stmt,isa 0
        ADDB      XAR4,#6               ; [CPU_] |261| 
        OR        *+XAR4[0],#0x0020     ; [CPU_] |261| 
	.dwpsn	file "../Source/ad7738.c",line 262,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+6,#0x0010 ; [CPU_] |262| 
	.dwpsn	file "../Source/ad7738.c",line 263,column 3,is_stmt,isa 0
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |263| 
        ; call occurs [#_spi_xmit] ; [] |263| 
	.dwpsn	file "../Source/ad7738.c",line 264,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 264 | spi_xmit( 0xFF );                             // 32 "1"s               
;----------------------------------------------------------------------
        MOVB      AL,#255               ; [CPU_] |264| 
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |264| 
        ; call occurs [#_spi_xmit] ; [] |264| 
	.dwpsn	file "../Source/ad7738.c",line 265,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | spi_xmit( 0xFF );                             // reset the ad7738 chips
;----------------------------------------------------------------------
        MOVB      AL,#255               ; [CPU_] |265| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |265| 
        ; call occurs [#_spi_xmit] ; [] |265| 
	.dwpsn	file "../Source/ad7738.c",line 266,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | spi_xmit( 0xFF );                                                      
;----------------------------------------------------------------------
        MOVB      AL,#255               ; [CPU_] |266| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |266| 
        ; call occurs [#_spi_xmit] ; [] |266| 
	.dwpsn	file "../Source/ad7738.c",line 267,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 267 | spi_xmit( 0xFF );                                                      
;----------------------------------------------------------------------
        MOVB      AL,#255               ; [CPU_] |267| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |267| 
        ; call occurs [#_spi_xmit] ; [] |267| 
	.dwpsn	file "../Source/ad7738.c",line 268,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;           // A0CSn                 
; 269 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;           // A1CSn                 
; 271 | // read and keep the chip rev byte                                     
; 272 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;         // A0CSn                 
;----------------------------------------------------------------------
        OR        *+XAR1[5],#0x0020     ; [CPU_] |268| 
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 273,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 273 | spi_xmit( ADCREG_REV );                       // Revision              
;----------------------------------------------------------------------
        MOVB      AL,#66                ; [CPU_] |273| 
	.dwpsn	file "../Source/ad7738.c",line 269,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+5,#0x0010 ; [CPU_] |269| 
	.dwpsn	file "../Source/ad7738.c",line 272,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+6,#0x0020 ; [CPU_] |272| 
	.dwpsn	file "../Source/ad7738.c",line 273,column 3,is_stmt,isa 0
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |273| 
        ; call occurs [#_spi_xmit] ; [] |273| 
	.dwpsn	file "../Source/ad7738.c",line 274,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | ad7738_rev[0] = spi_recv();                   // keep the revision     
; 275 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;           // A0CSn                 
; 277 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;         // A1CSn                 
;----------------------------------------------------------------------
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_spi_recv")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |274| 
        ; call occurs [#_spi_recv] ; [] |274| 
        MOVL      XAR1,#_ad7738_rev     ; [CPU_U] |274| 
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
        MOV       *+XAR1[0],AL          ; [CPU_] |274| 
	.dwpsn	file "../Source/ad7738.c",line 278,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 278 | spi_xmit( ADCREG_REV );                       // Revision              
;----------------------------------------------------------------------
        MOVB      AL,#66                ; [CPU_] |278| 
	.dwpsn	file "../Source/ad7738.c",line 275,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+5,#0x0020 ; [CPU_] |275| 
	.dwpsn	file "../Source/ad7738.c",line 277,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+6,#0x0010 ; [CPU_] |277| 
	.dwpsn	file "../Source/ad7738.c",line 278,column 3,is_stmt,isa 0
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |278| 
        ; call occurs [#_spi_xmit] ; [] |278| 
	.dwpsn	file "../Source/ad7738.c",line 279,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | ad7738_rev[1] = spi_recv();                   // keep the revision     
;----------------------------------------------------------------------
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_spi_recv")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |279| 
        ; call occurs [#_spi_recv] ; [] |279| 
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
        MOV       *+XAR1[1],AL          ; [CPU_] |279| 
	.dwpsn	file "../Source/ad7738.c",line 280,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;           // A1CSn                 
; 283 | // Interrupts that are used in this example are re-mapped to           
; 284 | // ISR functions found within this file.                               
; 285 | EALLOW;                                                                
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0010 ; [CPU_] |280| 
 EALLOW
        MOVW      DP,#_PieVectTable+76  ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 286,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | PieVectTable.TINT0 = &cpu_timer0_isr;                                  
; 287 | EDIS;                                                                  
;----------------------------------------------------------------------
        MOVL      XAR4,#_cpu_timer0_isr ; [CPU_U] |286| 
        MOVL      @_PieVectTable+76,XAR4 ; [CPU_] |286| 
 EDIS
        SPM       #0                    ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 289,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 289 | InitCpuTimer0();                              // initialize the CpuTime
;     | r0                                                                     
;----------------------------------------------------------------------
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_InitCpuTimer0")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #_InitCpuTimer0       ; [CPU_] |289| 
        ; call occurs [#_InitCpuTimer0] ; [] |289| 
	.dwpsn	file "../Source/ad7738.c",line 290,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 290 | ConfigCpuTimer0( 150, 1000 );                 // Configure CpuTimer0 to
;     |  interrupt 100us                                                       
; 291 | //ConfigCpuTimer0( 150, (500000L/SAMPRATE) ); // Configure CpuTimer0 to
;     |  interrupt twice the rate                                              
; 293 | // config the adc chip                                                 
; 294 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;         // A0CSn                 
; 295 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;         // A1CSn                 
; 298 | // for 4 channels                                                      
; 300 | ad7738_ph = 0;                                // start with channel a  
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |290| 
        MOV       AH,#17530             ; [CPU_] |290| 
        MOVL      *-SP[2],ACC           ; [CPU_] |290| 
        MOV       AL,#0                 ; [CPU_] |290| 
        MOV       AH,#17174             ; [CPU_] |290| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_ConfigCpuTimer0")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #_ConfigCpuTimer0     ; [CPU_] |290| 
        ; call occurs [#_ConfigCpuTimer0] ; [] |290| 
        MOVW      DP,#_GpioDataRegs+6   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 302,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 302 | spi_xmit( ADCREG_IOPORT );                    // I/O Port              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |302| 
	.dwpsn	file "../Source/ad7738.c",line 294,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+6,#0x0020 ; [CPU_] |294| 
	.dwpsn	file "../Source/ad7738.c",line 295,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+6,#0x0010 ; [CPU_] |295| 
        MOVW      DP,#_ad7738_ph        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 300,column 3,is_stmt,isa 0
        MOV       @_ad7738_ph,#0        ; [CPU_] |300| 
	.dwpsn	file "../Source/ad7738.c",line 302,column 3,is_stmt,isa 0
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |302| 
        ; call occurs [#_spi_xmit] ; [] |302| 
	.dwpsn	file "../Source/ad7738.c",line 303,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | spi_xmit( 0x31 );                             // P0/P1 input, RDY for s
;     | ingle channel, SYNC enable.                                            
; 304 | //spi_xmit( 0x39 );                           // P0/P1 input, RDY for a
;     | ll en channel, SYNC enable.                                            
;----------------------------------------------------------------------
        MOVB      AL,#49                ; [CPU_] |303| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |303| 
        ; call occurs [#_spi_xmit] ; [] |303| 
	.dwpsn	file "../Source/ad7738.c",line 306,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 306 | spi_xmit( ADCREG_CHSET );                     // channel setup         
;----------------------------------------------------------------------
        MOVB      AL,#40                ; [CPU_] |306| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |306| 
        ; call occurs [#_spi_xmit] ; [] |306| 
	.dwpsn	file "../Source/ad7738.c",line 307,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 307 | spi_xmit( 0x6c );                             // buff on, differntial,
;     | rdy bit, EN, +/-2.5V                                                   
;----------------------------------------------------------------------
        MOVB      AL,#108               ; [CPU_] |307| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |307| 
        ; call occurs [#_spi_xmit] ; [] |307| 
	.dwpsn	file "../Source/ad7738.c",line 308,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 308 | spi_xmit( ADCREG_CHSET+1 );                   // channel setup         
;----------------------------------------------------------------------
        MOVB      AL,#41                ; [CPU_] |308| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |308| 
        ; call occurs [#_spi_xmit] ; [] |308| 
	.dwpsn	file "../Source/ad7738.c",line 309,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | spi_xmit( 0x6c );                             // buff on, differntial,
;     | rdy bit, EN, +/-2.5V                                                   
; 311 | // CHOP = 1: (FW x 128 + 248)/MCLK (6MHz)                              
; 312 | // CHOP = 0: (FW x 64 + 206)/MCLK (6MHz)                               
; 313 | // 5ksps: 200us:                                                       
; 314 | // FW=2(CHOP=1)/5(CHOP=0)                                              
;----------------------------------------------------------------------
        MOVB      AL,#108               ; [CPU_] |309| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |309| 
        ; call occurs [#_spi_xmit] ; [] |309| 
	.dwpsn	file "../Source/ad7738.c",line 315,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 315 | spi_xmit( ADCREG_CHCTM );                     // channel conversion tim
;     | e                                                                      
; 316 | //spi_xmit( 0x82 );                           // CHOP=1, FW=2, 169.33us
;     |  conversion time for two                                               
;----------------------------------------------------------------------
        MOVB      AL,#48                ; [CPU_] |315| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$263, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |315| 
        ; call occurs [#_spi_xmit] ; [] |315| 
	.dwpsn	file "../Source/ad7738.c",line 317,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 317 | spi_xmit( 0x03 );                             // CHOP=0, FW=3, 66us con
;     | version time for one                                                   
; 318 | //spi_xmit( 0x04 );                           // CHOP=0, FW=4, 77us con
;     | version time for one                                                   
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |317| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$264, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |317| 
        ; call occurs [#_spi_xmit] ; [] |317| 
	.dwpsn	file "../Source/ad7738.c",line 319,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 319 | spi_xmit( ADCREG_CHCTM+1 );                   // channel conversion tim
;     | e                                                                      
; 320 | //spi_xmit( 0x82 );                           // CHOP=1, FW=2, 169.33us
;     |  conversion time for two                                               
;----------------------------------------------------------------------
        MOVB      AL,#49                ; [CPU_] |319| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |319| 
        ; call occurs [#_spi_xmit] ; [] |319| 
	.dwpsn	file "../Source/ad7738.c",line 321,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 321 | spi_xmit( 0x03 );                             // CHOP=0, FW=3, 66us con
;     | version time for one                                                   
; 322 | //spi_xmit( 0x04 );                           // CHOP=0, FW=4, 77us con
;     | version time for one                                                   
; 324 | GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;         // A_SYNC low            
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |321| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$266, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |321| 
        ; call occurs [#_spi_xmit] ; [] |321| 
        MOVW      DP,#_GpioDataRegs+6   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 326,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 326 | spi_xmit( ADCREG_MODE );                      // mode                  
;----------------------------------------------------------------------
        MOVB      AL,#56                ; [CPU_] |326| 
	.dwpsn	file "../Source/ad7738.c",line 324,column 3,is_stmt,isa 0
        OR        @_GpioDataRegs+6,#0x0080 ; [CPU_] |324| 
	.dwpsn	file "../Source/ad7738.c",line 326,column 3,is_stmt,isa 0
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |326| 
        ; call occurs [#_spi_xmit] ; [] |326| 
	.dwpsn	file "../Source/ad7738.c",line 327,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 327 | spi_xmit( 0x5a );                             // single conversion mode
;     | , dump mode, 24bit, no clamp                                           
; 328 | //spi_xmit( ADCREG_MODE+1 );                  // mode                  
; 329 | //spi_xmit( 0x1a );                           // IDLE mode, dump mode,
;     | 24bit, no clamp                                                        
; 331 | //spi_xmit( 0x1b );                           // IDLE mode, dump mode,
;     | 24bit, clamp                                                           
; 333 | // 0x1a set idle mode                         // cont rd               
; 334 | // 0x3a for start cont conversion                                      
; 335 | // 0x9a for ZS self calibration                                        
; 336 | // 0x52 for single conversion, non-dump                                
; 337 | // 0x5a for single, dump                                               
; 338 | // MD2, MD1, MD0, CLKDIS, DUMP, CONT RD, 24/16, CLAMP                  
;----------------------------------------------------------------------
        MOVB      AL,#90                ; [CPU_] |327| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |327| 
        ; call occurs [#_spi_xmit] ; [] |327| 
        MOVW      DP,#_GpioDataRegs+5   ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 340,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 340 | GpioDataRegs.GPBSET.bit.GPIOB7 = 1;           // A_SYNC high           
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0080 ; [CPU_] |340| 
	.dwpsn	file "../Source/ad7738.c",line 344,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 344 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;           // A0CSn                 
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0020 ; [CPU_] |344| 
	.dwpsn	file "../Source/ad7738.c",line 345,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 345 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;           // A1CSn                 
;----------------------------------------------------------------------
        OR        @_GpioDataRegs+5,#0x0010 ; [CPU_] |345| 
	.dwpsn	file "../Source/ad7738.c",line 348,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 348 | maf_rst();                                    // reset the moving avera
;     | ge filter                                                              
;----------------------------------------------------------------------
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_maf_rst")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #_maf_rst             ; [CPU_] |348| 
        ; call occurs [#_maf_rst] ; [] |348| 
	.dwpsn	file "../Source/ad7738.c",line 349,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 349 | prod_init();                                                           
;----------------------------------------------------------------------
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_prod_init")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #_prod_init           ; [CPU_] |349| 
        ; call occurs [#_prod_init] ; [] |349| 
	.dwpsn	file "../Source/ad7738.c",line 350,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 350 | velf_rst();                                                            
;----------------------------------------------------------------------
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_name("_velf_rst")
	.dwattr $C$DW$271, DW_AT_TI_call

        LCR       #_velf_rst            ; [CPU_] |350| 
        ; call occurs [#_velf_rst] ; [] |350| 
        MOVL      XAR1,#_ad7738_err     ; [CPU_U] 
        MOVB      XAR6,#3               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 352,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 352 | mon_cnt = 0;                                  // sample counts for moni
;     | tor data                                                               
;----------------------------------------------------------------------
        MOV       @_mon_cnt,#0          ; [CPU_] |352| 
	.dwpsn	file "../Source/ad7738.c",line 353,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 353 | tempcnt = 0;                                  // sample count for tempe
;     | arture reading                                                         
;----------------------------------------------------------------------
        MOV       @_tempcnt,#0          ; [CPU_] |353| 
	.dwpsn	file "../Source/ad7738.c",line 354,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 354 | tempstart = 0;                                // flag to start temperat
;     | ure conversion                                                         
;----------------------------------------------------------------------
        MOV       @_tempstart,#0        ; [CPU_] |354| 
	.dwpsn	file "../Source/ad7738.c",line 355,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 355 | tempread = 0;                                 // flag to read temperatu
;     | re                                                                     
;----------------------------------------------------------------------
        MOV       @_tempread,#0         ; [CPU_] |355| 
	.dwpsn	file "../Source/ad7738.c",line 357,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 357 | tagscnt = 0;                                                           
;----------------------------------------------------------------------
        MOV       @_tagscnt,#0          ; [CPU_] |357| 
	.dwpsn	file "../Source/ad7738.c",line 358,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 358 | tagsdetect = 0;                                                        
;----------------------------------------------------------------------
        MOV       @_tagsdetect,#0       ; [CPU_] |358| 
	.dwpsn	file "../Source/ad7738.c",line 360,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 360 | rawrdy = 0;                                                            
;----------------------------------------------------------------------
        MOV       @_rawrdy,#0           ; [CPU_] |360| 
	.dwpsn	file "../Source/ad7738.c",line 361,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 361 | monrdy = 0;                                                            
;----------------------------------------------------------------------
        MOV       @_monrdy,#0           ; [CPU_] |361| 
	.dwpsn	file "../Source/ad7738.c",line 363,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 363 | tare_reset = 0;                               // tare flag             
;----------------------------------------------------------------------
        MOV       @_tare_reset,#0       ; [CPU_] |363| 
	.dwpsn	file "../Source/ad7738.c",line 364,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 364 | peak_reset = BM_ALL;                                                   
;----------------------------------------------------------------------
        MOVB      @_peak_reset,#255,UNC ; [CPU_] |364| 
	.dwpsn	file "../Source/ad7738.c",line 365,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 365 | vall_reset = BM_ALL;                                                   
; 367 | for( i = 0; i < CHS_MAX; i++ )                                         
;----------------------------------------------------------------------
        MOVB      @_vall_reset,#255,UNC ; [CPU_] |365| 
        MOVL      XAR4,#_ad7738_vall    ; [CPU_U] 
        MOVL      XAR5,#_ad7738_peak    ; [CPU_U] 
        MOVL      XAR7,#_ad7738_tare    ; [CPU_U] 
        MOVL      XAR0,#_hfactor        ; [CPU_U] 
$C$L96:    
	.dwpsn	file "../Source/ad7738.c",line 370,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 370 | hfactor.adw[i] = 1;                         // reset heat factors      
;----------------------------------------------------------------------
        MOV       ACC,#32512 << 15      ; [CPU_] |370| 
        MOVL      *XAR0++,ACC           ; [CPU_] |370| 
	.dwpsn	file "../Source/ad7738.c",line 371,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 371 | ad7738_tare.adw[i] = 0;                     // reset the tare value    
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |371| 
        MOV       AH,#0                 ; [CPU_] |371| 
        MOVL      *XAR7++,ACC           ; [CPU_] |371| 
	.dwpsn	file "../Source/ad7738.c",line 372,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 372 | ad7738_peak.adw[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *XAR5++,ACC           ; [CPU_] |372| 
	.dwpsn	file "../Source/ad7738.c",line 373,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 373 | ad7738_vall.adw[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *XAR4++,ACC           ; [CPU_] |373| 
	.dwpsn	file "../Source/ad7738.c",line 375,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 375 | ad7738_err[i] = 0;                                                     
; 378 | for( i = 0; i < ENC_MAX; i++ )                                         
;----------------------------------------------------------------------
        MOV       *XAR1++,#0            ; [CPU_] |375| 
	.dwpsn	file "../Source/ad7738.c",line 367,column 15,is_stmt,isa 0
        BANZ      $C$L96,AR6--          ; [CPU_] |367| 
        ; branchcc occurs ; [] |367| 
        MOVL      XAR0,#_hfactor+8      ; [CPU_U] 
        MOVL      XAR7,#_ad7738_tare+8  ; [CPU_U] 
        MOVL      XAR5,#_ad7738_peak+8  ; [CPU_U] 
        MOVL      XAR4,#_ad7738_vall+8  ; [CPU_U] 
        MOVB      XAR6,#1               ; [CPU_] 
$C$L97:    
	.dwpsn	file "../Source/ad7738.c",line 381,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 381 | hfactor.pos[i] = 1;                         // reset heat factors      
;----------------------------------------------------------------------
        MOV       ACC,#32512 << 15      ; [CPU_] |381| 
        MOVL      *+XAR0[0],ACC         ; [CPU_] |381| 
	.dwpsn	file "../Source/ad7738.c",line 382,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 382 | ad7738_tare.pos[i] = 0;                     // reset the tare value    
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |382| 
        MOV       AH,#0                 ; [CPU_] |382| 
        MOVL      *+XAR7[0],ACC         ; [CPU_] |382| 
	.dwpsn	file "../Source/ad7738.c",line 383,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 383 | ad7738_peak.pos[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR5[0],ACC         ; [CPU_] |383| 
	.dwpsn	file "../Source/ad7738.c",line 384,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 384 | ad7738_vall.pos[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR4[0],ACC         ; [CPU_] |384| 
	.dwpsn	file "../Source/ad7738.c",line 386,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 386 | hfactor.vel[i] = 1;                         // reset heat factors      
;----------------------------------------------------------------------
        MOV       ACC,#32512 << 15      ; [CPU_] |386| 
        MOVL      *+XAR0[4],ACC         ; [CPU_] |386| 
	.dwpsn	file "../Source/ad7738.c",line 387,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 387 | ad7738_tare.vel[i] = 0;                     // reset the tare value    
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |387| 
        MOV       AH,#0                 ; [CPU_] |387| 
	.dwpsn	file "../Source/ad7738.c",line 378,column 15,is_stmt,isa 0
        ADDB      XAR0,#2               ; [CPU_] |378| 
	.dwpsn	file "../Source/ad7738.c",line 387,column 5,is_stmt,isa 0
        MOVL      *+XAR7[4],ACC         ; [CPU_] |387| 
	.dwpsn	file "../Source/ad7738.c",line 378,column 15,is_stmt,isa 0
        ADDB      XAR7,#2               ; [CPU_] |378| 
	.dwpsn	file "../Source/ad7738.c",line 388,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 388 | ad7738_peak.vel[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR5[4],ACC         ; [CPU_] |388| 
	.dwpsn	file "../Source/ad7738.c",line 378,column 15,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_] |378| 
	.dwpsn	file "../Source/ad7738.c",line 389,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 389 | ad7738_vall.vel[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR4[4],ACC         ; [CPU_] |389| 
	.dwpsn	file "../Source/ad7738.c",line 378,column 15,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_] |378| 
        BANZ      $C$L97,AR6--          ; [CPU_] |378| 
        ; branchcc occurs ; [] |378| 
	.dwpsn	file "../Source/ad7738.c",line 393,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 393 | mcbsp_xmit( 0x7fff, 4 );                      // set all DAC out to 0v 
;----------------------------------------------------------------------
        MOV       AL,#32767             ; [CPU_] |393| 
        MOVB      AH,#4                 ; [CPU_] |393| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_name("_mcbsp_xmit")
	.dwattr $C$DW$272, DW_AT_TI_call

        LCR       #_mcbsp_xmit          ; [CPU_] |393| 
        ; call occurs [#_mcbsp_xmit] ; [] |393| 
        MOVW      DP,#_dacsetvolt       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 394,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 394 | dacsetvolt = 0;                               // follow load           
;----------------------------------------------------------------------
        MOV       @_dacsetvolt,#0       ; [CPU_] |394| 
	.dwpsn	file "../Source/ad7738.c",line 396,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 396 | IER |= M_INT1;                                // Enable CPU INT1 which
;     | is connected to CpuTimer0                                              
;----------------------------------------------------------------------
        OR        IER,#0x0001           ; [CPU_] |396| 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 398,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 398 | PieCtrlRegs.PIEIER1.bit.INTx7 = 1;            // Enable TINT0 in the PI
;     | E: Group 1 interrupt 7                                                 
;----------------------------------------------------------------------
        OR        @_PieCtrlRegs+2,#0x0040 ; [CPU_] |398| 
        MOVW      DP,#_CpuTimer0Regs+4  ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 400,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 400 | StartCpuTimer0();                                                      
;----------------------------------------------------------------------
        AND       @_CpuTimer0Regs+4,#0xffef ; [CPU_] |400| 
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$242, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$242, DW_AT_TI_end_line(0x191)
	.dwattr $C$DW$242, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$242

	.sect	".text"
	.clink
	.global	_ad7738_getvall

$C$DW$274	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$274, DW_AT_name("ad7738_getvall")
	.dwattr $C$DW$274, DW_AT_low_pc(_ad7738_getvall)
	.dwattr $C$DW$274, DW_AT_high_pc(0x00)
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_ad7738_getvall")
	.dwattr $C$DW$274, DW_AT_external
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$274, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$274, DW_AT_TI_begin_line(0x1cd)
	.dwattr $C$DW$274, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$274, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 462,column 1,is_stmt,address _ad7738_getvall,isa 0

	.dwfde $C$DW$CIE, _ad7738_getvall
;----------------------------------------------------------------------
; 461 | adcwt_t* ad7738_getvall()                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getvall               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getvall:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 463,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 463 | return &ad7738_vall;                                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_vall    ; [CPU_U] |463| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$274, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$274, DW_AT_TI_end_line(0x1d0)
	.dwattr $C$DW$274, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$274

	.sect	".text"
	.clink
	.global	_ad7738_getraw

$C$DW$276	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$276, DW_AT_name("ad7738_getraw")
	.dwattr $C$DW$276, DW_AT_low_pc(_ad7738_getraw)
	.dwattr $C$DW$276, DW_AT_high_pc(0x00)
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_ad7738_getraw")
	.dwattr $C$DW$276, DW_AT_external
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$276, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$276, DW_AT_TI_begin_line(0x1a8)
	.dwattr $C$DW$276, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$276, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 425,column 1,is_stmt,address _ad7738_getraw,isa 0

	.dwfde $C$DW$CIE, _ad7738_getraw
;----------------------------------------------------------------------
; 424 | adccnt_t* ad7738_getraw()                                              
; 426 | rawrdy = 0;                                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getraw                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getraw:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_rawrdy           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 427,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 427 | return &ad7738_raw;                                                    
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_raw     ; [CPU_U] |427| 
	.dwpsn	file "../Source/ad7738.c",line 426,column 3,is_stmt,isa 0
        MOV       @_rawrdy,#0           ; [CPU_] |426| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$276, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$276, DW_AT_TI_end_line(0x1ac)
	.dwattr $C$DW$276, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$276

	.sect	".text"
	.clink
	.global	_ad7738_getpeak

$C$DW$278	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$278, DW_AT_name("ad7738_getpeak")
	.dwattr $C$DW$278, DW_AT_low_pc(_ad7738_getpeak)
	.dwattr $C$DW$278, DW_AT_high_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_ad7738_getpeak")
	.dwattr $C$DW$278, DW_AT_external
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$278, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$278, DW_AT_TI_begin_line(0x1c7)
	.dwattr $C$DW$278, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$278, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 456,column 1,is_stmt,address _ad7738_getpeak,isa 0

	.dwfde $C$DW$CIE, _ad7738_getpeak
;----------------------------------------------------------------------
; 455 | adcwt_t* ad7738_getpeak()                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getpeak               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getpeak:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 457,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 457 | return &ad7738_peak;                                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_peak    ; [CPU_U] |457| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$278, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$278, DW_AT_TI_end_line(0x1ca)
	.dwattr $C$DW$278, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$278

	.sect	".text"
	.clink
	.global	_ad7738_getmon

$C$DW$280	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$280, DW_AT_name("ad7738_getmon")
	.dwattr $C$DW$280, DW_AT_low_pc(_ad7738_getmon)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_ad7738_getmon")
	.dwattr $C$DW$280, DW_AT_external
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$280, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$280, DW_AT_TI_begin_line(0x1bf)
	.dwattr $C$DW$280, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 448,column 1,is_stmt,address _ad7738_getmon,isa 0

	.dwfde $C$DW$CIE, _ad7738_getmon
;----------------------------------------------------------------------
; 447 | adcwt_t* ad7738_getmon()                                               
; 449 | // monrdy = 0;                                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getmon                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getmon:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 450,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 450 | return &ad7738_mon;                                                    
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_mon     ; [CPU_U] |450| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0x1c3)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$280

	.sect	".text"
	.clink
	.global	_ad7738_getlimitst

$C$DW$282	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$282, DW_AT_name("ad7738_getlimitst")
	.dwattr $C$DW$282, DW_AT_low_pc(_ad7738_getlimitst)
	.dwattr $C$DW$282, DW_AT_high_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_ad7738_getlimitst")
	.dwattr $C$DW$282, DW_AT_external
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$282, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$282, DW_AT_TI_begin_line(0x1d3)
	.dwattr $C$DW$282, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$282, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 468,column 1,is_stmt,address _ad7738_getlimitst,isa 0

	.dwfde $C$DW$CIE, _ad7738_getlimitst
$C$DW$283	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$283, DW_AT_name("ch")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$283, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 467 | Uint16 ad7738_getlimitst( int ch )                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getlimitst            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getlimitst:
;* AR6   assigned to _ch
$C$DW$284	.dwtag  DW_TAG_variable
	.dwattr $C$DW$284, DW_AT_name("ch")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$284, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 469,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 469 | if( ch < 0 || ch >= LIM_MAX )                                          
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; [CPU_] |469| 
	.dwpsn	file "../Source/ad7738.c",line 468,column 1,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_] |468| 
	.dwpsn	file "../Source/ad7738.c",line 469,column 3,is_stmt,isa 0
        B         $C$L98,LT             ; [CPU_] |469| 
        ; branchcc occurs ; [] |469| 
        CMPB      AL,#4                 ; [CPU_] |469| 
        B         $C$L99,LT             ; [CPU_] |469| 
        ; branchcc occurs ; [] |469| 
$C$L98:    
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 471,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 471 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |471| 
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L99:    
	.dwpsn	file "../Source/ad7738.c",line 473,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 473 | limitchgd[ch] = 0;                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#_limitchgd      ; [CPU_U] |473| 
        SETC      SXM                   ; [CPU_] 
        MOVL      ACC,XAR4              ; [CPU_] |473| 
        ADD       ACC,AR6               ; [CPU_] |473| 
        MOVL      XAR4,ACC              ; [CPU_] |473| 
        MOV       *+XAR4[0],#0          ; [CPU_] |473| 
	.dwpsn	file "../Source/ad7738.c",line 474,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 474 | return limit[ch];                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#_limit          ; [CPU_U] |474| 
        MOVL      ACC,XAR4              ; [CPU_] |474| 
        ADD       ACC,AR6               ; [CPU_] |474| 
        MOVL      XAR4,ACC              ; [CPU_] |474| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |474| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$282, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$282, DW_AT_TI_end_line(0x1db)
	.dwattr $C$DW$282, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$282

	.sect	".text"
	.clink
	.global	_ad7738_getlimitchgd

$C$DW$287	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$287, DW_AT_name("ad7738_getlimitchgd")
	.dwattr $C$DW$287, DW_AT_low_pc(_ad7738_getlimitchgd)
	.dwattr $C$DW$287, DW_AT_high_pc(0x00)
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_ad7738_getlimitchgd")
	.dwattr $C$DW$287, DW_AT_external
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$287, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$287, DW_AT_TI_begin_line(0x1df)
	.dwattr $C$DW$287, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$287, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 480,column 1,is_stmt,address _ad7738_getlimitchgd,isa 0

	.dwfde $C$DW$CIE, _ad7738_getlimitchgd
;----------------------------------------------------------------------
; 479 | int ad7738_getlimitchgd()                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getlimitchgd          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getlimitchgd:
;* AR4   assigned to $O$C14
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 481,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 481 | return limitchgd[0] || limitchgd[1] || limitchgd[2] || limitchgd[3];   
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |481| 
        MOVL      XAR4,#_limitchgd      ; [CPU_U] |481| 
        MOV       AH,*+XAR4[0]          ; [CPU_] |481| 
        B         $C$L100,NEQ           ; [CPU_] |481| 
        ; branchcc occurs ; [] |481| 
        MOV       AH,*+XAR4[1]          ; [CPU_] |481| 
        B         $C$L100,NEQ           ; [CPU_] |481| 
        ; branchcc occurs ; [] |481| 
        MOV       AH,*+XAR4[2]          ; [CPU_] |481| 
        B         $C$L100,NEQ           ; [CPU_] |481| 
        ; branchcc occurs ; [] |481| 
        MOV       AH,*+XAR4[3]          ; [CPU_] |481| 
        MOVB      AL,#0,EQ              ; [CPU_] |481| 
$C$L100:    
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$287, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$287, DW_AT_TI_end_line(0x1e2)
	.dwattr $C$DW$287, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$287

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_setSystemOutCurrentF
	.global	_BITMAP
	.global	_mcbsp_xmit
	.global	_mcbsp_init
	.global	_lcd_next
	.global	_ssr_set
	.global	_prod_add
	.global	_prod_init
	.global	_spi_xmit
	.global	_spi_init
	.global	_wakeUpMCs
	.global	_qep_init
	.global	_processJSRGlobal
	.global	_sendModStatus
	.global	_CAN_Tx_SendInformationRequest
	.global	_setSystemCapVoltageF
	.global	_spi_recv
	.global	_bms_cmd
	.global	_getSystemCapVoltageF
	.global	_CpuTimer0Regs
	.global	_PieCtrlRegs
	.global	_GpioDataRegs
	.global	_PieVectTable
	.global	_conf_data
	.global	FS$$CMP
	.global	LL$$DIV
	.global	L$$TOFS
	.global	FS$$MPY
	.global	FS$$TOL
	.global	FS$$ADD
	.global	FS$$SUB
	.global	FS$$DIV
	.global	U$$TOFS

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("ADC_COUNT")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x08)
$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("adc")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_adc")
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20

$C$DW$T$127	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$127, DW_AT_name("adccnt_t")
	.dwattr $C$DW$T$127, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$127, DW_AT_language(DW_LANG_C)

$C$DW$T$128	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$128, DW_AT_type(*$C$DW$T$127)
	.dwattr $C$DW$T$128, DW_AT_address_class(0x20)


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("ADC_WEIGHT")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x10)
$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$290, DW_AT_name("adw")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_adw")
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$291, DW_AT_name("pos")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$292, DW_AT_name("vel")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_vel")
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23

$C$DW$T$133	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$133, DW_AT_name("adcwt_t")
	.dwattr $C$DW$T$133, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$133, DW_AT_language(DW_LANG_C)

$C$DW$T$134	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$134, DW_AT_address_class(0x20)


$C$DW$T$136	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$136, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$T$136, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$136, DW_AT_byte_size(0xb0)
$C$DW$293	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$293, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$136


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("BMS_CMD_BIT")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$294, DW_AT_name("MODE")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_MODE")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$294, DW_AT_bit_size(0x03)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$295, DW_AT_name("RESET")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_RESET")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$296, DW_AT_name("RESERVED")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_RESERVED")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$296, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$297, DW_AT_name("MSGCOUNTRX")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_MSGCOUNTRX")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$297, DW_AT_bit_size(0x10)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("BMS_CMD_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$298, DW_AT_name("all")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$299, DW_AT_name("bit")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("CHANNEL_CONF")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x0a)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$300, DW_AT_name("ci")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_ci")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$301, DW_AT_name("bslope")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_bslope")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$302, DW_AT_name("tcx")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_tcx")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$303, DW_AT_name("tcy")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_tcy")
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$304, DW_AT_name("tcz")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_tcz")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26

$C$DW$T$100	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$100, DW_AT_name("cconf_t")
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$100, DW_AT_language(DW_LANG_C)


$C$DW$T$101	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$T$101, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x28)
$C$DW$305	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$305, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$101


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("CPUTIMER_REGS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x08)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$306, DW_AT_name("TIM")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_TIM")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$307, DW_AT_name("PRD")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$308, DW_AT_name("TCR")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$309, DW_AT_name("rsvd1")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$310, DW_AT_name("TPR")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_TPR")
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$311, DW_AT_name("TPRH")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_TPRH")
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28

$C$DW$312	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$28)

$C$DW$T$140	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$140, DW_AT_type(*$C$DW$312)


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("DAC_CONF")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x0c)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$313, DW_AT_name("what")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_what")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$314, DW_AT_name("ch")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$315, DW_AT_name("dslopep")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_dslopep")
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$316, DW_AT_name("dslopen")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_dslopen")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$317, DW_AT_name("dint")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_dint")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$318, DW_AT_name("gain")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_gain")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$319, DW_AT_name("offset")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_offset")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29

$C$DW$T$106	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$106, DW_AT_name("dacconf_t")
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$T$106, DW_AT_language(DW_LANG_C)


$C$DW$T$107	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x30)
$C$DW$320	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$320, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$107


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("DISPLAY_CONF")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x03)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$321, DW_AT_name("what")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_what")
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$322, DW_AT_name("ch")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$323, DW_AT_name("adec")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_adec")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30

$C$DW$T$104	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$104, DW_AT_name("dconf_t")
	.dwattr $C$DW$T$104, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$T$104, DW_AT_language(DW_LANG_C)


$C$DW$T$105	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$105, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x0c)
$C$DW$324	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$324, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$105


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$325, DW_AT_name("GPIOA0")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$326, DW_AT_name("GPIOA1")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$327, DW_AT_name("GPIOA2")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$328, DW_AT_name("GPIOA3")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$329, DW_AT_name("GPIOA4")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$330, DW_AT_name("GPIOA5")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$331, DW_AT_name("GPIOA6")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$332, DW_AT_name("GPIOA7")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$333, DW_AT_name("GPIOA8")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$334, DW_AT_name("GPIOA9")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$335, DW_AT_name("GPIOA10")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$336, DW_AT_name("GPIOA11")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$337, DW_AT_name("GPIOA12")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$338, DW_AT_name("GPIOA13")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$339, DW_AT_name("GPIOA14")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$340, DW_AT_name("GPIOA15")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$341, DW_AT_name("all")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$342, DW_AT_name("bit")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$343, DW_AT_name("GPIOA0")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$344, DW_AT_name("GPIOA1")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$345, DW_AT_name("GPIOA2")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$346, DW_AT_name("GPIOA3")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$347, DW_AT_name("GPIOA4")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$348, DW_AT_name("GPIOA5")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$349, DW_AT_name("GPIOA6")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$350, DW_AT_name("GPIOA7")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$351, DW_AT_name("GPIOA8")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$352, DW_AT_name("GPIOA9")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$353, DW_AT_name("GPIOA10")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$354, DW_AT_name("GPIOA11")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$355, DW_AT_name("GPIOA12")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$356, DW_AT_name("GPIOA13")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$357, DW_AT_name("GPIOA14")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$358, DW_AT_name("GPIOA15")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$359, DW_AT_name("all")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$360, DW_AT_name("bit")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$361, DW_AT_name("GPIOA0")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$362, DW_AT_name("GPIOA1")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$363, DW_AT_name("GPIOA2")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$364, DW_AT_name("GPIOA3")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$365, DW_AT_name("GPIOA4")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$366, DW_AT_name("GPIOA5")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$367, DW_AT_name("GPIOA6")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$368, DW_AT_name("GPIOA7")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$369, DW_AT_name("GPIOA8")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$370, DW_AT_name("GPIOA9")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$371, DW_AT_name("GPIOA10")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$372, DW_AT_name("GPIOA11")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$373, DW_AT_name("GPIOA12")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$374, DW_AT_name("GPIOA13")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$375, DW_AT_name("GPIOA14")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$376, DW_AT_name("GPIOA15")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$377, DW_AT_name("all")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$378, DW_AT_name("bit")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$379, DW_AT_name("GPIOA0")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$380, DW_AT_name("GPIOA1")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$381, DW_AT_name("GPIOA2")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$382, DW_AT_name("GPIOA3")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$383, DW_AT_name("GPIOA4")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$384, DW_AT_name("GPIOA5")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$385, DW_AT_name("GPIOA6")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$386, DW_AT_name("GPIOA7")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$387, DW_AT_name("GPIOA8")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$388, DW_AT_name("GPIOA9")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$389, DW_AT_name("GPIOA10")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$390, DW_AT_name("GPIOA11")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$391, DW_AT_name("GPIOA12")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$392, DW_AT_name("GPIOA13")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$393, DW_AT_name("GPIOA14")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$394, DW_AT_name("GPIOA15")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$395, DW_AT_name("all")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$396, DW_AT_name("bit")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$397, DW_AT_name("GPIOB0")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$398, DW_AT_name("GPIOB1")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$399, DW_AT_name("GPIOB2")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$400, DW_AT_name("GPIOB3")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$401, DW_AT_name("GPIOB4")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$402, DW_AT_name("GPIOB5")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$403, DW_AT_name("GPIOB6")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$404, DW_AT_name("GPIOB7")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$405, DW_AT_name("GPIOB8")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$406, DW_AT_name("GPIOB9")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$407, DW_AT_name("GPIOB10")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$408, DW_AT_name("GPIOB11")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$409, DW_AT_name("GPIOB12")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$410, DW_AT_name("GPIOB13")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$411, DW_AT_name("GPIOB14")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$412, DW_AT_name("GPIOB15")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$40, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$413, DW_AT_name("all")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$414, DW_AT_name("bit")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$41, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$415, DW_AT_name("GPIOB0")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$416, DW_AT_name("GPIOB1")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$417, DW_AT_name("GPIOB2")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$418, DW_AT_name("GPIOB3")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$419, DW_AT_name("GPIOB4")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$420, DW_AT_name("GPIOB5")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$421, DW_AT_name("GPIOB6")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$422, DW_AT_name("GPIOB7")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$423, DW_AT_name("GPIOB8")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$424, DW_AT_name("GPIOB9")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$425, DW_AT_name("GPIOB10")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$426, DW_AT_name("GPIOB11")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$427, DW_AT_name("GPIOB12")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$428, DW_AT_name("GPIOB13")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$429, DW_AT_name("GPIOB14")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$430, DW_AT_name("GPIOB15")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$42, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$431, DW_AT_name("all")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$432, DW_AT_name("bit")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$433, DW_AT_name("GPIOB0")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$434, DW_AT_name("GPIOB1")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$435, DW_AT_name("GPIOB2")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$436, DW_AT_name("GPIOB3")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$437, DW_AT_name("GPIOB4")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$438, DW_AT_name("GPIOB5")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$439, DW_AT_name("GPIOB6")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$440, DW_AT_name("GPIOB7")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$441, DW_AT_name("GPIOB8")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$442, DW_AT_name("GPIOB9")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$443, DW_AT_name("GPIOB10")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$444, DW_AT_name("GPIOB11")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$445, DW_AT_name("GPIOB12")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$446, DW_AT_name("GPIOB13")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$447, DW_AT_name("GPIOB14")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$448, DW_AT_name("GPIOB15")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$449, DW_AT_name("all")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$450, DW_AT_name("bit")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$451, DW_AT_name("GPIOB0")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$452, DW_AT_name("GPIOB1")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$453, DW_AT_name("GPIOB2")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$454, DW_AT_name("GPIOB3")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$455, DW_AT_name("GPIOB4")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$456, DW_AT_name("GPIOB5")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$457, DW_AT_name("GPIOB6")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$458, DW_AT_name("GPIOB7")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$459, DW_AT_name("GPIOB8")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$460, DW_AT_name("GPIOB9")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$461, DW_AT_name("GPIOB10")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$462, DW_AT_name("GPIOB11")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$463, DW_AT_name("GPIOB12")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$464, DW_AT_name("GPIOB13")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$465, DW_AT_name("GPIOB14")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$466, DW_AT_name("GPIOB15")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$467, DW_AT_name("all")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$468, DW_AT_name("bit")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$469, DW_AT_name("GPIOD0")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$470, DW_AT_name("GPIOD1")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$471, DW_AT_name("rsvd1")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$471, DW_AT_bit_size(0x03)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$472, DW_AT_name("GPIOD5")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$473, DW_AT_name("GPIOD6")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$474, DW_AT_name("rsvd2")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$474, DW_AT_bit_size(0x09)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$475, DW_AT_name("all")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$476, DW_AT_name("bit")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$477, DW_AT_name("GPIOD0")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$478, DW_AT_name("GPIOD1")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$479, DW_AT_name("rsvd1")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$479, DW_AT_bit_size(0x03)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$480, DW_AT_name("GPIOD5")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$481, DW_AT_name("GPIOD6")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$482, DW_AT_name("rsvd2")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$482, DW_AT_bit_size(0x09)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$483, DW_AT_name("all")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$484, DW_AT_name("bit")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$485, DW_AT_name("GPIOD0")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$486, DW_AT_name("GPIOD1")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$487, DW_AT_name("rsvd1")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$487, DW_AT_bit_size(0x03)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$488, DW_AT_name("GPIOD5")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$489, DW_AT_name("GPIOD6")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$490, DW_AT_name("rsvd2")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$490, DW_AT_bit_size(0x09)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$491, DW_AT_name("all")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$492, DW_AT_name("bit")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$493, DW_AT_name("GPIOD0")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$494, DW_AT_name("GPIOD1")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$495, DW_AT_name("rsvd1")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$495, DW_AT_bit_size(0x03)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$496, DW_AT_name("GPIOD5")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$497, DW_AT_name("GPIOD6")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$498, DW_AT_name("rsvd2")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$498, DW_AT_bit_size(0x09)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$499, DW_AT_name("all")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$500, DW_AT_name("bit")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$501, DW_AT_name("GPIOE0")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$502, DW_AT_name("GPIOE1")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$503, DW_AT_name("GPIOE2")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$504, DW_AT_name("rsvd1")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$504, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$505, DW_AT_name("all")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$506, DW_AT_name("bit")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$507, DW_AT_name("GPIOE0")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$508, DW_AT_name("GPIOE1")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$509, DW_AT_name("GPIOE2")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$510, DW_AT_name("rsvd1")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$510, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$511, DW_AT_name("all")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$512, DW_AT_name("bit")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$513, DW_AT_name("GPIOE0")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$514, DW_AT_name("GPIOE1")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$515, DW_AT_name("GPIOE2")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$516, DW_AT_name("rsvd1")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$516, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$517, DW_AT_name("all")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$518, DW_AT_name("bit")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$519, DW_AT_name("GPIOE0")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$520, DW_AT_name("GPIOE1")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$521, DW_AT_name("GPIOE2")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$522, DW_AT_name("rsvd1")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$522, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$523, DW_AT_name("all")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$524, DW_AT_name("bit")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$525, DW_AT_name("GPIOF0")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$526, DW_AT_name("GPIOF1")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$527, DW_AT_name("GPIOF2")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$528, DW_AT_name("GPIOF3")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$529, DW_AT_name("GPIOF4")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$530, DW_AT_name("GPIOF5")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$531, DW_AT_name("GPIOF6")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$532, DW_AT_name("GPIOF7")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$533, DW_AT_name("GPIOF8")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$534, DW_AT_name("GPIOF9")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$535, DW_AT_name("GPIOF10")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$536, DW_AT_name("GPIOF11")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$537, DW_AT_name("GPIOF12")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$538, DW_AT_name("GPIOF13")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$539, DW_AT_name("GPIOF14")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$540, DW_AT_name("GPIOF15")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$541, DW_AT_name("all")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$542, DW_AT_name("bit")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$543, DW_AT_name("GPIOF0")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$544, DW_AT_name("GPIOF1")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$545, DW_AT_name("GPIOF2")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$546, DW_AT_name("GPIOF3")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$547, DW_AT_name("GPIOF4")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$548, DW_AT_name("GPIOF5")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$549, DW_AT_name("GPIOF6")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$550, DW_AT_name("GPIOF7")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$551, DW_AT_name("GPIOF8")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$552, DW_AT_name("GPIOF9")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$553, DW_AT_name("GPIOF10")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$554, DW_AT_name("GPIOF11")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$555, DW_AT_name("GPIOF12")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$556, DW_AT_name("GPIOF13")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$557, DW_AT_name("GPIOF14")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$558, DW_AT_name("GPIOF15")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$559, DW_AT_name("all")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$560, DW_AT_name("bit")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$561, DW_AT_name("GPIOF0")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$562, DW_AT_name("GPIOF1")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$563, DW_AT_name("GPIOF2")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$564, DW_AT_name("GPIOF3")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$565, DW_AT_name("GPIOF4")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$566, DW_AT_name("GPIOF5")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$567, DW_AT_name("GPIOF6")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$568, DW_AT_name("GPIOF7")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$569, DW_AT_name("GPIOF8")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$570, DW_AT_name("GPIOF9")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$571, DW_AT_name("GPIOF10")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$572, DW_AT_name("GPIOF11")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$573, DW_AT_name("GPIOF12")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$574, DW_AT_name("GPIOF13")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$575, DW_AT_name("GPIOF14")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$576, DW_AT_name("GPIOF15")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$577, DW_AT_name("all")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$578, DW_AT_name("bit")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$579, DW_AT_name("GPIOF0")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$580, DW_AT_name("GPIOF1")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$581, DW_AT_name("GPIOF2")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$582, DW_AT_name("GPIOF3")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$583, DW_AT_name("GPIOF4")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$584, DW_AT_name("GPIOF5")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$585, DW_AT_name("GPIOF6")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$586, DW_AT_name("GPIOF7")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$587, DW_AT_name("GPIOF8")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$588, DW_AT_name("GPIOF9")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$589, DW_AT_name("GPIOF10")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$590, DW_AT_name("GPIOF11")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$591, DW_AT_name("GPIOF12")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$592, DW_AT_name("GPIOF13")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$593, DW_AT_name("GPIOF14")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$594, DW_AT_name("GPIOF15")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$70, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$595, DW_AT_name("all")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$596, DW_AT_name("bit")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$597, DW_AT_name("rsvd1")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$597, DW_AT_bit_size(0x04)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$598, DW_AT_name("GPIOG4")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$599, DW_AT_name("GPIOG5")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$600, DW_AT_name("rsvd2")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$600, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$601, DW_AT_name("all")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$602, DW_AT_name("bit")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$603, DW_AT_name("rsvd1")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$603, DW_AT_bit_size(0x04)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$604, DW_AT_name("GPIOG4")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$605, DW_AT_name("GPIOG5")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$606, DW_AT_name("rsvd2")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$606, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$74, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x01)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$607, DW_AT_name("all")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$608, DW_AT_name("bit")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$609, DW_AT_name("rsvd1")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$609, DW_AT_bit_size(0x04)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$610, DW_AT_name("GPIOG4")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$611, DW_AT_name("GPIOG5")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$612, DW_AT_name("rsvd2")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$612, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$76, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$613, DW_AT_name("all")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$614, DW_AT_name("bit")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$615, DW_AT_name("rsvd1")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$615, DW_AT_bit_size(0x04)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$616, DW_AT_name("GPIOG4")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$617, DW_AT_name("GPIOG5")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$618, DW_AT_name("rsvd2")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$618, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$78, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$619, DW_AT_name("all")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$620, DW_AT_name("bit")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x20)
$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$621, DW_AT_name("GPADAT")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$622, DW_AT_name("GPASET")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$623, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$624, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$625, DW_AT_name("GPBDAT")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$626, DW_AT_name("GPBSET")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$627, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$628, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$629, DW_AT_name("rsvd1")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$630, DW_AT_name("GPDDAT")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$631, DW_AT_name("GPDSET")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$632, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$633, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$634, DW_AT_name("GPEDAT")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$635, DW_AT_name("GPESET")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$636, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$637, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$638, DW_AT_name("GPFDAT")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$639, DW_AT_name("GPFSET")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$640, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$641, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$642, DW_AT_name("GPGDAT")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$643, DW_AT_name("GPGSET")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$644, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$645, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$646, DW_AT_name("rsvd2")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80

$C$DW$647	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$80)

$C$DW$T$148	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$148, DW_AT_type(*$C$DW$647)


$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("LIM_CONF")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x08)
$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$648, DW_AT_name("what")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_what")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$649, DW_AT_name("ch")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$650, DW_AT_name("limit")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_limit")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$651, DW_AT_name("limits")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_limits")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$652, DW_AT_name("limitr")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_limitr")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81

$C$DW$T$108	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$108, DW_AT_name("limconf_t")
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$T$108, DW_AT_language(DW_LANG_C)


$C$DW$T$109	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$T$109, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x20)
$C$DW$653	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$653, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$109


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$654, DW_AT_name("ACK1")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_ACK1")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$655, DW_AT_name("ACK2")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_ACK2")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$656, DW_AT_name("ACK3")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_ACK3")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$657, DW_AT_name("ACK4")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_ACK4")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$658, DW_AT_name("ACK5")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_ACK5")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$659, DW_AT_name("ACK6")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_ACK6")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$660, DW_AT_name("ACK7")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_ACK7")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$661, DW_AT_name("ACK8")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_ACK8")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$662, DW_AT_name("ACK9")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_ACK9")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$663, DW_AT_name("ACK10")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_ACK10")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$664, DW_AT_name("ACK11")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_ACK11")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$665, DW_AT_name("ACK12")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_ACK12")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$666, DW_AT_name("rsvd")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$666, DW_AT_bit_size(0x04)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$667, DW_AT_name("all")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$668, DW_AT_name("bit")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$669, DW_AT_name("ENPIE")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_ENPIE")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$670, DW_AT_name("PIEVECT")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_PIEVECT")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$670, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$671, DW_AT_name("all")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$672, DW_AT_name("bit")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("PIEIER_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$673, DW_AT_name("INTx1")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$674, DW_AT_name("INTx2")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$675, DW_AT_name("INTx3")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$676, DW_AT_name("INTx4")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$677, DW_AT_name("INTx5")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$678, DW_AT_name("INTx6")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$679, DW_AT_name("INTx7")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$680, DW_AT_name("INTx8")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$681, DW_AT_name("rsvd")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$681, DW_AT_bit_size(0x08)
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("PIEIER_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$682, DW_AT_name("all")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$683, DW_AT_name("bit")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("PIEIFR_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$684, DW_AT_name("INTx1")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$685, DW_AT_name("INTx2")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$686, DW_AT_name("INTx3")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$687, DW_AT_name("INTx4")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$688, DW_AT_name("INTx5")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$689, DW_AT_name("INTx6")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$690, DW_AT_name("INTx7")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$691, DW_AT_name("INTx8")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$692, DW_AT_name("rsvd")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$692, DW_AT_bit_size(0x08)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("PIEIFR_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$693, DW_AT_name("all")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$694, DW_AT_name("bit")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x1a)
$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$695, DW_AT_name("PIECRTL")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_PIECRTL")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$696, DW_AT_name("PIEACK")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_PIEACK")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$697, DW_AT_name("PIEIER1")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_PIEIER1")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$698, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_PIEIFR1")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$699, DW_AT_name("PIEIER2")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_PIEIER2")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$700, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_PIEIFR2")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$701, DW_AT_name("PIEIER3")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_PIEIER3")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$702, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_PIEIFR3")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$703, DW_AT_name("PIEIER4")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_PIEIER4")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$704, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_PIEIFR4")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$705, DW_AT_name("PIEIER5")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_PIEIER5")
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$706, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_PIEIFR5")
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$707, DW_AT_name("PIEIER6")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_PIEIER6")
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$708, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_PIEIFR6")
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$709, DW_AT_name("PIEIER7")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_PIEIER7")
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$710, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_PIEIFR7")
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$711, DW_AT_name("PIEIER8")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_PIEIER8")
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$712, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_PIEIFR8")
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$713, DW_AT_name("PIEIER9")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_PIEIER9")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$714, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_PIEIFR9")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$715, DW_AT_name("PIEIER10")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_PIEIER10")
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$716, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_PIEIFR10")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$717, DW_AT_name("PIEIER11")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_PIEIER11")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$718, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_PIEIFR11")
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$719, DW_AT_name("PIEIER12")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_PIEIER12")
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$720, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_PIEIFR12")
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90

$C$DW$721	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$90)

$C$DW$T$153	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$721)


$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("PIE_VECT_TABLE")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x100)
$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$722, DW_AT_name("PIE1_RESERVED")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_PIE1_RESERVED")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$723, DW_AT_name("PIE2_RESERVED")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_PIE2_RESERVED")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$724, DW_AT_name("PIE3_RESERVED")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_PIE3_RESERVED")
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$725, DW_AT_name("PIE4_RESERVED")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_PIE4_RESERVED")
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$726, DW_AT_name("PIE5_RESERVED")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_PIE5_RESERVED")
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$727, DW_AT_name("PIE6_RESERVED")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_PIE6_RESERVED")
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$728, DW_AT_name("PIE7_RESERVED")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_PIE7_RESERVED")
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$729, DW_AT_name("PIE8_RESERVED")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_PIE8_RESERVED")
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$730, DW_AT_name("PIE9_RESERVED")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_PIE9_RESERVED")
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$731, DW_AT_name("PIE10_RESERVED")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_PIE10_RESERVED")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$732, DW_AT_name("PIE11_RESERVED")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_PIE11_RESERVED")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$733, DW_AT_name("PIE12_RESERVED")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_PIE12_RESERVED")
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$734, DW_AT_name("PIE13_RESERVED")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_PIE13_RESERVED")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$735, DW_AT_name("XINT13")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_XINT13")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$736, DW_AT_name("TINT2")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_TINT2")
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$737, DW_AT_name("DATALOG")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_DATALOG")
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$738, DW_AT_name("RTOSINT")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_RTOSINT")
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$739, DW_AT_name("EMUINT")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_EMUINT")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$740, DW_AT_name("XNMI")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_XNMI")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$741, DW_AT_name("ILLEGAL")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_ILLEGAL")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$742, DW_AT_name("USER1")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_USER1")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$743, DW_AT_name("USER2")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_USER2")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$744, DW_AT_name("USER3")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_USER3")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$745, DW_AT_name("USER4")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_USER4")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$746, DW_AT_name("USER5")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_USER5")
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$747, DW_AT_name("USER6")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_USER6")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$748, DW_AT_name("USER7")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_USER7")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$749, DW_AT_name("USER8")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_USER8")
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$750, DW_AT_name("USER9")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_USER9")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$751, DW_AT_name("USER10")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_USER10")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$752, DW_AT_name("USER11")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_USER11")
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$753, DW_AT_name("USER12")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_USER12")
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$754, DW_AT_name("PDPINTA")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_PDPINTA")
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$755, DW_AT_name("PDPINTB")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_PDPINTB")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$756, DW_AT_name("rsvd1_3")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_rsvd1_3")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$757, DW_AT_name("XINT1")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_XINT1")
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$758, DW_AT_name("XINT2")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_XINT2")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$759, DW_AT_name("ADCINT")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_ADCINT")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$760, DW_AT_name("TINT0")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_TINT0")
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$761, DW_AT_name("WAKEINT")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_WAKEINT")
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$762, DW_AT_name("CMP1INT")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_CMP1INT")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$763, DW_AT_name("CMP2INT")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_CMP2INT")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$764, DW_AT_name("CMP3INT")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_CMP3INT")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$765, DW_AT_name("T1PINT")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_T1PINT")
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$766, DW_AT_name("T1CINT")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_T1CINT")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$767, DW_AT_name("T1UFINT")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_T1UFINT")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$768, DW_AT_name("T1OFINT")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_T1OFINT")
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$769, DW_AT_name("rsvd2_8")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_rsvd2_8")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$770, DW_AT_name("T2PINT")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_T2PINT")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$771, DW_AT_name("T2CINT")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_T2CINT")
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$772, DW_AT_name("T2UFINT")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_T2UFINT")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$773, DW_AT_name("T2OFINT")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_T2OFINT")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$774, DW_AT_name("CAPINT1")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_CAPINT1")
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$775, DW_AT_name("CAPINT2")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_CAPINT2")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$776, DW_AT_name("CAPINT3")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_CAPINT3")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$777, DW_AT_name("rsvd3_8")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_rsvd3_8")
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$778, DW_AT_name("CMP4INT")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_CMP4INT")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$779, DW_AT_name("CMP5INT")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_CMP5INT")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$780, DW_AT_name("CMP6INT")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_CMP6INT")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$781, DW_AT_name("T3PINT")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_T3PINT")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$782, DW_AT_name("T3CINT")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_T3CINT")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$783, DW_AT_name("T3UFINT")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_T3UFINT")
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$784, DW_AT_name("T3OFINT")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_T3OFINT")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$785, DW_AT_name("rsvd4_8")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_rsvd4_8")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$786, DW_AT_name("T4PINT")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_T4PINT")
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$787, DW_AT_name("T4CINT")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_T4CINT")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$788, DW_AT_name("T4UFINT")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_T4UFINT")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$789, DW_AT_name("T4OFINT")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_T4OFINT")
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$790, DW_AT_name("CAPINT4")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_CAPINT4")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$791, DW_AT_name("CAPINT5")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_CAPINT5")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$792, DW_AT_name("CAPINT6")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_CAPINT6")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$793, DW_AT_name("rsvd5_8")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_rsvd5_8")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$794, DW_AT_name("SPIRXINTA")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_SPIRXINTA")
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$795, DW_AT_name("SPITXINTA")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_SPITXINTA")
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$796, DW_AT_name("rsvd6_3")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_rsvd6_3")
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$797, DW_AT_name("rsvd6_4")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_rsvd6_4")
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$798, DW_AT_name("MRINTA")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_MRINTA")
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$799, DW_AT_name("MXINTA")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_MXINTA")
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$800, DW_AT_name("rsvd6_7")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_rsvd6_7")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$801, DW_AT_name("rsvd6_8")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_rsvd6_8")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$802, DW_AT_name("rsvd7_1")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_rsvd7_1")
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$803, DW_AT_name("rsvd7_2")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_rsvd7_2")
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$804, DW_AT_name("rsvd7_3")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_rsvd7_3")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$805, DW_AT_name("rsvd7_4")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_rsvd7_4")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$806, DW_AT_name("rsvd7_5")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_rsvd7_5")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$807, DW_AT_name("rsvd7_6")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_rsvd7_6")
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$808, DW_AT_name("rsvd7_7")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_rsvd7_7")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$809, DW_AT_name("rsvd7_8")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_rsvd7_8")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$810, DW_AT_name("rsvd8_1")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_rsvd8_1")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$811, DW_AT_name("rsvd8_2")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_rsvd8_2")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$812, DW_AT_name("rsvd8_3")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_rsvd8_3")
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$813, DW_AT_name("rsvd8_4")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_rsvd8_4")
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$814, DW_AT_name("rsvd8_5")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_rsvd8_5")
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$815, DW_AT_name("rsvd8_6")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_rsvd8_6")
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$816, DW_AT_name("rsvd8_7")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_rsvd8_7")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$817, DW_AT_name("rsvd8_8")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_rsvd8_8")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$818, DW_AT_name("RXAINT")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_RXAINT")
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$819, DW_AT_name("TXAINT")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_TXAINT")
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$820, DW_AT_name("RXBINT")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_RXBINT")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$821, DW_AT_name("TXBINT")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_TXBINT")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$822, DW_AT_name("ECAN0INTA")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_ECAN0INTA")
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$823, DW_AT_name("ECAN1INTA")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_ECAN1INTA")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$824, DW_AT_name("rsvd9_7")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_rsvd9_7")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$825, DW_AT_name("rsvd9_8")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_rsvd9_8")
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$826, DW_AT_name("rsvd10_1")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_rsvd10_1")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$827, DW_AT_name("rsvd10_2")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_rsvd10_2")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$828, DW_AT_name("rsvd10_3")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_rsvd10_3")
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$829, DW_AT_name("rsvd10_4")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_rsvd10_4")
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$830, DW_AT_name("rsvd10_5")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_rsvd10_5")
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$831, DW_AT_name("rsvd10_6")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_rsvd10_6")
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$832, DW_AT_name("rsvd10_7")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_rsvd10_7")
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$833, DW_AT_name("rsvd10_8")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_rsvd10_8")
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$834, DW_AT_name("rsvd11_1")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_rsvd11_1")
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$835, DW_AT_name("rsvd11_2")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_rsvd11_2")
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$836, DW_AT_name("rsvd11_3")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_rsvd11_3")
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$837, DW_AT_name("rsvd11_4")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_rsvd11_4")
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$838, DW_AT_name("rsvd11_5")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_rsvd11_5")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$839, DW_AT_name("rsvd11_6")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_rsvd11_6")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$840, DW_AT_name("rsvd11_7")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_rsvd11_7")
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$841, DW_AT_name("rsvd11_8")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_rsvd11_8")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$842, DW_AT_name("rsvd12_1")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_rsvd12_1")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$843, DW_AT_name("rsvd12_2")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_rsvd12_2")
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$844, DW_AT_name("rsvd12_3")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_rsvd12_3")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$845, DW_AT_name("rsvd12_4")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_rsvd12_4")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$846, DW_AT_name("rsvd12_5")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_rsvd12_5")
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$847, DW_AT_name("rsvd12_6")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_rsvd12_6")
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$848, DW_AT_name("rsvd12_7")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_rsvd12_7")
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$849, DW_AT_name("rsvd12_8")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_rsvd12_8")
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$96	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$96, DW_AT_name("PRD_GROUP")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x02)
$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$850, DW_AT_name("all")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$851, DW_AT_name("half")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$96


$C$DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$97, DW_AT_name("PRD_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x02)
$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$852, DW_AT_name("LSW")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$853, DW_AT_name("MSW")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97


$C$DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$111, DW_AT_name("PROD_CONF")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0xc96)
$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$854, DW_AT_name("usn")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_usn")
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$855, DW_AT_name("uname")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_uname")
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$856, DW_AT_name("rxdir")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_rxdir")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$857, DW_AT_name("baud")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_baud")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$858, DW_AT_name("tagiden")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_tagiden")
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$859, DW_AT_name("tarepersist")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_tarepersist")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$860, DW_AT_name("filter")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_filter")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$861, DW_AT_name("diffwin")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_diffwin")
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$862, DW_AT_name("ch")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$863, DW_AT_name("sensor")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_sensor")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$864, DW_AT_name("vfd")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_vfd")
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0xc32]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$865, DW_AT_name("dac")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_dac")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0xc3e]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$866, DW_AT_name("lim")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_lim")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6e]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$867, DW_AT_name("velfilter")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_velfilter")
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8e]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$868, DW_AT_name("cntperin")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_cntperin")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0xc90]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$869, DW_AT_name("magic")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_magic")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0xc94]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$111

$C$DW$T$158	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$158, DW_AT_name("pconf_t")
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)

$C$DW$870	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$158)

$C$DW$T$159	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$870)


$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("SENSOR_CONF")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x98)
$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$871, DW_AT_name("ssn")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_ssn")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$872, DW_AT_name("slbl")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_slbl")
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$873, DW_AT_name("tagid")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_tagid")
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$874, DW_AT_name("method")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_method")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$875, DW_AT_name("date")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_date")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$876, DW_AT_name("range")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_range")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$877, DW_AT_name("unit")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_unit")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$878, DW_AT_name("ounit")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_ounit")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$879, DW_AT_name("ufactor")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_ufactor")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$880, DW_AT_name("points")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_points")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$881, DW_AT_name("mass")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_mass")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$882, DW_AT_name("adc")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_adc")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$883, DW_AT_name("slope")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_slope")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$884, DW_AT_name("intercept")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_intercept")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$885, DW_AT_name("shunt")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_shunt")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$886, DW_AT_name("base")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$887, DW_AT_name("tare")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_tare")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$888, DW_AT_name("dacgain")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_dacgain")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$889, DW_AT_name("dacoff")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_dacoff")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$890, DW_AT_name("ch")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$116

$C$DW$T$102	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$102, DW_AT_name("sconf_t")
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)


$C$DW$T$103	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$103, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$T$103, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$103, DW_AT_byte_size(0xbe0)
$C$DW$891	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$891, DW_AT_upper_bound(0x13)

	.dwendtag $C$DW$T$103


$C$DW$T$117	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$117, DW_AT_name("TCR_BITS")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x01)
$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$892, DW_AT_name("rsvd1")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$892, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$892, DW_AT_bit_size(0x04)
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$893, DW_AT_name("TSS")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_TSS")
	.dwattr $C$DW$893, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$893, DW_AT_bit_size(0x01)
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$894, DW_AT_name("TRB")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_TRB")
	.dwattr $C$DW$894, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$894, DW_AT_bit_size(0x01)
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$895, DW_AT_name("rsvd2")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$895, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$895, DW_AT_bit_size(0x04)
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$896, DW_AT_name("SOFT")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$896, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$896, DW_AT_bit_size(0x01)
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$897, DW_AT_name("FREE")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$897, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$897, DW_AT_bit_size(0x01)
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$898, DW_AT_name("rsvd3")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$898, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$898, DW_AT_bit_size(0x02)
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$899, DW_AT_name("TIE")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_TIE")
	.dwattr $C$DW$899, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$899, DW_AT_bit_size(0x01)
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$900, DW_AT_name("TIF")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_TIF")
	.dwattr $C$DW$900, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$900, DW_AT_bit_size(0x01)
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$117


$C$DW$T$118	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$118, DW_AT_name("TCR_REG")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x01)
$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$901, DW_AT_name("all")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$902, DW_AT_name("bit")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$118


$C$DW$T$119	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$119, DW_AT_name("TIM_GROUP")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x02)
$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$903, DW_AT_name("all")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$904, DW_AT_name("half")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$119


$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("TIM_REG")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x02)
$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$905, DW_AT_name("LSW")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$906, DW_AT_name("MSW")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$120


$C$DW$T$121	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$121, DW_AT_name("TPRH_BITS")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x01)
$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$907, DW_AT_name("TDDRH")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_TDDRH")
	.dwattr $C$DW$907, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$907, DW_AT_bit_size(0x08)
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$908, DW_AT_name("PSCH")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_PSCH")
	.dwattr $C$DW$908, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$908, DW_AT_bit_size(0x08)
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$121


$C$DW$T$122	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$122, DW_AT_name("TPRH_REG")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x01)
$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$909, DW_AT_name("all")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$910, DW_AT_name("bit")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$122


$C$DW$T$123	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$123, DW_AT_name("TPR_BITS")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x01)
$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$911, DW_AT_name("TDDR")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_TDDR")
	.dwattr $C$DW$911, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$911, DW_AT_bit_size(0x08)
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$912, DW_AT_name("PSC")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_PSC")
	.dwattr $C$DW$912, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$912, DW_AT_bit_size(0x08)
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$123


$C$DW$T$124	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$124, DW_AT_name("TPR_REG")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x01)
$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$913, DW_AT_name("all")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$914	.dwtag  DW_TAG_member
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$914, DW_AT_name("bit")
	.dwattr $C$DW$914, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$914, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$914, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$124

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)


$C$DW$T$91	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$91, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$91

$C$DW$T$92	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$T$92, DW_AT_address_class(0x20)

$C$DW$T$93	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$93, DW_AT_name("PINT")
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_language(DW_LANG_C)

$C$DW$915	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$2)

$C$DW$T$166	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$915)

$C$DW$T$167	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$167, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$T$167, DW_AT_address_class(0x20)

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


$C$DW$T$195	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$195, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$195, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$195, DW_AT_byte_size(0x04)
$C$DW$916	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$916, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$195


$C$DW$T$198	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$198, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$198, DW_AT_byte_size(0x0c)
$C$DW$917	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$917, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$198

$C$DW$918	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$10)

$C$DW$T$199	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$918)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$27	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$27, DW_AT_name("Uint16")
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)

$C$DW$919	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$27)

$C$DW$T$200	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$200, DW_AT_type(*$C$DW$919)


$C$DW$T$201	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$200)
	.dwattr $C$DW$T$201, DW_AT_language(DW_LANG_C)
$C$DW$920	.dwtag  DW_TAG_subrange_type

	.dwendtag $C$DW$T$201


$C$DW$T$79	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$79, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$79, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x04)
$C$DW$921	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$921, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$79


$C$DW$T$204	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$204, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$204, DW_AT_byte_size(0x02)
$C$DW$922	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$922, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$204

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)


$C$DW$T$19	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x08)
$C$DW$923	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$923, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$19


$C$DW$T$110	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$110, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x04)
$C$DW$924	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$924, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$110


$C$DW$T$114	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$114, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$114, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x18)
$C$DW$925	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$925, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$114


$C$DW$T$218	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$218, DW_AT_byte_size(0x2000)
$C$DW$926	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$926, DW_AT_upper_bound(0xfff)

	.dwendtag $C$DW$T$218


$C$DW$T$219	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$219, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$219, DW_AT_byte_size(0x8000)
$C$DW$927	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$927, DW_AT_upper_bound(0x03)

$C$DW$928	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$928, DW_AT_upper_bound(0xfff)

	.dwendtag $C$DW$T$219


$C$DW$T$221	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$221, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$221, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$221, DW_AT_byte_size(0x800)
$C$DW$929	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$929, DW_AT_upper_bound(0x3ff)

	.dwendtag $C$DW$T$221


$C$DW$T$222	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$222, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$222, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$222, DW_AT_byte_size(0x1000)
$C$DW$930	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$930, DW_AT_upper_bound(0x01)

$C$DW$931	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$931, DW_AT_upper_bound(0x3ff)

	.dwendtag $C$DW$T$222

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$95	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$95, DW_AT_name("Uint32")
	.dwattr $C$DW$T$95, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$95, DW_AT_language(DW_LANG_C)

$C$DW$T$168	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$168, DW_AT_name("size_t")
	.dwattr $C$DW$T$168, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$168, DW_AT_language(DW_LANG_C)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)


$C$DW$T$228	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$228, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$228, DW_AT_byte_size(0x10)
$C$DW$932	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$932, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$228

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$933	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$16)

$C$DW$T$231	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$231, DW_AT_type(*$C$DW$933)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)


$C$DW$T$21	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x08)
$C$DW$934	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$934, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x04)
$C$DW$935	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$935, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$22


$C$DW$T$113	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$113, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$113, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x18)
$C$DW$936	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$936, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$113


$C$DW$T$115	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x16)
$C$DW$937	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$937, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$115

$C$DW$938	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$17)

$C$DW$T$235	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$235, DW_AT_type(*$C$DW$938)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)


$C$DW$T$99	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x20)
$C$DW$939	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$939, DW_AT_upper_bound(0x1f)

	.dwendtag $C$DW$T$99


$C$DW$T$112	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$112, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$112, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x10)
$C$DW$940	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$940, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$112

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 26
	.dwcfi	cfa_register, 20
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	undefined, 26
	.dwcfi	same_value, 28
	.dwcfi	undefined, 29
	.dwcfi	undefined, 30
	.dwcfi	undefined, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwcfi	same_value, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	undefined, 14
	.dwcfi	undefined, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$941	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$941, DW_AT_name("AL")
	.dwattr $C$DW$941, DW_AT_location[DW_OP_reg0]

$C$DW$942	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$942, DW_AT_name("AH")
	.dwattr $C$DW$942, DW_AT_location[DW_OP_reg1]

$C$DW$943	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$943, DW_AT_name("PL")
	.dwattr $C$DW$943, DW_AT_location[DW_OP_reg2]

$C$DW$944	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$944, DW_AT_name("PH")
	.dwattr $C$DW$944, DW_AT_location[DW_OP_reg3]

$C$DW$945	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$945, DW_AT_name("SP")
	.dwattr $C$DW$945, DW_AT_location[DW_OP_reg20]

$C$DW$946	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$946, DW_AT_name("XT")
	.dwattr $C$DW$946, DW_AT_location[DW_OP_reg21]

$C$DW$947	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$947, DW_AT_name("T")
	.dwattr $C$DW$947, DW_AT_location[DW_OP_reg22]

$C$DW$948	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$948, DW_AT_name("ST0")
	.dwattr $C$DW$948, DW_AT_location[DW_OP_reg23]

$C$DW$949	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$949, DW_AT_name("ST1")
	.dwattr $C$DW$949, DW_AT_location[DW_OP_reg24]

$C$DW$950	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$950, DW_AT_name("PC")
	.dwattr $C$DW$950, DW_AT_location[DW_OP_reg25]

$C$DW$951	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$951, DW_AT_name("RPC")
	.dwattr $C$DW$951, DW_AT_location[DW_OP_reg26]

$C$DW$952	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$952, DW_AT_name("FP")
	.dwattr $C$DW$952, DW_AT_location[DW_OP_reg28]

$C$DW$953	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$953, DW_AT_name("DP")
	.dwattr $C$DW$953, DW_AT_location[DW_OP_reg29]

$C$DW$954	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$954, DW_AT_name("SXM")
	.dwattr $C$DW$954, DW_AT_location[DW_OP_reg30]

$C$DW$955	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$955, DW_AT_name("PM")
	.dwattr $C$DW$955, DW_AT_location[DW_OP_reg31]

$C$DW$956	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$956, DW_AT_name("OVM")
	.dwattr $C$DW$956, DW_AT_location[DW_OP_regx 0x20]

$C$DW$957	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$957, DW_AT_name("PAGE0")
	.dwattr $C$DW$957, DW_AT_location[DW_OP_regx 0x21]

$C$DW$958	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$958, DW_AT_name("AMODE")
	.dwattr $C$DW$958, DW_AT_location[DW_OP_regx 0x22]

$C$DW$959	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$959, DW_AT_name("INTM")
	.dwattr $C$DW$959, DW_AT_location[DW_OP_regx 0x23]

$C$DW$960	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$960, DW_AT_name("IFR")
	.dwattr $C$DW$960, DW_AT_location[DW_OP_regx 0x24]

$C$DW$961	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$961, DW_AT_name("IER")
	.dwattr $C$DW$961, DW_AT_location[DW_OP_regx 0x25]

$C$DW$962	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$962, DW_AT_name("V")
	.dwattr $C$DW$962, DW_AT_location[DW_OP_regx 0x26]

$C$DW$963	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$963, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$963, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$964	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$964, DW_AT_name("VOL")
	.dwattr $C$DW$964, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$965	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$965, DW_AT_name("AR0")
	.dwattr $C$DW$965, DW_AT_location[DW_OP_reg4]

$C$DW$966	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$966, DW_AT_name("XAR0")
	.dwattr $C$DW$966, DW_AT_location[DW_OP_reg5]

$C$DW$967	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$967, DW_AT_name("AR1")
	.dwattr $C$DW$967, DW_AT_location[DW_OP_reg6]

$C$DW$968	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$968, DW_AT_name("XAR1")
	.dwattr $C$DW$968, DW_AT_location[DW_OP_reg7]

$C$DW$969	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$969, DW_AT_name("AR2")
	.dwattr $C$DW$969, DW_AT_location[DW_OP_reg8]

$C$DW$970	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$970, DW_AT_name("XAR2")
	.dwattr $C$DW$970, DW_AT_location[DW_OP_reg9]

$C$DW$971	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$971, DW_AT_name("AR3")
	.dwattr $C$DW$971, DW_AT_location[DW_OP_reg10]

$C$DW$972	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$972, DW_AT_name("XAR3")
	.dwattr $C$DW$972, DW_AT_location[DW_OP_reg11]

$C$DW$973	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$973, DW_AT_name("AR4")
	.dwattr $C$DW$973, DW_AT_location[DW_OP_reg12]

$C$DW$974	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$974, DW_AT_name("XAR4")
	.dwattr $C$DW$974, DW_AT_location[DW_OP_reg13]

$C$DW$975	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$975, DW_AT_name("AR5")
	.dwattr $C$DW$975, DW_AT_location[DW_OP_reg14]

$C$DW$976	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$976, DW_AT_name("XAR5")
	.dwattr $C$DW$976, DW_AT_location[DW_OP_reg15]

$C$DW$977	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$977, DW_AT_name("AR6")
	.dwattr $C$DW$977, DW_AT_location[DW_OP_reg16]

$C$DW$978	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$978, DW_AT_name("XAR6")
	.dwattr $C$DW$978, DW_AT_location[DW_OP_reg17]

$C$DW$979	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$979, DW_AT_name("AR7")
	.dwattr $C$DW$979, DW_AT_location[DW_OP_reg18]

$C$DW$980	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$980, DW_AT_name("XAR7")
	.dwattr $C$DW$980, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


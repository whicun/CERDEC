;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.6.LTS *
;* Date/Time created: Thu Nov 14 09:51:53 2019                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/ad7738.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.6.LTS Copyright (c) 1996-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\antons\workspace_v6_1\CANbus\Debug")
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_numSpeedSensorsToUse+0,32
	.bits	1,16			; _numSpeedSensorsToUse @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tagscnt+0,32
	.bits	0,16			; _tagscnt @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_trigger$1+0,32
	.bits	0,16			; _trigger$1 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_triggerSource+0,32
	.bits	2,16			; _triggerSource @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tempread+0,32
	.bits	0,16			; _tempread @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_dataCollectTrigger+0,32
	.bits	0,16			; _dataCollectTrigger @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_speedSensorPolarity+0,32
	.bits	0,16			; _speedSensorPolarity @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_speedSensor+0,32
	.bits	0,16			; _speedSensor @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_fastslowDataState+0,32
	.bits	0,16			; _fastslowDataState @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_mon_cnt+0,32
	.bits	0,16			; _mon_cnt @ 0

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
	.field  	_firsttime$2+0,32
	.bits	0,16			; _firsttime$2 @ 0

	.sect	".cinit"
	.align	1
	.field  	-1,16
	.field  	_tagsdetect+0,32
	.bits	0,16			; _tagsdetect @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_numslowinterrupts+0,32
	.bits	0,32			; _numslowinterrupts @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_dataindex+0,32
	.bits	0,32			; _dataindex @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_triggerValADC+0,32
	.bits	0,32			; _triggerValADC @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_numfastinterrupts+0,32
	.bits	0,32			; _numfastinterrupts @ 0

	.sect	".cinit"
	.align	1
	.field  	-2,16
	.field  	_triggerVal+0,32
	.xfloat	$strtod("0x1p+0")		; _triggerVal @ 0

$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("BITMAP")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_BITMAP")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$257)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external


$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("spi_init")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_spi_init")
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwendtag $C$DW$2


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("moveMotor")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_moveMotor")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwendtag $C$DW$3


$C$DW$4	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$4, DW_AT_name("prod_init")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_prod_init")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwendtag $C$DW$4


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("prod_add")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_prod_add")
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$199)

	.dwendtag $C$DW$5


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("qep_init")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_qep_init")
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("led_set")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_led_set")
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)

$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$8


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("mcbsp_init")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_mcbsp_init")
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("autoMotor")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_autoMotor")
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$16)

	.dwendtag $C$DW$12


$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("ssr_set")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_ssr_set")
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$10)

	.dwendtag $C$DW$14

	.global	_numSpeedSensorsToUse
_numSpeedSensorsToUse:	.usect	".ebss",1,1,0
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("numSpeedSensorsToUse")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_numSpeedSensorsToUse")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr _numSpeedSensorsToUse]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$17, DW_AT_external

	.global	_mafidx
_mafidx:	.usect	".ebss",1,1,0
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("mafidx")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_mafidx")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr _mafidx]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$18, DW_AT_external

	.global	_tagscnt
_tagscnt:	.usect	".ebss",1,1,0
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("tagscnt")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_tagscnt")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr _tagscnt]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$19, DW_AT_external

_trigger$1:	.usect	".ebss",1,1,0
	.global	_triggerSource
_triggerSource:	.usect	".ebss",1,1,0
$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("triggerSource")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_triggerSource")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr _triggerSource]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$20, DW_AT_external

	.global	_tempread
_tempread:	.usect	".ebss",1,1,0
$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("tempread")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_tempread")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr _tempread]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$21, DW_AT_external

	.global	_dataCollectTrigger
_dataCollectTrigger:	.usect	".ebss",1,1,0
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("dataCollectTrigger")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_dataCollectTrigger")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr _dataCollectTrigger]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$22, DW_AT_external

	.global	_speedSensorPolarity
_speedSensorPolarity:	.usect	".ebss",1,1,0
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("speedSensorPolarity")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_speedSensorPolarity")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr _speedSensorPolarity]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$23, DW_AT_external

	.global	_speedSensor
_speedSensor:	.usect	".ebss",1,1,0
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("speedSensor")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_speedSensor")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr _speedSensor]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$24, DW_AT_external

	.global	_peak_reset
_peak_reset:	.usect	".ebss",1,1,0
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("peak_reset")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_peak_reset")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr _peak_reset]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_external

	.global	_limit
_limit:	.usect	".ebss",1,1,0
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("limit")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_limit")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr _limit]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$26, DW_AT_external

	.global	_tare_reset
_tare_reset:	.usect	".ebss",1,1,0
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("tare_reset")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_tare_reset")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr _tare_reset]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_external

	.global	_limitchgd
_limitchgd:	.usect	".ebss",1,1,0
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("limitchgd")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_limitchgd")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr _limitchgd]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$28, DW_AT_external

	.global	_dacvalue
_dacvalue:	.usect	".ebss",1,1,0
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("dacvalue")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_dacvalue")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr _dacvalue]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_external

	.global	_dacsetvolt
_dacsetvolt:	.usect	".ebss",1,1,0
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("dacsetvolt")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_dacsetvolt")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_addr _dacsetvolt]
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_external

	.global	_vall_reset
_vall_reset:	.usect	".ebss",1,1,0
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("vall_reset")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_vall_reset")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_addr _vall_reset]
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_external

	.global	_fastslowDataState
_fastslowDataState:	.usect	".ebss",1,1,0
$C$DW$32	.dwtag  DW_TAG_variable
	.dwattr $C$DW$32, DW_AT_name("fastslowDataState")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_fastslowDataState")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_addr _fastslowDataState]
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$32, DW_AT_external

	.global	_ad7738_err
_ad7738_err:	.usect	".ebss",1,1,0
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("ad7738_err")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_ad7738_err")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_addr _ad7738_err]
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$252)
	.dwattr $C$DW$33, DW_AT_external

	.global	_rawrdy
_rawrdy:	.usect	".ebss",1,1,0
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("rawrdy")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_rawrdy")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_addr _rawrdy]
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$34, DW_AT_external

	.global	_mafsize
_mafsize:	.usect	".ebss",1,1,0
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("mafsize")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_mafsize")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_addr _mafsize]
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$260)
	.dwattr $C$DW$35, DW_AT_external

	.global	_ad7738_ph
_ad7738_ph:	.usect	".ebss",1,1,0
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("ad7738_ph")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_ad7738_ph")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_addr _ad7738_ph]
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_external

	.global	_monrdy
_monrdy:	.usect	".ebss",1,1,0
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("monrdy")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_monrdy")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_addr _monrdy]
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$37, DW_AT_external

	.global	_mon_cnt
_mon_cnt:	.usect	".ebss",1,1,0
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("mon_cnt")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_mon_cnt")
	.dwattr $C$DW$38, DW_AT_location[DW_OP_addr _mon_cnt]
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$38, DW_AT_external

	.global	_tempstart
_tempstart:	.usect	".ebss",1,1,0
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("tempstart")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_tempstart")
	.dwattr $C$DW$39, DW_AT_location[DW_OP_addr _tempstart]
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$39, DW_AT_external

	.global	_tempcnt
_tempcnt:	.usect	".ebss",1,1,0
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("tempcnt")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_tempcnt")
	.dwattr $C$DW$40, DW_AT_location[DW_OP_addr _tempcnt]
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$40, DW_AT_external

_firsttime$2:	.usect	".ebss",1,1,0

$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("xpi_xmit2")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_xpi_xmit2")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)

$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$41

	.global	_tagsdetect
_tagsdetect:	.usect	".ebss",1,1,0
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("tagsdetect")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_tagsdetect")
	.dwattr $C$DW$44, DW_AT_location[DW_OP_addr _tagsdetect]
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$44, DW_AT_external

	.global	_ad7738_raw
_ad7738_raw:	.usect	".ebss",2,1,1
$C$DW$45	.dwtag  DW_TAG_variable
	.dwattr $C$DW$45, DW_AT_name("ad7738_raw")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_ad7738_raw")
	.dwattr $C$DW$45, DW_AT_location[DW_OP_addr _ad7738_raw]
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$45, DW_AT_external

	.global	_numslowinterrupts
_numslowinterrupts:	.usect	".ebss",2,1,1
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("numslowinterrupts")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_numslowinterrupts")
	.dwattr $C$DW$46, DW_AT_location[DW_OP_addr _numslowinterrupts]
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$46, DW_AT_external

	.global	_daci
_daci:	.usect	".ebss",2,1,1
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("daci")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_daci")
	.dwattr $C$DW$47, DW_AT_location[DW_OP_addr _daci]
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$47, DW_AT_external

	.global	_dataindex
_dataindex:	.usect	".ebss",2,1,1
$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("dataindex")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_dataindex")
	.dwattr $C$DW$48, DW_AT_location[DW_OP_addr _dataindex]
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$48, DW_AT_external

	.global	_mafdiff
_mafdiff:	.usect	".ebss",2,1,1
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("mafdiff")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_mafdiff")
	.dwattr $C$DW$49, DW_AT_location[DW_OP_addr _mafdiff]
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$49, DW_AT_external


$C$DW$50	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$50, DW_AT_name("labs")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_labs")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$50, DW_AT_declaration
	.dwattr $C$DW$50, DW_AT_external
$C$DW$51	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$12)

	.dwendtag $C$DW$50

	.global	_triggerValADC
_triggerValADC:	.usect	".ebss",2,1,1
$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("triggerValADC")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_triggerValADC")
	.dwattr $C$DW$52, DW_AT_location[DW_OP_addr _triggerValADC]
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$52, DW_AT_external


$C$DW$53	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$53, DW_AT_name("memcpy")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_memcpy")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$53, DW_AT_declaration
	.dwattr $C$DW$53, DW_AT_external
$C$DW$54	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$3)

$C$DW$55	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$229)

$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$230)

	.dwendtag $C$DW$53

	.global	_ad7738_rev
_ad7738_rev:	.usect	".ebss",2,1,0
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("ad7738_rev")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_ad7738_rev")
	.dwattr $C$DW$57, DW_AT_location[DW_OP_addr _ad7738_rev]
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$57, DW_AT_external

	.global	_numfastinterrupts
_numfastinterrupts:	.usect	".ebss",2,1,1
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("numfastinterrupts")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_numfastinterrupts")
	.dwattr $C$DW$58, DW_AT_location[DW_OP_addr _numfastinterrupts]
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$58, DW_AT_external

	.global	_ad7738_cnt
_ad7738_cnt:	.usect	".ebss",2,1,1
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("ad7738_cnt")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_ad7738_cnt")
	.dwattr $C$DW$59, DW_AT_location[DW_OP_addr _ad7738_cnt]
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$59, DW_AT_external


$C$DW$60	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$60, DW_AT_name("xpi_adcdataread")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_xpi_adcdataread")
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$60, DW_AT_declaration
	.dwattr $C$DW$60, DW_AT_external
$C$DW$61	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$60

	.global	_triggerVal
_triggerVal:	.usect	".ebss",2,1,1
$C$DW$62	.dwtag  DW_TAG_variable
	.dwattr $C$DW$62, DW_AT_name("triggerVal")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_triggerVal")
	.dwattr $C$DW$62, DW_AT_location[DW_OP_addr _triggerVal]
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$62, DW_AT_external

	.global	_adcdiff
_adcdiff:	.usect	".ebss",2,1,1
$C$DW$63	.dwtag  DW_TAG_variable
	.dwattr $C$DW$63, DW_AT_name("adcdiff")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_adcdiff")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_addr _adcdiff]
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$279)
	.dwattr $C$DW$63, DW_AT_external

	.global	_mafsum
_mafsum:	.usect	".ebss",4,1,1
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("mafsum")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_mafsum")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_addr _mafsum]
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$283)
	.dwattr $C$DW$64, DW_AT_external

	.global	_dropTime
_dropTime:	.usect	".ebss",4,1,1
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("dropTime")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_dropTime")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_addr _dropTime]
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$65, DW_AT_external

	.global	_enccnt
_enccnt:	.usect	".ebss",4,1,1
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("enccnt")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_enccnt")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_addr _enccnt]
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$66, DW_AT_external

$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("CpuTimer0Regs")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_CpuTimer0Regs")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$204)
	.dwattr $C$DW$67, DW_AT_declaration
	.dwattr $C$DW$67, DW_AT_external

	.global	_ad7738_load
_ad7738_load:	.usect	".ebss",10,1,1
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("ad7738_load")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_ad7738_load")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_addr _ad7738_load]
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$68, DW_AT_external

	.global	_hfactor
_hfactor:	.usect	".ebss",10,1,1
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("hfactor")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_hfactor")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_addr _hfactor]
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$69, DW_AT_external

	.global	_ad7738_mon
_ad7738_mon:	.usect	".ebss",10,1,1
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("ad7738_mon")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_ad7738_mon")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_addr _ad7738_mon]
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$70, DW_AT_external

	.global	_ad7738_vall
_ad7738_vall:	.usect	".ebss",10,1,1
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("ad7738_vall")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_ad7738_vall")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_addr _ad7738_vall]
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$71, DW_AT_external

	.global	_dacs
_dacs:	.usect	".ebss",10,1,1
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("dacs")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_dacs")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_addr _dacs]
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$72, DW_AT_external

	.global	_ad7738_peak
_ad7738_peak:	.usect	".ebss",10,1,1
$C$DW$73	.dwtag  DW_TAG_variable
	.dwattr $C$DW$73, DW_AT_name("ad7738_peak")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_ad7738_peak")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_addr _ad7738_peak]
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$73, DW_AT_external

	.global	_ad7738_tare
_ad7738_tare:	.usect	".ebss",10,1,1
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("ad7738_tare")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_ad7738_tare")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_addr _ad7738_tare]
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$74, DW_AT_external

$C$DW$75	.dwtag  DW_TAG_variable
	.dwattr $C$DW$75, DW_AT_name("XIntruptRegs")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_XIntruptRegs")
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$226)
	.dwattr $C$DW$75, DW_AT_declaration
	.dwattr $C$DW$75, DW_AT_external

$C$DW$76	.dwtag  DW_TAG_variable
	.dwattr $C$DW$76, DW_AT_name("PieCtrlRegs")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_PieCtrlRegs")
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$213)
	.dwattr $C$DW$76, DW_AT_declaration
	.dwattr $C$DW$76, DW_AT_external

$C$DW$77	.dwtag  DW_TAG_variable
	.dwattr $C$DW$77, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$208)
	.dwattr $C$DW$77, DW_AT_declaration
	.dwattr $C$DW$77, DW_AT_external

$C$DW$78	.dwtag  DW_TAG_variable
	.dwattr $C$DW$78, DW_AT_name("EvbRegs")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_EvbRegs")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$207)
	.dwattr $C$DW$78, DW_AT_declaration
	.dwattr $C$DW$78, DW_AT_external

$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("EvaRegs")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_EvaRegs")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$206)
	.dwattr $C$DW$79, DW_AT_declaration
	.dwattr $C$DW$79, DW_AT_external

	.global	_intercept
_intercept:	.usect	".ebss",110,1,1
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("intercept")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_intercept")
	.dwattr $C$DW$80, DW_AT_location[DW_OP_addr _intercept]
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$80, DW_AT_external

	.global	_slope
_slope:	.usect	".ebss",110,1,1
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("slope")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_slope")
	.dwattr $C$DW$81, DW_AT_location[DW_OP_addr _slope]
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$201)
	.dwattr $C$DW$81, DW_AT_external

$C$DW$82	.dwtag  DW_TAG_variable
	.dwattr $C$DW$82, DW_AT_name("PieVectTable")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_PieVectTable")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$82, DW_AT_declaration
	.dwattr $C$DW$82, DW_AT_external

$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("conf_data")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_conf_data")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$219)
	.dwattr $C$DW$83, DW_AT_declaration
	.dwattr $C$DW$83, DW_AT_external

	.global	_mafbuf
_mafbuf:	.usect	"bigbuffer",8192,1,1
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("mafbuf")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_mafbuf")
	.dwattr $C$DW$84, DW_AT_location[DW_OP_addr _mafbuf]
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$277)
	.dwattr $C$DW$84, DW_AT_external

	.global	_databuf
_databuf:	.usect	"bigbuffer",120000,1,1
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("databuf")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_databuf")
	.dwattr $C$DW$85, DW_AT_location[DW_OP_addr _databuf]
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$275)
	.dwattr $C$DW$85, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.6.LTS\bin\opt2000.exe C:\\Users\\antons\\AppData\\Local\\Temp\\{CCB04BE7-E86E-4ABD-B910-545CC39118BB} C:\\Users\\antons\\AppData\\Local\\Temp\\{B871A8F2-E62F-4D68-A783-E05C4248CB0A} 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.6.LTS\bin\ac2000.exe -@C:\\Users\\antons\\AppData\\Local\\Temp\\{D05A2ECB-EA36-4492-98F8-57078A214E66} 
	.sect	".text"
	.clink
	.global	_velf_rst

$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("velf_rst")
	.dwattr $C$DW$86, DW_AT_low_pc(_velf_rst)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_velf_rst")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0xfc)
	.dwattr $C$DW$86, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 252,column 17,is_stmt,address _velf_rst,isa 0

	.dwfde $C$DW$CIE, _velf_rst
;----------------------------------------------------------------------
; 252 | void velf_rst() {                                                      
; 253 | int i;                                                                 
; 255 | for (i = 0; i < ENC_MAX; i++) {                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _velf_rst                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_velf_rst:
;* AR4   assigned to $O$U7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,#_enccnt         ; [CPU_U] 
        MOVB      XAR6,#1               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 256,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 256 | enccnt[i] = 0;                                                         
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |256| 
$C$L1:    
        MOVL      *XAR4++,ACC           ; [CPU_] |256| 
	.dwpsn	file "../Source/ad7738.c",line 255,column 14,is_stmt,isa 0
        BANZ      $C$L1,AR6--           ; [CPU_] |255| 
        ; branchcc occurs ; [] |255| 
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$86, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x102)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	"secureRamFuncs"
	.clink
	.global	_scaleData

$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("scaleData")
	.dwattr $C$DW$88, DW_AT_low_pc(_scaleData)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_scaleData")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$88, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x264)
	.dwattr $C$DW$88, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/ad7738.c",line 612,column 33,is_stmt,address _scaleData,isa 0

	.dwfde $C$DW$CIE, _scaleData
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("in")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg0]

$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("i")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _scaleData                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_scaleData:
;* AR1   assigned to $O$C13
;* AR4   assigned to $O$C14
;* AR6   assigned to _out
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("out")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_out")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg16]

;* AR7   assigned to _j
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("j")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg18]

;* T     assigned to _i
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("i")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg22]

;* AR3   assigned to _in
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("in")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_in")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to $O$K5
;* AR5   assigned to $O$K17
;* AR6   assigned to $O$U27
;* PL    assigned to $O$K16
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
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -10
;----------------------------------------------------------------------
; 612 | float scaleData(long in, int i) {                                      
; 613 | int j;                                                                 
; 614 | float out;                                                             
; 616 | // *** heat correction here ***                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AR4               ; [CPU_] |612| 
        MOVL      XAR3,ACC              ; [CPU_] |612| 
        SETC      SXM                   ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 617,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 617 | in = in * hfactor.adw[i];                                              
; 619 | // *** apply cal scales ***                                            
; 620 | j = 0;                                                                 
;----------------------------------------------------------------------
        MOV       ACC,AR1 << 1          ; [CPU_] |617| 
        MOVL      XAR2,ACC              ; [CPU_] |617| 
        MOVL      ACC,XAR3              ; [CPU_] |617| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |617| 
        ; call occurs [#L$$TOFS] ; [] |617| 
        MOVL      XAR4,#_hfactor        ; [CPU_U] |617| 
        MOVL      XAR6,ACC              ; [CPU_] |617| 
        MOVL      ACC,XAR2              ; [CPU_] |617| 
        ADDL      XAR4,ACC              ; [CPU_] |617| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |617| 
        MOVL      *-SP[2],ACC           ; [CPU_] |617| 
        MOVL      ACC,XAR6              ; [CPU_] |617| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |617| 
        ; call occurs [#FS$$MPY] ; [] |617| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |617| 
        ; call occurs [#FS$$TOL] ; [] |617| 
	.dwpsn	file "../Source/ad7738.c",line 621,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 621 | if (conf_data.sensor[conf_data.ch[i].ci].points > 2) {                 
;----------------------------------------------------------------------
        MOV       T,AR1                 ; [CPU_] |621| 
        MOVL      XAR4,#_conf_data      ; [CPU_U] |621| 
	.dwpsn	file "../Source/ad7738.c",line 617,column 2,is_stmt,isa 0
        MOVL      XAR3,ACC              ; [CPU_] |617| 
	.dwpsn	file "../Source/ad7738.c",line 621,column 2,is_stmt,isa 0
        MPYB      ACC,T,#10             ; [CPU_] |621| 
        ADDL      ACC,XAR4              ; [CPU_] |621| 
        ADDB      ACC,#42               ; [CPU_] |621| 
        MOVL      XAR5,ACC              ; [CPU_] |621| 
        MOV       T,*+XAR5[0]           ; [CPU_] |621| 
        MOVL      P,XAR4                ; [CPU_] |621| 
        MPYB      ACC,T,#152            ; [CPU_] |621| 
        ADDL      ACC,P                 ; [CPU_] |621| 
        MOVL      XAR4,ACC              ; [CPU_] |621| 
	.dwpsn	file "../Source/ad7738.c",line 620,column 2,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_] |620| 
	.dwpsn	file "../Source/ad7738.c",line 621,column 2,is_stmt,isa 0
        MOVB      XAR0,#98              ; [CPU_] |621| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_] |621| 
        CMPB      AL,#2                 ; [CPU_] |621| 
        B         $C$L4,LEQ             ; [CPU_] |621| 
        ; branchcc occurs ; [] |621| 
        MOVB      XAR6,#0               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 622,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 622 | while (in > conf_data.sensor[conf_data.ch[i].ci].adc[j + 1]            
; 623 |                 && j < conf_data.sensor[conf_data.ch[i].ci].points - 2)
;     |  {                                                                     
;----------------------------------------------------------------------
        B         $C$L3,UNC             ; [CPU_] |622| 
        ; branch occurs ; [] |622| 
$C$L2:    
	.dwpsn	file "../Source/ad7738.c",line 624,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 624 | j++;                                                                   
;----------------------------------------------------------------------
        ADDB      XAR6,#2               ; [CPU_] |624| 
        ADDB      XAR7,#1               ; [CPU_] |624| 
$C$L3:    
	.dwpsn	file "../Source/ad7738.c",line 622,column 10,is_stmt,isa 0
        MOV       T,*+XAR5[0]           ; [CPU_] |622| 
        MPYB      ACC,T,#152            ; [CPU_] |622| 
        ADDL      ACC,XAR6              ; [CPU_] |622| 
        ADDL      ACC,P                 ; [CPU_] |622| 
        ADDB      ACC,#126              ; [CPU_] |622| 
        MOVL      XAR4,ACC              ; [CPU_] |622| 
        MOVL      ACC,XAR3              ; [CPU_] |622| 
        CMPL      ACC,*+XAR4[0]         ; [CPU_] |622| 
        B         $C$L4,LEQ             ; [CPU_] |622| 
        ; branchcc occurs ; [] |622| 
        MOV       T,*+XAR5[0]           ; [CPU_] |622| 
        MPYB      ACC,T,#152            ; [CPU_] |622| 
        ADDL      ACC,P                 ; [CPU_] |622| 
        MOVL      XAR4,ACC              ; [CPU_] |622| 
        MOVB      XAR0,#98              ; [CPU_] |622| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_] |622| 
        ADDB      AL,#-2                ; [CPU_] |622| 
        CMP       AL,AR7                ; [CPU_] |622| 
        B         $C$L2,GT              ; [CPU_] |622| 
        ; branchcc occurs ; [] |622| 
$C$L4:    
        MOV       T,AR7                 ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 627,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 627 | out = in * slope[j].adw[i] + intercept[j].adw[i];                      
; 629 | // apply tare                                                          
;----------------------------------------------------------------------
        MPYB      ACC,T,#10             ; [CPU_] |627| 
        ADDL      ACC,XAR2              ; [CPU_] |627| 
        MOVL      XAR1,ACC              ; [CPU_] |627| 
        MOVL      ACC,XAR3              ; [CPU_] |627| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |627| 
        ; call occurs [#L$$TOFS] ; [] |627| 
        MOVL      XAR4,#_slope          ; [CPU_U] |627| 
        MOVL      XAR6,ACC              ; [CPU_] |627| 
        MOVL      ACC,XAR1              ; [CPU_] |627| 
        ADDL      XAR4,ACC              ; [CPU_] |627| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |627| 
        MOVL      *-SP[2],ACC           ; [CPU_] |627| 
        MOVL      ACC,XAR6              ; [CPU_] |627| 
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$99, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |627| 
        ; call occurs [#FS$$MPY] ; [] |627| 
        MOVL      XAR4,#_intercept      ; [CPU_U] |627| 
        MOVL      XAR6,ACC              ; [CPU_] |627| 
        MOVL      ACC,XAR1              ; [CPU_] |627| 
        ADDL      XAR4,ACC              ; [CPU_] |627| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |627| 
        MOVL      *-SP[2],ACC           ; [CPU_] |627| 
        MOVL      ACC,XAR6              ; [CPU_] |627| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_] |627| 
        ; call occurs [#FS$$ADD] ; [] |627| 
	.dwpsn	file "../Source/ad7738.c",line 630,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 630 | out -= ad7738_tare.adw[i];                                             
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_tare    ; [CPU_U] |630| 
	.dwpsn	file "../Source/ad7738.c",line 627,column 2,is_stmt,isa 0
        MOVL      XAR6,ACC              ; [CPU_] |627| 
	.dwpsn	file "../Source/ad7738.c",line 630,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 632 | return out;                                                            
;----------------------------------------------------------------------
        MOVL      ACC,XAR2              ; [CPU_] |630| 
        ADDL      XAR4,ACC              ; [CPU_] |630| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |630| 
        MOVL      *-SP[2],ACC           ; [CPU_] |630| 
        MOVL      ACC,XAR6              ; [CPU_] |630| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("FS$$SUB")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #FS$$SUB              ; [CPU_] |630| 
        ; call occurs [#FS$$SUB] ; [] |630| 
        SUBB      SP,#2                 ; [CPU_U] 
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
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$88, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x279)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	"secureRamFuncs"
	.clink
	.global	_scaleStoredData

$C$DW$103	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$103, DW_AT_name("scaleStoredData")
	.dwattr $C$DW$103, DW_AT_low_pc(_scaleStoredData)
	.dwattr $C$DW$103, DW_AT_high_pc(0x00)
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_scaleStoredData")
	.dwattr $C$DW$103, DW_AT_external
	.dwattr $C$DW$103, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$103, DW_AT_TI_begin_line(0x27b)
	.dwattr $C$DW$103, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$103, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/ad7738.c",line 635,column 28,is_stmt,address _scaleStoredData,isa 0

	.dwfde $C$DW$CIE, _scaleStoredData
;----------------------------------------------------------------------
; 635 | void scaleStoredData(void) {                                           
; 636 | long k;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _scaleStoredData              FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_scaleStoredData:
;* AR1   assigned to _k
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("k")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to $O$K12
;* AR3   assigned to $O$U9
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
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -10
        MOVW      DP,#_dataindex        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 638,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 638 | for (k = 0; k < dataindex; k++) {                                      
;----------------------------------------------------------------------
        MOVL      ACC,@_dataindex       ; [CPU_] |638| 
        B         $C$L6,LEQ             ; [CPU_] |638| 
        ; branchcc occurs ; [] |638| 
        MOVL      XAR3,#_databuf        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 638,column 7,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_] |638| 
	.dwpsn	file "../Source/ad7738.c",line 639,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 639 | ad7738_load.adw[0] = scaleData(databuf[k], 0);                         
;----------------------------------------------------------------------
        MOVL      XAR2,#_ad7738_load    ; [CPU_U] |639| 
$C$L5:    
        MOVL      ACC,*+XAR3[0]         ; [CPU_] |639| 
        MOVB      XAR4,#0               ; [CPU_] |639| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_scaleData")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_scaleData           ; [CPU_] |639| 
        ; call occurs [#_scaleData] ; [] |639| 
        MOVL      *+XAR2[0],ACC         ; [CPU_] |639| 
        MOVL      ACC,XAR1              ; [CPU_] |639| 
	.dwpsn	file "../Source/ad7738.c",line 640,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 640 | ad7738_load.vel[0] = 0.0000078125*((float)k);                          
;----------------------------------------------------------------------
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |640| 
        ; call occurs [#L$$TOFS] ; [] |640| 
        MOVL      XAR6,ACC              ; [CPU_] |640| 
        MOV       AL,#4719              ; [CPU_] |640| 
        MOV       AH,#14083             ; [CPU_] |640| 
        MOVL      *-SP[2],ACC           ; [CPU_] |640| 
        MOVL      ACC,XAR6              ; [CPU_] |640| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |640| 
        ; call occurs [#FS$$MPY] ; [] |640| 
        MOVL      *+XAR2[6],ACC         ; [CPU_] |640| 
	.dwpsn	file "../Source/ad7738.c",line 641,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 641 | ad7738_load.vel[1] = (float)(databuf[k] & 0x3);                        
;----------------------------------------------------------------------
        MOVL      ACC,*XAR3++           ; [CPU_] |641| 
        MOVB      AH,#0                 ; [CPU_] |641| 
        ANDB      AL,#0x03              ; [CPU_] |641| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |641| 
        ; call occurs [#L$$TOFS] ; [] |641| 
        MOVB      XAR0,#8               ; [CPU_] |641| 
	.dwpsn	file "../Source/ad7738.c",line 642,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 642 | prod_add(&ad7738_load);                                                
;----------------------------------------------------------------------
        MOVL      XAR4,XAR2             ; [CPU_] |642| 
	.dwpsn	file "../Source/ad7738.c",line 641,column 3,is_stmt,isa 0
        MOVL      *+XAR2[AR0],ACC       ; [CPU_] |641| 
	.dwpsn	file "../Source/ad7738.c",line 642,column 3,is_stmt,isa 0
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_prod_add")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_prod_add            ; [CPU_] |642| 
        ; call occurs [#_prod_add] ; [] |642| 
	.dwpsn	file "../Source/ad7738.c",line 638,column 14,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |638| 
        MOVW      DP,#_dataindex        ; [CPU_U] 
        MOVL      ACC,XAR1              ; [CPU_] |638| 
        CMPL      ACC,@_dataindex       ; [CPU_] |638| 
        B         $C$L5,LT              ; [CPU_] |638| 
        ; branchcc occurs ; [] |638| 
$C$L6:    
        SUBB      SP,#2                 ; [CPU_U] 
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
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$103, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$103, DW_AT_TI_end_line(0x284)
	.dwattr $C$DW$103, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$103

	.sect	".text"
	.clink
	.global	_toggleFastDataCollect

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("toggleFastDataCollect")
	.dwattr $C$DW$111, DW_AT_low_pc(_toggleFastDataCollect)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_toggleFastDataCollect")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x108)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 264,column 43,is_stmt,address _toggleFastDataCollect,isa 0

	.dwfde $C$DW$CIE, _toggleFastDataCollect
$C$DW$112	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$112, DW_AT_name("startstop")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_startstop")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 264 | void toggleFastDataCollect(int startstop) {                            
; 265 | long k;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _toggleFastDataCollect        FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_toggleFastDataCollect:
;* AL    assigned to _startstop
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("startstop")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_startstop")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg0]

;* AR4   assigned to $O$L1
;* AR5   assigned to $O$U17
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 266,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | if (startstop == 1) {                                                  
; 267 |         // enable fast interrupt, disable slow interrupt               
; 268 |         for (k = 0; k < DATASIZE; k++) {                               
; 269 |                 databuf[k] = 0;                                        
; 271 |         prod_init();                                                   
; 272 |         dataCollectTrigger = 0;                                        
; 273 |         numfastinterrupts = 0;                                         
; 274 |         fastslowDataState = 1;                                         
; 275 |         dataindex = 0;                                                 
; 276 |         led_set( LED2, LED_RED);                                // set
;     | red led as state indicator                                             
; 277 |         PieCtrlRegs.PIEIER1.bit.INTx4 = 1;              // enable fast
;     | interrupt                                                              
; 278 |         PieCtrlRegs.PIEIER1.bit.INTx7 = 0;              // disable slow
;     |  interrupt                                                             
; 280 |         ssr_set(0, 1);
;     |  // release magnet to drop sample                                      
;----------------------------------------------------------------------
        CMPB      AL,#1                 ; [CPU_] |266| 
        B         $C$L7,EQ              ; [CPU_] |266| 
        ; branchcc occurs ; [] |266| 
	.dwpsn	file "../Source/ad7738.c",line 281,column 9,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | } else if (startstop == 0) {                                           
; 282 |         // disable fast interrupt, enable slow interrupt               
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; [CPU_] |281| 
        B         $C$L9,NEQ             ; [CPU_] |281| 
        ; branchcc occurs ; [] |281| 
	.dwcfi	remember_state
        MOVW      DP,#_fastslowDataState ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 283,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 283 | fastslowDataState = 0;                                                 
; 285 | PieCtrlRegs.PIEIER1.bit.INTx7 = 1;              // enable slow interrup
;     | t                                                                      
; 286 | PieCtrlRegs.PIEIER1.bit.INTx4 = 0;              // disable fast interru
;     | pt                                                                     
;----------------------------------------------------------------------
        MOV       @_fastslowDataState,#0 ; [CPU_] |283| 
	.dwpsn	file "../Source/ad7738.c",line 288,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 288 | led_set( LED2, LED_OFF);                                // turn off red
;     |  led as state indicator                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |288| 
        MOVB      AH,#0                 ; [CPU_] |288| 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 285,column 3,is_stmt,isa 0
        OR        @_PieCtrlRegs+2,#0x0040 ; [CPU_] |285| 
	.dwpsn	file "../Source/ad7738.c",line 286,column 3,is_stmt,isa 0
        AND       @_PieCtrlRegs+2,#0xfff7 ; [CPU_] |286| 
	.dwpsn	file "../Source/ad7738.c",line 288,column 3,is_stmt,isa 0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_led_set")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #_led_set             ; [CPU_] |288| 
        ; call occurs [#_led_set] ; [] |288| 
	.dwpsn	file "../Source/ad7738.c",line 289,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 289 | ssr_set(0, 0);                                                  // reen
;     | gage magnet                                                            
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |289| 
        MOVB      AH,#0                 ; [CPU_] |289| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_ssr_set")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #_ssr_set             ; [CPU_] |289| 
        ; call occurs [#_ssr_set] ; [] |289| 
	.dwpsn	file "../Source/ad7738.c",line 290,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 290 | scaleStoredData();                                              // conv
;     | ert raw adc data -> scaled data                                        
;----------------------------------------------------------------------
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_scaleStoredData")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_scaleStoredData     ; [CPU_] |290| 
        ; call occurs [#_scaleStoredData] ; [] |290| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L7:    
        MOVL      XAR5,#_databuf        ; [CPU_U] 
        MOVL      XAR4,#59999           ; [CPU_U] 
$C$L8:    
	.dwpsn	file "../Source/ad7738.c",line 269,column 4,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_] |269| 
	.dwpsn	file "../Source/ad7738.c",line 268,column 15,is_stmt,isa 0
        SUBB      XAR4,#1               ; [CPU_] |268| 
	.dwpsn	file "../Source/ad7738.c",line 269,column 4,is_stmt,isa 0
        MOVL      *XAR5++,ACC           ; [CPU_] |269| 
	.dwpsn	file "../Source/ad7738.c",line 268,column 15,is_stmt,isa 0
        SUBB      ACC,#1                ; [CPU_] |268| 
        CMPL      ACC,XAR4              ; [CPU_] |268| 
        B         $C$L8,NEQ             ; [CPU_] |268| 
        ; branchcc occurs ; [] |268| 
	.dwpsn	file "../Source/ad7738.c",line 271,column 3,is_stmt,isa 0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_prod_init")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_prod_init           ; [CPU_] |271| 
        ; call occurs [#_prod_init] ; [] |271| 
        MOVW      DP,#_dataCollectTrigger ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 273,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_] |273| 
	.dwpsn	file "../Source/ad7738.c",line 272,column 3,is_stmt,isa 0
        MOV       @_dataCollectTrigger,#0 ; [CPU_] |272| 
	.dwpsn	file "../Source/ad7738.c",line 274,column 3,is_stmt,isa 0
        MOVB      @_fastslowDataState,#1,UNC ; [CPU_] |274| 
	.dwpsn	file "../Source/ad7738.c",line 273,column 3,is_stmt,isa 0
        MOVL      @_numfastinterrupts,ACC ; [CPU_] |273| 
	.dwpsn	file "../Source/ad7738.c",line 275,column 3,is_stmt,isa 0
        MOVL      @_dataindex,ACC       ; [CPU_] |275| 
	.dwpsn	file "../Source/ad7738.c",line 276,column 3,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |276| 
        MOVB      AH,#1                 ; [CPU_] |276| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_led_set")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_led_set             ; [CPU_] |276| 
        ; call occurs [#_led_set] ; [] |276| 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 280,column 3,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |280| 
        MOVB      AH,#1                 ; [CPU_] |280| 
	.dwpsn	file "../Source/ad7738.c",line 277,column 3,is_stmt,isa 0
        OR        @_PieCtrlRegs+2,#0x0008 ; [CPU_] |277| 
	.dwpsn	file "../Source/ad7738.c",line 278,column 3,is_stmt,isa 0
        AND       @_PieCtrlRegs+2,#0xffbf ; [CPU_] |278| 
	.dwpsn	file "../Source/ad7738.c",line 280,column 3,is_stmt,isa 0
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_ssr_set")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_ssr_set             ; [CPU_] |280| 
        ; call occurs [#_ssr_set] ; [] |280| 
$C$L9:    
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.global	_set_numSensors

$C$DW$122	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$122, DW_AT_name("set_numSensors")
	.dwattr $C$DW$122, DW_AT_low_pc(_set_numSensors)
	.dwattr $C$DW$122, DW_AT_high_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_set_numSensors")
	.dwattr $C$DW$122, DW_AT_external
	.dwattr $C$DW$122, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$122, DW_AT_TI_begin_line(0xe9)
	.dwattr $C$DW$122, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$122, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 233,column 30,is_stmt,address _set_numSensors,isa 0

	.dwfde $C$DW$CIE, _set_numSensors
$C$DW$123	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$123, DW_AT_name("num")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 233 | void set_numSensors(int num) {                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _set_numSensors               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_set_numSensors:
;* AL    assigned to _num
$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("num")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_num")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_numSpeedSensorsToUse ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 234,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 234 | numSpeedSensorsToUse = num;                                            
;----------------------------------------------------------------------
        MOV       @_numSpeedSensorsToUse,AL ; [CPU_] |234| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$122, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$122, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$122, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$122

	.sect	".text"
	.clink
	.global	_maf_rst

$C$DW$126	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$126, DW_AT_name("maf_rst")
	.dwattr $C$DW$126, DW_AT_low_pc(_maf_rst)
	.dwattr $C$DW$126, DW_AT_high_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_maf_rst")
	.dwattr $C$DW$126, DW_AT_external
	.dwattr $C$DW$126, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$126, DW_AT_TI_begin_line(0xee)
	.dwattr $C$DW$126, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$126, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 238,column 16,is_stmt,address _maf_rst,isa 0

	.dwfde $C$DW$CIE, _maf_rst
;----------------------------------------------------------------------
; 238 | void maf_rst() {                                                       
; 239 | int i, j;                                                              
; 241 | for (i = 0; i < CHS_MAX; i++) {                                        
; 242 |         for (j = 0; j < MAF_MAX; j++) {                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _maf_rst                      FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_maf_rst:
;* AR6   assigned to $O$L1
;* AR4   assigned to $O$U7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      XAR4,#_mafbuf         ; [CPU_U] 
        MOVL      XAR6,#4095            ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 243,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | mafbuf[i][j] = 0;                                                      
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |243| 
$C$L10:    
        MOVL      *XAR4++,ACC           ; [CPU_] |243| 
	.dwpsn	file "../Source/ad7738.c",line 242,column 15,is_stmt,isa 0
        BANZ      $C$L10,AR6--          ; [CPU_] |242| 
        ; branchcc occurs ; [] |242| 
        MOVW      DP,#_mafsum           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 245,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | mafsum[i] = 0;                                                         
; 246 | mafidx[i] = 0;                                                         
;----------------------------------------------------------------------
        ZAPA      ; [CPU_] |245| 
	.dwpsn	file "../Source/ad7738.c",line 247,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 247 | mafsize[i] = 0;                                                        
;----------------------------------------------------------------------
        MOV       @_mafsize,#0          ; [CPU_] |247| 
	.dwpsn	file "../Source/ad7738.c",line 245,column 3,is_stmt,isa 0
        MOVL      @_mafsum,P            ; [CPU_] |245| 
        MOVL      @_mafsum+2,ACC        ; [CPU_] |245| 
	.dwpsn	file "../Source/ad7738.c",line 246,column 3,is_stmt,isa 0
        MOV       @_mafidx,#0           ; [CPU_] |246| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$126, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$126, DW_AT_TI_end_line(0xf9)
	.dwattr $C$DW$126, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$126

	.sect	".text"
	.clink
	.global	_getspeedSens

$C$DW$128	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$128, DW_AT_name("getspeedSens")
	.dwattr $C$DW$128, DW_AT_low_pc(_getspeedSens)
	.dwattr $C$DW$128, DW_AT_high_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_getspeedSens")
	.dwattr $C$DW$128, DW_AT_external
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$128, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$128, DW_AT_TI_begin_line(0xa2)
	.dwattr $C$DW$128, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$128, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 162,column 20,is_stmt,address _getspeedSens,isa 0

	.dwfde $C$DW$CIE, _getspeedSens
;----------------------------------------------------------------------
; 162 | int getspeedSens() {                                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getspeedSens                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getspeedSens:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_speedSensor      ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 163,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | return speedSensor;                                                    
;----------------------------------------------------------------------
        MOV       AL,@_speedSensor      ; [CPU_] |163| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$128, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$128, DW_AT_TI_end_line(0xa4)
	.dwattr $C$DW$128, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$128

	.sect	".text"
	.clink
	.global	_get_numSensors

$C$DW$130	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$130, DW_AT_name("get_numSensors")
	.dwattr $C$DW$130, DW_AT_low_pc(_get_numSensors)
	.dwattr $C$DW$130, DW_AT_high_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_get_numSensors")
	.dwattr $C$DW$130, DW_AT_external
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$130, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$130, DW_AT_TI_begin_line(0xe5)
	.dwattr $C$DW$130, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$130, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 229,column 22,is_stmt,address _get_numSensors,isa 0

	.dwfde $C$DW$CIE, _get_numSensors
;----------------------------------------------------------------------
; 229 | int get_numSensors() {                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _get_numSensors               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_get_numSensors:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_numSpeedSensorsToUse ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 230,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | return numSpeedSensorsToUse;                                           
;----------------------------------------------------------------------
        MOV       AL,@_numSpeedSensorsToUse ; [CPU_] |230| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$130, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$130, DW_AT_TI_end_line(0xe7)
	.dwattr $C$DW$130, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$130

	.sect	".text"
	.clink
	.global	_get_maf_size

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("get_maf_size")
	.dwattr $C$DW$132, DW_AT_low_pc(_get_maf_size)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_get_maf_size")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$132, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0xe1)
	.dwattr $C$DW$132, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 225,column 26,is_stmt,address _get_maf_size,isa 0

	.dwfde $C$DW$CIE, _get_maf_size
$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("ch")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _get_maf_size                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_get_maf_size:
;* AR6   assigned to _ch
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("ch")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
;----------------------------------------------------------------------
; 225 | int get_maf_size(int ch) {                                             
;----------------------------------------------------------------------
        MOVZ      AR6,AL                ; [CPU_] |225| 
	.dwpsn	file "../Source/ad7738.c",line 226,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 226 | return mafidx[ch];                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#_mafidx         ; [CPU_U] |226| 
        SETC      SXM                   ; [CPU_] 
        MOVL      ACC,XAR4              ; [CPU_] |226| 
        ADD       ACC,AR6               ; [CPU_] |226| 
        MOVL      XAR4,ACC              ; [CPU_] |226| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |226| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0xe3)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$132

	.sect	".text"
	.clink
	.global	_getStartStop

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("getStartStop")
	.dwattr $C$DW$136, DW_AT_low_pc(_getStartStop)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_getStartStop")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$136, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x104)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 260,column 24,is_stmt,address _getStartStop,isa 0

	.dwfde $C$DW$CIE, _getStartStop
;----------------------------------------------------------------------
; 260 | int getStartStop(void) {                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getStartStop                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getStartStop:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_fastslowDataState ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 261,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 261 | return fastslowDataState;                                              
;----------------------------------------------------------------------
        MOV       AL,@_fastslowDataState ; [CPU_] |261| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x106)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.clink
	.global	_dac_setmode

$C$DW$138	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$138, DW_AT_name("dac_setmode")
	.dwattr $C$DW$138, DW_AT_low_pc(_dac_setmode)
	.dwattr $C$DW$138, DW_AT_high_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_dac_setmode")
	.dwattr $C$DW$138, DW_AT_external
	.dwattr $C$DW$138, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$138, DW_AT_TI_begin_line(0x17d)
	.dwattr $C$DW$138, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$138, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 381,column 28,is_stmt,address _dac_setmode,isa 0

	.dwfde $C$DW$CIE, _dac_setmode
$C$DW$139	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$139, DW_AT_name("mode")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$139, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 381 | void dac_setmode(int mode) {                                           
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
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("mode")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_dacsetvolt       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 382,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 382 | dacsetvolt = mode;                                                     
;----------------------------------------------------------------------
        MOV       @_dacsetvolt,AL       ; [CPU_] |382| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$138, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$138, DW_AT_TI_end_line(0x17f)
	.dwattr $C$DW$138, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$138

	.sect	"secureRamFuncs:retain"
	.retain
	.retainrefs
	.global	_cpu_xint1_isr

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("cpu_xint1_isr")
	.dwattr $C$DW$142, DW_AT_low_pc(_cpu_xint1_isr)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_cpu_xint1_isr")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0x571)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$142, DW_AT_TI_interrupt
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-16)
	.dwpsn	file "../Source/ad7738.c",line 1393,column 32,is_stmt,address _cpu_xint1_isr,isa 0

	.dwfde $C$DW$CIE, _cpu_xint1_isr
$C$DW$143	.dwtag  DW_TAG_variable
	.dwattr $C$DW$143, DW_AT_name("trigger")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_trigger$1")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_addr _trigger$1]

$C$DW$144	.dwtag  DW_TAG_variable
	.dwattr $C$DW$144, DW_AT_name("firsttime")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_firsttime$2")
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$144, DW_AT_location[DW_OP_addr _firsttime$2]

;----------------------------------------------------------------------
; 1393 | interrupt void cpu_xint1_isr() {                                       
; 1394 | volatile long adcdata;                                                 
; 1395 | static int trigger=0, firsttime=0;                                     
; 1396 | int speedsen1, speedsen2;                                              
; 1398 | GpioDataRegs.GPADAT.bit.GPIOA2 = 1;                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _cpu_xint1_isr                FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto, 12 SOE     *
;***************************************************************

_cpu_xint1_isr:
;* AH    assigned to $O$C1
;* AL    assigned to $O$y25
;* AL    assigned to _speedsen2
$C$DW$145	.dwtag  DW_TAG_variable
	.dwattr $C$DW$145, DW_AT_name("speedsen2")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_speedsen2")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg0]

$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("adcdata")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_adcdata")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$279)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_breg20 -2]

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
        MOVL      *SP++,XAR4            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 12, 6
	.dwcfi	save_reg_to_mem, 13, 7
	.dwcfi	cfa_offset, -8
        MOVL      *SP++,XAR5            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 14, 8
	.dwcfi	save_reg_to_mem, 15, 9
	.dwcfi	cfa_offset, -10
        MOVL      *SP++,XAR6            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 16, 10
	.dwcfi	save_reg_to_mem, 17, 11
	.dwcfi	cfa_offset, -12
        MOVL      *SP++,XAR7            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 18, 12
	.dwcfi	save_reg_to_mem, 19, 13
	.dwcfi	cfa_offset, -14
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -16
        SPM       0                     ; [CPU_] 
        CLRC      PAGE0,OVM             ; [CPU_] 
        CLRC      AMODE                 ; [CPU_] 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1399,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1399 | adcdata = xpi_adcdataread(ADCDATA + ADCREAD);                          
;----------------------------------------------------------------------
        MOVB      AL,#108               ; [CPU_] |1399| 
	.dwpsn	file "../Source/ad7738.c",line 1398,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0004 ; [CPU_] |1398| 
	.dwpsn	file "../Source/ad7738.c",line 1399,column 2,is_stmt,isa 0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_xpi_adcdataread")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #_xpi_adcdataread     ; [CPU_] |1399| 
        ; call occurs [#_xpi_adcdataread] ; [] |1399| 
        MOVW      DP,#_numfastinterrupts ; [CPU_U] 
        MOVL      *-SP[2],ACC           ; [CPU_] |1399| 
	.dwpsn	file "../Source/ad7738.c",line 1409,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1409 | if(numfastinterrupts == 0) {                                           
;----------------------------------------------------------------------
        MOVL      ACC,@_numfastinterrupts ; [CPU_] |1409| 
        B         $C$L11,NEQ            ; [CPU_] |1409| 
        ; branchcc occurs ; [] |1409| 
	.dwpsn	file "../Source/ad7738.c",line 1410,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1410 | firsttime = 1;                                                         
;----------------------------------------------------------------------
        MOVB      @_firsttime$2,#1,UNC  ; [CPU_] |1410| 
	.dwpsn	file "../Source/ad7738.c",line 1411,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1411 | trigger = 0;                                                           
;----------------------------------------------------------------------
        MOV       @_trigger$1,#0        ; [CPU_] |1411| 
$C$L11:    
	.dwpsn	file "../Source/ad7738.c",line 1413,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1413 | if(numSpeedSensorsToUse == 1) {                                        
; 1414 |         speedSensor = (DIGIN==speedSensorPolarity);                    
; 1415 |         if (speedSensor == 1  && trigger == 0 && firsttime == 1) {     
; 1416 |                 dropTime[0] = numfastinterrupts;                       
; 1417 |                 dataCollectTrigger = 1;                                
; 1418 |                 trigger = 1;                                           
; 1419 |                 firsttime = 0;                                         
; 1421 |         else if (speedSensor == 0 && trigger == 1) {                   
; 1422 |                 dropTime[1] = numfastinterrupts;                       
; 1423 |                 trigger = 0;                                           
; 1426 | else {                                                                 
; 1427 |         speedsen1 = ((*(unsigned int*)0x2000)&0x2);                    
;----------------------------------------------------------------------
        MOV       AL,@_numSpeedSensorsToUse ; [CPU_] |1413| 
        CMPB      AL,#1                 ; [CPU_] |1413| 
        B         $C$L13,EQ             ; [CPU_] |1413| 
        ; branchcc occurs ; [] |1413| 
	.dwpsn	file "../Source/ad7738.c",line 1428,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1428 | speedsen2 = ((*(unsigned int*)0x2000)&0x1);                            
;----------------------------------------------------------------------
        MOV       AH,*(0:0x2000)        ; [CPU_] |1428| 
        AND       AL,AH,#0x0001         ; [CPU_] |1428| 
	.dwpsn	file "../Source/ad7738.c",line 1430,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1430 | if(speedsen1 == 2) {                                                   
;----------------------------------------------------------------------
        TBIT      AH,#1                 ; [CPU_] |1430| 
        B         $C$L12,NTC            ; [CPU_] |1430| 
        ; branchcc occurs ; [] |1430| 
	.dwpsn	file "../Source/ad7738.c",line 1431,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1431 | dropTime[0] = numfastinterrupts;                                       
;----------------------------------------------------------------------
        MOVL      XAR6,@_numfastinterrupts ; [CPU_] |1431| 
	.dwpsn	file "../Source/ad7738.c",line 1432,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1432 | dataCollectTrigger = 1;                                                
;----------------------------------------------------------------------
        MOVB      @_dataCollectTrigger,#1,UNC ; [CPU_] |1432| 
	.dwpsn	file "../Source/ad7738.c",line 1433,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 1433 | trigger = 1;                                                           
;----------------------------------------------------------------------
        MOVB      @_trigger$1,#1,UNC    ; [CPU_] |1433| 
	.dwpsn	file "../Source/ad7738.c",line 1431,column 4,is_stmt,isa 0
        MOVL      @_dropTime,XAR6       ; [CPU_] |1431| 
$C$L12:    
	.dwpsn	file "../Source/ad7738.c",line 1435,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1435 | if(speedsen2 == 1 && trigger == 1) {                                   
; 1436 |         dropTime[1] = numfastinterrupts;                               
; 1437 |         trigger = 0;                                                   
;----------------------------------------------------------------------
        CMPB      AL,#1                 ; [CPU_] |1435| 
        B         $C$L14,EQ             ; [CPU_] |1435| 
        ; branchcc occurs ; [] |1435| 
        B         $C$L16,UNC            ; [CPU_] |1435| 
        ; branch occurs ; [] |1435| 
$C$L13:    
	.dwpsn	file "../Source/ad7738.c",line 1414,column 3,is_stmt,isa 0
        MOVU      ACC,@_speedSensorPolarity ; [CPU_] |1414| 
        MOVL      XAR6,ACC              ; [CPU_] |1414| 
        MOV       PH,#0                 ; [CPU_] |1414| 
        MOVB      XAR7,#0               ; [CPU_] |1414| 
        MOV       AL,*(0:0x2000)        ; [CPU_] |1414| 
        ANDB      AL,#0x01              ; [CPU_] |1414| 
        MOV       PL,AL                 ; [CPU_] |1414| 
        MOVL      ACC,XAR6              ; [CPU_] |1414| 
        CMPL      ACC,P                 ; [CPU_] |1414| 
        MOVB      XAR7,#1,EQ            ; [CPU_] |1414| 
        MOV       @_speedSensor,AR7     ; [CPU_] |1414| 
        MOV       AL,AR7                ; [CPU_] |1414| 
	.dwpsn	file "../Source/ad7738.c",line 1415,column 3,is_stmt,isa 0
        B         $C$L15,NEQ            ; [CPU_] |1415| 
        ; branchcc occurs ; [] |1415| 
$C$L14:    
	.dwpsn	file "../Source/ad7738.c",line 1421,column 8,is_stmt,isa 0
        MOV       AL,@_trigger$1        ; [CPU_] |1421| 
        CMPB      AL,#1                 ; [CPU_] |1421| 
        B         $C$L16,NEQ            ; [CPU_] |1421| 
        ; branchcc occurs ; [] |1421| 
	.dwpsn	file "../Source/ad7738.c",line 1422,column 4,is_stmt,isa 0
        MOVL      ACC,@_numfastinterrupts ; [CPU_] |1422| 
	.dwpsn	file "../Source/ad7738.c",line 1423,column 4,is_stmt,isa 0
        MOV       @_trigger$1,#0        ; [CPU_] |1423| 
	.dwpsn	file "../Source/ad7738.c",line 1422,column 4,is_stmt,isa 0
        MOVL      @_dropTime+2,ACC      ; [CPU_] |1422| 
	.dwpsn	file "../Source/ad7738.c",line 1423,column 4,is_stmt,isa 0
        B         $C$L16,UNC            ; [CPU_] |1423| 
        ; branch occurs ; [] |1423| 
$C$L15:    
	.dwpsn	file "../Source/ad7738.c",line 1415,column 3,is_stmt,isa 0
        MOV       AL,@_trigger$1        ; [CPU_] |1415| 
        B         $C$L16,NEQ            ; [CPU_] |1415| 
        ; branchcc occurs ; [] |1415| 
        MOV       AL,@_firsttime$2      ; [CPU_] |1415| 
        CMPB      AL,#1                 ; [CPU_] |1415| 
        B         $C$L16,NEQ            ; [CPU_] |1415| 
        ; branchcc occurs ; [] |1415| 
	.dwpsn	file "../Source/ad7738.c",line 1416,column 4,is_stmt,isa 0
        MOVL      ACC,@_numfastinterrupts ; [CPU_] |1416| 
	.dwpsn	file "../Source/ad7738.c",line 1417,column 4,is_stmt,isa 0
        MOVB      @_dataCollectTrigger,#1,UNC ; [CPU_] |1417| 
	.dwpsn	file "../Source/ad7738.c",line 1418,column 4,is_stmt,isa 0
        MOVB      @_trigger$1,#1,UNC    ; [CPU_] |1418| 
	.dwpsn	file "../Source/ad7738.c",line 1419,column 4,is_stmt,isa 0
        MOV       @_firsttime$2,#0      ; [CPU_] |1419| 
	.dwpsn	file "../Source/ad7738.c",line 1416,column 4,is_stmt,isa 0
        MOVL      @_dropTime,ACC        ; [CPU_] |1416| 
$C$L16:    
	.dwpsn	file "../Source/ad7738.c",line 1441,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1441 | if ((dataindex < DATASIZE) && (dataCollectTrigger == 1)) {             
; 1442 |         //databuf[dataindex++] = (adcdata & 0xFFFFFFFC) + speedsen1 + s
;     | peedsen2;                                                              
;----------------------------------------------------------------------
        MOVL      XAR4,#60000           ; [CPU_U] |1441| 
        MOVL      ACC,XAR4              ; [CPU_] |1441| 
        CMPL      ACC,@_dataindex       ; [CPU_] |1441| 
        B         $C$L17,LEQ            ; [CPU_] |1441| 
        ; branchcc occurs ; [] |1441| 
        MOV       AL,@_dataCollectTrigger ; [CPU_] |1441| 
        CMPB      AL,#1                 ; [CPU_] |1441| 
        B         $C$L17,NEQ            ; [CPU_] |1441| 
        ; branchcc occurs ; [] |1441| 
	.dwpsn	file "../Source/ad7738.c",line 1443,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1443 | databuf[dataindex++] = adcdata;                                        
;----------------------------------------------------------------------
        MOVL      ACC,@_dataindex       ; [CPU_] |1443| 
        MOVL      XAR4,#_databuf        ; [CPU_U] |1443| 
        LSL       ACC,1                 ; [CPU_] |1443| 
        ADDL      XAR4,ACC              ; [CPU_] |1443| 
        MOVL      ACC,*-SP[2]           ; [CPU_] |1443| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |1443| 
        MOVB      ACC,#1                ; [CPU_] |1443| 
        ADDL      @_dataindex,ACC       ; [CPU_] |1443| 
$C$L17:    
	.dwpsn	file "../Source/ad7738.c",line 1447,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1447 | numfastinterrupts++;                                                   
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_] |1447| 
        ADDL      @_numfastinterrupts,ACC ; [CPU_] |1447| 
	.dwpsn	file "../Source/ad7738.c",line 1449,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1449 | if (dataindex >= DATASIZE) {                                           
;----------------------------------------------------------------------
        MOVL      XAR4,#60000           ; [CPU_U] |1449| 
        MOVL      ACC,XAR4              ; [CPU_] |1449| 
        CMPL      ACC,@_dataindex       ; [CPU_] |1449| 
        B         $C$L18,GT             ; [CPU_] |1449| 
        ; branchcc occurs ; [] |1449| 
	.dwpsn	file "../Source/ad7738.c",line 1450,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 1450 | toggleFastDataCollect(0);                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |1450| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_toggleFastDataCollect")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_toggleFastDataCollect ; [CPU_] |1450| 
        ; call occurs [#_toggleFastDataCollect] ; [] |1450| 
$C$L18:    
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1453,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1453 | GpioDataRegs.GPADAT.bit.GPIOA2 = 0;                                    
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffb ; [CPU_] |1453| 
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -14
        MOVL      XAR7,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -12
	.dwcfi	restore_reg, 18
        MOVW      DP,#_PieCtrlRegs+1    ; [CPU_U] 
        MOVL      XAR6,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -10
	.dwcfi	restore_reg, 16
        MOVL      XAR5,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -8
	.dwcfi	restore_reg, 14
        MOVL      XAR4,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 12
        MOVL      XT,*--SP              ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 22
	.dwcfi	restore_reg, 21
        POP       AR1H:AR0H             ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 5
	.dwcfi	restore_reg, 7
	.dwpsn	file "../Source/ad7738.c",line 1455,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1455 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1                                 
; 1456 | ;                                                                      
;----------------------------------------------------------------------
        MOVB      @_PieCtrlRegs+1,#1,UNC ; [CPU_] |1455| 
        NASP      ; [CPU_] 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        IRET      ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0x5b2)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text"
	.clink
	.global	_ad7738_getpos

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("ad7738_getpos")
	.dwattr $C$DW$150, DW_AT_low_pc(_ad7738_getpos)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_ad7738_getpos")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$150, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x190)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 400,column 23,is_stmt,address _ad7738_getpos,isa 0

	.dwfde $C$DW$CIE, _ad7738_getpos
;----------------------------------------------------------------------
; 400 | float ad7738_getpos() {                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getpos                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getpos:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_ad7738_load+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 401,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 401 | return ad7738_load.pos[0];                                             
;----------------------------------------------------------------------
        MOVL      ACC,@_ad7738_load+2   ; [CPU_] |401| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x192)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

	.sect	"secureRamFuncs:retain"
	.retain
	.retainrefs
	.global	_cpu_timer0_isr

$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("cpu_timer0_isr")
	.dwattr $C$DW$152, DW_AT_low_pc(_cpu_timer0_isr)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_cpu_timer0_isr")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0x288)
	.dwattr $C$DW$152, DW_AT_TI_begin_column(0x10)
	.dwattr $C$DW$152, DW_AT_TI_interrupt
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(-30)
	.dwpsn	file "../Source/ad7738.c",line 648,column 33,is_stmt,address _cpu_timer0_isr,isa 0

	.dwfde $C$DW$CIE, _cpu_timer0_isr
;----------------------------------------------------------------------
; 648 | interrupt void cpu_timer0_isr() {                                      
; 650 | int i, j;                                                              
; 651 | long temp;                                                             
; 652 | int status;                                                            
; 653 | double limld;                                                          
; 655 | GpioDataRegs.GPADAT.bit.GPIOA2 = 1;                                    
; 657 | // ***** read adc *****                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _cpu_timer0_isr               FR SIZE:  28           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  8 Auto, 16 SOE     *
;***************************************************************

_cpu_timer0_isr:
;* AR1   assigned to $O$C2
;* AL    assigned to $O$C3
;* AR6   assigned to $O$C4
;* AR4   assigned to $O$C5
;* AR1   assigned to $O$U30
;* AR2   assigned to $O$U36
;* AR3   assigned to $O$U45
;* AL    assigned to $O$U37
;* AR5   assigned to $O$K64
;* AR1   assigned to $O$K52
;* AR4   assigned to $O$K92
;* AR6   assigned to $O$U100
;* AR7   assigned to _j
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("j")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg18]

;* AR4   assigned to $O$K68
;* AR4   assigned to $O$K68
;* AR1   assigned to $O$K4
;* AR2   assigned to $O$K4
;* AR1   assigned to $O$K28
;* AR1   assigned to $O$K28
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
        ADDB      SP,#12                ; [CPU_U] 
	.dwcfi	cfa_offset, -30
        SPM       0                     ; [CPU_] 
        CLRC      PAGE0,OVM             ; [CPU_] 
        CLRC      AMODE                 ; [CPU_] 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 658,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 658 | ad7738_cnt.adc[0] = xpi_adcdataread(ADCDATA + ADCREAD);                
;----------------------------------------------------------------------
        MOVB      AL,#108               ; [CPU_] |658| 
	.dwpsn	file "../Source/ad7738.c",line 655,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0004 ; [CPU_] |655| 
	.dwpsn	file "../Source/ad7738.c",line 658,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 660 | // ***** read the encoders *****                                       
; 661 | // channel 1                                                           
;----------------------------------------------------------------------
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_xpi_adcdataread")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #_xpi_adcdataread     ; [CPU_] |658| 
        ; call occurs [#_xpi_adcdataread] ; [] |658| 
        MOVL      XAR2,#_BITMAP         ; [CPU_U] 
        ADDB      XAR2,#1               ; [CPU_] 
        MOVW      DP,#_ad7738_cnt       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 662,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 662 | enccnt[0] += (int) EvaRegs.T2CNT;       // add the count for the interv
;     | al                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#_enccnt         ; [CPU_U] |662| 
        SETC      SXM                   ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 658,column 2,is_stmt,isa 0
        MOVL      @_ad7738_cnt,ACC      ; [CPU_] |658| 
	.dwpsn	file "../Source/ad7738.c",line 662,column 2,is_stmt,isa 0
        MOVL      XAR5,XAR4             ; [CPU_] |662| 
        MOVL      XAR1,#_ad7738_load    ; [CPU_U] 
        MOVW      DP,#_EvaRegs+5        ; [CPU_U] 
        MOV       ACC,@_EvaRegs+5       ; [CPU_] |662| 
        ADDL      *+XAR5[0],ACC         ; [CPU_] |662| 
        ADDB      XAR1,#2               ; [CPU_] 
        MOVL      XAR3,#_ad7738_tare+2  ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 663,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 663 | EvaRegs.T2CNT = 0;                                      // reset the co
;     | unt                                                                    
; 665 | // channel 2                                                           
;----------------------------------------------------------------------
        MOV       @_EvaRegs+5,#0        ; [CPU_] |663| 
        MOVL      XAR5,#_slope          ; [CPU_U] 
        MOVW      DP,#_EvbRegs+5        ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 666,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 666 | enccnt[1] += (int) EvbRegs.T4CNT;       // add the count for the interv
;     | al                                                                     
;----------------------------------------------------------------------
        MOV       ACC,@_EvbRegs+5       ; [CPU_] |666| 
        ADDL      *+XAR4[2],ACC         ; [CPU_] |666| 
        MOV       *-SP[5],#1            ; [CPU_] 
        MOVL      *-SP[12],XAR5         ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 667,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 667 | EvbRegs.T4CNT = 0;                                      // reset the co
;     | unt                                                                    
; 669 | // convert encoder count to inch                                       
; 670 | for (i = 0; i < ENC_MAX; i++) {                                        
;----------------------------------------------------------------------
        MOV       @_EvbRegs+5,#0        ; [CPU_] |667| 
        MOVL      *-SP[10],XAR4         ; [CPU_] 
        ADDB      XAR5,#2               ; [CPU_] 
        MOVL      *-SP[8],XAR5          ; [CPU_] 
$C$L19:    
        MOVL      XAR4,*-SP[10]         ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 671,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 671 | ad7738_load.pos[i] = enccnt[i] * slope[0].pos[i];                      
; 673 | // *** tare here ***                                                   
;----------------------------------------------------------------------
        MOVL      ACC,*XAR4++           ; [CPU_] |671| 
        MOVL      *-SP[10],XAR4         ; [CPU_] |671| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |671| 
        ; call occurs [#L$$TOFS] ; [] |671| 
        MOVL      XAR4,*-SP[8]          ; [CPU_] |671| 
        MOVL      XAR6,*XAR4++          ; [CPU_] |671| 
        MOVL      *-SP[8],XAR4          ; [CPU_] |671| 
        MOVL      *-SP[2],XAR6          ; [CPU_] |671| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |671| 
        ; call occurs [#FS$$MPY] ; [] |671| 
        MOVW      DP,#_tare_reset       ; [CPU_U] 
        MOVL      *+XAR1[0],ACC         ; [CPU_] |671| 
	.dwpsn	file "../Source/ad7738.c",line 674,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 674 | if (tare_reset & BITMAP[CHS_MAX + i]) { // new tare value              
; 675 |         tare_reset &= ~BITMAP[CHS_MAX + i];                            
; 676 |         ad7738_tare.pos[i] = ad7738_load.pos[i];                       
; 677 |         ad7738_load.pos[i] = 0;                                        
; 678 | } else {                                        // apply tare          
;----------------------------------------------------------------------
        MOV       AL,*XAR2++            ; [CPU_] |674| 
        MOV       AH,AL                 ; [CPU_] |674| 
        AND       AH,@_tare_reset       ; [CPU_] |674| 
        B         $C$L20,NEQ            ; [CPU_] |674| 
        ; branchcc occurs ; [] |674| 
	.dwpsn	file "../Source/ad7738.c",line 679,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 679 | ad7738_load.pos[i] -= ad7738_tare.pos[i];                              
; 683 | i = 0;                                                                 
; 684 | // no error on adc reading                                             
; 685 | // *** moving average filter ***                                       
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR3[0]         ; [CPU_] |679| 
        MOVL      *-SP[2],ACC           ; [CPU_] |679| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |679| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("FS$$SUB")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #FS$$SUB              ; [CPU_] |679| 
        ; call occurs [#FS$$SUB] ; [] |679| 
        B         $C$L21,UNC            ; [CPU_] |679| 
        ; branch occurs ; [] |679| 
$C$L20:    
	.dwpsn	file "../Source/ad7738.c",line 675,column 4,is_stmt,isa 0
        NOT       AL                    ; [CPU_] |675| 
        AND       @_tare_reset,AL       ; [CPU_] |675| 
	.dwpsn	file "../Source/ad7738.c",line 676,column 4,is_stmt,isa 0
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |676| 
        MOVL      *+XAR3[0],ACC         ; [CPU_] |676| 
	.dwpsn	file "../Source/ad7738.c",line 677,column 4,is_stmt,isa 0
        MOV       AL,#0                 ; [CPU_] |677| 
        MOV       AH,#0                 ; [CPU_] |677| 
$C$L21:    
        MOVL      *+XAR1[0],ACC         ; [CPU_] |677| 
	.dwpsn	file "../Source/ad7738.c",line 670,column 14,is_stmt,isa 0
        MOVZ      AR7,*-SP[5]           ; [CPU_] |670| 
        ADDB      XAR3,#2               ; [CPU_] |670| 
        ADDB      XAR1,#2               ; [CPU_] |670| 
        SUBB      XAR7,#1               ; [CPU_U] |670| 
        CMP       AR7,#-1               ; [CPU_] |670| 
        MOV       *-SP[5],AR7           ; [CPU_] |670| 
        B         $C$L19,NEQ            ; [CPU_] |670| 
        ; branchcc occurs ; [] |670| 
	.dwpsn	file "../Source/ad7738.c",line 686,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 686 | if (conf_data.filter > 1) {                                            
; 687 |         // first calculate the diff between the oldest and newset      
;----------------------------------------------------------------------
        MOVL      XAR1,#_conf_data      ; [CPU_U] |686| 
        MOVB      XAR0,#38              ; [CPU_] |686| 
        MOV       AL,*+XAR1[AR0]        ; [CPU_] |686| 
        CMPB      AL,#1                 ; [CPU_] |686| 
        B         $C$L27,LOS            ; [CPU_] |686| 
        ; branchcc occurs ; [] |686| 
	.dwpsn	file "../Source/ad7738.c",line 688,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 688 | if (mafsize[i] < conf_data.filter) {    // moving window not full      
;----------------------------------------------------------------------
        MOVB      XAR0,#38              ; [CPU_] |688| 
        MOVW      DP,#_mafsize          ; [CPU_U] 
        MOV       AL,*+XAR1[AR0]        ; [CPU_] |688| 
        CMP       AL,@_mafsize          ; [CPU_] |688| 
        B         $C$L24,LOS            ; [CPU_] |688| 
        ; branchcc occurs ; [] |688| 
	.dwpsn	file "../Source/ad7738.c",line 689,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 689 | if (mafsize[i] > 0) {                                                  
; 690 |         mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][0];// diff from curr
;     | ent to the first (oldest)                                              
; 691 | } else {                                                               
;----------------------------------------------------------------------
        MOV       AL,@_mafsize          ; [CPU_] |689| 
        B         $C$L22,NEQ            ; [CPU_] |689| 
        ; branchcc occurs ; [] |689| 
	.dwpsn	file "../Source/ad7738.c",line 692,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 692 | mafdiff[i] = 0;                                                        
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |692| 
        MOVL      XAR5,#_mafbuf         ; [CPU_U] 
        B         $C$L23,UNC            ; [CPU_] |692| 
        ; branch occurs ; [] |692| 
$C$L22:    
	.dwpsn	file "../Source/ad7738.c",line 690,column 5,is_stmt,isa 0
        MOVL      XAR5,#_mafbuf         ; [CPU_U] |690| 
        MOVL      ACC,@_ad7738_cnt      ; [CPU_] |690| 
        SUBL      ACC,*+XAR5[0]         ; [CPU_] |690| 
$C$L23:    
        MOVL      @_mafdiff,ACC         ; [CPU_] |690| 
	.dwpsn	file "../Source/ad7738.c",line 694,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 694 | mafsize[i]++;                           // one more added              
;----------------------------------------------------------------------
        INC       @_mafsize             ; [CPU_] |694| 
        MOVL      XAR4,#_mafidx         ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 695,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 695 | } else {                                // moving window full          
;----------------------------------------------------------------------
        B         $C$L25,UNC            ; [CPU_] |695| 
        ; branch occurs ; [] |695| 
$C$L24:    
	.dwpsn	file "../Source/ad7738.c",line 696,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 696 | mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][mafidx[i]];                 
;----------------------------------------------------------------------
        MOVL      XAR4,#_mafidx         ; [CPU_U] |696| 
        CLRC      SXM                   ; [CPU_] 
        MOVL      XAR5,#_mafbuf         ; [CPU_U] |696| 
        MOV       ACC,*+XAR4[0] << 1    ; [CPU_] |696| 
        ADDL      ACC,XAR5              ; [CPU_] |696| 
        MOVL      XAR6,ACC              ; [CPU_] |696| 
	.dwpsn	file "../Source/ad7738.c",line 697,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 697 | mafsum[i] -= mafbuf[i][mafidx[i]];      // remove the oldest point     
;----------------------------------------------------------------------
        MOVL      P,XAR7                ; [CPU_] |697| 
	.dwpsn	file "../Source/ad7738.c",line 696,column 4,is_stmt,isa 0
        MOVL      ACC,@_ad7738_cnt      ; [CPU_] |696| 
        SUBL      ACC,*+XAR6[0]         ; [CPU_] |696| 
        MOVL      @_mafdiff,ACC         ; [CPU_] |696| 
	.dwpsn	file "../Source/ad7738.c",line 697,column 4,is_stmt,isa 0
        MOVL      ACC,*+XAR6[0]         ; [CPU_] |697| 
        ASR64     ACC:P,16              ; [CPU_] |697| 
        ASR64     ACC:P,16              ; [CPU_] |697| 
        MOVL      XAR7,P                ; [CPU_] |697| 
        MOVL      XAR6,ACC              ; [CPU_] |697| 
        MOVL      P,@_mafsum            ; [CPU_] |697| 
        MOVL      ACC,@_mafsum+2        ; [CPU_] |697| 
        SUBUL     P,XAR7                ; [CPU_] |697| 
        MOVL      @_mafsum,P            ; [CPU_] |697| 
        SUBBL     ACC,XAR6              ; [CPU_] |697| 
        MOVL      @_mafsum+2,ACC        ; [CPU_] |697| 
$C$L25:    
	.dwpsn	file "../Source/ad7738.c",line 700,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 700 | if (labs(mafdiff[i]) > adcdiff) {                                      
;----------------------------------------------------------------------
        MOVL      ACC,@_mafdiff         ; [CPU_] |700| 
        ABS       ACC                   ; [CPU_] |700| 
        CMPL      ACC,@_adcdiff         ; [CPU_] |700| 
        B         $C$L26,LEQ            ; [CPU_] |700| 
        ; branchcc occurs ; [] |700| 
	.dwpsn	file "../Source/ad7738.c",line 701,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 701 | mafsum[i] = 0;                                                         
;----------------------------------------------------------------------
        ZAPA      ; [CPU_] |701| 
        MOVL      @_mafsum,P            ; [CPU_] |701| 
        MOVL      @_mafsum+2,ACC        ; [CPU_] |701| 
	.dwpsn	file "../Source/ad7738.c",line 702,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 702 | mafidx[i] = 0;                                                         
;----------------------------------------------------------------------
        MOV       *+XAR4[0],#0          ; [CPU_] |702| 
	.dwpsn	file "../Source/ad7738.c",line 703,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 703 | mafsize[i] = 1;                                                        
;----------------------------------------------------------------------
        MOVB      @_mafsize,#1,UNC      ; [CPU_] |703| 
$C$L26:    
	.dwpsn	file "../Source/ad7738.c",line 706,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 706 | mafbuf[i][mafidx[i]] = ad7738_cnt.adc[i];// load the new value to buffe
;     | r                                                                      
;----------------------------------------------------------------------
        MOVL      XAR1,#_ad7738_cnt     ; [CPU_U] |706| 
        CLRC      SXM                   ; [CPU_] 
        MOVL      XAR6,*+XAR1[0]        ; [CPU_] |706| 
        MOV       ACC,*+XAR4[0] << 1    ; [CPU_] |706| 
        ADDL      ACC,XAR5              ; [CPU_] |706| 
        MOVL      XAR4,ACC              ; [CPU_] |706| 
        MOVL      *+XAR4[0],XAR6        ; [CPU_] |706| 
	.dwpsn	file "../Source/ad7738.c",line 707,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 707 | mafsum[i] += ad7738_cnt.adc[i];         // add the newest              
;----------------------------------------------------------------------
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |707| 
        ASR64     ACC:P,16              ; [CPU_] |707| 
        ASR64     ACC:P,16              ; [CPU_] |707| 
        ADDUL     P,@_mafsum            ; [CPU_] |707| 
        ADDCL     ACC,@_mafsum+2        ; [CPU_] |707| 
        MOVL      @_mafsum,P            ; [CPU_] |707| 
        MOVL      @_mafsum+2,ACC        ; [CPU_] |707| 
	.dwpsn	file "../Source/ad7738.c",line 709,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 709 | ad7738_cnt.adc[i] = mafsum[i] / mafsize[i];             // calculate th
;     | e average                                                              
;----------------------------------------------------------------------
        MOVU      ACC,@_mafsize         ; [CPU_] |709| 
        MOVL      P,@_mafsum            ; [CPU_] |709| 
        MOVL      *-SP[4],ACC           ; [CPU_] |709| 
        MOV       *-SP[2],#0            ; [CPU_] |709| 
        MOVL      ACC,@_mafsum+2        ; [CPU_] |709| 
        MOV       *-SP[1],#0            ; [CPU_] |709| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("LL$$DIV")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #LL$$DIV              ; [CPU_] |709| 
        ; call occurs [#LL$$DIV] ; [] |709| 
	.dwpsn	file "../Source/ad7738.c",line 711,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 711 | mafidx[i]++;                            // point to the next cell      
;----------------------------------------------------------------------
        MOVL      XAR4,#_mafidx         ; [CPU_U] |711| 
	.dwpsn	file "../Source/ad7738.c",line 712,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 712 | if (mafidx[i] >= conf_data.filter) {                                   
;----------------------------------------------------------------------
        MOVB      XAR0,#38              ; [CPU_] |712| 
	.dwpsn	file "../Source/ad7738.c",line 709,column 3,is_stmt,isa 0
        MOVL      *+XAR1[0],P           ; [CPU_] |709| 
	.dwpsn	file "../Source/ad7738.c",line 711,column 3,is_stmt,isa 0
        INC       *+XAR4[0]             ; [CPU_] |711| 
	.dwpsn	file "../Source/ad7738.c",line 712,column 3,is_stmt,isa 0
        MOVL      XAR1,#_conf_data      ; [CPU_U] |712| 
	.dwpsn	file "../Source/ad7738.c",line 711,column 3,is_stmt,isa 0
        MOV       AL,*+XAR4[0]          ; [CPU_] |711| 
	.dwpsn	file "../Source/ad7738.c",line 712,column 3,is_stmt,isa 0
        CMP       AL,*+XAR1[AR0]        ; [CPU_] |712| 
        B         $C$L27,LO             ; [CPU_] |712| 
        ; branchcc occurs ; [] |712| 
	.dwpsn	file "../Source/ad7738.c",line 713,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 713 | mafidx[i] = 0;                  // loop back                           
; 717 | // *** heat correction here ***                                        
;----------------------------------------------------------------------
        MOV       *+XAR4[0],#0          ; [CPU_] |713| 
$C$L27:    
	.dwpsn	file "../Source/ad7738.c",line 718,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 718 | ad7738_cnt.adc[i] *= hfactor.adw[i];                                   
; 720 | // *** keep a copy for raw reading ***                                 
; 721 | ad7738_raw.adc[i] = ad7738_cnt.adc[i];                                 
; 723 | // *** apply cal scales ***                                            
; 724 | j = 0;                                                                 
;----------------------------------------------------------------------
        MOVL      XAR2,#_ad7738_cnt     ; [CPU_U] |718| 
        MOVL      ACC,*+XAR2[0]         ; [CPU_] |718| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |718| 
        ; call occurs [#L$$TOFS] ; [] |718| 
        MOVW      DP,#_hfactor          ; [CPU_U] 
        MOVL      XAR6,@_hfactor        ; [CPU_] |718| 
        MOVL      *-SP[2],XAR6          ; [CPU_] |718| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |718| 
        ; call occurs [#FS$$MPY] ; [] |718| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |718| 
        ; call occurs [#FS$$TOL] ; [] |718| 
	.dwpsn	file "../Source/ad7738.c",line 725,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 725 | if (conf_data.sensor[conf_data.ch[i].ci].points > 2) {                 
;----------------------------------------------------------------------
        MOVL      XAR4,XAR1             ; [CPU_] |725| 
        MOVW      DP,#_ad7738_raw       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 718,column 2,is_stmt,isa 0
        MOVL      *+XAR2[0],ACC         ; [CPU_] |718| 
	.dwpsn	file "../Source/ad7738.c",line 721,column 2,is_stmt,isa 0
        MOVL      ACC,*+XAR2[0]         ; [CPU_] |721| 
	.dwpsn	file "../Source/ad7738.c",line 725,column 2,is_stmt,isa 0
        ADDB      XAR4,#42              ; [CPU_] |725| 
	.dwpsn	file "../Source/ad7738.c",line 721,column 2,is_stmt,isa 0
        MOVL      @_ad7738_raw,ACC      ; [CPU_] |721| 
	.dwpsn	file "../Source/ad7738.c",line 725,column 2,is_stmt,isa 0
        MOV       T,*+XAR4[0]           ; [CPU_] |725| 
        MPYB      ACC,T,#152            ; [CPU_] |725| 
        ADDL      ACC,XAR1              ; [CPU_] |725| 
        MOVL      XAR5,ACC              ; [CPU_] |725| 
	.dwpsn	file "../Source/ad7738.c",line 724,column 2,is_stmt,isa 0
        MOVB      XAR7,#0               ; [CPU_] |724| 
	.dwpsn	file "../Source/ad7738.c",line 725,column 2,is_stmt,isa 0
        MOVB      XAR0,#98              ; [CPU_] |725| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_] |725| 
        CMPB      AL,#2                 ; [CPU_] |725| 
        B         $C$L30,LEQ            ; [CPU_] |725| 
        ; branchcc occurs ; [] |725| 
        MOVB      XAR6,#0               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 726,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 726 | while (ad7738_cnt.adc[i]                                               
; 727 |                 > conf_data.sensor[conf_data.ch[i].ci].adc[j + 1]      
; 728 |                 && j < conf_data.sensor[conf_data.ch[i].ci].points - 2)
;     |  {                                                                     
;----------------------------------------------------------------------
        B         $C$L29,UNC            ; [CPU_] |726| 
        ; branch occurs ; [] |726| 
$C$L28:    
	.dwpsn	file "../Source/ad7738.c",line 729,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 729 | j++;                                                                   
;----------------------------------------------------------------------
        ADDB      XAR6,#2               ; [CPU_] |729| 
        ADDB      XAR7,#1               ; [CPU_] |729| 
$C$L29:    
	.dwpsn	file "../Source/ad7738.c",line 726,column 10,is_stmt,isa 0
        MOV       T,*+XAR4[0]           ; [CPU_] |726| 
        MPYB      ACC,T,#152            ; [CPU_] |726| 
        ADDL      ACC,XAR6              ; [CPU_] |726| 
        ADDL      ACC,XAR1              ; [CPU_] |726| 
        MOVL      XAR5,ACC              ; [CPU_] |726| 
        MOVB      XAR0,#126             ; [CPU_] |726| 
        MOVW      DP,#_ad7738_cnt       ; [CPU_U] 
        MOVL      ACC,*+XAR5[AR0]       ; [CPU_] |726| 
        CMPL      ACC,@_ad7738_cnt      ; [CPU_] |726| 
        B         $C$L30,GEQ            ; [CPU_] |726| 
        ; branchcc occurs ; [] |726| 
        MOV       T,*+XAR4[0]           ; [CPU_] |726| 
        MPYB      ACC,T,#152            ; [CPU_] |726| 
        ADDL      ACC,XAR1              ; [CPU_] |726| 
        MOVL      XAR5,ACC              ; [CPU_] |726| 
        MOVB      XAR0,#98              ; [CPU_] |726| 
        MOV       AL,*+XAR5[AR0]        ; [CPU_] |726| 
        ADDB      AL,#-2                ; [CPU_] |726| 
        CMP       AL,AR7                ; [CPU_] |726| 
        B         $C$L28,GT             ; [CPU_] |726| 
        ; branchcc occurs ; [] |726| 
$C$L30:    
        MOV       T,AR7                 ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 732,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 732 | ad7738_load.adw[i] = ad7738_cnt.adc[i] * slope[j].adw[i]               
; 733 |                 + intercept[j].adw[i];                                 
; 735 | // *** tare here ***                                                   
;----------------------------------------------------------------------
        MPYB      ACC,T,#10             ; [CPU_] |732| 
        MOVL      XAR1,ACC              ; [CPU_] |732| 
        MOVL      ACC,@_ad7738_cnt      ; [CPU_] |732| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |732| 
        ; call occurs [#L$$TOFS] ; [] |732| 
        MOVL      XAR4,XAR1             ; [CPU_] |732| 
        MOVL      XAR6,ACC              ; [CPU_] |732| 
        MOVL      ACC,*-SP[12]          ; [CPU_] |732| 
        ADDL      XAR4,ACC              ; [CPU_] |732| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |732| 
        MOVL      *-SP[2],ACC           ; [CPU_] |732| 
        MOVL      ACC,XAR6              ; [CPU_] |732| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |732| 
        ; call occurs [#FS$$MPY] ; [] |732| 
        MOVL      XAR4,#_intercept      ; [CPU_U] |732| 
        MOVL      XAR6,ACC              ; [CPU_] |732| 
        MOVL      ACC,XAR1              ; [CPU_] |732| 
        ADDL      XAR4,ACC              ; [CPU_] |732| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |732| 
        MOVL      *-SP[2],ACC           ; [CPU_] |732| 
        MOVL      ACC,XAR6              ; [CPU_] |732| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_] |732| 
        ; call occurs [#FS$$ADD] ; [] |732| 
        MOVL      XAR1,#_ad7738_load    ; [CPU_U] |732| 
        MOVL      XAR4,XAR1             ; [CPU_] |732| 
        MOVW      DP,#_tare_reset       ; [CPU_U] 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |732| 
	.dwpsn	file "../Source/ad7738.c",line 736,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 736 | if (tare_reset & BITMAP[i]) {   // new tare value                      
; 737 |         tare_reset &= ~BITMAP[i];                                      
; 738 |         ad7738_tare.adw[i] = ad7738_load.adw[i];                       
; 739 |         ad7738_load.adw[i] = 0;                                        
; 740 | } else {                                // apply tare                  
;----------------------------------------------------------------------
        MOV       AL,@_tare_reset       ; [CPU_] |736| 
        MOVW      DP,#_BITMAP           ; [CPU_U] 
        AND       AL,@_BITMAP           ; [CPU_] |736| 
        B         $C$L31,NEQ            ; [CPU_] |736| 
        ; branchcc occurs ; [] |736| 
        MOVW      DP,#_ad7738_tare      ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 741,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 741 | ad7738_load.adw[i] -= ad7738_tare.adw[i];                              
;----------------------------------------------------------------------
        MOVL      ACC,@_ad7738_tare     ; [CPU_] |741| 
        MOVL      *-SP[2],ACC           ; [CPU_] |741| 
        MOVL      ACC,*+XAR1[0]         ; [CPU_] |741| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("FS$$SUB")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #FS$$SUB              ; [CPU_] |741| 
        ; call occurs [#FS$$SUB] ; [] |741| 
        MOVL      XAR4,XAR1             ; [CPU_] |741| 
        B         $C$L32,UNC            ; [CPU_] |741| 
        ; branch occurs ; [] |741| 
$C$L31:    
	.dwpsn	file "../Source/ad7738.c",line 737,column 3,is_stmt,isa 0
        MOV       AL,@_BITMAP           ; [CPU_] |737| 
        MOVW      DP,#_tare_reset       ; [CPU_U] 
        NOT       AL                    ; [CPU_] |737| 
        AND       @_tare_reset,AL       ; [CPU_] |737| 
        MOVW      DP,#_ad7738_tare      ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 738,column 3,is_stmt,isa 0
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |738| 
        MOVL      @_ad7738_tare,ACC     ; [CPU_] |738| 
	.dwpsn	file "../Source/ad7738.c",line 739,column 3,is_stmt,isa 0
        MOV       AL,#0                 ; [CPU_] |739| 
        MOV       AH,#0                 ; [CPU_] |739| 
$C$L32:    
        MOVL      *+XAR4[0],ACC         ; [CPU_] |739| 
        MOVW      DP,#_rawrdy           ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 744,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 744 | rawrdy = 1;                                                            
;----------------------------------------------------------------------
        MOVB      @_rawrdy,#1,UNC       ; [CPU_] |744| 
	.dwpsn	file "../Source/ad7738.c",line 745,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 745 | speedSensor =  (DIGIN==speedSensorPolarity);                           
; 747 | // *** monitor data check ***                                          
;----------------------------------------------------------------------
        MOV       PH,#0                 ; [CPU_] |745| 
        MOVB      XAR7,#0               ; [CPU_] |745| 
        MOVU      ACC,@_speedSensorPolarity ; [CPU_] |745| 
        MOVL      XAR6,ACC              ; [CPU_] |745| 
        MOV       AL,*(0:0x2000)        ; [CPU_] |745| 
        ANDB      AL,#0x01              ; [CPU_] |745| 
        MOV       PL,AL                 ; [CPU_] |745| 
        MOVL      ACC,XAR6              ; [CPU_] |745| 
        CMPL      ACC,P                 ; [CPU_] |745| 
        MOVB      XAR7,#1,EQ            ; [CPU_] |745| 
	.dwpsn	file "../Source/ad7738.c",line 748,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 748 | mon_cnt++;                                                             
;----------------------------------------------------------------------
        INC       @_mon_cnt             ; [CPU_] |748| 
	.dwpsn	file "../Source/ad7738.c",line 745,column 2,is_stmt,isa 0
        MOV       @_speedSensor,AR7     ; [CPU_] |745| 
	.dwpsn	file "../Source/ad7738.c",line 748,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 749 | if (mon_cnt > MON_RATE) {                                              
;----------------------------------------------------------------------
        CMP       @_mon_cnt,#1000       ; [CPU_] |748| 
        B         $C$L33,LEQ            ; [CPU_] |748| 
        ; branchcc occurs ; [] |748| 
	.dwpsn	file "../Source/ad7738.c",line 750,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 750 | mon_cnt = 0;                                                           
;----------------------------------------------------------------------
        MOV       @_mon_cnt,#0          ; [CPU_] |750| 
	.dwpsn	file "../Source/ad7738.c",line 751,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 751 | memcpy((void*) &ad7738_mon, (void*) &ad7738_load, sizeof(adcwt_t));    
;----------------------------------------------------------------------
        MOVL      XAR7,XAR1             ; [CPU_] |751| 
        MOVL      XAR4,#_ad7738_mon     ; [CPU_U] |751| 
        RPT       #9
||     PREAD     *XAR4++,*XAR7         ; [CPU_] |751| 
	.dwpsn	file "../Source/ad7738.c",line 752,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 752 | monrdy = 1;                                                            
;----------------------------------------------------------------------
        MOVB      @_monrdy,#1,UNC       ; [CPU_] |752| 
$C$L33:    
        MOVW      DP,#_ad7738_load+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 755,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 755 | autoMotor(ad7738_getpos());                                            
;----------------------------------------------------------------------
        MOVL      ACC,@_ad7738_load+2   ; [CPU_] |755| 
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_autoMotor")
	.dwattr $C$DW$166, DW_AT_TI_call

        LCR       #_autoMotor           ; [CPU_] |755| 
        ; call occurs [#_autoMotor] ; [] |755| 
	.dwpsn	file "../Source/ad7738.c",line 756,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 756 | moveMotor();                                                           
; 758 | #if(0)                                                                 
; 760 | //  ***** read the converted data *****                                
; 761 | if( 0 == ad7738_ph )// phase 0                                         
; 764 |         // --- chip 1 ---                                              
; 765 |         if( GpioDataRegs.GPDDAT.bit.GPIOD5 )                           
; 767 |                 ad7738_err[0] = 1;                      // error, not c
;     | overting                                                               
; 769 |         else                                                           
; 771 |                 GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;   // A0CSn low   
; 773 |                 // Channel 1A                                          
; 774 |                 ad7738_err[0] = 0;// no error                          
; 776 |                 spi_xmit( ADCREG_DATA );// send the read command       
; 777 |                 status = spi_recv();// read the status byte            
; 778 |                 temp = 0;                                              
; 779 |                 for( i = 0; i < 3; i++ )                               
; 781 |                         temp <<= 8;                                    
; 782 |                         temp |= spi_recv();                     // read
;     |  three bytes (24bits)                                                  
; 785 |                 if( 0x0004 & status )                   // no ref      
; 787 |                         ad7738_err[0] = 1;                      // erro
;     | r                                                                      
; 789 |                 else if( 0x0001 & status )              // over        
; 791 |                         if( 0x0002 & status )                   // nega
;     | tive                                                                   
; 793 |                                 ad7738_cnt.adc[0] = temp - 0x01800000; 
; 795 |                         else                                    // posi
;     | tive                                                                   
; 797 |                                 ad7738_cnt.adc[0] = temp + 0x00800000; 
; 800 |                 else                                    // normal range
; 802 |                         ad7738_cnt.adc[0] = temp - 0x00800000;         
; 804 |                 GpioDataRegs.GPBSET.bit.GPIOB5 = 1;     // A0CSn high  
; 807 |         // --- chip 2 ---                                              
; 808 |         if( GpioDataRegs.GPDDAT.bit.GPIOD6 )                           
; 810 |                 ad7738_err[2] = 1;                      // error, not c
;     | overting                                                               
; 812 |         else                                                           
; 814 |                 GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;   // A1CSn low   
; 816 |                 // Channel 2A                                          
; 817 |                 ad7738_err[2] = 0;// no error                          
; 818 |                 spi_xmit( ADCREG_DATA );// send the read command       
; 819 |                 status = spi_recv();// read the status byte            
; 820 |                 temp = 0;                                              
; 821 |                 for( i = 0; i < 3; i++ )                               
; 823 |                         temp <<= 8;                                    
; 824 |                         temp |= spi_recv();                     // read
;     |  three bytes (24bits)                                                  
; 827 |                 if( 0x0004 & status )                   // no ref      
; 829 |                         ad7738_err[2] = 1;                      // erro
;     | r                                                                      
; 831 |                 else if( 0x0001 & status )              // over        
; 833 |                         if( 0x0002 & status )                   // nega
;     | tive                                                                   
; 835 |                                 ad7738_cnt.adc[2] = temp - 0x01800000; 
; 837 |                         else                                    // posi
;     | tive                                                                   
; 839 |                                 ad7738_cnt.adc[2] = temp + 0x00800000; 
; 842 |                 else                                    // normal range
; 844 |                         ad7738_cnt.adc[2] = temp - 0x00800000;         
; 847 |                 GpioDataRegs.GPBSET.bit.GPIOB4 = 1;     // A1CSn high  
; 850 |         // ***** read the encoders *****                               
; 852 |         // channel 1                                                   
; 853 |         enccnt[0] += (int)EvaRegs.T2CNT;// add the count for the interv
;     | al                                                                     
; 854 |         EvaRegs.T2CNT = 0;// reset the count                           
; 856 |         // channel 2                                                   
; 857 |         enccnt[1] += (int)EvbRegs.T4CNT;// add the count for the interv
;     | al                                                                     
; 858 |         EvbRegs.T4CNT = 0;// reset the count                           
; 861 | else                                            // phase 1             
; 864 |         // --- chip 1 ---                                              
; 865 |         if( GpioDataRegs.GPDDAT.bit.GPIOD5 )                           
; 867 |                 ad7738_err[1] = 1;                      // error, not c
;     | overting                                                               
; 869 |         else                                                           
; 872 |                 GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;   // A0CSn low   
; 874 |                 // Channel 1B                                          
; 875 |                 ad7738_err[1] = 0;// no error                          
; 877 |                 spi_xmit( ADCREG_DATA+1 );// send the read command     
; 878 |                 status = spi_recv();// read the status byte            
; 879 |                 temp = 0;                                              
; 880 |                 for( i = 0; i < 3; i++ )                               
; 882 |                         temp <<= 8;                                    
; 883 |                         temp |= spi_recv();                     // read
;     |  three bytes (24bits)                                                  
; 886 |                 if( 0x0004 & status )                   // no ref      
; 888 |                         ad7738_err[1] = 1;                      // erro
;     | r                                                                      
; 890 |                 else if( 0x0001 & status )              // over        
; 892 |                         if( 0x0002 & status )                   // nega
;     | tive                                                                   
; 894 |                                 ad7738_cnt.adc[1] = temp - 0x01800000; 
; 896 |                         else                                    // posi
;     | tive                                                                   
; 898 |                                 ad7738_cnt.adc[1] = temp + 0x00800000; 
; 901 |                 else                                    // normal range
; 903 |                         ad7738_cnt.adc[1] = temp - 0x00800000;         
; 906 |                 GpioDataRegs.GPBSET.bit.GPIOB5 = 1;     // A0CSn high  
; 909 |         // --- chip 2 ---                                              
; 910 |         if( GpioDataRegs.GPDDAT.bit.GPIOD6 )                           
; 912 |                 ad7738_err[3] = 1;                      // error, not c
;     | overting                                                               
; 914 |         else                                                           
; 916 |                 GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;   // A1CSn low   
; 918 |                 // Channel 2B                                          
; 919 |                 ad7738_err[3] = 0;// no error                          
; 920 |                 spi_xmit( ADCREG_DATA+1 );// send the read command     
; 921 |                 status = spi_recv();// read the status byte            
; 922 |                 temp = 0;                                              
; 923 |                 for( i = 0; i < 3; i++ )                               
; 925 |                         temp <<= 8;                                    
; 926 |                         temp |= spi_recv();                     // read
;     |  three bytes (24bits)                                                  
; 929 |                 if( 0x0004 & status )                   // no ref      
; 931 |                         ad7738_err[3] = 1;                      // erro
;     | r                                                                      
; 933 |                 else if( 0x0001 & status )              // over        
; 935 |                         if( 0x0002 & status )                   // nega
;     | tive                                                                   
; 937 |                                 ad7738_cnt.adc[3] = temp - 0x01800000; 
; 939 |                         else                                    // posi
;     | tive                                                                   
; 941 |                                 ad7738_cnt.adc[3] = temp + 0x00800000; 
; 944 |                 else                                    // normal range
; 946 |                         ad7738_cnt.adc[3] = temp - 0x00800000;         
; 949 |                 GpioDataRegs.GPBSET.bit.GPIOB4 = 1;     // A1CSn high  
; 953 | // ***** start the next conversion *****                               
; 955 | GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;// A_SYNC low                     
; 957 | GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;// fCSn                           
; 958 | GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;// A1CSn                          
; 960 | // send command to start the next conversion                           
; 961 | if( 0 == ad7738_ph )// phase 0                                         
; 963 |         spi_xmit( ADCREG_MODE+1 );                      // mode        
; 965 | else                                            // phase 1             
; 967 |         spi_xmit( ADCREG_MODE );                        // mode        
; 969 | spi_xmit( 0x5a );                               // single conversion, d
;     | ump, 24bit, np clamp                                                   
; 971 | GpioDataRegs.GPBSET.bit.GPIOB5 = 1;// A0CSn                            
; 972 | GpioDataRegs.GPBSET.bit.GPIOB4 = 1;// A1CSn                            
; 974 | GpioDataRegs.GPBSET.bit.GPIOB7 = 1;// A_SYNC high                      
; 976 | // ****** processing data ******                                       
; 978 | if( 0 == ad7738_ph )                                                   
; 980 |         // --- phase 0 ---                                             
; 981 |         // processing encoder data                                     
; 983 |         // convert encoder count to inch                               
; 984 |         for( i = 0; i < ENC_MAX; i++ )                                 
; 986 |                 ad7738_load.pos[i] = enccnt[i] * slope[0].pos[i];      
; 988 |                 // *** tare here ***                                   
; 989 |                 if( tare_reset & BITMAP[CHS_MAX+i] )// new tare value  
; 991 |                         tare_reset &= ~BITMAP[CHS_MAX+i];              
; 992 |                         ad7738_tare.pos[i] = ad7738_load.pos[i];       
; 993 |                         ad7738_load.pos[i] = 0;                        
; 995 |                 else                                    // apply tare  
; 997 |                         ad7738_load.pos[i] -= ad7738_tare.pos[i];      
; 1000 |                 // *** peak ***                                        
; 1001 |                 if( peak_reset & BITMAP[CHS_MAX+i] )                   
; 1003 |                         peak_reset &= ~BITMAP[CHS_MAX+i];              
; 1004 |                         ad7738_peak.pos[i] = ad7738_load.pos[i];       
; 1006 |                 else                                                   
; 1008 |                         if( ad7738_peak.pos[i] < ad7738_load.pos[i] )  
; 1010 |                                 ad7738_peak.pos[i] = ad7738_load.pos[i]
;     | ;                                                                      
; 1014 |                 // *** valley ***                                      
; 1015 |                 if( vall_reset & BITMAP[CHS_MAX+i] )                   
; 1017 |                         vall_reset &= ~BITMAP[CHS_MAX+i];              
; 1018 |                         ad7738_vall.pos[i] = ad7738_load.pos[i];       
; 1020 |                 else                                                   
; 1022 |                         if( ad7738_vall.pos[i] > ad7738_load.pos[i] )  
; 1024 |                                 ad7738_vall.pos[i] = ad7738_load.pos[i]
;     | ;                                                                      
; 1029 |         // velocity calculation                                        
; 1030 |         for( i = 0; i < ENC_MAX; i++ )                                 
; 1032 |                 temp = enccnt[i] - velpbuf[i][velidx];                 
; 1033 |                 velpbuf[i][velidx] = enccnt[i];                        
; 1034 |                 veldsum[i] += temp - veldbuf[i][velidx];               
; 1035 |                 veldbuf[i][velidx] = temp;                             
; 1037 |                 ad7738_load.vel[i] = veldsum[i] * slope[0].vel[i];     
; 1039 |                 // *** tare here ***                                   
; 1040 |                 if( tare_reset & BITMAP[CHS_MAX+ENC_MAX+i] )// new tare
;     |  value                                                                 
; 1042 |                         tare_reset &= ~BITMAP[CHS_MAX+ENC_MAX+i];      
; 1043 |                         ad7738_tare.vel[i] = ad7738_load.vel[i];       
; 1044 |                         ad7738_load.vel[i] = 0;                        
; 1046 |                 else                                    // apply tare  
; 1048 |                         ad7738_load.vel[i] -= ad7738_tare.vel[i];      
; 1051 |                 // *** peak ***                                        
; 1052 |                 if( peak_reset & BITMAP[CHS_MAX+ENC_MAX+i] )           
; 1054 |                         peak_reset &= ~BITMAP[CHS_MAX+ENC_MAX+i];      
; 1055 |                         ad7738_peak.vel[i] = ad7738_load.vel[i];       
; 1057 |                 else                                                   
; 1059 |                         if( ad7738_peak.vel[i] < ad7738_load.vel[i] )  
; 1061 |                                 ad7738_peak.vel[i] = ad7738_load.vel[i]
;     | ;                                                                      
; 1065 |                 // *** valley ***                                      
; 1066 |                 if( vall_reset & BITMAP[CHS_MAX+ENC_MAX+i] )           
; 1068 |                         vall_reset &= ~BITMAP[CHS_MAX+ENC_MAX+i];      
; 1069 |                         ad7738_vall.vel[i] = ad7738_load.vel[i];       
; 1071 |                 else                                                   
; 1073 |                         if( ad7738_vall.vel[i] > ad7738_load.vel[i] )  
; 1075 |                                 ad7738_vall.vel[i] = ad7738_load.vel[i]
;     | ;                                                                      
; 1080 |         velidx++;                                                      
; 1081 |         if( velidx >= conf_data.velfilter )                            
; 1083 |                 velidx = 0;                                            
; 1086 |         // *** limit ***                                               
; 1087 |         for( i = 0; i < LIM_MAX; i++ )                                 
; 1089 |                 j = 0;                                                 
; 1090 |                 switch( conf_data.lim[i].what )                        
; 1092 |                         case VFD_LOAD:                                 
; 1093 |                         limld = ad7738_load.adw[conf_data.lim[i].ch];  
; 1094 |                         j = ad7738_err[conf_data.lim[i].ch];           
; 1095 |                         break;                                         
; 1096 |                         case VFD_PEAK:                                 
; 1097 |                         limld = ad7738_peak.adw[conf_data.lim[i].ch];  
; 1098 |                         j = ad7738_err[conf_data.lim[i].ch];           
; 1099 |                         break;                                         
; 1100 |                         case VFD_VALL:                                 
; 1101 |                         limld = ad7738_vall.adw[conf_data.lim[i].ch];  
; 1102 |                         j = ad7738_err[conf_data.lim[i].ch];           
; 1103 |                         break;                                         
; 1104 |                         case VFD_POSI:                                 
; 1105 |                         limld = ad7738_vall.pos[conf_data.lim[i].ch];  
; 1106 |                         break;                                         
; 1107 |                         case VFD_VELO:                                 
; 1108 |                         limld = ad7738_vall.vel[conf_data.lim[i].ch];  
; 1109 |                         break;                                         
; 1112 |                 if( j != 0 )                                    // erro
;     | r                                                                      
; 1114 |                         continue;                                      
; 1117 |                 if( limit[i] & LIM_ON )                                
; 1118 |                 {
;     |  // limit is on                                                        
; 1119 |                         if( ((limit[i] & LIM_HL) &&// higher than      
; 1120 |                                                         (limld > conf_d
;     | ata.lim[i].limits)) ||// true                                          
; 1121 |                                         (!(limit[i] & LIM_HL) &&// lowe
;     | r than                                                                 
; 1122 |                                                         (limld < conf_d
;     | ata.lim[i].limits)) )// true                                           
; 1123 |                         {
;     |  // set triggered                                                      
; 1124 |                                 if( !(limit[i] & LIM_ST) )// if not alr
;     | eady triggered                                                         
; 1126 |                                         limit[i] |= LIM_ST;
;     |                  // set status bit                                     
; 1127 |                                         limitchgd[i] = 1;              
; 1128 |                                         ssr_set( i, !(limit[i] & LIM_NC
;     | ) );                                                                   
; 1131 |                         else if( ((limit[i] & LIM_HL) &&        // high
;     | er than                                                                
; 1132 |                                                         (limld < conf_d
;     | ata.lim[i].limitr)) ||// reset                                         
; 1133 |                                         (!(limit[i] & LIM_HL) &&// lowe
;     | r than                                                                 
; 1134 |                                                         (limld > conf_d
;     | ata.lim[i].limitr)) )// reset                                          
; 1135 |                         {
;     |  // reset triggered                                                    
; 1136 |                                 if( !(limit[i] & LIM_LA) && (limit[i] &
;     |  LIM_ST) )                                                             
; 1137 |                                 {
;     |          // non-latching                                               
; 1138 |                                         limit[i] &= ~LIM_ST;// set stat
;     | us bit                                                                 
; 1139 |                                         limitchgd[i] = 1;              
; 1140 |                                         ssr_set( i, (limit[i] & LIM_NC)
;     |  );                                                                    
; 1146 |         // *** DAC out ***                                             
; 1147 |         if( !dacsetvolt )                                              
; 1149 |                 for( i = 0; i < DAC_MAX; i++ )                         
; 1151 |                         if( VFD_VOLT == conf_data.dac[i].what )// skip
;     | this if direct voltage                                                 
; 1153 |                                 continue;                              
; 1156 |                         j = 0;                                         
; 1157 |                         switch( conf_data.dac[i].what )                
; 1159 |                                 case VFD_LOAD:                         
; 1160 |                                 limld = ad7738_load.adw[conf_data.dac[i
;     | ].ch] * dacs.adw[i] + daci.adc[i];                                     
; 1161 |                                 j = ad7738_err[conf_data.dac[i].ch];   
; 1162 |                                 break;                                 
; 1163 |                                 case VFD_PEAK:                         
; 1164 |                                 limld = ad7738_peak.adw[conf_data.dac[i
;     | ].ch] * dacs.adw[i] + daci.adc[i];                                     
; 1165 |                                 j = ad7738_err[conf_data.dac[i].ch];   
; 1166 |                                 break;                                 
; 1167 |                                 case VFD_VALL:                         
; 1168 |                                 limld = ad7738_vall.adw[conf_data.dac[i
;     | ].ch] * dacs.adw[i] + daci.adc[i];                                     
; 1169 |                                 j = ad7738_err[conf_data.dac[i].ch];   
; 1170 |                                 break;                                 
; 1171 |                                 case VFD_POSI:                         
; 1172 |                                 limld = ad7738_load.pos[conf_data.dac[i
;     | ].ch] * dacs.adw[i] + daci.adc[i];                                     
; 1173 |                                 break;                                 
; 1174 |                                 case VFD_VELO:                         
; 1175 |                                 limld = ad7738_load.vel[conf_data.dac[i
;     | ].ch] * dacs.adw[i] + daci.adc[i];                                     
; 1176 |                                 break;                                 
; 1179 |                         if( j != 0 )
;     |  // error                                                              
; 1181 |                                 continue;                              
; 1184 |                         if( limld < 0 )                                
; 1186 |                                 temp = conf_data.dac[i].dslopen * limld
;     |  + conf_data.dac[i].dint;                                              
; 1188 |                         else                                           
; 1190 |                                 temp = conf_data.dac[i].dslopep * limld
;     |  + conf_data.dac[i].dint;                                              
; 1193 |                         if( temp <= 0 )                                
; 1195 |                                 dacvalue = 0;                          
; 1197 |                         else if( temp >= 0x0000ffff )                  
; 1199 |                                 dacvalue = 0x0000ffff;                 
; 1201 |                         else                                           
; 1203 |                                 dacvalue = (Uint16)temp;               
; 1205 |                         mcbsp_xmit( dacvalue, i );                     
; 1208 |                 // *** DAC out, latch out new value ***                
; 1209 |                 latch_dac();                                           
; 1212 |         // ***** temperature reading count *****                       
; 1213 |         tempcnt++;// increase temperature count                        
; 1214 |         if( tempcnt == TEMPRATE )                                      
; 1216 |                 tempstart = 1;                          // time to star
;     | t conversion                                                           
; 1218 |         else if( tempcnt >= 2 * TEMPRATE )                             
; 1220 |                 tempcnt = 0;                            // reset count 
; 1221 |                 tempread = 1;// time to read                           
; 1224 |         // ***** tag id detection count *****                          
; 1225 |         tagscnt++;                                                     
; 1226 |         if( tagscnt == TAGSRATE )                                      
; 1228 |                 tagscnt = 0;                                           
; 1229 |                 tagsdetect = 1;                                        
; 1232 |         // ***** update LCD display, one character *****               
; 1233 | #if(SAMPRATE < 3001)                                                   
; 1234 |         if( !(mon_cnt &0x01) )                                         
; 1235 | #endif                                                                 
; 1237 |                 lcd_next();                             // update lcd  
; 1240 | #ifdef SDHCCARD                                                        
; 1241 |         disk_timerproc();                               // SD library  
; 1242 | #endif                                                                 
; 1245 | else                                                                   
; 1248 |         // ***** phase 1 *****                                         
; 1249 |         // process analog data                                         
; 1251 |         for( i = 0; i < CHS_MAX; i++ )                                 
; 1253 |                 if( ad7738_err[i] )                                    
; 1255 |                         // error condition                             
; 1256 |                         //ad7738_cnt.adc[i] = 0;                       
; 1257 |                         //ad7738_raw.adc[i] = 0;                       
; 1258 |                         //ad7738_load.adw[i] = 0;                      
; 1259 |                         continue;                                      
; 1262 |                 // no error on adc reading                             
; 1263 |                 // *** moving average filter ***                       
; 1264 |                 if( conf_data.filter > 1 )                             
; 1266 |                         // first calculate the diff between the oldest
;     | and newset                                                             
; 1267 |                         if( mafsize[i] < conf_data.filter )// moving wi
;     | ndow not full                                                          
; 1269 |                                 if( mafsize[i] > 0 )                   
; 1271 |                                         mafdiff[i] = ad7738_cnt.adc[i]
;     | - mafbuf[i][0];// diff from current to the first (oldest)              
; 1273 |                                 else                                   
; 1275 |                                         mafdiff[i] = 0;                
; 1277 |                                 mafsize[i]++;
;     |  // one more added                                                     
; 1279 |                         else                                    // movi
;     | ng window full                                                         
; 1281 |                                 mafdiff[i] = ad7738_cnt.adc[i] - mafbuf
;     | [i][mafidx[i]];                                                        
; 1282 |                                 mafsum[i] -= mafbuf[i][mafidx[i]];// re
;     | move the oldest point                                                  
; 1285 |                         if( labs(mafdiff[i]) > adcdiff )               
; 1287 |                                 mafsum[i] = 0;                         
; 1288 |                                 mafidx[i] = 0;                         
; 1289 |                                 mafsize[i] = 1;                        
; 1292 |                         mafbuf[i][mafidx[i]] = ad7738_cnt.adc[i];// loa
;     | d the new value to buffer                                              
; 1293 |                         mafsum[i] += ad7738_cnt.adc[i];// add the newes
;     | t                                                                      
; 1295 |                         ad7738_cnt.adc[i] = mafsum[i] / mafsize[i];// c
;     | alculate the average                                                   
; 1297 |                         mafidx[i]++;// point to the next cell          
; 1298 |                         if( mafidx[i] >= conf_data.filter )            
; 1300 |                                 mafidx[i] = 0;                  // loop
;     |  back                                                                  
; 1304 |                 // *** heat correction here ***                        
; 1305 |                 ad7738_cnt.adc[i] *= hfactor.adw[i];                   
; 1307 |                 // *** keep a copy for raw reading ***                 
; 1308 |                 ad7738_raw.adc[i] = ad7738_cnt.adc[i];                 
; 1310 |                 // *** apply cal scales ***                            
; 1311 |                 j = 0;                                                 
; 1312 |                 if( conf_data.sensor[conf_data.ch[i].ci].points > 2 )  
; 1314 |                         while( ad7738_cnt.adc[i] > conf_data.sensor[con
;     | f_data.ch[i].ci].adc[j+1] &&                                           
; 1315 |                                         j < conf_data.sensor[conf_data.
;     | ch[i].ci].points - 2 )                                                 
; 1317 |                                 j++;                                   
; 1320 |                 ad7738_load.adw[i] = ad7738_cnt.adc[i] * slope[j].adw[i
;     | ] + intercept[j].adw[i];                                               
; 1322 |                 // *** tare here ***                                   
; 1323 |                 if( tare_reset & BITMAP[i] )// new tare value          
; 1325 |                         tare_reset &= ~BITMAP[i];                      
; 1326 |                         ad7738_tare.adw[i] = ad7738_load.adw[i];       
; 1327 |                         ad7738_load.adw[i] = 0;                        
; 1329 |                 else                                    // apply tare  
; 1331 |                         ad7738_load.adw[i] -= ad7738_tare.adw[i];      
; 1334 |                 // *** peak ***                                        
; 1335 |                 if( peak_reset & BITMAP[i] )                           
; 1337 |                         peak_reset &= ~BITMAP[i];                      
; 1338 |                         ad7738_peak.adw[i] = ad7738_load.adw[i];       
; 1340 |                 else                                                   
; 1342 |                         if( ad7738_peak.adw[i] < ad7738_load.adw[i] )  
; 1344 |                                 ad7738_peak.adw[i] = ad7738_load.adw[i]
;     | ;                                                                      
; 1348 |                 // *** valley ***                                      
; 1349 |                 if( vall_reset & BITMAP[i] )                           
; 1351 |                         vall_reset &= ~BITMAP[i];                      
; 1352 |                         ad7738_vall.adw[i] = ad7738_load.adw[i];       
; 1354 |                 else                                                   
; 1356 |                         if( ad7738_vall.adw[i] > ad7738_load.adw[i] )  
; 1358 |                                 ad7738_vall.adw[i] = ad7738_load.adw[i]
;     | ;                                                                      
; 1363 |         rawrdy = 1;                                                    
; 1365 |         // *** add to the big buffer ***                               
; 1366 |         prod_add( &ad7738_load );                                      
; 1368 |         // *** monitor data check ***                                  
; 1369 |         mon_cnt++;                                                     
; 1370 |         if( mon_cnt > MON_RATE )                                       
; 1372 |                 mon_cnt = 0;                                           
; 1373 |                 memcpy( (void*)&ad7738_mon, (void*)&ad7738_load, sizeof
;     | (adcwt_t) );                                                           
; 1374 |                 monrdy = 1;                                            
; 1379 | // change phase                                                        
; 1380 | ad7738_ph++;                                                           
; 1381 | if( ad7738_ph > 1 )                                                    
; 1383 |         ad7738_ph = 0;                                                 
; 1385 | #endif                                                                 
;----------------------------------------------------------------------
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_moveMotor")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #_moveMotor           ; [CPU_] |756| 
        ; call occurs [#_moveMotor] ; [] |756| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 1387,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1387 | GpioDataRegs.GPADAT.bit.GPIOA2 = 0;                                    
; 1388 | // Acknowledge this interrupt to receive more interrupts from group 1  
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffb ; [CPU_] |1387| 
        SUBB      SP,#12                ; [CPU_U] 
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
	.dwpsn	file "../Source/ad7738.c",line 1389,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 1389 | PieCtrlRegs.PIEACK.all = PIEACK_GROUP1                                 
; 1390 | ;                                                                      
;----------------------------------------------------------------------
        MOVB      @_PieCtrlRegs+1,#1,UNC ; [CPU_] |1389| 
        NASP      ; [CPU_] 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_return

        IRET      ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$152, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x56f)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text"
	.clink
	.global	_ad7738_tempstart

$C$DW$169	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$169, DW_AT_name("ad7738_tempstart")
	.dwattr $C$DW$169, DW_AT_low_pc(_ad7738_tempstart)
	.dwattr $C$DW$169, DW_AT_high_pc(0x00)
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_ad7738_tempstart")
	.dwattr $C$DW$169, DW_AT_external
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$169, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$169, DW_AT_TI_begin_line(0x23a)
	.dwattr $C$DW$169, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$169, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 570,column 24,is_stmt,address _ad7738_tempstart,isa 0

	.dwfde $C$DW$CIE, _ad7738_tempstart
;----------------------------------------------------------------------
; 570 | int ad7738_tempstart() {                                               
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
	.dwpsn	file "../Source/ad7738.c",line 571,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 571 | if (tempstart) {                                                       
; 572 |         tempstart = 0;                          // reset flag          
;----------------------------------------------------------------------
        MOV       AL,@_tempstart        ; [CPU_] |571| 
        B         $C$L34,EQ             ; [CPU_] |571| 
        ; branchcc occurs ; [] |571| 
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 573,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 573 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |573| 
	.dwpsn	file "../Source/ad7738.c",line 572,column 3,is_stmt,isa 0
        MOV       @_tempstart,#0        ; [CPU_] |572| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L34:    
	.dwpsn	file "../Source/ad7738.c",line 575,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 575 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |575| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$169, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$169, DW_AT_TI_end_line(0x240)
	.dwattr $C$DW$169, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$169

	.sect	".text"
	.clink
	.global	_ad7738_tempread

$C$DW$172	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$172, DW_AT_name("ad7738_tempread")
	.dwattr $C$DW$172, DW_AT_low_pc(_ad7738_tempread)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_ad7738_tempread")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$172, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x243)
	.dwattr $C$DW$172, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 579,column 23,is_stmt,address _ad7738_tempread,isa 0

	.dwfde $C$DW$CIE, _ad7738_tempread
;----------------------------------------------------------------------
; 579 | int ad7738_tempread() {                                                
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
	.dwpsn	file "../Source/ad7738.c",line 580,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 580 | if (tempread) {                                                        
; 581 |         tempread = 0;                           // reset flag          
;----------------------------------------------------------------------
        MOV       AL,@_tempread         ; [CPU_] |580| 
        B         $C$L35,EQ             ; [CPU_] |580| 
        ; branchcc occurs ; [] |580| 
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 582,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 582 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |582| 
	.dwpsn	file "../Source/ad7738.c",line 581,column 3,is_stmt,isa 0
        MOV       @_tempread,#0         ; [CPU_] |581| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L35:    
	.dwpsn	file "../Source/ad7738.c",line 584,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 584 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |584| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$172, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x249)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text"
	.clink
	.global	_ad7738_tagsdetect

$C$DW$175	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$175, DW_AT_name("ad7738_tagsdetect")
	.dwattr $C$DW$175, DW_AT_low_pc(_ad7738_tagsdetect)
	.dwattr $C$DW$175, DW_AT_high_pc(0x00)
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_ad7738_tagsdetect")
	.dwattr $C$DW$175, DW_AT_external
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$175, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$175, DW_AT_TI_begin_line(0x24c)
	.dwattr $C$DW$175, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$175, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 588,column 25,is_stmt,address _ad7738_tagsdetect,isa 0

	.dwfde $C$DW$CIE, _ad7738_tagsdetect
;----------------------------------------------------------------------
; 588 | int ad7738_tagsdetect() {                                              
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
	.dwpsn	file "../Source/ad7738.c",line 589,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 589 | if (tagsdetect) {                                                      
; 590 |         tagsdetect = 0;                                                
;----------------------------------------------------------------------
        MOV       AL,@_tagsdetect       ; [CPU_] |589| 
        B         $C$L36,EQ             ; [CPU_] |589| 
        ; branchcc occurs ; [] |589| 
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 591,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 591 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |591| 
	.dwpsn	file "../Source/ad7738.c",line 590,column 3,is_stmt,isa 0
        MOV       @_tagsdetect,#0       ; [CPU_] |590| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L36:    
	.dwpsn	file "../Source/ad7738.c",line 593,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 593 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |593| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$175, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$175, DW_AT_TI_end_line(0x252)
	.dwattr $C$DW$175, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$175

	.sect	".text"
	.clink
	.global	_ad7738_settemp

$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("ad7738_settemp")
	.dwattr $C$DW$178, DW_AT_low_pc(_ad7738_settemp)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_ad7738_settemp")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x255)
	.dwattr $C$DW$178, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../Source/ad7738.c",line 597,column 35,is_stmt,address _ad7738_settemp,isa 0

	.dwfde $C$DW$CIE, _ad7738_settemp
$C$DW$179	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$179, DW_AT_name("tempv")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_tempv")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 597 | void ad7738_settemp(double tempv) {                                    
; 598 | int i;                                                                 
; 599 | adcwt_t hf;                                                            
; 601 | for (i = 0; i < CHS_MAX; i++) {                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_settemp               FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

_ad7738_settemp:
;* AR2   assigned to $O$C1
;* AR3   assigned to _tempv
$C$DW$180	.dwtag  DW_TAG_variable
	.dwattr $C$DW$180, DW_AT_name("tempv")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_tempv")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$292)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg10]

$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("hf")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_hf")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_breg20 -12]

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
        ADDB      SP,#12                ; [CPU_U] 
	.dwcfi	cfa_offset, -20
	.dwpsn	file "../Source/ad7738.c",line 602,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 602 | hf.adw[i] = conf_data.ch[i].tcx * tempv * tempv                        
;----------------------------------------------------------------------
        MOVB      XAR0,#46              ; [CPU_] |602| 
	.dwpsn	file "../Source/ad7738.c",line 597,column 35,is_stmt,isa 0
        MOVL      XAR3,ACC              ; [CPU_] |597| 
	.dwpsn	file "../Source/ad7738.c",line 602,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 603 | + conf_data.ch[i].tcy * tempv + conf_data.ch[i].tcz;                   
; 606 | DINT;                                                                  
;----------------------------------------------------------------------
        MOVL      XAR2,#_conf_data      ; [CPU_U] |602| 
        MOVL      *-SP[2],ACC           ; [CPU_] |602| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_] |602| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |602| 
        ; call occurs [#FS$$MPY] ; [] |602| 
        MOVL      *-SP[2],XAR3          ; [CPU_] |602| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |602| 
        ; call occurs [#FS$$MPY] ; [] |602| 
        MOVB      XAR0,#48              ; [CPU_] |602| 
        MOVL      XAR1,ACC              ; [CPU_] |602| 
        MOVL      *-SP[2],XAR3          ; [CPU_] |602| 
        MOVL      ACC,*+XAR2[AR0]       ; [CPU_] |602| 
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |602| 
        ; call occurs [#FS$$MPY] ; [] |602| 
        MOVL      *-SP[2],ACC           ; [CPU_] |602| 
        MOVL      ACC,XAR1              ; [CPU_] |602| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_] |602| 
        ; call occurs [#FS$$ADD] ; [] |602| 
        MOVB      XAR0,#50              ; [CPU_] |602| 
        MOVL      XAR6,*+XAR2[AR0]      ; [CPU_] |602| 
        MOVL      *-SP[2],XAR6          ; [CPU_] |602| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("FS$$ADD")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #FS$$ADD              ; [CPU_] |602| 
        ; call occurs [#FS$$ADD] ; [] |602| 
        MOVL      *-SP[12],ACC          ; [CPU_] |602| 
 setc INTM
	.dwpsn	file "../Source/ad7738.c",line 607,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 607 | memcpy((void*) &hfactor, (void*) &hf, sizeof(adcwt_t));                
; 608 | EINT;                                                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |607| 
        SUBB      XAR4,#12              ; [CPU_U] |607| 
        MOVZ      AR7,AR4               ; [CPU_] |607| 
        MOVL      XAR4,#_hfactor        ; [CPU_U] |607| 
        RPT       #9
||     PREAD     *XAR4++,*XAR7         ; [CPU_] |607| 
 clrc INTM
        SPM       #0                    ; [CPU_] 
        SUBB      SP,#12                ; [CPU_U] 
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
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$178, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x261)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".text"
	.clink
	.global	_ad7738_setlimitchgd

$C$DW$188	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$188, DW_AT_name("ad7738_setlimitchgd")
	.dwattr $C$DW$188, DW_AT_low_pc(_ad7738_setlimitchgd)
	.dwattr $C$DW$188, DW_AT_high_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_ad7738_setlimitchgd")
	.dwattr $C$DW$188, DW_AT_external
	.dwattr $C$DW$188, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$188, DW_AT_TI_begin_line(0x1d1)
	.dwattr $C$DW$188, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$188, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 465,column 28,is_stmt,address _ad7738_setlimitchgd,isa 0

	.dwfde $C$DW$CIE, _ad7738_setlimitchgd
;----------------------------------------------------------------------
; 465 | void ad7738_setlimitchgd() {                                           
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
	.dwpsn	file "../Source/ad7738.c",line 466,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 466 | limitchgd[0] = 1;                                                      
;----------------------------------------------------------------------
        MOVB      @_limitchgd,#1,UNC    ; [CPU_] |466| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$188, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$188, DW_AT_TI_end_line(0x1d3)
	.dwattr $C$DW$188, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$188

	.sect	".text"
	.clink
	.global	_ad7738_setcal

$C$DW$190	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$190, DW_AT_name("ad7738_setcal")
	.dwattr $C$DW$190, DW_AT_low_pc(_ad7738_setcal)
	.dwattr $C$DW$190, DW_AT_high_pc(0x00)
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_ad7738_setcal")
	.dwattr $C$DW$190, DW_AT_external
	.dwattr $C$DW$190, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$190, DW_AT_TI_begin_line(0x1f9)
	.dwattr $C$DW$190, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$190, DW_AT_TI_max_frame_size(-20)
	.dwpsn	file "../Source/ad7738.c",line 505,column 22,is_stmt,address _ad7738_setcal,isa 0

	.dwfde $C$DW$CIE, _ad7738_setcal
;----------------------------------------------------------------------
; 505 | void ad7738_setcal() {                                                 
; 506 | int i, j;                                                              
; 508 | // set adc calibration                                                 
; 509 | for (i = 0; i < CHS_MAX; i++) {                                        
; 510 |         for (j = 0; j < PNT_MAX - 1; j++) {                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_setcal                FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 10 Auto,  6 SOE     *
;***************************************************************

_ad7738_setcal:
;* AR1   assigned to $O$C1
;* AR6   assigned to $O$C2
;* AR1   assigned to $O$U31
;* AR3   assigned to $O$U45
;* AR2   assigned to $O$U49
;* AR2   assigned to $O$K4
$C$DW$191	.dwtag  DW_TAG_variable
	.dwattr $C$DW$191, DW_AT_name("j")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_j")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_breg20 -3]

;* AR2   assigned to $O$K2
;* AR3   assigned to $O$K2
;* AR1   assigned to $O$K2
;* AR3   assigned to $O$U15
;* AR3   assigned to $O$U15
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
        ADDB      SP,#12                ; [CPU_U] 
	.dwcfi	cfa_offset, -20
        MOVL      XAR4,#_slope          ; [CPU_U] 
        MOVL      XAR1,#_intercept      ; [CPU_U] 
        MOVB      XAR3,#0               ; [CPU_] 
        MOVL      XAR2,#_conf_data      ; [CPU_U] 
        MOV       *-SP[3],#10           ; [CPU_] 
        MOVL      *-SP[8],XAR4          ; [CPU_] 
        MOVL      *-SP[6],XAR4          ; [CPU_] 
        MOVL      *-SP[10],XAR1         ; [CPU_] 
$C$L37:    
        MOVW      DP,#_conf_data+44     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 511,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 511 | slope[j].adw[i] = conf_data.sensor[conf_data.ch[i].ci].ufactor         
; 512 |                 * conf_data.ch[i].bslope                               
; 513 |                 * conf_data.sensor[conf_data.ch[i].ci].slope[j];       
;----------------------------------------------------------------------
        MOVB      XAR0,#42              ; [CPU_] |511| 
        MOVL      ACC,@_conf_data+44    ; [CPU_] |511| 
        MOVL      *-SP[2],ACC           ; [CPU_] |511| 
        MOV       T,*+XAR2[AR0]         ; [CPU_] |511| 
        MPYB      ACC,T,#152            ; [CPU_] |511| 
        ADDL      ACC,XAR2              ; [CPU_] |511| 
        MOVL      XAR4,ACC              ; [CPU_] |511| 
        MOVB      XAR0,#96              ; [CPU_] |511| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |511| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |511| 
        ; call occurs [#FS$$MPY] ; [] |511| 
        MOVB      XAR0,#42              ; [CPU_] |511| 
        MOV       T,*+XAR2[AR0]         ; [CPU_] |511| 
        MOVL      XAR6,ACC              ; [CPU_] |511| 
        MPYB      ACC,T,#152            ; [CPU_] |511| 
        ADDL      ACC,XAR3              ; [CPU_] |511| 
        ADDL      ACC,XAR2              ; [CPU_] |511| 
        MOVL      XAR4,ACC              ; [CPU_] |511| 
        MOVB      XAR0,#148             ; [CPU_] |511| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |511| 
        MOVL      *-SP[2],ACC           ; [CPU_] |511| 
        MOVL      ACC,XAR6              ; [CPU_] |511| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |511| 
        ; call occurs [#FS$$MPY] ; [] |511| 
        MOVL      XAR4,*-SP[6]          ; [CPU_] |511| 
	.dwpsn	file "../Source/ad7738.c",line 514,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 514 | intercept[j].adw[i] = conf_data.sensor[conf_data.ch[i].ci].ufactor     
;----------------------------------------------------------------------
        MOVB      XAR0,#42              ; [CPU_] |514| 
	.dwpsn	file "../Source/ad7738.c",line 511,column 4,is_stmt,isa 0
        MOVL      *+XAR4[0],ACC         ; [CPU_] |511| 
	.dwpsn	file "../Source/ad7738.c",line 514,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 515 | * conf_data.sensor[conf_data.ch[i].ci].intercept[j];                   
;----------------------------------------------------------------------
        MOV       T,*+XAR2[AR0]         ; [CPU_] |514| 
        MPYB      ACC,T,#152            ; [CPU_] |514| 
        ADDL      ACC,XAR3              ; [CPU_] |514| 
        ADDL      ACC,XAR2              ; [CPU_] |514| 
        MOVL      XAR4,ACC              ; [CPU_] |514| 
        MOVB      XAR0,#170             ; [CPU_] |514| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |514| 
        MOVB      XAR0,#42              ; [CPU_] |514| 
        MOVL      *-SP[2],ACC           ; [CPU_] |514| 
        MOV       T,*+XAR2[AR0]         ; [CPU_] |514| 
        MPYB      ACC,T,#152            ; [CPU_] |514| 
        ADDL      ACC,XAR2              ; [CPU_] |514| 
        MOVL      XAR4,ACC              ; [CPU_] |514| 
        MOVB      XAR0,#96              ; [CPU_] |514| 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |514| 
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |514| 
        ; call occurs [#FS$$MPY] ; [] |514| 
        MOVL      *+XAR1[0],ACC         ; [CPU_] |514| 
	.dwpsn	file "../Source/ad7738.c",line 510,column 15,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_] |510| 
        ADDB      XAR3,#2               ; [CPU_] |510| 
        ADDB      XAR1,#10              ; [CPU_] |510| 
        MOVL      ACC,*-SP[6]           ; [CPU_] |510| 
        SUBB      XAR6,#1               ; [CPU_U] |510| 
        ADDB      ACC,#10               ; [CPU_] |510| 
        MOV       *-SP[3],AR6           ; [CPU_] |510| 
        MOVL      *-SP[6],ACC           ; [CPU_] |510| 
        CMP       AR6,#-1               ; [CPU_] |510| 
        B         $C$L37,NEQ            ; [CPU_] |510| 
        ; branchcc occurs ; [] |510| 
	.dwpsn	file "../Source/ad7738.c",line 518,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 518 | adcdiff = conf_data.diffwin * 0x01000000;                              
; 520 | // position factor                                                     
; 521 | for (i = 0; i < ENC_MAX; i++) {                                        
; 522 |         slope[0].pos[i] = 1.0 / (double) conf_data.cntperin[i];        
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |518| 
        MOV       AH,#19328             ; [CPU_] |518| 
        MOVL      XAR3,#_conf_data      ; [CPU_U] |518| 
        MOVB      XAR0,#40              ; [CPU_] |518| 
        MOVL      *-SP[2],ACC           ; [CPU_] |518| 
        MOVL      ACC,*+XAR3[AR0]       ; [CPU_] |518| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |518| 
        ; call occurs [#FS$$MPY] ; [] |518| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$196, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |518| 
        ; call occurs [#FS$$TOL] ; [] |518| 
        MOVW      DP,#_adcdiff          ; [CPU_U] 
        MOVL      XAR2,*-SP[8]          ; [CPU_] 
        MOVL      @_adcdiff,ACC         ; [CPU_] |518| 
        MOVL      ACC,XAR3              ; [CPU_] 
        ADD       ACC,#1593 << 1        ; [CPU_] 
        MOVL      XAR3,ACC              ; [CPU_] 
        ADDB      XAR2,#2               ; [CPU_] 
        MOV       *-SP[3],#1            ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 523,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 523 | slope[0].vel[i] = 60.0 * SAMPRATE * slope[0].pos[i]                    
;----------------------------------------------------------------------
        MOVL      XAR1,#_conf_data      ; [CPU_U] |523| 
$C$L38:    
	.dwpsn	file "../Source/ad7738.c",line 522,column 3,is_stmt,isa 0
        MOVL      ACC,*XAR3++           ; [CPU_] |522| 
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |522| 
        ; call occurs [#L$$TOFS] ; [] |522| 
        MOVL      *-SP[2],ACC           ; [CPU_] |522| 
        MOV       ACC,#32512 << 15      ; [CPU_] |522| 
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_] |522| 
        ; call occurs [#FS$$DIV] ; [] |522| 
        MOVL      *+XAR2[0],ACC         ; [CPU_] |522| 
        MOVL      XAR6,ACC              ; [CPU_] |522| 
	.dwpsn	file "../Source/ad7738.c",line 523,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 524 | / ((double) conf_data.velfilter * (double) conf_data.velfilter);       
; 527 | i=0;                                                                   
; 528 | j=0;                                                                   
;----------------------------------------------------------------------
        MOV       AL,#24576             ; [CPU_] |523| 
        MOV       AH,#18282             ; [CPU_] |523| 
        MOVL      *-SP[2],ACC           ; [CPU_] |523| 
        MOVL      ACC,XAR6              ; [CPU_] |523| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |523| 
        ; call occurs [#FS$$MPY] ; [] |523| 
        MOVW      DP,#_conf_data+3184   ; [CPU_U] 
        MOVL      *-SP[12],ACC          ; [CPU_] |523| 
        MOV       AL,@_conf_data+3184   ; [CPU_] |523| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("U$$TOFS")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #U$$TOFS              ; [CPU_] |523| 
        ; call occurs [#U$$TOFS] ; [] |523| 
        MOVL      *-SP[6],ACC           ; [CPU_] |523| 
        MOVL      ACC,XAR1              ; [CPU_] |523| 
        ADD       ACC,#199 << 4         ; [CPU_] |523| 
        MOVL      XAR4,ACC              ; [CPU_] |523| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |523| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("U$$TOFS")
	.dwattr $C$DW$201, DW_AT_TI_call

        LCR       #U$$TOFS              ; [CPU_] |523| 
        ; call occurs [#U$$TOFS] ; [] |523| 
        MOVL      *-SP[2],ACC           ; [CPU_] |523| 
        MOVL      ACC,*-SP[6]           ; [CPU_] |523| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |523| 
        ; call occurs [#FS$$MPY] ; [] |523| 
        MOVL      *-SP[2],ACC           ; [CPU_] |523| 
        MOVL      ACC,*-SP[12]          ; [CPU_] |523| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_] |523| 
        ; call occurs [#FS$$DIV] ; [] |523| 
        MOVL      *+XAR2[4],ACC         ; [CPU_] |523| 
	.dwpsn	file "../Source/ad7738.c",line 521,column 14,is_stmt,isa 0
        MOVZ      AR6,*-SP[3]           ; [CPU_] |521| 
        SUBB      XAR6,#1               ; [CPU_U] |521| 
        MOVZ      AR4,AR6               ; [CPU_] |521| 
        ADDB      XAR2,#2               ; [CPU_] |521| 
        MOV       *-SP[3],AR6           ; [CPU_] |521| 
        CMP       AR4,#-1               ; [CPU_] |521| 
        B         $C$L38,NEQ            ; [CPU_] |521| 
        ; branchcc occurs ; [] |521| 
	.dwpsn	file "../Source/ad7738.c",line 529,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 529 | if (conf_data.sensor[conf_data.ch[i].ci].points > 2) {                 
;----------------------------------------------------------------------
        MOVL      XAR2,XAR1             ; [CPU_] |529| 
	.dwpsn	file "../Source/ad7738.c",line 528,column 2,is_stmt,isa 0
        MOV       *-SP[3],#0            ; [CPU_] |528| 
	.dwpsn	file "../Source/ad7738.c",line 529,column 2,is_stmt,isa 0
        ADDB      XAR2,#42              ; [CPU_] |529| 
        MOV       T,*+XAR2[0]           ; [CPU_] |529| 
        MPYB      ACC,T,#152            ; [CPU_] |529| 
        ADDL      ACC,XAR1              ; [CPU_] |529| 
        MOVL      XAR4,ACC              ; [CPU_] |529| 
        MOVB      XAR0,#98              ; [CPU_] |529| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_] |529| 
        CMPB      AL,#2                 ; [CPU_] |529| 
        B         $C$L41,LEQ            ; [CPU_] |529| 
        ; branchcc occurs ; [] |529| 
        MOVB      XAR3,#0               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 530,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 530 | while (triggerVal > conf_data.sensor[conf_data.ch[i].ci].mass[j + 1]   
; 531 |                 && j < conf_data.sensor[conf_data.ch[i].ci].points - 2)
;     |  {                                                                     
;----------------------------------------------------------------------
        B         $C$L40,UNC            ; [CPU_] |530| 
        ; branch occurs ; [] |530| 
$C$L39:    
	.dwpsn	file "../Source/ad7738.c",line 532,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 532 | j++;                                                                   
;----------------------------------------------------------------------
        ADDB      XAR3,#2               ; [CPU_] |532| 
        INC       *-SP[3]               ; [CPU_] |532| 
$C$L40:    
	.dwpsn	file "../Source/ad7738.c",line 530,column 10,is_stmt,isa 0
        MOV       T,*+XAR2[0]           ; [CPU_] |530| 
        MPYB      ACC,T,#152            ; [CPU_] |530| 
        ADDL      ACC,XAR3              ; [CPU_] |530| 
        ADDL      ACC,XAR1              ; [CPU_] |530| 
        MOVL      XAR4,ACC              ; [CPU_] |530| 
        MOVB      XAR0,#102             ; [CPU_] |530| 
        MOVW      DP,#_triggerVal       ; [CPU_U] 
        MOVL      ACC,*+XAR4[AR0]       ; [CPU_] |530| 
        MOVL      *-SP[2],ACC           ; [CPU_] |530| 
        MOVL      ACC,@_triggerVal      ; [CPU_] |530| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("FS$$CMP")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #FS$$CMP              ; [CPU_] |530| 
        ; call occurs [#FS$$CMP] ; [] |530| 
        CMPB      AL,#0                 ; [CPU_] |530| 
        B         $C$L41,LEQ            ; [CPU_] |530| 
        ; branchcc occurs ; [] |530| 
        MOV       T,*+XAR2[0]           ; [CPU_] |530| 
        MPYB      ACC,T,#152            ; [CPU_] |530| 
        ADDL      ACC,XAR1              ; [CPU_] |530| 
        MOVL      XAR4,ACC              ; [CPU_] |530| 
        MOVB      XAR0,#98              ; [CPU_] |530| 
        MOV       AL,*+XAR4[AR0]        ; [CPU_] |530| 
        ADDB      AL,#-2                ; [CPU_] |530| 
        CMP       AL,*-SP[3]            ; [CPU_] |530| 
        B         $C$L39,GT             ; [CPU_] |530| 
        ; branchcc occurs ; [] |530| 
$C$L41:    
        MOV       T,*-SP[3]             ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 535,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 535 | triggerValADC = (triggerVal - intercept[j].adw[i]) / slope[j].adw[i];  
; 537 | #if(0)                                                                 
; 538 | // set limit                                                           
; 539 | //      for (i = 0; i < LIM_MAX; i++) {                                
; 540 | //              limit[i] = conf_data.lim[i].limit;                     
; 541 | //              limitchgd[i] = 0;                                      
; 542 | //      }                                                              
; 544 | // set dac calibration                                                 
; 545 | //      for (i = 0; i < DAC_MAX; i++) {                                
; 547 |         //if( VFD_LOAD == conf_data.dac[i].what ||                     
; 548 |         //VFD_PEAK == conf_data.dac[i].what ||                         
; 549 |         //VFD_VALL == conf_data.dac[i].what )                          
; 550 |         //{                                                            
; 551 |         //daci.adc[i] = conf_data.dac[i].dslope * conf_data.sensor[conf
;     | _data.ch[conf_data.dac[i].ch].ci].dacoff + conf_data.dac[i].dint;      
; 552 |         //dacs.adw[i] = conf_data.dac[i].dslope * conf_data.sensor[conf
;     | _data.ch[conf_data.dac[i].ch].ci].dacgain / conf_data.sensor[conf_data.
;     | ch[conf_data.dac[i].ch].ci].ufactor;                                   
; 553 |         //  daci.adc[i] = conf_data.sensor[conf_data.ch[conf_data.dac[i
;     | ].ch].ci].dacoff;                                                      
; 554 |         //  dacs.adw[i] = conf_data.sensor[conf_data.ch[conf_data.dac[i
;     | ].ch].ci].dacgain / conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].
;     | ci].ufactor;                                                           
; 555 |         //}                                                            
; 556 |         //else if( VFD_POSI == conf_data.dac[i].what ||                
; 557 |         //     VFD_VELO == conf_data.dac[i].what )                     
; 558 |         //{                                                            
; 559 |         // position and velocity                                       
; 560 |         //daci.adc[i] = conf_data.dac[i].dslope * conf_data.dac[i].offs
;     | et + conf_data.dac[i].dint;                                            
; 561 |         //dacs.adw[i] = conf_data.dac[i].dslope * conf_data.dac[i].gain
;     | ;                                                                      
; 562 | //              daci.adc[i] = conf_data.dac[i].offset;                 
; 563 | //              dacs.adw[i] = conf_data.dac[i].gain;                   
; 564 |         //}                                                            
; 565 | //      }                                                              
; 566 | #endif                                                                 
;----------------------------------------------------------------------
        MOVL      XAR4,*-SP[10]         ; [CPU_] |535| 
        MPYB      ACC,T,#10             ; [CPU_] |535| 
        ADDL      XAR4,ACC              ; [CPU_] |535| 
        MOVL      XAR1,ACC              ; [CPU_] |535| 
        MOVW      DP,#_triggerVal       ; [CPU_U] 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |535| 
        MOVL      *-SP[2],ACC           ; [CPU_] |535| 
        MOVL      ACC,@_triggerVal      ; [CPU_] |535| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("FS$$SUB")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #FS$$SUB              ; [CPU_] |535| 
        ; call occurs [#FS$$SUB] ; [] |535| 
        MOVL      XAR4,*-SP[8]          ; [CPU_] |535| 
        MOVL      XAR6,ACC              ; [CPU_] |535| 
        MOVL      ACC,XAR1              ; [CPU_] |535| 
        ADDL      XAR4,ACC              ; [CPU_] |535| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |535| 
        MOVL      *-SP[2],ACC           ; [CPU_] |535| 
        MOVL      ACC,XAR6              ; [CPU_] |535| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("FS$$DIV")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #FS$$DIV              ; [CPU_] |535| 
        ; call occurs [#FS$$DIV] ; [] |535| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |535| 
        ; call occurs [#FS$$TOL] ; [] |535| 
        SUBB      SP,#12                ; [CPU_U] 
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
        MOVW      DP,#_triggerValADC    ; [CPU_U] 
        MOVL      @_triggerValADC,ACC   ; [CPU_] |535| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$190, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$190, DW_AT_TI_end_line(0x237)
	.dwattr $C$DW$190, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$190

	.sect	".text"
	.clink
	.global	_ad7738_resetvall

$C$DW$209	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$209, DW_AT_name("ad7738_resetvall")
	.dwattr $C$DW$209, DW_AT_low_pc(_ad7738_resetvall)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_ad7738_resetvall")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x1db)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 475,column 34,is_stmt,address _ad7738_resetvall,isa 0

	.dwfde $C$DW$CIE, _ad7738_resetvall
$C$DW$210	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$210, DW_AT_name("bm")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 475 | void ad7738_resetvall(Uint16 bm) {                                     
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
$C$DW$211	.dwtag  DW_TAG_variable
	.dwattr $C$DW$211, DW_AT_name("bm")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_vall_reset       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 476,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 476 | vall_reset = bm;                                                       
;----------------------------------------------------------------------
        MOV       @_vall_reset,AL       ; [CPU_] |476| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$209, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x1dd)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text"
	.clink
	.global	_ad7738_resettare

$C$DW$213	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$213, DW_AT_name("ad7738_resettare")
	.dwattr $C$DW$213, DW_AT_low_pc(_ad7738_resettare)
	.dwattr $C$DW$213, DW_AT_high_pc(0x00)
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_ad7738_resettare")
	.dwattr $C$DW$213, DW_AT_external
	.dwattr $C$DW$213, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$213, DW_AT_TI_begin_line(0x1e0)
	.dwattr $C$DW$213, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$213, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 480,column 34,is_stmt,address _ad7738_resettare,isa 0

	.dwfde $C$DW$CIE, _ad7738_resettare
$C$DW$214	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$214, DW_AT_name("bm")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 480 | void ad7738_resettare(Uint16 bm) {                                     
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
$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("bm")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_tare_reset       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 481,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 481 | tare_reset = bm;                                                       
;----------------------------------------------------------------------
        MOV       @_tare_reset,AL       ; [CPU_] |481| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$213, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$213, DW_AT_TI_end_line(0x1e2)
	.dwattr $C$DW$213, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$213

	.sect	".text"
	.clink
	.global	_ad7738_resetpeak

$C$DW$217	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$217, DW_AT_name("ad7738_resetpeak")
	.dwattr $C$DW$217, DW_AT_low_pc(_ad7738_resetpeak)
	.dwattr $C$DW$217, DW_AT_high_pc(0x00)
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_ad7738_resetpeak")
	.dwattr $C$DW$217, DW_AT_external
	.dwattr $C$DW$217, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$217, DW_AT_TI_begin_line(0x1d6)
	.dwattr $C$DW$217, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$217, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 470,column 34,is_stmt,address _ad7738_resetpeak,isa 0

	.dwfde $C$DW$CIE, _ad7738_resetpeak
$C$DW$218	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$218, DW_AT_name("bm")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 470 | void ad7738_resetpeak(Uint16 bm) {                                     
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
$C$DW$219	.dwtag  DW_TAG_variable
	.dwattr $C$DW$219, DW_AT_name("bm")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_bm")
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_peak_reset       ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 471,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 471 | peak_reset = bm;                                                       
;----------------------------------------------------------------------
        MOV       @_peak_reset,AL       ; [CPU_] |471| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$217, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$217, DW_AT_TI_end_line(0x1d8)
	.dwattr $C$DW$217, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$217

	.sect	".text"
	.clink
	.global	_ad7738_resetlimit

$C$DW$221	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$221, DW_AT_name("ad7738_resetlimit")
	.dwattr $C$DW$221, DW_AT_low_pc(_ad7738_resetlimit)
	.dwattr $C$DW$221, DW_AT_high_pc(0x00)
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_ad7738_resetlimit")
	.dwattr $C$DW$221, DW_AT_external
	.dwattr $C$DW$221, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$221, DW_AT_TI_begin_line(0x1e5)
	.dwattr $C$DW$221, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$221, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/ad7738.c",line 485,column 35,is_stmt,address _ad7738_resetlimit,isa 0

	.dwfde $C$DW$CIE, _ad7738_resetlimit
$C$DW$222	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$222, DW_AT_name("ch")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 485 | void ad7738_resetlimit(Uint16 ch) {                                    
; 486 | int i;                                                                 
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
$C$DW$223	.dwtag  DW_TAG_variable
	.dwattr $C$DW$223, DW_AT_name("ch")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg4]

;* AR1   assigned to _i
$C$DW$224	.dwtag  DW_TAG_variable
	.dwattr $C$DW$224, DW_AT_name("i")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_i")
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to $O$U25
;* AR4   assigned to $O$K6
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/ad7738.c",line 487,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 487 | if (ch < LIM_MAX) {                                                    
;----------------------------------------------------------------------
        CMPB      AL,#4                 ; [CPU_] |487| 
	.dwpsn	file "../Source/ad7738.c",line 485,column 35,is_stmt,isa 0
        MOVZ      AR0,AL                ; [CPU_] |485| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/ad7738.c",line 487,column 2,is_stmt,isa 0
        B         $C$L42,HIS            ; [CPU_] |487| 
        ; branchcc occurs ; [] |487| 
	.dwpsn	file "../Source/ad7738.c",line 488,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 488 | if ((limit[ch] & LIM_LA) && (limit[ch] & LIM_ST)) {     // latching and
;     |  triggered                                                             
;----------------------------------------------------------------------
        MOVL      XAR4,#_limit          ; [CPU_U] |488| 
        MOVL      ACC,XAR4              ; [CPU_] |488| 
        ADDU      ACC,AR0               ; [CPU_] |488| 
        MOVL      XAR4,ACC              ; [CPU_] |488| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |488| 
        TBIT      AL,#5                 ; [CPU_] |488| 
        B         $C$L45,NTC            ; [CPU_] |488| 
        ; branchcc occurs ; [] |488| 
        TBIT      AL,#0                 ; [CPU_] |488| 
        B         $C$L45,NTC            ; [CPU_] |488| 
        ; branchcc occurs ; [] |488| 
	.dwpsn	file "../Source/ad7738.c",line 489,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 489 | limit[ch] &= ~LIM_ST;                   // set status bit              
;----------------------------------------------------------------------
        AND       AL,*+XAR4[0],#0xfffe  ; [CPU_] |489| 
        MOV       *+XAR4[0],AL          ; [CPU_] |489| 
        MOV       AH,AL                 ; [CPU_] |489| 
	.dwpsn	file "../Source/ad7738.c",line 490,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 490 | limitchgd[ch] = 1;                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#_limitchgd      ; [CPU_U] |490| 
	.dwpsn	file "../Source/ad7738.c",line 491,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 491 | ssr_set(ch, (limit[ch] & LIM_NC));                                     
;----------------------------------------------------------------------
        ANDB      AH,#64                ; [CPU_] |491| 
        MOV       AL,AR0                ; [CPU_] |491| 
	.dwpsn	file "../Source/ad7738.c",line 490,column 4,is_stmt,isa 0
        MOVB      *+XAR4[AR0],#1,UNC    ; [CPU_] |490| 
	.dwpsn	file "../Source/ad7738.c",line 491,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 493 | } else {                                                               
;----------------------------------------------------------------------
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_ssr_set")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_ssr_set             ; [CPU_] |491| 
        ; call occurs [#_ssr_set] ; [] |491| 
        B         $C$L45,UNC            ; [CPU_] |491| 
        ; branch occurs ; [] |491| 
$C$L42:    
        MOVL      XAR2,#_limit          ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 494,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 494 | for (i = 0; i < LIM_MAX; i++) {                                        
;----------------------------------------------------------------------
        MOVB      XAR1,#0               ; [CPU_] |494| 
$C$L43:    
	.dwpsn	file "../Source/ad7738.c",line 495,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 495 | if ((limit[i] & LIM_LA) && (limit[i] & LIM_ST)) {// latching and trigge
;     | red                                                                    
;----------------------------------------------------------------------
        MOV       AL,*+XAR2[0]          ; [CPU_] |495| 
        TBIT      AL,#5                 ; [CPU_] |495| 
        B         $C$L44,NTC            ; [CPU_] |495| 
        ; branchcc occurs ; [] |495| 
        TBIT      AL,#0                 ; [CPU_] |495| 
        B         $C$L44,NTC            ; [CPU_] |495| 
        ; branchcc occurs ; [] |495| 
	.dwpsn	file "../Source/ad7738.c",line 496,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 496 | limit[i] &= ~LIM_ST;                    // set status bit              
;----------------------------------------------------------------------
        AND       AH,*+XAR2[0],#0xfffe  ; [CPU_] |496| 
	.dwpsn	file "../Source/ad7738.c",line 497,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 497 | limitchgd[i] = 1;                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#_limitchgd      ; [CPU_U] |497| 
        SETC      SXM                   ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 496,column 5,is_stmt,isa 0
        MOVZ      AR6,AH                ; [CPU_] |496| 
        MOV       *+XAR2[0],AH          ; [CPU_] |496| 
	.dwpsn	file "../Source/ad7738.c",line 497,column 5,is_stmt,isa 0
        MOVL      ACC,XAR4              ; [CPU_] |497| 
        ADD       ACC,AR1               ; [CPU_] |497| 
        MOVL      XAR4,ACC              ; [CPU_] |497| 
	.dwpsn	file "../Source/ad7738.c",line 498,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 498 | ssr_set(i, (limit[i] & LIM_NC));                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |498| 
        AND       AH,AR6,#0x0040        ; [CPU_] |498| 
	.dwpsn	file "../Source/ad7738.c",line 497,column 5,is_stmt,isa 0
        MOVB      *+XAR4[0],#1,UNC      ; [CPU_] |497| 
	.dwpsn	file "../Source/ad7738.c",line 498,column 5,is_stmt,isa 0
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_ssr_set")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_ssr_set             ; [CPU_] |498| 
        ; call occurs [#_ssr_set] ; [] |498| 
$C$L44:    
	.dwpsn	file "../Source/ad7738.c",line 494,column 15,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |494| 
        ADDB      XAR2,#1               ; [CPU_] |494| 
        MOV       AL,AR1                ; [CPU_] |494| 
        CMPB      AL,#4                 ; [CPU_] |494| 
        B         $C$L43,LT             ; [CPU_] |494| 
        ; branchcc occurs ; [] |494| 
$C$L45:    
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$221, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$221, DW_AT_TI_end_line(0x1f6)
	.dwattr $C$DW$221, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$221

	.sect	".text"
	.clink
	.global	_ad7738_rawrdy

$C$DW$228	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$228, DW_AT_name("ad7738_rawrdy")
	.dwattr $C$DW$228, DW_AT_low_pc(_ad7738_rawrdy)
	.dwattr $C$DW$228, DW_AT_high_pc(0x00)
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_ad7738_rawrdy")
	.dwattr $C$DW$228, DW_AT_external
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$228, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$228, DW_AT_TI_begin_line(0x182)
	.dwattr $C$DW$228, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$228, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 386,column 21,is_stmt,address _ad7738_rawrdy,isa 0

	.dwfde $C$DW$CIE, _ad7738_rawrdy
;----------------------------------------------------------------------
; 386 | int ad7738_rawrdy() {                                                  
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
	.dwpsn	file "../Source/ad7738.c",line 387,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 387 | return rawrdy;                                                         
;----------------------------------------------------------------------
        MOV       AL,@_rawrdy           ; [CPU_] |387| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$228, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$228, DW_AT_TI_end_line(0x184)
	.dwattr $C$DW$228, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$228

	.sect	".text"
	.clink
	.global	_ad7738_monrdy

$C$DW$230	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$230, DW_AT_name("ad7738_monrdy")
	.dwattr $C$DW$230, DW_AT_low_pc(_ad7738_monrdy)
	.dwattr $C$DW$230, DW_AT_high_pc(0x00)
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_ad7738_monrdy")
	.dwattr $C$DW$230, DW_AT_external
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$230, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$230, DW_AT_TI_begin_line(0x1a2)
	.dwattr $C$DW$230, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$230, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 418,column 21,is_stmt,address _ad7738_monrdy,isa 0

	.dwfde $C$DW$CIE, _ad7738_monrdy
;----------------------------------------------------------------------
; 418 | int ad7738_monrdy() {                                                  
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
	.dwpsn	file "../Source/ad7738.c",line 419,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 419 | return monrdy;                                                         
;----------------------------------------------------------------------
        MOV       AL,@_monrdy           ; [CPU_] |419| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$230, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$230, DW_AT_TI_end_line(0x1a4)
	.dwattr $C$DW$230, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$230

	.sect	".text"
	.clink
	.global	_ad7738_monclr

$C$DW$232	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$232, DW_AT_name("ad7738_monclr")
	.dwattr $C$DW$232, DW_AT_low_pc(_ad7738_monclr)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_ad7738_monclr")
	.dwattr $C$DW$232, DW_AT_external
	.dwattr $C$DW$232, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$232, DW_AT_TI_begin_line(0x1a7)
	.dwattr $C$DW$232, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 423,column 22,is_stmt,address _ad7738_monclr,isa 0

	.dwfde $C$DW$CIE, _ad7738_monclr
;----------------------------------------------------------------------
; 423 | void ad7738_monclr() {                                                 
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
	.dwpsn	file "../Source/ad7738.c",line 424,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 424 | monrdy = 0;                                                            
;----------------------------------------------------------------------
        MOV       @_monrdy,#0           ; [CPU_] |424| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$232, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x1a9)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text"
	.clink
	.global	_InitCpuTimer0

$C$DW$234	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$234, DW_AT_name("InitCpuTimer0")
	.dwattr $C$DW$234, DW_AT_low_pc(_InitCpuTimer0)
	.dwattr $C$DW$234, DW_AT_high_pc(0x00)
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_InitCpuTimer0")
	.dwattr $C$DW$234, DW_AT_external
	.dwattr $C$DW$234, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$234, DW_AT_TI_begin_line(0xab)
	.dwattr $C$DW$234, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$234, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 171,column 22,is_stmt,address _InitCpuTimer0,isa 0

	.dwfde $C$DW$CIE, _InitCpuTimer0
;----------------------------------------------------------------------
; 171 | void InitCpuTimer0() {                                                 
; 173 | // Interrupts that are used in this example are re-mapped to           
; 174 | // ISR functions found within this file.                               
; 175 | EALLOW;                                                                
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
	.dwpsn	file "../Source/ad7738.c",line 176,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | PieVectTable.TINT0 = &cpu_timer0_isr;                                  
; 177 | EDIS;                                                                  
; 179 | // Initialize timer period to maximum:                                 
;----------------------------------------------------------------------
        MOVL      XAR4,#_cpu_timer0_isr ; [CPU_U] |176| 
        MOVW      DP,#_PieVectTable+76  ; [CPU_U] 
        MOVL      @_PieVectTable+76,XAR4 ; [CPU_] |176| 
 EDIS
	.dwpsn	file "../Source/ad7738.c",line 180,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | CpuTimer0Regs.PRD.all = 0xFFFFFFFF;                                    
; 182 | // Initialize pre-scale counter to divide by 1 (SYSCLKOUT):            
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |180| 
        MOVW      DP,#_CpuTimer0Regs+2  ; [CPU_U] 
        SUBB      ACC,#1                ; [CPU_] |180| 
        MOVL      @_CpuTimer0Regs+2,ACC ; [CPU_] |180| 
	.dwpsn	file "../Source/ad7738.c",line 183,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | CpuTimer0Regs.TPR.all = 0;                                             
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+6,#0  ; [CPU_] |183| 
	.dwpsn	file "../Source/ad7738.c",line 184,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | CpuTimer0Regs.TPRH.all = 0;                                            
; 186 | // Make sure timer is stopped:                                         
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+7,#0  ; [CPU_] |184| 
	.dwpsn	file "../Source/ad7738.c",line 187,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | CpuTimer0Regs.TCR.bit.TSS = 1;                                         
; 189 | // Reload all counter register with period value:                      
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0010 ; [CPU_] |187| 
	.dwpsn	file "../Source/ad7738.c",line 190,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | CpuTimer0Regs.TCR.bit.TRB = 1;                                         
; 192 | // Enable CPU INT1 which is connected to CPU-Timer 0:                  
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0020 ; [CPU_] |190| 
	.dwpsn	file "../Source/ad7738.c",line 193,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 193 | IER |= M_INT1;                                                         
; 195 | // Enable TINT0 in the PIE: Group 1 interrupt 7                        
;----------------------------------------------------------------------
        OR        IER,#0x0001           ; [CPU_] |193| 
        SPM       #0                    ; [CPU_] 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 196,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 196 | PieCtrlRegs.PIEIER1.bit.INTx7 = 1;                                     
;----------------------------------------------------------------------
        OR        @_PieCtrlRegs+2,#0x0040 ; [CPU_] |196| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$234, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$234, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$234, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$234

	.sect	".text"
	.clink
	.global	_ConfigCpuTimer0

$C$DW$236	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$236, DW_AT_name("ConfigCpuTimer0")
	.dwattr $C$DW$236, DW_AT_low_pc(_ConfigCpuTimer0)
	.dwattr $C$DW$236, DW_AT_high_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_ConfigCpuTimer0")
	.dwattr $C$DW$236, DW_AT_external
	.dwattr $C$DW$236, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$236, DW_AT_TI_begin_line(0xcf)
	.dwattr $C$DW$236, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$236, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/ad7738.c",line 207,column 48,is_stmt,address _ConfigCpuTimer0,isa 0

	.dwfde $C$DW$CIE, _ConfigCpuTimer0
$C$DW$237	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$237, DW_AT_name("Freq")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_Freq")
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$237, DW_AT_location[DW_OP_reg0]

$C$DW$238	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$238, DW_AT_name("Period")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_Period")
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$238, DW_AT_location[DW_OP_breg20 -6]


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
$C$DW$239	.dwtag  DW_TAG_variable
	.dwattr $C$DW$239, DW_AT_name("Period")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_Period")
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$288)
	.dwattr $C$DW$239, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 207 | void ConfigCpuTimer0(float Freq, float Period) {                       
; 209 | // Initialize timer period:                                            
;----------------------------------------------------------------------
        MOVL      XAR6,*-SP[6]          ; [CPU_] |207| 
	.dwpsn	file "../Source/ad7738.c",line 210,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | CpuTimer0Regs.PRD.all = (long) (Freq * Period);                        
; 212 | // Set pre-scale counter to divide by 1 (SYSCLKOUT):                   
;----------------------------------------------------------------------
        MOVL      *-SP[2],XAR6          ; [CPU_] |210| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$240, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |210| 
        ; call occurs [#FS$$MPY] ; [] |210| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("FS$$TOL")
	.dwattr $C$DW$241, DW_AT_TI_call

        LCR       #FS$$TOL              ; [CPU_] |210| 
        ; call occurs [#FS$$TOL] ; [] |210| 
        MOVW      DP,#_CpuTimer0Regs+2  ; [CPU_U] 
        MOVL      @_CpuTimer0Regs+2,ACC ; [CPU_] |210| 
	.dwpsn	file "../Source/ad7738.c",line 213,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 213 | CpuTimer0Regs.TPR.all = 0;                                             
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+6,#0  ; [CPU_] |213| 
	.dwpsn	file "../Source/ad7738.c",line 214,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | CpuTimer0Regs.TPRH.all = 0;                                            
; 216 | // Initialize timer control register:                                  
;----------------------------------------------------------------------
        MOV       @_CpuTimer0Regs+7,#0  ; [CPU_] |214| 
	.dwpsn	file "../Source/ad7738.c",line 217,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | CpuTimer0Regs.TCR.bit.TSS = 1;  // 1 = Stop timer, 0 = Start/Restart Ti
;     | mer                                                                    
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0010 ; [CPU_] |217| 
	.dwpsn	file "../Source/ad7738.c",line 218,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 218 | CpuTimer0Regs.TCR.bit.TRB = 1;  // 1 = reload timer                    
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0020 ; [CPU_] |218| 
	.dwpsn	file "../Source/ad7738.c",line 219,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 219 | CpuTimer0Regs.TCR.bit.SOFT = 1;                                        
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0400 ; [CPU_] |219| 
	.dwpsn	file "../Source/ad7738.c",line 220,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | CpuTimer0Regs.TCR.bit.FREE = 1; // Timer Free Run                      
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x0800 ; [CPU_] |220| 
	.dwpsn	file "../Source/ad7738.c",line 221,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 221 | CpuTimer0Regs.TCR.bit.TIE = 1;  // 0 = Disable / 1 = Enable Timer Inter
;     | rupt                                                                   
;----------------------------------------------------------------------
        OR        @_CpuTimer0Regs+4,#0x4000 ; [CPU_] |221| 
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$236, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$236, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$236, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$236

	.sect	".text"
	.clink
	.global	_ad7738_init

$C$DW$243	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$243, DW_AT_name("ad7738_init")
	.dwattr $C$DW$243, DW_AT_low_pc(_ad7738_init)
	.dwattr $C$DW$243, DW_AT_high_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_ad7738_init")
	.dwattr $C$DW$243, DW_AT_external
	.dwattr $C$DW$243, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$243, DW_AT_TI_begin_line(0x127)
	.dwattr $C$DW$243, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$243, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../Source/ad7738.c",line 295,column 20,is_stmt,address _ad7738_init,isa 0

	.dwfde $C$DW$CIE, _ad7738_init
;----------------------------------------------------------------------
; 295 | void ad7738_init() {                                                   
; 297 | int i;                                                                 
; 298 | volatile int chip;                                                     
; 299 | volatile int prodid;                                                   
; 300 | volatile int inter;                                                    
; 301 | volatile int pwr;                                                      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_init                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  4 Auto,  0 SOE     *
;***************************************************************

_ad7738_init:
;* AR0   assigned to $O$C1
;* AR7   assigned to $O$C2
;* AR5   assigned to $O$C3
;* AR4   assigned to $O$C4
;* AR0   assigned to $O$U60
;* AR7   assigned to $O$U57
;* AR5   assigned to $O$U54
;* AR4   assigned to $O$U51
;* AR4   assigned to $O$U13
$C$DW$244	.dwtag  DW_TAG_variable
	.dwattr $C$DW$244, DW_AT_name("chip")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_chip")
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$244, DW_AT_location[DW_OP_breg20 -3]

$C$DW$245	.dwtag  DW_TAG_variable
	.dwattr $C$DW$245, DW_AT_name("prodid")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_prodid")
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$245, DW_AT_location[DW_OP_breg20 -4]

$C$DW$246	.dwtag  DW_TAG_variable
	.dwattr $C$DW$246, DW_AT_name("inter")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_inter")
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$246, DW_AT_location[DW_OP_breg20 -5]

$C$DW$247	.dwtag  DW_TAG_variable
	.dwattr $C$DW$247, DW_AT_name("pwr")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_pwr")
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$253)
	.dwattr $C$DW$247, DW_AT_location[DW_OP_breg20 -6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#6                 ; [CPU_U] 
	.dwcfi	cfa_offset, -8
	.dwpsn	file "../Source/ad7738.c",line 303,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | spi_init();                                     // SPI init            
;----------------------------------------------------------------------
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_spi_init")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #_spi_init            ; [CPU_] |303| 
        ; call occurs [#_spi_init] ; [] |303| 
	.dwpsn	file "../Source/ad7738.c",line 304,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 304 | mcbsp_init();                           // the other SPI               
;----------------------------------------------------------------------
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_mcbsp_init")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #_mcbsp_init          ; [CPU_] |304| 
        ; call occurs [#_mcbsp_init] ; [] |304| 
	.dwpsn	file "../Source/ad7738.c",line 305,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 305 | qep_init();                                                            
; 307 | // Setup AD7768-1                                                      
;----------------------------------------------------------------------
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_qep_init")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #_qep_init            ; [CPU_] |305| 
        ; call occurs [#_qep_init] ; [] |305| 
	.dwpsn	file "../Source/ad7738.c",line 309,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | chip = xpi_xmit2(CHIPTYPE + ADCREAD, 0x00);                            
;----------------------------------------------------------------------
        MOVB      AL,#67                ; [CPU_] |309| 
        MOVB      AH,#0                 ; [CPU_] |309| 
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_xpi_xmit2")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #_xpi_xmit2           ; [CPU_] |309| 
        ; call occurs [#_xpi_xmit2] ; [] |309| 
	.dwpsn	file "../Source/ad7738.c",line 310,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 310 | prodid = xpi_xmit2(PRODID + ADCREAD, 0x00);                            
;----------------------------------------------------------------------
        MOVB      AH,#0                 ; [CPU_] |310| 
	.dwpsn	file "../Source/ad7738.c",line 309,column 2,is_stmt,isa 0
        MOV       *-SP[3],AL            ; [CPU_] |309| 
	.dwpsn	file "../Source/ad7738.c",line 310,column 2,is_stmt,isa 0
        MOVB      AL,#68                ; [CPU_] |310| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_xpi_xmit2")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #_xpi_xmit2           ; [CPU_] |310| 
        ; call occurs [#_xpi_xmit2] ; [] |310| 
	.dwpsn	file "../Source/ad7738.c",line 311,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 311 | inter = xpi_xmit2(INTERFACE + ADCREAD, 0x00);                          
;----------------------------------------------------------------------
        MOVB      AH,#0                 ; [CPU_] |311| 
	.dwpsn	file "../Source/ad7738.c",line 310,column 2,is_stmt,isa 0
        MOV       *-SP[4],AL            ; [CPU_] |310| 
	.dwpsn	file "../Source/ad7738.c",line 311,column 2,is_stmt,isa 0
        MOVB      AL,#84                ; [CPU_] |311| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_xpi_xmit2")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #_xpi_xmit2           ; [CPU_] |311| 
        ; call occurs [#_xpi_xmit2] ; [] |311| 
	.dwpsn	file "../Source/ad7738.c",line 312,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 312 | pwr = xpi_xmit2(POWERCLK, 0x23);
;     |  // run at 128ksps                                                     
;----------------------------------------------------------------------
        MOVB      AH,#35                ; [CPU_] |312| 
	.dwpsn	file "../Source/ad7738.c",line 311,column 2,is_stmt,isa 0
        MOV       *-SP[5],AL            ; [CPU_] |311| 
	.dwpsn	file "../Source/ad7738.c",line 312,column 2,is_stmt,isa 0
        MOVB      AL,#21                ; [CPU_] |312| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_xpi_xmit2")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #_xpi_xmit2           ; [CPU_] |312| 
        ; call occurs [#_xpi_xmit2] ; [] |312| 
	.dwpsn	file "../Source/ad7738.c",line 313,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 313 | pwr = xpi_xmit2(POWERCLK + ADCREAD, 0x00);                             
;----------------------------------------------------------------------
        MOVB      AH,#0                 ; [CPU_] |313| 
	.dwpsn	file "../Source/ad7738.c",line 312,column 2,is_stmt,isa 0
        MOV       *-SP[6],AL            ; [CPU_] |312| 
	.dwpsn	file "../Source/ad7738.c",line 313,column 2,is_stmt,isa 0
        MOVB      AL,#85                ; [CPU_] |313| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_xpi_xmit2")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #_xpi_xmit2           ; [CPU_] |313| 
        ; call occurs [#_xpi_xmit2] ; [] |313| 
        MOV       *-SP[6],AL            ; [CPU_] |313| 
	.dwpsn	file "../Source/ad7738.c",line 315,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 315 | maf_rst();                                      // reset the moving ave
;     | rage filter                                                            
;----------------------------------------------------------------------
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_maf_rst")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #_maf_rst             ; [CPU_] |315| 
        ; call occurs [#_maf_rst] ; [] |315| 
	.dwpsn	file "../Source/ad7738.c",line 316,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 316 | prod_init();                                                           
; 317 | velf_rst();                                                            
; 319 | mon_cnt = 0;                                    // sample counts for mo
;     | nitor data                                                             
; 320 | tempcnt = 0;                                    // sample count for tem
;     | pearture reading                                                       
; 321 | tempstart = 0;                          // flag to start temperature co
;     | nversion                                                               
; 322 | tempread = 0;                                   // flag to read tempera
;     | ture                                                                   
; 324 | tagscnt = 0;                                                           
; 325 | tagsdetect = 0;                                                        
; 327 | rawrdy = 0;                                                            
; 328 | monrdy = 0;                                                            
; 330 | tare_reset = 0;                         // tare flag                   
; 331 | peak_reset = BM_ALL;                                                   
; 332 | vall_reset = BM_ALL;                                                   
; 334 | for (i = 0; i < CHS_MAX; i++) {                                        
;----------------------------------------------------------------------
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_prod_init")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #_prod_init           ; [CPU_] |316| 
        ; call occurs [#_prod_init] ; [] |316| 
        MOVB      XAR6,#1               ; [CPU_] 
        MOVL      XAR4,#_enccnt         ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 256,column 3,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_] |256| 
$C$L46:    
        MOVL      *XAR4++,ACC           ; [CPU_] |256| 
	.dwpsn	file "../Source/ad7738.c",line 255,column 14,is_stmt,isa 0
        BANZ      $C$L46,AR6--          ; [CPU_] |255| 
        ; branchcc occurs ; [] |255| 
        MOVW      DP,#_mon_cnt          ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 336,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 336 | hfactor.adw[i] = 1;                             // reset heat factors  
;----------------------------------------------------------------------
        MOVL      XAR4,#_hfactor        ; [CPU_U] |336| 
        MOV       ACC,#32512 << 15      ; [CPU_] |336| 
	.dwpsn	file "../Source/ad7738.c",line 319,column 2,is_stmt,isa 0
        MOV       @_mon_cnt,#0          ; [CPU_] |319| 
	.dwpsn	file "../Source/ad7738.c",line 320,column 2,is_stmt,isa 0
        MOV       @_tempcnt,#0          ; [CPU_] |320| 
	.dwpsn	file "../Source/ad7738.c",line 321,column 2,is_stmt,isa 0
        MOV       @_tempstart,#0        ; [CPU_] |321| 
	.dwpsn	file "../Source/ad7738.c",line 322,column 2,is_stmt,isa 0
        MOV       @_tempread,#0         ; [CPU_] |322| 
	.dwpsn	file "../Source/ad7738.c",line 324,column 2,is_stmt,isa 0
        MOV       @_tagscnt,#0          ; [CPU_] |324| 
	.dwpsn	file "../Source/ad7738.c",line 325,column 2,is_stmt,isa 0
        MOV       @_tagsdetect,#0       ; [CPU_] |325| 
	.dwpsn	file "../Source/ad7738.c",line 327,column 2,is_stmt,isa 0
        MOV       @_rawrdy,#0           ; [CPU_] |327| 
	.dwpsn	file "../Source/ad7738.c",line 328,column 2,is_stmt,isa 0
        MOV       @_monrdy,#0           ; [CPU_] |328| 
	.dwpsn	file "../Source/ad7738.c",line 330,column 2,is_stmt,isa 0
        MOV       @_tare_reset,#0       ; [CPU_] |330| 
	.dwpsn	file "../Source/ad7738.c",line 331,column 2,is_stmt,isa 0
        MOVB      @_peak_reset,#255,UNC ; [CPU_] |331| 
	.dwpsn	file "../Source/ad7738.c",line 332,column 2,is_stmt,isa 0
        MOVB      @_vall_reset,#255,UNC ; [CPU_] |332| 
	.dwpsn	file "../Source/ad7738.c",line 337,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 337 | ad7738_tare.adw[i] = 0;                 // reset the tare value        
;----------------------------------------------------------------------
        MOVL      XAR5,#_ad7738_tare    ; [CPU_U] |337| 
	.dwpsn	file "../Source/ad7738.c",line 338,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 338 | ad7738_peak.adw[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      XAR7,#_ad7738_peak    ; [CPU_U] |338| 
	.dwpsn	file "../Source/ad7738.c",line 339,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 339 | ad7738_vall.adw[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      XAR0,#_ad7738_vall    ; [CPU_U] |339| 
        MOVB      XAR6,#1               ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 336,column 3,is_stmt,isa 0
        MOVL      *XAR4++,ACC           ; [CPU_] |336| 
	.dwpsn	file "../Source/ad7738.c",line 337,column 3,is_stmt,isa 0
        MOV       AL,#0                 ; [CPU_] |337| 
        MOV       AH,#0                 ; [CPU_] |337| 
        MOVL      *XAR5++,ACC           ; [CPU_] |337| 
	.dwpsn	file "../Source/ad7738.c",line 338,column 3,is_stmt,isa 0
        MOVL      *XAR7++,ACC           ; [CPU_] |338| 
	.dwpsn	file "../Source/ad7738.c",line 339,column 3,is_stmt,isa 0
        MOVL      *XAR0++,ACC           ; [CPU_] |339| 
	.dwpsn	file "../Source/ad7738.c",line 341,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 341 | ad7738_err[i] = 0;                                                     
; 344 | for (i = 0; i < ENC_MAX; i++) {                                        
;----------------------------------------------------------------------
        MOV       @_ad7738_err,#0       ; [CPU_] |341| 
$C$L47:    
	.dwpsn	file "../Source/ad7738.c",line 346,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 346 | hfactor.pos[i] = 1;                             // reset heat factors  
;----------------------------------------------------------------------
        MOV       ACC,#32512 << 15      ; [CPU_] |346| 
        MOVL      *+XAR4[0],ACC         ; [CPU_] |346| 
	.dwpsn	file "../Source/ad7738.c",line 347,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 347 | ad7738_tare.pos[i] = 0;                 // reset the tare value        
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |347| 
        MOV       AH,#0                 ; [CPU_] |347| 
        MOVL      *+XAR5[0],ACC         ; [CPU_] |347| 
	.dwpsn	file "../Source/ad7738.c",line 348,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 348 | ad7738_peak.pos[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR7[0],ACC         ; [CPU_] |348| 
	.dwpsn	file "../Source/ad7738.c",line 349,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 349 | ad7738_vall.pos[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR0[0],ACC         ; [CPU_] |349| 
	.dwpsn	file "../Source/ad7738.c",line 351,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 351 | hfactor.vel[i] = 1;                             // reset heat factors  
;----------------------------------------------------------------------
        MOV       ACC,#32512 << 15      ; [CPU_] |351| 
        MOVL      *+XAR4[4],ACC         ; [CPU_] |351| 
	.dwpsn	file "../Source/ad7738.c",line 352,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 352 | ad7738_tare.vel[i] = 0;                 // reset the tare value        
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |352| 
        MOV       AH,#0                 ; [CPU_] |352| 
	.dwpsn	file "../Source/ad7738.c",line 344,column 14,is_stmt,isa 0
        ADDB      XAR4,#2               ; [CPU_] |344| 
	.dwpsn	file "../Source/ad7738.c",line 352,column 3,is_stmt,isa 0
        MOVL      *+XAR5[4],ACC         ; [CPU_] |352| 
	.dwpsn	file "../Source/ad7738.c",line 344,column 14,is_stmt,isa 0
        ADDB      XAR5,#2               ; [CPU_] |344| 
	.dwpsn	file "../Source/ad7738.c",line 353,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 353 | ad7738_peak.vel[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR7[4],ACC         ; [CPU_] |353| 
	.dwpsn	file "../Source/ad7738.c",line 344,column 14,is_stmt,isa 0
        ADDB      XAR7,#2               ; [CPU_] |344| 
	.dwpsn	file "../Source/ad7738.c",line 354,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 354 | ad7738_vall.vel[i] = 0;                                                
;----------------------------------------------------------------------
        MOVL      *+XAR0[4],ACC         ; [CPU_] |354| 
	.dwpsn	file "../Source/ad7738.c",line 344,column 14,is_stmt,isa 0
        ADDB      XAR0,#2               ; [CPU_] |344| 
        BANZ      $C$L47,AR6--          ; [CPU_] |344| 
        ; branchcc occurs ; [] |344| 
        MOVW      DP,#_speedSensorPolarity ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 356,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 356 | speedSensorPolarity = 1;                                               
; 358 | // Interrupts that are used in this example are re-mapped to           
; 359 | // ISR functions found within this file.                               
; 360 | EALLOW;                                                                
;----------------------------------------------------------------------
        MOVB      @_speedSensorPolarity,#1,UNC ; [CPU_] |356| 
 EALLOW
	.dwpsn	file "../Source/ad7738.c",line 361,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 361 | PieVectTable.TINT0 = &cpu_timer0_isr;                                  
;----------------------------------------------------------------------
        MOVL      XAR4,#_cpu_timer0_isr ; [CPU_U] |361| 
        MOVW      DP,#_PieVectTable+76  ; [CPU_U] 
        MOVL      @_PieVectTable+76,XAR4 ; [CPU_] |361| 
	.dwpsn	file "../Source/ad7738.c",line 362,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 362 | PieVectTable.XINT1 = &cpu_xint1_isr;                                   
; 363 | EDIS;                                                                  
;----------------------------------------------------------------------
        MOVL      XAR4,#_cpu_xint1_isr  ; [CPU_U] |362| 
        MOVL      @_PieVectTable+70,XAR4 ; [CPU_] |362| 
 EDIS
        SPM       #0                    ; [CPU_] 
	.dwpsn	file "../Source/ad7738.c",line 365,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 365 | InitCpuTimer0();                                // initialize the CpuTi
;     | mer0                                                                   
;----------------------------------------------------------------------
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_InitCpuTimer0")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #_InitCpuTimer0       ; [CPU_] |365| 
        ; call occurs [#_InitCpuTimer0] ; [] |365| 
	.dwpsn	file "../Source/ad7738.c",line 366,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 366 | ConfigCpuTimer0(150, 1000);             // Configure CpuTimer0 to 1khz 
;----------------------------------------------------------------------
        MOV       AL,#0                 ; [CPU_] |366| 
        MOV       AH,#17530             ; [CPU_] |366| 
        MOVL      *-SP[2],ACC           ; [CPU_] |366| 
        MOV       AL,#0                 ; [CPU_] |366| 
        MOV       AH,#17174             ; [CPU_] |366| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_ConfigCpuTimer0")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #_ConfigCpuTimer0     ; [CPU_] |366| 
        ; call occurs [#_ConfigCpuTimer0] ; [] |366| 
        MOVW      DP,#_XIntruptRegs     ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 368,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 368 | XIntruptRegs.XINT1CR.bit.ENABLE = 1;                                   
;----------------------------------------------------------------------
        OR        @_XIntruptRegs,#0x0001 ; [CPU_] |368| 
	.dwpsn	file "../Source/ad7738.c",line 369,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 369 | XIntruptRegs.XINT1CR.bit.POLARITY = 0;  // XINT1 on rising edge        
;----------------------------------------------------------------------
        AND       @_XIntruptRegs,#0xfffb ; [CPU_] |369| 
	.dwpsn	file "../Source/ad7738.c",line 371,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 371 | IER |= M_INT1;                  // Enable CPU INT1 which is connected t
;     | o CpuTimer0                                                            
; 373 | //      PieCtrlRegs.PIEIER1.bit.INTx4 = 1;              // Group 1.4 xi
;     | nt1 (see http://www.ti.com/lit/ug/spru078g/spru078g.pdf pg 123)        
;----------------------------------------------------------------------
        OR        IER,#0x0001           ; [CPU_] |371| 
        MOVW      DP,#_PieCtrlRegs+2    ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 374,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 374 | PieCtrlRegs.PIEIER1.bit.INTx7 = 1;// Enable TINT0 in the PIE: Group 1 i
;     | nterrupt 7                                                             
;----------------------------------------------------------------------
        OR        @_PieCtrlRegs+2,#0x0040 ; [CPU_] |374| 
        MOVW      DP,#_CpuTimer0Regs+4  ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 376,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 376 | StartCpuTimer0();                                                      
;----------------------------------------------------------------------
        AND       @_CpuTimer0Regs+4,#0xffef ; [CPU_] |376| 
        SUBB      SP,#6                 ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$243, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$243, DW_AT_TI_end_line(0x17a)
	.dwattr $C$DW$243, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$243

	.sect	".text"
	.clink
	.global	_ad7738_getvall

$C$DW$261	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$261, DW_AT_name("ad7738_getvall")
	.dwattr $C$DW$261, DW_AT_low_pc(_ad7738_getvall)
	.dwattr $C$DW$261, DW_AT_high_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_ad7738_getvall")
	.dwattr $C$DW$261, DW_AT_external
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$261, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$261, DW_AT_TI_begin_line(0x1bd)
	.dwattr $C$DW$261, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$261, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 445,column 27,is_stmt,address _ad7738_getvall,isa 0

	.dwfde $C$DW$CIE, _ad7738_getvall
;----------------------------------------------------------------------
; 445 | adcwt_t* ad7738_getvall() {                                            
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
	.dwpsn	file "../Source/ad7738.c",line 446,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 446 | return &ad7738_vall;                                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_vall    ; [CPU_U] |446| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$261, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$261, DW_AT_TI_end_line(0x1bf)
	.dwattr $C$DW$261, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$261

	.sect	".text"
	.clink
	.global	_ad7738_getraw

$C$DW$263	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$263, DW_AT_name("ad7738_getraw")
	.dwattr $C$DW$263, DW_AT_low_pc(_ad7738_getraw)
	.dwattr $C$DW$263, DW_AT_high_pc(0x00)
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_ad7738_getraw")
	.dwattr $C$DW$263, DW_AT_external
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$193)
	.dwattr $C$DW$263, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$263, DW_AT_TI_begin_line(0x187)
	.dwattr $C$DW$263, DW_AT_TI_begin_column(0x0b)
	.dwattr $C$DW$263, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 391,column 27,is_stmt,address _ad7738_getraw,isa 0

	.dwfde $C$DW$CIE, _ad7738_getraw
;----------------------------------------------------------------------
; 391 | adccnt_t* ad7738_getraw() {                                            
; 392 | rawrdy = 0;                                                            
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
	.dwpsn	file "../Source/ad7738.c",line 393,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 393 | return &ad7738_raw;                                                    
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_raw     ; [CPU_U] |393| 
	.dwpsn	file "../Source/ad7738.c",line 392,column 2,is_stmt,isa 0
        MOV       @_rawrdy,#0           ; [CPU_] |392| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$263, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$263, DW_AT_TI_end_line(0x18a)
	.dwattr $C$DW$263, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$263

	.sect	".text"
	.clink
	.global	_ad7738_getpeakload

$C$DW$265	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$265, DW_AT_name("ad7738_getpeakload")
	.dwattr $C$DW$265, DW_AT_low_pc(_ad7738_getpeakload)
	.dwattr $C$DW$265, DW_AT_high_pc(0x00)
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_ad7738_getpeakload")
	.dwattr $C$DW$265, DW_AT_external
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$265, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$265, DW_AT_TI_begin_line(0x1b7)
	.dwattr $C$DW$265, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$265, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 439,column 28,is_stmt,address _ad7738_getpeakload,isa 0

	.dwfde $C$DW$CIE, _ad7738_getpeakload
;----------------------------------------------------------------------
; 439 | float ad7738_getpeakload() {                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getpeakload           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getpeakload:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_ad7738_peak      ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 440,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 440 | return ad7738_peak.adw[0];                                             
;----------------------------------------------------------------------
        MOVL      ACC,@_ad7738_peak     ; [CPU_] |440| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$265, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$265, DW_AT_TI_end_line(0x1b9)
	.dwattr $C$DW$265, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$265

	.sect	".text"
	.clink
	.global	_ad7738_getpeak

$C$DW$267	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$267, DW_AT_name("ad7738_getpeak")
	.dwattr $C$DW$267, DW_AT_low_pc(_ad7738_getpeak)
	.dwattr $C$DW$267, DW_AT_high_pc(0x00)
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_ad7738_getpeak")
	.dwattr $C$DW$267, DW_AT_external
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$267, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$267, DW_AT_TI_begin_line(0x1b2)
	.dwattr $C$DW$267, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$267, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 434,column 27,is_stmt,address _ad7738_getpeak,isa 0

	.dwfde $C$DW$CIE, _ad7738_getpeak
;----------------------------------------------------------------------
; 434 | adcwt_t* ad7738_getpeak() {                                            
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
	.dwpsn	file "../Source/ad7738.c",line 435,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 435 | return &ad7738_peak;                                                   
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_peak    ; [CPU_U] |435| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$267, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$267, DW_AT_TI_end_line(0x1b4)
	.dwattr $C$DW$267, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$267

	.sect	".text"
	.clink
	.global	_ad7738_getmon

$C$DW$269	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$269, DW_AT_name("ad7738_getmon")
	.dwattr $C$DW$269, DW_AT_low_pc(_ad7738_getmon)
	.dwattr $C$DW$269, DW_AT_high_pc(0x00)
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_ad7738_getmon")
	.dwattr $C$DW$269, DW_AT_external
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$199)
	.dwattr $C$DW$269, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$269, DW_AT_TI_begin_line(0x1ac)
	.dwattr $C$DW$269, DW_AT_TI_begin_column(0x0a)
	.dwattr $C$DW$269, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 428,column 26,is_stmt,address _ad7738_getmon,isa 0

	.dwfde $C$DW$CIE, _ad7738_getmon
;----------------------------------------------------------------------
; 428 | adcwt_t* ad7738_getmon() {                                             
; 429 | // monrdy = 0;                                                         
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
	.dwpsn	file "../Source/ad7738.c",line 430,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 430 | return &ad7738_mon;                                                    
;----------------------------------------------------------------------
        MOVL      XAR4,#_ad7738_mon     ; [CPU_U] |430| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$269, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$269, DW_AT_TI_end_line(0x1af)
	.dwattr $C$DW$269, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$269

	.sect	".text"
	.clink
	.global	_ad7738_getload

$C$DW$271	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$271, DW_AT_name("ad7738_getload")
	.dwattr $C$DW$271, DW_AT_low_pc(_ad7738_getload)
	.dwattr $C$DW$271, DW_AT_high_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_ad7738_getload")
	.dwattr $C$DW$271, DW_AT_external
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$271, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x18c)
	.dwattr $C$DW$271, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$271, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 396,column 24,is_stmt,address _ad7738_getload,isa 0

	.dwfde $C$DW$CIE, _ad7738_getload
;----------------------------------------------------------------------
; 396 | float ad7738_getload() {                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getload               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getload:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_ad7738_load      ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 397,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 397 | return ad7738_load.adw[0];                                             
;----------------------------------------------------------------------
        MOVL      ACC,@_ad7738_load     ; [CPU_] |397| 
$C$DW$272	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$272, DW_AT_low_pc(0x00)
	.dwattr $C$DW$272, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$271, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x18e)
	.dwattr $C$DW$271, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$271

	.sect	".text"
	.clink
	.global	_ad7738_getlimitst

$C$DW$273	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$273, DW_AT_name("ad7738_getlimitst")
	.dwattr $C$DW$273, DW_AT_low_pc(_ad7738_getlimitst)
	.dwattr $C$DW$273, DW_AT_high_pc(0x00)
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_ad7738_getlimitst")
	.dwattr $C$DW$273, DW_AT_external
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$273, DW_AT_TI_begin_line(0x1c2)
	.dwattr $C$DW$273, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$273, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 450,column 34,is_stmt,address _ad7738_getlimitst,isa 0

	.dwfde $C$DW$CIE, _ad7738_getlimitst
$C$DW$274	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$274, DW_AT_name("ch")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 450 | Uint16 ad7738_getlimitst(int ch) {                                     
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
$C$DW$275	.dwtag  DW_TAG_variable
	.dwattr $C$DW$275, DW_AT_name("ch")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 451,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 451 | if (ch < 0 || ch >= LIM_MAX) {                                         
;----------------------------------------------------------------------
        CMPB      AL,#0                 ; [CPU_] |451| 
	.dwpsn	file "../Source/ad7738.c",line 450,column 34,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_] |450| 
	.dwpsn	file "../Source/ad7738.c",line 451,column 2,is_stmt,isa 0
        B         $C$L48,LT             ; [CPU_] |451| 
        ; branchcc occurs ; [] |451| 
        CMPB      AL,#4                 ; [CPU_] |451| 
        B         $C$L49,LT             ; [CPU_] |451| 
        ; branchcc occurs ; [] |451| 
$C$L48:    
	.dwcfi	remember_state
	.dwpsn	file "../Source/ad7738.c",line 452,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 452 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |452| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwcfi	restore_state
$C$L49:    
	.dwpsn	file "../Source/ad7738.c",line 454,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 454 | limitchgd[ch] = 0;                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#_limitchgd      ; [CPU_U] |454| 
        SETC      SXM                   ; [CPU_] 
        MOVL      ACC,XAR4              ; [CPU_] |454| 
        ADD       ACC,AR6               ; [CPU_] |454| 
        MOVL      XAR4,ACC              ; [CPU_] |454| 
        MOV       *+XAR4[0],#0          ; [CPU_] |454| 
	.dwpsn	file "../Source/ad7738.c",line 455,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 455 | return limit[ch];                                                      
;----------------------------------------------------------------------
        MOVL      XAR4,#_limit          ; [CPU_U] |455| 
        MOVL      ACC,XAR4              ; [CPU_] |455| 
        ADD       ACC,AR6               ; [CPU_] |455| 
        MOVL      XAR4,ACC              ; [CPU_] |455| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |455| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$273, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$273, DW_AT_TI_end_line(0x1c8)
	.dwattr $C$DW$273, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$273

	.sect	".text"
	.clink
	.global	_ad7738_getlimitchgd

$C$DW$278	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$278, DW_AT_name("ad7738_getlimitchgd")
	.dwattr $C$DW$278, DW_AT_low_pc(_ad7738_getlimitchgd)
	.dwattr $C$DW$278, DW_AT_high_pc(0x00)
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_ad7738_getlimitchgd")
	.dwattr $C$DW$278, DW_AT_external
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$278, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$278, DW_AT_TI_begin_line(0x1cb)
	.dwattr $C$DW$278, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$278, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/ad7738.c",line 459,column 27,is_stmt,address _ad7738_getlimitchgd,isa 0

	.dwfde $C$DW$CIE, _ad7738_getlimitchgd
;----------------------------------------------------------------------
; 459 | int ad7738_getlimitchgd() {                                            
; 460 | //return limitchgd[0] || limitchgd[1] || limitchgd[2] || limitchgd[3]; 
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
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/ad7738.c",line 461,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 461 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |461| 
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$278, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$278, DW_AT_TI_end_line(0x1ce)
	.dwattr $C$DW$278, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$278

	.sect	".text"
	.clink
	.global	_ad7738_getDropTime

$C$DW$280	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$280, DW_AT_name("ad7738_getDropTime")
	.dwattr $C$DW$280, DW_AT_low_pc(_ad7738_getDropTime)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_ad7738_getDropTime")
	.dwattr $C$DW$280, DW_AT_external
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$280, DW_AT_TI_begin_file("../Source/ad7738.c")
	.dwattr $C$DW$280, DW_AT_TI_begin_line(0x194)
	.dwattr $C$DW$280, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/ad7738.c",line 404,column 33,is_stmt,address _ad7738_getDropTime,isa 0

	.dwfde $C$DW$CIE, _ad7738_getDropTime
$C$DW$281	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$281, DW_AT_name("k")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$281, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 404 | float ad7738_getDropTime(int k) {                                      
; 405 | float ret;                                                             
; 406 | if(dataCollectTrigger == 1) {                                          
; 407 |         //ret =  ((float)(dropTime[1]-dropTime[0]))*0.0000078125; // ti
;     | me difference sampled at 128khz                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _ad7738_getDropTime           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_ad7738_getDropTime:
;* AL    assigned to _k
$C$DW$282	.dwtag  DW_TAG_variable
	.dwattr $C$DW$282, DW_AT_name("k")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$255)
	.dwattr $C$DW$282, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_dataCollectTrigger ; [CPU_U] 
	.dwpsn	file "../Source/ad7738.c",line 408,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 408 | ret = ((float)(dropTime[k]))*0.0000078125;                             
; 411 | else                                                                   
; 412 | ret = 0.0;                                                             
; 414 | return ret;                                                            
;----------------------------------------------------------------------
        MOV       AH,@_dataCollectTrigger ; [CPU_] |408| 
        CMPB      AH,#1                 ; [CPU_] |408| 
        B         $C$L50,NEQ            ; [CPU_] |408| 
        ; branchcc occurs ; [] |408| 
        SETC      SXM                   ; [CPU_] 
        MOVL      XAR4,#_dropTime       ; [CPU_U] |408| 
        MOV       ACC,AL << 1           ; [CPU_] |408| 
        ADDL      XAR4,ACC              ; [CPU_] |408| 
        MOVL      ACC,*+XAR4[0]         ; [CPU_] |408| 
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("L$$TOFS")
	.dwattr $C$DW$283, DW_AT_TI_call

        LCR       #L$$TOFS              ; [CPU_] |408| 
        ; call occurs [#L$$TOFS] ; [] |408| 
        MOVL      XAR6,ACC              ; [CPU_] |408| 
        MOV       AL,#4719              ; [CPU_] |408| 
        MOV       AH,#14083             ; [CPU_] |408| 
        MOVL      *-SP[2],ACC           ; [CPU_] |408| 
        MOVL      ACC,XAR6              ; [CPU_] |408| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("FS$$MPY")
	.dwattr $C$DW$284, DW_AT_TI_call

        LCR       #FS$$MPY              ; [CPU_] |408| 
        ; call occurs [#FS$$MPY] ; [] |408| 
        B         $C$L51,UNC            ; [CPU_] |408| 
        ; branch occurs ; [] |408| 
$C$L50:    
        MOV       AL,#0                 ; [CPU_] |408| 
        MOV       AH,#0                 ; [CPU_] |408| 
$C$L51:    
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("../Source/ad7738.c")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0x19f)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$280

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_BITMAP
	.global	_spi_init
	.global	_moveMotor
	.global	_prod_init
	.global	_prod_add
	.global	_qep_init
	.global	_led_set
	.global	_mcbsp_init
	.global	_autoMotor
	.global	_ssr_set
	.global	_xpi_xmit2
	.global	_xpi_adcdataread
	.global	_CpuTimer0Regs
	.global	_XIntruptRegs
	.global	_PieCtrlRegs
	.global	_GpioDataRegs
	.global	_EvbRegs
	.global	_EvaRegs
	.global	_PieVectTable
	.global	_conf_data
	.global	L$$TOFS
	.global	FS$$MPY
	.global	FS$$TOL
	.global	FS$$ADD
	.global	FS$$SUB
	.global	LL$$DIV
	.global	FS$$DIV
	.global	U$$TOFS
	.global	FS$$CMP

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("ACTRA_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("CMP1ACT")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_CMP1ACT")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$286, DW_AT_bit_size(0x02)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("CMP2ACT")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_CMP2ACT")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$287, DW_AT_bit_size(0x02)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("CMP3ACT")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_CMP3ACT")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$288, DW_AT_bit_size(0x02)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("CMP4ACT")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_CMP4ACT")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$289, DW_AT_bit_size(0x02)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("CMP5ACT")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_CMP5ACT")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$290, DW_AT_bit_size(0x02)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("CMP6ACT")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_CMP6ACT")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$291, DW_AT_bit_size(0x02)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("D")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_D")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$292, DW_AT_bit_size(0x03)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("SVRDIR")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_SVRDIR")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("ACTRA_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("all")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$295, DW_AT_name("bit")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("ACTRB_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("CMP7ACT")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_CMP7ACT")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$296, DW_AT_bit_size(0x02)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("CMP8ACT")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_CMP8ACT")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$297, DW_AT_bit_size(0x02)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("CMP9ACT")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_CMP9ACT")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$298, DW_AT_bit_size(0x02)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("CMP10ACT")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_CMP10ACT")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$299, DW_AT_bit_size(0x02)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("CMP11ACT")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_CMP11ACT")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$300, DW_AT_bit_size(0x02)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("CMP12ACT")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_CMP12ACT")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$301, DW_AT_bit_size(0x02)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("D")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_D")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$302, DW_AT_bit_size(0x03)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("SVRDIR")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_SVRDIR")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("ACTRB_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("all")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$305, DW_AT_name("bit")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("ADC_COUNT")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$306, DW_AT_name("adc")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_adc")
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25

$C$DW$T$192	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$192, DW_AT_name("adccnt_t")
	.dwattr $C$DW$T$192, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$T$192, DW_AT_language(DW_LANG_C)

$C$DW$T$193	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$193, DW_AT_type(*$C$DW$T$192)
	.dwattr $C$DW$T$193, DW_AT_address_class(0x20)


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("ADC_WEIGHT")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x0a)
$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$307, DW_AT_name("adw")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_adw")
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$308, DW_AT_name("pos")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_pos")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$309, DW_AT_name("vel")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_vel")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28

$C$DW$T$198	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$198, DW_AT_name("adcwt_t")
	.dwattr $C$DW$T$198, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$T$198, DW_AT_language(DW_LANG_C)

$C$DW$T$199	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$199, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$T$199, DW_AT_address_class(0x20)


$C$DW$T$201	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$201, DW_AT_type(*$C$DW$T$198)
	.dwattr $C$DW$T$201, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$201, DW_AT_byte_size(0x6e)
$C$DW$310	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$310, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$201


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("CAPCONA_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("rsvd1")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$311, DW_AT_bit_size(0x02)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("CAP3EDGE")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_CAP3EDGE")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$312, DW_AT_bit_size(0x02)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("CAP2EDGE")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_CAP2EDGE")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$313, DW_AT_bit_size(0x02)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("CAP1EDGE")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_CAP1EDGE")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$314, DW_AT_bit_size(0x02)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("CAP3TOADC")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_CAP3TOADC")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("CAP12TSEL")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_CAP12TSEL")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("CAP3TSEL")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_CAP3TSEL")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("rsvd2")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("CAP3EN")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_CAP3EN")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("CAP12EN")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_CAP12EN")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$320, DW_AT_bit_size(0x02)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("CAPRES")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_CAPRES")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("CAPCONA_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("all")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$323, DW_AT_name("bit")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("CAPCONB_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("rsvd1")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$324, DW_AT_bit_size(0x02)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("CAP6EDGE")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_CAP6EDGE")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$325, DW_AT_bit_size(0x02)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("CAP5EDGE")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_CAP5EDGE")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$326, DW_AT_bit_size(0x02)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("CAP4EDGE")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_CAP4EDGE")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$327, DW_AT_bit_size(0x02)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("CAP6TOADC")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_CAP6TOADC")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("CAP45TSEL")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_CAP45TSEL")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("CAP6TSEL")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_CAP6TSEL")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("rsvd2")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("CAP6EN")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_CAP6EN")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("CAP45EN")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_CAP45EN")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$333, DW_AT_bit_size(0x02)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("CAPRES")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_CAPRES")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("CAPCONB_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("all")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$336, DW_AT_name("bit")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("CAPFIFOA_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("rsvd1")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$337, DW_AT_bit_size(0x08)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("CAP1FIFO")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_CAP1FIFO")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$338, DW_AT_bit_size(0x02)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("CAP2FIFO")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_CAP2FIFO")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$339, DW_AT_bit_size(0x02)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("CAP3FIFO")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_CAP3FIFO")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$340, DW_AT_bit_size(0x02)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("rsvd2")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$341, DW_AT_bit_size(0x02)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("CAPFIFOA_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("all")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$343, DW_AT_name("bit")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("CAPFIFOB_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("rsvd1")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$344, DW_AT_bit_size(0x08)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("CAP4FIFO")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_CAP4FIFO")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$345, DW_AT_bit_size(0x02)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("CAP5FIFO")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_CAP5FIFO")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$346, DW_AT_bit_size(0x02)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("CAP6FIFO")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_CAP6FIFO")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$347, DW_AT_bit_size(0x02)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("rsvd2")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$348, DW_AT_bit_size(0x02)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("CAPFIFOB_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("all")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$350, DW_AT_name("bit")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("CHANNEL_CONF")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x0a)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$351, DW_AT_name("ci")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_ci")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$352, DW_AT_name("bslope")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_bslope")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$353, DW_AT_name("tcx")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_tcx")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$354, DW_AT_name("tcy")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_tcy")
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$355, DW_AT_name("tcz")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_tcz")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37

$C$DW$T$151	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$151, DW_AT_name("cconf_t")
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$151, DW_AT_language(DW_LANG_C)


$C$DW$T$152	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$152, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$T$152, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$152, DW_AT_byte_size(0x0a)
$C$DW$356	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$356, DW_AT_upper_bound(0x00)

	.dwendtag $C$DW$T$152


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("COMCONA_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("C1TRIPE")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_C1TRIPE")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("C2TRIPE")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_C2TRIPE")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("C3TRIPE")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_C3TRIPE")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("rsvd")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$360, DW_AT_bit_size(0x02)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("FCMP1OE")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_FCMP1OE")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("FCMP2OE")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_FCMP2OE")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("FCMP3OE")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_FCMP3OE")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("PDPINTASTATUS")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_PDPINTASTATUS")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("FCOMPOE")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_FCOMPOE")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("ACTRLD")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_ACTRLD")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$366, DW_AT_bit_size(0x02)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("SVENABLE")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_SVENABLE")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("CLD")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_CLD")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$368, DW_AT_bit_size(0x02)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("CENABLE")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_CENABLE")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("COMCONA_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("all")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$371, DW_AT_name("bit")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("COMCONB_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("C4TRIPE")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_C4TRIPE")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("C5TRIPE")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_C5TRIPE")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("C6TRIPE")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_C6TRIPE")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("rsvd")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$375, DW_AT_bit_size(0x02)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("FCMP4OE")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_FCMP4OE")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("FCMP5OE")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_FCMP5OE")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("FCMP6OE")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_FCMP6OE")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("PDPINTBSTATUS")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_PDPINTBSTATUS")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("FCOMPOE")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_FCOMPOE")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("ACTRLD")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_ACTRLD")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$381, DW_AT_bit_size(0x02)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("SVENABLE")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_SVENABLE")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("CLD")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_CLD")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$383, DW_AT_bit_size(0x02)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("CENABLE")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_CENABLE")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("COMCONB_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("all")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$386, DW_AT_name("bit")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("CPUTIMER_REGS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x08)
$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$178)
	.dwattr $C$DW$387, DW_AT_name("TIM")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_TIM")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$147)
	.dwattr $C$DW$388, DW_AT_name("PRD")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_PRD")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$177)
	.dwattr $C$DW$389, DW_AT_name("TCR")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_TCR")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("rsvd1")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$183)
	.dwattr $C$DW$391, DW_AT_name("TPR")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_TPR")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$181)
	.dwattr $C$DW$392, DW_AT_name("TPRH")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_TPRH")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42

$C$DW$393	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$42)

$C$DW$T$204	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$204, DW_AT_type(*$C$DW$393)


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("DAC_CONF")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x0c)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("what")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_what")
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("ch")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$396, DW_AT_name("dslopep")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_dslopep")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$397, DW_AT_name("dslopen")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_dslopen")
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$398, DW_AT_name("dint")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_dint")
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$399, DW_AT_name("gain")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_gain")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$400, DW_AT_name("offset")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_offset")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43

$C$DW$T$157	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$157, DW_AT_name("dacconf_t")
	.dwattr $C$DW$T$157, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$T$157, DW_AT_language(DW_LANG_C)


$C$DW$T$158	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$158, DW_AT_type(*$C$DW$T$157)
	.dwattr $C$DW$T$158, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$158, DW_AT_byte_size(0x30)
$C$DW$401	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$401, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$158


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("DBTCON_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("rsvd1")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$402, DW_AT_bit_size(0x02)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("DBTPS")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_DBTPS")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$403, DW_AT_bit_size(0x03)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("EDBT1")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_EDBT1")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("EDBT2")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_EDBT2")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("EDBT3")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_EDBT3")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("DBT")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_DBT")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$407, DW_AT_bit_size(0x04)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("rsvd2")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$408, DW_AT_bit_size(0x04)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("DBTCON_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("all")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$410, DW_AT_name("bit")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("DISPLAY_CONF")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x03)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("what")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_what")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("ch")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("adec")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_adec")
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46

$C$DW$T$155	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$155, DW_AT_name("dconf_t")
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$T$155, DW_AT_language(DW_LANG_C)


$C$DW$T$156	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$156, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$T$156, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$156, DW_AT_byte_size(0x0c)
$C$DW$414	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$414, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$156


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("EVAIFRA_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("all")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$416, DW_AT_name("bit")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("EVAIFRB_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("T2PINT")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_T2PINT")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("T2CINT")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_T2CINT")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("T2UFINT")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_T2UFINT")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("T2OFINT")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_T2OFINT")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("rsvd1")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$421, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("EVAIFRB_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("all")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$423, DW_AT_name("bit")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("EVAIFRC_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("CAP1INT")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_CAP1INT")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("CAP2INT")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_CAP2INT")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("CAP3INT")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_CAP3INT")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("rsvd1")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$427, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("EVAIFRC_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("all")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$429, DW_AT_name("bit")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("EVAIMRA_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("PDPINTA")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_PDPINTA")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("CMP1INT")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_CMP1INT")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("CMP2INT")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_CMP2INT")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("CMP3INT")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_CMP3INT")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("rsvd1")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$434, DW_AT_bit_size(0x03)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("T1PINT")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_T1PINT")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("T1CINT")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_T1CINT")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("T1UFINT")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_T1UFINT")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("T1OFINT")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_T1OFINT")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("rsvd2")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$439, DW_AT_bit_size(0x05)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("EVAIMRA_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("all")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$441, DW_AT_name("bit")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("EVAIMRB_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("T2PINT")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_T2PINT")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("T2CINT")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_T2CINT")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("T2UFINT")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_T2UFINT")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("T2OFINT")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_T2OFINT")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("rsvd1")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$446, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("EVAIMRB_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("all")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$448, DW_AT_name("bit")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("EVAIMRC_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("CAP1INT")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_CAP1INT")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("CAP2INT")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_CAP2INT")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("CAP3INT")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_CAP3INT")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("rsvd1")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$452, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("EVAIMRC_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("all")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$454, DW_AT_name("bit")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("EVA_REGS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x32)
$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$455, DW_AT_name("GPTCONA")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_GPTCONA")
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("T1CNT")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_T1CNT")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("T1CMPR")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_T1CMPR")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("T1PR")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_T1PR")
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$169)
	.dwattr $C$DW$459, DW_AT_name("T1CON")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_T1CON")
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("T2CNT")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_T2CNT")
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("T2CMPR")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_T2CMPR")
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("T2PR")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_T2PR")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$171)
	.dwattr $C$DW$463, DW_AT_name("T2CON")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_T2CON")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$464, DW_AT_name("EXTCONA")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_EXTCONA")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$465, DW_AT_name("rsvd1")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$466, DW_AT_name("COMCONA")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_COMCONA")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("rsvd2")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$468, DW_AT_name("ACTRA")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_ACTRA")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("rsvd3")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$470, DW_AT_name("DBTCONA")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_DBTCONA")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("rsvd4")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("CMPR1")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_CMPR1")
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("CMPR2")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_CMPR2")
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("CMPR3")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_CMPR3")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$475, DW_AT_name("rsvd5")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$476, DW_AT_name("CAPCONA")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_CAPCONA")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("rsvd6")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$478, DW_AT_name("CAPFIFOA")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_CAPFIFOA")
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("CAP1FIFO")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_CAP1FIFO")
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("CAP2FIFO")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_CAP2FIFO")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("CAP3FIFO")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_CAP3FIFO")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("rsvd7")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("CAP1FBOT")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_CAP1FBOT")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("CAP2FBOT")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_CAP2FBOT")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("CAP3FBOT")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_CAP3FBOT")
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$486, DW_AT_name("rsvd8")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$487, DW_AT_name("EVAIMRA")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_EVAIMRA")
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$488, DW_AT_name("EVAIMRB")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_EVAIMRB")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$489, DW_AT_name("EVAIMRC")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_EVAIMRC")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$490, DW_AT_name("EVAIFRA")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_EVAIFRA")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x2f]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$491, DW_AT_name("EVAIFRB")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_EVAIFRB")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$492, DW_AT_name("EVAIFRC")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_EVAIFRC")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61

$C$DW$493	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$61)

$C$DW$T$206	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$206, DW_AT_type(*$C$DW$493)


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("EVBIFRA_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("PDPINTB")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_PDPINTB")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("CMP4INT")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_CMP4INT")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("CMP5INT")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_CMP5INT")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("CMP6INT")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_CMP6INT")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("rsvd1")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$498, DW_AT_bit_size(0x03)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("T3PINT")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_T3PINT")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("T3CINT")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_T3CINT")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("T3UFINT")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_T3UFINT")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("T3OFINT")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_T3OFINT")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("rsvd2")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$503, DW_AT_bit_size(0x05)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("EVBIFRA_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("all")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$505, DW_AT_name("bit")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("EVBIFRB_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("T4PINT")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_T4PINT")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("T4CINT")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_T4CINT")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("T4UFINT")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_T4UFINT")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("T4OFINT")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_T4OFINT")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("rsvd1")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$510, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("EVBIFRB_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("all")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$512, DW_AT_name("bit")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("EVBIFRC_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("CAP4INT")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_CAP4INT")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("CAP5INT")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_CAP5INT")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("CAP6INT")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_CAP6INT")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("rsvd1")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$516, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("EVBIFRC_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("all")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$518, DW_AT_name("bit")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$68, DW_AT_name("EVBIMRA_BITS")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x01)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("PDPINTB")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_PDPINTB")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("CMP4INT")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_CMP4INT")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("CMP5INT")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_CMP5INT")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("CMP6INT")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_CMP6INT")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("rsvd1")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$523, DW_AT_bit_size(0x03)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("T3PINT")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_T3PINT")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("T3CINT")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_T3CINT")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("T3UFINT")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_T3UFINT")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("T3OFINT")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_T3OFINT")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("rsvd2")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$528, DW_AT_bit_size(0x05)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$69, DW_AT_name("EVBIMRA_REG")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x01)
$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("all")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$530, DW_AT_name("bit")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$70, DW_AT_name("EVBIMRB_BITS")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x01)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("T4PINT")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_T4PINT")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("T4CINT")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_T4CINT")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("T4UFINT")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_T4UFINT")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("T4OFINT")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_T4OFINT")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("rsvd1")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$535, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$71, DW_AT_name("EVBIMRB_REG")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x01)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("all")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$537, DW_AT_name("bit")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$72, DW_AT_name("EVBIMRC_BITS")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x01)
$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("CAP4INT")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_CAP4INT")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("CAP5INT")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_CAP5INT")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("CAP6INT")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_CAP6INT")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("rsvd1")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$541, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$73, DW_AT_name("EVBIMRC_REG")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x01)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("all")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$543, DW_AT_name("bit")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$74, DW_AT_name("EVB_REGS")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x32)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$544, DW_AT_name("GPTCONB")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_GPTCONB")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("T3CNT")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_T3CNT")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("T3CMPR")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_T3CMPR")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("T3PR")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_T3PR")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$173)
	.dwattr $C$DW$548, DW_AT_name("T3CON")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_T3CON")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("T4CNT")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_T4CNT")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("T4CMPR")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_T4CMPR")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("T4PR")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_T4PR")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$175)
	.dwattr $C$DW$552, DW_AT_name("T4CON")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_T4CON")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$553, DW_AT_name("EXTCONB")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_EXTCONB")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$554, DW_AT_name("rsvd1")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$555, DW_AT_name("COMCONB")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_COMCONB")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("rsvd2")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$557, DW_AT_name("ACTRB")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_ACTRB")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("rsvd3")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$559, DW_AT_name("DBTCONB")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_DBTCONB")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("rsvd4")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("CMPR4")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_CMPR4")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("CMPR5")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_CMPR5")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("CMPR6")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_CMPR6")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$564, DW_AT_name("rsvd5")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$565, DW_AT_name("CAPCONB")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_CAPCONB")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("rsvd6")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x21]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$567, DW_AT_name("CAPFIFOB")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_CAPFIFOB")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("CAP4FIFO")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_CAP4FIFO")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("CAP5FIFO")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_CAP5FIFO")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("CAP6FIFO")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_CAP6FIFO")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("rsvd7")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_rsvd7")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("CAP4FBOT")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_CAP4FBOT")
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x27]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("CAP5FBOT")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_CAP5FBOT")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("CAP6FBOT")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_CAP6FBOT")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x29]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$575, DW_AT_name("rsvd8")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_rsvd8")
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$576, DW_AT_name("EVBIMRA")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_EVBIMRA")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$577, DW_AT_name("EVBIMRB")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_EVBIMRB")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x2d]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$578, DW_AT_name("EVBIMRC")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_EVBIMRC")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$579, DW_AT_name("EVBIFRA")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_EVBIFRA")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x2f]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$580, DW_AT_name("EVBIFRB")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_EVBIFRB")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$581, DW_AT_name("EVBIFRC")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_EVBIFRC")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x31]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74

$C$DW$582	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$74)

$C$DW$T$207	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$207, DW_AT_type(*$C$DW$582)


$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("EXTCONA_BITS")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x01)
$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("INDCOE")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_INDCOE")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("QEPIQUAL")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_QEPIQUAL")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("QEPIE")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_QEPIE")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("EVSOCE")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_EVSOCE")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("rsvd")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$587, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$76, DW_AT_name("EXTCONA_REG")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x01)
$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("all")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$589, DW_AT_name("bit")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$77, DW_AT_name("EXTCONB_REG")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x01)
$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("all")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$591, DW_AT_name("bit")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$78, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x01)
$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("GPIOA0")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("GPIOA1")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("GPIOA2")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("GPIOA3")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("GPIOA4")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("GPIOA5")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("GPIOA6")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("GPIOA7")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("GPIOA8")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("GPIOA9")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("GPIOA10")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("GPIOA11")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("GPIOA12")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("GPIOA13")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("GPIOA14")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("GPIOA15")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$79, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x01)
$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("all")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$609, DW_AT_name("bit")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$80, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x01)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("GPIOA0")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("GPIOA1")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("GPIOA2")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("GPIOA3")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("GPIOA4")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("GPIOA5")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("GPIOA6")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("GPIOA7")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("GPIOA8")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("GPIOA9")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("GPIOA10")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("GPIOA11")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("GPIOA12")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("GPIOA13")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("GPIOA14")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("GPIOA15")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$81, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x01)
$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("all")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$627, DW_AT_name("bit")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x01)
$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("GPIOA0")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("GPIOA1")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("GPIOA2")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("GPIOA3")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("GPIOA4")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("GPIOA5")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("GPIOA6")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("GPIOA7")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("GPIOA8")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("GPIOA9")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("GPIOA10")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("GPIOA11")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("GPIOA12")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("GPIOA13")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_name("GPIOA14")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("GPIOA15")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82


$C$DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$83, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("all")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$645, DW_AT_name("bit")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$84, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("GPIOA0")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("GPIOA1")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("GPIOA2")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("GPIOA3")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("GPIOA4")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("GPIOA5")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("GPIOA6")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("GPIOA7")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("GPIOA8")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("GPIOA9")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("GPIOA10")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$657, DW_AT_name("GPIOA11")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("GPIOA12")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("GPIOA13")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$659, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$659, DW_AT_bit_size(0x01)
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$660, DW_AT_name("GPIOA14")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$660, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$660, DW_AT_bit_size(0x01)
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_name("GPIOA15")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$85, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_name("all")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$663, DW_AT_name("bit")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$86, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_name("GPIOB0")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("GPIOB1")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("GPIOB2")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_name("GPIOB3")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_name("GPIOB4")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("GPIOB5")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$670, DW_AT_name("GPIOB6")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$671, DW_AT_name("GPIOB7")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$672, DW_AT_name("GPIOB8")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$673, DW_AT_name("GPIOB9")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$674, DW_AT_name("GPIOB10")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$675, DW_AT_name("GPIOB11")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$676, DW_AT_name("GPIOB12")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_name("GPIOB13")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$677, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$677, DW_AT_bit_size(0x01)
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$678, DW_AT_name("GPIOB14")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$678, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$678, DW_AT_bit_size(0x01)
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_name("GPIOB15")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$87, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_name("all")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$681, DW_AT_name("bit")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$88, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("GPIOB0")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$683, DW_AT_name("GPIOB1")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$684, DW_AT_name("GPIOB2")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$685, DW_AT_name("GPIOB3")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$686, DW_AT_name("GPIOB4")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$687, DW_AT_name("GPIOB5")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$688, DW_AT_name("GPIOB6")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$689, DW_AT_name("GPIOB7")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$690, DW_AT_name("GPIOB8")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$691, DW_AT_name("GPIOB9")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$692, DW_AT_name("GPIOB10")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$693, DW_AT_name("GPIOB11")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$694, DW_AT_name("GPIOB12")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("GPIOB13")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$695, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$695, DW_AT_bit_size(0x01)
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$696, DW_AT_name("GPIOB14")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$696, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$696, DW_AT_bit_size(0x01)
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$697, DW_AT_name("GPIOB15")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$89, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$698, DW_AT_name("all")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$699, DW_AT_name("bit")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$90, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("GPIOB0")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("GPIOB1")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$702, DW_AT_name("GPIOB2")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$702, DW_AT_bit_size(0x01)
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$703, DW_AT_name("GPIOB3")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("GPIOB4")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("GPIOB5")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$706, DW_AT_name("GPIOB6")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("GPIOB7")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("GPIOB8")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("GPIOB9")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("GPIOB10")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("GPIOB11")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("GPIOB12")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("GPIOB13")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("GPIOB14")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("GPIOB15")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$91, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("all")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$717, DW_AT_name("bit")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$92, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("GPIOB0")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("GPIOB1")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("GPIOB2")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("GPIOB3")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("GPIOB4")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("GPIOB5")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("GPIOB6")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("GPIOB7")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$726, DW_AT_name("GPIOB8")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("GPIOB9")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("GPIOB10")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("GPIOB11")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("GPIOB12")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("GPIOB13")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$732, DW_AT_name("GPIOB14")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("GPIOB15")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$93, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("all")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$735, DW_AT_name("bit")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93


$C$DW$T$94	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$94, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("GPIOD0")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("GPIOD1")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("rsvd1")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$738, DW_AT_bit_size(0x03)
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("GPIOD5")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$740, DW_AT_name("GPIOD6")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$740, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$740, DW_AT_bit_size(0x01)
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$741, DW_AT_name("rsvd2")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$741, DW_AT_bit_size(0x09)
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$95	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$95, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("all")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$743, DW_AT_name("bit")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$95


$C$DW$T$96	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$96, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("GPIOD0")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("GPIOD1")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("rsvd1")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$746, DW_AT_bit_size(0x03)
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("GPIOD5")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("GPIOD6")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("rsvd2")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$749, DW_AT_bit_size(0x09)
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$96


$C$DW$T$97	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$97, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("all")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$751, DW_AT_name("bit")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97


$C$DW$T$98	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$98, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x01)
$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$752, DW_AT_name("GPIOD0")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("GPIOD1")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("rsvd1")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$754, DW_AT_bit_size(0x03)
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("GPIOD5")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("GPIOD6")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("rsvd2")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$757, DW_AT_bit_size(0x09)
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$98


$C$DW$T$99	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$99, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("all")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$759, DW_AT_name("bit")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$99


$C$DW$T$100	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$100, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x01)
$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("GPIOD0")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("GPIOD1")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("rsvd1")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$762, DW_AT_bit_size(0x03)
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("GPIOD5")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$763, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$763, DW_AT_bit_size(0x01)
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("GPIOD6")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$765, DW_AT_name("rsvd2")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$765, DW_AT_bit_size(0x09)
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$100


$C$DW$T$101	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$101, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$766, DW_AT_name("all")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$767, DW_AT_name("bit")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$101


$C$DW$T$102	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$102, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$768, DW_AT_name("GPIOE0")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$769, DW_AT_name("GPIOE1")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$770, DW_AT_name("GPIOE2")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("rsvd1")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$771, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$102


$C$DW$T$103	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$103, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$772, DW_AT_name("all")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$773, DW_AT_name("bit")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$103


$C$DW$T$104	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$104, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x01)
$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$774, DW_AT_name("GPIOE0")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("GPIOE1")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$776, DW_AT_name("GPIOE2")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("rsvd1")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$777, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$104


$C$DW$T$105	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$105, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$778, DW_AT_name("all")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$779, DW_AT_name("bit")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$105


$C$DW$T$106	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$106, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("GPIOE0")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$780, DW_AT_bit_size(0x01)
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$781, DW_AT_name("GPIOE1")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$781, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$781, DW_AT_bit_size(0x01)
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$782, DW_AT_name("GPIOE2")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$782, DW_AT_bit_size(0x01)
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$783, DW_AT_name("rsvd1")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$783, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$106


$C$DW$T$107	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$107, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$784, DW_AT_name("all")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$785, DW_AT_name("bit")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$107


$C$DW$T$108	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$108, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("GPIOE0")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("GPIOE1")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$788, DW_AT_name("GPIOE2")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$788, DW_AT_bit_size(0x01)
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("rsvd1")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$789, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$108


$C$DW$T$109	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$109, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("all")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$791, DW_AT_name("bit")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$109


$C$DW$T$110	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$110, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)
$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("GPIOF0")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_name("GPIOF1")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("GPIOF2")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("GPIOF3")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("GPIOF4")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("GPIOF5")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("GPIOF6")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("GPIOF7")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$799, DW_AT_bit_size(0x01)
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("GPIOF8")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$800, DW_AT_bit_size(0x01)
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("GPIOF9")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$801, DW_AT_bit_size(0x01)
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("GPIOF10")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$802, DW_AT_bit_size(0x01)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("GPIOF11")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$803, DW_AT_bit_size(0x01)
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("GPIOF12")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$804, DW_AT_bit_size(0x01)
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("GPIOF13")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$805, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$805, DW_AT_bit_size(0x01)
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("GPIOF14")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$806, DW_AT_bit_size(0x01)
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("GPIOF15")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$110


$C$DW$T$111	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$111, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("all")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$809, DW_AT_name("bit")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$111


$C$DW$T$112	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$112, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("GPIOF0")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$810, DW_AT_bit_size(0x01)
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("GPIOF1")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("GPIOF2")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("GPIOF3")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("GPIOF4")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$814, DW_AT_bit_size(0x01)
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("GPIOF5")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$815, DW_AT_bit_size(0x01)
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("GPIOF6")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$816, DW_AT_bit_size(0x01)
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("GPIOF7")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$817, DW_AT_bit_size(0x01)
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("GPIOF8")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$818, DW_AT_bit_size(0x01)
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("GPIOF9")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$819, DW_AT_bit_size(0x01)
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("GPIOF10")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$820, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$820, DW_AT_bit_size(0x01)
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("GPIOF11")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$821, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$821, DW_AT_bit_size(0x01)
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("GPIOF12")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$822, DW_AT_bit_size(0x01)
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("GPIOF13")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$823, DW_AT_bit_size(0x01)
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$824, DW_AT_name("GPIOF14")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$824, DW_AT_bit_size(0x01)
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("GPIOF15")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$112


$C$DW$T$113	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$113, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x01)
$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("all")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$827, DW_AT_name("bit")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$113


$C$DW$T$114	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$114, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x01)
$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("GPIOF0")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$828, DW_AT_bit_size(0x01)
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("GPIOF1")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$829, DW_AT_bit_size(0x01)
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("GPIOF2")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$830, DW_AT_bit_size(0x01)
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("GPIOF3")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$831, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$831, DW_AT_bit_size(0x01)
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("GPIOF4")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$832, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$832, DW_AT_bit_size(0x01)
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("GPIOF5")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$833, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$833, DW_AT_bit_size(0x01)
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("GPIOF6")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$834, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$834, DW_AT_bit_size(0x01)
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("GPIOF7")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$835, DW_AT_bit_size(0x01)
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("GPIOF8")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$836, DW_AT_bit_size(0x01)
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("GPIOF9")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$837, DW_AT_bit_size(0x01)
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("GPIOF10")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$838, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$838, DW_AT_bit_size(0x01)
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$839, DW_AT_name("GPIOF11")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$839, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$839, DW_AT_bit_size(0x01)
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("GPIOF12")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$840, DW_AT_bit_size(0x01)
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("GPIOF13")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$841, DW_AT_bit_size(0x01)
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("GPIOF14")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$842, DW_AT_bit_size(0x01)
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("GPIOF15")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$843, DW_AT_bit_size(0x01)
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$114


$C$DW$T$115	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$115, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x01)
$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("all")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$845, DW_AT_name("bit")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$115


$C$DW$T$116	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$116, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x01)
$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("GPIOF0")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$846, DW_AT_bit_size(0x01)
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("GPIOF1")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("GPIOF2")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$848, DW_AT_bit_size(0x01)
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("GPIOF3")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$849, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$849, DW_AT_bit_size(0x01)
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$850, DW_AT_name("GPIOF4")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$850, DW_AT_bit_size(0x01)
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("GPIOF5")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("GPIOF6")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("GPIOF7")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("GPIOF8")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("GPIOF9")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("GPIOF10")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$856, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$856, DW_AT_bit_size(0x01)
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("GPIOF11")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$857, DW_AT_bit_size(0x01)
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("GPIOF12")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("GPIOF13")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("GPIOF14")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$860, DW_AT_bit_size(0x01)
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("GPIOF15")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$861, DW_AT_bit_size(0x01)
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$116


$C$DW$T$117	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$117, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x01)
$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$862, DW_AT_name("all")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$863, DW_AT_name("bit")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$117


$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x01)
$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$864, DW_AT_name("rsvd1")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$864, DW_AT_bit_size(0x04)
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$865, DW_AT_name("GPIOG4")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$865, DW_AT_bit_size(0x01)
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$866, DW_AT_name("GPIOG5")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$866, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$866, DW_AT_bit_size(0x01)
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$867, DW_AT_name("rsvd2")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$867, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$867, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$118


$C$DW$T$119	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$119, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x01)
$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$868, DW_AT_name("all")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$118)
	.dwattr $C$DW$869, DW_AT_name("bit")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$119


$C$DW$T$120	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$120, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$120, DW_AT_byte_size(0x01)
$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$870, DW_AT_name("rsvd1")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$870, DW_AT_bit_size(0x04)
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$871, DW_AT_name("GPIOG4")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$871, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$871, DW_AT_bit_size(0x01)
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$872, DW_AT_name("GPIOG5")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$872, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$872, DW_AT_bit_size(0x01)
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$873, DW_AT_name("rsvd2")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$873, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$120


$C$DW$T$121	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$121, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$121, DW_AT_byte_size(0x01)
$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$874, DW_AT_name("all")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$120)
	.dwattr $C$DW$875, DW_AT_name("bit")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$121


$C$DW$T$122	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$122, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x01)
$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$876, DW_AT_name("rsvd1")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$876, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$876, DW_AT_bit_size(0x04)
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$877, DW_AT_name("GPIOG4")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$877, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$877, DW_AT_bit_size(0x01)
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$878, DW_AT_name("GPIOG5")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$878, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$878, DW_AT_bit_size(0x01)
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$879, DW_AT_name("rsvd2")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$879, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$879, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$122


$C$DW$T$123	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$123, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$123, DW_AT_byte_size(0x01)
$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$880, DW_AT_name("all")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$881, DW_AT_name("bit")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$123


$C$DW$T$124	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$124, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$124, DW_AT_byte_size(0x01)
$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$882, DW_AT_name("rsvd1")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$882, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$882, DW_AT_bit_size(0x04)
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$883, DW_AT_name("GPIOG4")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$883, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$883, DW_AT_bit_size(0x01)
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$884, DW_AT_name("GPIOG5")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$884, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$884, DW_AT_bit_size(0x01)
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$885, DW_AT_name("rsvd2")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$885, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$885, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$124


$C$DW$T$125	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$125, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$125, DW_AT_byte_size(0x01)
$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$886, DW_AT_name("all")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$124)
	.dwattr $C$DW$887, DW_AT_name("bit")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$125


$C$DW$T$127	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$127, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$127, DW_AT_byte_size(0x20)
$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$81)
	.dwattr $C$DW$888, DW_AT_name("GPADAT")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$889, DW_AT_name("GPASET")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$890, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$891, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$892, DW_AT_name("GPBDAT")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$893, DW_AT_name("GPBSET")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$894, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$895, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$896, DW_AT_name("rsvd1")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$897, DW_AT_name("GPDDAT")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$898, DW_AT_name("GPDSET")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$899, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$900, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$901, DW_AT_name("GPEDAT")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$902, DW_AT_name("GPESET")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$903, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$904, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$905, DW_AT_name("GPFDAT")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$906, DW_AT_name("GPFSET")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$907, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$908, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$121)
	.dwattr $C$DW$909, DW_AT_name("GPGDAT")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$123)
	.dwattr $C$DW$910, DW_AT_name("GPGSET")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$911	.dwtag  DW_TAG_member
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$911, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$911, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$911, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$911, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$912	.dwtag  DW_TAG_member
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$125)
	.dwattr $C$DW$912, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$912, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$912, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$912, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$913	.dwtag  DW_TAG_member
	.dwattr $C$DW$913, DW_AT_type(*$C$DW$T$126)
	.dwattr $C$DW$913, DW_AT_name("rsvd2")
	.dwattr $C$DW$913, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$913, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$913, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$127

$C$DW$914	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$127)

$C$DW$T$208	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$208, DW_AT_type(*$C$DW$914)


$C$DW$T$128	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$128, DW_AT_name("GPTCONA_BITS")
	.dwattr $C$DW$T$128, DW_AT_byte_size(0x01)
$C$DW$915	.dwtag  DW_TAG_member
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$915, DW_AT_name("T1PIN")
	.dwattr $C$DW$915, DW_AT_TI_symbol_name("_T1PIN")
	.dwattr $C$DW$915, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$915, DW_AT_bit_size(0x02)
	.dwattr $C$DW$915, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$915, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$916	.dwtag  DW_TAG_member
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$916, DW_AT_name("T2PIN")
	.dwattr $C$DW$916, DW_AT_TI_symbol_name("_T2PIN")
	.dwattr $C$DW$916, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$916, DW_AT_bit_size(0x02)
	.dwattr $C$DW$916, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$916, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$917	.dwtag  DW_TAG_member
	.dwattr $C$DW$917, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$917, DW_AT_name("T1CMPOE")
	.dwattr $C$DW$917, DW_AT_TI_symbol_name("_T1CMPOE")
	.dwattr $C$DW$917, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$917, DW_AT_bit_size(0x01)
	.dwattr $C$DW$917, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$917, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$918	.dwtag  DW_TAG_member
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$918, DW_AT_name("T2CMPOE")
	.dwattr $C$DW$918, DW_AT_TI_symbol_name("_T2CMPOE")
	.dwattr $C$DW$918, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$918, DW_AT_bit_size(0x01)
	.dwattr $C$DW$918, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$918, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$919	.dwtag  DW_TAG_member
	.dwattr $C$DW$919, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$919, DW_AT_name("TCMPOE")
	.dwattr $C$DW$919, DW_AT_TI_symbol_name("_TCMPOE")
	.dwattr $C$DW$919, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$919, DW_AT_bit_size(0x01)
	.dwattr $C$DW$919, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$919, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$920	.dwtag  DW_TAG_member
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$920, DW_AT_name("T1TOADC")
	.dwattr $C$DW$920, DW_AT_TI_symbol_name("_T1TOADC")
	.dwattr $C$DW$920, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$920, DW_AT_bit_size(0x02)
	.dwattr $C$DW$920, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$920, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$921	.dwtag  DW_TAG_member
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$921, DW_AT_name("T2TOADC")
	.dwattr $C$DW$921, DW_AT_TI_symbol_name("_T2TOADC")
	.dwattr $C$DW$921, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$921, DW_AT_bit_size(0x02)
	.dwattr $C$DW$921, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$921, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$922	.dwtag  DW_TAG_member
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$922, DW_AT_name("T1CTRIPE")
	.dwattr $C$DW$922, DW_AT_TI_symbol_name("_T1CTRIPE")
	.dwattr $C$DW$922, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$922, DW_AT_bit_size(0x01)
	.dwattr $C$DW$922, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$922, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$923	.dwtag  DW_TAG_member
	.dwattr $C$DW$923, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$923, DW_AT_name("T2CTRIPE")
	.dwattr $C$DW$923, DW_AT_TI_symbol_name("_T2CTRIPE")
	.dwattr $C$DW$923, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$923, DW_AT_bit_size(0x01)
	.dwattr $C$DW$923, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$923, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$924	.dwtag  DW_TAG_member
	.dwattr $C$DW$924, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$924, DW_AT_name("T1STAT")
	.dwattr $C$DW$924, DW_AT_TI_symbol_name("_T1STAT")
	.dwattr $C$DW$924, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$924, DW_AT_bit_size(0x01)
	.dwattr $C$DW$924, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$924, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$925	.dwtag  DW_TAG_member
	.dwattr $C$DW$925, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$925, DW_AT_name("T2STAT")
	.dwattr $C$DW$925, DW_AT_TI_symbol_name("_T2STAT")
	.dwattr $C$DW$925, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$925, DW_AT_bit_size(0x01)
	.dwattr $C$DW$925, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$925, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$926	.dwtag  DW_TAG_member
	.dwattr $C$DW$926, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$926, DW_AT_name("rsvd")
	.dwattr $C$DW$926, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$926, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$926, DW_AT_bit_size(0x01)
	.dwattr $C$DW$926, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$926, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$128


$C$DW$T$129	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$129, DW_AT_name("GPTCONA_REG")
	.dwattr $C$DW$T$129, DW_AT_byte_size(0x01)
$C$DW$927	.dwtag  DW_TAG_member
	.dwattr $C$DW$927, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$927, DW_AT_name("all")
	.dwattr $C$DW$927, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$927, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$927, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$928	.dwtag  DW_TAG_member
	.dwattr $C$DW$928, DW_AT_type(*$C$DW$T$128)
	.dwattr $C$DW$928, DW_AT_name("bit")
	.dwattr $C$DW$928, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$928, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$928, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$129


$C$DW$T$130	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$130, DW_AT_name("GPTCONB_BITS")
	.dwattr $C$DW$T$130, DW_AT_byte_size(0x01)
$C$DW$929	.dwtag  DW_TAG_member
	.dwattr $C$DW$929, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$929, DW_AT_name("T3PIN")
	.dwattr $C$DW$929, DW_AT_TI_symbol_name("_T3PIN")
	.dwattr $C$DW$929, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$929, DW_AT_bit_size(0x02)
	.dwattr $C$DW$929, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$929, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$930	.dwtag  DW_TAG_member
	.dwattr $C$DW$930, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$930, DW_AT_name("T4PIN")
	.dwattr $C$DW$930, DW_AT_TI_symbol_name("_T4PIN")
	.dwattr $C$DW$930, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$930, DW_AT_bit_size(0x02)
	.dwattr $C$DW$930, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$930, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$931	.dwtag  DW_TAG_member
	.dwattr $C$DW$931, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$931, DW_AT_name("T3CMPOE")
	.dwattr $C$DW$931, DW_AT_TI_symbol_name("_T3CMPOE")
	.dwattr $C$DW$931, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$931, DW_AT_bit_size(0x01)
	.dwattr $C$DW$931, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$931, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$932	.dwtag  DW_TAG_member
	.dwattr $C$DW$932, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$932, DW_AT_name("T4CMPOE")
	.dwattr $C$DW$932, DW_AT_TI_symbol_name("_T4CMPOE")
	.dwattr $C$DW$932, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$932, DW_AT_bit_size(0x01)
	.dwattr $C$DW$932, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$932, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$933	.dwtag  DW_TAG_member
	.dwattr $C$DW$933, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$933, DW_AT_name("TCMPOE")
	.dwattr $C$DW$933, DW_AT_TI_symbol_name("_TCMPOE")
	.dwattr $C$DW$933, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$933, DW_AT_bit_size(0x01)
	.dwattr $C$DW$933, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$933, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$934	.dwtag  DW_TAG_member
	.dwattr $C$DW$934, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$934, DW_AT_name("T3TOADC")
	.dwattr $C$DW$934, DW_AT_TI_symbol_name("_T3TOADC")
	.dwattr $C$DW$934, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$934, DW_AT_bit_size(0x02)
	.dwattr $C$DW$934, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$934, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$935	.dwtag  DW_TAG_member
	.dwattr $C$DW$935, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$935, DW_AT_name("T4TOADC")
	.dwattr $C$DW$935, DW_AT_TI_symbol_name("_T4TOADC")
	.dwattr $C$DW$935, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$935, DW_AT_bit_size(0x02)
	.dwattr $C$DW$935, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$935, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$936	.dwtag  DW_TAG_member
	.dwattr $C$DW$936, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$936, DW_AT_name("T3CTRIPE")
	.dwattr $C$DW$936, DW_AT_TI_symbol_name("_T3CTRIPE")
	.dwattr $C$DW$936, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$936, DW_AT_bit_size(0x01)
	.dwattr $C$DW$936, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$936, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$937	.dwtag  DW_TAG_member
	.dwattr $C$DW$937, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$937, DW_AT_name("T4CTRIPE")
	.dwattr $C$DW$937, DW_AT_TI_symbol_name("_T4CTRIPE")
	.dwattr $C$DW$937, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$937, DW_AT_bit_size(0x01)
	.dwattr $C$DW$937, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$937, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$938	.dwtag  DW_TAG_member
	.dwattr $C$DW$938, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$938, DW_AT_name("T3STAT")
	.dwattr $C$DW$938, DW_AT_TI_symbol_name("_T3STAT")
	.dwattr $C$DW$938, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$938, DW_AT_bit_size(0x01)
	.dwattr $C$DW$938, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$938, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$939	.dwtag  DW_TAG_member
	.dwattr $C$DW$939, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$939, DW_AT_name("T4STAT")
	.dwattr $C$DW$939, DW_AT_TI_symbol_name("_T4STAT")
	.dwattr $C$DW$939, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$939, DW_AT_bit_size(0x01)
	.dwattr $C$DW$939, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$939, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$940	.dwtag  DW_TAG_member
	.dwattr $C$DW$940, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$940, DW_AT_name("rsvd2")
	.dwattr $C$DW$940, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$940, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$940, DW_AT_bit_size(0x01)
	.dwattr $C$DW$940, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$940, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$130


$C$DW$T$131	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$131, DW_AT_name("GPTCONB_REG")
	.dwattr $C$DW$T$131, DW_AT_byte_size(0x01)
$C$DW$941	.dwtag  DW_TAG_member
	.dwattr $C$DW$941, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$941, DW_AT_name("all")
	.dwattr $C$DW$941, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$941, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$941, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$942	.dwtag  DW_TAG_member
	.dwattr $C$DW$942, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$942, DW_AT_name("bit")
	.dwattr $C$DW$942, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$942, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$942, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$131


$C$DW$T$132	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$132, DW_AT_name("LIM_CONF")
	.dwattr $C$DW$T$132, DW_AT_byte_size(0x08)
$C$DW$943	.dwtag  DW_TAG_member
	.dwattr $C$DW$943, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$943, DW_AT_name("what")
	.dwattr $C$DW$943, DW_AT_TI_symbol_name("_what")
	.dwattr $C$DW$943, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$943, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$944	.dwtag  DW_TAG_member
	.dwattr $C$DW$944, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$944, DW_AT_name("ch")
	.dwattr $C$DW$944, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$944, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$944, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$945	.dwtag  DW_TAG_member
	.dwattr $C$DW$945, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$945, DW_AT_name("limit")
	.dwattr $C$DW$945, DW_AT_TI_symbol_name("_limit")
	.dwattr $C$DW$945, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$945, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$946	.dwtag  DW_TAG_member
	.dwattr $C$DW$946, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$946, DW_AT_name("limits")
	.dwattr $C$DW$946, DW_AT_TI_symbol_name("_limits")
	.dwattr $C$DW$946, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$946, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$947	.dwtag  DW_TAG_member
	.dwattr $C$DW$947, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$947, DW_AT_name("limitr")
	.dwattr $C$DW$947, DW_AT_TI_symbol_name("_limitr")
	.dwattr $C$DW$947, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$947, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$132

$C$DW$T$159	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$159, DW_AT_name("limconf_t")
	.dwattr $C$DW$T$159, DW_AT_type(*$C$DW$T$132)
	.dwattr $C$DW$T$159, DW_AT_language(DW_LANG_C)


$C$DW$T$160	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$160, DW_AT_type(*$C$DW$T$159)
	.dwattr $C$DW$T$160, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$160, DW_AT_byte_size(0x20)
$C$DW$948	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$948, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$160


$C$DW$T$133	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$133, DW_AT_name("PIEACK_BITS")
	.dwattr $C$DW$T$133, DW_AT_byte_size(0x01)
$C$DW$949	.dwtag  DW_TAG_member
	.dwattr $C$DW$949, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$949, DW_AT_name("ACK1")
	.dwattr $C$DW$949, DW_AT_TI_symbol_name("_ACK1")
	.dwattr $C$DW$949, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$949, DW_AT_bit_size(0x01)
	.dwattr $C$DW$949, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$949, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$950	.dwtag  DW_TAG_member
	.dwattr $C$DW$950, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$950, DW_AT_name("ACK2")
	.dwattr $C$DW$950, DW_AT_TI_symbol_name("_ACK2")
	.dwattr $C$DW$950, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$950, DW_AT_bit_size(0x01)
	.dwattr $C$DW$950, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$950, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$951	.dwtag  DW_TAG_member
	.dwattr $C$DW$951, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$951, DW_AT_name("ACK3")
	.dwattr $C$DW$951, DW_AT_TI_symbol_name("_ACK3")
	.dwattr $C$DW$951, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$951, DW_AT_bit_size(0x01)
	.dwattr $C$DW$951, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$951, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$952	.dwtag  DW_TAG_member
	.dwattr $C$DW$952, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$952, DW_AT_name("ACK4")
	.dwattr $C$DW$952, DW_AT_TI_symbol_name("_ACK4")
	.dwattr $C$DW$952, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$952, DW_AT_bit_size(0x01)
	.dwattr $C$DW$952, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$952, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$953	.dwtag  DW_TAG_member
	.dwattr $C$DW$953, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$953, DW_AT_name("ACK5")
	.dwattr $C$DW$953, DW_AT_TI_symbol_name("_ACK5")
	.dwattr $C$DW$953, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$953, DW_AT_bit_size(0x01)
	.dwattr $C$DW$953, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$953, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$954	.dwtag  DW_TAG_member
	.dwattr $C$DW$954, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$954, DW_AT_name("ACK6")
	.dwattr $C$DW$954, DW_AT_TI_symbol_name("_ACK6")
	.dwattr $C$DW$954, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$954, DW_AT_bit_size(0x01)
	.dwattr $C$DW$954, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$954, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$955	.dwtag  DW_TAG_member
	.dwattr $C$DW$955, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$955, DW_AT_name("ACK7")
	.dwattr $C$DW$955, DW_AT_TI_symbol_name("_ACK7")
	.dwattr $C$DW$955, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$955, DW_AT_bit_size(0x01)
	.dwattr $C$DW$955, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$955, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$956	.dwtag  DW_TAG_member
	.dwattr $C$DW$956, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$956, DW_AT_name("ACK8")
	.dwattr $C$DW$956, DW_AT_TI_symbol_name("_ACK8")
	.dwattr $C$DW$956, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$956, DW_AT_bit_size(0x01)
	.dwattr $C$DW$956, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$956, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$957	.dwtag  DW_TAG_member
	.dwattr $C$DW$957, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$957, DW_AT_name("ACK9")
	.dwattr $C$DW$957, DW_AT_TI_symbol_name("_ACK9")
	.dwattr $C$DW$957, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$957, DW_AT_bit_size(0x01)
	.dwattr $C$DW$957, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$957, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$958	.dwtag  DW_TAG_member
	.dwattr $C$DW$958, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$958, DW_AT_name("ACK10")
	.dwattr $C$DW$958, DW_AT_TI_symbol_name("_ACK10")
	.dwattr $C$DW$958, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$958, DW_AT_bit_size(0x01)
	.dwattr $C$DW$958, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$958, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$959	.dwtag  DW_TAG_member
	.dwattr $C$DW$959, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$959, DW_AT_name("ACK11")
	.dwattr $C$DW$959, DW_AT_TI_symbol_name("_ACK11")
	.dwattr $C$DW$959, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$959, DW_AT_bit_size(0x01)
	.dwattr $C$DW$959, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$959, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$960	.dwtag  DW_TAG_member
	.dwattr $C$DW$960, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$960, DW_AT_name("ACK12")
	.dwattr $C$DW$960, DW_AT_TI_symbol_name("_ACK12")
	.dwattr $C$DW$960, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$960, DW_AT_bit_size(0x01)
	.dwattr $C$DW$960, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$960, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$961	.dwtag  DW_TAG_member
	.dwattr $C$DW$961, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$961, DW_AT_name("rsvd")
	.dwattr $C$DW$961, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$961, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$961, DW_AT_bit_size(0x04)
	.dwattr $C$DW$961, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$961, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$133


$C$DW$T$134	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$134, DW_AT_name("PIEACK_REG")
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x01)
$C$DW$962	.dwtag  DW_TAG_member
	.dwattr $C$DW$962, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$962, DW_AT_name("all")
	.dwattr $C$DW$962, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$962, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$962, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$963	.dwtag  DW_TAG_member
	.dwattr $C$DW$963, DW_AT_type(*$C$DW$T$133)
	.dwattr $C$DW$963, DW_AT_name("bit")
	.dwattr $C$DW$963, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$963, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$963, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$134


$C$DW$T$135	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$135, DW_AT_name("PIECTRL_BITS")
	.dwattr $C$DW$T$135, DW_AT_byte_size(0x01)
$C$DW$964	.dwtag  DW_TAG_member
	.dwattr $C$DW$964, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$964, DW_AT_name("ENPIE")
	.dwattr $C$DW$964, DW_AT_TI_symbol_name("_ENPIE")
	.dwattr $C$DW$964, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$964, DW_AT_bit_size(0x01)
	.dwattr $C$DW$964, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$964, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$965	.dwtag  DW_TAG_member
	.dwattr $C$DW$965, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$965, DW_AT_name("PIEVECT")
	.dwattr $C$DW$965, DW_AT_TI_symbol_name("_PIEVECT")
	.dwattr $C$DW$965, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$965, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$965, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$965, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$135


$C$DW$T$136	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$136, DW_AT_name("PIECTRL_REG")
	.dwattr $C$DW$T$136, DW_AT_byte_size(0x01)
$C$DW$966	.dwtag  DW_TAG_member
	.dwattr $C$DW$966, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$966, DW_AT_name("all")
	.dwattr $C$DW$966, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$966, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$966, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$967	.dwtag  DW_TAG_member
	.dwattr $C$DW$967, DW_AT_type(*$C$DW$T$135)
	.dwattr $C$DW$967, DW_AT_name("bit")
	.dwattr $C$DW$967, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$967, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$967, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$136


$C$DW$T$137	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$137, DW_AT_name("PIEIER_BITS")
	.dwattr $C$DW$T$137, DW_AT_byte_size(0x01)
$C$DW$968	.dwtag  DW_TAG_member
	.dwattr $C$DW$968, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$968, DW_AT_name("INTx1")
	.dwattr $C$DW$968, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$968, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$968, DW_AT_bit_size(0x01)
	.dwattr $C$DW$968, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$968, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$969	.dwtag  DW_TAG_member
	.dwattr $C$DW$969, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$969, DW_AT_name("INTx2")
	.dwattr $C$DW$969, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$969, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$969, DW_AT_bit_size(0x01)
	.dwattr $C$DW$969, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$969, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$970	.dwtag  DW_TAG_member
	.dwattr $C$DW$970, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$970, DW_AT_name("INTx3")
	.dwattr $C$DW$970, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$970, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$970, DW_AT_bit_size(0x01)
	.dwattr $C$DW$970, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$970, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$971	.dwtag  DW_TAG_member
	.dwattr $C$DW$971, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$971, DW_AT_name("INTx4")
	.dwattr $C$DW$971, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$971, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$971, DW_AT_bit_size(0x01)
	.dwattr $C$DW$971, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$971, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$972	.dwtag  DW_TAG_member
	.dwattr $C$DW$972, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$972, DW_AT_name("INTx5")
	.dwattr $C$DW$972, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$972, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$972, DW_AT_bit_size(0x01)
	.dwattr $C$DW$972, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$972, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$973	.dwtag  DW_TAG_member
	.dwattr $C$DW$973, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$973, DW_AT_name("INTx6")
	.dwattr $C$DW$973, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$973, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$973, DW_AT_bit_size(0x01)
	.dwattr $C$DW$973, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$973, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$974	.dwtag  DW_TAG_member
	.dwattr $C$DW$974, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$974, DW_AT_name("INTx7")
	.dwattr $C$DW$974, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$974, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$974, DW_AT_bit_size(0x01)
	.dwattr $C$DW$974, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$974, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$975	.dwtag  DW_TAG_member
	.dwattr $C$DW$975, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$975, DW_AT_name("INTx8")
	.dwattr $C$DW$975, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$975, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$975, DW_AT_bit_size(0x01)
	.dwattr $C$DW$975, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$975, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$976	.dwtag  DW_TAG_member
	.dwattr $C$DW$976, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$976, DW_AT_name("rsvd")
	.dwattr $C$DW$976, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$976, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$976, DW_AT_bit_size(0x08)
	.dwattr $C$DW$976, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$976, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$137


$C$DW$T$138	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$138, DW_AT_name("PIEIER_REG")
	.dwattr $C$DW$T$138, DW_AT_byte_size(0x01)
$C$DW$977	.dwtag  DW_TAG_member
	.dwattr $C$DW$977, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$977, DW_AT_name("all")
	.dwattr $C$DW$977, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$977, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$977, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$978	.dwtag  DW_TAG_member
	.dwattr $C$DW$978, DW_AT_type(*$C$DW$T$137)
	.dwattr $C$DW$978, DW_AT_name("bit")
	.dwattr $C$DW$978, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$978, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$978, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$138


$C$DW$T$139	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$139, DW_AT_name("PIEIFR_BITS")
	.dwattr $C$DW$T$139, DW_AT_byte_size(0x01)
$C$DW$979	.dwtag  DW_TAG_member
	.dwattr $C$DW$979, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$979, DW_AT_name("INTx1")
	.dwattr $C$DW$979, DW_AT_TI_symbol_name("_INTx1")
	.dwattr $C$DW$979, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$979, DW_AT_bit_size(0x01)
	.dwattr $C$DW$979, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$979, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$980	.dwtag  DW_TAG_member
	.dwattr $C$DW$980, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$980, DW_AT_name("INTx2")
	.dwattr $C$DW$980, DW_AT_TI_symbol_name("_INTx2")
	.dwattr $C$DW$980, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$980, DW_AT_bit_size(0x01)
	.dwattr $C$DW$980, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$980, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$981	.dwtag  DW_TAG_member
	.dwattr $C$DW$981, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$981, DW_AT_name("INTx3")
	.dwattr $C$DW$981, DW_AT_TI_symbol_name("_INTx3")
	.dwattr $C$DW$981, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$981, DW_AT_bit_size(0x01)
	.dwattr $C$DW$981, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$981, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$982	.dwtag  DW_TAG_member
	.dwattr $C$DW$982, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$982, DW_AT_name("INTx4")
	.dwattr $C$DW$982, DW_AT_TI_symbol_name("_INTx4")
	.dwattr $C$DW$982, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$982, DW_AT_bit_size(0x01)
	.dwattr $C$DW$982, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$982, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$983	.dwtag  DW_TAG_member
	.dwattr $C$DW$983, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$983, DW_AT_name("INTx5")
	.dwattr $C$DW$983, DW_AT_TI_symbol_name("_INTx5")
	.dwattr $C$DW$983, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$983, DW_AT_bit_size(0x01)
	.dwattr $C$DW$983, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$983, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$984	.dwtag  DW_TAG_member
	.dwattr $C$DW$984, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$984, DW_AT_name("INTx6")
	.dwattr $C$DW$984, DW_AT_TI_symbol_name("_INTx6")
	.dwattr $C$DW$984, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$984, DW_AT_bit_size(0x01)
	.dwattr $C$DW$984, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$984, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$985	.dwtag  DW_TAG_member
	.dwattr $C$DW$985, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$985, DW_AT_name("INTx7")
	.dwattr $C$DW$985, DW_AT_TI_symbol_name("_INTx7")
	.dwattr $C$DW$985, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$985, DW_AT_bit_size(0x01)
	.dwattr $C$DW$985, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$985, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$986	.dwtag  DW_TAG_member
	.dwattr $C$DW$986, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$986, DW_AT_name("INTx8")
	.dwattr $C$DW$986, DW_AT_TI_symbol_name("_INTx8")
	.dwattr $C$DW$986, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$986, DW_AT_bit_size(0x01)
	.dwattr $C$DW$986, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$986, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$987	.dwtag  DW_TAG_member
	.dwattr $C$DW$987, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$987, DW_AT_name("rsvd")
	.dwattr $C$DW$987, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$987, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$987, DW_AT_bit_size(0x08)
	.dwattr $C$DW$987, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$987, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$139


$C$DW$T$140	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$140, DW_AT_name("PIEIFR_REG")
	.dwattr $C$DW$T$140, DW_AT_byte_size(0x01)
$C$DW$988	.dwtag  DW_TAG_member
	.dwattr $C$DW$988, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$988, DW_AT_name("all")
	.dwattr $C$DW$988, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$988, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$988, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$989	.dwtag  DW_TAG_member
	.dwattr $C$DW$989, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$989, DW_AT_name("bit")
	.dwattr $C$DW$989, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$989, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$989, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$140


$C$DW$T$141	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$141, DW_AT_name("PIE_CTRL_REGS")
	.dwattr $C$DW$T$141, DW_AT_byte_size(0x1a)
$C$DW$990	.dwtag  DW_TAG_member
	.dwattr $C$DW$990, DW_AT_type(*$C$DW$T$136)
	.dwattr $C$DW$990, DW_AT_name("PIECRTL")
	.dwattr $C$DW$990, DW_AT_TI_symbol_name("_PIECRTL")
	.dwattr $C$DW$990, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$990, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$991	.dwtag  DW_TAG_member
	.dwattr $C$DW$991, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$991, DW_AT_name("PIEACK")
	.dwattr $C$DW$991, DW_AT_TI_symbol_name("_PIEACK")
	.dwattr $C$DW$991, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$991, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$992	.dwtag  DW_TAG_member
	.dwattr $C$DW$992, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$992, DW_AT_name("PIEIER1")
	.dwattr $C$DW$992, DW_AT_TI_symbol_name("_PIEIER1")
	.dwattr $C$DW$992, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$992, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$993	.dwtag  DW_TAG_member
	.dwattr $C$DW$993, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$993, DW_AT_name("PIEIFR1")
	.dwattr $C$DW$993, DW_AT_TI_symbol_name("_PIEIFR1")
	.dwattr $C$DW$993, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$993, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$994	.dwtag  DW_TAG_member
	.dwattr $C$DW$994, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$994, DW_AT_name("PIEIER2")
	.dwattr $C$DW$994, DW_AT_TI_symbol_name("_PIEIER2")
	.dwattr $C$DW$994, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$994, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$995	.dwtag  DW_TAG_member
	.dwattr $C$DW$995, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$995, DW_AT_name("PIEIFR2")
	.dwattr $C$DW$995, DW_AT_TI_symbol_name("_PIEIFR2")
	.dwattr $C$DW$995, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$995, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$996	.dwtag  DW_TAG_member
	.dwattr $C$DW$996, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$996, DW_AT_name("PIEIER3")
	.dwattr $C$DW$996, DW_AT_TI_symbol_name("_PIEIER3")
	.dwattr $C$DW$996, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$996, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$997	.dwtag  DW_TAG_member
	.dwattr $C$DW$997, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$997, DW_AT_name("PIEIFR3")
	.dwattr $C$DW$997, DW_AT_TI_symbol_name("_PIEIFR3")
	.dwattr $C$DW$997, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$997, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$998	.dwtag  DW_TAG_member
	.dwattr $C$DW$998, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$998, DW_AT_name("PIEIER4")
	.dwattr $C$DW$998, DW_AT_TI_symbol_name("_PIEIER4")
	.dwattr $C$DW$998, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$998, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$999	.dwtag  DW_TAG_member
	.dwattr $C$DW$999, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$999, DW_AT_name("PIEIFR4")
	.dwattr $C$DW$999, DW_AT_TI_symbol_name("_PIEIFR4")
	.dwattr $C$DW$999, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$999, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1000	.dwtag  DW_TAG_member
	.dwattr $C$DW$1000, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1000, DW_AT_name("PIEIER5")
	.dwattr $C$DW$1000, DW_AT_TI_symbol_name("_PIEIER5")
	.dwattr $C$DW$1000, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1000, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1001	.dwtag  DW_TAG_member
	.dwattr $C$DW$1001, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1001, DW_AT_name("PIEIFR5")
	.dwattr $C$DW$1001, DW_AT_TI_symbol_name("_PIEIFR5")
	.dwattr $C$DW$1001, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$1001, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1002	.dwtag  DW_TAG_member
	.dwattr $C$DW$1002, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1002, DW_AT_name("PIEIER6")
	.dwattr $C$DW$1002, DW_AT_TI_symbol_name("_PIEIER6")
	.dwattr $C$DW$1002, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1002, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1003	.dwtag  DW_TAG_member
	.dwattr $C$DW$1003, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1003, DW_AT_name("PIEIFR6")
	.dwattr $C$DW$1003, DW_AT_TI_symbol_name("_PIEIFR6")
	.dwattr $C$DW$1003, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$1003, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1004	.dwtag  DW_TAG_member
	.dwattr $C$DW$1004, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1004, DW_AT_name("PIEIER7")
	.dwattr $C$DW$1004, DW_AT_TI_symbol_name("_PIEIER7")
	.dwattr $C$DW$1004, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1004, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1005	.dwtag  DW_TAG_member
	.dwattr $C$DW$1005, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1005, DW_AT_name("PIEIFR7")
	.dwattr $C$DW$1005, DW_AT_TI_symbol_name("_PIEIFR7")
	.dwattr $C$DW$1005, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1005, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1006	.dwtag  DW_TAG_member
	.dwattr $C$DW$1006, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1006, DW_AT_name("PIEIER8")
	.dwattr $C$DW$1006, DW_AT_TI_symbol_name("_PIEIER8")
	.dwattr $C$DW$1006, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1006, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1007	.dwtag  DW_TAG_member
	.dwattr $C$DW$1007, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1007, DW_AT_name("PIEIFR8")
	.dwattr $C$DW$1007, DW_AT_TI_symbol_name("_PIEIFR8")
	.dwattr $C$DW$1007, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$1007, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1008	.dwtag  DW_TAG_member
	.dwattr $C$DW$1008, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1008, DW_AT_name("PIEIER9")
	.dwattr $C$DW$1008, DW_AT_TI_symbol_name("_PIEIER9")
	.dwattr $C$DW$1008, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1008, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1009	.dwtag  DW_TAG_member
	.dwattr $C$DW$1009, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1009, DW_AT_name("PIEIFR9")
	.dwattr $C$DW$1009, DW_AT_TI_symbol_name("_PIEIFR9")
	.dwattr $C$DW$1009, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$1009, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1010	.dwtag  DW_TAG_member
	.dwattr $C$DW$1010, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1010, DW_AT_name("PIEIER10")
	.dwattr $C$DW$1010, DW_AT_TI_symbol_name("_PIEIER10")
	.dwattr $C$DW$1010, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1010, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1011	.dwtag  DW_TAG_member
	.dwattr $C$DW$1011, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1011, DW_AT_name("PIEIFR10")
	.dwattr $C$DW$1011, DW_AT_TI_symbol_name("_PIEIFR10")
	.dwattr $C$DW$1011, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$1011, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1012	.dwtag  DW_TAG_member
	.dwattr $C$DW$1012, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1012, DW_AT_name("PIEIER11")
	.dwattr $C$DW$1012, DW_AT_TI_symbol_name("_PIEIER11")
	.dwattr $C$DW$1012, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1012, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1013	.dwtag  DW_TAG_member
	.dwattr $C$DW$1013, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1013, DW_AT_name("PIEIFR11")
	.dwattr $C$DW$1013, DW_AT_TI_symbol_name("_PIEIFR11")
	.dwattr $C$DW$1013, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$1013, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1014	.dwtag  DW_TAG_member
	.dwattr $C$DW$1014, DW_AT_type(*$C$DW$T$138)
	.dwattr $C$DW$1014, DW_AT_name("PIEIER12")
	.dwattr $C$DW$1014, DW_AT_TI_symbol_name("_PIEIER12")
	.dwattr $C$DW$1014, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1014, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1015	.dwtag  DW_TAG_member
	.dwattr $C$DW$1015, DW_AT_type(*$C$DW$T$140)
	.dwattr $C$DW$1015, DW_AT_name("PIEIFR12")
	.dwattr $C$DW$1015, DW_AT_TI_symbol_name("_PIEIFR12")
	.dwattr $C$DW$1015, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$1015, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$141

$C$DW$1016	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1016, DW_AT_type(*$C$DW$T$141)

$C$DW$T$213	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$213, DW_AT_type(*$C$DW$1016)


$C$DW$T$145	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$145, DW_AT_name("PIE_VECT_TABLE")
	.dwattr $C$DW$T$145, DW_AT_byte_size(0x100)
$C$DW$1017	.dwtag  DW_TAG_member
	.dwattr $C$DW$1017, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1017, DW_AT_name("PIE1_RESERVED")
	.dwattr $C$DW$1017, DW_AT_TI_symbol_name("_PIE1_RESERVED")
	.dwattr $C$DW$1017, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1017, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1018	.dwtag  DW_TAG_member
	.dwattr $C$DW$1018, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1018, DW_AT_name("PIE2_RESERVED")
	.dwattr $C$DW$1018, DW_AT_TI_symbol_name("_PIE2_RESERVED")
	.dwattr $C$DW$1018, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1018, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1019	.dwtag  DW_TAG_member
	.dwattr $C$DW$1019, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1019, DW_AT_name("PIE3_RESERVED")
	.dwattr $C$DW$1019, DW_AT_TI_symbol_name("_PIE3_RESERVED")
	.dwattr $C$DW$1019, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$1019, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1020	.dwtag  DW_TAG_member
	.dwattr $C$DW$1020, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1020, DW_AT_name("PIE4_RESERVED")
	.dwattr $C$DW$1020, DW_AT_TI_symbol_name("_PIE4_RESERVED")
	.dwattr $C$DW$1020, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$1020, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1021	.dwtag  DW_TAG_member
	.dwattr $C$DW$1021, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1021, DW_AT_name("PIE5_RESERVED")
	.dwattr $C$DW$1021, DW_AT_TI_symbol_name("_PIE5_RESERVED")
	.dwattr $C$DW$1021, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1021, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1022	.dwtag  DW_TAG_member
	.dwattr $C$DW$1022, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1022, DW_AT_name("PIE6_RESERVED")
	.dwattr $C$DW$1022, DW_AT_TI_symbol_name("_PIE6_RESERVED")
	.dwattr $C$DW$1022, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1022, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1023	.dwtag  DW_TAG_member
	.dwattr $C$DW$1023, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1023, DW_AT_name("PIE7_RESERVED")
	.dwattr $C$DW$1023, DW_AT_TI_symbol_name("_PIE7_RESERVED")
	.dwattr $C$DW$1023, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$1023, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1024	.dwtag  DW_TAG_member
	.dwattr $C$DW$1024, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1024, DW_AT_name("PIE8_RESERVED")
	.dwattr $C$DW$1024, DW_AT_TI_symbol_name("_PIE8_RESERVED")
	.dwattr $C$DW$1024, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$1024, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1025	.dwtag  DW_TAG_member
	.dwattr $C$DW$1025, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1025, DW_AT_name("PIE9_RESERVED")
	.dwattr $C$DW$1025, DW_AT_TI_symbol_name("_PIE9_RESERVED")
	.dwattr $C$DW$1025, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1025, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1026	.dwtag  DW_TAG_member
	.dwattr $C$DW$1026, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1026, DW_AT_name("PIE10_RESERVED")
	.dwattr $C$DW$1026, DW_AT_TI_symbol_name("_PIE10_RESERVED")
	.dwattr $C$DW$1026, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$1026, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1027	.dwtag  DW_TAG_member
	.dwattr $C$DW$1027, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1027, DW_AT_name("PIE11_RESERVED")
	.dwattr $C$DW$1027, DW_AT_TI_symbol_name("_PIE11_RESERVED")
	.dwattr $C$DW$1027, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$1027, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1028	.dwtag  DW_TAG_member
	.dwattr $C$DW$1028, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1028, DW_AT_name("PIE12_RESERVED")
	.dwattr $C$DW$1028, DW_AT_TI_symbol_name("_PIE12_RESERVED")
	.dwattr $C$DW$1028, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$1028, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1029	.dwtag  DW_TAG_member
	.dwattr $C$DW$1029, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1029, DW_AT_name("PIE13_RESERVED")
	.dwattr $C$DW$1029, DW_AT_TI_symbol_name("_PIE13_RESERVED")
	.dwattr $C$DW$1029, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$1029, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1030	.dwtag  DW_TAG_member
	.dwattr $C$DW$1030, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1030, DW_AT_name("XINT13")
	.dwattr $C$DW$1030, DW_AT_TI_symbol_name("_XINT13")
	.dwattr $C$DW$1030, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$1030, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1031	.dwtag  DW_TAG_member
	.dwattr $C$DW$1031, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1031, DW_AT_name("TINT2")
	.dwattr $C$DW$1031, DW_AT_TI_symbol_name("_TINT2")
	.dwattr $C$DW$1031, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$1031, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1032	.dwtag  DW_TAG_member
	.dwattr $C$DW$1032, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1032, DW_AT_name("DATALOG")
	.dwattr $C$DW$1032, DW_AT_TI_symbol_name("_DATALOG")
	.dwattr $C$DW$1032, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$1032, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1033	.dwtag  DW_TAG_member
	.dwattr $C$DW$1033, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1033, DW_AT_name("RTOSINT")
	.dwattr $C$DW$1033, DW_AT_TI_symbol_name("_RTOSINT")
	.dwattr $C$DW$1033, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1033, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1034	.dwtag  DW_TAG_member
	.dwattr $C$DW$1034, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1034, DW_AT_name("EMUINT")
	.dwattr $C$DW$1034, DW_AT_TI_symbol_name("_EMUINT")
	.dwattr $C$DW$1034, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$1034, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1035	.dwtag  DW_TAG_member
	.dwattr $C$DW$1035, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1035, DW_AT_name("XNMI")
	.dwattr $C$DW$1035, DW_AT_TI_symbol_name("_XNMI")
	.dwattr $C$DW$1035, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$1035, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1036	.dwtag  DW_TAG_member
	.dwattr $C$DW$1036, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1036, DW_AT_name("ILLEGAL")
	.dwattr $C$DW$1036, DW_AT_TI_symbol_name("_ILLEGAL")
	.dwattr $C$DW$1036, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$1036, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1037	.dwtag  DW_TAG_member
	.dwattr $C$DW$1037, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1037, DW_AT_name("USER1")
	.dwattr $C$DW$1037, DW_AT_TI_symbol_name("_USER1")
	.dwattr $C$DW$1037, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$1037, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1038	.dwtag  DW_TAG_member
	.dwattr $C$DW$1038, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1038, DW_AT_name("USER2")
	.dwattr $C$DW$1038, DW_AT_TI_symbol_name("_USER2")
	.dwattr $C$DW$1038, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$1038, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1039	.dwtag  DW_TAG_member
	.dwattr $C$DW$1039, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1039, DW_AT_name("USER3")
	.dwattr $C$DW$1039, DW_AT_TI_symbol_name("_USER3")
	.dwattr $C$DW$1039, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$1039, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1040	.dwtag  DW_TAG_member
	.dwattr $C$DW$1040, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1040, DW_AT_name("USER4")
	.dwattr $C$DW$1040, DW_AT_TI_symbol_name("_USER4")
	.dwattr $C$DW$1040, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$1040, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1041	.dwtag  DW_TAG_member
	.dwattr $C$DW$1041, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1041, DW_AT_name("USER5")
	.dwattr $C$DW$1041, DW_AT_TI_symbol_name("_USER5")
	.dwattr $C$DW$1041, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$1041, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1042	.dwtag  DW_TAG_member
	.dwattr $C$DW$1042, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1042, DW_AT_name("USER6")
	.dwattr $C$DW$1042, DW_AT_TI_symbol_name("_USER6")
	.dwattr $C$DW$1042, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$1042, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1043	.dwtag  DW_TAG_member
	.dwattr $C$DW$1043, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1043, DW_AT_name("USER7")
	.dwattr $C$DW$1043, DW_AT_TI_symbol_name("_USER7")
	.dwattr $C$DW$1043, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$1043, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1044	.dwtag  DW_TAG_member
	.dwattr $C$DW$1044, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1044, DW_AT_name("USER8")
	.dwattr $C$DW$1044, DW_AT_TI_symbol_name("_USER8")
	.dwattr $C$DW$1044, DW_AT_data_member_location[DW_OP_plus_uconst 0x36]
	.dwattr $C$DW$1044, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1045	.dwtag  DW_TAG_member
	.dwattr $C$DW$1045, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1045, DW_AT_name("USER9")
	.dwattr $C$DW$1045, DW_AT_TI_symbol_name("_USER9")
	.dwattr $C$DW$1045, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$1045, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1046	.dwtag  DW_TAG_member
	.dwattr $C$DW$1046, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1046, DW_AT_name("USER10")
	.dwattr $C$DW$1046, DW_AT_TI_symbol_name("_USER10")
	.dwattr $C$DW$1046, DW_AT_data_member_location[DW_OP_plus_uconst 0x3a]
	.dwattr $C$DW$1046, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1047	.dwtag  DW_TAG_member
	.dwattr $C$DW$1047, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1047, DW_AT_name("USER11")
	.dwattr $C$DW$1047, DW_AT_TI_symbol_name("_USER11")
	.dwattr $C$DW$1047, DW_AT_data_member_location[DW_OP_plus_uconst 0x3c]
	.dwattr $C$DW$1047, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1048	.dwtag  DW_TAG_member
	.dwattr $C$DW$1048, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1048, DW_AT_name("USER12")
	.dwattr $C$DW$1048, DW_AT_TI_symbol_name("_USER12")
	.dwattr $C$DW$1048, DW_AT_data_member_location[DW_OP_plus_uconst 0x3e]
	.dwattr $C$DW$1048, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1049	.dwtag  DW_TAG_member
	.dwattr $C$DW$1049, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1049, DW_AT_name("PDPINTA")
	.dwattr $C$DW$1049, DW_AT_TI_symbol_name("_PDPINTA")
	.dwattr $C$DW$1049, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$1049, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1050	.dwtag  DW_TAG_member
	.dwattr $C$DW$1050, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1050, DW_AT_name("PDPINTB")
	.dwattr $C$DW$1050, DW_AT_TI_symbol_name("_PDPINTB")
	.dwattr $C$DW$1050, DW_AT_data_member_location[DW_OP_plus_uconst 0x42]
	.dwattr $C$DW$1050, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1051	.dwtag  DW_TAG_member
	.dwattr $C$DW$1051, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1051, DW_AT_name("rsvd1_3")
	.dwattr $C$DW$1051, DW_AT_TI_symbol_name("_rsvd1_3")
	.dwattr $C$DW$1051, DW_AT_data_member_location[DW_OP_plus_uconst 0x44]
	.dwattr $C$DW$1051, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1052	.dwtag  DW_TAG_member
	.dwattr $C$DW$1052, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1052, DW_AT_name("XINT1")
	.dwattr $C$DW$1052, DW_AT_TI_symbol_name("_XINT1")
	.dwattr $C$DW$1052, DW_AT_data_member_location[DW_OP_plus_uconst 0x46]
	.dwattr $C$DW$1052, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1053	.dwtag  DW_TAG_member
	.dwattr $C$DW$1053, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1053, DW_AT_name("XINT2")
	.dwattr $C$DW$1053, DW_AT_TI_symbol_name("_XINT2")
	.dwattr $C$DW$1053, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$1053, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1054	.dwtag  DW_TAG_member
	.dwattr $C$DW$1054, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1054, DW_AT_name("ADCINT")
	.dwattr $C$DW$1054, DW_AT_TI_symbol_name("_ADCINT")
	.dwattr $C$DW$1054, DW_AT_data_member_location[DW_OP_plus_uconst 0x4a]
	.dwattr $C$DW$1054, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1055	.dwtag  DW_TAG_member
	.dwattr $C$DW$1055, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1055, DW_AT_name("TINT0")
	.dwattr $C$DW$1055, DW_AT_TI_symbol_name("_TINT0")
	.dwattr $C$DW$1055, DW_AT_data_member_location[DW_OP_plus_uconst 0x4c]
	.dwattr $C$DW$1055, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1056	.dwtag  DW_TAG_member
	.dwattr $C$DW$1056, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1056, DW_AT_name("WAKEINT")
	.dwattr $C$DW$1056, DW_AT_TI_symbol_name("_WAKEINT")
	.dwattr $C$DW$1056, DW_AT_data_member_location[DW_OP_plus_uconst 0x4e]
	.dwattr $C$DW$1056, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1057	.dwtag  DW_TAG_member
	.dwattr $C$DW$1057, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1057, DW_AT_name("CMP1INT")
	.dwattr $C$DW$1057, DW_AT_TI_symbol_name("_CMP1INT")
	.dwattr $C$DW$1057, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$1057, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1058	.dwtag  DW_TAG_member
	.dwattr $C$DW$1058, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1058, DW_AT_name("CMP2INT")
	.dwattr $C$DW$1058, DW_AT_TI_symbol_name("_CMP2INT")
	.dwattr $C$DW$1058, DW_AT_data_member_location[DW_OP_plus_uconst 0x52]
	.dwattr $C$DW$1058, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1059	.dwtag  DW_TAG_member
	.dwattr $C$DW$1059, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1059, DW_AT_name("CMP3INT")
	.dwattr $C$DW$1059, DW_AT_TI_symbol_name("_CMP3INT")
	.dwattr $C$DW$1059, DW_AT_data_member_location[DW_OP_plus_uconst 0x54]
	.dwattr $C$DW$1059, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1060	.dwtag  DW_TAG_member
	.dwattr $C$DW$1060, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1060, DW_AT_name("T1PINT")
	.dwattr $C$DW$1060, DW_AT_TI_symbol_name("_T1PINT")
	.dwattr $C$DW$1060, DW_AT_data_member_location[DW_OP_plus_uconst 0x56]
	.dwattr $C$DW$1060, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1061	.dwtag  DW_TAG_member
	.dwattr $C$DW$1061, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1061, DW_AT_name("T1CINT")
	.dwattr $C$DW$1061, DW_AT_TI_symbol_name("_T1CINT")
	.dwattr $C$DW$1061, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$1061, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1062	.dwtag  DW_TAG_member
	.dwattr $C$DW$1062, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1062, DW_AT_name("T1UFINT")
	.dwattr $C$DW$1062, DW_AT_TI_symbol_name("_T1UFINT")
	.dwattr $C$DW$1062, DW_AT_data_member_location[DW_OP_plus_uconst 0x5a]
	.dwattr $C$DW$1062, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1063	.dwtag  DW_TAG_member
	.dwattr $C$DW$1063, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1063, DW_AT_name("T1OFINT")
	.dwattr $C$DW$1063, DW_AT_TI_symbol_name("_T1OFINT")
	.dwattr $C$DW$1063, DW_AT_data_member_location[DW_OP_plus_uconst 0x5c]
	.dwattr $C$DW$1063, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1064	.dwtag  DW_TAG_member
	.dwattr $C$DW$1064, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1064, DW_AT_name("rsvd2_8")
	.dwattr $C$DW$1064, DW_AT_TI_symbol_name("_rsvd2_8")
	.dwattr $C$DW$1064, DW_AT_data_member_location[DW_OP_plus_uconst 0x5e]
	.dwattr $C$DW$1064, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1065	.dwtag  DW_TAG_member
	.dwattr $C$DW$1065, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1065, DW_AT_name("T2PINT")
	.dwattr $C$DW$1065, DW_AT_TI_symbol_name("_T2PINT")
	.dwattr $C$DW$1065, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$1065, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1066	.dwtag  DW_TAG_member
	.dwattr $C$DW$1066, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1066, DW_AT_name("T2CINT")
	.dwattr $C$DW$1066, DW_AT_TI_symbol_name("_T2CINT")
	.dwattr $C$DW$1066, DW_AT_data_member_location[DW_OP_plus_uconst 0x62]
	.dwattr $C$DW$1066, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1067	.dwtag  DW_TAG_member
	.dwattr $C$DW$1067, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1067, DW_AT_name("T2UFINT")
	.dwattr $C$DW$1067, DW_AT_TI_symbol_name("_T2UFINT")
	.dwattr $C$DW$1067, DW_AT_data_member_location[DW_OP_plus_uconst 0x64]
	.dwattr $C$DW$1067, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1068	.dwtag  DW_TAG_member
	.dwattr $C$DW$1068, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1068, DW_AT_name("T2OFINT")
	.dwattr $C$DW$1068, DW_AT_TI_symbol_name("_T2OFINT")
	.dwattr $C$DW$1068, DW_AT_data_member_location[DW_OP_plus_uconst 0x66]
	.dwattr $C$DW$1068, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1069	.dwtag  DW_TAG_member
	.dwattr $C$DW$1069, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1069, DW_AT_name("CAPINT1")
	.dwattr $C$DW$1069, DW_AT_TI_symbol_name("_CAPINT1")
	.dwattr $C$DW$1069, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$1069, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1070	.dwtag  DW_TAG_member
	.dwattr $C$DW$1070, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1070, DW_AT_name("CAPINT2")
	.dwattr $C$DW$1070, DW_AT_TI_symbol_name("_CAPINT2")
	.dwattr $C$DW$1070, DW_AT_data_member_location[DW_OP_plus_uconst 0x6a]
	.dwattr $C$DW$1070, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1071	.dwtag  DW_TAG_member
	.dwattr $C$DW$1071, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1071, DW_AT_name("CAPINT3")
	.dwattr $C$DW$1071, DW_AT_TI_symbol_name("_CAPINT3")
	.dwattr $C$DW$1071, DW_AT_data_member_location[DW_OP_plus_uconst 0x6c]
	.dwattr $C$DW$1071, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1072	.dwtag  DW_TAG_member
	.dwattr $C$DW$1072, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1072, DW_AT_name("rsvd3_8")
	.dwattr $C$DW$1072, DW_AT_TI_symbol_name("_rsvd3_8")
	.dwattr $C$DW$1072, DW_AT_data_member_location[DW_OP_plus_uconst 0x6e]
	.dwattr $C$DW$1072, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1073	.dwtag  DW_TAG_member
	.dwattr $C$DW$1073, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1073, DW_AT_name("CMP4INT")
	.dwattr $C$DW$1073, DW_AT_TI_symbol_name("_CMP4INT")
	.dwattr $C$DW$1073, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$1073, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1074	.dwtag  DW_TAG_member
	.dwattr $C$DW$1074, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1074, DW_AT_name("CMP5INT")
	.dwattr $C$DW$1074, DW_AT_TI_symbol_name("_CMP5INT")
	.dwattr $C$DW$1074, DW_AT_data_member_location[DW_OP_plus_uconst 0x72]
	.dwattr $C$DW$1074, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1075	.dwtag  DW_TAG_member
	.dwattr $C$DW$1075, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1075, DW_AT_name("CMP6INT")
	.dwattr $C$DW$1075, DW_AT_TI_symbol_name("_CMP6INT")
	.dwattr $C$DW$1075, DW_AT_data_member_location[DW_OP_plus_uconst 0x74]
	.dwattr $C$DW$1075, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1076	.dwtag  DW_TAG_member
	.dwattr $C$DW$1076, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1076, DW_AT_name("T3PINT")
	.dwattr $C$DW$1076, DW_AT_TI_symbol_name("_T3PINT")
	.dwattr $C$DW$1076, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$1076, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1077	.dwtag  DW_TAG_member
	.dwattr $C$DW$1077, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1077, DW_AT_name("T3CINT")
	.dwattr $C$DW$1077, DW_AT_TI_symbol_name("_T3CINT")
	.dwattr $C$DW$1077, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$1077, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1078	.dwtag  DW_TAG_member
	.dwattr $C$DW$1078, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1078, DW_AT_name("T3UFINT")
	.dwattr $C$DW$1078, DW_AT_TI_symbol_name("_T3UFINT")
	.dwattr $C$DW$1078, DW_AT_data_member_location[DW_OP_plus_uconst 0x7a]
	.dwattr $C$DW$1078, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1079	.dwtag  DW_TAG_member
	.dwattr $C$DW$1079, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1079, DW_AT_name("T3OFINT")
	.dwattr $C$DW$1079, DW_AT_TI_symbol_name("_T3OFINT")
	.dwattr $C$DW$1079, DW_AT_data_member_location[DW_OP_plus_uconst 0x7c]
	.dwattr $C$DW$1079, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1080	.dwtag  DW_TAG_member
	.dwattr $C$DW$1080, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1080, DW_AT_name("rsvd4_8")
	.dwattr $C$DW$1080, DW_AT_TI_symbol_name("_rsvd4_8")
	.dwattr $C$DW$1080, DW_AT_data_member_location[DW_OP_plus_uconst 0x7e]
	.dwattr $C$DW$1080, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1081	.dwtag  DW_TAG_member
	.dwattr $C$DW$1081, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1081, DW_AT_name("T4PINT")
	.dwattr $C$DW$1081, DW_AT_TI_symbol_name("_T4PINT")
	.dwattr $C$DW$1081, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$1081, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1082	.dwtag  DW_TAG_member
	.dwattr $C$DW$1082, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1082, DW_AT_name("T4CINT")
	.dwattr $C$DW$1082, DW_AT_TI_symbol_name("_T4CINT")
	.dwattr $C$DW$1082, DW_AT_data_member_location[DW_OP_plus_uconst 0x82]
	.dwattr $C$DW$1082, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1083	.dwtag  DW_TAG_member
	.dwattr $C$DW$1083, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1083, DW_AT_name("T4UFINT")
	.dwattr $C$DW$1083, DW_AT_TI_symbol_name("_T4UFINT")
	.dwattr $C$DW$1083, DW_AT_data_member_location[DW_OP_plus_uconst 0x84]
	.dwattr $C$DW$1083, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1084	.dwtag  DW_TAG_member
	.dwattr $C$DW$1084, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1084, DW_AT_name("T4OFINT")
	.dwattr $C$DW$1084, DW_AT_TI_symbol_name("_T4OFINT")
	.dwattr $C$DW$1084, DW_AT_data_member_location[DW_OP_plus_uconst 0x86]
	.dwattr $C$DW$1084, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1085	.dwtag  DW_TAG_member
	.dwattr $C$DW$1085, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1085, DW_AT_name("CAPINT4")
	.dwattr $C$DW$1085, DW_AT_TI_symbol_name("_CAPINT4")
	.dwattr $C$DW$1085, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$1085, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1086	.dwtag  DW_TAG_member
	.dwattr $C$DW$1086, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1086, DW_AT_name("CAPINT5")
	.dwattr $C$DW$1086, DW_AT_TI_symbol_name("_CAPINT5")
	.dwattr $C$DW$1086, DW_AT_data_member_location[DW_OP_plus_uconst 0x8a]
	.dwattr $C$DW$1086, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1087	.dwtag  DW_TAG_member
	.dwattr $C$DW$1087, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1087, DW_AT_name("CAPINT6")
	.dwattr $C$DW$1087, DW_AT_TI_symbol_name("_CAPINT6")
	.dwattr $C$DW$1087, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$1087, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1088	.dwtag  DW_TAG_member
	.dwattr $C$DW$1088, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1088, DW_AT_name("rsvd5_8")
	.dwattr $C$DW$1088, DW_AT_TI_symbol_name("_rsvd5_8")
	.dwattr $C$DW$1088, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$1088, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1089	.dwtag  DW_TAG_member
	.dwattr $C$DW$1089, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1089, DW_AT_name("SPIRXINTA")
	.dwattr $C$DW$1089, DW_AT_TI_symbol_name("_SPIRXINTA")
	.dwattr $C$DW$1089, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$1089, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1090	.dwtag  DW_TAG_member
	.dwattr $C$DW$1090, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1090, DW_AT_name("SPITXINTA")
	.dwattr $C$DW$1090, DW_AT_TI_symbol_name("_SPITXINTA")
	.dwattr $C$DW$1090, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$1090, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1091	.dwtag  DW_TAG_member
	.dwattr $C$DW$1091, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1091, DW_AT_name("rsvd6_3")
	.dwattr $C$DW$1091, DW_AT_TI_symbol_name("_rsvd6_3")
	.dwattr $C$DW$1091, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$1091, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1092	.dwtag  DW_TAG_member
	.dwattr $C$DW$1092, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1092, DW_AT_name("rsvd6_4")
	.dwattr $C$DW$1092, DW_AT_TI_symbol_name("_rsvd6_4")
	.dwattr $C$DW$1092, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$1092, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1093	.dwtag  DW_TAG_member
	.dwattr $C$DW$1093, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1093, DW_AT_name("MRINTA")
	.dwattr $C$DW$1093, DW_AT_TI_symbol_name("_MRINTA")
	.dwattr $C$DW$1093, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr $C$DW$1093, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1094	.dwtag  DW_TAG_member
	.dwattr $C$DW$1094, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1094, DW_AT_name("MXINTA")
	.dwattr $C$DW$1094, DW_AT_TI_symbol_name("_MXINTA")
	.dwattr $C$DW$1094, DW_AT_data_member_location[DW_OP_plus_uconst 0x9a]
	.dwattr $C$DW$1094, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1095	.dwtag  DW_TAG_member
	.dwattr $C$DW$1095, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1095, DW_AT_name("rsvd6_7")
	.dwattr $C$DW$1095, DW_AT_TI_symbol_name("_rsvd6_7")
	.dwattr $C$DW$1095, DW_AT_data_member_location[DW_OP_plus_uconst 0x9c]
	.dwattr $C$DW$1095, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1096	.dwtag  DW_TAG_member
	.dwattr $C$DW$1096, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1096, DW_AT_name("rsvd6_8")
	.dwattr $C$DW$1096, DW_AT_TI_symbol_name("_rsvd6_8")
	.dwattr $C$DW$1096, DW_AT_data_member_location[DW_OP_plus_uconst 0x9e]
	.dwattr $C$DW$1096, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1097	.dwtag  DW_TAG_member
	.dwattr $C$DW$1097, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1097, DW_AT_name("rsvd7_1")
	.dwattr $C$DW$1097, DW_AT_TI_symbol_name("_rsvd7_1")
	.dwattr $C$DW$1097, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr $C$DW$1097, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1098	.dwtag  DW_TAG_member
	.dwattr $C$DW$1098, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1098, DW_AT_name("rsvd7_2")
	.dwattr $C$DW$1098, DW_AT_TI_symbol_name("_rsvd7_2")
	.dwattr $C$DW$1098, DW_AT_data_member_location[DW_OP_plus_uconst 0xa2]
	.dwattr $C$DW$1098, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1099	.dwtag  DW_TAG_member
	.dwattr $C$DW$1099, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1099, DW_AT_name("rsvd7_3")
	.dwattr $C$DW$1099, DW_AT_TI_symbol_name("_rsvd7_3")
	.dwattr $C$DW$1099, DW_AT_data_member_location[DW_OP_plus_uconst 0xa4]
	.dwattr $C$DW$1099, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1100	.dwtag  DW_TAG_member
	.dwattr $C$DW$1100, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1100, DW_AT_name("rsvd7_4")
	.dwattr $C$DW$1100, DW_AT_TI_symbol_name("_rsvd7_4")
	.dwattr $C$DW$1100, DW_AT_data_member_location[DW_OP_plus_uconst 0xa6]
	.dwattr $C$DW$1100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1101	.dwtag  DW_TAG_member
	.dwattr $C$DW$1101, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1101, DW_AT_name("rsvd7_5")
	.dwattr $C$DW$1101, DW_AT_TI_symbol_name("_rsvd7_5")
	.dwattr $C$DW$1101, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr $C$DW$1101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1102	.dwtag  DW_TAG_member
	.dwattr $C$DW$1102, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1102, DW_AT_name("rsvd7_6")
	.dwattr $C$DW$1102, DW_AT_TI_symbol_name("_rsvd7_6")
	.dwattr $C$DW$1102, DW_AT_data_member_location[DW_OP_plus_uconst 0xaa]
	.dwattr $C$DW$1102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1103	.dwtag  DW_TAG_member
	.dwattr $C$DW$1103, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1103, DW_AT_name("rsvd7_7")
	.dwattr $C$DW$1103, DW_AT_TI_symbol_name("_rsvd7_7")
	.dwattr $C$DW$1103, DW_AT_data_member_location[DW_OP_plus_uconst 0xac]
	.dwattr $C$DW$1103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1104	.dwtag  DW_TAG_member
	.dwattr $C$DW$1104, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1104, DW_AT_name("rsvd7_8")
	.dwattr $C$DW$1104, DW_AT_TI_symbol_name("_rsvd7_8")
	.dwattr $C$DW$1104, DW_AT_data_member_location[DW_OP_plus_uconst 0xae]
	.dwattr $C$DW$1104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1105	.dwtag  DW_TAG_member
	.dwattr $C$DW$1105, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1105, DW_AT_name("rsvd8_1")
	.dwattr $C$DW$1105, DW_AT_TI_symbol_name("_rsvd8_1")
	.dwattr $C$DW$1105, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr $C$DW$1105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1106	.dwtag  DW_TAG_member
	.dwattr $C$DW$1106, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1106, DW_AT_name("rsvd8_2")
	.dwattr $C$DW$1106, DW_AT_TI_symbol_name("_rsvd8_2")
	.dwattr $C$DW$1106, DW_AT_data_member_location[DW_OP_plus_uconst 0xb2]
	.dwattr $C$DW$1106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1107	.dwtag  DW_TAG_member
	.dwattr $C$DW$1107, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1107, DW_AT_name("rsvd8_3")
	.dwattr $C$DW$1107, DW_AT_TI_symbol_name("_rsvd8_3")
	.dwattr $C$DW$1107, DW_AT_data_member_location[DW_OP_plus_uconst 0xb4]
	.dwattr $C$DW$1107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1108	.dwtag  DW_TAG_member
	.dwattr $C$DW$1108, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1108, DW_AT_name("rsvd8_4")
	.dwattr $C$DW$1108, DW_AT_TI_symbol_name("_rsvd8_4")
	.dwattr $C$DW$1108, DW_AT_data_member_location[DW_OP_plus_uconst 0xb6]
	.dwattr $C$DW$1108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1109	.dwtag  DW_TAG_member
	.dwattr $C$DW$1109, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1109, DW_AT_name("rsvd8_5")
	.dwattr $C$DW$1109, DW_AT_TI_symbol_name("_rsvd8_5")
	.dwattr $C$DW$1109, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr $C$DW$1109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1110	.dwtag  DW_TAG_member
	.dwattr $C$DW$1110, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1110, DW_AT_name("rsvd8_6")
	.dwattr $C$DW$1110, DW_AT_TI_symbol_name("_rsvd8_6")
	.dwattr $C$DW$1110, DW_AT_data_member_location[DW_OP_plus_uconst 0xba]
	.dwattr $C$DW$1110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1111	.dwtag  DW_TAG_member
	.dwattr $C$DW$1111, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1111, DW_AT_name("rsvd8_7")
	.dwattr $C$DW$1111, DW_AT_TI_symbol_name("_rsvd8_7")
	.dwattr $C$DW$1111, DW_AT_data_member_location[DW_OP_plus_uconst 0xbc]
	.dwattr $C$DW$1111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1112	.dwtag  DW_TAG_member
	.dwattr $C$DW$1112, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1112, DW_AT_name("rsvd8_8")
	.dwattr $C$DW$1112, DW_AT_TI_symbol_name("_rsvd8_8")
	.dwattr $C$DW$1112, DW_AT_data_member_location[DW_OP_plus_uconst 0xbe]
	.dwattr $C$DW$1112, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1113	.dwtag  DW_TAG_member
	.dwattr $C$DW$1113, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1113, DW_AT_name("RXAINT")
	.dwattr $C$DW$1113, DW_AT_TI_symbol_name("_RXAINT")
	.dwattr $C$DW$1113, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$1113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1114	.dwtag  DW_TAG_member
	.dwattr $C$DW$1114, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1114, DW_AT_name("TXAINT")
	.dwattr $C$DW$1114, DW_AT_TI_symbol_name("_TXAINT")
	.dwattr $C$DW$1114, DW_AT_data_member_location[DW_OP_plus_uconst 0xc2]
	.dwattr $C$DW$1114, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1115	.dwtag  DW_TAG_member
	.dwattr $C$DW$1115, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1115, DW_AT_name("RXBINT")
	.dwattr $C$DW$1115, DW_AT_TI_symbol_name("_RXBINT")
	.dwattr $C$DW$1115, DW_AT_data_member_location[DW_OP_plus_uconst 0xc4]
	.dwattr $C$DW$1115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1116	.dwtag  DW_TAG_member
	.dwattr $C$DW$1116, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1116, DW_AT_name("TXBINT")
	.dwattr $C$DW$1116, DW_AT_TI_symbol_name("_TXBINT")
	.dwattr $C$DW$1116, DW_AT_data_member_location[DW_OP_plus_uconst 0xc6]
	.dwattr $C$DW$1116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1117	.dwtag  DW_TAG_member
	.dwattr $C$DW$1117, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1117, DW_AT_name("ECAN0INTA")
	.dwattr $C$DW$1117, DW_AT_TI_symbol_name("_ECAN0INTA")
	.dwattr $C$DW$1117, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr $C$DW$1117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1118	.dwtag  DW_TAG_member
	.dwattr $C$DW$1118, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1118, DW_AT_name("ECAN1INTA")
	.dwattr $C$DW$1118, DW_AT_TI_symbol_name("_ECAN1INTA")
	.dwattr $C$DW$1118, DW_AT_data_member_location[DW_OP_plus_uconst 0xca]
	.dwattr $C$DW$1118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1119	.dwtag  DW_TAG_member
	.dwattr $C$DW$1119, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1119, DW_AT_name("rsvd9_7")
	.dwattr $C$DW$1119, DW_AT_TI_symbol_name("_rsvd9_7")
	.dwattr $C$DW$1119, DW_AT_data_member_location[DW_OP_plus_uconst 0xcc]
	.dwattr $C$DW$1119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1120	.dwtag  DW_TAG_member
	.dwattr $C$DW$1120, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1120, DW_AT_name("rsvd9_8")
	.dwattr $C$DW$1120, DW_AT_TI_symbol_name("_rsvd9_8")
	.dwattr $C$DW$1120, DW_AT_data_member_location[DW_OP_plus_uconst 0xce]
	.dwattr $C$DW$1120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1121	.dwtag  DW_TAG_member
	.dwattr $C$DW$1121, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1121, DW_AT_name("rsvd10_1")
	.dwattr $C$DW$1121, DW_AT_TI_symbol_name("_rsvd10_1")
	.dwattr $C$DW$1121, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr $C$DW$1121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1122	.dwtag  DW_TAG_member
	.dwattr $C$DW$1122, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1122, DW_AT_name("rsvd10_2")
	.dwattr $C$DW$1122, DW_AT_TI_symbol_name("_rsvd10_2")
	.dwattr $C$DW$1122, DW_AT_data_member_location[DW_OP_plus_uconst 0xd2]
	.dwattr $C$DW$1122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1123	.dwtag  DW_TAG_member
	.dwattr $C$DW$1123, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1123, DW_AT_name("rsvd10_3")
	.dwattr $C$DW$1123, DW_AT_TI_symbol_name("_rsvd10_3")
	.dwattr $C$DW$1123, DW_AT_data_member_location[DW_OP_plus_uconst 0xd4]
	.dwattr $C$DW$1123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1124	.dwtag  DW_TAG_member
	.dwattr $C$DW$1124, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1124, DW_AT_name("rsvd10_4")
	.dwattr $C$DW$1124, DW_AT_TI_symbol_name("_rsvd10_4")
	.dwattr $C$DW$1124, DW_AT_data_member_location[DW_OP_plus_uconst 0xd6]
	.dwattr $C$DW$1124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1125	.dwtag  DW_TAG_member
	.dwattr $C$DW$1125, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1125, DW_AT_name("rsvd10_5")
	.dwattr $C$DW$1125, DW_AT_TI_symbol_name("_rsvd10_5")
	.dwattr $C$DW$1125, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$1125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1126	.dwtag  DW_TAG_member
	.dwattr $C$DW$1126, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1126, DW_AT_name("rsvd10_6")
	.dwattr $C$DW$1126, DW_AT_TI_symbol_name("_rsvd10_6")
	.dwattr $C$DW$1126, DW_AT_data_member_location[DW_OP_plus_uconst 0xda]
	.dwattr $C$DW$1126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1127	.dwtag  DW_TAG_member
	.dwattr $C$DW$1127, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1127, DW_AT_name("rsvd10_7")
	.dwattr $C$DW$1127, DW_AT_TI_symbol_name("_rsvd10_7")
	.dwattr $C$DW$1127, DW_AT_data_member_location[DW_OP_plus_uconst 0xdc]
	.dwattr $C$DW$1127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1128	.dwtag  DW_TAG_member
	.dwattr $C$DW$1128, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1128, DW_AT_name("rsvd10_8")
	.dwattr $C$DW$1128, DW_AT_TI_symbol_name("_rsvd10_8")
	.dwattr $C$DW$1128, DW_AT_data_member_location[DW_OP_plus_uconst 0xde]
	.dwattr $C$DW$1128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1129	.dwtag  DW_TAG_member
	.dwattr $C$DW$1129, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1129, DW_AT_name("rsvd11_1")
	.dwattr $C$DW$1129, DW_AT_TI_symbol_name("_rsvd11_1")
	.dwattr $C$DW$1129, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr $C$DW$1129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1130	.dwtag  DW_TAG_member
	.dwattr $C$DW$1130, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1130, DW_AT_name("rsvd11_2")
	.dwattr $C$DW$1130, DW_AT_TI_symbol_name("_rsvd11_2")
	.dwattr $C$DW$1130, DW_AT_data_member_location[DW_OP_plus_uconst 0xe2]
	.dwattr $C$DW$1130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1131	.dwtag  DW_TAG_member
	.dwattr $C$DW$1131, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1131, DW_AT_name("rsvd11_3")
	.dwattr $C$DW$1131, DW_AT_TI_symbol_name("_rsvd11_3")
	.dwattr $C$DW$1131, DW_AT_data_member_location[DW_OP_plus_uconst 0xe4]
	.dwattr $C$DW$1131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1132	.dwtag  DW_TAG_member
	.dwattr $C$DW$1132, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1132, DW_AT_name("rsvd11_4")
	.dwattr $C$DW$1132, DW_AT_TI_symbol_name("_rsvd11_4")
	.dwattr $C$DW$1132, DW_AT_data_member_location[DW_OP_plus_uconst 0xe6]
	.dwattr $C$DW$1132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1133	.dwtag  DW_TAG_member
	.dwattr $C$DW$1133, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1133, DW_AT_name("rsvd11_5")
	.dwattr $C$DW$1133, DW_AT_TI_symbol_name("_rsvd11_5")
	.dwattr $C$DW$1133, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr $C$DW$1133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1134	.dwtag  DW_TAG_member
	.dwattr $C$DW$1134, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1134, DW_AT_name("rsvd11_6")
	.dwattr $C$DW$1134, DW_AT_TI_symbol_name("_rsvd11_6")
	.dwattr $C$DW$1134, DW_AT_data_member_location[DW_OP_plus_uconst 0xea]
	.dwattr $C$DW$1134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1135	.dwtag  DW_TAG_member
	.dwattr $C$DW$1135, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1135, DW_AT_name("rsvd11_7")
	.dwattr $C$DW$1135, DW_AT_TI_symbol_name("_rsvd11_7")
	.dwattr $C$DW$1135, DW_AT_data_member_location[DW_OP_plus_uconst 0xec]
	.dwattr $C$DW$1135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1136	.dwtag  DW_TAG_member
	.dwattr $C$DW$1136, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1136, DW_AT_name("rsvd11_8")
	.dwattr $C$DW$1136, DW_AT_TI_symbol_name("_rsvd11_8")
	.dwattr $C$DW$1136, DW_AT_data_member_location[DW_OP_plus_uconst 0xee]
	.dwattr $C$DW$1136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1137	.dwtag  DW_TAG_member
	.dwattr $C$DW$1137, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1137, DW_AT_name("rsvd12_1")
	.dwattr $C$DW$1137, DW_AT_TI_symbol_name("_rsvd12_1")
	.dwattr $C$DW$1137, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr $C$DW$1137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1138	.dwtag  DW_TAG_member
	.dwattr $C$DW$1138, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1138, DW_AT_name("rsvd12_2")
	.dwattr $C$DW$1138, DW_AT_TI_symbol_name("_rsvd12_2")
	.dwattr $C$DW$1138, DW_AT_data_member_location[DW_OP_plus_uconst 0xf2]
	.dwattr $C$DW$1138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1139	.dwtag  DW_TAG_member
	.dwattr $C$DW$1139, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1139, DW_AT_name("rsvd12_3")
	.dwattr $C$DW$1139, DW_AT_TI_symbol_name("_rsvd12_3")
	.dwattr $C$DW$1139, DW_AT_data_member_location[DW_OP_plus_uconst 0xf4]
	.dwattr $C$DW$1139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1140	.dwtag  DW_TAG_member
	.dwattr $C$DW$1140, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1140, DW_AT_name("rsvd12_4")
	.dwattr $C$DW$1140, DW_AT_TI_symbol_name("_rsvd12_4")
	.dwattr $C$DW$1140, DW_AT_data_member_location[DW_OP_plus_uconst 0xf6]
	.dwattr $C$DW$1140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1141	.dwtag  DW_TAG_member
	.dwattr $C$DW$1141, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1141, DW_AT_name("rsvd12_5")
	.dwattr $C$DW$1141, DW_AT_TI_symbol_name("_rsvd12_5")
	.dwattr $C$DW$1141, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr $C$DW$1141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1142	.dwtag  DW_TAG_member
	.dwattr $C$DW$1142, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1142, DW_AT_name("rsvd12_6")
	.dwattr $C$DW$1142, DW_AT_TI_symbol_name("_rsvd12_6")
	.dwattr $C$DW$1142, DW_AT_data_member_location[DW_OP_plus_uconst 0xfa]
	.dwattr $C$DW$1142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1143	.dwtag  DW_TAG_member
	.dwattr $C$DW$1143, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1143, DW_AT_name("rsvd12_7")
	.dwattr $C$DW$1143, DW_AT_TI_symbol_name("_rsvd12_7")
	.dwattr $C$DW$1143, DW_AT_data_member_location[DW_OP_plus_uconst 0xfc]
	.dwattr $C$DW$1143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1144	.dwtag  DW_TAG_member
	.dwattr $C$DW$1144, DW_AT_type(*$C$DW$T$144)
	.dwattr $C$DW$1144, DW_AT_name("rsvd12_8")
	.dwattr $C$DW$1144, DW_AT_TI_symbol_name("_rsvd12_8")
	.dwattr $C$DW$1144, DW_AT_data_member_location[DW_OP_plus_uconst 0xfe]
	.dwattr $C$DW$1144, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$145


$C$DW$T$147	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$147, DW_AT_name("PRD_GROUP")
	.dwattr $C$DW$T$147, DW_AT_byte_size(0x02)
$C$DW$1145	.dwtag  DW_TAG_member
	.dwattr $C$DW$1145, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$1145, DW_AT_name("all")
	.dwattr $C$DW$1145, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1146	.dwtag  DW_TAG_member
	.dwattr $C$DW$1146, DW_AT_type(*$C$DW$T$148)
	.dwattr $C$DW$1146, DW_AT_name("half")
	.dwattr $C$DW$1146, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$1146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1146, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$147


$C$DW$T$148	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$148, DW_AT_name("PRD_REG")
	.dwattr $C$DW$T$148, DW_AT_byte_size(0x02)
$C$DW$1147	.dwtag  DW_TAG_member
	.dwattr $C$DW$1147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1147, DW_AT_name("LSW")
	.dwattr $C$DW$1147, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$1147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1148	.dwtag  DW_TAG_member
	.dwattr $C$DW$1148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1148, DW_AT_name("MSW")
	.dwattr $C$DW$1148, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$1148, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1148, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$148


$C$DW$T$162	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$162, DW_AT_name("PROD_CONF")
	.dwattr $C$DW$T$162, DW_AT_byte_size(0xc78)
$C$DW$1149	.dwtag  DW_TAG_member
	.dwattr $C$DW$1149, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$1149, DW_AT_name("usn")
	.dwattr $C$DW$1149, DW_AT_TI_symbol_name("_usn")
	.dwattr $C$DW$1149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1150	.dwtag  DW_TAG_member
	.dwattr $C$DW$1150, DW_AT_type(*$C$DW$T$150)
	.dwattr $C$DW$1150, DW_AT_name("uname")
	.dwattr $C$DW$1150, DW_AT_TI_symbol_name("_uname")
	.dwattr $C$DW$1150, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1151	.dwtag  DW_TAG_member
	.dwattr $C$DW$1151, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1151, DW_AT_name("rxdir")
	.dwattr $C$DW$1151, DW_AT_TI_symbol_name("_rxdir")
	.dwattr $C$DW$1151, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$1151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1152	.dwtag  DW_TAG_member
	.dwattr $C$DW$1152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1152, DW_AT_name("baud")
	.dwattr $C$DW$1152, DW_AT_TI_symbol_name("_baud")
	.dwattr $C$DW$1152, DW_AT_data_member_location[DW_OP_plus_uconst 0x23]
	.dwattr $C$DW$1152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1153	.dwtag  DW_TAG_member
	.dwattr $C$DW$1153, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1153, DW_AT_name("tagiden")
	.dwattr $C$DW$1153, DW_AT_TI_symbol_name("_tagiden")
	.dwattr $C$DW$1153, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$1153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1154	.dwtag  DW_TAG_member
	.dwattr $C$DW$1154, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1154, DW_AT_name("tarepersist")
	.dwattr $C$DW$1154, DW_AT_TI_symbol_name("_tarepersist")
	.dwattr $C$DW$1154, DW_AT_data_member_location[DW_OP_plus_uconst 0x25]
	.dwattr $C$DW$1154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1155	.dwtag  DW_TAG_member
	.dwattr $C$DW$1155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1155, DW_AT_name("filter")
	.dwattr $C$DW$1155, DW_AT_TI_symbol_name("_filter")
	.dwattr $C$DW$1155, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$1155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1156	.dwtag  DW_TAG_member
	.dwattr $C$DW$1156, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1156, DW_AT_name("diffwin")
	.dwattr $C$DW$1156, DW_AT_TI_symbol_name("_diffwin")
	.dwattr $C$DW$1156, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$1156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1157	.dwtag  DW_TAG_member
	.dwattr $C$DW$1157, DW_AT_type(*$C$DW$T$152)
	.dwattr $C$DW$1157, DW_AT_name("ch")
	.dwattr $C$DW$1157, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$1157, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$1157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1158	.dwtag  DW_TAG_member
	.dwattr $C$DW$1158, DW_AT_type(*$C$DW$T$154)
	.dwattr $C$DW$1158, DW_AT_name("sensor")
	.dwattr $C$DW$1158, DW_AT_TI_symbol_name("_sensor")
	.dwattr $C$DW$1158, DW_AT_data_member_location[DW_OP_plus_uconst 0x34]
	.dwattr $C$DW$1158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1159	.dwtag  DW_TAG_member
	.dwattr $C$DW$1159, DW_AT_type(*$C$DW$T$156)
	.dwattr $C$DW$1159, DW_AT_name("vfd")
	.dwattr $C$DW$1159, DW_AT_TI_symbol_name("_vfd")
	.dwattr $C$DW$1159, DW_AT_data_member_location[DW_OP_plus_uconst 0xc14]
	.dwattr $C$DW$1159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1160	.dwtag  DW_TAG_member
	.dwattr $C$DW$1160, DW_AT_type(*$C$DW$T$158)
	.dwattr $C$DW$1160, DW_AT_name("dac")
	.dwattr $C$DW$1160, DW_AT_TI_symbol_name("_dac")
	.dwattr $C$DW$1160, DW_AT_data_member_location[DW_OP_plus_uconst 0xc20]
	.dwattr $C$DW$1160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1161	.dwtag  DW_TAG_member
	.dwattr $C$DW$1161, DW_AT_type(*$C$DW$T$160)
	.dwattr $C$DW$1161, DW_AT_name("lim")
	.dwattr $C$DW$1161, DW_AT_TI_symbol_name("_lim")
	.dwattr $C$DW$1161, DW_AT_data_member_location[DW_OP_plus_uconst 0xc50]
	.dwattr $C$DW$1161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1162	.dwtag  DW_TAG_member
	.dwattr $C$DW$1162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1162, DW_AT_name("velfilter")
	.dwattr $C$DW$1162, DW_AT_TI_symbol_name("_velfilter")
	.dwattr $C$DW$1162, DW_AT_data_member_location[DW_OP_plus_uconst 0xc70]
	.dwattr $C$DW$1162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1163	.dwtag  DW_TAG_member
	.dwattr $C$DW$1163, DW_AT_type(*$C$DW$T$161)
	.dwattr $C$DW$1163, DW_AT_name("cntperin")
	.dwattr $C$DW$1163, DW_AT_TI_symbol_name("_cntperin")
	.dwattr $C$DW$1163, DW_AT_data_member_location[DW_OP_plus_uconst 0xc72]
	.dwattr $C$DW$1163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1164	.dwtag  DW_TAG_member
	.dwattr $C$DW$1164, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$1164, DW_AT_name("magic")
	.dwattr $C$DW$1164, DW_AT_TI_symbol_name("_magic")
	.dwattr $C$DW$1164, DW_AT_data_member_location[DW_OP_plus_uconst 0xc76]
	.dwattr $C$DW$1164, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$162

$C$DW$T$218	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$218, DW_AT_name("pconf_t")
	.dwattr $C$DW$T$218, DW_AT_type(*$C$DW$T$162)
	.dwattr $C$DW$T$218, DW_AT_language(DW_LANG_C)

$C$DW$1165	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1165, DW_AT_type(*$C$DW$T$218)

$C$DW$T$219	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$219, DW_AT_type(*$C$DW$1165)


$C$DW$T$167	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$167, DW_AT_name("SENSOR_CONF")
	.dwattr $C$DW$T$167, DW_AT_byte_size(0x98)
$C$DW$1166	.dwtag  DW_TAG_member
	.dwattr $C$DW$1166, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$1166, DW_AT_name("ssn")
	.dwattr $C$DW$1166, DW_AT_TI_symbol_name("_ssn")
	.dwattr $C$DW$1166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1167	.dwtag  DW_TAG_member
	.dwattr $C$DW$1167, DW_AT_type(*$C$DW$T$163)
	.dwattr $C$DW$1167, DW_AT_name("slbl")
	.dwattr $C$DW$1167, DW_AT_TI_symbol_name("_slbl")
	.dwattr $C$DW$1167, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$1167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1168	.dwtag  DW_TAG_member
	.dwattr $C$DW$1168, DW_AT_type(*$C$DW$T$15)
	.dwattr $C$DW$1168, DW_AT_name("tagid")
	.dwattr $C$DW$1168, DW_AT_TI_symbol_name("_tagid")
	.dwattr $C$DW$1168, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$1168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1169	.dwtag  DW_TAG_member
	.dwattr $C$DW$1169, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1169, DW_AT_name("method")
	.dwattr $C$DW$1169, DW_AT_TI_symbol_name("_method")
	.dwattr $C$DW$1169, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$1169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1170	.dwtag  DW_TAG_member
	.dwattr $C$DW$1170, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$1170, DW_AT_name("date")
	.dwattr $C$DW$1170, DW_AT_TI_symbol_name("_date")
	.dwattr $C$DW$1170, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$1170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1171	.dwtag  DW_TAG_member
	.dwattr $C$DW$1171, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1171, DW_AT_name("range")
	.dwattr $C$DW$1171, DW_AT_TI_symbol_name("_range")
	.dwattr $C$DW$1171, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$1171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1172	.dwtag  DW_TAG_member
	.dwattr $C$DW$1172, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1172, DW_AT_name("unit")
	.dwattr $C$DW$1172, DW_AT_TI_symbol_name("_unit")
	.dwattr $C$DW$1172, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$1172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1173	.dwtag  DW_TAG_member
	.dwattr $C$DW$1173, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1173, DW_AT_name("ounit")
	.dwattr $C$DW$1173, DW_AT_TI_symbol_name("_ounit")
	.dwattr $C$DW$1173, DW_AT_data_member_location[DW_OP_plus_uconst 0x2b]
	.dwattr $C$DW$1173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1174	.dwtag  DW_TAG_member
	.dwattr $C$DW$1174, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1174, DW_AT_name("ufactor")
	.dwattr $C$DW$1174, DW_AT_TI_symbol_name("_ufactor")
	.dwattr $C$DW$1174, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$1174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1175	.dwtag  DW_TAG_member
	.dwattr $C$DW$1175, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$1175, DW_AT_name("points")
	.dwattr $C$DW$1175, DW_AT_TI_symbol_name("_points")
	.dwattr $C$DW$1175, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$1175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1176	.dwtag  DW_TAG_member
	.dwattr $C$DW$1176, DW_AT_type(*$C$DW$T$164)
	.dwattr $C$DW$1176, DW_AT_name("mass")
	.dwattr $C$DW$1176, DW_AT_TI_symbol_name("_mass")
	.dwattr $C$DW$1176, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$1176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1177	.dwtag  DW_TAG_member
	.dwattr $C$DW$1177, DW_AT_type(*$C$DW$T$165)
	.dwattr $C$DW$1177, DW_AT_name("adc")
	.dwattr $C$DW$1177, DW_AT_TI_symbol_name("_adc")
	.dwattr $C$DW$1177, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$1177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1178	.dwtag  DW_TAG_member
	.dwattr $C$DW$1178, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$1178, DW_AT_name("slope")
	.dwattr $C$DW$1178, DW_AT_TI_symbol_name("_slope")
	.dwattr $C$DW$1178, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$1178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1179	.dwtag  DW_TAG_member
	.dwattr $C$DW$1179, DW_AT_type(*$C$DW$T$166)
	.dwattr $C$DW$1179, DW_AT_name("intercept")
	.dwattr $C$DW$1179, DW_AT_TI_symbol_name("_intercept")
	.dwattr $C$DW$1179, DW_AT_data_member_location[DW_OP_plus_uconst 0x76]
	.dwattr $C$DW$1179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1180	.dwtag  DW_TAG_member
	.dwattr $C$DW$1180, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1180, DW_AT_name("shunt")
	.dwattr $C$DW$1180, DW_AT_TI_symbol_name("_shunt")
	.dwattr $C$DW$1180, DW_AT_data_member_location[DW_OP_plus_uconst 0x8c]
	.dwattr $C$DW$1180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1181	.dwtag  DW_TAG_member
	.dwattr $C$DW$1181, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1181, DW_AT_name("base")
	.dwattr $C$DW$1181, DW_AT_TI_symbol_name("_base")
	.dwattr $C$DW$1181, DW_AT_data_member_location[DW_OP_plus_uconst 0x8e]
	.dwattr $C$DW$1181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1182	.dwtag  DW_TAG_member
	.dwattr $C$DW$1182, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1182, DW_AT_name("tare")
	.dwattr $C$DW$1182, DW_AT_TI_symbol_name("_tare")
	.dwattr $C$DW$1182, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$1182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1183	.dwtag  DW_TAG_member
	.dwattr $C$DW$1183, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1183, DW_AT_name("dacgain")
	.dwattr $C$DW$1183, DW_AT_TI_symbol_name("_dacgain")
	.dwattr $C$DW$1183, DW_AT_data_member_location[DW_OP_plus_uconst 0x92]
	.dwattr $C$DW$1183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1184	.dwtag  DW_TAG_member
	.dwattr $C$DW$1184, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$1184, DW_AT_name("dacoff")
	.dwattr $C$DW$1184, DW_AT_TI_symbol_name("_dacoff")
	.dwattr $C$DW$1184, DW_AT_data_member_location[DW_OP_plus_uconst 0x94]
	.dwattr $C$DW$1184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1185	.dwtag  DW_TAG_member
	.dwattr $C$DW$1185, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$1185, DW_AT_name("ch")
	.dwattr $C$DW$1185, DW_AT_TI_symbol_name("_ch")
	.dwattr $C$DW$1185, DW_AT_data_member_location[DW_OP_plus_uconst 0x96]
	.dwattr $C$DW$1185, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$167

$C$DW$T$153	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$153, DW_AT_name("sconf_t")
	.dwattr $C$DW$T$153, DW_AT_type(*$C$DW$T$167)
	.dwattr $C$DW$T$153, DW_AT_language(DW_LANG_C)


$C$DW$T$154	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$154, DW_AT_type(*$C$DW$T$153)
	.dwattr $C$DW$T$154, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$154, DW_AT_byte_size(0xbe0)
$C$DW$1186	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1186, DW_AT_upper_bound(0x13)

	.dwendtag $C$DW$T$154


$C$DW$T$168	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$168, DW_AT_name("T1CON_BITS")
	.dwattr $C$DW$T$168, DW_AT_byte_size(0x01)
$C$DW$1187	.dwtag  DW_TAG_member
	.dwattr $C$DW$1187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1187, DW_AT_name("rsvd1")
	.dwattr $C$DW$1187, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1187, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1188	.dwtag  DW_TAG_member
	.dwattr $C$DW$1188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1188, DW_AT_name("TECMPR")
	.dwattr $C$DW$1188, DW_AT_TI_symbol_name("_TECMPR")
	.dwattr $C$DW$1188, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1189	.dwtag  DW_TAG_member
	.dwattr $C$DW$1189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1189, DW_AT_name("TCLD10")
	.dwattr $C$DW$1189, DW_AT_TI_symbol_name("_TCLD10")
	.dwattr $C$DW$1189, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1189, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1190	.dwtag  DW_TAG_member
	.dwattr $C$DW$1190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1190, DW_AT_name("TCLKS10")
	.dwattr $C$DW$1190, DW_AT_TI_symbol_name("_TCLKS10")
	.dwattr $C$DW$1190, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1190, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1191	.dwtag  DW_TAG_member
	.dwattr $C$DW$1191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1191, DW_AT_name("TENABLE")
	.dwattr $C$DW$1191, DW_AT_TI_symbol_name("_TENABLE")
	.dwattr $C$DW$1191, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1192	.dwtag  DW_TAG_member
	.dwattr $C$DW$1192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1192, DW_AT_name("rsvd2")
	.dwattr $C$DW$1192, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1192, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1193	.dwtag  DW_TAG_member
	.dwattr $C$DW$1193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1193, DW_AT_name("TPS")
	.dwattr $C$DW$1193, DW_AT_TI_symbol_name("_TPS")
	.dwattr $C$DW$1193, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1193, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1194	.dwtag  DW_TAG_member
	.dwattr $C$DW$1194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1194, DW_AT_name("TMODE")
	.dwattr $C$DW$1194, DW_AT_TI_symbol_name("_TMODE")
	.dwattr $C$DW$1194, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1194, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1195	.dwtag  DW_TAG_member
	.dwattr $C$DW$1195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1195, DW_AT_name("rsvd")
	.dwattr $C$DW$1195, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$1195, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1196	.dwtag  DW_TAG_member
	.dwattr $C$DW$1196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1196, DW_AT_name("SOFT")
	.dwattr $C$DW$1196, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$1196, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1197	.dwtag  DW_TAG_member
	.dwattr $C$DW$1197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1197, DW_AT_name("FREE")
	.dwattr $C$DW$1197, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$1197, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1197, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$168


$C$DW$T$169	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$169, DW_AT_name("T1CON_REG")
	.dwattr $C$DW$T$169, DW_AT_byte_size(0x01)
$C$DW$1198	.dwtag  DW_TAG_member
	.dwattr $C$DW$1198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1198, DW_AT_name("all")
	.dwattr $C$DW$1198, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1199	.dwtag  DW_TAG_member
	.dwattr $C$DW$1199, DW_AT_type(*$C$DW$T$168)
	.dwattr $C$DW$1199, DW_AT_name("bit")
	.dwattr $C$DW$1199, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1199, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$169


$C$DW$T$170	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$170, DW_AT_name("T2CON_BITS")
	.dwattr $C$DW$T$170, DW_AT_byte_size(0x01)
$C$DW$1200	.dwtag  DW_TAG_member
	.dwattr $C$DW$1200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1200, DW_AT_name("SET1PR")
	.dwattr $C$DW$1200, DW_AT_TI_symbol_name("_SET1PR")
	.dwattr $C$DW$1200, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1201	.dwtag  DW_TAG_member
	.dwattr $C$DW$1201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1201, DW_AT_name("TECMPR")
	.dwattr $C$DW$1201, DW_AT_TI_symbol_name("_TECMPR")
	.dwattr $C$DW$1201, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1202	.dwtag  DW_TAG_member
	.dwattr $C$DW$1202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1202, DW_AT_name("TCLD10")
	.dwattr $C$DW$1202, DW_AT_TI_symbol_name("_TCLD10")
	.dwattr $C$DW$1202, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1202, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1203	.dwtag  DW_TAG_member
	.dwattr $C$DW$1203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1203, DW_AT_name("TCLKS10")
	.dwattr $C$DW$1203, DW_AT_TI_symbol_name("_TCLKS10")
	.dwattr $C$DW$1203, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1203, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1204	.dwtag  DW_TAG_member
	.dwattr $C$DW$1204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1204, DW_AT_name("TENABLE")
	.dwattr $C$DW$1204, DW_AT_TI_symbol_name("_TENABLE")
	.dwattr $C$DW$1204, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1205	.dwtag  DW_TAG_member
	.dwattr $C$DW$1205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1205, DW_AT_name("T2SWT1")
	.dwattr $C$DW$1205, DW_AT_TI_symbol_name("_T2SWT1")
	.dwattr $C$DW$1205, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1206	.dwtag  DW_TAG_member
	.dwattr $C$DW$1206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1206, DW_AT_name("TPS")
	.dwattr $C$DW$1206, DW_AT_TI_symbol_name("_TPS")
	.dwattr $C$DW$1206, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1206, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1207	.dwtag  DW_TAG_member
	.dwattr $C$DW$1207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1207, DW_AT_name("TMODE")
	.dwattr $C$DW$1207, DW_AT_TI_symbol_name("_TMODE")
	.dwattr $C$DW$1207, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1207, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1208	.dwtag  DW_TAG_member
	.dwattr $C$DW$1208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1208, DW_AT_name("rsvd")
	.dwattr $C$DW$1208, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$1208, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1209	.dwtag  DW_TAG_member
	.dwattr $C$DW$1209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1209, DW_AT_name("SOFT")
	.dwattr $C$DW$1209, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$1209, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1210	.dwtag  DW_TAG_member
	.dwattr $C$DW$1210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1210, DW_AT_name("FREE")
	.dwattr $C$DW$1210, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$1210, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1210, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$170


$C$DW$T$171	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$171, DW_AT_name("T2CON_REG")
	.dwattr $C$DW$T$171, DW_AT_byte_size(0x01)
$C$DW$1211	.dwtag  DW_TAG_member
	.dwattr $C$DW$1211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1211, DW_AT_name("all")
	.dwattr $C$DW$1211, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1212	.dwtag  DW_TAG_member
	.dwattr $C$DW$1212, DW_AT_type(*$C$DW$T$170)
	.dwattr $C$DW$1212, DW_AT_name("bit")
	.dwattr $C$DW$1212, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1212, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$171


$C$DW$T$172	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$172, DW_AT_name("T3CON_BITS")
	.dwattr $C$DW$T$172, DW_AT_byte_size(0x01)
$C$DW$1213	.dwtag  DW_TAG_member
	.dwattr $C$DW$1213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1213, DW_AT_name("rsvd1")
	.dwattr $C$DW$1213, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1213, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1214	.dwtag  DW_TAG_member
	.dwattr $C$DW$1214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1214, DW_AT_name("TECMPR")
	.dwattr $C$DW$1214, DW_AT_TI_symbol_name("_TECMPR")
	.dwattr $C$DW$1214, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1215	.dwtag  DW_TAG_member
	.dwattr $C$DW$1215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1215, DW_AT_name("TCLD10")
	.dwattr $C$DW$1215, DW_AT_TI_symbol_name("_TCLD10")
	.dwattr $C$DW$1215, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1215, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1216	.dwtag  DW_TAG_member
	.dwattr $C$DW$1216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1216, DW_AT_name("TCLKS10")
	.dwattr $C$DW$1216, DW_AT_TI_symbol_name("_TCLKS10")
	.dwattr $C$DW$1216, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1216, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1217	.dwtag  DW_TAG_member
	.dwattr $C$DW$1217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1217, DW_AT_name("TENABLE")
	.dwattr $C$DW$1217, DW_AT_TI_symbol_name("_TENABLE")
	.dwattr $C$DW$1217, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1218	.dwtag  DW_TAG_member
	.dwattr $C$DW$1218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1218, DW_AT_name("rsvd2")
	.dwattr $C$DW$1218, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1218, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1219	.dwtag  DW_TAG_member
	.dwattr $C$DW$1219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1219, DW_AT_name("TPS")
	.dwattr $C$DW$1219, DW_AT_TI_symbol_name("_TPS")
	.dwattr $C$DW$1219, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1219, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1220	.dwtag  DW_TAG_member
	.dwattr $C$DW$1220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1220, DW_AT_name("TMODE")
	.dwattr $C$DW$1220, DW_AT_TI_symbol_name("_TMODE")
	.dwattr $C$DW$1220, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1220, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1221	.dwtag  DW_TAG_member
	.dwattr $C$DW$1221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1221, DW_AT_name("rsvd")
	.dwattr $C$DW$1221, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$1221, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1222	.dwtag  DW_TAG_member
	.dwattr $C$DW$1222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1222, DW_AT_name("SOFT")
	.dwattr $C$DW$1222, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$1222, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1223	.dwtag  DW_TAG_member
	.dwattr $C$DW$1223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1223, DW_AT_name("FREE")
	.dwattr $C$DW$1223, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$1223, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1223, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$172


$C$DW$T$173	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$173, DW_AT_name("T3CON_REG")
	.dwattr $C$DW$T$173, DW_AT_byte_size(0x01)
$C$DW$1224	.dwtag  DW_TAG_member
	.dwattr $C$DW$1224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1224, DW_AT_name("all")
	.dwattr $C$DW$1224, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1225	.dwtag  DW_TAG_member
	.dwattr $C$DW$1225, DW_AT_type(*$C$DW$T$172)
	.dwattr $C$DW$1225, DW_AT_name("bit")
	.dwattr $C$DW$1225, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1225, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$173


$C$DW$T$174	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$174, DW_AT_name("T4CON_BITS")
	.dwattr $C$DW$T$174, DW_AT_byte_size(0x01)
$C$DW$1226	.dwtag  DW_TAG_member
	.dwattr $C$DW$1226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1226, DW_AT_name("SET3PR")
	.dwattr $C$DW$1226, DW_AT_TI_symbol_name("_SET3PR")
	.dwattr $C$DW$1226, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1227	.dwtag  DW_TAG_member
	.dwattr $C$DW$1227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1227, DW_AT_name("TECMPR")
	.dwattr $C$DW$1227, DW_AT_TI_symbol_name("_TECMPR")
	.dwattr $C$DW$1227, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1228	.dwtag  DW_TAG_member
	.dwattr $C$DW$1228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1228, DW_AT_name("TCLD10")
	.dwattr $C$DW$1228, DW_AT_TI_symbol_name("_TCLD10")
	.dwattr $C$DW$1228, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1228, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1229	.dwtag  DW_TAG_member
	.dwattr $C$DW$1229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1229, DW_AT_name("TCLKS10")
	.dwattr $C$DW$1229, DW_AT_TI_symbol_name("_TCLKS10")
	.dwattr $C$DW$1229, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1229, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1230	.dwtag  DW_TAG_member
	.dwattr $C$DW$1230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1230, DW_AT_name("TENABLE")
	.dwattr $C$DW$1230, DW_AT_TI_symbol_name("_TENABLE")
	.dwattr $C$DW$1230, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$1230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1231	.dwtag  DW_TAG_member
	.dwattr $C$DW$1231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1231, DW_AT_name("T4SWT3")
	.dwattr $C$DW$1231, DW_AT_TI_symbol_name("_T4SWT3")
	.dwattr $C$DW$1231, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1232	.dwtag  DW_TAG_member
	.dwattr $C$DW$1232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1232, DW_AT_name("TPS")
	.dwattr $C$DW$1232, DW_AT_TI_symbol_name("_TPS")
	.dwattr $C$DW$1232, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1232, DW_AT_bit_size(0x03)
	.dwattr $C$DW$1232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1233	.dwtag  DW_TAG_member
	.dwattr $C$DW$1233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1233, DW_AT_name("TMODE")
	.dwattr $C$DW$1233, DW_AT_TI_symbol_name("_TMODE")
	.dwattr $C$DW$1233, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$1233, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1234	.dwtag  DW_TAG_member
	.dwattr $C$DW$1234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1234, DW_AT_name("rsvd")
	.dwattr $C$DW$1234, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$1234, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1235	.dwtag  DW_TAG_member
	.dwattr $C$DW$1235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1235, DW_AT_name("SOFT")
	.dwattr $C$DW$1235, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$1235, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1236	.dwtag  DW_TAG_member
	.dwattr $C$DW$1236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1236, DW_AT_name("FREE")
	.dwattr $C$DW$1236, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$1236, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1236, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$174


$C$DW$T$175	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$175, DW_AT_name("T4CON_REG")
	.dwattr $C$DW$T$175, DW_AT_byte_size(0x01)
$C$DW$1237	.dwtag  DW_TAG_member
	.dwattr $C$DW$1237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1237, DW_AT_name("all")
	.dwattr $C$DW$1237, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1238	.dwtag  DW_TAG_member
	.dwattr $C$DW$1238, DW_AT_type(*$C$DW$T$174)
	.dwattr $C$DW$1238, DW_AT_name("bit")
	.dwattr $C$DW$1238, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1238, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$175


$C$DW$T$176	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$176, DW_AT_name("TCR_BITS")
	.dwattr $C$DW$T$176, DW_AT_byte_size(0x01)
$C$DW$1239	.dwtag  DW_TAG_member
	.dwattr $C$DW$1239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1239, DW_AT_name("rsvd1")
	.dwattr $C$DW$1239, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1239, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$1239, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1240	.dwtag  DW_TAG_member
	.dwattr $C$DW$1240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1240, DW_AT_name("TSS")
	.dwattr $C$DW$1240, DW_AT_TI_symbol_name("_TSS")
	.dwattr $C$DW$1240, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$1240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1241	.dwtag  DW_TAG_member
	.dwattr $C$DW$1241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1241, DW_AT_name("TRB")
	.dwattr $C$DW$1241, DW_AT_TI_symbol_name("_TRB")
	.dwattr $C$DW$1241, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$1241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1242	.dwtag  DW_TAG_member
	.dwattr $C$DW$1242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1242, DW_AT_name("rsvd2")
	.dwattr $C$DW$1242, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1242, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$1242, DW_AT_bit_size(0x04)
	.dwattr $C$DW$1242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1243	.dwtag  DW_TAG_member
	.dwattr $C$DW$1243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1243, DW_AT_name("SOFT")
	.dwattr $C$DW$1243, DW_AT_TI_symbol_name("_SOFT")
	.dwattr $C$DW$1243, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$1243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1244	.dwtag  DW_TAG_member
	.dwattr $C$DW$1244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1244, DW_AT_name("FREE")
	.dwattr $C$DW$1244, DW_AT_TI_symbol_name("_FREE")
	.dwattr $C$DW$1244, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$1244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1245	.dwtag  DW_TAG_member
	.dwattr $C$DW$1245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1245, DW_AT_name("rsvd3")
	.dwattr $C$DW$1245, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$1245, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$1245, DW_AT_bit_size(0x02)
	.dwattr $C$DW$1245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1246	.dwtag  DW_TAG_member
	.dwattr $C$DW$1246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1246, DW_AT_name("TIE")
	.dwattr $C$DW$1246, DW_AT_TI_symbol_name("_TIE")
	.dwattr $C$DW$1246, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1247	.dwtag  DW_TAG_member
	.dwattr $C$DW$1247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1247, DW_AT_name("TIF")
	.dwattr $C$DW$1247, DW_AT_TI_symbol_name("_TIF")
	.dwattr $C$DW$1247, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1247, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$176


$C$DW$T$177	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$177, DW_AT_name("TCR_REG")
	.dwattr $C$DW$T$177, DW_AT_byte_size(0x01)
$C$DW$1248	.dwtag  DW_TAG_member
	.dwattr $C$DW$1248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1248, DW_AT_name("all")
	.dwattr $C$DW$1248, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1249	.dwtag  DW_TAG_member
	.dwattr $C$DW$1249, DW_AT_type(*$C$DW$T$176)
	.dwattr $C$DW$1249, DW_AT_name("bit")
	.dwattr $C$DW$1249, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1249, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$177


$C$DW$T$178	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$178, DW_AT_name("TIM_GROUP")
	.dwattr $C$DW$T$178, DW_AT_byte_size(0x02)
$C$DW$1250	.dwtag  DW_TAG_member
	.dwattr $C$DW$1250, DW_AT_type(*$C$DW$T$146)
	.dwattr $C$DW$1250, DW_AT_name("all")
	.dwattr $C$DW$1250, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1251	.dwtag  DW_TAG_member
	.dwattr $C$DW$1251, DW_AT_type(*$C$DW$T$179)
	.dwattr $C$DW$1251, DW_AT_name("half")
	.dwattr $C$DW$1251, DW_AT_TI_symbol_name("_half")
	.dwattr $C$DW$1251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1251, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$178


$C$DW$T$179	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$179, DW_AT_name("TIM_REG")
	.dwattr $C$DW$T$179, DW_AT_byte_size(0x02)
$C$DW$1252	.dwtag  DW_TAG_member
	.dwattr $C$DW$1252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1252, DW_AT_name("LSW")
	.dwattr $C$DW$1252, DW_AT_TI_symbol_name("_LSW")
	.dwattr $C$DW$1252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1253	.dwtag  DW_TAG_member
	.dwattr $C$DW$1253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1253, DW_AT_name("MSW")
	.dwattr $C$DW$1253, DW_AT_TI_symbol_name("_MSW")
	.dwattr $C$DW$1253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1253, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$179


$C$DW$T$180	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$180, DW_AT_name("TPRH_BITS")
	.dwattr $C$DW$T$180, DW_AT_byte_size(0x01)
$C$DW$1254	.dwtag  DW_TAG_member
	.dwattr $C$DW$1254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1254, DW_AT_name("TDDRH")
	.dwattr $C$DW$1254, DW_AT_TI_symbol_name("_TDDRH")
	.dwattr $C$DW$1254, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1254, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1255	.dwtag  DW_TAG_member
	.dwattr $C$DW$1255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1255, DW_AT_name("PSCH")
	.dwattr $C$DW$1255, DW_AT_TI_symbol_name("_PSCH")
	.dwattr $C$DW$1255, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1255, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1255, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$180


$C$DW$T$181	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$181, DW_AT_name("TPRH_REG")
	.dwattr $C$DW$T$181, DW_AT_byte_size(0x01)
$C$DW$1256	.dwtag  DW_TAG_member
	.dwattr $C$DW$1256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1256, DW_AT_name("all")
	.dwattr $C$DW$1256, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1257	.dwtag  DW_TAG_member
	.dwattr $C$DW$1257, DW_AT_type(*$C$DW$T$180)
	.dwattr $C$DW$1257, DW_AT_name("bit")
	.dwattr $C$DW$1257, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1257, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$181


$C$DW$T$182	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$182, DW_AT_name("TPR_BITS")
	.dwattr $C$DW$T$182, DW_AT_byte_size(0x01)
$C$DW$1258	.dwtag  DW_TAG_member
	.dwattr $C$DW$1258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1258, DW_AT_name("TDDR")
	.dwattr $C$DW$1258, DW_AT_TI_symbol_name("_TDDR")
	.dwattr $C$DW$1258, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$1258, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1259	.dwtag  DW_TAG_member
	.dwattr $C$DW$1259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1259, DW_AT_name("PSC")
	.dwattr $C$DW$1259, DW_AT_TI_symbol_name("_PSC")
	.dwattr $C$DW$1259, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$1259, DW_AT_bit_size(0x08)
	.dwattr $C$DW$1259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1259, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$182


$C$DW$T$183	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$183, DW_AT_name("TPR_REG")
	.dwattr $C$DW$T$183, DW_AT_byte_size(0x01)
$C$DW$1260	.dwtag  DW_TAG_member
	.dwattr $C$DW$1260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1260, DW_AT_name("all")
	.dwattr $C$DW$1260, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1261	.dwtag  DW_TAG_member
	.dwattr $C$DW$1261, DW_AT_type(*$C$DW$T$182)
	.dwattr $C$DW$1261, DW_AT_name("bit")
	.dwattr $C$DW$1261, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1261, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$183


$C$DW$T$184	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$184, DW_AT_name("XINTCR_BITS")
	.dwattr $C$DW$T$184, DW_AT_byte_size(0x01)
$C$DW$1262	.dwtag  DW_TAG_member
	.dwattr $C$DW$1262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1262, DW_AT_name("ENABLE")
	.dwattr $C$DW$1262, DW_AT_TI_symbol_name("_ENABLE")
	.dwattr $C$DW$1262, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1263	.dwtag  DW_TAG_member
	.dwattr $C$DW$1263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1263, DW_AT_name("rsvd1")
	.dwattr $C$DW$1263, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1263, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1264	.dwtag  DW_TAG_member
	.dwattr $C$DW$1264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1264, DW_AT_name("POLARITY")
	.dwattr $C$DW$1264, DW_AT_TI_symbol_name("_POLARITY")
	.dwattr $C$DW$1264, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1265	.dwtag  DW_TAG_member
	.dwattr $C$DW$1265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1265, DW_AT_name("rsvd2")
	.dwattr $C$DW$1265, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1265, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1265, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1265, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$184


$C$DW$T$185	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$185, DW_AT_name("XINTCR_REG")
	.dwattr $C$DW$T$185, DW_AT_byte_size(0x01)
$C$DW$1266	.dwtag  DW_TAG_member
	.dwattr $C$DW$1266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1266, DW_AT_name("all")
	.dwattr $C$DW$1266, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1267	.dwtag  DW_TAG_member
	.dwattr $C$DW$1267, DW_AT_type(*$C$DW$T$184)
	.dwattr $C$DW$1267, DW_AT_name("bit")
	.dwattr $C$DW$1267, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1267, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$185


$C$DW$T$187	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$187, DW_AT_name("XINTRUPT_REGS")
	.dwattr $C$DW$T$187, DW_AT_byte_size(0x10)
$C$DW$1268	.dwtag  DW_TAG_member
	.dwattr $C$DW$1268, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$1268, DW_AT_name("XINT1CR")
	.dwattr $C$DW$1268, DW_AT_TI_symbol_name("_XINT1CR")
	.dwattr $C$DW$1268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1269	.dwtag  DW_TAG_member
	.dwattr $C$DW$1269, DW_AT_type(*$C$DW$T$185)
	.dwattr $C$DW$1269, DW_AT_name("XINT2CR")
	.dwattr $C$DW$1269, DW_AT_TI_symbol_name("_XINT2CR")
	.dwattr $C$DW$1269, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$1269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1270	.dwtag  DW_TAG_member
	.dwattr $C$DW$1270, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$1270, DW_AT_name("rsvd1")
	.dwattr $C$DW$1270, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$1270, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$1270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1271	.dwtag  DW_TAG_member
	.dwattr $C$DW$1271, DW_AT_type(*$C$DW$T$189)
	.dwattr $C$DW$1271, DW_AT_name("XNMICR")
	.dwattr $C$DW$1271, DW_AT_TI_symbol_name("_XNMICR")
	.dwattr $C$DW$1271, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$1271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1272	.dwtag  DW_TAG_member
	.dwattr $C$DW$1272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1272, DW_AT_name("XINT1CTR")
	.dwattr $C$DW$1272, DW_AT_TI_symbol_name("_XINT1CTR")
	.dwattr $C$DW$1272, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$1272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1273	.dwtag  DW_TAG_member
	.dwattr $C$DW$1273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1273, DW_AT_name("XINT2CTR")
	.dwattr $C$DW$1273, DW_AT_TI_symbol_name("_XINT2CTR")
	.dwattr $C$DW$1273, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr $C$DW$1273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1274	.dwtag  DW_TAG_member
	.dwattr $C$DW$1274, DW_AT_type(*$C$DW$T$186)
	.dwattr $C$DW$1274, DW_AT_name("rsvd")
	.dwattr $C$DW$1274, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$1274, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$1274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1275	.dwtag  DW_TAG_member
	.dwattr $C$DW$1275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1275, DW_AT_name("XNMICTR")
	.dwattr $C$DW$1275, DW_AT_TI_symbol_name("_XNMICTR")
	.dwattr $C$DW$1275, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$1275, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$187

$C$DW$1276	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1276, DW_AT_type(*$C$DW$T$187)

$C$DW$T$226	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$226, DW_AT_type(*$C$DW$1276)


$C$DW$T$188	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$188, DW_AT_name("XNMICR_BITS")
	.dwattr $C$DW$T$188, DW_AT_byte_size(0x01)
$C$DW$1277	.dwtag  DW_TAG_member
	.dwattr $C$DW$1277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1277, DW_AT_name("ENABLE")
	.dwattr $C$DW$1277, DW_AT_TI_symbol_name("_ENABLE")
	.dwattr $C$DW$1277, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$1277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1278	.dwtag  DW_TAG_member
	.dwattr $C$DW$1278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1278, DW_AT_name("SELECT")
	.dwattr $C$DW$1278, DW_AT_TI_symbol_name("_SELECT")
	.dwattr $C$DW$1278, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$1278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1279	.dwtag  DW_TAG_member
	.dwattr $C$DW$1279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1279, DW_AT_name("POLARITY")
	.dwattr $C$DW$1279, DW_AT_TI_symbol_name("_POLARITY")
	.dwattr $C$DW$1279, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$1279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$1279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1280	.dwtag  DW_TAG_member
	.dwattr $C$DW$1280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1280, DW_AT_name("rsvd2")
	.dwattr $C$DW$1280, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$1280, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$1280, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$1280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1280, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$188


$C$DW$T$189	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$189, DW_AT_name("XNMICR_REG")
	.dwattr $C$DW$T$189, DW_AT_byte_size(0x01)
$C$DW$1281	.dwtag  DW_TAG_member
	.dwattr $C$DW$1281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$1281, DW_AT_name("all")
	.dwattr $C$DW$1281, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$1281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$1282	.dwtag  DW_TAG_member
	.dwattr $C$DW$1282, DW_AT_type(*$C$DW$T$188)
	.dwattr $C$DW$1282, DW_AT_name("bit")
	.dwattr $C$DW$1282, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$1282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$1282, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$189

$C$DW$T$2	.dwtag  DW_TAG_unspecified_type
	.dwattr $C$DW$T$2, DW_AT_name("void")

$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_type(*$C$DW$T$2)
	.dwattr $C$DW$T$3, DW_AT_address_class(0x20)


$C$DW$T$142	.dwtag  DW_TAG_subroutine_type
	.dwattr $C$DW$T$142, DW_AT_language(DW_LANG_C)
	.dwendtag $C$DW$T$142

$C$DW$T$143	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$143, DW_AT_type(*$C$DW$T$142)
	.dwattr $C$DW$T$143, DW_AT_address_class(0x20)

$C$DW$T$144	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$144, DW_AT_name("PINT")
	.dwattr $C$DW$T$144, DW_AT_type(*$C$DW$T$143)
	.dwattr $C$DW$T$144, DW_AT_language(DW_LANG_C)

$C$DW$1283	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1283, DW_AT_type(*$C$DW$T$2)

$C$DW$T$228	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$228, DW_AT_type(*$C$DW$1283)

$C$DW$T$229	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$229, DW_AT_type(*$C$DW$T$228)
	.dwattr $C$DW$T$229, DW_AT_address_class(0x20)

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


$C$DW$T$252	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$252, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$252, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$252, DW_AT_byte_size(0x01)
$C$DW$1284	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1284, DW_AT_upper_bound(0x00)

	.dwendtag $C$DW$T$252

$C$DW$1285	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1285, DW_AT_type(*$C$DW$T$10)

$C$DW$T$253	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$253, DW_AT_type(*$C$DW$1285)

$C$DW$1286	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1286, DW_AT_type(*$C$DW$T$10)

$C$DW$T$255	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$255, DW_AT_type(*$C$DW$1286)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$1287	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1287, DW_AT_type(*$C$DW$T$19)

$C$DW$T$256	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$256, DW_AT_type(*$C$DW$1287)


$C$DW$T$257	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$257, DW_AT_type(*$C$DW$T$256)
	.dwattr $C$DW$T$257, DW_AT_language(DW_LANG_C)
$C$DW$1288	.dwtag  DW_TAG_subrange_type

	.dwendtag $C$DW$T$257


$C$DW$T$58	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$58, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x07)
$C$DW$1289	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1289, DW_AT_upper_bound(0x06)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$59, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x06)
$C$DW$1290	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1290, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$60, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$1291	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1291, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$60


$C$DW$T$126	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$126, DW_AT_byte_size(0x04)
$C$DW$1292	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1292, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$126


$C$DW$T$186	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$186, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$186, DW_AT_byte_size(0x05)
$C$DW$1293	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1293, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$186


$C$DW$T$260	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$260, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$260, DW_AT_byte_size(0x01)
$C$DW$1294	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1294, DW_AT_upper_bound(0x00)

	.dwendtag $C$DW$T$260

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)


$C$DW$T$24	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$1295	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1295, DW_AT_upper_bound(0x00)

	.dwendtag $C$DW$T$24


$C$DW$T$161	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$161, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$161, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$161, DW_AT_byte_size(0x04)
$C$DW$1296	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1296, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$161


$C$DW$T$165	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$165, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$165, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$165, DW_AT_byte_size(0x18)
$C$DW$1297	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1297, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$165


$C$DW$T$275	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$275, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$275, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$275, DW_AT_byte_size(0x1d4c0)
$C$DW$1298	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1298, DW_AT_upper_bound(0xea5f)

	.dwendtag $C$DW$T$275


$C$DW$T$276	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$276, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$276, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$276, DW_AT_byte_size(0x2000)
$C$DW$1299	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1299, DW_AT_upper_bound(0xfff)

	.dwendtag $C$DW$T$276


$C$DW$T$277	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$277, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$T$277, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$277, DW_AT_byte_size(0x2000)
$C$DW$1300	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1300, DW_AT_upper_bound(0x00)

$C$DW$1301	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1301, DW_AT_upper_bound(0xfff)

	.dwendtag $C$DW$T$277

$C$DW$1302	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1302, DW_AT_type(*$C$DW$T$12)

$C$DW$T$279	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$279, DW_AT_type(*$C$DW$1302)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$146	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$146, DW_AT_name("Uint32")
	.dwattr $C$DW$T$146, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$146, DW_AT_language(DW_LANG_C)

$C$DW$T$230	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$230, DW_AT_name("size_t")
	.dwattr $C$DW$T$230, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$230, DW_AT_language(DW_LANG_C)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)


$C$DW$T$283	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$283, DW_AT_type(*$C$DW$T$14)
	.dwattr $C$DW$T$283, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$283, DW_AT_byte_size(0x04)
$C$DW$1303	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1303, DW_AT_upper_bound(0x00)

	.dwendtag $C$DW$T$283

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)

$C$DW$1304	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1304, DW_AT_type(*$C$DW$T$16)

$C$DW$T$288	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$288, DW_AT_type(*$C$DW$1304)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)


$C$DW$T$26	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$26, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x02)
$C$DW$1305	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1305, DW_AT_upper_bound(0x00)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x04)
$C$DW$1306	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1306, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$27


$C$DW$T$164	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$164, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$164, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$164, DW_AT_byte_size(0x18)
$C$DW$1307	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1307, DW_AT_upper_bound(0x0b)

	.dwendtag $C$DW$T$164


$C$DW$T$166	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$166, DW_AT_type(*$C$DW$T$17)
	.dwattr $C$DW$T$166, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$166, DW_AT_byte_size(0x16)
$C$DW$1308	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1308, DW_AT_upper_bound(0x0a)

	.dwendtag $C$DW$T$166

$C$DW$1309	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$1309, DW_AT_type(*$C$DW$T$17)

$C$DW$T$292	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$292, DW_AT_type(*$C$DW$1309)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x04)


$C$DW$T$150	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$150, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$150, DW_AT_byte_size(0x20)
$C$DW$1310	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1310, DW_AT_upper_bound(0x1f)

	.dwendtag $C$DW$T$150


$C$DW$T$163	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$163, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$163, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$163, DW_AT_byte_size(0x10)
$C$DW$1311	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$1311, DW_AT_upper_bound(0x0f)

	.dwendtag $C$DW$T$163

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

$C$DW$1312	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1312, DW_AT_name("AL")
	.dwattr $C$DW$1312, DW_AT_location[DW_OP_reg0]

$C$DW$1313	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1313, DW_AT_name("AH")
	.dwattr $C$DW$1313, DW_AT_location[DW_OP_reg1]

$C$DW$1314	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1314, DW_AT_name("PL")
	.dwattr $C$DW$1314, DW_AT_location[DW_OP_reg2]

$C$DW$1315	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1315, DW_AT_name("PH")
	.dwattr $C$DW$1315, DW_AT_location[DW_OP_reg3]

$C$DW$1316	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1316, DW_AT_name("SP")
	.dwattr $C$DW$1316, DW_AT_location[DW_OP_reg20]

$C$DW$1317	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1317, DW_AT_name("XT")
	.dwattr $C$DW$1317, DW_AT_location[DW_OP_reg21]

$C$DW$1318	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1318, DW_AT_name("T")
	.dwattr $C$DW$1318, DW_AT_location[DW_OP_reg22]

$C$DW$1319	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1319, DW_AT_name("ST0")
	.dwattr $C$DW$1319, DW_AT_location[DW_OP_reg23]

$C$DW$1320	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1320, DW_AT_name("ST1")
	.dwattr $C$DW$1320, DW_AT_location[DW_OP_reg24]

$C$DW$1321	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1321, DW_AT_name("PC")
	.dwattr $C$DW$1321, DW_AT_location[DW_OP_reg25]

$C$DW$1322	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1322, DW_AT_name("RPC")
	.dwattr $C$DW$1322, DW_AT_location[DW_OP_reg26]

$C$DW$1323	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1323, DW_AT_name("FP")
	.dwattr $C$DW$1323, DW_AT_location[DW_OP_reg28]

$C$DW$1324	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1324, DW_AT_name("DP")
	.dwattr $C$DW$1324, DW_AT_location[DW_OP_reg29]

$C$DW$1325	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1325, DW_AT_name("SXM")
	.dwattr $C$DW$1325, DW_AT_location[DW_OP_reg30]

$C$DW$1326	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1326, DW_AT_name("PM")
	.dwattr $C$DW$1326, DW_AT_location[DW_OP_reg31]

$C$DW$1327	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1327, DW_AT_name("OVM")
	.dwattr $C$DW$1327, DW_AT_location[DW_OP_regx 0x20]

$C$DW$1328	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1328, DW_AT_name("PAGE0")
	.dwattr $C$DW$1328, DW_AT_location[DW_OP_regx 0x21]

$C$DW$1329	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1329, DW_AT_name("AMODE")
	.dwattr $C$DW$1329, DW_AT_location[DW_OP_regx 0x22]

$C$DW$1330	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1330, DW_AT_name("INTM")
	.dwattr $C$DW$1330, DW_AT_location[DW_OP_regx 0x23]

$C$DW$1331	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1331, DW_AT_name("IFR")
	.dwattr $C$DW$1331, DW_AT_location[DW_OP_regx 0x24]

$C$DW$1332	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1332, DW_AT_name("IER")
	.dwattr $C$DW$1332, DW_AT_location[DW_OP_regx 0x25]

$C$DW$1333	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1333, DW_AT_name("V")
	.dwattr $C$DW$1333, DW_AT_location[DW_OP_regx 0x26]

$C$DW$1334	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1334, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$1334, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$1335	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1335, DW_AT_name("VOL")
	.dwattr $C$DW$1335, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$1336	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1336, DW_AT_name("AR0")
	.dwattr $C$DW$1336, DW_AT_location[DW_OP_reg4]

$C$DW$1337	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1337, DW_AT_name("XAR0")
	.dwattr $C$DW$1337, DW_AT_location[DW_OP_reg5]

$C$DW$1338	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1338, DW_AT_name("AR1")
	.dwattr $C$DW$1338, DW_AT_location[DW_OP_reg6]

$C$DW$1339	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1339, DW_AT_name("XAR1")
	.dwattr $C$DW$1339, DW_AT_location[DW_OP_reg7]

$C$DW$1340	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1340, DW_AT_name("AR2")
	.dwattr $C$DW$1340, DW_AT_location[DW_OP_reg8]

$C$DW$1341	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1341, DW_AT_name("XAR2")
	.dwattr $C$DW$1341, DW_AT_location[DW_OP_reg9]

$C$DW$1342	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1342, DW_AT_name("AR3")
	.dwattr $C$DW$1342, DW_AT_location[DW_OP_reg10]

$C$DW$1343	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1343, DW_AT_name("XAR3")
	.dwattr $C$DW$1343, DW_AT_location[DW_OP_reg11]

$C$DW$1344	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1344, DW_AT_name("AR4")
	.dwattr $C$DW$1344, DW_AT_location[DW_OP_reg12]

$C$DW$1345	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1345, DW_AT_name("XAR4")
	.dwattr $C$DW$1345, DW_AT_location[DW_OP_reg13]

$C$DW$1346	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1346, DW_AT_name("AR5")
	.dwattr $C$DW$1346, DW_AT_location[DW_OP_reg14]

$C$DW$1347	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1347, DW_AT_name("XAR5")
	.dwattr $C$DW$1347, DW_AT_location[DW_OP_reg15]

$C$DW$1348	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1348, DW_AT_name("AR6")
	.dwattr $C$DW$1348, DW_AT_location[DW_OP_reg16]

$C$DW$1349	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1349, DW_AT_name("XAR6")
	.dwattr $C$DW$1349, DW_AT_location[DW_OP_reg17]

$C$DW$1350	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1350, DW_AT_name("AR7")
	.dwattr $C$DW$1350, DW_AT_location[DW_OP_reg18]

$C$DW$1351	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$1351, DW_AT_name("XAR7")
	.dwattr $C$DW$1351, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.7.LTS *
;* Date/Time created: Thu Feb 06 15:25:44 2020                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/SPICAN.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.7.LTS Copyright (c) 1996-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\ebenton\Documents\CERDEC TS\Firmware\CANbus\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("delay_us")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_delay_us")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("spi_xmit")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_spi_xmit")
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
$C$DW$4	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$3


$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("setShelfMinTemp")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_setShelfMinTemp")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("setShelfMaxTemp")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_setShelfMaxTemp")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwendtag $C$DW$6


$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("setShelfMinTempID")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_setShelfMinTempID")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwendtag $C$DW$7


$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("setShelfVoltage")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_setShelfVoltage")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwendtag $C$DW$8


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("setShelfMaxTempID")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_setShelfMaxTempID")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwendtag $C$DW$9


$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("setSystemCapVoltage")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_setSystemCapVoltage")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwendtag $C$DW$10


$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("setShelfErrors")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_setShelfErrors")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwendtag $C$DW$11


$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("sprintf")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_sprintf")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$91)

$C$DW$14	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$93)

$C$DW$15	.dwtag  DW_TAG_unspecified_parameters

	.dwendtag $C$DW$12


$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("setShelfAvgTemp")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_setShelfAvgTemp")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwendtag $C$DW$16


$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("spi_recv")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_spi_recv")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$17, DW_AT_declaration
	.dwattr $C$DW$17, DW_AT_external
	.dwendtag $C$DW$17


$C$DW$18	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$18, DW_AT_name("setModVoltage")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_setModVoltage")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$18, DW_AT_declaration
	.dwattr $C$DW$18, DW_AT_external
	.dwendtag $C$DW$18


$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("setModTemp")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_setModTemp")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$19, DW_AT_declaration
	.dwattr $C$DW$19, DW_AT_external
	.dwendtag $C$DW$19


$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("setShelfAlarms")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_setShelfAlarms")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$20, DW_AT_declaration
	.dwattr $C$DW$20, DW_AT_external
	.dwendtag $C$DW$20

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$21, DW_AT_declaration
	.dwattr $C$DW$21, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\{75B73EAA-22D3-4F78-887F-4852D1F1E84F} C:\\Users\\ebenton\\AppData\\Local\\Temp\\{92611DB8-56C7-4FEB-AA0D-83CEF2F02A6E} 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\{CE0EA087-0D88-49EC-8EEA-1D4ADF543CC3} 
	.sect	".text"
	.clink
	.global	_processModStatus

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("processModStatus")
	.dwattr $C$DW$22, DW_AT_low_pc(_processModStatus)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_processModStatus")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x273)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 627,column 44,is_stmt,address _processModStatus,isa 0

	.dwfde $C$DW$CIE, _processModStatus
$C$DW$23	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$23, DW_AT_name("data")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg12]

$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("addr")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _processModStatus             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_processModStatus:
;* AR1   assigned to $O$C1
;* AR4   assigned to _data
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("data")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]

;* AR5   assigned to _addr
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("addr")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg14]

;* PL    assigned to _voltage1
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("voltage1")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_voltage1")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg2]

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("voltage2")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_voltage2")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_breg20 -1]

;* AR3   assigned to _temp1
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("temp1")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_temp1")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _temp2
$C$DW$30	.dwtag  DW_TAG_variable
	.dwattr $C$DW$30, DW_AT_name("temp2")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_temp2")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _mod
$C$DW$31	.dwtag  DW_TAG_variable
	.dwattr $C$DW$31, DW_AT_name("mod")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg6]

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
; 627 | processModStatus(Uint16 data[], long addr) {                           
; 628 | int voltage1;                                                          
; 629 | int voltage2;                                                          
; 630 | int temp1;                                                             
; 631 | int temp2;                                                             
; 632 | int mod;                                                               
; 633 | int shelf=1;                                                           
;----------------------------------------------------------------------
        MOVL      XAR5,ACC              ; [CPU_] |627| 
	.dwpsn	file "../Source/SPICAN.c",line 635,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 635 | voltage1 = ((data[1] << 8) | data[0])/5;                               
;----------------------------------------------------------------------
        MOV       ACC,*+XAR4[1] << #8   ; [CPU_] |635| 
        MOVB      AH,#5                 ; [CPU_] |635| 
        OR        AL,*+XAR4[0]          ; [CPU_] |635| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("U$$DIV")
	.dwattr $C$DW$32, DW_AT_TI_call

        FFC       XAR7,#U$$DIV          ; [CPU_] |635| 
        ; call occurs [#U$$DIV] ; [] |635| 
        MOV       PL,AL                 ; [CPU_] |635| 
	.dwpsn	file "../Source/SPICAN.c",line 636,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 636 | temp1 = (data[2] * 10) / 2 - 400;                                      
;----------------------------------------------------------------------
        MOV       T,*+XAR4[2]           ; [CPU_] |636| 
        MPYB      ACC,T,#10             ; [CPU_] |636| 
        LSR       AL,1                  ; [CPU_] |636| 
        SUB       AL,#400               ; [CPU_] |636| 
        MOVZ      AR3,AL                ; [CPU_] |636| 
	.dwpsn	file "../Source/SPICAN.c",line 637,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 637 | voltage2 = ((data[5] << 8) | data[4])/5;                               
;----------------------------------------------------------------------
        MOV       ACC,*+XAR4[5] << #8   ; [CPU_] |637| 
        MOVB      AH,#5                 ; [CPU_] |637| 
        OR        AL,*+XAR4[4]          ; [CPU_] |637| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("U$$DIV")
	.dwattr $C$DW$33, DW_AT_TI_call

        FFC       XAR7,#U$$DIV          ; [CPU_] |637| 
        ; call occurs [#U$$DIV] ; [] |637| 
        MOV       *-SP[1],AL            ; [CPU_] |637| 
	.dwpsn	file "../Source/SPICAN.c",line 638,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 638 | temp2 = (data[6] * 10) / 2 - 400;                                      
;----------------------------------------------------------------------
        MOV       T,*+XAR4[6]           ; [CPU_] |638| 
        MPYB      ACC,T,#10             ; [CPU_] |638| 
        LSR       AL,1                  ; [CPU_] |638| 
	.dwpsn	file "../Source/SPICAN.c",line 640,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 640 | if(addr == 0x18FFB000) mod = 1;                                        
;----------------------------------------------------------------------
        MOV       AH,#6399              ; [CPU_] |640| 
	.dwpsn	file "../Source/SPICAN.c",line 638,column 2,is_stmt,isa 0
        SUB       AL,#400               ; [CPU_] |638| 
        MOVZ      AR2,AL                ; [CPU_] |638| 
	.dwpsn	file "../Source/SPICAN.c",line 640,column 2,is_stmt,isa 0
        MOV       AL,#45056             ; [CPU_] |640| 
        CMPL      ACC,XAR5              ; [CPU_] |640| 
        B         $C$L6,EQ              ; [CPU_] |640| 
        ; branchcc occurs ; [] |640| 
	.dwpsn	file "../Source/SPICAN.c",line 641,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 641 | else if(addr == 0x18FFB100) mod = 3;                                   
;----------------------------------------------------------------------
        MOV       AL,#45312             ; [CPU_] |641| 
        CMPL      ACC,XAR5              ; [CPU_] |641| 
        B         $C$L5,EQ              ; [CPU_] |641| 
        ; branchcc occurs ; [] |641| 
	.dwpsn	file "../Source/SPICAN.c",line 642,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 642 | else if(addr == 0x18FFB200) mod = 5;                                   
;----------------------------------------------------------------------
        MOV       AL,#45568             ; [CPU_] |642| 
        CMPL      ACC,XAR5              ; [CPU_] |642| 
        B         $C$L4,EQ              ; [CPU_] |642| 
        ; branchcc occurs ; [] |642| 
	.dwpsn	file "../Source/SPICAN.c",line 643,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 643 | else if(addr == 0x18FFB300) mod = 7;                                   
;----------------------------------------------------------------------
        MOV       AL,#45824             ; [CPU_] |643| 
        CMPL      ACC,XAR5              ; [CPU_] |643| 
        B         $C$L3,EQ              ; [CPU_] |643| 
        ; branchcc occurs ; [] |643| 
	.dwpsn	file "../Source/SPICAN.c",line 644,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 644 | else if(addr == 0x18FFB400) mod = 9;                                   
;----------------------------------------------------------------------
        MOV       AL,#46080             ; [CPU_] |644| 
        CMPL      ACC,XAR5              ; [CPU_] |644| 
        B         $C$L2,EQ              ; [CPU_] |644| 
        ; branchcc occurs ; [] |644| 
	.dwpsn	file "../Source/SPICAN.c",line 645,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 645 | else if(addr == 0x18FFB500) mod = 10;                                  
; 647 | //Send data to the System object                                       
; 648 | if(mod % 2 == 1) //If it's an odd module (1, 3, 5, ...)                
; 650 |         setModVoltage(shelf, mod, voltage1);                           
; 651 |         setModTemp(shelf, mod, temp1);                                 
; 653 |         setModVoltage(shelf, mod+1, voltage2);                         
; 654 |         setModTemp(shelf, mod+1, temp2);                               
; 657 | else // It's an even modules (0, 2, 4, ...)                            
;----------------------------------------------------------------------
        MOV       AL,#46336             ; [CPU_] |645| 
        CMPL      ACC,XAR5              ; [CPU_] |645| 
        B         $C$L1,EQ              ; [CPU_] |645| 
        ; branchcc occurs ; [] |645| 
        MOVB      AH,#2                 ; [CPU_] |645| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("I$$MOD")
	.dwattr $C$DW$34, DW_AT_TI_call

        FFC       XAR7,#I$$MOD          ; [CPU_] |645| 
        ; call occurs [#I$$MOD] ; [] |645| 
        CMPB      AL,#1                 ; [CPU_] |645| 
        B         $C$L7,EQ              ; [CPU_] |645| 
        ; branchcc occurs ; [] |645| 
$C$L1:    
	.dwpsn	file "../Source/SPICAN.c",line 659,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 659 | setModVoltage(shelf, mod-1, voltage1);                                 
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |659| 
        MOVB      AH,#9                 ; [CPU_] |659| 
        MOVZ      AR4,PL                ; [CPU_] |659| 
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_setModVoltage")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_setModVoltage       ; [CPU_] |659| 
        ; call occurs [#_setModVoltage] ; [] |659| 
	.dwpsn	file "../Source/SPICAN.c",line 660,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 660 | setModTemp(shelf, mod-1, temp1);                                       
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |660| 
        MOVB      AH,#9                 ; [CPU_] |660| 
        MOVZ      AR4,AR3               ; [CPU_] |660| 
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_setModTemp")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #_setModTemp          ; [CPU_] |660| 
        ; call occurs [#_setModTemp] ; [] |660| 
	.dwpsn	file "../Source/SPICAN.c",line 662,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 662 | setModVoltage(shelf, mod, voltage2);                                   
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |662| 
        MOVB      AH,#10                ; [CPU_] |662| 
        MOVZ      AR4,*-SP[1]           ; [CPU_] |662| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_setModVoltage")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #_setModVoltage       ; [CPU_] |662| 
        ; call occurs [#_setModVoltage] ; [] |662| 
	.dwpsn	file "../Source/SPICAN.c",line 663,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 663 | setModTemp(shelf, mod, temp2);                                         
;----------------------------------------------------------------------
        MOVB      AH,#10                ; [CPU_] |663| 
        B         $C$L8,UNC             ; [CPU_] |663| 
        ; branch occurs ; [] |663| 
$C$L2:    
	.dwpsn	file "../Source/SPICAN.c",line 644,column 30,is_stmt,isa 0
        MOVB      XAR1,#9               ; [CPU_] |644| 
        B         $C$L7,UNC             ; [CPU_] |644| 
        ; branch occurs ; [] |644| 
$C$L3:    
	.dwpsn	file "../Source/SPICAN.c",line 643,column 30,is_stmt,isa 0
        MOVB      XAR1,#7               ; [CPU_] |643| 
        B         $C$L7,UNC             ; [CPU_] |643| 
        ; branch occurs ; [] |643| 
$C$L4:    
	.dwpsn	file "../Source/SPICAN.c",line 642,column 30,is_stmt,isa 0
        MOVB      XAR1,#5               ; [CPU_] |642| 
        B         $C$L7,UNC             ; [CPU_] |642| 
        ; branch occurs ; [] |642| 
$C$L5:    
	.dwpsn	file "../Source/SPICAN.c",line 641,column 30,is_stmt,isa 0
        MOVB      XAR1,#3               ; [CPU_] |641| 
        B         $C$L7,UNC             ; [CPU_] |641| 
        ; branch occurs ; [] |641| 
$C$L6:    
	.dwpsn	file "../Source/SPICAN.c",line 640,column 25,is_stmt,isa 0
        MOVB      XAR1,#1               ; [CPU_] |640| 
$C$L7:    
	.dwpsn	file "../Source/SPICAN.c",line 650,column 3,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |650| 
        MOV       AH,AR1                ; [CPU_] |650| 
        MOVZ      AR4,PL                ; [CPU_] |650| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_setModVoltage")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #_setModVoltage       ; [CPU_] |650| 
        ; call occurs [#_setModVoltage] ; [] |650| 
	.dwpsn	file "../Source/SPICAN.c",line 651,column 3,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |651| 
        MOV       AH,AR1                ; [CPU_] |651| 
        MOVZ      AR4,AR3               ; [CPU_] |651| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_setModTemp")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #_setModTemp          ; [CPU_] |651| 
        ; call occurs [#_setModTemp] ; [] |651| 
	.dwpsn	file "../Source/SPICAN.c",line 653,column 3,is_stmt,isa 0
        ADD       AR1,#1                ; [CPU_] |653| 
        MOVB      AL,#1                 ; [CPU_] |653| 
        MOVZ      AR4,*-SP[1]           ; [CPU_] |653| 
        MOV       AH,AR1                ; [CPU_] |653| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_setModVoltage")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_setModVoltage       ; [CPU_] |653| 
        ; call occurs [#_setModVoltage] ; [] |653| 
	.dwpsn	file "../Source/SPICAN.c",line 654,column 3,is_stmt,isa 0
        MOV       AH,AR1                ; [CPU_] |654| 
$C$L8:    
        MOVB      AL,#1                 ; [CPU_] |654| 
        MOVZ      AR4,AR2               ; [CPU_] |654| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_setModTemp")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_setModTemp          ; [CPU_] |654| 
        ; call occurs [#_setModTemp] ; [] |654| 
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
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x29a)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.clink
	.global	_processJSRStatus

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("processJSRStatus")
	.dwattr $C$DW$43, DW_AT_low_pc(_processJSRStatus)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_processJSRStatus")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0x29c)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x01)
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../Source/SPICAN.c",line 668,column 44,is_stmt,address _processJSRStatus,isa 0

	.dwfde $C$DW$CIE, _processJSRStatus
$C$DW$44	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$44, DW_AT_name("data")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg12]

$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("addr")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]


;***************************************************************
;* FNAME: _processJSRStatus             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  6 SOE     *
;***************************************************************

_processJSRStatus:
;* AH    assigned to $O$C1
;* AR3   assigned to _data
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("data")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg10]

;* AR1   assigned to _voltage
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("voltage")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg6]

$C$DW$48	.dwtag  DW_TAG_variable
	.dwattr $C$DW$48, DW_AT_name("avgTemp")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_avgTemp")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_breg20 -1]

$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("maxTemp")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_maxTemp")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_breg20 -2]

;* AR2   assigned to _minTemp
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("minTemp")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_minTemp")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg8]

$C$DW$51	.dwtag  DW_TAG_variable
	.dwattr $C$DW$51, DW_AT_name("maxTempID")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_maxTempID")
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$51, DW_AT_location[DW_OP_breg20 -3]

$C$DW$52	.dwtag  DW_TAG_variable
	.dwattr $C$DW$52, DW_AT_name("minTempID")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_minTempID")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_breg20 -4]

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
        ADDB      SP,#4                 ; [CPU_U] 
	.dwcfi	cfa_offset, -12
;----------------------------------------------------------------------
; 668 | processJSRStatus(Uint16 data[], long addr) {                           
; 669 | //Send the data to the System object                                   
; 670 | int shelf = 1;                                                         
;----------------------------------------------------------------------
        MOVL      XAR3,XAR4             ; [CPU_] |668| 
	.dwpsn	file "../Source/SPICAN.c",line 671,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 671 | int voltage = (data[1] << 8) | data[0];                                
; 672 | voltage = voltage / 5;                                                 
;----------------------------------------------------------------------
        MOV       ACC,*+XAR3[1] << #8   ; [CPU_] |671| 
	.dwpsn	file "../Source/SPICAN.c",line 674,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 674 | int avgTemp = (data[2] * 10) / 2 - 400;                                
;----------------------------------------------------------------------
        MOV       T,*+XAR3[2]           ; [CPU_] |674| 
	.dwpsn	file "../Source/SPICAN.c",line 671,column 14,is_stmt,isa 0
        OR        AL,*+XAR3[0]          ; [CPU_] |671| 
        MOVZ      AR1,AL                ; [CPU_] |671| 
	.dwpsn	file "../Source/SPICAN.c",line 674,column 14,is_stmt,isa 0
        MPYB      ACC,T,#10             ; [CPU_] |674| 
        LSR       AL,1                  ; [CPU_] |674| 
        SUB       AL,#400               ; [CPU_] |674| 
        MOV       *-SP[1],AL            ; [CPU_] |674| 
	.dwpsn	file "../Source/SPICAN.c",line 675,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 675 | int maxTemp = (data[3] * 10) / 2 - 400;                                
;----------------------------------------------------------------------
        MOV       T,*+XAR3[3]           ; [CPU_] |675| 
        MPYB      ACC,T,#10             ; [CPU_] |675| 
        LSR       AL,1                  ; [CPU_] |675| 
        SUB       AL,#400               ; [CPU_] |675| 
        MOV       *-SP[2],AL            ; [CPU_] |675| 
	.dwpsn	file "../Source/SPICAN.c",line 676,column 14,is_stmt,isa 0
;----------------------------------------------------------------------
; 676 | int minTemp = (data[4] * 10) / 2 - 400;                                
;----------------------------------------------------------------------
        MOV       T,*+XAR3[4]           ; [CPU_] |676| 
        MPYB      ACC,T,#10             ; [CPU_] |676| 
        LSR       AL,1                  ; [CPU_] |676| 
        SUB       AL,#400               ; [CPU_] |676| 
        MOVZ      AR2,AL                ; [CPU_] |676| 
	.dwpsn	file "../Source/SPICAN.c",line 677,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
; 677 | int maxTempID = data[5] & 0x0F;                                        
;----------------------------------------------------------------------
        MOV       AH,*+XAR3[5]          ; [CPU_] |677| 
        AND       AL,AH,#0x000f         ; [CPU_] |677| 
        MOV       *-SP[3],AL            ; [CPU_] |677| 
	.dwpsn	file "../Source/SPICAN.c",line 678,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
; 678 | int minTempID = data[5] & 0xF0;                                        
;----------------------------------------------------------------------
        AND       AL,AH,#0x00f0         ; [CPU_] |678| 
	.dwpsn	file "../Source/SPICAN.c",line 680,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 680 | setShelfVoltage(shelf, voltage);                                       
;----------------------------------------------------------------------
        MOVB      AH,#5                 ; [CPU_] |680| 
	.dwpsn	file "../Source/SPICAN.c",line 678,column 16,is_stmt,isa 0
        MOV       *-SP[4],AL            ; [CPU_] |678| 
	.dwpsn	file "../Source/SPICAN.c",line 680,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |680| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("I$$DIV")
	.dwattr $C$DW$53, DW_AT_TI_call

        FFC       XAR7,#I$$DIV          ; [CPU_] |680| 
        ; call occurs [#I$$DIV] ; [] |680| 
        MOVZ      AR1,AL                ; [CPU_] |680| 
        MOVB      AL,#1                 ; [CPU_] |680| 
        MOV       AH,AR1                ; [CPU_] |680| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_setShelfVoltage")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #_setShelfVoltage     ; [CPU_] |680| 
        ; call occurs [#_setShelfVoltage] ; [] |680| 
	.dwpsn	file "../Source/SPICAN.c",line 681,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 681 | setShelfAvgTemp(shelf, avgTemp);                                       
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |681| 
        MOV       AH,*-SP[1]            ; [CPU_] |681| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_setShelfAvgTemp")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #_setShelfAvgTemp     ; [CPU_] |681| 
        ; call occurs [#_setShelfAvgTemp] ; [] |681| 
	.dwpsn	file "../Source/SPICAN.c",line 682,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 682 | setShelfMaxTemp(shelf, maxTemp);                                       
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |682| 
        MOV       AH,*-SP[2]            ; [CPU_] |682| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_setShelfMaxTemp")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #_setShelfMaxTemp     ; [CPU_] |682| 
        ; call occurs [#_setShelfMaxTemp] ; [] |682| 
	.dwpsn	file "../Source/SPICAN.c",line 683,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 683 | setShelfMinTemp(shelf, minTemp);                                       
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |683| 
        MOV       AH,AR2                ; [CPU_] |683| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_setShelfMinTemp")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #_setShelfMinTemp     ; [CPU_] |683| 
        ; call occurs [#_setShelfMinTemp] ; [] |683| 
	.dwpsn	file "../Source/SPICAN.c",line 684,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 684 | setShelfMaxTempID(shelf, maxTempID);                                   
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |684| 
        MOV       AH,*-SP[3]            ; [CPU_] |684| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_setShelfMaxTempID")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #_setShelfMaxTempID   ; [CPU_] |684| 
        ; call occurs [#_setShelfMaxTempID] ; [] |684| 
	.dwpsn	file "../Source/SPICAN.c",line 685,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 685 | setShelfMinTempID(shelf, minTempID);                                   
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |685| 
        MOV       AH,*-SP[4]            ; [CPU_] |685| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_setShelfMinTempID")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_setShelfMinTempID   ; [CPU_] |685| 
        ; call occurs [#_setShelfMinTempID] ; [] |685| 
	.dwpsn	file "../Source/SPICAN.c",line 686,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 686 | setShelfAlarms(shelf, data[6]);                                        
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |686| 
        MOV       AH,*+XAR3[6]          ; [CPU_] |686| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_setShelfAlarms")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_setShelfAlarms      ; [CPU_] |686| 
        ; call occurs [#_setShelfAlarms] ; [] |686| 
	.dwpsn	file "../Source/SPICAN.c",line 687,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 687 | setShelfErrors(shelf, data[7]);                                        
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |687| 
        MOV       AH,*+XAR3[7]          ; [CPU_] |687| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_setShelfErrors")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_setShelfErrors      ; [CPU_] |687| 
        ; call occurs [#_setShelfErrors] ; [] |687| 
	.dwpsn	file "../Source/SPICAN.c",line 689,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 689 | setSystemCapVoltage(voltage);                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |689| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_setSystemCapVoltage")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_setSystemCapVoltage ; [CPU_] |689| 
        ; call occurs [#_setSystemCapVoltage] ; [] |689| 
        SUBB      SP,#4                 ; [CPU_U] 
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
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0x2b4)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text"
	.clink
	.global	_SPICAN_T0_RTS

$C$DW$64	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$64, DW_AT_name("SPICAN_T0_RTS")
	.dwattr $C$DW$64, DW_AT_low_pc(_SPICAN_T0_RTS)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_SPICAN_T0_RTS")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x1b4)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 437,column 1,is_stmt,address _SPICAN_T0_RTS,isa 0

	.dwfde $C$DW$CIE, _SPICAN_T0_RTS
;----------------------------------------------------------------------
; 436 | void SPICAN_T0_RTS (void)                                              
; 438 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICAN_T0_RTS                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICAN_T0_RTS:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 439,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 439 | spi_xmit(SPICAN_RTS + 0x1);                                            
;----------------------------------------------------------------------
        MOVB      AL,#129               ; [CPU_] |439| 
	.dwpsn	file "../Source/SPICAN.c",line 438,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |438| 
	.dwpsn	file "../Source/SPICAN.c",line 439,column 2,is_stmt,isa 0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |439| 
        ; call occurs [#_spi_xmit] ; [] |439| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 440,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 440 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |440| 
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$64, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x1b9)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text"
	.clink
	.global	_SPICANWrite

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("SPICANWrite")
	.dwattr $C$DW$67, DW_AT_low_pc(_SPICANWrite)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_SPICANWrite")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0xc7)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 200,column 1,is_stmt,address _SPICANWrite,isa 0

	.dwfde $C$DW$CIE, _SPICANWrite
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("ADDR")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg0]

$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("Input")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 199 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANWrite                  FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SPICANWrite:
;* AR2   assigned to _ADDR
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("ADDR")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _Input
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("Input")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AH                ; [CPU_] |200| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 200,column 1,is_stmt,isa 0
        MOVZ      AR2,AL                ; [CPU_] |200| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |202| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 203 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |203| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |204| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 205 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0xce)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Data

$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("SPICAN_SetT0Data")
	.dwattr $C$DW$76, DW_AT_low_pc(_SPICAN_SetT0Data)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0x1a6)
	.dwattr $C$DW$76, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 423,column 1,is_stmt,address _SPICAN_SetT0Data,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Data
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_name("numBytes")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg0]

$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("buf")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 422 | void SPICAN_SetT0Data(Uint16 numBytes, Uint16 *buf)                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICAN_SetT0Data             FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  6 SOE     *
;***************************************************************

_SPICAN_SetT0Data:
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("Input")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_breg20 -1]

;* AR1   assigned to _k
$C$DW$80	.dwtag  DW_TAG_variable
	.dwattr $C$DW$80, DW_AT_name("k")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _numBytes
$C$DW$81	.dwtag  DW_TAG_variable
	.dwattr $C$DW$81, DW_AT_name("numBytes")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg8]

;* AR3   assigned to $O$U11
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
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 424 | Uint16 k;                                                              
; 426 | // Send how much data content there is                                 
; 427 | SPICANWrite(SPICAN_TXB0DLC, numBytes);                                 
; 429 | // Fill in the data buffer                                             
;----------------------------------------------------------------------
        MOVZ      AR2,AL                ; [CPU_] |423| 
        MOVL      XAR3,XAR4             ; [CPU_] |423| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#53                ; [CPU_] |203| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
        MOV       AL,AR2                ; [CPU_] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$84, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
        MOV       AL,AR2                ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 430,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 430 | for(k = 0; k < numBytes; k++)                                          
;----------------------------------------------------------------------
        B         $C$L10,EQ             ; [CPU_] |430| 
        ; branchcc occurs ; [] |430| 
        SUBB      XAR2,#1               ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 430,column 6,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_] |430| 
$C$L9:    
	.dwpsn	file "../Source/SPICAN.c",line 432,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 432 | SPICANWrite(SPICAN_TXB0D0 + k, buf[k]);                                
;----------------------------------------------------------------------
        MOV       AL,*XAR3++            ; [CPU_] |432| 
        MOV       *-SP[1],AL            ; [CPU_] |432| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |203| 
        ADD       AL,AR1                ; [CPU_] |203| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
        MOV       AL,*-SP[1]            ; [CPU_] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
	.dwpsn	file "../Source/SPICAN.c",line 430,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |430| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 430,column 13,is_stmt,isa 0
        BANZ      $C$L9,AR2--           ; [CPU_] |430| 
        ; branchcc occurs ; [] |430| 
$C$L10:    
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
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0x1b2)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0AddrExt

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("SPICAN_SetT0AddrExt")
	.dwattr $C$DW$89, DW_AT_low_pc(_SPICAN_SetT0AddrExt)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_SPICAN_SetT0AddrExt")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x182)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../Source/SPICAN.c",line 387,column 1,is_stmt,address _SPICAN_SetT0AddrExt,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0AddrExt
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("canAddressExt")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_canAddressExt")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 386 | void SPICAN_SetT0AddrExt(long canAddressExt)                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICAN_SetT0AddrExt          FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  2 SOE     *
;***************************************************************

_SPICAN_SetT0AddrExt:
;* AR6   assigned to _canAddressExt
$C$DW$91	.dwtag  DW_TAG_variable
	.dwattr $C$DW$91, DW_AT_name("canAddressExt")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_canAddressExt")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$130)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _Input
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("Input")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _Input
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("Input")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _Input
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("Input")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to _Input
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("Input")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg6]

$C$DW$96	.dwtag  DW_TAG_variable
	.dwattr $C$DW$96, DW_AT_name("addrHi")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_addrHi")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_breg20 -1]

$C$DW$97	.dwtag  DW_TAG_variable
	.dwattr $C$DW$97, DW_AT_name("addrLo")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_addrLo")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_breg20 -2]

$C$DW$98	.dwtag  DW_TAG_variable
	.dwattr $C$DW$98, DW_AT_name("addrHiExt")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_addrHiExt")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_breg20 -3]

$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("addrLoExt")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_addrLoExt")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_breg20 -4]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#4                 ; [CPU_U] 
	.dwcfi	cfa_offset, -8
;----------------------------------------------------------------------
; 388 | volatile Uint16 addrHi, addrLo;                                        
; 389 | volatile Uint16 addrHiExt, addrLoExt;                                  
; 390 | volatile int a,b,c,d;                                                  
; 393 | // First grab the important bits                                       
; 394 | //      addrHi = canAddress & 0x7F8;                                   
; 395 | //      addrLo = canAddress & 0x7;                                     
; 397 | // Now shift them to the right places                                  
; 398 | //      addrHi = addrHi >> 3;                                          
; 399 | //      addrLo = ((canAddressExt&0x30000)>>16) + SPICAN_EXIDE + (addrLo
;     |  << 5);                                                                
;----------------------------------------------------------------------
        MOVL      XAR6,ACC              ; [CPU_] |387| 
        MOVL      P,ACC                 ; [CPU_] |387| 
	.dwpsn	file "../Source/SPICAN.c",line 402,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 402 | addrHi = (canAddressExt&0x1FE00000)>>21;                               
; 403 | addrLo = 0;SPICAN_EXIDE + (canAddressExt&0x30000)>>16 + (canAddressExt&
;     | 0x1C0000)>>13;                                                         
;----------------------------------------------------------------------
        MOV       T,#21                 ; [CPU_] |402| 
        ASRL      ACC,T                 ; [CPU_] |402| 
        SETC      SXM                   ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 404,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 404 | addrLo = SPICAN_EXIDE + ((canAddressExt&0x30000)>>16) + ((canAddressExt
;     | &0x1C0000)>>13);                                                       
;----------------------------------------------------------------------
        MOV       AH,PH                 ; [CPU_] |404| 
	.dwpsn	file "../Source/SPICAN.c",line 402,column 2,is_stmt,isa 0
        ANDB      AL,#0xff              ; [CPU_] |402| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 404,column 2,is_stmt,isa 0
        ANDB      AH,#0x03              ; [CPU_] |404| 
	.dwpsn	file "../Source/SPICAN.c",line 402,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |402| 
	.dwpsn	file "../Source/SPICAN.c",line 404,column 2,is_stmt,isa 0
        MOV       PH,AH                 ; [CPU_] |404| 
	.dwpsn	file "../Source/SPICAN.c",line 403,column 2,is_stmt,isa 0
        MOV       *-SP[2],#0            ; [CPU_] |403| 
	.dwpsn	file "../Source/SPICAN.c",line 404,column 2,is_stmt,isa 0
        MOVL      ACC,XAR6              ; [CPU_] |404| 
        SFR       ACC,13                ; [CPU_] |404| 
        ANDB      AL,#0xe0              ; [CPU_] |404| 
        ADD       AL,PH                 ; [CPU_] |404| 
        ADDB      AL,#8                 ; [CPU_] |404| 
        MOV       *-SP[2],AL            ; [CPU_] |404| 
	.dwpsn	file "../Source/SPICAN.c",line 406,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 406 | addrHiExt = (canAddressExt&0xFF00)>>8;                                 
;----------------------------------------------------------------------
        MOVL      ACC,XAR6              ; [CPU_] |406| 
        SFR       ACC,8                 ; [CPU_] |406| 
        ANDB      AL,#0xff              ; [CPU_] |406| 
        MOV       *-SP[3],AL            ; [CPU_] |406| 
	.dwpsn	file "../Source/SPICAN.c",line 407,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 407 | addrLoExt = (canAddressExt&0xFF);                                      
; 410 | // Set up the ID (X - unused, H - Hi, L - Lo)                          
; 411 | // Want to first send 0bHHHHHHHH                                       
;----------------------------------------------------------------------
        MOV       AL,AR6                ; [CPU_] |407| 
        ANDB      AL,#0xff              ; [CPU_] |407| 
        MOV       *-SP[4],AL            ; [CPU_] |407| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 412,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 412 | SPICANWrite(SPICAN_TXB0SIDH, addrHi); // H (SID10 - SID3)              
; 413 | // Then want to send 0bLLL00000                                        
;----------------------------------------------------------------------
        MOVZ      AR1,*-SP[1]           ; [CPU_] |412| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$100, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_] |203| 
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |204| 
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 414,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 414 | SPICANWrite(SPICAN_TXB0SIDL, addrLo); // L (SID2 - SID0)               
;----------------------------------------------------------------------
        MOVZ      AR1,*-SP[2]           ; [CPU_] |414| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_] |203| 
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |204| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 416,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 416 | SPICANWrite(SPICAN_TXB0EID8, addrHiExt); // EID15-8                    
;----------------------------------------------------------------------
        MOVZ      AR1,*-SP[3]           ; [CPU_] |416| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#51                ; [CPU_] |203| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |204| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 417,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 417 | SPICANWrite(SPICAN_TXB0EID0, addrLoExt); //  EDI7-0                    
;----------------------------------------------------------------------
        MOVZ      AR1,*-SP[4]           ; [CPU_] |417| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#52                ; [CPU_] |203| 
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |204| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
        SUBB      SP,#4                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x1a3)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Addr

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("SPICAN_SetT0Addr")
	.dwattr $C$DW$113, DW_AT_low_pc(_SPICAN_SetT0Addr)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0x16a)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 363,column 1,is_stmt,address _SPICAN_SetT0Addr,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Addr
$C$DW$114	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$114, DW_AT_name("canAddress")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 362 | void SPICAN_SetT0Addr(Uint16 canAddress)                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICAN_SetT0Addr             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SPICAN_SetT0Addr:
;* AR1   assigned to _canAddress
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("canAddress")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _addrHi
$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("addrHi")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_addrHi")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _addrLo
$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("addrLo")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_addrLo")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 364 | Uint16 addrHi, addrLo;                                                 
; 366 | // First grab the important bits                                       
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |363| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 367,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 367 | addrHi = canAddress & 0x7F8;                                           
;----------------------------------------------------------------------
        AND       AH,AR1,#0x07f8        ; [CPU_] |367| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 368,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 368 | addrLo = canAddress & 0x7;                                             
;----------------------------------------------------------------------
        AND       AL,AR1,#0x0007        ; [CPU_] |368| 
	.dwpsn	file "../Source/SPICAN.c",line 367,column 2,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |367| 
	.dwpsn	file "../Source/SPICAN.c",line 368,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 370 | // Now shift them to the right places                                  
; 371 | addrHi = addrHi >> 3;                                                  
; 372 | addrLo = addrLo << 5;                                                  
; 374 | // Set up the ID (X - unused, H - Hi, L - Lo)                          
; 375 | // Want to first send 0bHHHHHHHH                                       
; 376 | SPICANWrite(SPICAN_TXB0SIDH, addrHi); // H (SID10 - SID3)              
; 377 | // Then want to send 0bLLL00000                                        
; 378 | SPICANWrite(SPICAN_TXB0SIDL, addrLo); // L (SID2 - SID0)               
; 380 | //SPICANWrite(0x33, addrLo); // L (SID2 - SID0)                        
; 381 | //SPICANWrite(0x34, addrLo); // L (SID2 - SID0)                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |368| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_] |203| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
        MOV       AL,AR2                ; [CPU_] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        LSR       AL,3                  ; [CPU_] |204| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_] |203| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
        MOV       AL,AR1                ; [CPU_] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        LSL       AL,5                  ; [CPU_] |204| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0x17e)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.clink
	.global	_SPICANRead

$C$DW$125	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$125, DW_AT_name("SPICANRead")
	.dwattr $C$DW$125, DW_AT_low_pc(_SPICANRead)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_SPICANRead")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0xb9)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 186,column 1,is_stmt,address _SPICANRead,isa 0

	.dwfde $C$DW$CIE, _SPICANRead
$C$DW$126	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$126, DW_AT_name("Input")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 185 | Uint16 SPICANRead (Uint16 Input)                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRead                   FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SPICANRead:
;* AR1   assigned to _Input
$C$DW$127	.dwtag  DW_TAG_variable
	.dwattr $C$DW$127, DW_AT_name("Input")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 187 | Uint16  RetVal;                                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |186| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |190| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_spi_recv")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 193 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$125, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0xc2)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.clink
	.global	_SPICANWaitForTXBuf

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("SPICANWaitForTXBuf")
	.dwattr $C$DW$132, DW_AT_low_pc(_SPICANWaitForTXBuf)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0x1ed)
	.dwattr $C$DW$132, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 494,column 1,is_stmt,address _SPICANWaitForTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANWaitForTXBuf
$C$DW$133	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$133, DW_AT_name("buf_num")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 493 | void SPICANWaitForTXBuf(Uint16 buf_num)                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANWaitForTXBuf           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SPICANWaitForTXBuf:
;* AL    assigned to _res
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("res")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _buf_num
$C$DW$135	.dwtag  DW_TAG_variable
	.dwattr $C$DW$135, DW_AT_name("buf_num")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$135, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to $O$K7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 495 | Uint16 res;                                                            
; 496 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |494| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #8         ; [CPU_] |190| 
        ADDB      AL,#48                ; [CPU_] |190| 
        MOVZ      AR1,AL                ; [CPU_] |190| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_spi_recv")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 497,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 497 | while((res & 0x08) == 0x08)                                            
;----------------------------------------------------------------------
        B         $C$L12,UNC            ; [CPU_] |497| 
        ; branch occurs ; [] |497| 
$C$L11:    
	.dwpsn	file "../Source/SPICAN.c",line 499,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 499 | delay_us(1);                                                           
; 500 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |499| 
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_delay_us")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |499| 
        ; call occurs [#_delay_us] ; [] |499| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |190| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_spi_recv")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
$C$L12:    
	.dwpsn	file "../Source/SPICAN.c",line 497,column 8,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_] |497| 
        B         $C$L11,TC             ; [CPU_] |497| 
        ; branchcc occurs ; [] |497| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x1f6)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$132

	.sect	".text"
	.clink
	.global	_SPICANVerifyTXBuf

$C$DW$144	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$144, DW_AT_name("SPICANVerifyTXBuf")
	.dwattr $C$DW$144, DW_AT_low_pc(_SPICANVerifyTXBuf)
	.dwattr $C$DW$144, DW_AT_high_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_SPICANVerifyTXBuf")
	.dwattr $C$DW$144, DW_AT_external
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$144, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$144, DW_AT_TI_begin_line(0x1df)
	.dwattr $C$DW$144, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$144, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 480,column 1,is_stmt,address _SPICANVerifyTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANVerifyTXBuf
$C$DW$145	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$145, DW_AT_name("buf")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_location[DW_OP_reg0]

$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("data_check")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 479 | int SPICANVerifyTXBuf(Uint16 buf, Uint16 data_check[])                 
; 481 | Uint16 data[8];                                                        
; 482 | int k;                                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANVerifyTXBuf            FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SPICANVerifyTXBuf:
;* AR4   assigned to _data_check
$C$DW$147	.dwtag  DW_TAG_variable
	.dwattr $C$DW$147, DW_AT_name("data_check")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$147, DW_AT_location[DW_OP_reg12]

;* AR1   assigned to _k
$C$DW$148	.dwtag  DW_TAG_variable
	.dwattr $C$DW$148, DW_AT_name("k")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$148, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _RetVal
$C$DW$149	.dwtag  DW_TAG_variable
	.dwattr $C$DW$149, DW_AT_name("RetVal")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg0]

;* AR2   assigned to $O$U11
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 483,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 483 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        MOVB      XAR1,#0               ; [CPU_] |483| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] 
$C$L13:    
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |190| 
        ADD       AL,AR1                ; [CPU_] |190| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_spi_recv")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 485,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 485 | if(data_check[k] != SPICANRead(SPICAN_TXB0D0 + k))                     
;----------------------------------------------------------------------
        MOVZ      AR6,*+XAR2[0]         ; [CPU_] |485| 
        MOVU      ACC,AL                ; [CPU_] |485| 
        CMPL      ACC,XAR6              ; [CPU_] |485| 
        B         $C$L14,EQ             ; [CPU_] |485| 
        ; branchcc occurs ; [] |485| 
	.dwpsn	file "../Source/SPICAN.c",line 487,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 487 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |487| 
        B         $C$L15,UNC            ; [CPU_] |487| 
        ; branch occurs ; [] |487| 
$C$L14:    
	.dwpsn	file "../Source/SPICAN.c",line 483,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |483| 
        ADDB      XAR2,#1               ; [CPU_] |483| 
        MOV       AL,AR1                ; [CPU_] |483| 
        CMPB      AL,#8                 ; [CPU_] |483| 
        B         $C$L13,LT             ; [CPU_] |483| 
        ; branchcc occurs ; [] |483| 
	.dwpsn	file "../Source/SPICAN.c",line 490,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 490 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |490| 
$C$L15:    
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$144, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$144, DW_AT_TI_end_line(0x1eb)
	.dwattr $C$DW$144, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$144

	.sect	".text"
	.clink
	.global	_SPICANSetNorm

$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("SPICANSetNorm")
	.dwattr $C$DW$154, DW_AT_low_pc(_SPICANSetNorm)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_SPICANSetNorm")
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0xdd)
	.dwattr $C$DW$154, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 222,column 1,is_stmt,address _SPICANSetNorm,isa 0

	.dwfde $C$DW$CIE, _SPICANSetNorm
;----------------------------------------------------------------------
; 221 | void SPICANSetNorm (void)                                              
; 223 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANSetNorm                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANSetNorm:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 224,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 224 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |224| 
	.dwpsn	file "../Source/SPICAN.c",line 223,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |223| 
	.dwpsn	file "../Source/SPICAN.c",line 224,column 2,is_stmt,isa 0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |224| 
        ; call occurs [#_spi_xmit] ; [] |224| 
	.dwpsn	file "../Source/SPICAN.c",line 225,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |225| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |225| 
        ; call occurs [#_spi_xmit] ; [] |225| 
	.dwpsn	file "../Source/SPICAN.c",line 226,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 226 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |226| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |226| 
        ; call occurs [#_spi_xmit] ; [] |226| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 227,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 227 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |227| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0xe4)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text"
	.clink
	.global	_SPICANReadID

$C$DW$159	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$159, DW_AT_name("SPICANReadID")
	.dwattr $C$DW$159, DW_AT_low_pc(_SPICANReadID)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_SPICANReadID")
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$159, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$159, DW_AT_TI_begin_line(0x137)
	.dwattr $C$DW$159, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$159, DW_AT_TI_max_frame_size(-16)
	.dwpsn	file "../Source/SPICAN.c",line 312,column 1,is_stmt,address _SPICANReadID,isa 0

	.dwfde $C$DW$CIE, _SPICANReadID
$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_name("whichBuf")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 311 | long SPICANReadID (Uint16 whichBuf)                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadID                 FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  6 SOE     *
;***************************************************************

_SPICANReadID:
;* AR3   assigned to $O$C8
;* AR1   assigned to $O$C9
;* AR1   assigned to _whichBuf
$C$DW$161	.dwtag  DW_TAG_variable
	.dwattr $C$DW$161, DW_AT_name("whichBuf")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("RetVal")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg16]

;* AL    assigned to _RetVal
$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("RetVal")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg0]

;* AR2   assigned to _RetVal
$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("RetVal")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _RetVal
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("RetVal")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("RetVal")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg16]

$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("res")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_breg20 -2]

$C$DW$168	.dwtag  DW_TAG_variable
	.dwattr $C$DW$168, DW_AT_name("data")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$168, DW_AT_location[DW_OP_breg20 -6]

$C$DW$169	.dwtag  DW_TAG_variable
	.dwattr $C$DW$169, DW_AT_name("k")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$169, DW_AT_location[DW_OP_breg20 -7]

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
        ADDB      SP,#8                 ; [CPU_U] 
	.dwcfi	cfa_offset, -16
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 313 | volatile long res;                                                     
; 314 | int data[4];                                                           
; 315 | volatile int k;                                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |312| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #4         ; [CPU_] |190| 
        MOV       *-SP[8],AL            ; [CPU_] |190| 
        MOVB      AL,#97                ; [CPU_] |190| 
        ADD       AL,*-SP[8]            ; [CPU_] |190| 
        MOVZ      AR3,AL                ; [CPU_] |190| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_spi_recv")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 317,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 317 | data[0] = (SPICANRead(0x61+(whichBuf*0x10))>>3);                       
;----------------------------------------------------------------------
        LSR       AL,3                  ; [CPU_] |317| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 317,column 2,is_stmt,isa 0
        MOV       *-SP[6],AL            ; [CPU_] |317| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#98                ; [CPU_] |190| 
        ADD       AL,*-SP[8]            ; [CPU_] |190| 
        MOVZ      AR1,AL                ; [CPU_] |190| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_spi_recv")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR2,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |190| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_spi_recv")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOV       AL,AR3                ; [CPU_] |190| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_spi_recv")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 318,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 318 | data[1] = (SPICANRead(0x62+(whichBuf*0x10))&0x03) + ((SPICANRead(0x62+(
;     | whichBuf*0x10))&0xE0)>>3) + ((SPICANRead(0x61+(whichBuf*0x10))&0x07)<<5
;     | );                                                                     
;----------------------------------------------------------------------
        MOV       AH,AR1                ; [CPU_] |318| 
        LSR       AH,3                  ; [CPU_] |318| 
        ANDB      AH,#0x1c              ; [CPU_] |318| 
        MOVZ      AR1,AH                ; [CPU_] |318| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
        MOVZ      AR6,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 318,column 2,is_stmt,isa 0
        AND       AL,AR2,#0x0003        ; [CPU_] |318| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 318,column 2,is_stmt,isa 0
        ADD       AR1,AL                ; [CPU_] |318| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 318,column 2,is_stmt,isa 0
        MOV       ACC,AR6 << #5         ; [CPU_] |318| 
        ANDB      AL,#0xff              ; [CPU_] |318| 
        ADD       AL,AR1                ; [CPU_] |318| 
        MOV       *-SP[5],AL            ; [CPU_] |318| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#99                ; [CPU_] |190| 
        ADD       AL,*-SP[8]            ; [CPU_] |190| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_spi_recv")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 319,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 319 | data[2] = SPICANRead(0x63+(whichBuf*0x10));                            
;----------------------------------------------------------------------
        MOV       *-SP[4],AL            ; [CPU_] |319| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#100               ; [CPU_] |190| 
        ADD       AL,*-SP[8]            ; [CPU_] |190| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_spi_recv")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        SETC      SXM                   ; [CPU_] 
        MOVZ      AR6,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 320,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 320 | data[3] = SPICANRead(0x64+(whichBuf*0x10));                            
;----------------------------------------------------------------------
        MOV       *-SP[3],AL            ; [CPU_] |320| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 322,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 322 | res = (((long)data[0])<<24) + (((long)data[1])<<16) + (((long)data[2])<
;     | <8) + (((long)data[3])<<0);                                            
;----------------------------------------------------------------------
        MOV       ACC,*-SP[6] << 8      ; [CPU_] |322| 
        ADD       ACC,*-SP[5]           ; [CPU_] |322| 
        LSL       ACC,8                 ; [CPU_] |322| 
        ADD       ACC,*-SP[4]           ; [CPU_] |322| 
        LSL       ACC,8                 ; [CPU_] |322| 
        ADD       ACC,AR6               ; [CPU_] |322| 
        MOVL      *-SP[2],ACC           ; [CPU_] |322| 
	.dwpsn	file "../Source/SPICAN.c",line 324,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 324 | k++;                                                                   
;----------------------------------------------------------------------
        INC       *-SP[7]               ; [CPU_] |324| 
	.dwpsn	file "../Source/SPICAN.c",line 325,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 325 | return res;                                                            
;----------------------------------------------------------------------
        MOVL      ACC,*-SP[2]           ; [CPU_] |325| 
        SUBB      SP,#8                 ; [CPU_U] 
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
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$159, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$159

	.sect	".text"
	.clink
	.global	_SPICANReadBuf_Array

$C$DW$189	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$189, DW_AT_name("SPICANReadBuf_Array")
	.dwattr $C$DW$189, DW_AT_low_pc(_SPICANReadBuf_Array)
	.dwattr $C$DW$189, DW_AT_high_pc(0x00)
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$189, DW_AT_external
	.dwattr $C$DW$189, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$189, DW_AT_TI_begin_line(0x115)
	.dwattr $C$DW$189, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$189, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 278,column 1,is_stmt,address _SPICANReadBuf_Array,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf_Array
$C$DW$190	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$190, DW_AT_name("data")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$190, DW_AT_location[DW_OP_reg12]

$C$DW$191	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$191, DW_AT_name("whichBuf")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 277 | void SPICANReadBuf_Array (Uint16 data[], Uint16 whichBuf)              
; 279 | int k;                                                                 
; 280 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadBuf_Array          FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SPICANReadBuf_Array:
;* AR1   assigned to _data
$C$DW$192	.dwtag  DW_TAG_variable
	.dwattr $C$DW$192, DW_AT_name("data")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$192, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _whichBuf
$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("whichBuf")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to $O$U10
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 281,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | spi_xmit(SPICAN_RXBUF0 + 4 * whichBuf);                                
;----------------------------------------------------------------------
        MOV       ACC,AL << #2          ; [CPU_] |281| 
	.dwpsn	file "../Source/SPICAN.c",line 278,column 1,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_] |278| 
	.dwpsn	file "../Source/SPICAN.c",line 280,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |280| 
	.dwpsn	file "../Source/SPICAN.c",line 281,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 282 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        ADD       AL,#146               ; [CPU_] |281| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |281| 
        ; call occurs [#_spi_xmit] ; [] |281| 
        MOVB      XAR2,#7               ; [CPU_] 
$C$L16:    
	.dwpsn	file "../Source/SPICAN.c",line 284,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 284 | data[k] = spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_spi_recv")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |284| 
        ; call occurs [#_spi_recv] ; [] |284| 
        MOV       *XAR1++,AL            ; [CPU_] |284| 
	.dwpsn	file "../Source/SPICAN.c",line 282,column 13,is_stmt,isa 0
        BANZ      $C$L16,AR2--          ; [CPU_] |282| 
        ; branchcc occurs ; [] |282| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 286,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |286| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$189, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$189, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$189, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$189

	.sect	".text"
	.clink
	.global	_SPICANBitModify

$C$DW$197	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$197, DW_AT_name("SPICANBitModify")
	.dwattr $C$DW$197, DW_AT_low_pc(_SPICANBitModify)
	.dwattr $C$DW$197, DW_AT_high_pc(0x00)
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_SPICANBitModify")
	.dwattr $C$DW$197, DW_AT_external
	.dwattr $C$DW$197, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$197, DW_AT_TI_begin_line(0x1f8)
	.dwattr $C$DW$197, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$197, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../Source/SPICAN.c",line 505,column 1,is_stmt,address _SPICANBitModify,isa 0

	.dwfde $C$DW$CIE, _SPICANBitModify
$C$DW$198	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$198, DW_AT_name("address")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_address")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg0]

$C$DW$199	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$199, DW_AT_name("mask")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg1]

$C$DW$200	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$200, DW_AT_name("data_byte")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_data_byte")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 504 | void SPICANBitModify(Uint16 address, Uint16 mask, Uint16 data_byte)    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANBitModify              FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************

_SPICANBitModify:
;* AR3   assigned to _address
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("address")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_address")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _mask
$C$DW$202	.dwtag  DW_TAG_variable
	.dwattr $C$DW$202, DW_AT_name("mask")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _data_byte
$C$DW$203	.dwtag  DW_TAG_variable
	.dwattr $C$DW$203, DW_AT_name("data_byte")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_data_byte")
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVZ      AR1,AR4               ; [CPU_] |505| 
	.dwpsn	file "../Source/SPICAN.c",line 506,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 506 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |506| 
	.dwpsn	file "../Source/SPICAN.c",line 505,column 1,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |505| 
        MOVL      *SP++,XAR3            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOVZ      AR3,AL                ; [CPU_] |505| 
	.dwpsn	file "../Source/SPICAN.c",line 507,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 507 | spi_xmit(0x05);                                         //Bit modify co
;     | mmand                                                                  
;----------------------------------------------------------------------
        MOVB      AL,#5                 ; [CPU_] |507| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |507| 
        ; call occurs [#_spi_xmit] ; [] |507| 
	.dwpsn	file "../Source/SPICAN.c",line 508,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 508 | spi_xmit(address);
;     |          //Write location                                              
;----------------------------------------------------------------------
        MOV       AL,AR3                ; [CPU_] |508| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |508| 
        ; call occurs [#_spi_xmit] ; [] |508| 
	.dwpsn	file "../Source/SPICAN.c",line 509,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 509 | spi_xmit(mask);                                                 //Write
;     |  Info                                                                  
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |509| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |509| 
        ; call occurs [#_spi_xmit] ; [] |509| 
	.dwpsn	file "../Source/SPICAN.c",line 510,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 510 | spi_xmit(data_byte);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |510| 
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |510| 
        ; call occurs [#_spi_xmit] ; [] |510| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 511,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 511 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |511| 
        MOVL      XAR3,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$197, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$197, DW_AT_TI_end_line(0x200)
	.dwattr $C$DW$197, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$197

	.sect	".text"
	.clink
	.global	_SPICANRoutine

$C$DW$209	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$209, DW_AT_name("SPICANRoutine")
	.dwattr $C$DW$209, DW_AT_low_pc(_SPICANRoutine)
	.dwattr $C$DW$209, DW_AT_high_pc(0x00)
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_SPICANRoutine")
	.dwattr $C$DW$209, DW_AT_external
	.dwattr $C$DW$209, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$209, DW_AT_TI_begin_line(0x2b7)
	.dwattr $C$DW$209, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$209, DW_AT_TI_max_frame_size(-18)
	.dwpsn	file "../Source/SPICAN.c",line 696,column 1,is_stmt,address _SPICANRoutine,isa 0

	.dwfde $C$DW$CIE, _SPICANRoutine
;----------------------------------------------------------------------
; 695 | void SPICANRoutine(void)                                               
; 697 | volatile Uint16 interrupts;                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRoutine                FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 14 Auto,  2 SOE     *
;***************************************************************

_SPICANRoutine:
;* AL    assigned to _RetVal
$C$DW$210	.dwtag  DW_TAG_variable
	.dwattr $C$DW$210, DW_AT_name("RetVal")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$211	.dwtag  DW_TAG_variable
	.dwattr $C$DW$211, DW_AT_name("RetVal")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$212	.dwtag  DW_TAG_variable
	.dwattr $C$DW$212, DW_AT_name("RetVal")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _bits_to_flip
$C$DW$213	.dwtag  DW_TAG_variable
	.dwattr $C$DW$213, DW_AT_name("bits_to_flip")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_bits_to_flip")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg6]

$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("interrupts")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_interrupts")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_breg20 -1]

$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("x")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_x")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_breg20 -2]

$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("res")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_breg20 -3]

$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("addr")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_addr")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$129)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_breg20 -6]

$C$DW$218	.dwtag  DW_TAG_variable
	.dwattr $C$DW$218, DW_AT_name("arr")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_arr")
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$218, DW_AT_location[DW_OP_breg20 -14]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#14                ; [CPU_U] 
	.dwcfi	cfa_offset, -18
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 698,column 16,is_stmt,isa 0
;----------------------------------------------------------------------
; 698 | volatile int x=0;                                                      
; 699 | volatile Uint16 dataarray[8];                                          
; 700 | volatile Uint16 count, res;                                            
; 701 | volatile long addr;                                                    
; 702 | // Check interrupts for what all happened                              
;----------------------------------------------------------------------
        MOV       *-SP[2],#0            ; [CPU_] |698| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |190| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_spi_recv")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 703,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 703 | interrupts = SPICANRead(0x2C);                                         
; 720 | // RX Interrupts                                                       
;----------------------------------------------------------------------
        MOV       *-SP[1],AL            ; [CPU_] |703| 
	.dwpsn	file "../Source/SPICAN.c",line 721,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 721 | if((interrupts & 0x03) > 0x00)                                         
; 724 |         Uint16 arr[8];                                                 
; 725 |         char bits_to_flip = 0x00;                                      
; 727 |         // RX1 Interrupt                                               
;----------------------------------------------------------------------
        ANDB      AL,#0x03              ; [CPU_] |721| 
        B         $C$L20,EQ             ; [CPU_] |721| 
        ; branchcc occurs ; [] |721| 
	.dwpsn	file "../Source/SPICAN.c",line 728,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 728 | if((interrupts & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      *-SP[1],#1            ; [CPU_] |728| 
	.dwpsn	file "../Source/SPICAN.c",line 725,column 21,is_stmt,isa 0
        MOVB      XAR1,#0,NTC           ; [CPU_] |725| 
        B         $C$L17,NTC            ; [CPU_] 
        ; branchcc occurs ; [] 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_] |190| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_spi_recv")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 730,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 730 | res = SPICANRead(0x70);                                                
; 731 | //SPICANReadBuf_Array(arr, 1);                                         
;----------------------------------------------------------------------
        MOV       *-SP[3],AL            ; [CPU_] |730| 
	.dwpsn	file "../Source/SPICAN.c",line 732,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 732 | addr = SPICANReadID(1);                                                
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |732| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_SPICANReadID")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_SPICANReadID        ; [CPU_] |732| 
        ; call occurs [#_SPICANReadID] ; [] |732| 
	.dwpsn	file "../Source/SPICAN.c",line 733,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 733 | SPICANReadBuf_Array(arr, 1);                                           
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |733| 
	.dwpsn	file "../Source/SPICAN.c",line 732,column 4,is_stmt,isa 0
        MOVL      *-SP[6],ACC           ; [CPU_] |732| 
	.dwpsn	file "../Source/SPICAN.c",line 733,column 4,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |733| 
        SUBB      XAR4,#14              ; [CPU_U] |733| 
        MOVZ      AR4,AR4               ; [CPU_] |733| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |733| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |733| 
	.dwpsn	file "../Source/SPICAN.c",line 735,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 735 | processModStatus(arr, addr);                                           
; 740 | // For now, send back dummy data                                       
; 741 | // Wait for the TX Buffer to be ready                                  
; 742 | //SPICANWaitForTXBuf(0);                                               
; 743 | // Set the message on the buffer                                       
; 744 | //SPICANReadSetT0Message(0x32, 8, arr);                                
; 745 | //SPICANWaitForTXBuf(0);                                               
; 746 | // Signal that the message is ready to send                            
; 747 | //SPICAN_T0_RTS();                                                     
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |735| 
        MOVL      ACC,*-SP[6]           ; [CPU_] |735| 
        SUBB      XAR4,#14              ; [CPU_U] |735| 
        MOVZ      AR4,AR4               ; [CPU_] |735| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_processModStatus")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #_processModStatus    ; [CPU_] |735| 
        ; call occurs [#_processModStatus] ; [] |735| 
	.dwpsn	file "../Source/SPICAN.c",line 748,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 748 | bits_to_flip |= 0x02;                                                  
; 750 | // RX0 Interrupt                                                       
;----------------------------------------------------------------------
        MOVB      XAR1,#2               ; [CPU_] |748| 
$C$L17:    
	.dwpsn	file "../Source/SPICAN.c",line 751,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 751 | if((interrupts & 0x01) == 0x01)                                        
;----------------------------------------------------------------------
        TBIT      *-SP[1],#0            ; [CPU_] |751| 
        B         $C$L19,NTC            ; [CPU_] |751| 
        ; branchcc occurs ; [] |751| 
        MOV       AL,AR1                ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 753,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 753 | if(bits_to_flip > 0x00)                                                
;----------------------------------------------------------------------
        B         $C$L18,LEQ            ; [CPU_] |753| 
        ; branchcc occurs ; [] |753| 
	.dwpsn	file "../Source/SPICAN.c",line 754,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 754 | delay_us(5);                                                           
;----------------------------------------------------------------------
        MOVB      AL,#5                 ; [CPU_] |754| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_delay_us")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |754| 
        ; call occurs [#_delay_us] ; [] |754| 
$C$L18:    
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#96                ; [CPU_] |190| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_spi_recv")
	.dwattr $C$DW$231, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 756,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 756 | res = SPICANRead(0x60);                                                
;----------------------------------------------------------------------
        MOV       *-SP[3],AL            ; [CPU_] |756| 
	.dwpsn	file "../Source/SPICAN.c",line 758,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 758 | addr = SPICANReadID(0);                                                
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |758| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_SPICANReadID")
	.dwattr $C$DW$232, DW_AT_TI_call

        LCR       #_SPICANReadID        ; [CPU_] |758| 
        ; call occurs [#_SPICANReadID] ; [] |758| 
	.dwpsn	file "../Source/SPICAN.c",line 759,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 759 | SPICANReadBuf_Array(arr, 0);                                           
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |759| 
	.dwpsn	file "../Source/SPICAN.c",line 758,column 4,is_stmt,isa 0
        MOVL      *-SP[6],ACC           ; [CPU_] |758| 
	.dwpsn	file "../Source/SPICAN.c",line 759,column 4,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |759| 
        SUBB      XAR4,#14              ; [CPU_U] |759| 
        MOVZ      AR4,AR4               ; [CPU_] |759| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$233, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |759| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |759| 
	.dwpsn	file "../Source/SPICAN.c",line 761,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 761 | processJSRStatus(arr, addr);                                           
; 765 | //SPICANReadBuf_Array(arr, 0);                                         
; 766 | //SPICANReadID_Array(arr,0);                                           
; 767 | //addr = SPICANReadID(0);                                              
; 768 | // For now, send back dummy data                                       
; 769 | // Wait for the TX Buffer to be ready                                  
; 770 | //SPICANWaitForTXBuf(0);                                               
; 771 | // Set the message on the buffer                                       
; 772 | //SPICANReadSetT0Message(0x43, 8, arr);                                
; 773 | //SPICANWaitForTXBuf(0);                                               
; 774 | // Signal that the message is ready to send                            
; 775 | //SPICAN_T0_RTS();                                                     
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |761| 
        MOVL      ACC,*-SP[6]           ; [CPU_] |761| 
        SUBB      XAR4,#14              ; [CPU_U] |761| 
        MOVZ      AR4,AR4               ; [CPU_] |761| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_processJSRStatus")
	.dwattr $C$DW$234, DW_AT_TI_call

        LCR       #_processJSRStatus    ; [CPU_] |761| 
        ; call occurs [#_processJSRStatus] ; [] |761| 
        MOV       AL,AR1                ; [CPU_] |761| 
	.dwpsn	file "../Source/SPICAN.c",line 776,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 776 | bits_to_flip |= 0x01;                                                  
;----------------------------------------------------------------------
        ORB       AL,#0x01              ; [CPU_] |776| 
        MOVZ      AR1,AL                ; [CPU_] |776| 
$C$L19:    
        MOV       AH,AR1                ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 778,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 778 | SPICANBitModify(0x2C, bits_to_flip, 0x00);                             
; 793 | // Clear the interrupts                                                
; 794 | // SPICANWrite(0x0E, 0x00);                                            
; 795 | // SPICANWrite(0x2C, 0x00);                                            
; 796 | //      SPICANCheckInts(447);                                          
; 797 | return;                                                                
;----------------------------------------------------------------------
        MOVB      AL,#44                ; [CPU_] |778| 
        MOVB      XAR4,#0               ; [CPU_] |778| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |778| 
        ; call occurs [#_SPICANBitModify] ; [] |778| 
$C$L20:    
        SUBB      SP,#14                ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$209, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$209, DW_AT_TI_end_line(0x31e)
	.dwattr $C$DW$209, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$209

	.sect	".text"
	.clink
	.global	_SPICANReset

$C$DW$237	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$237, DW_AT_name("SPICANReset")
	.dwattr $C$DW$237, DW_AT_low_pc(_SPICANReset)
	.dwattr $C$DW$237, DW_AT_high_pc(0x00)
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_SPICANReset")
	.dwattr $C$DW$237, DW_AT_external
	.dwattr $C$DW$237, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$237, DW_AT_TI_begin_line(0xae)
	.dwattr $C$DW$237, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$237, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 175,column 1,is_stmt,address _SPICANReset,isa 0

	.dwfde $C$DW$CIE, _SPICANReset
;----------------------------------------------------------------------
; 174 | void SPICANReset (void)                                                
; 176 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReset                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANReset:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 177,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |177| 
	.dwpsn	file "../Source/SPICAN.c",line 176,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |176| 
	.dwpsn	file "../Source/SPICAN.c",line 177,column 2,is_stmt,isa 0
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$238, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |177| 
        ; call occurs [#_spi_xmit] ; [] |177| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 178,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 178 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 179 | return;                                                                
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |178| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$237, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$237, DW_AT_TI_end_line(0xb4)
	.dwattr $C$DW$237, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$237

	.sect	".text"
	.clink
	.global	_SPICANReadyConfig

$C$DW$240	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$240, DW_AT_name("SPICANReadyConfig")
	.dwattr $C$DW$240, DW_AT_low_pc(_SPICANReadyConfig)
	.dwattr $C$DW$240, DW_AT_high_pc(0x00)
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_SPICANReadyConfig")
	.dwattr $C$DW$240, DW_AT_external
	.dwattr $C$DW$240, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$240, DW_AT_TI_begin_line(0x2a)
	.dwattr $C$DW$240, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$240, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 43,column 1,is_stmt,address _SPICANReadyConfig,isa 0

	.dwfde $C$DW$CIE, _SPICANReadyConfig
;----------------------------------------------------------------------
;  42 | void SPICANReadyConfig(void)                                           
;  44 | Uint16 res;                                                            
;  45 | res = SPICANRead(SPICAN_CANSTAT);                                      
;  46 | while((res & 0xE0) != 0x80)                                            
;  47 |         res = SPICANRead(SPICAN_CANSTAT);                              
;  48 | return;                                                                
;  51 | void SPICANMasksFilts(void)                                            
;  53 | volatile Uint16 res;                                                   
;  56 | volatile int acc0, acc1, acc2, acc3, acc4, acc5;                       
;  57 | volatile int mask0, mask1;                                             
;  59 | SPICANWrite(0x0F, 0x80);                // Set CANCTRL to 0x80 (config
;     | mode)                                                                  
;  66 | // FILT: 111 1110 0000                                                 
;  67 | // MASK: 111 1111 1111                                                 
;  68 | // RSLT: 111 1110 0000 (X is don't care)                               
;  70 | SPICANWrite(0x20, 0xFF);                // mask 0 match only specific I
;     | D                                                                      
;  71 | SPICANWrite(0x21, 0xFF);                                               
;  72 | SPICANWrite(0x22, 0xFF);                                               
;  73 | SPICANWrite(0x23, 0xFF);                                               
;  75 | SPICANWrite(0x24, 0x00);                // mask 1 match all IDs        
;  76 | SPICANWrite(0x25, 0x00);                                               
;  77 | SPICANWrite(0x26, 0x00);                                               
;  78 | SPICANWrite(0x27, 0x00);                                               
;  80 | SPICANWrite(0x00, 0xC7);                        // only look for 0x18FA
;     | 000                                                                    
;  81 | SPICANWrite(0x01, 0xEB);                                               
;  82 | SPICANWrite(0x02, 0xA0);                                               
;  83 | SPICANWrite(0x03, 0x00);                                               
;  85 | SPICANWrite(0x04, 0xC7);                        // only look for 0x18FA
;     | 000                                                                    
;  86 | SPICANWrite(0x05, 0xEB);                                               
;  87 | SPICANWrite(0x06, 0xA0);                                               
;  88 | SPICANWrite(0x07, 0x00);                                               
;  90 | SPICANWrite(0x08, 0xC7);                        // only look for 0x18FF
;     | B000                                                                   
;  91 | SPICANWrite(0x09, 0xEB);                                               
;  92 | SPICANWrite(0x0A, 0xA0);                                               
;  93 | SPICANWrite(0x0B, 0x00);                                               
;  97 | //      ECanaMboxes.MBOX6.MSGID.all = 0x18FFB000;                      
;  98 | //      ECanaMboxes.MBOX7.MSGID.all = 0x18FFB100;                      
;  99 | //      ECanaMboxes.MBOX8.MSGID.all = 0x18FFB200;                      
; 100 | //      ECanaMboxes.MBOX9.MSGID.all = 0x18FFB300;                      
; 101 | //      ECanaMboxes.MBOX10.MSGID.all = 0x18FFB400;                     
; 106 | SPICANWrite(0x08, 0xFC);                        // only look for 0x7E1
;     | (FC2 = 7E1<<1)                                                         
; 107 | SPICANWrite(0x09, 0x20);                                               
; 111 | acc0 = (SPICANRead(0x00)<<3) + ((SPICANRead(0x01)&0xe0)>>5);           
; 112 | acc1 = (SPICANRead(0x04)<<3) + ((SPICANRead(0x05)&0xe0)>>5);           
; 113 | acc2 = (SPICANRead(0x08)<<3) + ((SPICANRead(0x09)&0xe0)>>5);           
; 114 | acc3 = (SPICANRead(0x10)<<3) + ((SPICANRead(0x11)&0xe0)>>5);           
; 115 | acc4 = (SPICANRead(0x14)<<3) + ((SPICANRead(0x15)&0xe0)>>5);           
; 116 | acc5 = (SPICANRead(0x18)<<3) + ((SPICANRead(0x19)&0xe0)>>5);           
; 118 | mask0 = (SPICANRead(0x20)<<3) + ((SPICANRead(0x21)&0xe0)>>5);          
; 119 | mask1 = (SPICANRead(0x24)<<3) + ((SPICANRead(0x25)&0xe0)>>5);          
; 121 | acc0++;                                                                
; 161 | //      res = SPICANRead(0x00);                                        
; 162 | //      res = SPICANRead(0x01);                                        
; 163 | //      res = SPICANRead(0x20);                                        
; 164 | //      res = SPICANRead(0x21);                                        
; 165 | //      res++;                                                         
; 166 | // MASK: 111 1100 1000                                                 
; 167 | // FILT: 100 0000 0000                                                 
; 168 | // RSLT: 100 00XX 0XXX (X is don't care)                               
; 169 | return;                                                                
; 174 | void SPICANReset (void)                                                
; 176 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
; 177 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
; 178 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 179 | return;                                                                
; 182 | // Responsible for reading the status of a                             
; 183 | // register address on the SPICAN Control Register                     
; 184 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 185 | Uint16 SPICANRead (Uint16 Input)                                       
; 187 | Uint16  RetVal;                                                        
; 188 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadyConfig            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANReadyConfig:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$241, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |190| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$242, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_spi_recv")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 46,column 8,is_stmt,isa 0
        ANDB      AL,#224               ; [CPU_] |46| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 46,column 8,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |46| 
        B         $C$L22,EQ             ; [CPU_] |46| 
        ; branchcc occurs ; [] |46| 
$C$L21:    
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_] |190| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_spi_recv")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 193,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 193 | return(RetVal);                                                        
;----------------------------------------------------------------------
        ANDB      AL,#224               ; [CPU_] |193| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 193,column 2,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |193| 
        B         $C$L21,NEQ            ; [CPU_] |193| 
        ; branchcc occurs ; [] |193| 
$C$L22:    
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$240, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$240, DW_AT_TI_end_line(0x31)
	.dwattr $C$DW$240, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$240

	.sect	".text"
	.clink
	.global	_SPICANReadStat

$C$DW$248	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$248, DW_AT_name("SPICANReadStat")
	.dwattr $C$DW$248, DW_AT_low_pc(_SPICANReadStat)
	.dwattr $C$DW$248, DW_AT_high_pc(0x00)
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_SPICANReadStat")
	.dwattr $C$DW$248, DW_AT_external
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$248, DW_AT_TI_begin_line(0xd2)
	.dwattr $C$DW$248, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$248, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 211,column 1,is_stmt,address _SPICANReadStat,isa 0

	.dwfde $C$DW$CIE, _SPICANReadStat
;----------------------------------------------------------------------
; 210 | Uint16 SPICANReadStat (void)                                           
; 212 | Uint16  RetVal;                                                        
; 213 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadStat               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANReadStat:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 214,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |214| 
	.dwpsn	file "../Source/SPICAN.c",line 213,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |213| 
	.dwpsn	file "../Source/SPICAN.c",line 214,column 2,is_stmt,isa 0
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |214| 
        ; call occurs [#_spi_xmit] ; [] |214| 
	.dwpsn	file "../Source/SPICAN.c",line 215,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |215| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |215| 
        ; call occurs [#_spi_xmit] ; [] |215| 
	.dwpsn	file "../Source/SPICAN.c",line 216,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_spi_recv")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |216| 
        ; call occurs [#_spi_recv] ; [] |216| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 217,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 217 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 218 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |217| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$248, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$248, DW_AT_TI_end_line(0xdb)
	.dwattr $C$DW$248, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$248

	.sect	".text"
	.clink
	.global	_SPICANReadSetT0MessageExt

$C$DW$253	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$253, DW_AT_name("SPICANReadSetT0MessageExt")
	.dwattr $C$DW$253, DW_AT_low_pc(_SPICANReadSetT0MessageExt)
	.dwattr $C$DW$253, DW_AT_high_pc(0x00)
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_SPICANReadSetT0MessageExt")
	.dwattr $C$DW$253, DW_AT_external
	.dwattr $C$DW$253, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$253, DW_AT_TI_begin_line(0x15d)
	.dwattr $C$DW$253, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$253, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 350,column 1,is_stmt,address _SPICANReadSetT0MessageExt,isa 0

	.dwfde $C$DW$CIE, _SPICANReadSetT0MessageExt
$C$DW$254	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$254, DW_AT_name("canAddressExt")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_canAddressExt")
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$254, DW_AT_location[DW_OP_reg0]

$C$DW$255	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$255, DW_AT_name("numBytes")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_location[DW_OP_reg14]

$C$DW$256	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$256, DW_AT_name("buf")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$256, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 349 | void SPICANReadSetT0MessageExt(long canAddressExt, Uint16 numBytes, Uin
;     | t16 *buf)                                                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadSetT0MessageExt    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SPICANReadSetT0MessageExt:
;* AR1   assigned to _numBytes
$C$DW$257	.dwtag  DW_TAG_variable
	.dwattr $C$DW$257, DW_AT_name("numBytes")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$257, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _buf
$C$DW$258	.dwtag  DW_TAG_variable
	.dwattr $C$DW$258, DW_AT_name("buf")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$258, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 351 | // Set the new address                                                 
;----------------------------------------------------------------------
        MOVZ      AR1,AR5               ; [CPU_] |350| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] |350| 
	.dwpsn	file "../Source/SPICAN.c",line 352,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 352 | SPICAN_SetT0AddrExt(canAddressExt);                                    
; 354 | // Set the data                                                        
;----------------------------------------------------------------------
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_SPICAN_SetT0AddrExt")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #_SPICAN_SetT0AddrExt ; [CPU_] |352| 
        ; call occurs [#_SPICAN_SetT0AddrExt] ; [] |352| 
	.dwpsn	file "../Source/SPICAN.c",line 355,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 355 | SPICAN_SetT0Data(numBytes, buf);                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |355| 
        MOVL      XAR4,XAR2             ; [CPU_] |355| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Data    ; [CPU_] |355| 
        ; call occurs [#_SPICAN_SetT0Data] ; [] |355| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$253, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$253, DW_AT_TI_end_line(0x164)
	.dwattr $C$DW$253, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$253

	.sect	".text"
	.clink
	.global	_SPICANReadSetT0Message

$C$DW$262	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$262, DW_AT_name("SPICANReadSetT0Message")
	.dwattr $C$DW$262, DW_AT_low_pc(_SPICANReadSetT0Message)
	.dwattr $C$DW$262, DW_AT_high_pc(0x00)
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$262, DW_AT_external
	.dwattr $C$DW$262, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$262, DW_AT_TI_begin_line(0x153)
	.dwattr $C$DW$262, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$262, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 340,column 1,is_stmt,address _SPICANReadSetT0Message,isa 0

	.dwfde $C$DW$CIE, _SPICANReadSetT0Message
$C$DW$263	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$263, DW_AT_name("canAddress")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_location[DW_OP_reg0]

$C$DW$264	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$264, DW_AT_name("numBytes")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_location[DW_OP_reg1]

$C$DW$265	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$265, DW_AT_name("buf")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$265, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 339 | void SPICANReadSetT0Message(Uint16 canAddress, Uint16 numBytes, Uint16
;     | *buf)                                                                  
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadSetT0Message       FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************

_SPICANReadSetT0Message:
;* AR1   assigned to _numBytes
$C$DW$266	.dwtag  DW_TAG_variable
	.dwattr $C$DW$266, DW_AT_name("numBytes")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$266, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _buf
$C$DW$267	.dwtag  DW_TAG_variable
	.dwattr $C$DW$267, DW_AT_name("buf")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$267, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 341 | // Set the new address                                                 
;----------------------------------------------------------------------
        MOVZ      AR1,AH                ; [CPU_] |340| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] |340| 
	.dwpsn	file "../Source/SPICAN.c",line 342,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 342 | SPICAN_SetT0Addr(canAddress);                                          
; 344 | // Set the data                                                        
;----------------------------------------------------------------------
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Addr    ; [CPU_] |342| 
        ; call occurs [#_SPICAN_SetT0Addr] ; [] |342| 
	.dwpsn	file "../Source/SPICAN.c",line 345,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 345 | SPICAN_SetT0Data(numBytes, buf);                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |345| 
        MOVL      XAR4,XAR2             ; [CPU_] |345| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Data    ; [CPU_] |345| 
        ; call occurs [#_SPICAN_SetT0Data] ; [] |345| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$262, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$262, DW_AT_TI_end_line(0x15a)
	.dwattr $C$DW$262, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$262

	.sect	".text"
	.clink
	.global	_SPICANReadInts

$C$DW$271	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$271, DW_AT_name("SPICANReadInts")
	.dwattr $C$DW$271, DW_AT_low_pc(_SPICANReadInts)
	.dwattr $C$DW$271, DW_AT_high_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_SPICANReadInts")
	.dwattr $C$DW$271, DW_AT_external
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x202)
	.dwattr $C$DW$271, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$271, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 515,column 1,is_stmt,address _SPICANReadInts,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInts
;----------------------------------------------------------------------
; 514 | Uint16 SPICANReadInts(void)                                            
; 516 | Uint16 count, res;                                                     
; 517 | count = 0;                                                             
; 518 | res = SPICANRead(0x2C);                                                
; 519 | while(res == 0xFF)                                                     
; 521 |         // delay_us(1);                                                
; 522 |         res = SPICANRead(0x2C);                                        
; 524 | return res;                                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadInts               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANReadInts:
;* AL    assigned to _res
$C$DW$272	.dwtag  DW_TAG_variable
	.dwattr $C$DW$272, DW_AT_name("res")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |190| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("_spi_recv")
	.dwattr $C$DW$275, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 193,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |193| 
        B         $C$L24,NEQ            ; [CPU_] |193| 
        ; branchcc occurs ; [] |193| 
$C$L23:    
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$276, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |190| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("_spi_recv")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 193,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |193| 
        B         $C$L23,EQ             ; [CPU_] |193| 
        ; branchcc occurs ; [] |193| 
$C$L24:    
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$271, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x20d)
	.dwattr $C$DW$271, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$271

	.sect	".text"
	.clink
	.global	_SPICANReadInt

$C$DW$280	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$280, DW_AT_name("SPICANReadInt")
	.dwattr $C$DW$280, DW_AT_low_pc(_SPICANReadInt)
	.dwattr $C$DW$280, DW_AT_high_pc(0x00)
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_SPICANReadInt")
	.dwattr $C$DW$280, DW_AT_external
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$280, DW_AT_TI_begin_line(0xef)
	.dwattr $C$DW$280, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$280, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 240,column 1,is_stmt,address _SPICANReadInt,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInt
;----------------------------------------------------------------------
; 239 | Uint16 SPICANReadInt (void)                                            
; 241 | Uint16 RetVal;                                                         
; 242 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadInt                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANReadInt:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 243,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |243| 
	.dwpsn	file "../Source/SPICAN.c",line 242,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |242| 
	.dwpsn	file "../Source/SPICAN.c",line 243,column 2,is_stmt,isa 0
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$281, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |243| 
        ; call occurs [#_spi_xmit] ; [] |243| 
	.dwpsn	file "../Source/SPICAN.c",line 244,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |244| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$282, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |244| 
        ; call occurs [#_spi_xmit] ; [] |244| 
	.dwpsn	file "../Source/SPICAN.c",line 245,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$283	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$283, DW_AT_low_pc(0x00)
	.dwattr $C$DW$283, DW_AT_name("_spi_recv")
	.dwattr $C$DW$283, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |245| 
        ; call occurs [#_spi_recv] ; [] |245| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 246,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |246| 
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$280, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$280, DW_AT_TI_end_line(0xf7)
	.dwattr $C$DW$280, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$280

	.sect	".text"
	.clink
	.global	_SPICANReadID_Array

$C$DW$285	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$285, DW_AT_name("SPICANReadID_Array")
	.dwattr $C$DW$285, DW_AT_low_pc(_SPICANReadID_Array)
	.dwattr $C$DW$285, DW_AT_high_pc(0x00)
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_SPICANReadID_Array")
	.dwattr $C$DW$285, DW_AT_external
	.dwattr $C$DW$285, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$285, DW_AT_TI_begin_line(0x121)
	.dwattr $C$DW$285, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$285, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 290,column 1,is_stmt,address _SPICANReadID_Array,isa 0

	.dwfde $C$DW$CIE, _SPICANReadID_Array
$C$DW$286	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$286, DW_AT_name("data")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$286, DW_AT_location[DW_OP_reg12]

$C$DW$287	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$287, DW_AT_name("whichBuf")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 289 | void SPICANReadID_Array (Uint16 data[], Uint16 whichBuf)               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadID_Array           FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_SPICANReadID_Array:
;* AR3   assigned to _data
$C$DW$288	.dwtag  DW_TAG_variable
	.dwattr $C$DW$288, DW_AT_name("data")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$288, DW_AT_location[DW_OP_reg10]

;* AL    assigned to _RetVal
$C$DW$289	.dwtag  DW_TAG_variable
	.dwattr $C$DW$289, DW_AT_name("RetVal")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$290	.dwtag  DW_TAG_variable
	.dwattr $C$DW$290, DW_AT_name("RetVal")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$291	.dwtag  DW_TAG_variable
	.dwattr $C$DW$291, DW_AT_name("RetVal")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$292	.dwtag  DW_TAG_variable
	.dwattr $C$DW$292, DW_AT_name("RetVal")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$293	.dwtag  DW_TAG_variable
	.dwattr $C$DW$293, DW_AT_name("RetVal")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$294	.dwtag  DW_TAG_variable
	.dwattr $C$DW$294, DW_AT_name("RetVal")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_location[DW_OP_reg0]

;* AR2   assigned to _RetVal
$C$DW$295	.dwtag  DW_TAG_variable
	.dwattr $C$DW$295, DW_AT_name("RetVal")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _RetVal
$C$DW$296	.dwtag  DW_TAG_variable
	.dwattr $C$DW$296, DW_AT_name("RetVal")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$297	.dwtag  DW_TAG_variable
	.dwattr $C$DW$297, DW_AT_name("RetVal")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_location[DW_OP_reg16]

;* AL    assigned to _RetVal
$C$DW$298	.dwtag  DW_TAG_variable
	.dwattr $C$DW$298, DW_AT_name("RetVal")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_location[DW_OP_reg0]

$C$DW$299	.dwtag  DW_TAG_variable
	.dwattr $C$DW$299, DW_AT_name("k")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$299, DW_AT_location[DW_OP_breg20 -1]

$C$DW$300	.dwtag  DW_TAG_variable
	.dwattr $C$DW$300, DW_AT_name("res")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$300, DW_AT_location[DW_OP_breg20 -2]

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
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 290,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | volatile int k;                                                        
; 292 | volatile Uint16 res;                                                   
;----------------------------------------------------------------------
        MOVL      XAR3,XAR4             ; [CPU_] |290| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$301, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#96                ; [CPU_] |190| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$302, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("_spi_recv")
	.dwattr $C$DW$303, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 294,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 294 | data[0] = SPICANRead(0x60);                                            
;----------------------------------------------------------------------
        MOV       *+XAR3[0],AL          ; [CPU_] |294| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$304, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#97                ; [CPU_] |190| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$305, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("_spi_recv")
	.dwattr $C$DW$306, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 295,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 295 | data[1] = (SPICANRead(0x61)>>3);                                       
;----------------------------------------------------------------------
        LSR       AL,3                  ; [CPU_] |295| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 295,column 2,is_stmt,isa 0
        MOV       *+XAR3[1],AL          ; [CPU_] |295| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$307, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#98                ; [CPU_] |190| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$308, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("_spi_recv")
	.dwattr $C$DW$309, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR2,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$310, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#98                ; [CPU_] |190| 
$C$DW$311	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$311, DW_AT_low_pc(0x00)
	.dwattr $C$DW$311, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$311, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$312	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$312, DW_AT_low_pc(0x00)
	.dwattr $C$DW$312, DW_AT_name("_spi_recv")
	.dwattr $C$DW$312, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$313	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$313, DW_AT_low_pc(0x00)
	.dwattr $C$DW$313, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$313, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#97                ; [CPU_] |190| 
$C$DW$314	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$314, DW_AT_low_pc(0x00)
	.dwattr $C$DW$314, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$314, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$315	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$315, DW_AT_low_pc(0x00)
	.dwattr $C$DW$315, DW_AT_name("_spi_recv")
	.dwattr $C$DW$315, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR6,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 296,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 296 | data[2] = (SPICANRead(0x62)&0x03) + ((SPICANRead(0x62)&0xE0)>>3) + ((SP
;     | ICANRead(0x61)&0x07)<<5);                                              
;----------------------------------------------------------------------
        MOV       AH,AR1                ; [CPU_] |296| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 296,column 2,is_stmt,isa 0
        LSR       AH,3                  ; [CPU_] |296| 
        AND       AL,AR2,#0x0003        ; [CPU_] |296| 
        ANDB      AH,#0x1c              ; [CPU_] |296| 
        ADD       AH,AL                 ; [CPU_] |296| 
        AND       AL,AR6,#0x0007        ; [CPU_] |296| 
        LSL       AL,5                  ; [CPU_] |296| 
        ADD       AL,AH                 ; [CPU_] |296| 
        MOV       *+XAR3[2],AL          ; [CPU_] |296| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$316, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#99                ; [CPU_] |190| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$317, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("_spi_recv")
	.dwattr $C$DW$318, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 297,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 297 | data[3] = SPICANRead(0x63);                                            
;----------------------------------------------------------------------
        MOV       *+XAR3[3],AL          ; [CPU_] |297| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$319, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#100               ; [CPU_] |190| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$320, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("_spi_recv")
	.dwattr $C$DW$321, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 298,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 298 | data[4] = SPICANRead(0x64);                                            
;----------------------------------------------------------------------
        MOV       *+XAR3[4],AL          ; [CPU_] |298| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$322, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#97                ; [CPU_] |190| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$323, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("_spi_recv")
	.dwattr $C$DW$324, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 299,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 299 | data[5] = SPICANRead(0x61);                                            
;----------------------------------------------------------------------
        MOV       *+XAR3[5],AL          ; [CPU_] |299| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$325, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#98                ; [CPU_] |190| 
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$326, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_name("_spi_recv")
	.dwattr $C$DW$327, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 300,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | data[6] = SPICANRead(0x62);                                            
;----------------------------------------------------------------------
        MOV       *+XAR3[6],AL          ; [CPU_] |300| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$328	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$328, DW_AT_low_pc(0x00)
	.dwattr $C$DW$328, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$328, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#99                ; [CPU_] |190| 
$C$DW$329	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$329, DW_AT_low_pc(0x00)
	.dwattr $C$DW$329, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$329, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$330	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$330, DW_AT_low_pc(0x00)
	.dwattr $C$DW$330, DW_AT_name("_spi_recv")
	.dwattr $C$DW$330, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 301,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 301 | data[7] = SPICANRead(0x63);                                            
;----------------------------------------------------------------------
        MOV       *+XAR3[7],AL          ; [CPU_] |301| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$331	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$331, DW_AT_low_pc(0x00)
	.dwattr $C$DW$331, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$331, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#100               ; [CPU_] |190| 
$C$DW$332	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$332, DW_AT_low_pc(0x00)
	.dwattr $C$DW$332, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$332, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$333	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$333, DW_AT_low_pc(0x00)
	.dwattr $C$DW$333, DW_AT_name("_spi_recv")
	.dwattr $C$DW$333, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 302,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 302 | res = SPICANRead(0x64);                                                
;----------------------------------------------------------------------
        MOV       *-SP[2],AL            ; [CPU_] |302| 
	.dwpsn	file "../Source/SPICAN.c",line 303,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | k++;                                                                   
;----------------------------------------------------------------------
        INC       *-SP[1]               ; [CPU_] |303| 
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
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$285, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$285, DW_AT_TI_end_line(0x135)
	.dwattr $C$DW$285, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$285

	.sect	".text"
	.clink
	.global	_SPICANRXStatus

$C$DW$335	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$335, DW_AT_name("SPICANRXStatus")
	.dwattr $C$DW$335, DW_AT_low_pc(_SPICANRXStatus)
	.dwattr $C$DW$335, DW_AT_high_pc(0x00)
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_SPICANRXStatus")
	.dwattr $C$DW$335, DW_AT_external
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$335, DW_AT_TI_begin_line(0xf9)
	.dwattr $C$DW$335, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$335, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 250,column 1,is_stmt,address _SPICANRXStatus,isa 0

	.dwfde $C$DW$CIE, _SPICANRXStatus
;----------------------------------------------------------------------
; 249 | Uint16 SPICANRXStatus (void)                                           
; 251 | Uint16  RetVal;                                                        
; 252 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRXStatus               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SPICANRXStatus:
;* AR1   assigned to _RetVal
$C$DW$336	.dwtag  DW_TAG_variable
	.dwattr $C$DW$336, DW_AT_name("RetVal")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | spi_xmit(SPICAN_RXSTAT);                                               
;----------------------------------------------------------------------
        MOVB      AL,#176               ; [CPU_] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 252,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |252| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$337, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |253| 
        ; call occurs [#_spi_xmit] ; [] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 254 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_name("_spi_recv")
	.dwattr $C$DW$338, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |254| 
        ; call occurs [#_spi_recv] ; [] |254| 
        MOVZ      AR1,AL                ; [CPU_] |254| 
	.dwpsn	file "../Source/SPICAN.c",line 255,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$339	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$339, DW_AT_low_pc(0x00)
	.dwattr $C$DW$339, DW_AT_name("_spi_recv")
	.dwattr $C$DW$339, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |255| 
        ; call occurs [#_spi_recv] ; [] |255| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 256,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 256 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |256| 
	.dwpsn	file "../Source/SPICAN.c",line 257,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 257 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |257| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$340	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$340, DW_AT_low_pc(0x00)
	.dwattr $C$DW$340, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$335, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$335, DW_AT_TI_end_line(0x102)
	.dwattr $C$DW$335, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$335

	.sect	".text"
	.clink
	.global	_SPICANRXBufReady

$C$DW$341	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$341, DW_AT_name("SPICANRXBufReady")
	.dwattr $C$DW$341, DW_AT_low_pc(_SPICANRXBufReady)
	.dwattr $C$DW$341, DW_AT_high_pc(0x00)
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_SPICANRXBufReady")
	.dwattr $C$DW$341, DW_AT_external
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$341, DW_AT_TI_begin_line(0x1bb)
	.dwattr $C$DW$341, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$341, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 444,column 1,is_stmt,address _SPICANRXBufReady,isa 0

	.dwfde $C$DW$CIE, _SPICANRXBufReady
;----------------------------------------------------------------------
; 443 | Uint16 SPICANRXBufReady(void)                                          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRXBufReady             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SPICANRXBufReady:
;* AR1   assigned to _RetVal
$C$DW$342	.dwtag  DW_TAG_variable
	.dwattr $C$DW$342, DW_AT_name("RetVal")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 252,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |252| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
$C$DW$343	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$343, DW_AT_low_pc(0x00)
	.dwattr $C$DW$343, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$343, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |253| 
        ; call occurs [#_spi_xmit] ; [] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
$C$DW$344	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$344, DW_AT_low_pc(0x00)
	.dwattr $C$DW$344, DW_AT_name("_spi_recv")
	.dwattr $C$DW$344, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |254| 
        ; call occurs [#_spi_recv] ; [] |254| 
        MOVZ      AR1,AL                ; [CPU_] |254| 
	.dwpsn	file "../Source/SPICAN.c",line 255,column 2,is_stmt,isa 0
$C$DW$345	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$345, DW_AT_low_pc(0x00)
	.dwattr $C$DW$345, DW_AT_name("_spi_recv")
	.dwattr $C$DW$345, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |255| 
        ; call occurs [#_spi_recv] ; [] |255| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 445,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 445 | return (SPICANRXStatus() & 0xC0) >> 6;                                 
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |445| 
	.dwpsn	file "../Source/SPICAN.c",line 256,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |256| 
	.dwpsn	file "../Source/SPICAN.c",line 445,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |445| 
        ANDB      AL,#0x03              ; [CPU_] |445| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$346	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$346, DW_AT_low_pc(0x00)
	.dwattr $C$DW$346, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$341, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$341, DW_AT_TI_end_line(0x1be)
	.dwattr $C$DW$341, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$341

	.sect	".text"
	.clink
	.global	_SPICANReadBufs

$C$DW$347	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$347, DW_AT_name("SPICANReadBufs")
	.dwattr $C$DW$347, DW_AT_low_pc(_SPICANReadBufs)
	.dwattr $C$DW$347, DW_AT_high_pc(0x00)
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_SPICANReadBufs")
	.dwattr $C$DW$347, DW_AT_external
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$347, DW_AT_TI_begin_line(0x1c0)
	.dwattr $C$DW$347, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$347, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 449,column 1,is_stmt,address _SPICANReadBufs,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBufs
$C$DW$348	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$348, DW_AT_name("buf1")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$348, DW_AT_location[DW_OP_reg12]

$C$DW$349	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$349, DW_AT_name("buf2")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$349, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 448 | Uint16 SPICANReadBufs(Uint16 buf1[], Uint16 buf2[])                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadBufs               FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  6 SOE     *
;***************************************************************

_SPICANReadBufs:
;* AR1   assigned to _RetVal
$C$DW$350	.dwtag  DW_TAG_variable
	.dwattr $C$DW$350, DW_AT_name("RetVal")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_location[DW_OP_reg6]

$C$DW$351	.dwtag  DW_TAG_variable
	.dwattr $C$DW$351, DW_AT_name("res")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_location[DW_OP_breg20 -1]

$C$DW$352	.dwtag  DW_TAG_variable
	.dwattr $C$DW$352, DW_AT_name("buf_status")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_buf_status")
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_location[DW_OP_breg20 -2]

;* AR3   assigned to _buf2
$C$DW$353	.dwtag  DW_TAG_variable
	.dwattr $C$DW$353, DW_AT_name("buf2")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$353, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _buf1
$C$DW$354	.dwtag  DW_TAG_variable
	.dwattr $C$DW$354, DW_AT_name("buf1")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$354, DW_AT_location[DW_OP_reg8]

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
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 449,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 450 | Uint16 buf_status;                                                     
;----------------------------------------------------------------------
        MOVL      XAR3,XAR5             ; [CPU_] |449| 
        MOVL      XAR2,XAR4             ; [CPU_] |449| 
	.dwpsn	file "../Source/SPICAN.c",line 252,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |252| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
$C$DW$355	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$355, DW_AT_low_pc(0x00)
	.dwattr $C$DW$355, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$355, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |253| 
        ; call occurs [#_spi_xmit] ; [] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
$C$DW$356	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$356, DW_AT_low_pc(0x00)
	.dwattr $C$DW$356, DW_AT_name("_spi_recv")
	.dwattr $C$DW$356, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |254| 
        ; call occurs [#_spi_recv] ; [] |254| 
        MOVZ      AR1,AL                ; [CPU_] |254| 
	.dwpsn	file "../Source/SPICAN.c",line 255,column 2,is_stmt,isa 0
$C$DW$357	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$357, DW_AT_low_pc(0x00)
	.dwattr $C$DW$357, DW_AT_name("_spi_recv")
	.dwattr $C$DW$357, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |255| 
        ; call occurs [#_spi_recv] ; [] |255| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 445,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |445| 
	.dwpsn	file "../Source/SPICAN.c",line 451,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 451 | Uint16 res = 0x00;                                                     
; 453 | // Get the status of the RX Buffs                                      
; 454 | buf_status = SPICANRXBufReady();                                       
; 455 | // buf_status = SPICANRead(0x2C); // Get the interrupt status          
; 456 | // SPICANWrite(0x2C, (buf_status & 0xFC)); // Reset the RX interrupts  
; 457 | // buf_status = (buf_status & 0x03);                                   
; 459 | // Check if there's a message in the RX Buffers                        
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_] |451| 
	.dwpsn	file "../Source/SPICAN.c",line 256,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |256| 
	.dwpsn	file "../Source/SPICAN.c",line 445,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |445| 
        ANDB      AL,#0x03              ; [CPU_] |445| 
        MOV       *-SP[2],AL            ; [CPU_] |445| 
	.dwpsn	file "../Source/SPICAN.c",line 460,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 460 | if(buf_status != 0x00)                                                 
; 462 |         // First RX Buffer 0                                           
;----------------------------------------------------------------------
        B         $C$L26,EQ             ; [CPU_] |460| 
        ; branchcc occurs ; [] |460| 
	.dwpsn	file "../Source/SPICAN.c",line 463,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 463 | if((buf_status & 0x01) == 0x01)                                        
;----------------------------------------------------------------------
        TBIT      AR1,#6                ; [CPU_] |463| 
        B         $C$L25,NTC            ; [CPU_] |463| 
        ; branchcc occurs ; [] |463| 
	.dwpsn	file "../Source/SPICAN.c",line 465,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 465 | SPICANReadBuf_Array(buf1, 0);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR2             ; [CPU_] |465| 
        MOVB      AL,#0                 ; [CPU_] |465| 
$C$DW$358	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$358, DW_AT_low_pc(0x00)
	.dwattr $C$DW$358, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$358, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |465| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |465| 
	.dwpsn	file "../Source/SPICAN.c",line 466,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 466 | res |= 0x01;                                                           
; 469 | // Second RX Buffer 1                                                  
;----------------------------------------------------------------------
        MOV       *-SP[1],#1            ; [CPU_] |466| 
$C$L25:    
        MOV       AL,*-SP[2]            ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 470,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 470 | if((buf_status & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      AL,#1                 ; [CPU_] |470| 
        B         $C$L26,NTC            ; [CPU_] |470| 
        ; branchcc occurs ; [] |470| 
	.dwpsn	file "../Source/SPICAN.c",line 472,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 472 | SPICANReadBuf_Array(buf2, 1);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR3             ; [CPU_] |472| 
        MOVB      AL,#1                 ; [CPU_] |472| 
$C$DW$359	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$359, DW_AT_low_pc(0x00)
	.dwattr $C$DW$359, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$359, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |472| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |472| 
        MOV       AL,*-SP[1]            ; [CPU_] |472| 
	.dwpsn	file "../Source/SPICAN.c",line 473,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 473 | res |= 0x02;                                                           
; 476 | return res;                                                            
;----------------------------------------------------------------------
        ORB       AL,#0x02              ; [CPU_] |473| 
        MOV       *-SP[1],AL            ; [CPU_] |473| 
$C$L26:    
        MOV       AL,*-SP[1]            ; [CPU_] 
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
$C$DW$360	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$360, DW_AT_low_pc(0x00)
	.dwattr $C$DW$360, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$347, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$347, DW_AT_TI_end_line(0x1dd)
	.dwattr $C$DW$347, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$347

	.sect	".text"
	.clink
	.global	_SPICANReadBuf1

$C$DW$361	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$361, DW_AT_name("SPICANReadBuf1")
	.dwattr $C$DW$361, DW_AT_low_pc(_SPICANReadBuf1)
	.dwattr $C$DW$361, DW_AT_high_pc(0x00)
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_SPICANReadBuf1")
	.dwattr $C$DW$361, DW_AT_external
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$361, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$361, DW_AT_TI_begin_line(0x104)
	.dwattr $C$DW$361, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$361, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 261,column 1,is_stmt,address _SPICANReadBuf1,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf1
;----------------------------------------------------------------------
; 260 | Uint32 SPICANReadBuf1 (void)                                           
; 262 | Uint32  RetVal;                                                        
; 263 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANReadBuf1               FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SPICANReadBuf1:
;* AR1   assigned to _RetVal
$C$DW$362	.dwtag  DW_TAG_variable
	.dwattr $C$DW$362, DW_AT_name("RetVal")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$131)
	.dwattr $C$DW$362, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 264,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 264 | spi_xmit(SPICAN_RXBUF1);                                               
;----------------------------------------------------------------------
        MOVB      AL,#150               ; [CPU_] |264| 
	.dwpsn	file "../Source/SPICAN.c",line 263,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |263| 
	.dwpsn	file "../Source/SPICAN.c",line 264,column 2,is_stmt,isa 0
$C$DW$363	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$363, DW_AT_low_pc(0x00)
	.dwattr $C$DW$363, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$363, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |264| 
        ; call occurs [#_spi_xmit] ; [] |264| 
	.dwpsn	file "../Source/SPICAN.c",line 265,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | RetVal = spi_recv() << 24;                                             
;----------------------------------------------------------------------
$C$DW$364	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$364, DW_AT_low_pc(0x00)
	.dwattr $C$DW$364, DW_AT_name("_spi_recv")
	.dwattr $C$DW$364, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |265| 
        ; call occurs [#_spi_recv] ; [] |265| 
	.dwpsn	file "../Source/SPICAN.c",line 266,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | RetVal |= spi_recv() << 16;                                            
;----------------------------------------------------------------------
$C$DW$365	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$365, DW_AT_low_pc(0x00)
	.dwattr $C$DW$365, DW_AT_name("_spi_recv")
	.dwattr $C$DW$365, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |266| 
        ; call occurs [#_spi_recv] ; [] |266| 
	.dwpsn	file "../Source/SPICAN.c",line 267,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 267 | RetVal |= spi_recv() << 8;                                             
;----------------------------------------------------------------------
$C$DW$366	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$366, DW_AT_low_pc(0x00)
	.dwattr $C$DW$366, DW_AT_name("_spi_recv")
	.dwattr $C$DW$366, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |267| 
        ; call occurs [#_spi_recv] ; [] |267| 
        MOV       ACC,AL << #8          ; [CPU_] |267| 
        MOVZ      AR1,AL                ; [CPU_] |267| 
	.dwpsn	file "../Source/SPICAN.c",line 268,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | RetVal |= spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$367	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$367, DW_AT_low_pc(0x00)
	.dwattr $C$DW$367, DW_AT_name("_spi_recv")
	.dwattr $C$DW$367, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |268| 
        ; call occurs [#_spi_recv] ; [] |268| 
        MOVZ      AR6,AL                ; [CPU_] |268| 
        MOVL      ACC,XAR1              ; [CPU_] |268| 
        OR        ACC,AR6               ; [CPU_] |268| 
        MOVL      XAR1,ACC              ; [CPU_] |268| 
	.dwpsn	file "../Source/SPICAN.c",line 269,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 269 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$368	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$368, DW_AT_low_pc(0x00)
	.dwattr $C$DW$368, DW_AT_name("_spi_recv")
	.dwattr $C$DW$368, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |269| 
        ; call occurs [#_spi_recv] ; [] |269| 
	.dwpsn	file "../Source/SPICAN.c",line 270,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 270 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$369	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$369, DW_AT_low_pc(0x00)
	.dwattr $C$DW$369, DW_AT_name("_spi_recv")
	.dwattr $C$DW$369, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |270| 
        ; call occurs [#_spi_recv] ; [] |270| 
	.dwpsn	file "../Source/SPICAN.c",line 271,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 271 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$370	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$370, DW_AT_low_pc(0x00)
	.dwattr $C$DW$370, DW_AT_name("_spi_recv")
	.dwattr $C$DW$370, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |271| 
        ; call occurs [#_spi_recv] ; [] |271| 
	.dwpsn	file "../Source/SPICAN.c",line 272,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 272 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$371	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$371, DW_AT_low_pc(0x00)
	.dwattr $C$DW$371, DW_AT_name("_spi_recv")
	.dwattr $C$DW$371, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |272| 
        ; call occurs [#_spi_recv] ; [] |272| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 273,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 273 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |273| 
	.dwpsn	file "../Source/SPICAN.c",line 274,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 274 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOVL      ACC,XAR1              ; [CPU_] |274| 
        MOVL      XAR1,*--SP            ; [CPU_] |274| 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$372	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$372, DW_AT_low_pc(0x00)
	.dwattr $C$DW$372, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$361, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$361, DW_AT_TI_end_line(0x113)
	.dwattr $C$DW$361, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$361

	.sect	".text"
	.clink
	.global	_SPICANMasksFilts

$C$DW$373	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$373, DW_AT_name("SPICANMasksFilts")
	.dwattr $C$DW$373, DW_AT_low_pc(_SPICANMasksFilts)
	.dwattr $C$DW$373, DW_AT_high_pc(0x00)
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_SPICANMasksFilts")
	.dwattr $C$DW$373, DW_AT_external
	.dwattr $C$DW$373, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$373, DW_AT_TI_begin_line(0x33)
	.dwattr $C$DW$373, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$373, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../Source/SPICAN.c",line 52,column 1,is_stmt,address _SPICANMasksFilts,isa 0

	.dwfde $C$DW$CIE, _SPICANMasksFilts
;----------------------------------------------------------------------
;  51 | void SPICANMasksFilts(void)                                            
;  53 | volatile Uint16 res;                                                   
;  56 | volatile int acc0, acc1, acc2, acc3, acc4, acc5;                       
;  57 | volatile int mask0, mask1;                                             
;  59 | SPICANWrite(0x0F, 0x80);                // Set CANCTRL to 0x80 (config
;     | mode)                                                                  
;  66 | // FILT: 111 1110 0000                                                 
;  67 | // MASK: 111 1111 1111                                                 
;  68 | // RSLT: 111 1110 0000 (X is don't care)                               
;  70 | SPICANWrite(0x20, 0xFF);                // mask 0 match only specific I
;     | D                                                                      
;  71 | SPICANWrite(0x21, 0xFF);                                               
;  72 | SPICANWrite(0x22, 0xFF);                                               
;  73 | SPICANWrite(0x23, 0xFF);                                               
;  75 | SPICANWrite(0x24, 0x00);                // mask 1 match all IDs        
;  76 | SPICANWrite(0x25, 0x00);                                               
;  77 | SPICANWrite(0x26, 0x00);                                               
;  78 | SPICANWrite(0x27, 0x00);                                               
;  80 | SPICANWrite(0x00, 0xC7);                        // only look for 0x18FA
;     | 000                                                                    
;  81 | SPICANWrite(0x01, 0xEB);                                               
;  82 | SPICANWrite(0x02, 0xA0);                                               
;  83 | SPICANWrite(0x03, 0x00);                                               
;  85 | SPICANWrite(0x04, 0xC7);                        // only look for 0x18FA
;     | 000                                                                    
;  86 | SPICANWrite(0x05, 0xEB);                                               
;  87 | SPICANWrite(0x06, 0xA0);                                               
;  88 | SPICANWrite(0x07, 0x00);                                               
;  90 | SPICANWrite(0x08, 0xC7);                        // only look for 0x18FF
;     | B000                                                                   
;  91 | SPICANWrite(0x09, 0xEB);                                               
;  92 | SPICANWrite(0x0A, 0xA0);                                               
;  93 | SPICANWrite(0x0B, 0x00);                                               
;  97 | //      ECanaMboxes.MBOX6.MSGID.all = 0x18FFB000;                      
;  98 | //      ECanaMboxes.MBOX7.MSGID.all = 0x18FFB100;                      
;  99 | //      ECanaMboxes.MBOX8.MSGID.all = 0x18FFB200;                      
; 100 | //      ECanaMboxes.MBOX9.MSGID.all = 0x18FFB300;                      
; 101 | //      ECanaMboxes.MBOX10.MSGID.all = 0x18FFB400;                     
; 106 | SPICANWrite(0x08, 0xFC);                        // only look for 0x7E1
;     | (FC2 = 7E1<<1)                                                         
; 107 | SPICANWrite(0x09, 0x20);                                               
; 111 | acc0 = (SPICANRead(0x00)<<3) + ((SPICANRead(0x01)&0xe0)>>5);           
; 112 | acc1 = (SPICANRead(0x04)<<3) + ((SPICANRead(0x05)&0xe0)>>5);           
; 113 | acc2 = (SPICANRead(0x08)<<3) + ((SPICANRead(0x09)&0xe0)>>5);           
; 114 | acc3 = (SPICANRead(0x10)<<3) + ((SPICANRead(0x11)&0xe0)>>5);           
; 115 | acc4 = (SPICANRead(0x14)<<3) + ((SPICANRead(0x15)&0xe0)>>5);           
; 116 | acc5 = (SPICANRead(0x18)<<3) + ((SPICANRead(0x19)&0xe0)>>5);           
; 118 | mask0 = (SPICANRead(0x20)<<3) + ((SPICANRead(0x21)&0xe0)>>5);          
; 119 | mask1 = (SPICANRead(0x24)<<3) + ((SPICANRead(0x25)&0xe0)>>5);          
; 121 | acc0++;                                                                
; 161 | //      res = SPICANRead(0x00);                                        
; 162 | //      res = SPICANRead(0x01);                                        
; 163 | //      res = SPICANRead(0x20);                                        
; 164 | //      res = SPICANRead(0x21);                                        
; 165 | //      res++;                                                         
; 166 | // MASK: 111 1100 1000                                                 
; 167 | // FILT: 100 0000 0000                                                 
; 168 | // RSLT: 100 00XX 0XXX (X is don't care)                               
; 169 | return;                                                                
; 174 | void SPICANReset (void)                                                
; 176 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
; 177 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
; 178 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 179 | return;                                                                
; 182 | // Responsible for reading the status of a                             
; 183 | // register address on the SPICAN Control Register                     
; 184 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 185 | Uint16 SPICANRead (Uint16 Input)                                       
; 187 | Uint16  RetVal;                                                        
; 188 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
; 189 | spi_xmit(SPICAN_READ);                                                 
; 190 | spi_xmit(Input);                                                       
; 191 | RetVal = spi_recv();                                                   
; 192 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 193 | return(RetVal);                                                        
; 196 | // Responsible for writing the status of a                             
; 197 | // register address on the SPICAN Control Register                     
; 198 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 199 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
; 201 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANMasksFilts             FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  2 SOE     *
;***************************************************************

_SPICANMasksFilts:
;* AR1   assigned to _RetVal
$C$DW$374	.dwtag  DW_TAG_variable
	.dwattr $C$DW$374, DW_AT_name("RetVal")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$375	.dwtag  DW_TAG_variable
	.dwattr $C$DW$375, DW_AT_name("RetVal")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _RetVal
$C$DW$376	.dwtag  DW_TAG_variable
	.dwattr $C$DW$376, DW_AT_name("RetVal")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$377	.dwtag  DW_TAG_variable
	.dwattr $C$DW$377, DW_AT_name("RetVal")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _RetVal
$C$DW$378	.dwtag  DW_TAG_variable
	.dwattr $C$DW$378, DW_AT_name("RetVal")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$379	.dwtag  DW_TAG_variable
	.dwattr $C$DW$379, DW_AT_name("RetVal")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _RetVal
$C$DW$380	.dwtag  DW_TAG_variable
	.dwattr $C$DW$380, DW_AT_name("RetVal")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$381	.dwtag  DW_TAG_variable
	.dwattr $C$DW$381, DW_AT_name("RetVal")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _RetVal
$C$DW$382	.dwtag  DW_TAG_variable
	.dwattr $C$DW$382, DW_AT_name("RetVal")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$383	.dwtag  DW_TAG_variable
	.dwattr $C$DW$383, DW_AT_name("RetVal")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _RetVal
$C$DW$384	.dwtag  DW_TAG_variable
	.dwattr $C$DW$384, DW_AT_name("RetVal")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$385	.dwtag  DW_TAG_variable
	.dwattr $C$DW$385, DW_AT_name("RetVal")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _RetVal
$C$DW$386	.dwtag  DW_TAG_variable
	.dwattr $C$DW$386, DW_AT_name("RetVal")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$387	.dwtag  DW_TAG_variable
	.dwattr $C$DW$387, DW_AT_name("RetVal")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg16]

;* AR1   assigned to _RetVal
$C$DW$388	.dwtag  DW_TAG_variable
	.dwattr $C$DW$388, DW_AT_name("RetVal")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg6]

;* AR6   assigned to _RetVal
$C$DW$389	.dwtag  DW_TAG_variable
	.dwattr $C$DW$389, DW_AT_name("RetVal")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg16]

$C$DW$390	.dwtag  DW_TAG_variable
	.dwattr $C$DW$390, DW_AT_name("acc0")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_acc0")
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$390, DW_AT_location[DW_OP_breg20 -1]

$C$DW$391	.dwtag  DW_TAG_variable
	.dwattr $C$DW$391, DW_AT_name("acc1")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_acc1")
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$391, DW_AT_location[DW_OP_breg20 -2]

$C$DW$392	.dwtag  DW_TAG_variable
	.dwattr $C$DW$392, DW_AT_name("acc2")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_acc2")
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$392, DW_AT_location[DW_OP_breg20 -3]

$C$DW$393	.dwtag  DW_TAG_variable
	.dwattr $C$DW$393, DW_AT_name("acc3")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_acc3")
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$393, DW_AT_location[DW_OP_breg20 -4]

$C$DW$394	.dwtag  DW_TAG_variable
	.dwattr $C$DW$394, DW_AT_name("acc4")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_acc4")
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$394, DW_AT_location[DW_OP_breg20 -5]

$C$DW$395	.dwtag  DW_TAG_variable
	.dwattr $C$DW$395, DW_AT_name("acc5")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_acc5")
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$395, DW_AT_location[DW_OP_breg20 -6]

$C$DW$396	.dwtag  DW_TAG_variable
	.dwattr $C$DW$396, DW_AT_name("mask0")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_mask0")
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$396, DW_AT_location[DW_OP_breg20 -7]

$C$DW$397	.dwtag  DW_TAG_variable
	.dwattr $C$DW$397, DW_AT_name("mask1")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_mask1")
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$397, DW_AT_location[DW_OP_breg20 -8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#8                 ; [CPU_U] 
	.dwcfi	cfa_offset, -12
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$398	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$398, DW_AT_low_pc(0x00)
	.dwattr $C$DW$398, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$398, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 203 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |203| 
$C$DW$399	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$399, DW_AT_low_pc(0x00)
	.dwattr $C$DW$399, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$399, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOVB      AL,#128               ; [CPU_] |204| 
$C$DW$400	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$400, DW_AT_low_pc(0x00)
	.dwattr $C$DW$400, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$400, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 205 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$401	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$401, DW_AT_low_pc(0x00)
	.dwattr $C$DW$401, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$401, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |203| 
$C$DW$402	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$402, DW_AT_low_pc(0x00)
	.dwattr $C$DW$402, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$402, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_] |204| 
$C$DW$403	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$403, DW_AT_low_pc(0x00)
	.dwattr $C$DW$403, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$403, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$404	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$404, DW_AT_low_pc(0x00)
	.dwattr $C$DW$404, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$404, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |203| 
$C$DW$405	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$405, DW_AT_low_pc(0x00)
	.dwattr $C$DW$405, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$405, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_] |204| 
$C$DW$406	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$406, DW_AT_low_pc(0x00)
	.dwattr $C$DW$406, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$406, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$407	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$407, DW_AT_low_pc(0x00)
	.dwattr $C$DW$407, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$407, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#34                ; [CPU_] |203| 
$C$DW$408	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$408, DW_AT_low_pc(0x00)
	.dwattr $C$DW$408, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$408, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_] |204| 
$C$DW$409	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$409, DW_AT_low_pc(0x00)
	.dwattr $C$DW$409, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$409, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$410	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$410, DW_AT_low_pc(0x00)
	.dwattr $C$DW$410, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$410, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#35                ; [CPU_] |203| 
$C$DW$411	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$411, DW_AT_low_pc(0x00)
	.dwattr $C$DW$411, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$411, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#255               ; [CPU_] |204| 
$C$DW$412	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$412, DW_AT_low_pc(0x00)
	.dwattr $C$DW$412, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$412, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$413	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$413, DW_AT_low_pc(0x00)
	.dwattr $C$DW$413, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$413, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#36                ; [CPU_] |203| 
$C$DW$414	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$414, DW_AT_low_pc(0x00)
	.dwattr $C$DW$414, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$414, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$415	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$415, DW_AT_low_pc(0x00)
	.dwattr $C$DW$415, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$415, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$416	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$416, DW_AT_low_pc(0x00)
	.dwattr $C$DW$416, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$416, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#37                ; [CPU_] |203| 
$C$DW$417	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$417, DW_AT_low_pc(0x00)
	.dwattr $C$DW$417, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$417, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$418	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$418, DW_AT_low_pc(0x00)
	.dwattr $C$DW$418, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$418, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$419	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$419, DW_AT_low_pc(0x00)
	.dwattr $C$DW$419, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$419, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#38                ; [CPU_] |203| 
$C$DW$420	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$420, DW_AT_low_pc(0x00)
	.dwattr $C$DW$420, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$420, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$421	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$421, DW_AT_low_pc(0x00)
	.dwattr $C$DW$421, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$421, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$422	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$422, DW_AT_low_pc(0x00)
	.dwattr $C$DW$422, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$422, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#39                ; [CPU_] |203| 
$C$DW$423	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$423, DW_AT_low_pc(0x00)
	.dwattr $C$DW$423, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$423, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$424	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$424, DW_AT_low_pc(0x00)
	.dwattr $C$DW$424, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$424, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$425	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$425, DW_AT_low_pc(0x00)
	.dwattr $C$DW$425, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$425, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |203| 
$C$DW$426	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$426, DW_AT_low_pc(0x00)
	.dwattr $C$DW$426, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$426, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#199               ; [CPU_] |204| 
$C$DW$427	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$427, DW_AT_low_pc(0x00)
	.dwattr $C$DW$427, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$427, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$428	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$428, DW_AT_low_pc(0x00)
	.dwattr $C$DW$428, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$428, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |203| 
$C$DW$429	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$429, DW_AT_low_pc(0x00)
	.dwattr $C$DW$429, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$429, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#235               ; [CPU_] |204| 
$C$DW$430	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$430, DW_AT_low_pc(0x00)
	.dwattr $C$DW$430, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$430, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$431	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$431, DW_AT_low_pc(0x00)
	.dwattr $C$DW$431, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$431, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |203| 
$C$DW$432	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$432, DW_AT_low_pc(0x00)
	.dwattr $C$DW$432, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$432, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#160               ; [CPU_] |204| 
$C$DW$433	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$433, DW_AT_low_pc(0x00)
	.dwattr $C$DW$433, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$433, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$434	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$434, DW_AT_low_pc(0x00)
	.dwattr $C$DW$434, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$434, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |203| 
$C$DW$435	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$435, DW_AT_low_pc(0x00)
	.dwattr $C$DW$435, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$435, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$436	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$436, DW_AT_low_pc(0x00)
	.dwattr $C$DW$436, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$436, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$437	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$437, DW_AT_low_pc(0x00)
	.dwattr $C$DW$437, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$437, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_] |203| 
$C$DW$438	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$438, DW_AT_low_pc(0x00)
	.dwattr $C$DW$438, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$438, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#199               ; [CPU_] |204| 
$C$DW$439	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$439, DW_AT_low_pc(0x00)
	.dwattr $C$DW$439, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$439, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$440	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$440, DW_AT_low_pc(0x00)
	.dwattr $C$DW$440, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$440, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#5                 ; [CPU_] |203| 
$C$DW$441	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$441, DW_AT_low_pc(0x00)
	.dwattr $C$DW$441, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$441, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#235               ; [CPU_] |204| 
$C$DW$442	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$442, DW_AT_low_pc(0x00)
	.dwattr $C$DW$442, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$442, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$443	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$443, DW_AT_low_pc(0x00)
	.dwattr $C$DW$443, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$443, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#6                 ; [CPU_] |203| 
$C$DW$444	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$444, DW_AT_low_pc(0x00)
	.dwattr $C$DW$444, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$444, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#160               ; [CPU_] |204| 
$C$DW$445	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$445, DW_AT_low_pc(0x00)
	.dwattr $C$DW$445, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$445, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$446	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$446, DW_AT_low_pc(0x00)
	.dwattr $C$DW$446, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$446, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#7                 ; [CPU_] |203| 
$C$DW$447	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$447, DW_AT_low_pc(0x00)
	.dwattr $C$DW$447, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$447, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$448	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$448, DW_AT_low_pc(0x00)
	.dwattr $C$DW$448, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$448, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$449	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$449, DW_AT_low_pc(0x00)
	.dwattr $C$DW$449, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$449, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_] |203| 
$C$DW$450	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$450, DW_AT_low_pc(0x00)
	.dwattr $C$DW$450, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$450, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#199               ; [CPU_] |204| 
$C$DW$451	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$451, DW_AT_low_pc(0x00)
	.dwattr $C$DW$451, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$451, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$452	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$452, DW_AT_low_pc(0x00)
	.dwattr $C$DW$452, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$452, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#9                 ; [CPU_] |203| 
$C$DW$453	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$453, DW_AT_low_pc(0x00)
	.dwattr $C$DW$453, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$453, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#235               ; [CPU_] |204| 
$C$DW$454	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$454, DW_AT_low_pc(0x00)
	.dwattr $C$DW$454, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$454, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$455	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$455, DW_AT_low_pc(0x00)
	.dwattr $C$DW$455, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$455, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |203| 
$C$DW$456	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$456, DW_AT_low_pc(0x00)
	.dwattr $C$DW$456, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$456, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#160               ; [CPU_] |204| 
$C$DW$457	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$457, DW_AT_low_pc(0x00)
	.dwattr $C$DW$457, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$457, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$458	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$458, DW_AT_low_pc(0x00)
	.dwattr $C$DW$458, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$458, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#11                ; [CPU_] |203| 
$C$DW$459	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$459, DW_AT_low_pc(0x00)
	.dwattr $C$DW$459, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$459, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$460	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$460, DW_AT_low_pc(0x00)
	.dwattr $C$DW$460, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$460, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$461	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$461, DW_AT_low_pc(0x00)
	.dwattr $C$DW$461, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$461, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_] |203| 
$C$DW$462	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$462, DW_AT_low_pc(0x00)
	.dwattr $C$DW$462, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$462, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#252               ; [CPU_] |204| 
$C$DW$463	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$463, DW_AT_low_pc(0x00)
	.dwattr $C$DW$463, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$463, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$464	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$464, DW_AT_low_pc(0x00)
	.dwattr $C$DW$464, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$464, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#9                 ; [CPU_] |203| 
$C$DW$465	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$465, DW_AT_low_pc(0x00)
	.dwattr $C$DW$465, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$465, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |204| 
$C$DW$466	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$466, DW_AT_low_pc(0x00)
	.dwattr $C$DW$466, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$466, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$467	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$467, DW_AT_low_pc(0x00)
	.dwattr $C$DW$467, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$467, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |190| 
$C$DW$468	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$468, DW_AT_low_pc(0x00)
	.dwattr $C$DW$468, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$468, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$469	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$469, DW_AT_low_pc(0x00)
	.dwattr $C$DW$469, DW_AT_name("_spi_recv")
	.dwattr $C$DW$469, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$470	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$470, DW_AT_low_pc(0x00)
	.dwattr $C$DW$470, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$470, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |190| 
$C$DW$471	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$471, DW_AT_low_pc(0x00)
	.dwattr $C$DW$471, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$471, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$472	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$472, DW_AT_low_pc(0x00)
	.dwattr $C$DW$472, DW_AT_name("_spi_recv")
	.dwattr $C$DW$472, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 111,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |111| 
        MOV       AH,AR6                ; [CPU_] |111| 
        LSR       AH,5                  ; [CPU_] |111| 
        ANDB      AH,#0x07              ; [CPU_] |111| 
        ADD       AH,AL                 ; [CPU_] |111| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 111,column 2,is_stmt,isa 0
        MOV       *-SP[1],AH            ; [CPU_] |111| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$473	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$473, DW_AT_low_pc(0x00)
	.dwattr $C$DW$473, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$473, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_] |190| 
$C$DW$474	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$474, DW_AT_low_pc(0x00)
	.dwattr $C$DW$474, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$474, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$475	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$475, DW_AT_low_pc(0x00)
	.dwattr $C$DW$475, DW_AT_name("_spi_recv")
	.dwattr $C$DW$475, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$476	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$476, DW_AT_low_pc(0x00)
	.dwattr $C$DW$476, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$476, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#5                 ; [CPU_] |190| 
$C$DW$477	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$477, DW_AT_low_pc(0x00)
	.dwattr $C$DW$477, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$477, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$478	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$478, DW_AT_low_pc(0x00)
	.dwattr $C$DW$478, DW_AT_name("_spi_recv")
	.dwattr $C$DW$478, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 112,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |112| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 112,column 2,is_stmt,isa 0
        MOV       AH,AR6                ; [CPU_] |112| 
        LSR       AH,5                  ; [CPU_] |112| 
        ANDB      AH,#0x07              ; [CPU_] |112| 
        ADD       AH,AL                 ; [CPU_] |112| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 112,column 2,is_stmt,isa 0
        MOV       *-SP[2],AH            ; [CPU_] |112| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$479	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$479, DW_AT_low_pc(0x00)
	.dwattr $C$DW$479, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$479, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#8                 ; [CPU_] |190| 
$C$DW$480	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$480, DW_AT_low_pc(0x00)
	.dwattr $C$DW$480, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$480, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$481	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$481, DW_AT_low_pc(0x00)
	.dwattr $C$DW$481, DW_AT_name("_spi_recv")
	.dwattr $C$DW$481, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$482	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$482, DW_AT_low_pc(0x00)
	.dwattr $C$DW$482, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$482, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#9                 ; [CPU_] |190| 
$C$DW$483	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$483, DW_AT_low_pc(0x00)
	.dwattr $C$DW$483, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$483, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$484	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$484, DW_AT_low_pc(0x00)
	.dwattr $C$DW$484, DW_AT_name("_spi_recv")
	.dwattr $C$DW$484, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 113,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |113| 
        MOV       AH,AR6                ; [CPU_] |113| 
        LSR       AH,5                  ; [CPU_] |113| 
        ANDB      AH,#0x07              ; [CPU_] |113| 
        ADD       AH,AL                 ; [CPU_] |113| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 113,column 2,is_stmt,isa 0
        MOV       *-SP[3],AH            ; [CPU_] |113| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$485	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$485, DW_AT_low_pc(0x00)
	.dwattr $C$DW$485, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$485, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#16                ; [CPU_] |190| 
$C$DW$486	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$486, DW_AT_low_pc(0x00)
	.dwattr $C$DW$486, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$486, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$487	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$487, DW_AT_low_pc(0x00)
	.dwattr $C$DW$487, DW_AT_name("_spi_recv")
	.dwattr $C$DW$487, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$488	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$488, DW_AT_low_pc(0x00)
	.dwattr $C$DW$488, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$488, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#17                ; [CPU_] |190| 
$C$DW$489	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$489, DW_AT_low_pc(0x00)
	.dwattr $C$DW$489, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$489, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$490	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$490, DW_AT_low_pc(0x00)
	.dwattr $C$DW$490, DW_AT_name("_spi_recv")
	.dwattr $C$DW$490, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 114,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |114| 
        MOV       AH,AR6                ; [CPU_] |114| 
        LSR       AH,5                  ; [CPU_] |114| 
        ANDB      AH,#0x07              ; [CPU_] |114| 
        ADD       AH,AL                 ; [CPU_] |114| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 114,column 2,is_stmt,isa 0
        MOV       *-SP[4],AH            ; [CPU_] |114| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$491	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$491, DW_AT_low_pc(0x00)
	.dwattr $C$DW$491, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$491, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#20                ; [CPU_] |190| 
$C$DW$492	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$492, DW_AT_low_pc(0x00)
	.dwattr $C$DW$492, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$492, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$493	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$493, DW_AT_low_pc(0x00)
	.dwattr $C$DW$493, DW_AT_name("_spi_recv")
	.dwattr $C$DW$493, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$494	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$494, DW_AT_low_pc(0x00)
	.dwattr $C$DW$494, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$494, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#21                ; [CPU_] |190| 
$C$DW$495	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$495, DW_AT_low_pc(0x00)
	.dwattr $C$DW$495, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$495, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$496	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$496, DW_AT_low_pc(0x00)
	.dwattr $C$DW$496, DW_AT_name("_spi_recv")
	.dwattr $C$DW$496, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 115,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |115| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 115,column 2,is_stmt,isa 0
        MOV       AH,AR6                ; [CPU_] |115| 
        LSR       AH,5                  ; [CPU_] |115| 
        ANDB      AH,#0x07              ; [CPU_] |115| 
        ADD       AH,AL                 ; [CPU_] |115| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 115,column 2,is_stmt,isa 0
        MOV       *-SP[5],AH            ; [CPU_] |115| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$497	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$497, DW_AT_low_pc(0x00)
	.dwattr $C$DW$497, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$497, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#24                ; [CPU_] |190| 
$C$DW$498	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$498, DW_AT_low_pc(0x00)
	.dwattr $C$DW$498, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$498, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$499	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$499, DW_AT_low_pc(0x00)
	.dwattr $C$DW$499, DW_AT_name("_spi_recv")
	.dwattr $C$DW$499, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$500	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$500, DW_AT_low_pc(0x00)
	.dwattr $C$DW$500, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$500, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#25                ; [CPU_] |190| 
$C$DW$501	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$501, DW_AT_low_pc(0x00)
	.dwattr $C$DW$501, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$501, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$502	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$502, DW_AT_low_pc(0x00)
	.dwattr $C$DW$502, DW_AT_name("_spi_recv")
	.dwattr $C$DW$502, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 116,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |116| 
        MOV       AH,AR6                ; [CPU_] |116| 
        LSR       AH,5                  ; [CPU_] |116| 
        ANDB      AH,#0x07              ; [CPU_] |116| 
        ADD       AH,AL                 ; [CPU_] |116| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 116,column 2,is_stmt,isa 0
        MOV       *-SP[6],AH            ; [CPU_] |116| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$503	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$503, DW_AT_low_pc(0x00)
	.dwattr $C$DW$503, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$503, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |190| 
$C$DW$504	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$504, DW_AT_low_pc(0x00)
	.dwattr $C$DW$504, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$504, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$505	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$505, DW_AT_low_pc(0x00)
	.dwattr $C$DW$505, DW_AT_name("_spi_recv")
	.dwattr $C$DW$505, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$506	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$506, DW_AT_low_pc(0x00)
	.dwattr $C$DW$506, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$506, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |190| 
$C$DW$507	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$507, DW_AT_low_pc(0x00)
	.dwattr $C$DW$507, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$507, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$508	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$508, DW_AT_low_pc(0x00)
	.dwattr $C$DW$508, DW_AT_name("_spi_recv")
	.dwattr $C$DW$508, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |118| 
        MOV       AH,AR6                ; [CPU_] |118| 
        LSR       AH,5                  ; [CPU_] |118| 
        ANDB      AH,#0x07              ; [CPU_] |118| 
        ADD       AH,AL                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOV       *-SP[7],AH            ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$509	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$509, DW_AT_low_pc(0x00)
	.dwattr $C$DW$509, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$509, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#36                ; [CPU_] |190| 
$C$DW$510	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$510, DW_AT_low_pc(0x00)
	.dwattr $C$DW$510, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$510, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$511	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$511, DW_AT_low_pc(0x00)
	.dwattr $C$DW$511, DW_AT_name("_spi_recv")
	.dwattr $C$DW$511, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AL                ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
$C$DW$512	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$512, DW_AT_low_pc(0x00)
	.dwattr $C$DW$512, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$512, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#37                ; [CPU_] |190| 
$C$DW$513	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$513, DW_AT_low_pc(0x00)
	.dwattr $C$DW$513, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$513, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$514	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$514, DW_AT_low_pc(0x00)
	.dwattr $C$DW$514, DW_AT_name("_spi_recv")
	.dwattr $C$DW$514, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVZ      AR6,AL                ; [CPU_] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #3         ; [CPU_] |119| 
        MOV       AH,AR6                ; [CPU_] |119| 
        LSR       AH,5                  ; [CPU_] |119| 
        ANDB      AH,#0x07              ; [CPU_] |119| 
        ADD       AH,AL                 ; [CPU_] |119| 
        MOV       *-SP[8],AH            ; [CPU_] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        INC       *-SP[1]               ; [CPU_] |121| 
        SUBB      SP,#8                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$515	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$515, DW_AT_low_pc(0x00)
	.dwattr $C$DW$515, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$373, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$373, DW_AT_TI_end_line(0xac)
	.dwattr $C$DW$373, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$373

	.sect	".text"
	.clink
	.global	_SPICANIntEn

$C$DW$516	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$516, DW_AT_name("SPICANIntEn")
	.dwattr $C$DW$516, DW_AT_low_pc(_SPICANIntEn)
	.dwattr $C$DW$516, DW_AT_high_pc(0x00)
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_SPICANIntEn")
	.dwattr $C$DW$516, DW_AT_external
	.dwattr $C$DW$516, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$516, DW_AT_TI_begin_line(0xe6)
	.dwattr $C$DW$516, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$516, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 231,column 1,is_stmt,address _SPICANIntEn,isa 0

	.dwfde $C$DW$CIE, _SPICANIntEn
;----------------------------------------------------------------------
; 230 | void SPICANIntEn (void)
;     |  //Enables RX interupts for now                                        
; 232 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANIntEn                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANIntEn:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 233,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 233 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |233| 
	.dwpsn	file "../Source/SPICAN.c",line 232,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |232| 
	.dwpsn	file "../Source/SPICAN.c",line 233,column 2,is_stmt,isa 0
$C$DW$517	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$517, DW_AT_low_pc(0x00)
	.dwattr $C$DW$517, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$517, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |233| 
        ; call occurs [#_spi_xmit] ; [] |233| 
	.dwpsn	file "../Source/SPICAN.c",line 234,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 234 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |234| 
$C$DW$518	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$518, DW_AT_low_pc(0x00)
	.dwattr $C$DW$518, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$518, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |234| 
        ; call occurs [#_spi_xmit] ; [] |234| 
	.dwpsn	file "../Source/SPICAN.c",line 235,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 235 | spi_xmit(0x03);
;     |  //Enable RX Interupts                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |235| 
$C$DW$519	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$519, DW_AT_low_pc(0x00)
	.dwattr $C$DW$519, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$519, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |235| 
        ; call occurs [#_spi_xmit] ; [] |235| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 236,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 236 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |236| 
$C$DW$520	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$520, DW_AT_low_pc(0x00)
	.dwattr $C$DW$520, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$516, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$516, DW_AT_TI_end_line(0xed)
	.dwattr $C$DW$516, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$516

	.sect	".text"
	.clink
	.global	_SPICANConfigure

$C$DW$521	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$521, DW_AT_name("SPICANConfigure")
	.dwattr $C$DW$521, DW_AT_low_pc(_SPICANConfigure)
	.dwattr $C$DW$521, DW_AT_high_pc(0x00)
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_SPICANConfigure")
	.dwattr $C$DW$521, DW_AT_external
	.dwattr $C$DW$521, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$521, DW_AT_TI_begin_line(0x20f)
	.dwattr $C$DW$521, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$521, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 528,column 1,is_stmt,address _SPICANConfigure,isa 0

	.dwfde $C$DW$CIE, _SPICANConfigure
;----------------------------------------------------------------------
; 527 | void SPICANConfigure(void)                                             
; 530 | // For configuration details, see note at bottom                       
; 531 | //      SPICANWrite(0x2A, 0xC1);                // Setting up CNF1     
; 532 | //      SPICANWrite(0x29, 0xE4);                // Setting up CNF2     
; 533 | //      SPICANWrite(0x28, 0xC4);                // Setting up CNF3     
; 535 | SPICANWrite(0x2A, 0x41);                // Setting up CNF1             
; 536 | SPICANWrite(0x29, 0xA4);                // Setting up CNF2             
; 537 | SPICANWrite(0x28, 0x84);                // Setting up CNF3             
; 540 | //      SPICANWrite(0x2A, 0x01);                // Setting up CNF1     
; 541 | //      SPICANWrite(0x29, 0xD0);                // Setting up CNF2     
; 542 | //      SPICANWrite(0x28, 0xC2);                // Setting up CNF3     
; 547 | return;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANConfigure              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANConfigure:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$522	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$522, DW_AT_low_pc(0x00)
	.dwattr $C$DW$522, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$522, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#42                ; [CPU_] |203| 
$C$DW$523	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$523, DW_AT_low_pc(0x00)
	.dwattr $C$DW$523, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$523, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#65                ; [CPU_] |204| 
$C$DW$524	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$524, DW_AT_low_pc(0x00)
	.dwattr $C$DW$524, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$524, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$525	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$525, DW_AT_low_pc(0x00)
	.dwattr $C$DW$525, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$525, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#41                ; [CPU_] |203| 
$C$DW$526	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$526, DW_AT_low_pc(0x00)
	.dwattr $C$DW$526, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$526, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#164               ; [CPU_] |204| 
$C$DW$527	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$527, DW_AT_low_pc(0x00)
	.dwattr $C$DW$527, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$527, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$528	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$528, DW_AT_low_pc(0x00)
	.dwattr $C$DW$528, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$528, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#40                ; [CPU_] |203| 
$C$DW$529	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$529, DW_AT_low_pc(0x00)
	.dwattr $C$DW$529, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$529, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#132               ; [CPU_] |204| 
$C$DW$530	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$530, DW_AT_low_pc(0x00)
	.dwattr $C$DW$530, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$530, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
$C$DW$531	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$531, DW_AT_low_pc(0x00)
	.dwattr $C$DW$531, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$521, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$521, DW_AT_TI_end_line(0x271)
	.dwattr $C$DW$521, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$521

	.sect	".text"
	.clink
	.global	_SPICANInit

$C$DW$532	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$532, DW_AT_name("SPICANInit")
	.dwattr $C$DW$532, DW_AT_low_pc(_SPICANInit)
	.dwattr $C$DW$532, DW_AT_high_pc(0x00)
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_SPICANInit")
	.dwattr $C$DW$532, DW_AT_external
	.dwattr $C$DW$532, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$532, DW_AT_TI_begin_line(0x0d)
	.dwattr $C$DW$532, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$532, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 14,column 1,is_stmt,address _SPICANInit,isa 0

	.dwfde $C$DW$CIE, _SPICANInit
;----------------------------------------------------------------------
;  13 | void SPICANInit(void)                                                  
;  15 | SPICANReset();                                  // Reset Command       
;  16 | SPICANReadyConfig();                                                   
;  18 | SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits          
;  19 | // SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits       
;  20 | SPICANMasksFilts();                                                    
;  23 | //SPICANWrite(0x60, 0x06);                      // RXB0CTRL
;     |  0x06 = Roll over to RXB1                                              
;  24 | SPICANWrite(0x60, 0x00);                        // RXB0CTRL            
;  25 | SPICANWrite(0x70, 0x00);                        // RXB1CTRL            
;  26 | SPICANWrite(0x0D, 0x00);                        // TXRTSCTRL           
;  27 | SPICANWrite(0x2B, 0x03);                        // CANINTE
;     |  0x03 Enable RX interrupts                                             
;  29 | // SPICANBitModify(0x60, 0xFF, 0x04);           // Set BUKT to be 1    
;  30 | // SPICANBitModify(0x70, 0xFF, 0x00);           // Setup up RXB1 to rec
;     | eive all messages                                                      
;  31 | // SPICANBitModify(0x0C, 0xFF, 0x00); // Set TXRTSCTRL to 0x00         
;  33 | SPICANConfigure();                                                     
;  34 | SPICANWrite(0x2C, 0x00);                // Clearing all interrupts     
;  36 | SPICANWrite(0x0F, 0x00); // Set CANCTRL to 0x00                        
;  37 | // SPICANBitModify(0x0F, 0xFF, 0x00); // Set TXRTSCTRL to 0x00         
;  38 | SPICANReadStat();                               // Confirm we are in No
;     | rmal Mode                                                              
;  39 | return;                                                                
;  42 | void SPICANReadyConfig(void)                                           
;  44 | Uint16 res;                                                            
;  45 | res = SPICANRead(SPICAN_CANSTAT);                                      
;  46 | while((res & 0xE0) != 0x80)                                            
;  47 |         res = SPICANRead(SPICAN_CANSTAT);                              
;  48 | return;                                                                
;  51 | void SPICANMasksFilts(void)                                            
;  53 | volatile Uint16 res;                                                   
;  56 | volatile int acc0, acc1, acc2, acc3, acc4, acc5;                       
;  57 | volatile int mask0, mask1;                                             
;  59 | SPICANWrite(0x0F, 0x80);                // Set CANCTRL to 0x80 (config
;     | mode)                                                                  
;  66 | // FILT: 111 1110 0000                                                 
;  67 | // MASK: 111 1111 1111                                                 
;  68 | // RSLT: 111 1110 0000 (X is don't care)                               
;  70 | SPICANWrite(0x20, 0xFF);                // mask 0 match only specific I
;     | D                                                                      
;  71 | SPICANWrite(0x21, 0xFF);                                               
;  72 | SPICANWrite(0x22, 0xFF);                                               
;  73 | SPICANWrite(0x23, 0xFF);                                               
;  75 | SPICANWrite(0x24, 0x00);                // mask 1 match all IDs        
;  76 | SPICANWrite(0x25, 0x00);                                               
;  77 | SPICANWrite(0x26, 0x00);                                               
;  78 | SPICANWrite(0x27, 0x00);                                               
;  80 | SPICANWrite(0x00, 0xC7);                        // only look for 0x18FA
;     | 000                                                                    
;  81 | SPICANWrite(0x01, 0xEB);                                               
;  82 | SPICANWrite(0x02, 0xA0);                                               
;  83 | SPICANWrite(0x03, 0x00);                                               
;  85 | SPICANWrite(0x04, 0xC7);                        // only look for 0x18FA
;     | 000                                                                    
;  86 | SPICANWrite(0x05, 0xEB);                                               
;  87 | SPICANWrite(0x06, 0xA0);                                               
;  88 | SPICANWrite(0x07, 0x00);                                               
;  90 | SPICANWrite(0x08, 0xC7);                        // only look for 0x18FF
;     | B000                                                                   
;  91 | SPICANWrite(0x09, 0xEB);                                               
;  92 | SPICANWrite(0x0A, 0xA0);                                               
;  93 | SPICANWrite(0x0B, 0x00);                                               
;  97 | //      ECanaMboxes.MBOX6.MSGID.all = 0x18FFB000;                      
;  98 | //      ECanaMboxes.MBOX7.MSGID.all = 0x18FFB100;                      
;  99 | //      ECanaMboxes.MBOX8.MSGID.all = 0x18FFB200;                      
; 100 | //      ECanaMboxes.MBOX9.MSGID.all = 0x18FFB300;                      
; 101 | //      ECanaMboxes.MBOX10.MSGID.all = 0x18FFB400;                     
; 106 | SPICANWrite(0x08, 0xFC);                        // only look for 0x7E1
;     | (FC2 = 7E1<<1)                                                         
; 107 | SPICANWrite(0x09, 0x20);                                               
; 111 | acc0 = (SPICANRead(0x00)<<3) + ((SPICANRead(0x01)&0xe0)>>5);           
; 112 | acc1 = (SPICANRead(0x04)<<3) + ((SPICANRead(0x05)&0xe0)>>5);           
; 113 | acc2 = (SPICANRead(0x08)<<3) + ((SPICANRead(0x09)&0xe0)>>5);           
; 114 | acc3 = (SPICANRead(0x10)<<3) + ((SPICANRead(0x11)&0xe0)>>5);           
; 115 | acc4 = (SPICANRead(0x14)<<3) + ((SPICANRead(0x15)&0xe0)>>5);           
; 116 | acc5 = (SPICANRead(0x18)<<3) + ((SPICANRead(0x19)&0xe0)>>5);           
; 118 | mask0 = (SPICANRead(0x20)<<3) + ((SPICANRead(0x21)&0xe0)>>5);          
; 119 | mask1 = (SPICANRead(0x24)<<3) + ((SPICANRead(0x25)&0xe0)>>5);          
; 121 | acc0++;                                                                
; 161 | //      res = SPICANRead(0x00);                                        
; 162 | //      res = SPICANRead(0x01);                                        
; 163 | //      res = SPICANRead(0x20);                                        
; 164 | //      res = SPICANRead(0x21);                                        
; 165 | //      res++;                                                         
; 166 | // MASK: 111 1100 1000                                                 
; 167 | // FILT: 100 0000 0000                                                 
; 168 | // RSLT: 100 00XX 0XXX (X is don't care)                               
; 169 | return;                                                                
; 174 | void SPICANReset (void)                                                
; 176 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANInit                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANInit:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 177,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |177| 
	.dwpsn	file "../Source/SPICAN.c",line 176,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |176| 
	.dwpsn	file "../Source/SPICAN.c",line 177,column 2,is_stmt,isa 0
$C$DW$533	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$533, DW_AT_low_pc(0x00)
	.dwattr $C$DW$533, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$533, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |177| 
        ; call occurs [#_spi_xmit] ; [] |177| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 178,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 178 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 179 | return;                                                                
; 182 | // Responsible for reading the status of a                             
; 183 | // register address on the SPICAN Control Register                     
; 184 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 185 | Uint16 SPICANRead (Uint16 Input)                                       
; 187 | Uint16  RetVal;                                                        
; 188 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
; 189 | spi_xmit(SPICAN_READ);                                                 
; 190 | spi_xmit(Input);                                                       
; 191 | RetVal = spi_recv();                                                   
; 192 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;            //Release chip select  
; 193 | return(RetVal);                                                        
; 196 | // Responsible for writing the status of a                             
; 197 | // register address on the SPICAN Control Register                     
; 198 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 199 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
; 201 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |178| 
	.dwpsn	file "../Source/SPICAN.c",line 16,column 2,is_stmt,isa 0
$C$DW$534	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$534, DW_AT_low_pc(0x00)
	.dwattr $C$DW$534, DW_AT_name("_SPICANReadyConfig")
	.dwattr $C$DW$534, DW_AT_TI_call

        LCR       #_SPICANReadyConfig   ; [CPU_] |16| 
        ; call occurs [#_SPICANReadyConfig] ; [] |16| 
	.dwpsn	file "../Source/SPICAN.c",line 18,column 2,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_] |18| 
        MOVB      AH,#255               ; [CPU_] |18| 
        MOVB      XAR4,#15              ; [CPU_] |18| 
$C$DW$535	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$535, DW_AT_low_pc(0x00)
	.dwattr $C$DW$535, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$535, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |18| 
        ; call occurs [#_SPICANBitModify] ; [] |18| 
	.dwpsn	file "../Source/SPICAN.c",line 20,column 2,is_stmt,isa 0
$C$DW$536	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$536, DW_AT_low_pc(0x00)
	.dwattr $C$DW$536, DW_AT_name("_SPICANMasksFilts")
	.dwattr $C$DW$536, DW_AT_TI_call

        LCR       #_SPICANMasksFilts    ; [CPU_] |20| 
        ; call occurs [#_SPICANMasksFilts] ; [] |20| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$537	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$537, DW_AT_low_pc(0x00)
	.dwattr $C$DW$537, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$537, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 203 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOVB      AL,#96                ; [CPU_] |203| 
$C$DW$538	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$538, DW_AT_low_pc(0x00)
	.dwattr $C$DW$538, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$538, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$539	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$539, DW_AT_low_pc(0x00)
	.dwattr $C$DW$539, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$539, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 205 | GpioDataRegs.GPADAT.bit.GPIOA5  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$540	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$540, DW_AT_low_pc(0x00)
	.dwattr $C$DW$540, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$540, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_] |203| 
$C$DW$541	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$541, DW_AT_low_pc(0x00)
	.dwattr $C$DW$541, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$541, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$542	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$542, DW_AT_low_pc(0x00)
	.dwattr $C$DW$542, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$542, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 208 | // Quick polling command that reads several status bits for transmit   
; 209 | // and receive functions.                                              
; 210 | Uint16 SPICANReadStat (void)                                           
; 212 | Uint16  RetVal;                                                        
; 213 | GpioDataRegs.GPADAT.bit.GPIOA5  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$543	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$543, DW_AT_low_pc(0x00)
	.dwattr $C$DW$543, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$543, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#13                ; [CPU_] |203| 
$C$DW$544	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$544, DW_AT_low_pc(0x00)
	.dwattr $C$DW$544, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$544, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$545	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$545, DW_AT_low_pc(0x00)
	.dwattr $C$DW$545, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$545, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$546	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$546, DW_AT_low_pc(0x00)
	.dwattr $C$DW$546, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$546, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |203| 
$C$DW$547	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$547, DW_AT_low_pc(0x00)
	.dwattr $C$DW$547, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$547, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |204| 
$C$DW$548	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$548, DW_AT_low_pc(0x00)
	.dwattr $C$DW$548, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$548, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 33,column 2,is_stmt,isa 0
$C$DW$549	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$549, DW_AT_low_pc(0x00)
	.dwattr $C$DW$549, DW_AT_name("_SPICANConfigure")
	.dwattr $C$DW$549, DW_AT_TI_call

        LCR       #_SPICANConfigure     ; [CPU_] |33| 
        ; call occurs [#_SPICANConfigure] ; [] |33| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$550	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$550, DW_AT_low_pc(0x00)
	.dwattr $C$DW$550, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$550, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |203| 
$C$DW$551	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$551, DW_AT_low_pc(0x00)
	.dwattr $C$DW$551, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$551, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$552	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$552, DW_AT_low_pc(0x00)
	.dwattr $C$DW$552, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$552, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
$C$DW$553	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$553, DW_AT_low_pc(0x00)
	.dwattr $C$DW$553, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$553, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |202| 
        ; call occurs [#_spi_xmit] ; [] |202| 
	.dwpsn	file "../Source/SPICAN.c",line 203,column 2,is_stmt,isa 0
        MOVB      AL,#15                ; [CPU_] |203| 
$C$DW$554	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$554, DW_AT_low_pc(0x00)
	.dwattr $C$DW$554, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$554, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |203| 
        ; call occurs [#_spi_xmit] ; [] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 204,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |204| 
$C$DW$555	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$555, DW_AT_low_pc(0x00)
	.dwattr $C$DW$555, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$555, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |204| 
        ; call occurs [#_spi_xmit] ; [] |204| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 214,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 214 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |214| 
	.dwpsn	file "../Source/SPICAN.c",line 205,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |205| 
	.dwpsn	file "../Source/SPICAN.c",line 213,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |213| 
	.dwpsn	file "../Source/SPICAN.c",line 214,column 2,is_stmt,isa 0
$C$DW$556	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$556, DW_AT_low_pc(0x00)
	.dwattr $C$DW$556, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$556, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |214| 
        ; call occurs [#_spi_xmit] ; [] |214| 
	.dwpsn	file "../Source/SPICAN.c",line 215,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 215 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |215| 
$C$DW$557	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$557, DW_AT_low_pc(0x00)
	.dwattr $C$DW$557, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$557, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |215| 
        ; call occurs [#_spi_xmit] ; [] |215| 
	.dwpsn	file "../Source/SPICAN.c",line 216,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$558	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$558, DW_AT_low_pc(0x00)
	.dwattr $C$DW$558, DW_AT_name("_spi_recv")
	.dwattr $C$DW$558, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |216| 
        ; call occurs [#_spi_recv] ; [] |216| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 217,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |217| 
$C$DW$559	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$559, DW_AT_low_pc(0x00)
	.dwattr $C$DW$559, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$532, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$532, DW_AT_TI_end_line(0x28)
	.dwattr $C$DW$532, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$532

	.sect	".text"
	.clink
	.global	_SPICANISR

$C$DW$560	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$560, DW_AT_name("SPICANISR")
	.dwattr $C$DW$560, DW_AT_low_pc(_SPICANISR)
	.dwattr $C$DW$560, DW_AT_high_pc(0x00)
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_SPICANISR")
	.dwattr $C$DW$560, DW_AT_external
	.dwattr $C$DW$560, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$560, DW_AT_TI_begin_line(0x332)
	.dwattr $C$DW$560, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$560, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../Source/SPICAN.c",line 819,column 1,is_stmt,address _SPICANISR,isa 0

	.dwfde $C$DW$CIE, _SPICANISR
;----------------------------------------------------------------------
; 818 | void SPICANISR(void)                                                   
; 820 | volatile Uint16 res;                                                   
; 821 | volatile Uint16 inters;                                                
; 822 | Uint16 arr[8];                                                         
; 823 | // Read the CANSTAT to get the Interrupt code                          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANISR                    FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  0 SOE     *
;***************************************************************

_SPICANISR:
;* AL    assigned to _RetVal
$C$DW$561	.dwtag  DW_TAG_variable
	.dwattr $C$DW$561, DW_AT_name("RetVal")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_location[DW_OP_reg0]

$C$DW$562	.dwtag  DW_TAG_variable
	.dwattr $C$DW$562, DW_AT_name("res")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$562, DW_AT_location[DW_OP_breg20 -1]

$C$DW$563	.dwtag  DW_TAG_variable
	.dwattr $C$DW$563, DW_AT_name("inters")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_inters")
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$563, DW_AT_location[DW_OP_breg20 -2]

$C$DW$564	.dwtag  DW_TAG_variable
	.dwattr $C$DW$564, DW_AT_name("arr")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_arr")
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$564, DW_AT_location[DW_OP_breg20 -10]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -12
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 214,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |214| 
	.dwpsn	file "../Source/SPICAN.c",line 213,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |213| 
	.dwpsn	file "../Source/SPICAN.c",line 214,column 2,is_stmt,isa 0
$C$DW$565	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$565, DW_AT_low_pc(0x00)
	.dwattr $C$DW$565, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$565, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |214| 
        ; call occurs [#_spi_xmit] ; [] |214| 
	.dwpsn	file "../Source/SPICAN.c",line 215,column 2,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_] |215| 
$C$DW$566	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$566, DW_AT_low_pc(0x00)
	.dwattr $C$DW$566, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$566, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |215| 
        ; call occurs [#_spi_xmit] ; [] |215| 
	.dwpsn	file "../Source/SPICAN.c",line 216,column 2,is_stmt,isa 0
$C$DW$567	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$567, DW_AT_low_pc(0x00)
	.dwattr $C$DW$567, DW_AT_name("_spi_recv")
	.dwattr $C$DW$567, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |216| 
        ; call occurs [#_spi_recv] ; [] |216| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 217,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |217| 
	.dwpsn	file "../Source/SPICAN.c",line 824,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 824 | res = SPICANReadStat();                                                
;----------------------------------------------------------------------
        MOV       *-SP[1],AL            ; [CPU_] |824| 
	.dwpsn	file "../Source/SPICAN.c",line 825,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 825 | inters = (res & 0x0E) >> 1;                                            
; 827 | // RX1 Buf is full                                                     
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x000e    ; [CPU_] |825| 
        LSR       AL,1                  ; [CPU_] |825| 
        MOV       *-SP[2],AL            ; [CPU_] |825| 
	.dwpsn	file "../Source/SPICAN.c",line 828,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 828 | if(inters == 0x08)                                                     
;----------------------------------------------------------------------
        CMPB      AL,#8                 ; [CPU_] |828| 
        B         $C$L27,NEQ            ; [CPU_] |828| 
        ; branchcc occurs ; [] |828| 
	.dwpsn	file "../Source/SPICAN.c",line 830,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 830 | SPICANReadBuf_Array(arr, 1);                                           
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |830| 
        MOVB      AL,#1                 ; [CPU_] |830| 
        SUBB      XAR4,#10              ; [CPU_U] |830| 
        MOVZ      AR4,AR4               ; [CPU_] |830| 
$C$DW$568	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$568, DW_AT_low_pc(0x00)
	.dwattr $C$DW$568, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$568, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |830| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |830| 
	.dwpsn	file "../Source/SPICAN.c",line 831,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 831 | SPICANBitModify(0x2C, 0x02, 0x00);                                     
; 834 | // RX1 Buf is full                                                     
;----------------------------------------------------------------------
        MOVB      AL,#44                ; [CPU_] |831| 
        MOVB      AH,#2                 ; [CPU_] |831| 
        MOVB      XAR4,#0               ; [CPU_] |831| 
$C$DW$569	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$569, DW_AT_low_pc(0x00)
	.dwattr $C$DW$569, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$569, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |831| 
        ; call occurs [#_SPICANBitModify] ; [] |831| 
$C$L27:    
	.dwpsn	file "../Source/SPICAN.c",line 835,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 835 | if(inters == 0x07)                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_] |835| 
        CMPB      AL,#7                 ; [CPU_] |835| 
        B         $C$L28,NEQ            ; [CPU_] |835| 
        ; branchcc occurs ; [] |835| 
	.dwpsn	file "../Source/SPICAN.c",line 837,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 837 | SPICANReadBuf_Array(arr, 0);                                           
; 838 | // For now, send back dummy data                                       
; 839 | // Wait for the TX Buffer to be ready                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |837| 
        MOVB      AL,#0                 ; [CPU_] |837| 
        SUBB      XAR4,#10              ; [CPU_U] |837| 
        MOVZ      AR4,AR4               ; [CPU_] |837| 
$C$DW$570	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$570, DW_AT_low_pc(0x00)
	.dwattr $C$DW$570, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$570, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |837| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |837| 
	.dwpsn	file "../Source/SPICAN.c",line 840,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 840 | SPICANWaitForTXBuf(0);                                                 
; 841 | // Set the message on the buffer                                       
; 842 | SPICANReadSetT0Message(0x43, 8, arr);                                  
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |840| 
$C$DW$571	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$571, DW_AT_low_pc(0x00)
	.dwattr $C$DW$571, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$571, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |840| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |840| 
	.dwpsn	file "../Source/SPICAN.c",line 342,column 2,is_stmt,isa 0
        MOVB      AL,#67                ; [CPU_] |342| 
$C$DW$572	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$572, DW_AT_low_pc(0x00)
	.dwattr $C$DW$572, DW_AT_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$572, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Addr    ; [CPU_] |342| 
        ; call occurs [#_SPICAN_SetT0Addr] ; [] |342| 
	.dwpsn	file "../Source/SPICAN.c",line 345,column 2,is_stmt,isa 0
        MOVZ      AR4,SP                ; [CPU_] |345| 
        MOVB      AL,#8                 ; [CPU_] |345| 
        SUBB      XAR4,#10              ; [CPU_U] |345| 
        MOVZ      AR4,AR4               ; [CPU_] |345| 
$C$DW$573	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$573, DW_AT_low_pc(0x00)
	.dwattr $C$DW$573, DW_AT_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$573, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Data    ; [CPU_] |345| 
        ; call occurs [#_SPICAN_SetT0Data] ; [] |345| 
	.dwpsn	file "../Source/SPICAN.c",line 843,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 843 | SPICANWaitForTXBuf(0);                                                 
; 844 | // Signal that the message is ready to send                            
; 845 | SPICAN_T0_RTS();                                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |843| 
$C$DW$574	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$574, DW_AT_low_pc(0x00)
	.dwattr $C$DW$574, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$574, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |843| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |843| 
	.dwpsn	file "../Source/SPICAN.c",line 439,column 2,is_stmt,isa 0
        MOVB      AL,#129               ; [CPU_] |439| 
	.dwpsn	file "../Source/SPICAN.c",line 438,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |438| 
	.dwpsn	file "../Source/SPICAN.c",line 439,column 2,is_stmt,isa 0
$C$DW$575	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$575, DW_AT_low_pc(0x00)
	.dwattr $C$DW$575, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$575, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |439| 
        ; call occurs [#_spi_xmit] ; [] |439| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 846,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 846 | SPICANBitModify(0x2C, 0x01, 0x00);                                     
;----------------------------------------------------------------------
        MOVB      AL,#44                ; [CPU_] |846| 
        MOVB      AH,#1                 ; [CPU_] |846| 
        MOVB      XAR4,#0               ; [CPU_] |846| 
	.dwpsn	file "../Source/SPICAN.c",line 440,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |440| 
	.dwpsn	file "../Source/SPICAN.c",line 846,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 848 | return;                                                                
;----------------------------------------------------------------------
$C$DW$576	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$576, DW_AT_low_pc(0x00)
	.dwattr $C$DW$576, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$576, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |846| 
        ; call occurs [#_SPICANBitModify] ; [] |846| 
$C$L28:    
        SUBB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$577	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$577, DW_AT_low_pc(0x00)
	.dwattr $C$DW$577, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$560, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$560, DW_AT_TI_end_line(0x351)
	.dwattr $C$DW$560, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$560

	.sect	".text"
	.clink
	.global	_SPICANCheckInts

$C$DW$578	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$578, DW_AT_name("SPICANCheckInts")
	.dwattr $C$DW$578, DW_AT_low_pc(_SPICANCheckInts)
	.dwattr $C$DW$578, DW_AT_high_pc(0x00)
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_SPICANCheckInts")
	.dwattr $C$DW$578, DW_AT_external
	.dwattr $C$DW$578, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$578, DW_AT_TI_begin_line(0x320)
	.dwattr $C$DW$578, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$578, DW_AT_TI_max_frame_size(-90)
	.dwpsn	file "../Source/SPICAN.c",line 801,column 1,is_stmt,address _SPICANCheckInts,isa 0

	.dwfde $C$DW$CIE, _SPICANCheckInts
$C$DW$579	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$579, DW_AT_name("line")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_line")
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$579, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 800 | void SPICANCheckInts(int line)                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANCheckInts              FR SIZE:  88           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter, 81 Auto,  4 SOE     *
;***************************************************************

_SPICANCheckInts:
;* AL    assigned to _RetVal
$C$DW$580	.dwtag  DW_TAG_variable
	.dwattr $C$DW$580, DW_AT_name("RetVal")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _line
$C$DW$581	.dwtag  DW_TAG_variable
	.dwattr $C$DW$581, DW_AT_name("line")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_line")
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$581, DW_AT_location[DW_OP_reg6]

$C$DW$582	.dwtag  DW_TAG_variable
	.dwattr $C$DW$582, DW_AT_name("interrupts")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_interrupts")
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$582, DW_AT_location[DW_OP_breg20 -4]

$C$DW$583	.dwtag  DW_TAG_variable
	.dwattr $C$DW$583, DW_AT_name("buff")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_buff")
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$134)
	.dwattr $C$DW$583, DW_AT_location[DW_OP_breg20 -84]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVZ      AR2,SP                ; [CPU_] 
        SUBB      FP,#6                 ; [CPU_U] 
        ADDB      SP,#84                ; [CPU_U] 
	.dwcfi	cfa_offset, -90
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 802 | volatile Uint16 interrupts;                                            
; 803 | char buff[80];                                                         
; 804 | // Check interrupts for what all happened                              
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |801| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xffdf ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |189| 
$C$DW$584	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$584, DW_AT_low_pc(0x00)
	.dwattr $C$DW$584, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$584, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |189| 
        ; call occurs [#_spi_xmit] ; [] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |190| 
$C$DW$585	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$585, DW_AT_low_pc(0x00)
	.dwattr $C$DW$585, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$585, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |190| 
        ; call occurs [#_spi_xmit] ; [] |190| 
	.dwpsn	file "../Source/SPICAN.c",line 191,column 2,is_stmt,isa 0
$C$DW$586	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$586, DW_AT_low_pc(0x00)
	.dwattr $C$DW$586, DW_AT_name("_spi_recv")
	.dwattr $C$DW$586, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |191| 
        ; call occurs [#_spi_recv] ; [] |191| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 192,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0020 ; [CPU_] |192| 
	.dwpsn	file "../Source/SPICAN.c",line 805,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 805 | interrupts = SPICANRead(0x2C);                                         
; 807 | // TX Interrupts                                                       
;----------------------------------------------------------------------
        MOV       *-SP[4],AL            ; [CPU_] |805| 
	.dwpsn	file "../Source/SPICAN.c",line 808,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 808 | buff[0] = interrupts;                                                  
; 809 | // RX Interrupts                                                       
;----------------------------------------------------------------------
        MOV       *+FP[6],AL            ; [CPU_] |808| 
	.dwpsn	file "../Source/SPICAN.c",line 810,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 810 | if((interrupts & 0x03) > 0x00)                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_] |810| 
        ANDB      AL,#0x03              ; [CPU_] |810| 
        B         $C$L29,EQ             ; [CPU_] |810| 
        ; branchcc occurs ; [] |810| 
	.dwpsn	file "../Source/SPICAN.c",line 812,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 812 | sprintf( buff, "There was an interrupt on line: %d", line);            
; 813 | //              printf("%s", buff);                                    
; 815 | return;                                                                
;----------------------------------------------------------------------
        MOVL      XAR4,#$C$FSL1         ; [CPU_U] |812| 
        MOVL      *-SP[2],XAR4          ; [CPU_] |812| 
        MOVZ      AR4,SP                ; [CPU_] |812| 
        MOV       *-SP[3],AR1           ; [CPU_] |812| 
        SUBB      XAR4,#84              ; [CPU_U] |812| 
        MOVZ      AR4,AR4               ; [CPU_] |812| 
$C$DW$587	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$587, DW_AT_low_pc(0x00)
	.dwattr $C$DW$587, DW_AT_name("_sprintf")
	.dwattr $C$DW$587, DW_AT_TI_call

        LCR       #_sprintf             ; [CPU_] |812| 
        ; call occurs [#_sprintf] ; [] |812| 
$C$L29:    
        SUBB      SP,#84                ; [CPU_U] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$588	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$588, DW_AT_low_pc(0x00)
	.dwattr $C$DW$588, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$578, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$578, DW_AT_TI_end_line(0x330)
	.dwattr $C$DW$578, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$578

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst:.string"
	.align	2
$C$FSL1:	.string	"There was an interrupt on line: %d",0
;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_delay_us
	.global	_spi_xmit
	.global	_setShelfMinTemp
	.global	_setShelfMaxTemp
	.global	_setShelfMinTempID
	.global	_setShelfVoltage
	.global	_setShelfMaxTempID
	.global	_setSystemCapVoltage
	.global	_setShelfErrors
	.global	_sprintf
	.global	_setShelfAvgTemp
	.global	_spi_recv
	.global	_setModVoltage
	.global	_setModTemp
	.global	_setShelfAlarms
	.global	_GpioDataRegs
	.global	U$$DIV
	.global	I$$MOD
	.global	I$$DIV

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("GPIOA0")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("GPIOA1")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("GPIOA2")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("GPIOA3")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("GPIOA4")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("GPIOA5")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("GPIOA6")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("GPIOA7")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("GPIOA8")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("GPIOA9")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("GPIOA10")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("GPIOA11")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("GPIOA12")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("GPIOA13")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("GPIOA14")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("GPIOA15")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("all")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$606, DW_AT_name("bit")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("GPIOA0")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("GPIOA1")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("GPIOA2")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$610, DW_AT_name("GPIOA3")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$610, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$610, DW_AT_bit_size(0x01)
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("GPIOA4")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$611, DW_AT_bit_size(0x01)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("GPIOA5")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("GPIOA6")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("GPIOA7")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("GPIOA8")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("GPIOA9")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("GPIOA10")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("GPIOA11")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("GPIOA12")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("GPIOA13")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("GPIOA14")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("GPIOA15")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("all")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$624, DW_AT_name("bit")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("GPIOA0")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("GPIOA1")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("GPIOA2")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("GPIOA3")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("GPIOA4")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("GPIOA5")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("GPIOA6")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("GPIOA7")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("GPIOA8")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("GPIOA9")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("GPIOA10")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("GPIOA11")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("GPIOA12")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("GPIOA13")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("GPIOA14")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("GPIOA15")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("all")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$642, DW_AT_name("bit")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("GPIOA0")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$644, DW_AT_name("GPIOA1")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$644, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$644, DW_AT_bit_size(0x01)
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$645, DW_AT_name("GPIOA2")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$645, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$645, DW_AT_bit_size(0x01)
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$646, DW_AT_name("GPIOA3")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$646, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$646, DW_AT_bit_size(0x01)
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$647, DW_AT_name("GPIOA4")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$647, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$647, DW_AT_bit_size(0x01)
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$648, DW_AT_name("GPIOA5")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$648, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$648, DW_AT_bit_size(0x01)
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$649, DW_AT_name("GPIOA6")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$649, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$649, DW_AT_bit_size(0x01)
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$650, DW_AT_name("GPIOA7")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$650, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$650, DW_AT_bit_size(0x01)
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$651, DW_AT_name("GPIOA8")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$651, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$651, DW_AT_bit_size(0x01)
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$652, DW_AT_name("GPIOA9")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$652, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$652, DW_AT_bit_size(0x01)
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$653, DW_AT_name("GPIOA10")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$653, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$653, DW_AT_bit_size(0x01)
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$654, DW_AT_name("GPIOA11")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$654, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$654, DW_AT_bit_size(0x01)
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$655, DW_AT_name("GPIOA12")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$655, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$655, DW_AT_bit_size(0x01)
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$656, DW_AT_name("GPIOA13")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$656, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$656, DW_AT_bit_size(0x01)
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$657, DW_AT_name("GPIOA14")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$657, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$657, DW_AT_bit_size(0x01)
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$658, DW_AT_name("GPIOA15")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$658, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$658, DW_AT_bit_size(0x01)
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$659, DW_AT_name("all")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$660, DW_AT_name("bit")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$661, DW_AT_name("GPIOB0")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$661, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$661, DW_AT_bit_size(0x01)
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$662, DW_AT_name("GPIOB1")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$662, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$662, DW_AT_bit_size(0x01)
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$663, DW_AT_name("GPIOB2")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$663, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$663, DW_AT_bit_size(0x01)
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$664, DW_AT_name("GPIOB3")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$664, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$664, DW_AT_bit_size(0x01)
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$665, DW_AT_name("GPIOB4")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$665, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$665, DW_AT_bit_size(0x01)
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$666, DW_AT_name("GPIOB5")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$666, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$666, DW_AT_bit_size(0x01)
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$667, DW_AT_name("GPIOB6")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$667, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$667, DW_AT_bit_size(0x01)
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$668, DW_AT_name("GPIOB7")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$668, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$668, DW_AT_bit_size(0x01)
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$669, DW_AT_name("GPIOB8")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$669, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$669, DW_AT_bit_size(0x01)
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$670, DW_AT_name("GPIOB9")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$670, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$670, DW_AT_bit_size(0x01)
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$671, DW_AT_name("GPIOB10")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$671, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$671, DW_AT_bit_size(0x01)
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$672, DW_AT_name("GPIOB11")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$672, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$672, DW_AT_bit_size(0x01)
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$673, DW_AT_name("GPIOB12")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$673, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$673, DW_AT_bit_size(0x01)
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$674, DW_AT_name("GPIOB13")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$674, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$674, DW_AT_bit_size(0x01)
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$675, DW_AT_name("GPIOB14")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$675, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$675, DW_AT_bit_size(0x01)
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$676, DW_AT_name("GPIOB15")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$676, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$676, DW_AT_bit_size(0x01)
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$677, DW_AT_name("all")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$678	.dwtag  DW_TAG_member
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$678, DW_AT_name("bit")
	.dwattr $C$DW$678, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$678, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$678, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$679, DW_AT_name("GPIOB0")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$679, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$679, DW_AT_bit_size(0x01)
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$680, DW_AT_name("GPIOB1")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$680, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$680, DW_AT_bit_size(0x01)
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$681, DW_AT_name("GPIOB2")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$681, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$681, DW_AT_bit_size(0x01)
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$682, DW_AT_name("GPIOB3")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$682, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$682, DW_AT_bit_size(0x01)
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$683, DW_AT_name("GPIOB4")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$683, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$683, DW_AT_bit_size(0x01)
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$684, DW_AT_name("GPIOB5")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$684, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$684, DW_AT_bit_size(0x01)
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$685, DW_AT_name("GPIOB6")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$685, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$685, DW_AT_bit_size(0x01)
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$686, DW_AT_name("GPIOB7")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$686, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$686, DW_AT_bit_size(0x01)
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$687, DW_AT_name("GPIOB8")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$687, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$687, DW_AT_bit_size(0x01)
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$688, DW_AT_name("GPIOB9")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$688, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$688, DW_AT_bit_size(0x01)
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$689, DW_AT_name("GPIOB10")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$689, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$689, DW_AT_bit_size(0x01)
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$690, DW_AT_name("GPIOB11")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$690, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$690, DW_AT_bit_size(0x01)
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$691, DW_AT_name("GPIOB12")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$691, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$691, DW_AT_bit_size(0x01)
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$692, DW_AT_name("GPIOB13")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$692, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$692, DW_AT_bit_size(0x01)
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$693, DW_AT_name("GPIOB14")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$693, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$693, DW_AT_bit_size(0x01)
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$694, DW_AT_name("GPIOB15")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$694, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$694, DW_AT_bit_size(0x01)
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$695, DW_AT_name("all")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$696, DW_AT_name("bit")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$697, DW_AT_name("GPIOB0")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$697, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$697, DW_AT_bit_size(0x01)
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$698, DW_AT_name("GPIOB1")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$698, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$698, DW_AT_bit_size(0x01)
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$699, DW_AT_name("GPIOB2")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$699, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$699, DW_AT_bit_size(0x01)
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$700, DW_AT_name("GPIOB3")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$700, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$700, DW_AT_bit_size(0x01)
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$701, DW_AT_name("GPIOB4")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$701, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$701, DW_AT_bit_size(0x01)
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$702, DW_AT_name("GPIOB5")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$702, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$702, DW_AT_bit_size(0x01)
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$703, DW_AT_name("GPIOB6")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$703, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$703, DW_AT_bit_size(0x01)
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$704, DW_AT_name("GPIOB7")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$704, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$704, DW_AT_bit_size(0x01)
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$705	.dwtag  DW_TAG_member
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$705, DW_AT_name("GPIOB8")
	.dwattr $C$DW$705, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$705, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$705, DW_AT_bit_size(0x01)
	.dwattr $C$DW$705, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$705, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$706, DW_AT_name("GPIOB9")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("GPIOB10")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("GPIOB11")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("GPIOB12")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("GPIOB13")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("GPIOB14")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("GPIOB15")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("all")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$714, DW_AT_name("bit")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("GPIOB0")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("GPIOB1")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("GPIOB2")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("GPIOB3")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("GPIOB4")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("GPIOB5")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("GPIOB6")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("GPIOB7")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$722, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$722, DW_AT_bit_size(0x01)
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$723, DW_AT_name("GPIOB8")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$723, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$723, DW_AT_bit_size(0x01)
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("GPIOB9")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("GPIOB10")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$726, DW_AT_name("GPIOB11")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("GPIOB12")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("GPIOB13")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("GPIOB14")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("GPIOB15")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("all")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$732, DW_AT_name("bit")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("GPIOD0")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("GPIOD1")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$735, DW_AT_name("rsvd1")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$735, DW_AT_bit_size(0x03)
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("GPIOD5")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("GPIOD6")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("rsvd2")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$738, DW_AT_bit_size(0x09)
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("all")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$740, DW_AT_name("bit")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$741, DW_AT_name("GPIOD0")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$741, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$741, DW_AT_bit_size(0x01)
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("GPIOD1")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$742, DW_AT_bit_size(0x01)
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("rsvd1")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$743, DW_AT_bit_size(0x03)
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("GPIOD5")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$744, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$744, DW_AT_bit_size(0x01)
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$745, DW_AT_name("GPIOD6")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$745, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$745, DW_AT_bit_size(0x01)
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("rsvd2")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$746, DW_AT_bit_size(0x09)
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("all")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$748, DW_AT_name("bit")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("GPIOD0")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("GPIOD1")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$751, DW_AT_name("rsvd1")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$751, DW_AT_bit_size(0x03)
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$752, DW_AT_name("GPIOD5")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("GPIOD6")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("rsvd2")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$754, DW_AT_bit_size(0x09)
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("all")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$756, DW_AT_name("bit")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("GPIOD0")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("GPIOD1")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("rsvd1")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$759, DW_AT_bit_size(0x03)
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("GPIOD5")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("GPIOD6")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("rsvd2")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$762, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$762, DW_AT_bit_size(0x09)
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$763, DW_AT_name("all")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$764, DW_AT_name("bit")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$765, DW_AT_name("GPIOE0")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$766, DW_AT_name("GPIOE1")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$766, DW_AT_bit_size(0x01)
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$767, DW_AT_name("GPIOE2")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$767, DW_AT_bit_size(0x01)
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$768, DW_AT_name("rsvd1")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$768, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$769, DW_AT_name("all")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$770, DW_AT_name("bit")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("GPIOE0")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$772, DW_AT_name("GPIOE1")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$773, DW_AT_name("GPIOE2")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$774, DW_AT_name("rsvd1")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$774, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("all")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$776, DW_AT_name("bit")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("GPIOE0")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$778, DW_AT_name("GPIOE1")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$779, DW_AT_name("GPIOE2")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("rsvd1")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$780, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$780, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$781, DW_AT_name("all")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$782, DW_AT_name("bit")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$783, DW_AT_name("GPIOE0")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$783, DW_AT_bit_size(0x01)
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$784, DW_AT_name("GPIOE1")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$784, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$784, DW_AT_bit_size(0x01)
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$785, DW_AT_name("GPIOE2")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$785, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$785, DW_AT_bit_size(0x01)
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("rsvd1")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$786, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("all")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$788, DW_AT_name("bit")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("GPIOF0")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("GPIOF1")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("GPIOF2")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$791, DW_AT_bit_size(0x01)
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("GPIOF3")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$792, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$792, DW_AT_bit_size(0x01)
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$793, DW_AT_name("GPIOF4")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$793, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$793, DW_AT_bit_size(0x01)
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("GPIOF5")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("GPIOF6")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("GPIOF7")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$796, DW_AT_bit_size(0x01)
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("GPIOF8")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("GPIOF9")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("GPIOF10")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$799, DW_AT_bit_size(0x01)
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("GPIOF11")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$800, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$800, DW_AT_bit_size(0x01)
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$801, DW_AT_name("GPIOF12")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$801, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$801, DW_AT_bit_size(0x01)
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("GPIOF13")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$802, DW_AT_bit_size(0x01)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("GPIOF14")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$803, DW_AT_bit_size(0x01)
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("GPIOF15")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$804, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$804, DW_AT_bit_size(0x01)
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$805, DW_AT_name("all")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$806, DW_AT_name("bit")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("GPIOF0")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("GPIOF1")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$808, DW_AT_bit_size(0x01)
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("GPIOF2")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$809, DW_AT_bit_size(0x01)
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("GPIOF3")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$810, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$810, DW_AT_bit_size(0x01)
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$811, DW_AT_name("GPIOF4")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$811, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$811, DW_AT_bit_size(0x01)
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("GPIOF5")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("GPIOF6")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("GPIOF7")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$814, DW_AT_bit_size(0x01)
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("GPIOF8")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$815, DW_AT_bit_size(0x01)
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("GPIOF9")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$816, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$816, DW_AT_bit_size(0x01)
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$817, DW_AT_name("GPIOF10")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$817, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$817, DW_AT_bit_size(0x01)
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("GPIOF11")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$818, DW_AT_bit_size(0x01)
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("GPIOF12")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$819, DW_AT_bit_size(0x01)
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("GPIOF13")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$820, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$820, DW_AT_bit_size(0x01)
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$821, DW_AT_name("GPIOF14")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$821, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$821, DW_AT_bit_size(0x01)
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("GPIOF15")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$822, DW_AT_bit_size(0x01)
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("all")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$824, DW_AT_name("bit")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("GPIOF0")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("GPIOF1")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$826, DW_AT_bit_size(0x01)
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$827, DW_AT_name("GPIOF2")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$827, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$827, DW_AT_bit_size(0x01)
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("GPIOF3")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$828, DW_AT_bit_size(0x01)
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("GPIOF4")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$829, DW_AT_bit_size(0x01)
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("GPIOF5")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$830, DW_AT_bit_size(0x01)
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("GPIOF6")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$831, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$831, DW_AT_bit_size(0x01)
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("GPIOF7")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$832, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$832, DW_AT_bit_size(0x01)
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("GPIOF8")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$833, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$833, DW_AT_bit_size(0x01)
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("GPIOF9")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$834, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$834, DW_AT_bit_size(0x01)
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("GPIOF10")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$835, DW_AT_bit_size(0x01)
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("GPIOF11")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$836, DW_AT_bit_size(0x01)
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("GPIOF12")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$837, DW_AT_bit_size(0x01)
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("GPIOF13")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$838, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$838, DW_AT_bit_size(0x01)
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$839, DW_AT_name("GPIOF14")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$839, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$839, DW_AT_bit_size(0x01)
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("GPIOF15")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$840, DW_AT_bit_size(0x01)
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("all")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$842, DW_AT_name("bit")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("GPIOF0")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$843, DW_AT_bit_size(0x01)
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("GPIOF1")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$844, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$844, DW_AT_bit_size(0x01)
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$845, DW_AT_name("GPIOF2")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$845, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$845, DW_AT_bit_size(0x01)
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("GPIOF3")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$846, DW_AT_bit_size(0x01)
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("GPIOF4")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("GPIOF5")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$848, DW_AT_bit_size(0x01)
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("GPIOF6")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$849, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$849, DW_AT_bit_size(0x01)
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$850, DW_AT_name("GPIOF7")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$850, DW_AT_bit_size(0x01)
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("GPIOF8")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("GPIOF9")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("GPIOF10")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("GPIOF11")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("GPIOF12")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("GPIOF13")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$856, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$856, DW_AT_bit_size(0x01)
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$857, DW_AT_name("GPIOF14")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$857, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$857, DW_AT_bit_size(0x01)
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("GPIOF15")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$858, DW_AT_bit_size(0x01)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("all")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$860, DW_AT_name("bit")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("rsvd1")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$861, DW_AT_bit_size(0x04)
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$862, DW_AT_name("GPIOG4")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$862, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$862, DW_AT_bit_size(0x01)
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$863, DW_AT_name("GPIOG5")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$863, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$863, DW_AT_bit_size(0x01)
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$864	.dwtag  DW_TAG_member
	.dwattr $C$DW$864, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$864, DW_AT_name("rsvd2")
	.dwattr $C$DW$864, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$864, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$864, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$864, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$864, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$865	.dwtag  DW_TAG_member
	.dwattr $C$DW$865, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$865, DW_AT_name("all")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$866, DW_AT_name("bit")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$866, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$866, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$867	.dwtag  DW_TAG_member
	.dwattr $C$DW$867, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$867, DW_AT_name("rsvd1")
	.dwattr $C$DW$867, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$867, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$867, DW_AT_bit_size(0x04)
	.dwattr $C$DW$867, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$867, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$868, DW_AT_name("GPIOG4")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$868, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$868, DW_AT_bit_size(0x01)
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$869, DW_AT_name("GPIOG5")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$869, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$869, DW_AT_bit_size(0x01)
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$870, DW_AT_name("rsvd2")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$870, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$870, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$871, DW_AT_name("all")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$872, DW_AT_name("bit")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$873, DW_AT_name("rsvd1")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$873, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$873, DW_AT_bit_size(0x04)
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$874, DW_AT_name("GPIOG4")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$874, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$874, DW_AT_bit_size(0x01)
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$875, DW_AT_name("GPIOG5")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$875, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$875, DW_AT_bit_size(0x01)
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$876, DW_AT_name("rsvd2")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$876, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$876, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$877, DW_AT_name("all")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$878, DW_AT_name("bit")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$879, DW_AT_name("rsvd1")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$879, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$879, DW_AT_bit_size(0x04)
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$880, DW_AT_name("GPIOG4")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$880, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$880, DW_AT_bit_size(0x01)
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$881, DW_AT_name("GPIOG5")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$881, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$881, DW_AT_bit_size(0x01)
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$882, DW_AT_name("rsvd2")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$882, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$882, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$883, DW_AT_name("all")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$884, DW_AT_name("bit")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x20)
$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$885, DW_AT_name("GPADAT")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$886, DW_AT_name("GPASET")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$887, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$888, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$889, DW_AT_name("GPBDAT")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$890, DW_AT_name("GPBSET")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$891, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$892	.dwtag  DW_TAG_member
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$892, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$892, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$892, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$892, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$893, DW_AT_name("rsvd1")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$894, DW_AT_name("GPDDAT")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$895, DW_AT_name("GPDSET")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$896, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$897	.dwtag  DW_TAG_member
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$897, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$897, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$897, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$897, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$898	.dwtag  DW_TAG_member
	.dwattr $C$DW$898, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$898, DW_AT_name("GPEDAT")
	.dwattr $C$DW$898, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$898, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$898, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$899	.dwtag  DW_TAG_member
	.dwattr $C$DW$899, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$899, DW_AT_name("GPESET")
	.dwattr $C$DW$899, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$899, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$899, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$900	.dwtag  DW_TAG_member
	.dwattr $C$DW$900, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$900, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$900, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$900, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$900, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$901	.dwtag  DW_TAG_member
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$901, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$901, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$901, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$901, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$902	.dwtag  DW_TAG_member
	.dwattr $C$DW$902, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$902, DW_AT_name("GPFDAT")
	.dwattr $C$DW$902, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$902, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$902, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$903	.dwtag  DW_TAG_member
	.dwattr $C$DW$903, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$903, DW_AT_name("GPFSET")
	.dwattr $C$DW$903, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$903, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$903, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$904	.dwtag  DW_TAG_member
	.dwattr $C$DW$904, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$904, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$904, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$904, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$904, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$905	.dwtag  DW_TAG_member
	.dwattr $C$DW$905, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$905, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$905, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$905, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$905, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$906	.dwtag  DW_TAG_member
	.dwattr $C$DW$906, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$906, DW_AT_name("GPGDAT")
	.dwattr $C$DW$906, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$906, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$906, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$907	.dwtag  DW_TAG_member
	.dwattr $C$DW$907, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$907, DW_AT_name("GPGSET")
	.dwattr $C$DW$907, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$907, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$907, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$908	.dwtag  DW_TAG_member
	.dwattr $C$DW$908, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$908, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$908, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$908, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$908, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$909	.dwtag  DW_TAG_member
	.dwattr $C$DW$909, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$909, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$909, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$909, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$909, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$910	.dwtag  DW_TAG_member
	.dwattr $C$DW$910, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$910, DW_AT_name("rsvd2")
	.dwattr $C$DW$910, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$910, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$910, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$911	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$911, DW_AT_type(*$C$DW$T$69)

$C$DW$T$70	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$911)

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

$C$DW$912	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$912, DW_AT_type(*$C$DW$T$10)

$C$DW$T$101	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$912)


$C$DW$T$102	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$102, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x04)
$C$DW$913	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$913, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$102

$C$DW$914	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$914, DW_AT_type(*$C$DW$T$10)

$C$DW$T$106	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$106, DW_AT_type(*$C$DW$914)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$915	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$915, DW_AT_type(*$C$DW$T$19)

$C$DW$T$108	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$108, DW_AT_type(*$C$DW$915)

$C$DW$916	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$916, DW_AT_type(*$C$DW$T$19)

$C$DW$T$109	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$109, DW_AT_type(*$C$DW$916)


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$917	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$917, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$68

$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)

$C$DW$918	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$918, DW_AT_type(*$C$DW$T$77)

$C$DW$T$110	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$110, DW_AT_type(*$C$DW$918)


$C$DW$T$115	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x08)
$C$DW$919	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$919, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$115

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$920	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$920, DW_AT_type(*$C$DW$T$12)

$C$DW$T$129	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$129, DW_AT_type(*$C$DW$920)

$C$DW$921	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$921, DW_AT_type(*$C$DW$T$12)

$C$DW$T$130	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$130, DW_AT_type(*$C$DW$921)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$131	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$131, DW_AT_name("Uint32")
	.dwattr $C$DW$T$131, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$131, DW_AT_language(DW_LANG_C)

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

$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)

$C$DW$922	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$922, DW_AT_type(*$C$DW$T$5)

$C$DW$T$92	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$92, DW_AT_type(*$C$DW$922)

$C$DW$T$93	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$93, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$T$93, DW_AT_address_class(0x20)


$C$DW$T$134	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$134, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$134, DW_AT_byte_size(0x50)
$C$DW$923	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$923, DW_AT_upper_bound(0x4f)

	.dwendtag $C$DW$T$134

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

$C$DW$924	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$924, DW_AT_name("AL")
	.dwattr $C$DW$924, DW_AT_location[DW_OP_reg0]

$C$DW$925	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$925, DW_AT_name("AH")
	.dwattr $C$DW$925, DW_AT_location[DW_OP_reg1]

$C$DW$926	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$926, DW_AT_name("PL")
	.dwattr $C$DW$926, DW_AT_location[DW_OP_reg2]

$C$DW$927	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$927, DW_AT_name("PH")
	.dwattr $C$DW$927, DW_AT_location[DW_OP_reg3]

$C$DW$928	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$928, DW_AT_name("SP")
	.dwattr $C$DW$928, DW_AT_location[DW_OP_reg20]

$C$DW$929	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$929, DW_AT_name("XT")
	.dwattr $C$DW$929, DW_AT_location[DW_OP_reg21]

$C$DW$930	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$930, DW_AT_name("T")
	.dwattr $C$DW$930, DW_AT_location[DW_OP_reg22]

$C$DW$931	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$931, DW_AT_name("ST0")
	.dwattr $C$DW$931, DW_AT_location[DW_OP_reg23]

$C$DW$932	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$932, DW_AT_name("ST1")
	.dwattr $C$DW$932, DW_AT_location[DW_OP_reg24]

$C$DW$933	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$933, DW_AT_name("PC")
	.dwattr $C$DW$933, DW_AT_location[DW_OP_reg25]

$C$DW$934	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$934, DW_AT_name("RPC")
	.dwattr $C$DW$934, DW_AT_location[DW_OP_reg26]

$C$DW$935	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$935, DW_AT_name("FP")
	.dwattr $C$DW$935, DW_AT_location[DW_OP_reg28]

$C$DW$936	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$936, DW_AT_name("DP")
	.dwattr $C$DW$936, DW_AT_location[DW_OP_reg29]

$C$DW$937	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$937, DW_AT_name("SXM")
	.dwattr $C$DW$937, DW_AT_location[DW_OP_reg30]

$C$DW$938	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$938, DW_AT_name("PM")
	.dwattr $C$DW$938, DW_AT_location[DW_OP_reg31]

$C$DW$939	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$939, DW_AT_name("OVM")
	.dwattr $C$DW$939, DW_AT_location[DW_OP_regx 0x20]

$C$DW$940	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$940, DW_AT_name("PAGE0")
	.dwattr $C$DW$940, DW_AT_location[DW_OP_regx 0x21]

$C$DW$941	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$941, DW_AT_name("AMODE")
	.dwattr $C$DW$941, DW_AT_location[DW_OP_regx 0x22]

$C$DW$942	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$942, DW_AT_name("INTM")
	.dwattr $C$DW$942, DW_AT_location[DW_OP_regx 0x23]

$C$DW$943	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$943, DW_AT_name("IFR")
	.dwattr $C$DW$943, DW_AT_location[DW_OP_regx 0x24]

$C$DW$944	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$944, DW_AT_name("IER")
	.dwattr $C$DW$944, DW_AT_location[DW_OP_regx 0x25]

$C$DW$945	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$945, DW_AT_name("V")
	.dwattr $C$DW$945, DW_AT_location[DW_OP_regx 0x26]

$C$DW$946	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$946, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$946, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$947	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$947, DW_AT_name("VOL")
	.dwattr $C$DW$947, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$948	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$948, DW_AT_name("AR0")
	.dwattr $C$DW$948, DW_AT_location[DW_OP_reg4]

$C$DW$949	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$949, DW_AT_name("XAR0")
	.dwattr $C$DW$949, DW_AT_location[DW_OP_reg5]

$C$DW$950	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$950, DW_AT_name("AR1")
	.dwattr $C$DW$950, DW_AT_location[DW_OP_reg6]

$C$DW$951	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$951, DW_AT_name("XAR1")
	.dwattr $C$DW$951, DW_AT_location[DW_OP_reg7]

$C$DW$952	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$952, DW_AT_name("AR2")
	.dwattr $C$DW$952, DW_AT_location[DW_OP_reg8]

$C$DW$953	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$953, DW_AT_name("XAR2")
	.dwattr $C$DW$953, DW_AT_location[DW_OP_reg9]

$C$DW$954	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$954, DW_AT_name("AR3")
	.dwattr $C$DW$954, DW_AT_location[DW_OP_reg10]

$C$DW$955	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$955, DW_AT_name("XAR3")
	.dwattr $C$DW$955, DW_AT_location[DW_OP_reg11]

$C$DW$956	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$956, DW_AT_name("AR4")
	.dwattr $C$DW$956, DW_AT_location[DW_OP_reg12]

$C$DW$957	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$957, DW_AT_name("XAR4")
	.dwattr $C$DW$957, DW_AT_location[DW_OP_reg13]

$C$DW$958	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$958, DW_AT_name("AR5")
	.dwattr $C$DW$958, DW_AT_location[DW_OP_reg14]

$C$DW$959	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$959, DW_AT_name("XAR5")
	.dwattr $C$DW$959, DW_AT_location[DW_OP_reg15]

$C$DW$960	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$960, DW_AT_name("AR6")
	.dwattr $C$DW$960, DW_AT_location[DW_OP_reg16]

$C$DW$961	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$961, DW_AT_name("XAR6")
	.dwattr $C$DW$961, DW_AT_location[DW_OP_reg17]

$C$DW$962	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$962, DW_AT_name("AR7")
	.dwattr $C$DW$962, DW_AT_location[DW_OP_reg18]

$C$DW$963	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$963, DW_AT_name("XAR7")
	.dwattr $C$DW$963, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


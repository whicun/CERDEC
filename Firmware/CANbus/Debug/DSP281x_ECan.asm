;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.6.LTS *
;* Date/Time created: Mon Jan 20 11:05:39 2020                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/DSP281x_ECan.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.6.LTS Copyright (c) 1996-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\antons\workspace_v6_1\CANbus\Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("GpioMuxRegs")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_GpioMuxRegs")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$145)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external

	.global	_ECanaShadow
_ECanaShadow:	.usect	".ebss",52,1,1
$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("ECanaShadow")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_ECanaShadow")
	.dwattr $C$DW$2, DW_AT_location[DW_OP_addr _ECanaShadow]
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$82)
	.dwattr $C$DW$2, DW_AT_external

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("ECanaRegs")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_ECanaRegs")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$141)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("ECanaMboxes")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_ECanaMboxes")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$139)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.6.LTS\bin\opt2000.exe C:\\Users\\antons\\AppData\\Local\\Temp\\{F686E62F-BF4D-4B96-A9BE-6015857024D0} C:\\Users\\antons\\AppData\\Local\\Temp\\{47D26B12-0F62-4AD3-812B-9B86640F8411} 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.6.LTS\bin\ac2000.exe -@C:\\Users\\antons\\AppData\\Local\\Temp\\{8008434E-2631-4FD1-8C82-F7735ADDE45F} 
	.sect	".text"
	.clink
	.global	_mailboxTX

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("mailboxTX")
	.dwattr $C$DW$5, DW_AT_low_pc(_mailboxTX)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_mailboxTX")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../Source/DSP281x_ECan.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x16)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/DSP281x_ECan.c",line 22,column 56,is_stmt,address _mailboxTX,isa 0

	.dwfde $C$DW$CIE, _mailboxTX
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("dataH")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_dataH")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("dataL")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_dataL")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$12)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_breg20 -4]

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("mailboxBit")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_mailboxBit")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]


;***************************************************************
;* FNAME: _mailboxTX                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_mailboxTX:
;* AL    assigned to $O$C1
;* T     assigned to _mailboxBit
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("mailboxBit")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_mailboxBit")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$151)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg22]

;* AR7   assigned to _dataL
$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("dataL")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_dataL")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg18]

;* AR6   assigned to _dataH
$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("dataH")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_dataH")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$155)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
;----------------------------------------------------------------------
;  22 | void mailboxTX(long dataH, long dataL, int mailboxBit) {               
;----------------------------------------------------------------------
        MOV       T,AR4                 ; [CPU_] |22| 
        MOVL      XAR6,ACC              ; [CPU_] |22| 
        MOVL      XAR7,*-SP[4]          ; [CPU_] |22| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 23,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  23 | switch(mailboxBit) {                                                   
;  24 |         case 0:                                                        
;  25 |                 ECanaMboxes.MBOX0.MDL.all = dataL;                     
;  26 |                 ECanaMboxes.MBOX0.MDH.all = dataH;                     
;  27 |         break;                                                         
;  28 |         case 10:                                                       
;  29 |                 ECanaMboxes.MBOX10.MDL.all = dataL;                    
;  30 |                 ECanaMboxes.MBOX10.MDH.all = dataH;                    
;  32 |         break;                                                         
;  33 |         case 11:                                                       
;  34 |                 ECanaMboxes.MBOX11.MDL.all = dataL;                    
;  35 |                 ECanaMboxes.MBOX11.MDH.all = dataH;                    
;  37 |         break;                                                         
;  38 |         case 12:                                                       
;  39 |                 ECanaMboxes.MBOX12.MDL.all = dataL;                    
;  40 |                 ECanaMboxes.MBOX12.MDH.all = dataH;                    
;  42 |         break;                                                         
;  43 |         case 13:                                                       
;----------------------------------------------------------------------
        MOV       AL,T                  ; [CPU_] |23| 
        CMPB      AL,#11                ; [CPU_] |23| 
        B         $C$L1,GT              ; [CPU_] |23| 
        ; branchcc occurs ; [] |23| 
        CMPB      AL,#11                ; [CPU_] |23| 
        B         $C$L3,EQ              ; [CPU_] |23| 
        ; branchcc occurs ; [] |23| 
        CMPB      AL,#0                 ; [CPU_] |23| 
        B         $C$L5,EQ              ; [CPU_] |23| 
        ; branchcc occurs ; [] |23| 
        CMPB      AL,#10                ; [CPU_] |23| 
        B         $C$L4,EQ              ; [CPU_] |23| 
        ; branchcc occurs ; [] |23| 
        B         $C$L6,UNC             ; [CPU_] |23| 
        ; branch occurs ; [] |23| 
$C$L1:    
        CMPB      AL,#12                ; [CPU_] |23| 
        B         $C$L2,EQ              ; [CPU_] |23| 
        ; branchcc occurs ; [] |23| 
        CMPB      AL,#13                ; [CPU_] |23| 
        B         $C$L6,NEQ             ; [CPU_] |23| 
        ; branchcc occurs ; [] |23| 
        MOVW      DP,#_ECanaMboxes+108  ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 44,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  44 | ECanaMboxes.MBOX13.MDL.all = dataL;                                    
;----------------------------------------------------------------------
        MOVL      @_ECanaMboxes+108,XAR7 ; [CPU_] |44| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 45,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
;  45 | ECanaMboxes.MBOX13.MDH.all = dataH;                                    
;----------------------------------------------------------------------
        MOVL      @_ECanaMboxes+110,XAR6 ; [CPU_] |45| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 47,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | break;                                                                 
;  48 | default:                                                               
;----------------------------------------------------------------------
        B         $C$L6,UNC             ; [CPU_] |47| 
        ; branch occurs ; [] |47| 
$C$L2:    
        MOVW      DP,#_ECanaMboxes+100  ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 39,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+100,XAR7 ; [CPU_] |39| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 40,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+102,XAR6 ; [CPU_] |40| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 42,column 3,is_stmt,isa 0
        B         $C$L6,UNC             ; [CPU_] |42| 
        ; branch occurs ; [] |42| 
$C$L3:    
        MOVW      DP,#_ECanaMboxes+92   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 34,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+92,XAR7 ; [CPU_] |34| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 35,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+94,XAR6 ; [CPU_] |35| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 37,column 3,is_stmt,isa 0
        B         $C$L6,UNC             ; [CPU_] |37| 
        ; branch occurs ; [] |37| 
$C$L4:    
        MOVW      DP,#_ECanaMboxes+84   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 29,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+84,XAR7 ; [CPU_] |29| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 30,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+86,XAR6 ; [CPU_] |30| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 32,column 3,is_stmt,isa 0
        B         $C$L6,UNC             ; [CPU_] |32| 
        ; branch occurs ; [] |32| 
$C$L5:    
        MOVW      DP,#_ECanaMboxes+4    ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 25,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+4,XAR7  ; [CPU_] |25| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 26,column 4,is_stmt,isa 0
        MOVL      @_ECanaMboxes+6,XAR6  ; [CPU_] |26| 
$C$L6:    
	.dwpsn	file "../Source/DSP281x_ECan.c",line 51,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  51 | ECanaShadow.CANTA.all = (Uint32)1<<mailboxBit;                         
;----------------------------------------------------------------------
        MOVB      ACC,#1                ; [CPU_] |51| 
        MOVW      DP,#_ECanaShadow+8    ; [CPU_U] 
        LSLL      ACC,T                 ; [CPU_] |51| 
        MOVL      @_ECanaShadow+8,ACC   ; [CPU_] |51| 
        MOVW      DP,#_ECanaRegs+8      ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 52,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  52 | ECanaRegs.CANTA.all = ECanaShadow.CANTA.all;                           
;----------------------------------------------------------------------
        MOVL      @_ECanaRegs+8,ACC     ; [CPU_] |52| 
        MOVW      DP,#_ECanaShadow+4    ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 54,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | ECanaShadow.CANTRS.all = (Uint32)1<<mailboxBit;                        
;----------------------------------------------------------------------
        MOVL      @_ECanaShadow+4,ACC   ; [CPU_] |54| 
        MOVW      DP,#_ECanaRegs+4      ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 55,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  55 | ECanaRegs.CANTRS.all = ECanaShadow.CANTRS.all;                         
;----------------------------------------------------------------------
        MOVL      @_ECanaRegs+4,ACC     ; [CPU_] |55| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../Source/DSP281x_ECan.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x39)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.global	_configCAN

$C$DW$13	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$13, DW_AT_name("configCAN")
	.dwattr $C$DW$13, DW_AT_low_pc(_configCAN)
	.dwattr $C$DW$13, DW_AT_high_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_configCAN")
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_TI_begin_file("../Source/DSP281x_ECan.c")
	.dwattr $C$DW$13, DW_AT_TI_begin_line(0xf6)
	.dwattr $C$DW$13, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$13, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/DSP281x_ECan.c",line 246,column 18,is_stmt,address _configCAN,isa 0

	.dwfde $C$DW$CIE, _configCAN
;----------------------------------------------------------------------
; 246 | void configCAN() {                                                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _configCAN                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_configCAN:
;* AR4   assigned to $O$C1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/DSP281x_ECan.c",line 248,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 248 | ECanaMboxes.MBOX0.MSGID.bit.STDMSGID   = 0x420;         // User CMD (ou
;     | t)                                                                     
;----------------------------------------------------------------------
        MOVL      XAR4,#_ECanaMboxes    ; [CPU_U] |248| 
        MOVW      DP,#_ECanaMboxes+1    ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 249,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 249 | ECanaMboxes.MBOX1.MSGID.bit.STDMSGID   = 0x430;         // Conv_stat (i
;     | n)                                                                     
;----------------------------------------------------------------------
        MOVB      XAR0,#9               ; [CPU_] |249| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 248,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[1],#0xf003  ; [CPU_] |248| 
        OR        AL,#0x1080            ; [CPU_] |248| 
        MOV       @_ECanaMboxes+1,AL    ; [CPU_] |248| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 249,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf003 ; [CPU_] |249| 
        OR        AL,#0x10c0            ; [CPU_] |249| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 250,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | ECanaMboxes.MBOX2.MSGID.bit.STDMSGID   = 0x431;         // conv_data1 (
;     | in)                                                                    
;----------------------------------------------------------------------
        MOVB      XAR0,#17              ; [CPU_] |250| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 249,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+9,AL    ; [CPU_] |249| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 250,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf007 ; [CPU_] |250| 
        OR        AL,#0x10c4            ; [CPU_] |250| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 251,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 251 | ECanaMboxes.MBOX3.MSGID.bit.STDMSGID   = 0x432;         // conv_data2 (
;     | in)                                                                    
;----------------------------------------------------------------------
        MOVB      XAR0,#25              ; [CPU_] |251| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 250,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+17,AL   ; [CPU_] |250| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 251,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf003 ; [CPU_] |251| 
        OR        AL,#0x10c8            ; [CPU_] |251| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 252,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 252 | ECanaMboxes.MBOX4.MSGID.bit.STDMSGID   = 0x433;         // conv_data3 (
;     | in)                                                                    
;----------------------------------------------------------------------
        MOVB      XAR0,#33              ; [CPU_] |252| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 251,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+25,AL   ; [CPU_] |251| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 252,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf00f ; [CPU_] |252| 
        OR        AL,#0x10cc            ; [CPU_] |252| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 253,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | ECanaMboxes.MBOX5.MSGID.bit.STDMSGID   = 0x434;         // conv_data4 (
;     | in)                                                                    
;----------------------------------------------------------------------
        MOVB      XAR0,#41              ; [CPU_] |253| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 252,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+33,AL   ; [CPU_] |252| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 253,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf003 ; [CPU_] |253| 
        OR        AL,#0x10d0            ; [CPU_] |253| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 254,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 254 | ECanaMboxes.MBOX6.MSGID.bit.STDMSGID   = 0x435;         // conv_temp1 (
;     | in)                                                                    
;----------------------------------------------------------------------
        MOVB      XAR0,#49              ; [CPU_] |254| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 253,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+41,AL   ; [CPU_] |253| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 254,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf007 ; [CPU_] |254| 
        OR        AL,#0x10d4            ; [CPU_] |254| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 255,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | ECanaMboxes.MBOX7.MSGID.bit.STDMSGID   = 0x436;         // conv_temp2 (
;     | in)                                                                    
;----------------------------------------------------------------------
        MOVB      XAR0,#57              ; [CPU_] |255| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 254,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+49,AL   ; [CPU_] |254| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 255,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf003 ; [CPU_] |255| 
        OR        AL,#0x10d8            ; [CPU_] |255| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 257,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 257 | ECanaMboxes.MBOX10.MSGID.bit.STDMSGID   = 0x400;                // bms_
;     | stat (out)                                                             
;----------------------------------------------------------------------
        MOVB      XAR0,#81              ; [CPU_] |257| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 255,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+57,AL   ; [CPU_] |255| 
        MOVW      DP,#_ECanaMboxes+81   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 257,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf003 ; [CPU_] |257| 
        OR        AL,#0x1000            ; [CPU_] |257| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 258,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 258 | ECanaMboxes.MBOX11.MSGID.bit.STDMSGID   = 0x401;                // bms_
;     | data1 (out)                                                            
;----------------------------------------------------------------------
        MOVB      XAR0,#89              ; [CPU_] |258| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 257,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+81,AL   ; [CPU_] |257| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 258,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf007 ; [CPU_] |258| 
        OR        AL,#0x1004            ; [CPU_] |258| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 259,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 259 | ECanaMboxes.MBOX12.MSGID.bit.STDMSGID   = 0x402;                // bms_
;     | data2 (out)                                                            
;----------------------------------------------------------------------
        MOVB      XAR0,#97              ; [CPU_] |259| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 258,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+89,AL   ; [CPU_] |258| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 259,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf003 ; [CPU_] |259| 
        OR        AL,#0x1008            ; [CPU_] |259| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 260,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 260 | ECanaMboxes.MBOX13.MSGID.bit.STDMSGID   = 0x403;                // bms_
;     | data3 (out)                                                            
;----------------------------------------------------------------------
        MOVB      XAR0,#105             ; [CPU_] |260| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 259,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+97,AL   ; [CPU_] |259| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 260,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xf00f ; [CPU_] |260| 
        OR        AL,#0x100c            ; [CPU_] |260| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 261,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 261 | ECanaMboxes.MBOX14.MSGID.bit.STDMSGID   = 0x410;                // bms_
;     | cmd (in)                                                               
;----------------------------------------------------------------------
        MOVB      XAR0,#113             ; [CPU_] |261| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 260,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+105,AL  ; [CPU_] |260| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 261,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 263 | ECanaMboxes.MBOX14.MSGID.bit.IDE = 0;                                  
; 264 | ECanaMboxes.MBOX13.MSGID.bit.IDE = 0;                                  
; 265 | ECanaMboxes.MBOX12.MSGID.bit.IDE = 0;                                  
; 266 | ECanaMboxes.MBOX11.MSGID.bit.IDE = 0;                                  
; 267 | ECanaMboxes.MBOX10.MSGID.bit.IDE = 0;                                  
; 268 | ECanaMboxes.MBOX7.MSGID.bit.IDE = 0;                                   
; 269 | ECanaMboxes.MBOX6.MSGID.bit.IDE = 0;                                   
; 270 | ECanaMboxes.MBOX5.MSGID.bit.IDE = 0;                                   
; 271 | ECanaMboxes.MBOX4.MSGID.bit.IDE = 0;                                   
; 272 | ECanaMboxes.MBOX3.MSGID.bit.IDE = 0;                                   
; 273 | ECanaMboxes.MBOX2.MSGID.bit.IDE = 0;                                   
; 274 | ECanaMboxes.MBOX1.MSGID.bit.IDE = 0;                                   
; 275 | ECanaMboxes.MBOX0.MSGID.bit.IDE = 0;                                   
; 277 | // Specify the total number of bytes contained in data portion of each
;     | inbound/outbound message                                               
; 278 | ECanaMboxes.MBOX0.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        AND       AL,*+XAR4[AR0],#0xf003 ; [CPU_] |261| 
        OR        AL,#0x1040            ; [CPU_] |261| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 279,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | ECanaMboxes.MBOX1.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        MOVB      XAR0,#10              ; [CPU_] |279| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 261,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+113,AL  ; [CPU_] |261| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 263,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+113,#0x7fff ; [CPU_] |263| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 264,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+105,#0x7fff ; [CPU_] |264| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 265,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+97,#0x7fff ; [CPU_] |265| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 266,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+89,#0x7fff ; [CPU_] |266| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 267,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+81,#0x7fff ; [CPU_] |267| 
        MOVW      DP,#_ECanaMboxes+57   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 268,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+57,#0x7fff ; [CPU_] |268| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 269,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+49,#0x7fff ; [CPU_] |269| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 270,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+41,#0x7fff ; [CPU_] |270| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 271,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+33,#0x7fff ; [CPU_] |271| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 272,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+25,#0x7fff ; [CPU_] |272| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 273,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+17,#0x7fff ; [CPU_] |273| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 274,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+9,#0x7fff ; [CPU_] |274| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 275,column 2,is_stmt,isa 0
        AND       @_ECanaMboxes+1,#0x7fff ; [CPU_] |275| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 278,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[2],#0xfff8  ; [CPU_] |278| 
        ORB       AL,#0x08              ; [CPU_] |278| 
        MOV       @_ECanaMboxes+2,AL    ; [CPU_] |278| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 279,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |279| 
        ORB       AL,#0x08              ; [CPU_] |279| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 280,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | ECanaMboxes.MBOX2.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        MOVB      XAR0,#18              ; [CPU_] |280| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 279,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+10,AL   ; [CPU_] |279| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 280,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |280| 
        ORB       AL,#0x08              ; [CPU_] |280| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 281,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | ECanaMboxes.MBOX3.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        MOVB      XAR0,#26              ; [CPU_] |281| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 280,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+18,AL   ; [CPU_] |280| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 281,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |281| 
        ORB       AL,#0x08              ; [CPU_] |281| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 282,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 282 | ECanaMboxes.MBOX4.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        MOVB      XAR0,#34              ; [CPU_] |282| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 281,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+26,AL   ; [CPU_] |281| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 282,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |282| 
        ORB       AL,#0x08              ; [CPU_] |282| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 283,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 283 | ECanaMboxes.MBOX5.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        MOVB      XAR0,#42              ; [CPU_] |283| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 282,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+34,AL   ; [CPU_] |282| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 283,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |283| 
        ORB       AL,#0x08              ; [CPU_] |283| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 284,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 284 | ECanaMboxes.MBOX6.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        MOVB      XAR0,#50              ; [CPU_] |284| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 283,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+42,AL   ; [CPU_] |283| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 284,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |284| 
        ORB       AL,#0x08              ; [CPU_] |284| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 285,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 285 | ECanaMboxes.MBOX7.MSGCTRL.bit.DLC = 8;                                 
;----------------------------------------------------------------------
        MOVB      XAR0,#58              ; [CPU_] |285| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 284,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+50,AL   ; [CPU_] |284| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 285,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |285| 
        ORB       AL,#0x08              ; [CPU_] |285| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 286,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | ECanaMboxes.MBOX10.MSGCTRL.bit.DLC = 8;                                
;----------------------------------------------------------------------
        MOVB      XAR0,#82              ; [CPU_] |286| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 285,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+58,AL   ; [CPU_] |285| 
        MOVW      DP,#_ECanaMboxes+82   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 286,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |286| 
        ORB       AL,#0x08              ; [CPU_] |286| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 287,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 287 | ECanaMboxes.MBOX11.MSGCTRL.bit.DLC = 8;                                
;----------------------------------------------------------------------
        MOVB      XAR0,#90              ; [CPU_] |287| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 286,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+82,AL   ; [CPU_] |286| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 287,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |287| 
        ORB       AL,#0x08              ; [CPU_] |287| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 288,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 288 | ECanaMboxes.MBOX12.MSGCTRL.bit.DLC = 8;                                
;----------------------------------------------------------------------
        MOVB      XAR0,#98              ; [CPU_] |288| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 287,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+90,AL   ; [CPU_] |287| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 288,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |288| 
        ORB       AL,#0x08              ; [CPU_] |288| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 289,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 289 | ECanaMboxes.MBOX13.MSGCTRL.bit.DLC = 8;                                
;----------------------------------------------------------------------
        MOVB      XAR0,#106             ; [CPU_] |289| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 288,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+98,AL   ; [CPU_] |288| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 289,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |289| 
        ORB       AL,#0x08              ; [CPU_] |289| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 290,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 290 | ECanaMboxes.MBOX14.MSGCTRL.bit.DLC = 8;                                
;----------------------------------------------------------------------
        MOVB      XAR0,#114             ; [CPU_] |290| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 289,column 2,is_stmt,isa 0
        MOV       @_ECanaMboxes+106,AL  ; [CPU_] |289| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 290,column 2,is_stmt,isa 0
        AND       AL,*+XAR4[AR0],#0xfff8 ; [CPU_] |290| 
        ORB       AL,#0x08              ; [CPU_] |290| 
        MOV       @_ECanaMboxes+114,AL  ; [CPU_] |290| 
        MOVW      DP,#_ECanaShadow+2    ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 293,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 293 | ECanaShadow.CANMD.bit.MD14 = 1;                                        
; 294 | ECanaShadow.CANMD.bit.MD13 = 0;                                        
; 295 | ECanaShadow.CANMD.bit.MD12 = 0;                                        
; 296 | ECanaShadow.CANMD.bit.MD11 = 0;                                        
; 297 | ECanaShadow.CANMD.bit.MD10 = 0;                                        
; 298 | ECanaShadow.CANMD.bit.MD7 = 1;                                         
; 299 | ECanaShadow.CANMD.bit.MD6 = 1;                                         
; 300 | ECanaShadow.CANMD.bit.MD5 = 1;                                         
; 301 | ECanaShadow.CANMD.bit.MD4 = 1;                                         
; 302 | ECanaShadow.CANMD.bit.MD3 = 1;                                         
; 303 | ECanaShadow.CANMD.bit.MD2 = 1;                                         
; 304 | ECanaShadow.CANMD.bit.MD1 = 1;                                         
; 305 | ECanaShadow.CANMD.bit.MD0 = 0;                                         
;----------------------------------------------------------------------
        OR        @_ECanaShadow+2,#0x40ff ; [CPU_] |293| 
        AND       @_ECanaShadow+2,#0xc3fe ; [CPU_] |293| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 307,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 307 | ECanaRegs.CANMD.all = ECanaShadow.CANMD.all;                           
;----------------------------------------------------------------------
        MOVL      ACC,@_ECanaShadow+2   ; [CPU_] |307| 
        MOVW      DP,#_ECanaRegs+2      ; [CPU_U] 
        MOVL      @_ECanaRegs+2,ACC     ; [CPU_] |307| 
        MOVW      DP,#_ECanaShadow      ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 309,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 309 | ECanaShadow.CANME.bit.ME14 = 1; // enable mailbox 14                   
; 310 | ECanaShadow.CANME.bit.ME13 = 1; // enable mailbox 13                   
; 311 | ECanaShadow.CANME.bit.ME12 = 1; // enable mailbox 12                   
; 312 | ECanaShadow.CANME.bit.ME11 = 1; // enable mailbox 11                   
; 313 | ECanaShadow.CANME.bit.ME10 = 1; // enable mailbox 10                   
; 314 | ECanaShadow.CANME.bit.ME7 = 1;  // enable mailbox 7                    
; 315 | ECanaShadow.CANME.bit.ME6 = 1;  // enable mailbox 6                    
; 316 | ECanaShadow.CANME.bit.ME5 = 1;  // enable mailbox 5                    
; 317 | ECanaShadow.CANME.bit.ME4 = 1;  // enable mailbox 4                    
; 318 | ECanaShadow.CANME.bit.ME3 = 1;  // enable mailbox 3                    
; 319 | ECanaShadow.CANME.bit.ME2 = 1;  // enable mailbox 2                    
; 320 | ECanaShadow.CANME.bit.ME1 = 1;  // enable mailbox 1                    
; 321 | ECanaShadow.CANME.bit.ME0 = 1;  // enable mailbox 0                    
;----------------------------------------------------------------------
        OR        @_ECanaShadow,#0x7cff ; [CPU_] |309| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 323,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 323 | ECanaRegs.CANME.all = ECanaShadow.CANME.all;                           
; 325 | //      InitUART(TOUCH_CH,TOUCH_BAUD);                                 
;----------------------------------------------------------------------
        MOVL      ACC,@_ECanaShadow     ; [CPU_] |323| 
        MOVW      DP,#_ECanaRegs        ; [CPU_U] 
        MOVL      @_ECanaRegs,ACC       ; [CPU_] |323| 
$C$DW$14	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$14, DW_AT_low_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$13, DW_AT_TI_end_file("../Source/DSP281x_ECan.c")
	.dwattr $C$DW$13, DW_AT_TI_end_line(0x146)
	.dwattr $C$DW$13, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$13

	.sect	".text"
	.clink
	.global	_InitECan

$C$DW$15	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$15, DW_AT_name("InitECan")
	.dwattr $C$DW$15, DW_AT_low_pc(_InitECan)
	.dwattr $C$DW$15, DW_AT_high_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_InitECan")
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_TI_begin_file("../Source/DSP281x_ECan.c")
	.dwattr $C$DW$15, DW_AT_TI_begin_line(0x40)
	.dwattr $C$DW$15, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$15, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/DSP281x_ECan.c",line 65,column 1,is_stmt,address _InitECan,isa 0

	.dwfde $C$DW$CIE, _InitECan
;----------------------------------------------------------------------
;  64 | void InitECan(void)                                                    
;  74 | asm("  EALLOW");                                                       
;  78 | GpioMuxRegs.GPFMUX.bit.CANTXA_GPIOF6 = 1;                              
;  79 | GpioMuxRegs.GPFMUX.bit.CANRXA_GPIOF7 = 1;                              
;  81 | // eCAN control registers require 32-bit access.                       
;  82 | // If you want to write to a single bit, the compiler may break this   
;  83 | // access into a 16-bit access.  One solution, that is presented here, 
;  84 | // is to use a shadow register to force the 32-bit access.             
;  86 | // Read the entire register into a shadow register.  This access       
;  87 | // will be 32-bits.  Change the desired bit and copy the value back    
;  88 | // to the eCAN register with a 32-bit write.                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _InitECan                     FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_InitECan:
;* AR4   assigned to $O$C1
;* AR4   assigned to $O$C2
;* AR4   assigned to $O$C3
;* AR4   assigned to $O$C4
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
  EALLOW
        MOVW      DP,#_GpioMuxRegs+20   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 92,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | ECanaShadow.CANTIOC.all = ECanaRegs.CANTIOC.all;                       
;----------------------------------------------------------------------
        MOVL      XAR4,#_ECanaShadow    ; [CPU_U] |92| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 78,column 2,is_stmt,isa 0
        OR        @_GpioMuxRegs+20,#0x0040 ; [CPU_] |78| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 92,column 5,is_stmt,isa 0
        MOVB      XAR0,#42              ; [CPU_] |92| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 93,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | ECanaShadow.CANTIOC.bit.TXFUNC = 1;                                    
;----------------------------------------------------------------------
        MOVL      XAR5,XAR4             ; [CPU_] |93| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 79,column 2,is_stmt,isa 0
        OR        @_GpioMuxRegs+20,#0x0080 ; [CPU_] |79| 
        MOVW      DP,#_ECanaRegs+42     ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 92,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaRegs+42    ; [CPU_] |92| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 93,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | ECanaRegs.CANTIOC.all = ECanaShadow.CANTIOC.all;                       
;----------------------------------------------------------------------
        ADDB      XAR5,#42              ; [CPU_] |93| 
        MOVW      DP,#_ECanaShadow+42   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 92,column 5,is_stmt,isa 0
        MOVL      *+XAR4[AR0],ACC       ; [CPU_] |92| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 96,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | ECanaShadow.CANRIOC.all = ECanaRegs.CANRIOC.all;                       
;----------------------------------------------------------------------
        MOVB      XAR0,#44              ; [CPU_] |96| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 93,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x0008     ; [CPU_] |93| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 97,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | ECanaShadow.CANRIOC.bit.RXFUNC = 1;                                    
;----------------------------------------------------------------------
        MOVL      XAR5,XAR4             ; [CPU_] |97| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 94,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaShadow+42  ; [CPU_] |94| 
        MOVW      DP,#_ECanaRegs+42     ; [CPU_U] 
        MOVL      @_ECanaRegs+42,ACC    ; [CPU_] |94| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 97,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | ECanaRegs.CANRIOC.all = ECanaShadow.CANRIOC.all;                       
; 101 | // HECC mode also enables time-stamping feature                        
;----------------------------------------------------------------------
        ADDB      XAR5,#44              ; [CPU_] |97| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 96,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaRegs+44    ; [CPU_] |96| 
        MOVW      DP,#_ECanaShadow+44   ; [CPU_U] 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_] |96| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 103,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | ECanaShadow.CANMC.all = ECanaRegs.CANMC.all;                           
;----------------------------------------------------------------------
        MOVB      XAR0,#20              ; [CPU_] |103| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 97,column 5,is_stmt,isa 0
        OR        *+XAR5[0],#0x0008     ; [CPU_] |97| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 98,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaShadow+44  ; [CPU_] |98| 
        MOVW      DP,#_ECanaRegs+44     ; [CPU_U] 
        MOVL      @_ECanaRegs+44,ACC    ; [CPU_] |98| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 103,column 2,is_stmt,isa 0
        MOVL      ACC,@_ECanaRegs+20    ; [CPU_] |103| 
        MOVW      DP,#_ECanaShadow+20   ; [CPU_U] 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_] |103| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 104,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | ECanaShadow.CANMC.bit.SCB = 1;                                         
;----------------------------------------------------------------------
        ADDB      XAR4,#20              ; [CPU_] |104| 
        OR        *+XAR4[0],#0x2000     ; [CPU_] |104| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | ECanaRegs.CANMC.all = ECanaShadow.CANMC.all;                           
; 108 | // Some bits of MSGCTRL register may come up in an unknown state. For p
;     | roper operation,                                                       
; 109 | // all bits (including reserved bits) of MSGCTRL must be initialized to
;     |  zero                                                                  
; 111 | ECanaMboxes.MBOX0.MSGCTRL.all = 0x00000000;                            
; 112 | ECanaMboxes.MBOX1.MSGCTRL.all = 0x00000000;                            
; 113 | ECanaMboxes.MBOX2.MSGCTRL.all = 0x00000000;                            
; 114 | ECanaMboxes.MBOX3.MSGCTRL.all = 0x00000000;                            
; 115 | ECanaMboxes.MBOX4.MSGCTRL.all = 0x00000000;                            
; 116 | ECanaMboxes.MBOX5.MSGCTRL.all = 0x00000000;                            
; 117 | ECanaMboxes.MBOX6.MSGCTRL.all = 0x00000000;                            
; 118 | ECanaMboxes.MBOX7.MSGCTRL.all = 0x00000000;                            
; 119 | ECanaMboxes.MBOX8.MSGCTRL.all = 0x00000000;                            
; 120 | ECanaMboxes.MBOX9.MSGCTRL.all = 0x00000000;                            
; 121 | ECanaMboxes.MBOX10.MSGCTRL.all = 0x00000000;                           
; 122 | ECanaMboxes.MBOX11.MSGCTRL.all = 0x00000000;                           
; 123 | ECanaMboxes.MBOX12.MSGCTRL.all = 0x00000000;                           
; 124 | ECanaMboxes.MBOX13.MSGCTRL.all = 0x00000000;                           
; 125 | ECanaMboxes.MBOX14.MSGCTRL.all = 0x00000000;                           
; 126 | ECanaMboxes.MBOX15.MSGCTRL.all = 0x00000000;                           
; 127 | ECanaMboxes.MBOX16.MSGCTRL.all = 0x00000000;                           
; 128 | ECanaMboxes.MBOX17.MSGCTRL.all = 0x00000000;                           
; 129 | ECanaMboxes.MBOX18.MSGCTRL.all = 0x00000000;                           
; 130 | ECanaMboxes.MBOX19.MSGCTRL.all = 0x00000000;                           
; 131 | ECanaMboxes.MBOX20.MSGCTRL.all = 0x00000000;                           
; 132 | ECanaMboxes.MBOX21.MSGCTRL.all = 0x00000000;                           
; 133 | ECanaMboxes.MBOX22.MSGCTRL.all = 0x00000000;                           
; 134 | ECanaMboxes.MBOX23.MSGCTRL.all = 0x00000000;                           
; 135 | ECanaMboxes.MBOX24.MSGCTRL.all = 0x00000000;                           
; 136 | ECanaMboxes.MBOX25.MSGCTRL.all = 0x00000000;                           
; 137 | ECanaMboxes.MBOX26.MSGCTRL.all = 0x00000000;                           
; 138 | ECanaMboxes.MBOX27.MSGCTRL.all = 0x00000000;                           
; 139 | ECanaMboxes.MBOX28.MSGCTRL.all = 0x00000000;                           
; 140 | ECanaMboxes.MBOX29.MSGCTRL.all = 0x00000000;                           
; 141 | ECanaMboxes.MBOX30.MSGCTRL.all = 0x00000000;                           
; 142 | ECanaMboxes.MBOX31.MSGCTRL.all = 0x00000000;                           
; 144 | // TAn, RMPn, GIFn bits are all zero upon reset and are cleared again  
; 145 | // as a matter of precaution.                                          
; 149 | ECanaRegs.CANTA.all     = 0xFFFFFFFF;                                  
; 153 | ECanaRegs.CANRMP.all = 0xFFFFFFFF;                                     
; 157 | ECanaRegs.CANGIF0.all = 0xFFFFFFFF;                                    
; 158 | ECanaRegs.CANGIF1.all = 0xFFFFFFFF;                                    
; 162 | ECanaShadow.CANMC.all = ECanaRegs.CANMC.all;                           
; 163 | ECanaShadow.CANMC.bit.CCR = 1 ;                         // Set CCR = 1 
; 164 | ECanaRegs.CANMC.all = ECanaShadow.CANMC.all;                           
; 166 | ECanaShadow.CANES.all = ECanaRegs.CANES.all;                           
; 168 | // Wait until the CPU has been granted permission to change the configu
;     | ration registers                                                       
; 169 | do                                                                     
;----------------------------------------------------------------------
        MOVL      ACC,@_ECanaShadow+20  ; [CPU_] |105| 
        MOVW      DP,#_ECanaRegs+20     ; [CPU_U] 
        MOVL      @_ECanaRegs+20,ACC    ; [CPU_] |105| 
        MOVW      DP,#_ECanaMboxes+2    ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 171,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | ECanaShadow.CANES.all = ECanaRegs.CANES.all;                           
;----------------------------------------------------------------------
        MOVL      XAR4,#_ECanaShadow    ; [CPU_U] |171| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 111,column 5,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_] |111| 
        MOVL      @_ECanaMboxes+2,ACC   ; [CPU_] |111| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 112,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+10,ACC  ; [CPU_] |112| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 113,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+18,ACC  ; [CPU_] |113| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 114,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+26,ACC  ; [CPU_] |114| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 115,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+34,ACC  ; [CPU_] |115| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 116,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+42,ACC  ; [CPU_] |116| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 117,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+50,ACC  ; [CPU_] |117| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 118,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+58,ACC  ; [CPU_] |118| 
        MOVW      DP,#_ECanaMboxes+66   ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 119,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+66,ACC  ; [CPU_] |119| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 120,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+74,ACC  ; [CPU_] |120| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 121,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+82,ACC  ; [CPU_] |121| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 122,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+90,ACC  ; [CPU_] |122| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 123,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+98,ACC  ; [CPU_] |123| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 124,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+106,ACC ; [CPU_] |124| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 125,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+114,ACC ; [CPU_] |125| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 126,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+122,ACC ; [CPU_] |126| 
        MOVW      DP,#_ECanaMboxes+130  ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 127,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+130,ACC ; [CPU_] |127| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 128,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+138,ACC ; [CPU_] |128| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 129,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+146,ACC ; [CPU_] |129| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 130,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+154,ACC ; [CPU_] |130| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 131,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+162,ACC ; [CPU_] |131| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 132,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+170,ACC ; [CPU_] |132| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 133,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+178,ACC ; [CPU_] |133| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 134,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+186,ACC ; [CPU_] |134| 
        MOVW      DP,#_ECanaMboxes+194  ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 135,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+194,ACC ; [CPU_] |135| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 136,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+202,ACC ; [CPU_] |136| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 137,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+210,ACC ; [CPU_] |137| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 138,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+218,ACC ; [CPU_] |138| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 139,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+226,ACC ; [CPU_] |139| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 140,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+234,ACC ; [CPU_] |140| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 141,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+242,ACC ; [CPU_] |141| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 142,column 5,is_stmt,isa 0
        MOVL      @_ECanaMboxes+250,ACC ; [CPU_] |142| 
        MOVW      DP,#_ECanaRegs+8      ; [CPU_U] 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 149,column 2,is_stmt,isa 0
        SUBB      ACC,#1                ; [CPU_] |149| 
        MOVL      @_ECanaRegs+8,ACC     ; [CPU_] |149| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 153,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_] |153| 
        SUBB      ACC,#1                ; [CPU_] |153| 
        MOVL      @_ECanaRegs+12,ACC    ; [CPU_] |153| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 157,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_] |157| 
        SUBB      ACC,#1                ; [CPU_] |157| 
        MOVL      @_ECanaRegs+30,ACC    ; [CPU_] |157| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 158,column 2,is_stmt,isa 0
        MOVB      ACC,#0                ; [CPU_] |158| 
        SUBB      ACC,#1                ; [CPU_] |158| 
        MOVL      @_ECanaRegs+34,ACC    ; [CPU_] |158| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 162,column 2,is_stmt,isa 0
        MOVL      ACC,@_ECanaRegs+20    ; [CPU_] |162| 
        MOVW      DP,#_ECanaShadow+20   ; [CPU_U] 
        MOVL      @_ECanaShadow+20,ACC  ; [CPU_] |162| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 163,column 2,is_stmt,isa 0
        OR        @_ECanaShadow+20,#0x1000 ; [CPU_] |163| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 164,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaShadow+20  ; [CPU_] |164| 
        MOVW      DP,#_ECanaRegs+20     ; [CPU_U] 
        MOVL      @_ECanaRegs+20,ACC    ; [CPU_] |164| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 166,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaRegs+24    ; [CPU_] |166| 
$C$L7:    
	.dwpsn	file "../Source/DSP281x_ECan.c",line 171,column 7,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_] |171| 
        MOVL      ACC,@_ECanaRegs+24    ; [CPU_] |171| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_] |171| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 172,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 172 | } while(ECanaShadow.CANES.bit.CCE != 1 );           // Wait for CCE bit
;     |  to be set..                                                           
;----------------------------------------------------------------------
        MOVB      XAR0,#24              ; [CPU_] |172| 
        TBIT      *+XAR4[AR0],#4        ; [CPU_] |172| 
        B         $C$L7,NTC             ; [CPU_] |172| 
        ; branchcc occurs ; [] |172| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 174,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | ECanaShadow.CANBTC.all = 0;                                            
; 175 | //    ECanaShadow.CANBTC.bit.BRPREG = 9;
;     |  // 1 Mbps @ 150 MHz SYSCLKOUT                                         
;----------------------------------------------------------------------
        MOVB      XAR0,#22              ; [CPU_] |174| 
        MOVB      ACC,#0                ; [CPU_] |174| 
        MOVW      DP,#_ECanaShadow+23   ; [CPU_U] 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_] |174| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 176,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | ECanaShadow.CANBTC.bit.BRPREG = 19;                         // 0.5 Mbps
;     |  @ 150 MHz SYSCLKOUT                                                   
;----------------------------------------------------------------------
        MOVB      XAR0,#23              ; [CPU_] |176| 
        AND       AL,*+XAR4[AR0],#0xff00 ; [CPU_] |176| 
        ORB       AL,#0x13              ; [CPU_] |176| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 177,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | ECanaShadow.CANBTC.bit.TSEG2REG = 2;                                   
;----------------------------------------------------------------------
        MOVB      XAR0,#22              ; [CPU_] |177| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 176,column 5,is_stmt,isa 0
        MOV       @_ECanaShadow+23,AL   ; [CPU_] |176| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 177,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 178 | ECanaShadow.CANBTC.bit.TSEG1REG = 10;                                  
; 179 | ECanaShadow.CANBTC.bit.SAM = 1;                                        
; 180 | ECanaRegs.CANBTC.all = ECanaShadow.CANBTC.all;                         
;----------------------------------------------------------------------
        AND       AL,*+XAR4[AR0],#0xffc0 ; [CPU_] |177| 
        ORB       AL,#0xd2              ; [CPU_] |177| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 182,column 5,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | ECanaShadow.CANMC.all = ECanaRegs.CANMC.all;                           
;----------------------------------------------------------------------
        MOVB      XAR0,#20              ; [CPU_] |182| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 177,column 5,is_stmt,isa 0
        MOV       @_ECanaShadow+22,AL   ; [CPU_] |177| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 180,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaShadow+22  ; [CPU_] |180| 
        MOVW      DP,#_ECanaRegs+22     ; [CPU_U] 
        MOVL      @_ECanaRegs+22,ACC    ; [CPU_] |180| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 182,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaRegs+20    ; [CPU_] |182| 
        MOVW      DP,#_ECanaShadow+20   ; [CPU_U] 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_] |182| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 183,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | ECanaShadow.CANMC.bit.CCR = 0 ;                         // Set CCR = 0 
; 184 | ECanaRegs.CANMC.all = ECanaShadow.CANMC.all;                           
; 186 | ECanaShadow.CANES.all = ECanaRegs.CANES.all;                           
; 188 | // Wait until the CPU no longer has permission to change the configurat
;     | ion registers                                                          
; 189 | do                                                                     
;----------------------------------------------------------------------
        ADDB      XAR4,#20              ; [CPU_] |183| 
        AND       *+XAR4[0],#0xefff     ; [CPU_] |183| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 191,column 7,is_stmt,isa 0
;----------------------------------------------------------------------
; 191 | ECanaShadow.CANES.all = ECanaRegs.CANES.all;                           
;----------------------------------------------------------------------
        MOVL      XAR4,#_ECanaShadow    ; [CPU_U] |191| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 184,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaShadow+20  ; [CPU_] |184| 
        MOVW      DP,#_ECanaRegs+20     ; [CPU_U] 
        MOVL      @_ECanaRegs+20,ACC    ; [CPU_] |184| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 186,column 5,is_stmt,isa 0
        MOVL      ACC,@_ECanaRegs+24    ; [CPU_] |186| 
$C$L8:    
	.dwpsn	file "../Source/DSP281x_ECan.c",line 191,column 7,is_stmt,isa 0
        MOVB      XAR0,#24              ; [CPU_] |191| 
        MOVL      ACC,@_ECanaRegs+24    ; [CPU_] |191| 
        MOVL      *+XAR4[AR0],ACC       ; [CPU_] |191| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 192,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | } while(ECanaShadow.CANES.bit.CCE != 0 );           // Wait for CCE bit
;     |  to be  cleared..                                                      
; 195 | // Since this write is to the entire register (instead of a bit        
; 196 | // field) a shadow register is not required.                           
;----------------------------------------------------------------------
        MOVB      XAR0,#24              ; [CPU_] |192| 
        TBIT      *+XAR4[AR0],#4        ; [CPU_] |192| 
        B         $C$L8,TC              ; [CPU_] |192| 
        ; branchcc occurs ; [] |192| 
	.dwpsn	file "../Source/DSP281x_ECan.c",line 198,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | ECanaRegs.CANME.all = 0;                // Required before writing the
;     | MSGIDs                                                                 
;----------------------------------------------------------------------
        MOVB      ACC,#0                ; [CPU_] |198| 
        SPM       #0                    ; [CPU_] 
        MOVL      @_ECanaRegs,ACC       ; [CPU_] |198| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$15, DW_AT_TI_end_file("../Source/DSP281x_ECan.c")
	.dwattr $C$DW$15, DW_AT_TI_end_line(0xc7)
	.dwattr $C$DW$15, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$15

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_GpioMuxRegs
	.global	_ECanaRegs
	.global	_ECanaMboxes

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("CANAA_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x02)
$C$DW$17	.dwtag  DW_TAG_member
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$17, DW_AT_name("AA0")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_AA0")
	.dwattr $C$DW$17, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$17, DW_AT_bit_size(0x01)
	.dwattr $C$DW$17, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$17, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$18	.dwtag  DW_TAG_member
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_name("AA1")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_AA1")
	.dwattr $C$DW$18, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$18, DW_AT_bit_size(0x01)
	.dwattr $C$DW$18, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$18, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$19	.dwtag  DW_TAG_member
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_name("AA2")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_AA2")
	.dwattr $C$DW$19, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$19, DW_AT_bit_size(0x01)
	.dwattr $C$DW$19, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$19, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$20	.dwtag  DW_TAG_member
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_name("AA3")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_AA3")
	.dwattr $C$DW$20, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$20, DW_AT_bit_size(0x01)
	.dwattr $C$DW$20, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$20, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$21	.dwtag  DW_TAG_member
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_name("AA4")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_AA4")
	.dwattr $C$DW$21, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$21, DW_AT_bit_size(0x01)
	.dwattr $C$DW$21, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$21, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$22	.dwtag  DW_TAG_member
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_name("AA5")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_AA5")
	.dwattr $C$DW$22, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$22, DW_AT_bit_size(0x01)
	.dwattr $C$DW$22, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$22, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$23	.dwtag  DW_TAG_member
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_name("AA6")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_AA6")
	.dwattr $C$DW$23, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$23, DW_AT_bit_size(0x01)
	.dwattr $C$DW$23, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$23, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$24	.dwtag  DW_TAG_member
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_name("AA7")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_AA7")
	.dwattr $C$DW$24, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$24, DW_AT_bit_size(0x01)
	.dwattr $C$DW$24, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$24, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$25	.dwtag  DW_TAG_member
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$25, DW_AT_name("AA8")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_AA8")
	.dwattr $C$DW$25, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$25, DW_AT_bit_size(0x01)
	.dwattr $C$DW$25, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$25, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$26	.dwtag  DW_TAG_member
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_name("AA9")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_AA9")
	.dwattr $C$DW$26, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$26, DW_AT_bit_size(0x01)
	.dwattr $C$DW$26, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$26, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$27	.dwtag  DW_TAG_member
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_name("AA10")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_AA10")
	.dwattr $C$DW$27, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$27, DW_AT_bit_size(0x01)
	.dwattr $C$DW$27, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$27, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$28	.dwtag  DW_TAG_member
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_name("AA11")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_AA11")
	.dwattr $C$DW$28, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$28, DW_AT_bit_size(0x01)
	.dwattr $C$DW$28, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$28, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$29	.dwtag  DW_TAG_member
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$29, DW_AT_name("AA12")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_AA12")
	.dwattr $C$DW$29, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$29, DW_AT_bit_size(0x01)
	.dwattr $C$DW$29, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$29, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$30	.dwtag  DW_TAG_member
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$30, DW_AT_name("AA13")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_AA13")
	.dwattr $C$DW$30, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$30, DW_AT_bit_size(0x01)
	.dwattr $C$DW$30, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$30, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$31	.dwtag  DW_TAG_member
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$31, DW_AT_name("AA14")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_AA14")
	.dwattr $C$DW$31, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$31, DW_AT_bit_size(0x01)
	.dwattr $C$DW$31, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$31, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$32	.dwtag  DW_TAG_member
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$32, DW_AT_name("AA15")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_AA15")
	.dwattr $C$DW$32, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$32, DW_AT_bit_size(0x01)
	.dwattr $C$DW$32, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$32, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$33	.dwtag  DW_TAG_member
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_name("AA16")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_AA16")
	.dwattr $C$DW$33, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$33, DW_AT_bit_size(0x01)
	.dwattr $C$DW$33, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$33, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$34	.dwtag  DW_TAG_member
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_name("AA17")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_AA17")
	.dwattr $C$DW$34, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$34, DW_AT_bit_size(0x01)
	.dwattr $C$DW$34, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$34, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$35	.dwtag  DW_TAG_member
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_name("AA18")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_AA18")
	.dwattr $C$DW$35, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$35, DW_AT_bit_size(0x01)
	.dwattr $C$DW$35, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$35, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$36	.dwtag  DW_TAG_member
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_name("AA19")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_AA19")
	.dwattr $C$DW$36, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$36, DW_AT_bit_size(0x01)
	.dwattr $C$DW$36, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$36, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$37	.dwtag  DW_TAG_member
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_name("AA20")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_AA20")
	.dwattr $C$DW$37, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$37, DW_AT_bit_size(0x01)
	.dwattr $C$DW$37, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$37, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$38	.dwtag  DW_TAG_member
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$38, DW_AT_name("AA21")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_AA21")
	.dwattr $C$DW$38, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$38, DW_AT_bit_size(0x01)
	.dwattr $C$DW$38, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$38, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$39	.dwtag  DW_TAG_member
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_name("AA22")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_AA22")
	.dwattr $C$DW$39, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$39, DW_AT_bit_size(0x01)
	.dwattr $C$DW$39, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$39, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$40	.dwtag  DW_TAG_member
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_name("AA23")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_AA23")
	.dwattr $C$DW$40, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$40, DW_AT_bit_size(0x01)
	.dwattr $C$DW$40, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$40, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$41	.dwtag  DW_TAG_member
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$41, DW_AT_name("AA24")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("_AA24")
	.dwattr $C$DW$41, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$41, DW_AT_bit_size(0x01)
	.dwattr $C$DW$41, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$41, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$42	.dwtag  DW_TAG_member
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$42, DW_AT_name("AA25")
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_AA25")
	.dwattr $C$DW$42, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$42, DW_AT_bit_size(0x01)
	.dwattr $C$DW$42, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$42, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$43	.dwtag  DW_TAG_member
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_name("AA26")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_AA26")
	.dwattr $C$DW$43, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$43, DW_AT_bit_size(0x01)
	.dwattr $C$DW$43, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$43, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$44	.dwtag  DW_TAG_member
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_name("AA27")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_AA27")
	.dwattr $C$DW$44, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$44, DW_AT_bit_size(0x01)
	.dwattr $C$DW$44, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$44, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$45	.dwtag  DW_TAG_member
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_name("AA28")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_AA28")
	.dwattr $C$DW$45, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$45, DW_AT_bit_size(0x01)
	.dwattr $C$DW$45, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$45, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$46	.dwtag  DW_TAG_member
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_name("AA29")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_AA29")
	.dwattr $C$DW$46, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$46, DW_AT_bit_size(0x01)
	.dwattr $C$DW$46, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$46, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$47	.dwtag  DW_TAG_member
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_name("AA30")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_AA30")
	.dwattr $C$DW$47, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$47, DW_AT_bit_size(0x01)
	.dwattr $C$DW$47, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$47, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$48	.dwtag  DW_TAG_member
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_name("AA31")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_AA31")
	.dwattr $C$DW$48, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$48, DW_AT_bit_size(0x01)
	.dwattr $C$DW$48, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$48, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$22, DW_AT_name("CANAA_REG")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x02)
$C$DW$49	.dwtag  DW_TAG_member
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$49, DW_AT_name("all")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$49, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$50	.dwtag  DW_TAG_member
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$50, DW_AT_name("bit")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$50, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_name("CANBTC_BITS")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x02)
$C$DW$51	.dwtag  DW_TAG_member
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_name("TSEG2REG")
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_TSEG2REG")
	.dwattr $C$DW$51, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$51, DW_AT_bit_size(0x03)
	.dwattr $C$DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$51, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$52	.dwtag  DW_TAG_member
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_name("TSEG1REG")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_TSEG1REG")
	.dwattr $C$DW$52, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$52, DW_AT_bit_size(0x04)
	.dwattr $C$DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$52, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$53	.dwtag  DW_TAG_member
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_name("SAM")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_SAM")
	.dwattr $C$DW$53, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$53, DW_AT_bit_size(0x01)
	.dwattr $C$DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$53, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$54	.dwtag  DW_TAG_member
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_name("SJWREG")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_SJWREG")
	.dwattr $C$DW$54, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$54, DW_AT_bit_size(0x02)
	.dwattr $C$DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$54, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$55	.dwtag  DW_TAG_member
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$55, DW_AT_name("rsvd1")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$55, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$55, DW_AT_bit_size(0x06)
	.dwattr $C$DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$55, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$56	.dwtag  DW_TAG_member
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_name("BRPREG")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_BRPREG")
	.dwattr $C$DW$56, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$56, DW_AT_bit_size(0x08)
	.dwattr $C$DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$56, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$57	.dwtag  DW_TAG_member
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_name("rsvd2")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$57, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$57, DW_AT_bit_size(0x08)
	.dwattr $C$DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$57, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$24, DW_AT_name("CANBTC_REG")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x02)
$C$DW$58	.dwtag  DW_TAG_member
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$58, DW_AT_name("all")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$58, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$58, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$59	.dwtag  DW_TAG_member
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$59, DW_AT_name("bit")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$59, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$25, DW_AT_name("CANES_BITS")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x02)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$60, DW_AT_name("TM")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("_TM")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$60, DW_AT_bit_size(0x01)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("RM")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_RM")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("rsvd1")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("PDA")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_PDA")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("CCE")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_CCE")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$64, DW_AT_bit_size(0x01)
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("SMA")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_SMA")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("rsvd2")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$66, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("EW")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_EW")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("EP")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_EP")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$68, DW_AT_bit_size(0x01)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("BO")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_BO")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("ACKE")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_ACKE")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("SE")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_SE")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$71, DW_AT_bit_size(0x01)
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("CRCE")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_CRCE")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$72, DW_AT_bit_size(0x01)
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("SA1")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_SA1")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$73, DW_AT_bit_size(0x01)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("BE")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_BE")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("FE")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_FE")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("rsvd3")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$76, DW_AT_bit_size(0x07)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$26, DW_AT_name("CANES_REG")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x02)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$77, DW_AT_name("all")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$78, DW_AT_name("bit")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$27, DW_AT_name("CANGAM_BITS")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x02)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("GAM150")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_GAM150")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$79, DW_AT_bit_size(0x10)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("GAM2816")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_GAM2816")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$80, DW_AT_bit_size(0x0d)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("rsvd")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$81, DW_AT_bit_size(0x02)
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("AMI")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_AMI")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$82, DW_AT_bit_size(0x01)
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$28, DW_AT_name("CANGAM_REG")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x02)
$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$83, DW_AT_name("all")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$84, DW_AT_name("bit")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$29, DW_AT_name("CANGIF0_BITS")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x02)
$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("MIV0")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_MIV0")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$85, DW_AT_bit_size(0x05)
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("rsvd1")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$86, DW_AT_bit_size(0x03)
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("WLIF0")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_WLIF0")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("EPIF0")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_EPIF0")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("BOIF0")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_BOIF0")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("RMLIF0")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_RMLIF0")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("WUIF0")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_WUIF0")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("WDIF0")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_WDIF0")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("AAIF0")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_AAIF0")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("GMIF0")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_GMIF0")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("TCOF0")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_TCOF0")
	.dwattr $C$DW$95, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$95, DW_AT_bit_size(0x01)
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_name("MTOF0")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_MTOF0")
	.dwattr $C$DW$96, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$96, DW_AT_bit_size(0x01)
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("rsvd2")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$97, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$30, DW_AT_name("CANGIF0_REG")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x02)
$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$98, DW_AT_name("all")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$99, DW_AT_name("bit")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$31, DW_AT_name("CANGIF1_BITS")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x02)
$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("MIV1")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_MIV1")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$100, DW_AT_bit_size(0x05)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("rsvd1")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$101, DW_AT_bit_size(0x03)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("WLIF1")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_WLIF1")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("EPIF1")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_EPIF1")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("BOIF1")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_BOIF1")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("RMLIF1")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_RMLIF1")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("WUIF1")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_WUIF1")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("WDIF1")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_WDIF1")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("AAIF1")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_AAIF1")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("GMIF1")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_GMIF1")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("TCOF1")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_TCOF1")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("MTOF1")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_MTOF1")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("rsvd2")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$112, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$32, DW_AT_name("CANGIF1_REG")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x02)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$113, DW_AT_name("all")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$114, DW_AT_name("bit")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$33, DW_AT_name("CANGIM_BITS")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x02)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("I0EN")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_I0EN")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("I1EN")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_I1EN")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("GIL")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_GIL")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("rsvd1")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$118, DW_AT_bit_size(0x05)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("WLIM")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_WLIM")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("EPIM")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_EPIM")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("BOIM")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_BOIM")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("RMLIM")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_RMLIM")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("WUIM")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_WUIM")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("WDIM")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_WDIM")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("AAIM")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_AAIM")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("rsvd2")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("TCOM")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_TCOM")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("MTOM")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_MTOM")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("rsvd3")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$129, DW_AT_bit_size(0x0e)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$34, DW_AT_name("CANGIM_REG")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x02)
$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$130, DW_AT_name("all")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$131, DW_AT_name("bit")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$35, DW_AT_name("CANMC_BITS")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x02)
$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$132, DW_AT_name("MBNR")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_MBNR")
	.dwattr $C$DW$132, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$132, DW_AT_bit_size(0x05)
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("SRES")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_SRES")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("STM")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_STM")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("ABO")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_ABO")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("CDR")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_CDR")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("WUBA")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_WUBA")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("DBO")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_DBO")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("PDR")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_PDR")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("CCR")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_CCR")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("SCB")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_SCB")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("TCC")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_TCC")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("MBCC")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_MBCC")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("SUSP")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_SUSP")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("rsvd")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_rsvd")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$145, DW_AT_bit_size(0x0f)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$36, DW_AT_name("CANMC_REG")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x02)
$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$146, DW_AT_name("all")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$147, DW_AT_name("bit")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$37, DW_AT_name("CANMDH_BYTES")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x02)
$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("BYTE7")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_BYTE7")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$148, DW_AT_bit_size(0x08)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("BYTE6")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_BYTE6")
	.dwattr $C$DW$149, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$149, DW_AT_bit_size(0x08)
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$150, DW_AT_name("BYTE5")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_BYTE5")
	.dwattr $C$DW$150, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$150, DW_AT_bit_size(0x08)
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("BYTE4")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_BYTE4")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$151, DW_AT_bit_size(0x08)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$38, DW_AT_name("CANMDH_REG")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x02)
$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$152, DW_AT_name("all")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$153, DW_AT_name("word")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_word")
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$154, DW_AT_name("byte")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_byte")
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$39, DW_AT_name("CANMDH_WORDS")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x02)
$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("LOW_WORD")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_LOW_WORD")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$155, DW_AT_bit_size(0x10)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("HI_WORD")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_HI_WORD")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$156, DW_AT_bit_size(0x10)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("CANMDL_BYTES")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("BYTE3")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_BYTE3")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$157, DW_AT_bit_size(0x08)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("BYTE2")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_BYTE2")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$158, DW_AT_bit_size(0x08)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("BYTE1")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_BYTE1")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$159, DW_AT_bit_size(0x08)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("BYTE0")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_BYTE0")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$160, DW_AT_bit_size(0x08)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("CANMDL_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x02)
$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$161, DW_AT_name("all")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$162, DW_AT_name("word")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_word")
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$163, DW_AT_name("byte")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_byte")
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("CANMDL_WORDS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x02)
$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("LOW_WORD")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_LOW_WORD")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$164, DW_AT_bit_size(0x10)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("HI_WORD")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_HI_WORD")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$165, DW_AT_bit_size(0x10)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$43, DW_AT_name("CANMD_BITS")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x02)
$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("MD0")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_MD0")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("MD1")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_MD1")
	.dwattr $C$DW$167, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$167, DW_AT_bit_size(0x01)
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$168, DW_AT_name("MD2")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_MD2")
	.dwattr $C$DW$168, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$168, DW_AT_bit_size(0x01)
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("MD3")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_MD3")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("MD4")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_MD4")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("MD5")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_MD5")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("MD6")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_MD6")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("MD7")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_MD7")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("MD8")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_MD8")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("MD9")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_MD9")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("MD10")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_MD10")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("MD11")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_MD11")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("MD12")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_MD12")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("MD13")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_MD13")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("MD14")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_MD14")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("MD15")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_MD15")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("MD16")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_MD16")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("MD17")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_MD17")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("MD18")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_MD18")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("MD19")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_MD19")
	.dwattr $C$DW$185, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$185, DW_AT_bit_size(0x01)
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("MD20")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_MD20")
	.dwattr $C$DW$186, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$186, DW_AT_bit_size(0x01)
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("MD21")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_MD21")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("MD22")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_MD22")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("MD23")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_MD23")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("MD24")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_MD24")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("MD25")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_MD25")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("MD26")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_MD26")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("MD27")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_MD27")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("MD28")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_MD28")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("MD29")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_MD29")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("MD30")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_MD30")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("MD31")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_MD31")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$44, DW_AT_name("CANMD_REG")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x02)
$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$198, DW_AT_name("all")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$199, DW_AT_name("bit")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$45, DW_AT_name("CANME_BITS")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x02)
$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("ME0")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_ME0")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("ME1")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_ME1")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("ME2")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_ME2")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("ME3")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_ME3")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("ME4")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_ME4")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("ME5")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_ME5")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("ME6")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_ME6")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("ME7")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_ME7")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("ME8")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_ME8")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("ME9")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_ME9")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("ME10")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_ME10")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$210, DW_AT_bit_size(0x01)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("ME11")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_ME11")
	.dwattr $C$DW$211, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$211, DW_AT_bit_size(0x01)
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("ME12")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_ME12")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("ME13")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_ME13")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("ME14")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_ME14")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("ME15")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_ME15")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("ME16")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_ME16")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("ME17")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_ME17")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("ME18")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_ME18")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("ME19")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_ME19")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("ME20")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_ME20")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("ME21")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_ME21")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("ME22")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_ME22")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("ME23")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_ME23")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("ME24")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_ME24")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("ME25")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_ME25")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("ME26")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_ME26")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("ME27")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_ME27")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("ME28")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_ME28")
	.dwattr $C$DW$228, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$228, DW_AT_bit_size(0x01)
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("ME29")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_ME29")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("ME30")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_ME30")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("ME31")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_ME31")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$46, DW_AT_name("CANME_REG")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x02)
$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$232, DW_AT_name("all")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$233, DW_AT_name("bit")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$47, DW_AT_name("CANMIL_BITS")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x02)
$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("MIL0")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_MIL0")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("MIL1")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_MIL1")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("MIL2")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_MIL2")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("MIL3")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_MIL3")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("MIL4")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_MIL4")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("MIL5")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_MIL5")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("MIL6")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_MIL6")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("MIL7")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_MIL7")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("MIL8")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_MIL8")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$242, DW_AT_bit_size(0x01)
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("MIL9")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_MIL9")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("MIL10")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_MIL10")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("MIL11")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_MIL11")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("MIL12")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_MIL12")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$246, DW_AT_bit_size(0x01)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("MIL13")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_MIL13")
	.dwattr $C$DW$247, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$247, DW_AT_bit_size(0x01)
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("MIL14")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_MIL14")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("MIL15")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_MIL15")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("MIL16")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_MIL16")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("MIL17")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_MIL17")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("MIL18")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_MIL18")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("MIL19")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_MIL19")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("MIL20")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_MIL20")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("MIL21")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_MIL21")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("MIL22")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_MIL22")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("MIL23")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_MIL23")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("MIL24")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_MIL24")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("MIL25")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_MIL25")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("MIL26")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_MIL26")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("MIL27")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_MIL27")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("MIL28")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_MIL28")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("MIL29")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_MIL29")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("MIL30")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_MIL30")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("MIL31")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_MIL31")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$48, DW_AT_name("CANMIL_REG")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x02)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$266, DW_AT_name("all")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$267, DW_AT_name("bit")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$49, DW_AT_name("CANMIM_BITS")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x02)
$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("MIM0")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_MIM0")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("MIM1")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_MIM1")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("MIM2")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_MIM2")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("MIM3")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_MIM3")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("MIM4")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_MIM4")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("MIM5")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_MIM5")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("MIM6")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_MIM6")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("MIM7")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_MIM7")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("MIM8")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_MIM8")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("MIM9")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_MIM9")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("MIM10")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_MIM10")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("MIM11")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_MIM11")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("MIM12")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_MIM12")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("MIM13")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_MIM13")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("MIM14")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_MIM14")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("MIM15")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_MIM15")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("MIM16")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_MIM16")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("MIM17")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_MIM17")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("MIM18")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_MIM18")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("MIM19")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_MIM19")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("MIM20")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_MIM20")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("MIM21")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_MIM21")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("MIM22")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_MIM22")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("MIM23")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_MIM23")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("MIM24")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_MIM24")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("MIM25")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_MIM25")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("MIM26")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_MIM26")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("MIM27")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_MIM27")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("MIM28")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_MIM28")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("MIM29")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_MIM29")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("MIM30")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_MIM30")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("MIM31")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_MIM31")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$50, DW_AT_name("CANMIM_REG")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x02)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$300, DW_AT_name("all")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$301, DW_AT_name("bit")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$51, DW_AT_name("CANMSGCTRL_BITS")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x02)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("DLC")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_DLC")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$302, DW_AT_bit_size(0x04)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("RTR")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_RTR")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("rsvd1")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$304, DW_AT_bit_size(0x03)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("TPL")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_TPL")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$305, DW_AT_bit_size(0x05)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("rsvd2")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$306, DW_AT_bit_size(0x03)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("rsvd3")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$307, DW_AT_bit_size(0x10)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$52, DW_AT_name("CANMSGCTRL_REG")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x02)
$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$308, DW_AT_name("all")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$309, DW_AT_name("bit")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$53, DW_AT_name("CANMSGID_BITS")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x02)
$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("EXTMSGID_L")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_EXTMSGID_L")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$310, DW_AT_bit_size(0x10)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("EXTMSGID_H")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_EXTMSGID_H")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$311, DW_AT_bit_size(0x02)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("STDMSGID")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_STDMSGID")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$312, DW_AT_bit_size(0x0b)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("AAM")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_AAM")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("AME")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_AME")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("IDE")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_IDE")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$54, DW_AT_name("CANMSGID_REG")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x02)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$316, DW_AT_name("all")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$317, DW_AT_name("bit")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$55, DW_AT_name("CANOPC_BITS")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x02)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("OPC0")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_OPC0")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("OPC1")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_OPC1")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("OPC2")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_OPC2")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("OPC3")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_OPC3")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("OPC4")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_OPC4")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("OPC5")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_OPC5")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("OPC6")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_OPC6")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("OPC7")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_OPC7")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("OPC8")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_OPC8")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("OPC9")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_OPC9")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("OPC10")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_OPC10")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("OPC11")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_OPC11")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("OPC12")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_OPC12")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("OPC13")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_OPC13")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("OPC14")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_OPC14")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("OPC15")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_OPC15")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("OPC16")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_OPC16")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("OPC17")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_OPC17")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("OPC18")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_OPC18")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("OPC19")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_OPC19")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("OPC20")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_OPC20")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("OPC21")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_OPC21")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("OPC22")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_OPC22")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("OPC23")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_OPC23")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("OPC24")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_OPC24")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("OPC25")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_OPC25")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("OPC26")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_OPC26")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("OPC27")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_OPC27")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("OPC28")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_OPC28")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("OPC29")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_OPC29")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("OPC30")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_OPC30")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("OPC31")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_OPC31")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$56, DW_AT_name("CANOPC_REG")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x02)
$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$350, DW_AT_name("all")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$351, DW_AT_name("bit")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$57, DW_AT_name("CANREC_BITS")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x02)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("REC")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_REC")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$352, DW_AT_bit_size(0x08)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("rsvd1")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$353, DW_AT_bit_size(0x08)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("rsvd2")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$354, DW_AT_bit_size(0x10)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$58, DW_AT_name("CANREC_REG")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x02)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$355, DW_AT_name("all")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$356, DW_AT_name("bit")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$59, DW_AT_name("CANRFP_BITS")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x02)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("RFP0")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_RFP0")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("RFP1")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_RFP1")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("RFP2")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_RFP2")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("RFP3")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_RFP3")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("RFP4")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_RFP4")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("RFP5")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_RFP5")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("RFP6")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_RFP6")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("RFP7")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_RFP7")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("RFP8")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_RFP8")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("RFP9")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_RFP9")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("RFP10")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_RFP10")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("RFP11")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_RFP11")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("RFP12")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_RFP12")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("RFP13")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_RFP13")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("RFP14")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_RFP14")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("RFP15")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_RFP15")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("RFP16")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_RFP16")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("RFP17")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_RFP17")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("RFP18")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_RFP18")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("RFP19")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_RFP19")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("RFP20")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_RFP20")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("RFP21")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_RFP21")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("RFP22")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_RFP22")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("RFP23")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_RFP23")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("RFP24")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_RFP24")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("RFP25")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_RFP25")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("RFP26")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_RFP26")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("RFP27")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_RFP27")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("RFP28")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_RFP28")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("RFP29")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_RFP29")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("RFP30")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_RFP30")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("RFP31")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_RFP31")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$60, DW_AT_name("CANRFP_REG")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x02)
$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$389, DW_AT_name("all")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$390, DW_AT_name("bit")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$61, DW_AT_name("CANRIOC_BITS")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x02)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("rsvd1")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$391, DW_AT_bit_size(0x03)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("RXFUNC")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_RXFUNC")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("rsvd2")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$393, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("rsvd3")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$394, DW_AT_bit_size(0x10)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$62, DW_AT_name("CANRIOC_REG")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x02)
$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$395, DW_AT_name("all")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$396, DW_AT_name("bit")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$63, DW_AT_name("CANRML_BITS")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x02)
$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("RML0")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_RML0")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("RML1")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_RML1")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("RML2")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_RML2")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("RML3")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_RML3")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("RML4")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_RML4")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("RML5")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_RML5")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("RML6")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_RML6")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("RML7")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_RML7")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("RML8")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_RML8")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("RML9")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_RML9")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("RML10")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_RML10")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("RML11")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_RML11")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("RML12")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_RML12")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("RML13")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_RML13")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("RML14")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_RML14")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("RML15")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_RML15")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("RML16")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_RML16")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("RML17")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_RML17")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("RML18")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_RML18")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("RML19")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_RML19")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("RML20")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_RML20")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("RML21")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_RML21")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("RML22")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_RML22")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("RML23")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_RML23")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("RML24")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_RML24")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("RML25")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_RML25")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("RML26")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_RML26")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("RML27")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_RML27")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("RML28")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_RML28")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("RML29")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_RML29")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("RML30")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_RML30")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("RML31")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_RML31")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$428, DW_AT_bit_size(0x01)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$64, DW_AT_name("CANRML_REG")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x02)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$429, DW_AT_name("all")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$430, DW_AT_name("bit")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$65, DW_AT_name("CANRMP_BITS")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x02)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("RMP0")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_RMP0")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("RMP1")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_RMP1")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("RMP2")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_RMP2")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("RMP3")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_RMP3")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("RMP4")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_RMP4")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("RMP5")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_RMP5")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("RMP6")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_RMP6")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("RMP7")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_RMP7")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("RMP8")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_RMP8")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("RMP9")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_RMP9")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("RMP10")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_RMP10")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("RMP11")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_RMP11")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("RMP12")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_RMP12")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("RMP13")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_RMP13")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("RMP14")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_RMP14")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("RMP15")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_RMP15")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("RMP16")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_RMP16")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("RMP17")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_RMP17")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("RMP18")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_RMP18")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("RMP19")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_RMP19")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("RMP20")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_RMP20")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("RMP21")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_RMP21")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("RMP22")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_RMP22")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("RMP23")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_RMP23")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("RMP24")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_RMP24")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("RMP25")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_RMP25")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("RMP26")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_RMP26")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("RMP27")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_RMP27")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("RMP28")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_RMP28")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("RMP29")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_RMP29")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("RMP30")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_RMP30")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("RMP31")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_RMP31")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$66, DW_AT_name("CANRMP_REG")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x02)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$463, DW_AT_name("all")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$464, DW_AT_name("bit")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$67, DW_AT_name("CANTA_BITS")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x02)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("TA0")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_TA0")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("TA1")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_TA1")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("TA2")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_TA2")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("TA3")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_TA3")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("TA4")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_TA4")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("TA5")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_TA5")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("TA6")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_TA6")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("TA7")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_TA7")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("TA8")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_TA8")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("TA9")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_TA9")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("TA10")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_TA10")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("TA11")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_TA11")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("TA12")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_TA12")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("TA13")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_TA13")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("TA14")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_TA14")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("TA15")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_TA15")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("TA16")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_TA16")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("TA17")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_TA17")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("TA18")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_TA18")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("TA19")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_TA19")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("TA20")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_TA20")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("TA21")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_TA21")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("TA22")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_TA22")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("TA23")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_TA23")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("TA24")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_TA24")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("TA25")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_TA25")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("TA26")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_TA26")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("TA27")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_TA27")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("TA28")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_TA28")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("TA29")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_TA29")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("TA30")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_TA30")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("TA31")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_TA31")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$68, DW_AT_name("CANTA_REG")
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x02)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$497, DW_AT_name("all")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$498, DW_AT_name("bit")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$68


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("CANTEC_BITS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x02)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("TEC")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_TEC")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$499, DW_AT_bit_size(0x08)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("rsvd1")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$500, DW_AT_bit_size(0x08)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("rsvd2")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$501, DW_AT_bit_size(0x10)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69


$C$DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$70, DW_AT_name("CANTEC_REG")
	.dwattr $C$DW$T$70, DW_AT_byte_size(0x02)
$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$502, DW_AT_name("all")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$69)
	.dwattr $C$DW$503, DW_AT_name("bit")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$70


$C$DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$71, DW_AT_name("CANTIOC_BITS")
	.dwattr $C$DW$T$71, DW_AT_byte_size(0x02)
$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("rsvd1")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$504, DW_AT_bit_size(0x03)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("TXFUNC")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_TXFUNC")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("rsvd2")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$506, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("rsvd3")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$507, DW_AT_bit_size(0x10)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$71


$C$DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$72, DW_AT_name("CANTIOC_REG")
	.dwattr $C$DW$T$72, DW_AT_byte_size(0x02)
$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$508, DW_AT_name("all")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$71)
	.dwattr $C$DW$509, DW_AT_name("bit")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$72


$C$DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$73, DW_AT_name("CANTOC_BITS")
	.dwattr $C$DW$T$73, DW_AT_byte_size(0x02)
$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("TOC0")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_TOC0")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("TOC1")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_TOC1")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("TOC2")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_TOC2")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("TOC3")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_TOC3")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("TOC4")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_TOC4")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("TOC5")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_TOC5")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("TOC6")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_TOC6")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("TOC7")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_TOC7")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("TOC8")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_TOC8")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("TOC9")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_TOC9")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("TOC10")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_TOC10")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("TOC11")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_TOC11")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("TOC12")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_TOC12")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("TOC13")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_TOC13")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("TOC14")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_TOC14")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("TOC15")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_TOC15")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("TOC16")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_TOC16")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("TOC17")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_TOC17")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("TOC18")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_TOC18")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("TOC19")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_TOC19")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("TOC20")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_TOC20")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("TOC21")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_TOC21")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("TOC22")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_TOC22")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("TOC23")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_TOC23")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("TOC24")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_TOC24")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("TOC25")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_TOC25")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("TOC26")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_TOC26")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("TOC27")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_TOC27")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("TOC28")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_TOC28")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("TOC29")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_TOC29")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("TOC30")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_TOC30")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("TOC31")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_TOC31")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$73


$C$DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$74, DW_AT_name("CANTOC_REG")
	.dwattr $C$DW$T$74, DW_AT_byte_size(0x02)
$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$542, DW_AT_name("all")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$73)
	.dwattr $C$DW$543, DW_AT_name("bit")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$74


$C$DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$75, DW_AT_name("CANTOS_BITS")
	.dwattr $C$DW$T$75, DW_AT_byte_size(0x02)
$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("TOS0")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_TOS0")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("TOS1")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_TOS1")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("TOS2")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_TOS2")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("TOS3")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_TOS3")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("TOS4")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_TOS4")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("TOS5")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_TOS5")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("TOS6")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_TOS6")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("TOS7")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_TOS7")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("TOS8")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_TOS8")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("TOS9")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_TOS9")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("TOS10")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_TOS10")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("TOS11")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_TOS11")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("TOS12")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_TOS12")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("TOS13")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_TOS13")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("TOS14")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_TOS14")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("TOS15")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_TOS15")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("TOS16")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_TOS16")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("TOS17")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_TOS17")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("TOS18")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_TOS18")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("TOS19")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_TOS19")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("TOS20")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_TOS20")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("TOS21")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_TOS21")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("TOS22")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_TOS22")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("TOS23")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_TOS23")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("TOS24")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_TOS24")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("TOS25")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_TOS25")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("TOS26")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_TOS26")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("TOS27")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_TOS27")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("TOS28")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_TOS28")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("TOS29")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_TOS29")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("TOS30")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_TOS30")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("TOS31")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_TOS31")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$75


$C$DW$T$76	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$76, DW_AT_name("CANTOS_REG")
	.dwattr $C$DW$T$76, DW_AT_byte_size(0x02)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$576, DW_AT_name("all")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$75)
	.dwattr $C$DW$577, DW_AT_name("bit")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$76


$C$DW$T$77	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$77, DW_AT_name("CANTRR_BITS")
	.dwattr $C$DW$T$77, DW_AT_byte_size(0x02)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("TRR0")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_TRR0")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("TRR1")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_TRR1")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("TRR2")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_TRR2")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("TRR3")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_TRR3")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("TRR4")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_TRR4")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("TRR5")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_TRR5")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("TRR6")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_TRR6")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("TRR7")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_TRR7")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("TRR8")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_TRR8")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("TRR9")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_TRR9")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("TRR10")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_TRR10")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("TRR11")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_TRR11")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("TRR12")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_TRR12")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("TRR13")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_TRR13")
	.dwattr $C$DW$591, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$591, DW_AT_bit_size(0x01)
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$592, DW_AT_name("TRR14")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_TRR14")
	.dwattr $C$DW$592, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$592, DW_AT_bit_size(0x01)
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("TRR15")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_TRR15")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("TRR16")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_TRR16")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("TRR17")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_TRR17")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("TRR18")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_TRR18")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("TRR19")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_TRR19")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("TRR20")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_TRR20")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("TRR21")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_TRR21")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("TRR22")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_TRR22")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("TRR23")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_TRR23")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("TRR24")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_TRR24")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("TRR25")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_TRR25")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("TRR26")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_TRR26")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("TRR27")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_TRR27")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("TRR28")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_TRR28")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("TRR29")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_TRR29")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("TRR30")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_TRR30")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("TRR31")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_TRR31")
	.dwattr $C$DW$609, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$609, DW_AT_bit_size(0x01)
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$77


$C$DW$T$78	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$78, DW_AT_name("CANTRR_REG")
	.dwattr $C$DW$T$78, DW_AT_byte_size(0x02)
$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$610, DW_AT_name("all")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$611, DW_AT_name("bit")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$78


$C$DW$T$79	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$79, DW_AT_name("CANTRS_BITS")
	.dwattr $C$DW$T$79, DW_AT_byte_size(0x02)
$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("TRS0")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_TRS0")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("TRS1")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_TRS1")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("TRS2")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_TRS2")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$614, DW_AT_bit_size(0x01)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("TRS3")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_TRS3")
	.dwattr $C$DW$615, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$615, DW_AT_bit_size(0x01)
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$616, DW_AT_name("TRS4")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_TRS4")
	.dwattr $C$DW$616, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$616, DW_AT_bit_size(0x01)
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("TRS5")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_TRS5")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$617, DW_AT_bit_size(0x01)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("TRS6")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_TRS6")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("TRS7")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_TRS7")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("TRS8")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_TRS8")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$620, DW_AT_bit_size(0x01)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("TRS9")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_TRS9")
	.dwattr $C$DW$621, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$621, DW_AT_bit_size(0x01)
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$622, DW_AT_name("TRS10")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_TRS10")
	.dwattr $C$DW$622, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$622, DW_AT_bit_size(0x01)
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("TRS11")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_TRS11")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$623, DW_AT_bit_size(0x01)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("TRS12")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_TRS12")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("TRS13")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_TRS13")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("TRS14")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_TRS14")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$626, DW_AT_bit_size(0x01)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("TRS15")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_TRS15")
	.dwattr $C$DW$627, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$627, DW_AT_bit_size(0x01)
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$628, DW_AT_name("TRS16")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_TRS16")
	.dwattr $C$DW$628, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$628, DW_AT_bit_size(0x01)
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("TRS17")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_TRS17")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$629, DW_AT_bit_size(0x01)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("TRS18")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_TRS18")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("TRS19")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_TRS19")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("TRS20")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_TRS20")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$632, DW_AT_bit_size(0x01)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("TRS21")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_TRS21")
	.dwattr $C$DW$633, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$633, DW_AT_bit_size(0x01)
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$634, DW_AT_name("TRS22")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_TRS22")
	.dwattr $C$DW$634, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$634, DW_AT_bit_size(0x01)
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$635, DW_AT_name("TRS23")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_TRS23")
	.dwattr $C$DW$635, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$635, DW_AT_bit_size(0x01)
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$636, DW_AT_name("TRS24")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_TRS24")
	.dwattr $C$DW$636, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$636, DW_AT_bit_size(0x01)
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$637, DW_AT_name("TRS25")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_TRS25")
	.dwattr $C$DW$637, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$637, DW_AT_bit_size(0x01)
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$638, DW_AT_name("TRS26")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_TRS26")
	.dwattr $C$DW$638, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$638, DW_AT_bit_size(0x01)
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$639, DW_AT_name("TRS27")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_TRS27")
	.dwattr $C$DW$639, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$639, DW_AT_bit_size(0x01)
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$640, DW_AT_name("TRS28")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_TRS28")
	.dwattr $C$DW$640, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$640, DW_AT_bit_size(0x01)
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$641, DW_AT_name("TRS29")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_TRS29")
	.dwattr $C$DW$641, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$641, DW_AT_bit_size(0x01)
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$642, DW_AT_name("TRS30")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_TRS30")
	.dwattr $C$DW$642, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$642, DW_AT_bit_size(0x01)
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$643, DW_AT_name("TRS31")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_TRS31")
	.dwattr $C$DW$643, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$643, DW_AT_bit_size(0x01)
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$79


$C$DW$T$80	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$80, DW_AT_name("CANTRS_REG")
	.dwattr $C$DW$T$80, DW_AT_byte_size(0x02)
$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$644, DW_AT_name("all")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$79)
	.dwattr $C$DW$645, DW_AT_name("bit")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$80


$C$DW$T$81	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$81, DW_AT_name("ECAN_MBOXES")
	.dwattr $C$DW$T$81, DW_AT_byte_size(0x100)
$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$646, DW_AT_name("MBOX0")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_MBOX0")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$647, DW_AT_name("MBOX1")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_MBOX1")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$648, DW_AT_name("MBOX2")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_MBOX2")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$649, DW_AT_name("MBOX3")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_MBOX3")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$650, DW_AT_name("MBOX4")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_MBOX4")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$651, DW_AT_name("MBOX5")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_MBOX5")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$652, DW_AT_name("MBOX6")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_MBOX6")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$653, DW_AT_name("MBOX7")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_MBOX7")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x38]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$654, DW_AT_name("MBOX8")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_MBOX8")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x40]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$655, DW_AT_name("MBOX9")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_MBOX9")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x48]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$656, DW_AT_name("MBOX10")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_MBOX10")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x50]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$657, DW_AT_name("MBOX11")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_MBOX11")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x58]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$658, DW_AT_name("MBOX12")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_MBOX12")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x60]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$659, DW_AT_name("MBOX13")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_MBOX13")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x68]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$660, DW_AT_name("MBOX14")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_MBOX14")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x70]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$661	.dwtag  DW_TAG_member
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$661, DW_AT_name("MBOX15")
	.dwattr $C$DW$661, DW_AT_TI_symbol_name("_MBOX15")
	.dwattr $C$DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x78]
	.dwattr $C$DW$661, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$662	.dwtag  DW_TAG_member
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$662, DW_AT_name("MBOX16")
	.dwattr $C$DW$662, DW_AT_TI_symbol_name("_MBOX16")
	.dwattr $C$DW$662, DW_AT_data_member_location[DW_OP_plus_uconst 0x80]
	.dwattr $C$DW$662, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$663	.dwtag  DW_TAG_member
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$663, DW_AT_name("MBOX17")
	.dwattr $C$DW$663, DW_AT_TI_symbol_name("_MBOX17")
	.dwattr $C$DW$663, DW_AT_data_member_location[DW_OP_plus_uconst 0x88]
	.dwattr $C$DW$663, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$664	.dwtag  DW_TAG_member
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$664, DW_AT_name("MBOX18")
	.dwattr $C$DW$664, DW_AT_TI_symbol_name("_MBOX18")
	.dwattr $C$DW$664, DW_AT_data_member_location[DW_OP_plus_uconst 0x90]
	.dwattr $C$DW$664, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$665	.dwtag  DW_TAG_member
	.dwattr $C$DW$665, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$665, DW_AT_name("MBOX19")
	.dwattr $C$DW$665, DW_AT_TI_symbol_name("_MBOX19")
	.dwattr $C$DW$665, DW_AT_data_member_location[DW_OP_plus_uconst 0x98]
	.dwattr $C$DW$665, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$666	.dwtag  DW_TAG_member
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$666, DW_AT_name("MBOX20")
	.dwattr $C$DW$666, DW_AT_TI_symbol_name("_MBOX20")
	.dwattr $C$DW$666, DW_AT_data_member_location[DW_OP_plus_uconst 0xa0]
	.dwattr $C$DW$666, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$667	.dwtag  DW_TAG_member
	.dwattr $C$DW$667, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$667, DW_AT_name("MBOX21")
	.dwattr $C$DW$667, DW_AT_TI_symbol_name("_MBOX21")
	.dwattr $C$DW$667, DW_AT_data_member_location[DW_OP_plus_uconst 0xa8]
	.dwattr $C$DW$667, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$668	.dwtag  DW_TAG_member
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$668, DW_AT_name("MBOX22")
	.dwattr $C$DW$668, DW_AT_TI_symbol_name("_MBOX22")
	.dwattr $C$DW$668, DW_AT_data_member_location[DW_OP_plus_uconst 0xb0]
	.dwattr $C$DW$668, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$669	.dwtag  DW_TAG_member
	.dwattr $C$DW$669, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$669, DW_AT_name("MBOX23")
	.dwattr $C$DW$669, DW_AT_TI_symbol_name("_MBOX23")
	.dwattr $C$DW$669, DW_AT_data_member_location[DW_OP_plus_uconst 0xb8]
	.dwattr $C$DW$669, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$670	.dwtag  DW_TAG_member
	.dwattr $C$DW$670, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$670, DW_AT_name("MBOX24")
	.dwattr $C$DW$670, DW_AT_TI_symbol_name("_MBOX24")
	.dwattr $C$DW$670, DW_AT_data_member_location[DW_OP_plus_uconst 0xc0]
	.dwattr $C$DW$670, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$671	.dwtag  DW_TAG_member
	.dwattr $C$DW$671, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$671, DW_AT_name("MBOX25")
	.dwattr $C$DW$671, DW_AT_TI_symbol_name("_MBOX25")
	.dwattr $C$DW$671, DW_AT_data_member_location[DW_OP_plus_uconst 0xc8]
	.dwattr $C$DW$671, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$672	.dwtag  DW_TAG_member
	.dwattr $C$DW$672, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$672, DW_AT_name("MBOX26")
	.dwattr $C$DW$672, DW_AT_TI_symbol_name("_MBOX26")
	.dwattr $C$DW$672, DW_AT_data_member_location[DW_OP_plus_uconst 0xd0]
	.dwattr $C$DW$672, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$673	.dwtag  DW_TAG_member
	.dwattr $C$DW$673, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$673, DW_AT_name("MBOX27")
	.dwattr $C$DW$673, DW_AT_TI_symbol_name("_MBOX27")
	.dwattr $C$DW$673, DW_AT_data_member_location[DW_OP_plus_uconst 0xd8]
	.dwattr $C$DW$673, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$674	.dwtag  DW_TAG_member
	.dwattr $C$DW$674, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$674, DW_AT_name("MBOX28")
	.dwattr $C$DW$674, DW_AT_TI_symbol_name("_MBOX28")
	.dwattr $C$DW$674, DW_AT_data_member_location[DW_OP_plus_uconst 0xe0]
	.dwattr $C$DW$674, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$675	.dwtag  DW_TAG_member
	.dwattr $C$DW$675, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$675, DW_AT_name("MBOX29")
	.dwattr $C$DW$675, DW_AT_TI_symbol_name("_MBOX29")
	.dwattr $C$DW$675, DW_AT_data_member_location[DW_OP_plus_uconst 0xe8]
	.dwattr $C$DW$675, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$676	.dwtag  DW_TAG_member
	.dwattr $C$DW$676, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$676, DW_AT_name("MBOX30")
	.dwattr $C$DW$676, DW_AT_TI_symbol_name("_MBOX30")
	.dwattr $C$DW$676, DW_AT_data_member_location[DW_OP_plus_uconst 0xf0]
	.dwattr $C$DW$676, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$677	.dwtag  DW_TAG_member
	.dwattr $C$DW$677, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$677, DW_AT_name("MBOX31")
	.dwattr $C$DW$677, DW_AT_TI_symbol_name("_MBOX31")
	.dwattr $C$DW$677, DW_AT_data_member_location[DW_OP_plus_uconst 0xf8]
	.dwattr $C$DW$677, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$81

$C$DW$678	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$678, DW_AT_type(*$C$DW$T$81)

$C$DW$T$139	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$139, DW_AT_type(*$C$DW$678)


$C$DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$82, DW_AT_name("ECAN_REGS")
	.dwattr $C$DW$T$82, DW_AT_byte_size(0x34)
$C$DW$679	.dwtag  DW_TAG_member
	.dwattr $C$DW$679, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$679, DW_AT_name("CANME")
	.dwattr $C$DW$679, DW_AT_TI_symbol_name("_CANME")
	.dwattr $C$DW$679, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$679, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$680	.dwtag  DW_TAG_member
	.dwattr $C$DW$680, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$680, DW_AT_name("CANMD")
	.dwattr $C$DW$680, DW_AT_TI_symbol_name("_CANMD")
	.dwattr $C$DW$680, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$680, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$681	.dwtag  DW_TAG_member
	.dwattr $C$DW$681, DW_AT_type(*$C$DW$T$80)
	.dwattr $C$DW$681, DW_AT_name("CANTRS")
	.dwattr $C$DW$681, DW_AT_TI_symbol_name("_CANTRS")
	.dwattr $C$DW$681, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$681, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$682	.dwtag  DW_TAG_member
	.dwattr $C$DW$682, DW_AT_type(*$C$DW$T$78)
	.dwattr $C$DW$682, DW_AT_name("CANTRR")
	.dwattr $C$DW$682, DW_AT_TI_symbol_name("_CANTRR")
	.dwattr $C$DW$682, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$682, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$683	.dwtag  DW_TAG_member
	.dwattr $C$DW$683, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$683, DW_AT_name("CANTA")
	.dwattr $C$DW$683, DW_AT_TI_symbol_name("_CANTA")
	.dwattr $C$DW$683, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$683, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$684	.dwtag  DW_TAG_member
	.dwattr $C$DW$684, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$684, DW_AT_name("CANAA")
	.dwattr $C$DW$684, DW_AT_TI_symbol_name("_CANAA")
	.dwattr $C$DW$684, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$684, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$685	.dwtag  DW_TAG_member
	.dwattr $C$DW$685, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$685, DW_AT_name("CANRMP")
	.dwattr $C$DW$685, DW_AT_TI_symbol_name("_CANRMP")
	.dwattr $C$DW$685, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$685, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$686	.dwtag  DW_TAG_member
	.dwattr $C$DW$686, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$686, DW_AT_name("CANRML")
	.dwattr $C$DW$686, DW_AT_TI_symbol_name("_CANRML")
	.dwattr $C$DW$686, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$686, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$687	.dwtag  DW_TAG_member
	.dwattr $C$DW$687, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$687, DW_AT_name("CANRFP")
	.dwattr $C$DW$687, DW_AT_TI_symbol_name("_CANRFP")
	.dwattr $C$DW$687, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$687, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$688	.dwtag  DW_TAG_member
	.dwattr $C$DW$688, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$688, DW_AT_name("CANGAM")
	.dwattr $C$DW$688, DW_AT_TI_symbol_name("_CANGAM")
	.dwattr $C$DW$688, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$688, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$689	.dwtag  DW_TAG_member
	.dwattr $C$DW$689, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$689, DW_AT_name("CANMC")
	.dwattr $C$DW$689, DW_AT_TI_symbol_name("_CANMC")
	.dwattr $C$DW$689, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$689, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$690	.dwtag  DW_TAG_member
	.dwattr $C$DW$690, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$690, DW_AT_name("CANBTC")
	.dwattr $C$DW$690, DW_AT_TI_symbol_name("_CANBTC")
	.dwattr $C$DW$690, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$690, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$691	.dwtag  DW_TAG_member
	.dwattr $C$DW$691, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$691, DW_AT_name("CANES")
	.dwattr $C$DW$691, DW_AT_TI_symbol_name("_CANES")
	.dwattr $C$DW$691, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$691, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$692	.dwtag  DW_TAG_member
	.dwattr $C$DW$692, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$692, DW_AT_name("CANTEC")
	.dwattr $C$DW$692, DW_AT_TI_symbol_name("_CANTEC")
	.dwattr $C$DW$692, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$692, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$693	.dwtag  DW_TAG_member
	.dwattr $C$DW$693, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$693, DW_AT_name("CANREC")
	.dwattr $C$DW$693, DW_AT_TI_symbol_name("_CANREC")
	.dwattr $C$DW$693, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$693, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$694	.dwtag  DW_TAG_member
	.dwattr $C$DW$694, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$694, DW_AT_name("CANGIF0")
	.dwattr $C$DW$694, DW_AT_TI_symbol_name("_CANGIF0")
	.dwattr $C$DW$694, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr $C$DW$694, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$695	.dwtag  DW_TAG_member
	.dwattr $C$DW$695, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$695, DW_AT_name("CANGIM")
	.dwattr $C$DW$695, DW_AT_TI_symbol_name("_CANGIM")
	.dwattr $C$DW$695, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr $C$DW$695, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$696	.dwtag  DW_TAG_member
	.dwattr $C$DW$696, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$696, DW_AT_name("CANGIF1")
	.dwattr $C$DW$696, DW_AT_TI_symbol_name("_CANGIF1")
	.dwattr $C$DW$696, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr $C$DW$696, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$697	.dwtag  DW_TAG_member
	.dwattr $C$DW$697, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$697, DW_AT_name("CANMIM")
	.dwattr $C$DW$697, DW_AT_TI_symbol_name("_CANMIM")
	.dwattr $C$DW$697, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr $C$DW$697, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$698	.dwtag  DW_TAG_member
	.dwattr $C$DW$698, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$698, DW_AT_name("CANMIL")
	.dwattr $C$DW$698, DW_AT_TI_symbol_name("_CANMIL")
	.dwattr $C$DW$698, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr $C$DW$698, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$699	.dwtag  DW_TAG_member
	.dwattr $C$DW$699, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$699, DW_AT_name("CANOPC")
	.dwattr $C$DW$699, DW_AT_TI_symbol_name("_CANOPC")
	.dwattr $C$DW$699, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr $C$DW$699, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$700	.dwtag  DW_TAG_member
	.dwattr $C$DW$700, DW_AT_type(*$C$DW$T$72)
	.dwattr $C$DW$700, DW_AT_name("CANTIOC")
	.dwattr $C$DW$700, DW_AT_TI_symbol_name("_CANTIOC")
	.dwattr $C$DW$700, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr $C$DW$700, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$701	.dwtag  DW_TAG_member
	.dwattr $C$DW$701, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$701, DW_AT_name("CANRIOC")
	.dwattr $C$DW$701, DW_AT_TI_symbol_name("_CANRIOC")
	.dwattr $C$DW$701, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr $C$DW$701, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$702	.dwtag  DW_TAG_member
	.dwattr $C$DW$702, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$702, DW_AT_name("CANTSC")
	.dwattr $C$DW$702, DW_AT_TI_symbol_name("_CANTSC")
	.dwattr $C$DW$702, DW_AT_data_member_location[DW_OP_plus_uconst 0x2e]
	.dwattr $C$DW$702, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$703	.dwtag  DW_TAG_member
	.dwattr $C$DW$703, DW_AT_type(*$C$DW$T$74)
	.dwattr $C$DW$703, DW_AT_name("CANTOC")
	.dwattr $C$DW$703, DW_AT_TI_symbol_name("_CANTOC")
	.dwattr $C$DW$703, DW_AT_data_member_location[DW_OP_plus_uconst 0x30]
	.dwattr $C$DW$703, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$704	.dwtag  DW_TAG_member
	.dwattr $C$DW$704, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$704, DW_AT_name("CANTOS")
	.dwattr $C$DW$704, DW_AT_TI_symbol_name("_CANTOS")
	.dwattr $C$DW$704, DW_AT_data_member_location[DW_OP_plus_uconst 0x32]
	.dwattr $C$DW$704, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$82

$C$DW$705	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$705, DW_AT_type(*$C$DW$T$82)

$C$DW$T$141	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$141, DW_AT_type(*$C$DW$705)


$C$DW$T$83	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$83, DW_AT_name("GPADIR_BITS")
	.dwattr $C$DW$T$83, DW_AT_byte_size(0x01)
$C$DW$706	.dwtag  DW_TAG_member
	.dwattr $C$DW$706, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$706, DW_AT_name("GPIOA0")
	.dwattr $C$DW$706, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$706, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$706, DW_AT_bit_size(0x01)
	.dwattr $C$DW$706, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$706, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$707	.dwtag  DW_TAG_member
	.dwattr $C$DW$707, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$707, DW_AT_name("GPIOA1")
	.dwattr $C$DW$707, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$707, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$707, DW_AT_bit_size(0x01)
	.dwattr $C$DW$707, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$707, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$708	.dwtag  DW_TAG_member
	.dwattr $C$DW$708, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$708, DW_AT_name("GPIOA2")
	.dwattr $C$DW$708, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$708, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$708, DW_AT_bit_size(0x01)
	.dwattr $C$DW$708, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$708, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$709	.dwtag  DW_TAG_member
	.dwattr $C$DW$709, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$709, DW_AT_name("GPIOA3")
	.dwattr $C$DW$709, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$709, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$709, DW_AT_bit_size(0x01)
	.dwattr $C$DW$709, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$709, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$710	.dwtag  DW_TAG_member
	.dwattr $C$DW$710, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$710, DW_AT_name("GPIOA4")
	.dwattr $C$DW$710, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$710, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$710, DW_AT_bit_size(0x01)
	.dwattr $C$DW$710, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$710, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$711	.dwtag  DW_TAG_member
	.dwattr $C$DW$711, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$711, DW_AT_name("GPIOA5")
	.dwattr $C$DW$711, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$711, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$711, DW_AT_bit_size(0x01)
	.dwattr $C$DW$711, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$711, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$712	.dwtag  DW_TAG_member
	.dwattr $C$DW$712, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$712, DW_AT_name("GPIOA6")
	.dwattr $C$DW$712, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$712, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$712, DW_AT_bit_size(0x01)
	.dwattr $C$DW$712, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$712, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$713	.dwtag  DW_TAG_member
	.dwattr $C$DW$713, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$713, DW_AT_name("GPIOA7")
	.dwattr $C$DW$713, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$713, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$713, DW_AT_bit_size(0x01)
	.dwattr $C$DW$713, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$713, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$714	.dwtag  DW_TAG_member
	.dwattr $C$DW$714, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$714, DW_AT_name("GPIOA8")
	.dwattr $C$DW$714, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$714, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$714, DW_AT_bit_size(0x01)
	.dwattr $C$DW$714, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$714, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$715	.dwtag  DW_TAG_member
	.dwattr $C$DW$715, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$715, DW_AT_name("GPIOA9")
	.dwattr $C$DW$715, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$715, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$715, DW_AT_bit_size(0x01)
	.dwattr $C$DW$715, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$715, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$716	.dwtag  DW_TAG_member
	.dwattr $C$DW$716, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$716, DW_AT_name("GPIOA10")
	.dwattr $C$DW$716, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$716, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$716, DW_AT_bit_size(0x01)
	.dwattr $C$DW$716, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$716, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$717	.dwtag  DW_TAG_member
	.dwattr $C$DW$717, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$717, DW_AT_name("GPIOA11")
	.dwattr $C$DW$717, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$717, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$717, DW_AT_bit_size(0x01)
	.dwattr $C$DW$717, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$717, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$718	.dwtag  DW_TAG_member
	.dwattr $C$DW$718, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$718, DW_AT_name("GPIOA12")
	.dwattr $C$DW$718, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$718, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$718, DW_AT_bit_size(0x01)
	.dwattr $C$DW$718, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$718, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$719	.dwtag  DW_TAG_member
	.dwattr $C$DW$719, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$719, DW_AT_name("GPIOA13")
	.dwattr $C$DW$719, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$719, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$719, DW_AT_bit_size(0x01)
	.dwattr $C$DW$719, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$719, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$720	.dwtag  DW_TAG_member
	.dwattr $C$DW$720, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$720, DW_AT_name("GPIOA14")
	.dwattr $C$DW$720, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$720, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$720, DW_AT_bit_size(0x01)
	.dwattr $C$DW$720, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$720, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$721	.dwtag  DW_TAG_member
	.dwattr $C$DW$721, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$721, DW_AT_name("GPIOA15")
	.dwattr $C$DW$721, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$721, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$721, DW_AT_bit_size(0x01)
	.dwattr $C$DW$721, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$721, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$83


$C$DW$T$84	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$84, DW_AT_name("GPADIR_REG")
	.dwattr $C$DW$T$84, DW_AT_byte_size(0x01)
$C$DW$722	.dwtag  DW_TAG_member
	.dwattr $C$DW$722, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$722, DW_AT_name("all")
	.dwattr $C$DW$722, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$722, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$722, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$723	.dwtag  DW_TAG_member
	.dwattr $C$DW$723, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$723, DW_AT_name("bit")
	.dwattr $C$DW$723, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$723, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$723, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$84


$C$DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$85, DW_AT_name("GPAMUX_BITS")
	.dwattr $C$DW$T$85, DW_AT_byte_size(0x01)
$C$DW$724	.dwtag  DW_TAG_member
	.dwattr $C$DW$724, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$724, DW_AT_name("PWM1_GPIOA0")
	.dwattr $C$DW$724, DW_AT_TI_symbol_name("_PWM1_GPIOA0")
	.dwattr $C$DW$724, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$724, DW_AT_bit_size(0x01)
	.dwattr $C$DW$724, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$724, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$725	.dwtag  DW_TAG_member
	.dwattr $C$DW$725, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$725, DW_AT_name("PWM2_GPIOA1")
	.dwattr $C$DW$725, DW_AT_TI_symbol_name("_PWM2_GPIOA1")
	.dwattr $C$DW$725, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$725, DW_AT_bit_size(0x01)
	.dwattr $C$DW$725, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$725, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$726	.dwtag  DW_TAG_member
	.dwattr $C$DW$726, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$726, DW_AT_name("PWM3_GPIOA2")
	.dwattr $C$DW$726, DW_AT_TI_symbol_name("_PWM3_GPIOA2")
	.dwattr $C$DW$726, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$726, DW_AT_bit_size(0x01)
	.dwattr $C$DW$726, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$726, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$727	.dwtag  DW_TAG_member
	.dwattr $C$DW$727, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$727, DW_AT_name("PWM4_GPIOA3")
	.dwattr $C$DW$727, DW_AT_TI_symbol_name("_PWM4_GPIOA3")
	.dwattr $C$DW$727, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$727, DW_AT_bit_size(0x01)
	.dwattr $C$DW$727, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$727, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$728	.dwtag  DW_TAG_member
	.dwattr $C$DW$728, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$728, DW_AT_name("PWM5_GPIOA4")
	.dwattr $C$DW$728, DW_AT_TI_symbol_name("_PWM5_GPIOA4")
	.dwattr $C$DW$728, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$728, DW_AT_bit_size(0x01)
	.dwattr $C$DW$728, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$728, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$729	.dwtag  DW_TAG_member
	.dwattr $C$DW$729, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$729, DW_AT_name("PWM6_GPIOA5")
	.dwattr $C$DW$729, DW_AT_TI_symbol_name("_PWM6_GPIOA5")
	.dwattr $C$DW$729, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$729, DW_AT_bit_size(0x01)
	.dwattr $C$DW$729, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$729, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$730	.dwtag  DW_TAG_member
	.dwattr $C$DW$730, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$730, DW_AT_name("T1PWM_GPIOA6")
	.dwattr $C$DW$730, DW_AT_TI_symbol_name("_T1PWM_GPIOA6")
	.dwattr $C$DW$730, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$730, DW_AT_bit_size(0x01)
	.dwattr $C$DW$730, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$730, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$731	.dwtag  DW_TAG_member
	.dwattr $C$DW$731, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$731, DW_AT_name("T2PWM_GPIOA7")
	.dwattr $C$DW$731, DW_AT_TI_symbol_name("_T2PWM_GPIOA7")
	.dwattr $C$DW$731, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$731, DW_AT_bit_size(0x01)
	.dwattr $C$DW$731, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$731, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$732	.dwtag  DW_TAG_member
	.dwattr $C$DW$732, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$732, DW_AT_name("CAP1Q1_GPIOA8")
	.dwattr $C$DW$732, DW_AT_TI_symbol_name("_CAP1Q1_GPIOA8")
	.dwattr $C$DW$732, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$732, DW_AT_bit_size(0x01)
	.dwattr $C$DW$732, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$732, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$733	.dwtag  DW_TAG_member
	.dwattr $C$DW$733, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$733, DW_AT_name("CAP2Q2_GPIOA9")
	.dwattr $C$DW$733, DW_AT_TI_symbol_name("_CAP2Q2_GPIOA9")
	.dwattr $C$DW$733, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$733, DW_AT_bit_size(0x01)
	.dwattr $C$DW$733, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$733, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$734	.dwtag  DW_TAG_member
	.dwattr $C$DW$734, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$734, DW_AT_name("CAP3QI1_GPIOA10")
	.dwattr $C$DW$734, DW_AT_TI_symbol_name("_CAP3QI1_GPIOA10")
	.dwattr $C$DW$734, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$734, DW_AT_bit_size(0x01)
	.dwattr $C$DW$734, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$734, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$735	.dwtag  DW_TAG_member
	.dwattr $C$DW$735, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$735, DW_AT_name("TDIRA_GPIOA11")
	.dwattr $C$DW$735, DW_AT_TI_symbol_name("_TDIRA_GPIOA11")
	.dwattr $C$DW$735, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$735, DW_AT_bit_size(0x01)
	.dwattr $C$DW$735, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$735, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$736	.dwtag  DW_TAG_member
	.dwattr $C$DW$736, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$736, DW_AT_name("TCLKINA_GPIOA12")
	.dwattr $C$DW$736, DW_AT_TI_symbol_name("_TCLKINA_GPIOA12")
	.dwattr $C$DW$736, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$736, DW_AT_bit_size(0x01)
	.dwattr $C$DW$736, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$736, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$737	.dwtag  DW_TAG_member
	.dwattr $C$DW$737, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$737, DW_AT_name("C1TRIP_GPIOA13")
	.dwattr $C$DW$737, DW_AT_TI_symbol_name("_C1TRIP_GPIOA13")
	.dwattr $C$DW$737, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$737, DW_AT_bit_size(0x01)
	.dwattr $C$DW$737, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$737, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$738	.dwtag  DW_TAG_member
	.dwattr $C$DW$738, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$738, DW_AT_name("C2TRIP_GPIOA14")
	.dwattr $C$DW$738, DW_AT_TI_symbol_name("_C2TRIP_GPIOA14")
	.dwattr $C$DW$738, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$738, DW_AT_bit_size(0x01)
	.dwattr $C$DW$738, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$738, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$739	.dwtag  DW_TAG_member
	.dwattr $C$DW$739, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$739, DW_AT_name("C3TRIP_GPIOA15")
	.dwattr $C$DW$739, DW_AT_TI_symbol_name("_C3TRIP_GPIOA15")
	.dwattr $C$DW$739, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$739, DW_AT_bit_size(0x01)
	.dwattr $C$DW$739, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$739, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$85


$C$DW$T$86	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$86, DW_AT_name("GPAMUX_REG")
	.dwattr $C$DW$T$86, DW_AT_byte_size(0x01)
$C$DW$740	.dwtag  DW_TAG_member
	.dwattr $C$DW$740, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$740, DW_AT_name("all")
	.dwattr $C$DW$740, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$740, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$740, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$741	.dwtag  DW_TAG_member
	.dwattr $C$DW$741, DW_AT_type(*$C$DW$T$85)
	.dwattr $C$DW$741, DW_AT_name("bit")
	.dwattr $C$DW$741, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$741, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$741, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$86


$C$DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$87, DW_AT_name("GPAQUAL_BITS")
	.dwattr $C$DW$T$87, DW_AT_byte_size(0x01)
$C$DW$742	.dwtag  DW_TAG_member
	.dwattr $C$DW$742, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$742, DW_AT_name("QUALPRD")
	.dwattr $C$DW$742, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$742, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$742, DW_AT_bit_size(0x08)
	.dwattr $C$DW$742, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$742, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$743	.dwtag  DW_TAG_member
	.dwattr $C$DW$743, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$743, DW_AT_name("rsvd1")
	.dwattr $C$DW$743, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$743, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$743, DW_AT_bit_size(0x08)
	.dwattr $C$DW$743, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$743, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$87


$C$DW$T$88	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$88, DW_AT_name("GPAQUAL_REG")
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x01)
$C$DW$744	.dwtag  DW_TAG_member
	.dwattr $C$DW$744, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$744, DW_AT_name("all")
	.dwattr $C$DW$744, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$744, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$744, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$745	.dwtag  DW_TAG_member
	.dwattr $C$DW$745, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$745, DW_AT_name("bit")
	.dwattr $C$DW$745, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$745, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$745, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$88


$C$DW$T$89	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$89, DW_AT_name("GPBDIR_BITS")
	.dwattr $C$DW$T$89, DW_AT_byte_size(0x01)
$C$DW$746	.dwtag  DW_TAG_member
	.dwattr $C$DW$746, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$746, DW_AT_name("GPIOB0")
	.dwattr $C$DW$746, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$746, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$746, DW_AT_bit_size(0x01)
	.dwattr $C$DW$746, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$746, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$747	.dwtag  DW_TAG_member
	.dwattr $C$DW$747, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$747, DW_AT_name("GPIOB1")
	.dwattr $C$DW$747, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$747, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$747, DW_AT_bit_size(0x01)
	.dwattr $C$DW$747, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$747, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$748	.dwtag  DW_TAG_member
	.dwattr $C$DW$748, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$748, DW_AT_name("GPIOB2")
	.dwattr $C$DW$748, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$748, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$748, DW_AT_bit_size(0x01)
	.dwattr $C$DW$748, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$748, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$749	.dwtag  DW_TAG_member
	.dwattr $C$DW$749, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$749, DW_AT_name("GPIOB3")
	.dwattr $C$DW$749, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$749, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$749, DW_AT_bit_size(0x01)
	.dwattr $C$DW$749, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$749, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$750	.dwtag  DW_TAG_member
	.dwattr $C$DW$750, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$750, DW_AT_name("GPIOB4")
	.dwattr $C$DW$750, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$750, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$750, DW_AT_bit_size(0x01)
	.dwattr $C$DW$750, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$750, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$751	.dwtag  DW_TAG_member
	.dwattr $C$DW$751, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$751, DW_AT_name("GPIOB5")
	.dwattr $C$DW$751, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$751, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$751, DW_AT_bit_size(0x01)
	.dwattr $C$DW$751, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$751, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$752	.dwtag  DW_TAG_member
	.dwattr $C$DW$752, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$752, DW_AT_name("GPIOB6")
	.dwattr $C$DW$752, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$752, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$752, DW_AT_bit_size(0x01)
	.dwattr $C$DW$752, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$752, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$753	.dwtag  DW_TAG_member
	.dwattr $C$DW$753, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$753, DW_AT_name("GPIOB7")
	.dwattr $C$DW$753, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$753, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$753, DW_AT_bit_size(0x01)
	.dwattr $C$DW$753, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$753, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$754	.dwtag  DW_TAG_member
	.dwattr $C$DW$754, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$754, DW_AT_name("GPIOB8")
	.dwattr $C$DW$754, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$754, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$754, DW_AT_bit_size(0x01)
	.dwattr $C$DW$754, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$754, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$755	.dwtag  DW_TAG_member
	.dwattr $C$DW$755, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$755, DW_AT_name("GPIOB9")
	.dwattr $C$DW$755, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$755, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$755, DW_AT_bit_size(0x01)
	.dwattr $C$DW$755, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$755, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$756	.dwtag  DW_TAG_member
	.dwattr $C$DW$756, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$756, DW_AT_name("GPIOB10")
	.dwattr $C$DW$756, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$756, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$756, DW_AT_bit_size(0x01)
	.dwattr $C$DW$756, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$756, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$757	.dwtag  DW_TAG_member
	.dwattr $C$DW$757, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$757, DW_AT_name("GPIOB11")
	.dwattr $C$DW$757, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$757, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$757, DW_AT_bit_size(0x01)
	.dwattr $C$DW$757, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$757, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$758	.dwtag  DW_TAG_member
	.dwattr $C$DW$758, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$758, DW_AT_name("GPIOB12")
	.dwattr $C$DW$758, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$758, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$758, DW_AT_bit_size(0x01)
	.dwattr $C$DW$758, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$758, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$759	.dwtag  DW_TAG_member
	.dwattr $C$DW$759, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$759, DW_AT_name("GPIOB13")
	.dwattr $C$DW$759, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$759, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$759, DW_AT_bit_size(0x01)
	.dwattr $C$DW$759, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$759, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$760	.dwtag  DW_TAG_member
	.dwattr $C$DW$760, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$760, DW_AT_name("GPIOB14")
	.dwattr $C$DW$760, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$760, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$760, DW_AT_bit_size(0x01)
	.dwattr $C$DW$760, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$760, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$761	.dwtag  DW_TAG_member
	.dwattr $C$DW$761, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$761, DW_AT_name("GPIOB15")
	.dwattr $C$DW$761, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$761, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$761, DW_AT_bit_size(0x01)
	.dwattr $C$DW$761, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$761, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$89


$C$DW$T$90	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$90, DW_AT_name("GPBDIR_REG")
	.dwattr $C$DW$T$90, DW_AT_byte_size(0x01)
$C$DW$762	.dwtag  DW_TAG_member
	.dwattr $C$DW$762, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$762, DW_AT_name("all")
	.dwattr $C$DW$762, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$762, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$762, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$763	.dwtag  DW_TAG_member
	.dwattr $C$DW$763, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$763, DW_AT_name("bit")
	.dwattr $C$DW$763, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$763, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$763, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$90


$C$DW$T$91	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$91, DW_AT_name("GPBMUX_BITS")
	.dwattr $C$DW$T$91, DW_AT_byte_size(0x01)
$C$DW$764	.dwtag  DW_TAG_member
	.dwattr $C$DW$764, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$764, DW_AT_name("PWM7_GPIOB0")
	.dwattr $C$DW$764, DW_AT_TI_symbol_name("_PWM7_GPIOB0")
	.dwattr $C$DW$764, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$764, DW_AT_bit_size(0x01)
	.dwattr $C$DW$764, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$764, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$765	.dwtag  DW_TAG_member
	.dwattr $C$DW$765, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$765, DW_AT_name("PWM8_GPIOB1")
	.dwattr $C$DW$765, DW_AT_TI_symbol_name("_PWM8_GPIOB1")
	.dwattr $C$DW$765, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$765, DW_AT_bit_size(0x01)
	.dwattr $C$DW$765, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$765, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$766	.dwtag  DW_TAG_member
	.dwattr $C$DW$766, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$766, DW_AT_name("PWM9_GPIOB2")
	.dwattr $C$DW$766, DW_AT_TI_symbol_name("_PWM9_GPIOB2")
	.dwattr $C$DW$766, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$766, DW_AT_bit_size(0x01)
	.dwattr $C$DW$766, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$766, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$767	.dwtag  DW_TAG_member
	.dwattr $C$DW$767, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$767, DW_AT_name("PWM10_GPIOB3")
	.dwattr $C$DW$767, DW_AT_TI_symbol_name("_PWM10_GPIOB3")
	.dwattr $C$DW$767, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$767, DW_AT_bit_size(0x01)
	.dwattr $C$DW$767, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$767, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$768	.dwtag  DW_TAG_member
	.dwattr $C$DW$768, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$768, DW_AT_name("PWM11_GPIOB4")
	.dwattr $C$DW$768, DW_AT_TI_symbol_name("_PWM11_GPIOB4")
	.dwattr $C$DW$768, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$768, DW_AT_bit_size(0x01)
	.dwattr $C$DW$768, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$768, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$769	.dwtag  DW_TAG_member
	.dwattr $C$DW$769, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$769, DW_AT_name("PWM12_GPIOB5")
	.dwattr $C$DW$769, DW_AT_TI_symbol_name("_PWM12_GPIOB5")
	.dwattr $C$DW$769, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$769, DW_AT_bit_size(0x01)
	.dwattr $C$DW$769, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$769, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$770	.dwtag  DW_TAG_member
	.dwattr $C$DW$770, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$770, DW_AT_name("T3PWM_GPIOB6")
	.dwattr $C$DW$770, DW_AT_TI_symbol_name("_T3PWM_GPIOB6")
	.dwattr $C$DW$770, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$770, DW_AT_bit_size(0x01)
	.dwattr $C$DW$770, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$770, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$771	.dwtag  DW_TAG_member
	.dwattr $C$DW$771, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$771, DW_AT_name("T4PWM_GPIOB7")
	.dwattr $C$DW$771, DW_AT_TI_symbol_name("_T4PWM_GPIOB7")
	.dwattr $C$DW$771, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$771, DW_AT_bit_size(0x01)
	.dwattr $C$DW$771, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$771, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$772	.dwtag  DW_TAG_member
	.dwattr $C$DW$772, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$772, DW_AT_name("CAP4Q1_GPIOB8")
	.dwattr $C$DW$772, DW_AT_TI_symbol_name("_CAP4Q1_GPIOB8")
	.dwattr $C$DW$772, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$772, DW_AT_bit_size(0x01)
	.dwattr $C$DW$772, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$772, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$773	.dwtag  DW_TAG_member
	.dwattr $C$DW$773, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$773, DW_AT_name("CAP5Q2_GPIOB9")
	.dwattr $C$DW$773, DW_AT_TI_symbol_name("_CAP5Q2_GPIOB9")
	.dwattr $C$DW$773, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$773, DW_AT_bit_size(0x01)
	.dwattr $C$DW$773, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$773, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$774	.dwtag  DW_TAG_member
	.dwattr $C$DW$774, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$774, DW_AT_name("CAP6QI2_GPIOB10")
	.dwattr $C$DW$774, DW_AT_TI_symbol_name("_CAP6QI2_GPIOB10")
	.dwattr $C$DW$774, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$774, DW_AT_bit_size(0x01)
	.dwattr $C$DW$774, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$774, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$775	.dwtag  DW_TAG_member
	.dwattr $C$DW$775, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$775, DW_AT_name("TDIRB_GPIOB11")
	.dwattr $C$DW$775, DW_AT_TI_symbol_name("_TDIRB_GPIOB11")
	.dwattr $C$DW$775, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$775, DW_AT_bit_size(0x01)
	.dwattr $C$DW$775, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$775, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$776	.dwtag  DW_TAG_member
	.dwattr $C$DW$776, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$776, DW_AT_name("TCLKINB_GPIOB12")
	.dwattr $C$DW$776, DW_AT_TI_symbol_name("_TCLKINB_GPIOB12")
	.dwattr $C$DW$776, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$776, DW_AT_bit_size(0x01)
	.dwattr $C$DW$776, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$776, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$777	.dwtag  DW_TAG_member
	.dwattr $C$DW$777, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$777, DW_AT_name("C4TRIP_GPIOB13")
	.dwattr $C$DW$777, DW_AT_TI_symbol_name("_C4TRIP_GPIOB13")
	.dwattr $C$DW$777, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$777, DW_AT_bit_size(0x01)
	.dwattr $C$DW$777, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$777, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$778	.dwtag  DW_TAG_member
	.dwattr $C$DW$778, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$778, DW_AT_name("C5TRIP_GPIOB14")
	.dwattr $C$DW$778, DW_AT_TI_symbol_name("_C5TRIP_GPIOB14")
	.dwattr $C$DW$778, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$778, DW_AT_bit_size(0x01)
	.dwattr $C$DW$778, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$778, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$779	.dwtag  DW_TAG_member
	.dwattr $C$DW$779, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$779, DW_AT_name("C6TRIP_GPIOB15")
	.dwattr $C$DW$779, DW_AT_TI_symbol_name("_C6TRIP_GPIOB15")
	.dwattr $C$DW$779, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$779, DW_AT_bit_size(0x01)
	.dwattr $C$DW$779, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$779, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$91


$C$DW$T$92	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$92, DW_AT_name("GPBMUX_REG")
	.dwattr $C$DW$T$92, DW_AT_byte_size(0x01)
$C$DW$780	.dwtag  DW_TAG_member
	.dwattr $C$DW$780, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$780, DW_AT_name("all")
	.dwattr $C$DW$780, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$780, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$780, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$781	.dwtag  DW_TAG_member
	.dwattr $C$DW$781, DW_AT_type(*$C$DW$T$91)
	.dwattr $C$DW$781, DW_AT_name("bit")
	.dwattr $C$DW$781, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$781, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$781, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$92


$C$DW$T$93	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$93, DW_AT_name("GPBQUAL_BITS")
	.dwattr $C$DW$T$93, DW_AT_byte_size(0x01)
$C$DW$782	.dwtag  DW_TAG_member
	.dwattr $C$DW$782, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$782, DW_AT_name("QUALPRD")
	.dwattr $C$DW$782, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$782, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$782, DW_AT_bit_size(0x08)
	.dwattr $C$DW$782, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$782, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$783	.dwtag  DW_TAG_member
	.dwattr $C$DW$783, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$783, DW_AT_name("rsvd1")
	.dwattr $C$DW$783, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$783, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$783, DW_AT_bit_size(0x08)
	.dwattr $C$DW$783, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$783, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$93


$C$DW$T$94	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$94, DW_AT_name("GPBQUAL_REG")
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x01)
$C$DW$784	.dwtag  DW_TAG_member
	.dwattr $C$DW$784, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$784, DW_AT_name("all")
	.dwattr $C$DW$784, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$784, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$784, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$785	.dwtag  DW_TAG_member
	.dwattr $C$DW$785, DW_AT_type(*$C$DW$T$93)
	.dwattr $C$DW$785, DW_AT_name("bit")
	.dwattr $C$DW$785, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$785, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$785, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$94


$C$DW$T$95	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$95, DW_AT_name("GPDDIR_BITS")
	.dwattr $C$DW$T$95, DW_AT_byte_size(0x01)
$C$DW$786	.dwtag  DW_TAG_member
	.dwattr $C$DW$786, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$786, DW_AT_name("GPIOD0")
	.dwattr $C$DW$786, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$786, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$786, DW_AT_bit_size(0x01)
	.dwattr $C$DW$786, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$786, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$787	.dwtag  DW_TAG_member
	.dwattr $C$DW$787, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$787, DW_AT_name("GPIOD1")
	.dwattr $C$DW$787, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$787, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$787, DW_AT_bit_size(0x01)
	.dwattr $C$DW$787, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$787, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$788	.dwtag  DW_TAG_member
	.dwattr $C$DW$788, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$788, DW_AT_name("rsvd1")
	.dwattr $C$DW$788, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$788, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$788, DW_AT_bit_size(0x03)
	.dwattr $C$DW$788, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$788, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$789	.dwtag  DW_TAG_member
	.dwattr $C$DW$789, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$789, DW_AT_name("GPIOD5")
	.dwattr $C$DW$789, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$789, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$789, DW_AT_bit_size(0x01)
	.dwattr $C$DW$789, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$789, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$790	.dwtag  DW_TAG_member
	.dwattr $C$DW$790, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$790, DW_AT_name("GPIOD6")
	.dwattr $C$DW$790, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$790, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$790, DW_AT_bit_size(0x01)
	.dwattr $C$DW$790, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$790, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$791	.dwtag  DW_TAG_member
	.dwattr $C$DW$791, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$791, DW_AT_name("rsvd2")
	.dwattr $C$DW$791, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$791, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$791, DW_AT_bit_size(0x09)
	.dwattr $C$DW$791, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$791, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$95


$C$DW$T$96	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$96, DW_AT_name("GPDDIR_REG")
	.dwattr $C$DW$T$96, DW_AT_byte_size(0x01)
$C$DW$792	.dwtag  DW_TAG_member
	.dwattr $C$DW$792, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$792, DW_AT_name("all")
	.dwattr $C$DW$792, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$792, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$792, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$793	.dwtag  DW_TAG_member
	.dwattr $C$DW$793, DW_AT_type(*$C$DW$T$95)
	.dwattr $C$DW$793, DW_AT_name("bit")
	.dwattr $C$DW$793, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$793, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$793, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$96


$C$DW$T$97	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$97, DW_AT_name("GPDMUX_BITS")
	.dwattr $C$DW$T$97, DW_AT_byte_size(0x01)
$C$DW$794	.dwtag  DW_TAG_member
	.dwattr $C$DW$794, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$794, DW_AT_name("T1CTRIP_PDPA_GPIOD0")
	.dwattr $C$DW$794, DW_AT_TI_symbol_name("_T1CTRIP_PDPA_GPIOD0")
	.dwattr $C$DW$794, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$794, DW_AT_bit_size(0x01)
	.dwattr $C$DW$794, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$794, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$795	.dwtag  DW_TAG_member
	.dwattr $C$DW$795, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$795, DW_AT_name("T2CTRIP_SOCA_GPIOD1")
	.dwattr $C$DW$795, DW_AT_TI_symbol_name("_T2CTRIP_SOCA_GPIOD1")
	.dwattr $C$DW$795, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$795, DW_AT_bit_size(0x01)
	.dwattr $C$DW$795, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$795, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$796	.dwtag  DW_TAG_member
	.dwattr $C$DW$796, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$796, DW_AT_name("rsvd1")
	.dwattr $C$DW$796, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$796, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$796, DW_AT_bit_size(0x03)
	.dwattr $C$DW$796, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$796, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$797	.dwtag  DW_TAG_member
	.dwattr $C$DW$797, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$797, DW_AT_name("T3CTRIP_PDPB_GPIOD5")
	.dwattr $C$DW$797, DW_AT_TI_symbol_name("_T3CTRIP_PDPB_GPIOD5")
	.dwattr $C$DW$797, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$797, DW_AT_bit_size(0x01)
	.dwattr $C$DW$797, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$797, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$798	.dwtag  DW_TAG_member
	.dwattr $C$DW$798, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$798, DW_AT_name("T4CTRIP_SOCB_GPIOD6")
	.dwattr $C$DW$798, DW_AT_TI_symbol_name("_T4CTRIP_SOCB_GPIOD6")
	.dwattr $C$DW$798, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$798, DW_AT_bit_size(0x01)
	.dwattr $C$DW$798, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$798, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$799	.dwtag  DW_TAG_member
	.dwattr $C$DW$799, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$799, DW_AT_name("rsvd2")
	.dwattr $C$DW$799, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$799, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$799, DW_AT_bit_size(0x09)
	.dwattr $C$DW$799, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$799, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$97


$C$DW$T$98	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$98, DW_AT_name("GPDMUX_REG")
	.dwattr $C$DW$T$98, DW_AT_byte_size(0x01)
$C$DW$800	.dwtag  DW_TAG_member
	.dwattr $C$DW$800, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$800, DW_AT_name("all")
	.dwattr $C$DW$800, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$800, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$800, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$801	.dwtag  DW_TAG_member
	.dwattr $C$DW$801, DW_AT_type(*$C$DW$T$97)
	.dwattr $C$DW$801, DW_AT_name("bit")
	.dwattr $C$DW$801, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$801, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$801, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$98


$C$DW$T$99	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$99, DW_AT_name("GPDQUAL_BITS")
	.dwattr $C$DW$T$99, DW_AT_byte_size(0x01)
$C$DW$802	.dwtag  DW_TAG_member
	.dwattr $C$DW$802, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$802, DW_AT_name("QUALPRD")
	.dwattr $C$DW$802, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$802, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$802, DW_AT_bit_size(0x08)
	.dwattr $C$DW$802, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$802, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$803	.dwtag  DW_TAG_member
	.dwattr $C$DW$803, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$803, DW_AT_name("rsvd1")
	.dwattr $C$DW$803, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$803, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$803, DW_AT_bit_size(0x08)
	.dwattr $C$DW$803, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$803, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$99


$C$DW$T$100	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$100, DW_AT_name("GPDQUAL_REG")
	.dwattr $C$DW$T$100, DW_AT_byte_size(0x01)
$C$DW$804	.dwtag  DW_TAG_member
	.dwattr $C$DW$804, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$804, DW_AT_name("all")
	.dwattr $C$DW$804, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$804, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$804, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$805	.dwtag  DW_TAG_member
	.dwattr $C$DW$805, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$805, DW_AT_name("bit")
	.dwattr $C$DW$805, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$805, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$805, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$100


$C$DW$T$101	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$101, DW_AT_name("GPEDIR_BITS")
	.dwattr $C$DW$T$101, DW_AT_byte_size(0x01)
$C$DW$806	.dwtag  DW_TAG_member
	.dwattr $C$DW$806, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$806, DW_AT_name("GPIOE0")
	.dwattr $C$DW$806, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$806, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$806, DW_AT_bit_size(0x01)
	.dwattr $C$DW$806, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$806, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$807	.dwtag  DW_TAG_member
	.dwattr $C$DW$807, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$807, DW_AT_name("GPIOE1")
	.dwattr $C$DW$807, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$807, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$807, DW_AT_bit_size(0x01)
	.dwattr $C$DW$807, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$807, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$808	.dwtag  DW_TAG_member
	.dwattr $C$DW$808, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$808, DW_AT_name("GPIOE2")
	.dwattr $C$DW$808, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$808, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$808, DW_AT_bit_size(0x01)
	.dwattr $C$DW$808, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$808, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$809	.dwtag  DW_TAG_member
	.dwattr $C$DW$809, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$809, DW_AT_name("rsvd1")
	.dwattr $C$DW$809, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$809, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$809, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$809, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$809, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$101


$C$DW$T$102	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$102, DW_AT_name("GPEDIR_REG")
	.dwattr $C$DW$T$102, DW_AT_byte_size(0x01)
$C$DW$810	.dwtag  DW_TAG_member
	.dwattr $C$DW$810, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$810, DW_AT_name("all")
	.dwattr $C$DW$810, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$810, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$810, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$811	.dwtag  DW_TAG_member
	.dwattr $C$DW$811, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$811, DW_AT_name("bit")
	.dwattr $C$DW$811, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$811, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$811, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$102


$C$DW$T$103	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$103, DW_AT_name("GPEMUX_BITS")
	.dwattr $C$DW$T$103, DW_AT_byte_size(0x01)
$C$DW$812	.dwtag  DW_TAG_member
	.dwattr $C$DW$812, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$812, DW_AT_name("XINT1_XBIO_GPIOE0")
	.dwattr $C$DW$812, DW_AT_TI_symbol_name("_XINT1_XBIO_GPIOE0")
	.dwattr $C$DW$812, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$812, DW_AT_bit_size(0x01)
	.dwattr $C$DW$812, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$812, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$813	.dwtag  DW_TAG_member
	.dwattr $C$DW$813, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$813, DW_AT_name("XINT2_ADCSOC_GPIOE1")
	.dwattr $C$DW$813, DW_AT_TI_symbol_name("_XINT2_ADCSOC_GPIOE1")
	.dwattr $C$DW$813, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$813, DW_AT_bit_size(0x01)
	.dwattr $C$DW$813, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$813, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$814	.dwtag  DW_TAG_member
	.dwattr $C$DW$814, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$814, DW_AT_name("XNMI_XINT13_GPIOE2")
	.dwattr $C$DW$814, DW_AT_TI_symbol_name("_XNMI_XINT13_GPIOE2")
	.dwattr $C$DW$814, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$814, DW_AT_bit_size(0x01)
	.dwattr $C$DW$814, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$814, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$815	.dwtag  DW_TAG_member
	.dwattr $C$DW$815, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$815, DW_AT_name("rsvd1")
	.dwattr $C$DW$815, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$815, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$815, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$815, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$815, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$103


$C$DW$T$104	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$104, DW_AT_name("GPEMUX_REG")
	.dwattr $C$DW$T$104, DW_AT_byte_size(0x01)
$C$DW$816	.dwtag  DW_TAG_member
	.dwattr $C$DW$816, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$816, DW_AT_name("all")
	.dwattr $C$DW$816, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$816, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$816, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$817	.dwtag  DW_TAG_member
	.dwattr $C$DW$817, DW_AT_type(*$C$DW$T$103)
	.dwattr $C$DW$817, DW_AT_name("bit")
	.dwattr $C$DW$817, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$817, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$817, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$104


$C$DW$T$105	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$105, DW_AT_name("GPEQUAL_BITS")
	.dwattr $C$DW$T$105, DW_AT_byte_size(0x01)
$C$DW$818	.dwtag  DW_TAG_member
	.dwattr $C$DW$818, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$818, DW_AT_name("QUALPRD")
	.dwattr $C$DW$818, DW_AT_TI_symbol_name("_QUALPRD")
	.dwattr $C$DW$818, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$818, DW_AT_bit_size(0x08)
	.dwattr $C$DW$818, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$818, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$819	.dwtag  DW_TAG_member
	.dwattr $C$DW$819, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$819, DW_AT_name("rsvd1")
	.dwattr $C$DW$819, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$819, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$819, DW_AT_bit_size(0x08)
	.dwattr $C$DW$819, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$819, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$105


$C$DW$T$106	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$106, DW_AT_name("GPEQUAL_REG")
	.dwattr $C$DW$T$106, DW_AT_byte_size(0x01)
$C$DW$820	.dwtag  DW_TAG_member
	.dwattr $C$DW$820, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$820, DW_AT_name("all")
	.dwattr $C$DW$820, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$820, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$820, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$821	.dwtag  DW_TAG_member
	.dwattr $C$DW$821, DW_AT_type(*$C$DW$T$105)
	.dwattr $C$DW$821, DW_AT_name("bit")
	.dwattr $C$DW$821, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$821, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$821, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$106


$C$DW$T$107	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$107, DW_AT_name("GPFDIR_BITS")
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x01)
$C$DW$822	.dwtag  DW_TAG_member
	.dwattr $C$DW$822, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$822, DW_AT_name("GPIOF0")
	.dwattr $C$DW$822, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$822, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$822, DW_AT_bit_size(0x01)
	.dwattr $C$DW$822, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$822, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$823	.dwtag  DW_TAG_member
	.dwattr $C$DW$823, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$823, DW_AT_name("GPIOF1")
	.dwattr $C$DW$823, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$823, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$823, DW_AT_bit_size(0x01)
	.dwattr $C$DW$823, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$823, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$824	.dwtag  DW_TAG_member
	.dwattr $C$DW$824, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$824, DW_AT_name("GPIOF2")
	.dwattr $C$DW$824, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$824, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$824, DW_AT_bit_size(0x01)
	.dwattr $C$DW$824, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$824, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$825	.dwtag  DW_TAG_member
	.dwattr $C$DW$825, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$825, DW_AT_name("GPIOF3")
	.dwattr $C$DW$825, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$825, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$825, DW_AT_bit_size(0x01)
	.dwattr $C$DW$825, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$825, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$826	.dwtag  DW_TAG_member
	.dwattr $C$DW$826, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$826, DW_AT_name("GPIOF4")
	.dwattr $C$DW$826, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$826, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$826, DW_AT_bit_size(0x01)
	.dwattr $C$DW$826, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$826, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$827	.dwtag  DW_TAG_member
	.dwattr $C$DW$827, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$827, DW_AT_name("GPIOF5")
	.dwattr $C$DW$827, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$827, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$827, DW_AT_bit_size(0x01)
	.dwattr $C$DW$827, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$827, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$828	.dwtag  DW_TAG_member
	.dwattr $C$DW$828, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$828, DW_AT_name("GPIOF6")
	.dwattr $C$DW$828, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$828, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$828, DW_AT_bit_size(0x01)
	.dwattr $C$DW$828, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$828, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$829	.dwtag  DW_TAG_member
	.dwattr $C$DW$829, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$829, DW_AT_name("GPIOF7")
	.dwattr $C$DW$829, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$829, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$829, DW_AT_bit_size(0x01)
	.dwattr $C$DW$829, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$829, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$830	.dwtag  DW_TAG_member
	.dwattr $C$DW$830, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$830, DW_AT_name("GPIOF8")
	.dwattr $C$DW$830, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$830, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$830, DW_AT_bit_size(0x01)
	.dwattr $C$DW$830, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$830, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$831	.dwtag  DW_TAG_member
	.dwattr $C$DW$831, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$831, DW_AT_name("GPIOF9")
	.dwattr $C$DW$831, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$831, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$831, DW_AT_bit_size(0x01)
	.dwattr $C$DW$831, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$831, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$832	.dwtag  DW_TAG_member
	.dwattr $C$DW$832, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$832, DW_AT_name("GPIOF10")
	.dwattr $C$DW$832, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$832, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$832, DW_AT_bit_size(0x01)
	.dwattr $C$DW$832, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$832, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$833	.dwtag  DW_TAG_member
	.dwattr $C$DW$833, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$833, DW_AT_name("GPIOF11")
	.dwattr $C$DW$833, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$833, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$833, DW_AT_bit_size(0x01)
	.dwattr $C$DW$833, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$833, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$834	.dwtag  DW_TAG_member
	.dwattr $C$DW$834, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$834, DW_AT_name("GPIOF12")
	.dwattr $C$DW$834, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$834, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$834, DW_AT_bit_size(0x01)
	.dwattr $C$DW$834, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$834, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$835	.dwtag  DW_TAG_member
	.dwattr $C$DW$835, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$835, DW_AT_name("GPIOF13")
	.dwattr $C$DW$835, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$835, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$835, DW_AT_bit_size(0x01)
	.dwattr $C$DW$835, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$835, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$836	.dwtag  DW_TAG_member
	.dwattr $C$DW$836, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$836, DW_AT_name("GPIOF14")
	.dwattr $C$DW$836, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$836, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$836, DW_AT_bit_size(0x01)
	.dwattr $C$DW$836, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$836, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$837	.dwtag  DW_TAG_member
	.dwattr $C$DW$837, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$837, DW_AT_name("GPIOF15")
	.dwattr $C$DW$837, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$837, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$837, DW_AT_bit_size(0x01)
	.dwattr $C$DW$837, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$837, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$107


$C$DW$T$108	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$108, DW_AT_name("GPFDIR_REG")
	.dwattr $C$DW$T$108, DW_AT_byte_size(0x01)
$C$DW$838	.dwtag  DW_TAG_member
	.dwattr $C$DW$838, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$838, DW_AT_name("all")
	.dwattr $C$DW$838, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$838, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$838, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$839	.dwtag  DW_TAG_member
	.dwattr $C$DW$839, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$839, DW_AT_name("bit")
	.dwattr $C$DW$839, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$839, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$839, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$108


$C$DW$T$109	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$109, DW_AT_name("GPFMUX_BITS")
	.dwattr $C$DW$T$109, DW_AT_byte_size(0x01)
$C$DW$840	.dwtag  DW_TAG_member
	.dwattr $C$DW$840, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$840, DW_AT_name("SPISIMOA_GPIOF0")
	.dwattr $C$DW$840, DW_AT_TI_symbol_name("_SPISIMOA_GPIOF0")
	.dwattr $C$DW$840, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$840, DW_AT_bit_size(0x01)
	.dwattr $C$DW$840, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$840, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$841	.dwtag  DW_TAG_member
	.dwattr $C$DW$841, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$841, DW_AT_name("SPISOMIA_GPIOF1")
	.dwattr $C$DW$841, DW_AT_TI_symbol_name("_SPISOMIA_GPIOF1")
	.dwattr $C$DW$841, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$841, DW_AT_bit_size(0x01)
	.dwattr $C$DW$841, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$841, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$842	.dwtag  DW_TAG_member
	.dwattr $C$DW$842, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$842, DW_AT_name("SPICLKA_GPIOF2")
	.dwattr $C$DW$842, DW_AT_TI_symbol_name("_SPICLKA_GPIOF2")
	.dwattr $C$DW$842, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$842, DW_AT_bit_size(0x01)
	.dwattr $C$DW$842, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$842, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$843	.dwtag  DW_TAG_member
	.dwattr $C$DW$843, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$843, DW_AT_name("SPISTEA_GPIOF3")
	.dwattr $C$DW$843, DW_AT_TI_symbol_name("_SPISTEA_GPIOF3")
	.dwattr $C$DW$843, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$843, DW_AT_bit_size(0x01)
	.dwattr $C$DW$843, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$843, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$844	.dwtag  DW_TAG_member
	.dwattr $C$DW$844, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$844, DW_AT_name("SCITXDA_GPIOF4")
	.dwattr $C$DW$844, DW_AT_TI_symbol_name("_SCITXDA_GPIOF4")
	.dwattr $C$DW$844, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$844, DW_AT_bit_size(0x01)
	.dwattr $C$DW$844, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$844, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$845	.dwtag  DW_TAG_member
	.dwattr $C$DW$845, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$845, DW_AT_name("SCIRXDA_GPIOF5")
	.dwattr $C$DW$845, DW_AT_TI_symbol_name("_SCIRXDA_GPIOF5")
	.dwattr $C$DW$845, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$845, DW_AT_bit_size(0x01)
	.dwattr $C$DW$845, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$845, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$846	.dwtag  DW_TAG_member
	.dwattr $C$DW$846, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$846, DW_AT_name("CANTXA_GPIOF6")
	.dwattr $C$DW$846, DW_AT_TI_symbol_name("_CANTXA_GPIOF6")
	.dwattr $C$DW$846, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$846, DW_AT_bit_size(0x01)
	.dwattr $C$DW$846, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$846, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$847	.dwtag  DW_TAG_member
	.dwattr $C$DW$847, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$847, DW_AT_name("CANRXA_GPIOF7")
	.dwattr $C$DW$847, DW_AT_TI_symbol_name("_CANRXA_GPIOF7")
	.dwattr $C$DW$847, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$847, DW_AT_bit_size(0x01)
	.dwattr $C$DW$847, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$847, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$848	.dwtag  DW_TAG_member
	.dwattr $C$DW$848, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$848, DW_AT_name("MCLKXA_GPIOF8")
	.dwattr $C$DW$848, DW_AT_TI_symbol_name("_MCLKXA_GPIOF8")
	.dwattr $C$DW$848, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$848, DW_AT_bit_size(0x01)
	.dwattr $C$DW$848, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$848, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$849	.dwtag  DW_TAG_member
	.dwattr $C$DW$849, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$849, DW_AT_name("MCLKRA_GPIOF9")
	.dwattr $C$DW$849, DW_AT_TI_symbol_name("_MCLKRA_GPIOF9")
	.dwattr $C$DW$849, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$849, DW_AT_bit_size(0x01)
	.dwattr $C$DW$849, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$849, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$850	.dwtag  DW_TAG_member
	.dwattr $C$DW$850, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$850, DW_AT_name("MFSXA_GPIOF10")
	.dwattr $C$DW$850, DW_AT_TI_symbol_name("_MFSXA_GPIOF10")
	.dwattr $C$DW$850, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$850, DW_AT_bit_size(0x01)
	.dwattr $C$DW$850, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$850, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$851	.dwtag  DW_TAG_member
	.dwattr $C$DW$851, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$851, DW_AT_name("MFSRA_GPIOF11")
	.dwattr $C$DW$851, DW_AT_TI_symbol_name("_MFSRA_GPIOF11")
	.dwattr $C$DW$851, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$851, DW_AT_bit_size(0x01)
	.dwattr $C$DW$851, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$851, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$852	.dwtag  DW_TAG_member
	.dwattr $C$DW$852, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$852, DW_AT_name("MDXA_GPIOF12")
	.dwattr $C$DW$852, DW_AT_TI_symbol_name("_MDXA_GPIOF12")
	.dwattr $C$DW$852, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$852, DW_AT_bit_size(0x01)
	.dwattr $C$DW$852, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$852, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$853	.dwtag  DW_TAG_member
	.dwattr $C$DW$853, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$853, DW_AT_name("MDRA_GPIOF13")
	.dwattr $C$DW$853, DW_AT_TI_symbol_name("_MDRA_GPIOF13")
	.dwattr $C$DW$853, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$853, DW_AT_bit_size(0x01)
	.dwattr $C$DW$853, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$853, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$854	.dwtag  DW_TAG_member
	.dwattr $C$DW$854, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$854, DW_AT_name("XF_GPIOF14")
	.dwattr $C$DW$854, DW_AT_TI_symbol_name("_XF_GPIOF14")
	.dwattr $C$DW$854, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$854, DW_AT_bit_size(0x01)
	.dwattr $C$DW$854, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$854, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$855	.dwtag  DW_TAG_member
	.dwattr $C$DW$855, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$855, DW_AT_name("spare_GPIOF15")
	.dwattr $C$DW$855, DW_AT_TI_symbol_name("_spare_GPIOF15")
	.dwattr $C$DW$855, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$855, DW_AT_bit_size(0x01)
	.dwattr $C$DW$855, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$855, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$109


$C$DW$T$110	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$110, DW_AT_name("GPFMUX_REG")
	.dwattr $C$DW$T$110, DW_AT_byte_size(0x01)
$C$DW$856	.dwtag  DW_TAG_member
	.dwattr $C$DW$856, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$856, DW_AT_name("all")
	.dwattr $C$DW$856, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$856, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$856, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$857	.dwtag  DW_TAG_member
	.dwattr $C$DW$857, DW_AT_type(*$C$DW$T$109)
	.dwattr $C$DW$857, DW_AT_name("bit")
	.dwattr $C$DW$857, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$857, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$857, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$110


$C$DW$T$111	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$111, DW_AT_name("GPGDIR_BITS")
	.dwattr $C$DW$T$111, DW_AT_byte_size(0x01)
$C$DW$858	.dwtag  DW_TAG_member
	.dwattr $C$DW$858, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$858, DW_AT_name("rsvd1")
	.dwattr $C$DW$858, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$858, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$858, DW_AT_bit_size(0x04)
	.dwattr $C$DW$858, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$858, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$859	.dwtag  DW_TAG_member
	.dwattr $C$DW$859, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$859, DW_AT_name("GPIOG4")
	.dwattr $C$DW$859, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$859, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$859, DW_AT_bit_size(0x01)
	.dwattr $C$DW$859, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$859, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$860	.dwtag  DW_TAG_member
	.dwattr $C$DW$860, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$860, DW_AT_name("GPIOG5")
	.dwattr $C$DW$860, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$860, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$860, DW_AT_bit_size(0x01)
	.dwattr $C$DW$860, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$860, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$861	.dwtag  DW_TAG_member
	.dwattr $C$DW$861, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$861, DW_AT_name("rsvd2")
	.dwattr $C$DW$861, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$861, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$861, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$861, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$861, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$111


$C$DW$T$112	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$112, DW_AT_name("GPGDIR_REG")
	.dwattr $C$DW$T$112, DW_AT_byte_size(0x01)
$C$DW$862	.dwtag  DW_TAG_member
	.dwattr $C$DW$862, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$862, DW_AT_name("all")
	.dwattr $C$DW$862, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$862, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$862, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$863	.dwtag  DW_TAG_member
	.dwattr $C$DW$863, DW_AT_type(*$C$DW$T$111)
	.dwattr $C$DW$863, DW_AT_name("bit")
	.dwattr $C$DW$863, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$863, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$863, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$112


$C$DW$T$113	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$113, DW_AT_name("GPGMUX_BITS")
	.dwattr $C$DW$T$113, DW_AT_byte_size(0x01)
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
	.dwattr $C$DW$865, DW_AT_name("SCITXDB_GPIOG4")
	.dwattr $C$DW$865, DW_AT_TI_symbol_name("_SCITXDB_GPIOG4")
	.dwattr $C$DW$865, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$865, DW_AT_bit_size(0x01)
	.dwattr $C$DW$865, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$865, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$866	.dwtag  DW_TAG_member
	.dwattr $C$DW$866, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$866, DW_AT_name("SCIRXDB_GPIOG5")
	.dwattr $C$DW$866, DW_AT_TI_symbol_name("_SCIRXDB_GPIOG5")
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

	.dwendtag $C$DW$T$113


$C$DW$T$114	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$114, DW_AT_name("GPGMUX_REG")
	.dwattr $C$DW$T$114, DW_AT_byte_size(0x01)
$C$DW$868	.dwtag  DW_TAG_member
	.dwattr $C$DW$868, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$868, DW_AT_name("all")
	.dwattr $C$DW$868, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$868, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$868, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$869	.dwtag  DW_TAG_member
	.dwattr $C$DW$869, DW_AT_type(*$C$DW$T$113)
	.dwattr $C$DW$869, DW_AT_name("bit")
	.dwattr $C$DW$869, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$869, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$869, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$114


$C$DW$T$118	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$118, DW_AT_name("GPIO_MUX_REGS")
	.dwattr $C$DW$T$118, DW_AT_byte_size(0x20)
$C$DW$870	.dwtag  DW_TAG_member
	.dwattr $C$DW$870, DW_AT_type(*$C$DW$T$86)
	.dwattr $C$DW$870, DW_AT_name("GPAMUX")
	.dwattr $C$DW$870, DW_AT_TI_symbol_name("_GPAMUX")
	.dwattr $C$DW$870, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$870, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$871	.dwtag  DW_TAG_member
	.dwattr $C$DW$871, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$871, DW_AT_name("GPADIR")
	.dwattr $C$DW$871, DW_AT_TI_symbol_name("_GPADIR")
	.dwattr $C$DW$871, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$871, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$872	.dwtag  DW_TAG_member
	.dwattr $C$DW$872, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$872, DW_AT_name("GPAQUAL")
	.dwattr $C$DW$872, DW_AT_TI_symbol_name("_GPAQUAL")
	.dwattr $C$DW$872, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$872, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$873	.dwtag  DW_TAG_member
	.dwattr $C$DW$873, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$873, DW_AT_name("rsvd1")
	.dwattr $C$DW$873, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$873, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$873, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$874	.dwtag  DW_TAG_member
	.dwattr $C$DW$874, DW_AT_type(*$C$DW$T$92)
	.dwattr $C$DW$874, DW_AT_name("GPBMUX")
	.dwattr $C$DW$874, DW_AT_TI_symbol_name("_GPBMUX")
	.dwattr $C$DW$874, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$874, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$875	.dwtag  DW_TAG_member
	.dwattr $C$DW$875, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$875, DW_AT_name("GPBDIR")
	.dwattr $C$DW$875, DW_AT_TI_symbol_name("_GPBDIR")
	.dwattr $C$DW$875, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$875, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$876	.dwtag  DW_TAG_member
	.dwattr $C$DW$876, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$876, DW_AT_name("GPBQUAL")
	.dwattr $C$DW$876, DW_AT_TI_symbol_name("_GPBQUAL")
	.dwattr $C$DW$876, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$876, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$877	.dwtag  DW_TAG_member
	.dwattr $C$DW$877, DW_AT_type(*$C$DW$T$115)
	.dwattr $C$DW$877, DW_AT_name("rsvd2")
	.dwattr $C$DW$877, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$877, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$877, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$878	.dwtag  DW_TAG_member
	.dwattr $C$DW$878, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$878, DW_AT_name("GPDMUX")
	.dwattr $C$DW$878, DW_AT_TI_symbol_name("_GPDMUX")
	.dwattr $C$DW$878, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$878, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$879	.dwtag  DW_TAG_member
	.dwattr $C$DW$879, DW_AT_type(*$C$DW$T$96)
	.dwattr $C$DW$879, DW_AT_name("GPDDIR")
	.dwattr $C$DW$879, DW_AT_TI_symbol_name("_GPDDIR")
	.dwattr $C$DW$879, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$879, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$880	.dwtag  DW_TAG_member
	.dwattr $C$DW$880, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$880, DW_AT_name("GPDQUAL")
	.dwattr $C$DW$880, DW_AT_TI_symbol_name("_GPDQUAL")
	.dwattr $C$DW$880, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$880, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$881	.dwtag  DW_TAG_member
	.dwattr $C$DW$881, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$881, DW_AT_name("rsvd3")
	.dwattr $C$DW$881, DW_AT_TI_symbol_name("_rsvd3")
	.dwattr $C$DW$881, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$881, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$882	.dwtag  DW_TAG_member
	.dwattr $C$DW$882, DW_AT_type(*$C$DW$T$104)
	.dwattr $C$DW$882, DW_AT_name("GPEMUX")
	.dwattr $C$DW$882, DW_AT_TI_symbol_name("_GPEMUX")
	.dwattr $C$DW$882, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$882, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$883	.dwtag  DW_TAG_member
	.dwattr $C$DW$883, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$883, DW_AT_name("GPEDIR")
	.dwattr $C$DW$883, DW_AT_TI_symbol_name("_GPEDIR")
	.dwattr $C$DW$883, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$883, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$884	.dwtag  DW_TAG_member
	.dwattr $C$DW$884, DW_AT_type(*$C$DW$T$106)
	.dwattr $C$DW$884, DW_AT_name("GPEQUAL")
	.dwattr $C$DW$884, DW_AT_TI_symbol_name("_GPEQUAL")
	.dwattr $C$DW$884, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$884, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$885	.dwtag  DW_TAG_member
	.dwattr $C$DW$885, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$885, DW_AT_name("rsvd4")
	.dwattr $C$DW$885, DW_AT_TI_symbol_name("_rsvd4")
	.dwattr $C$DW$885, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$885, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$886	.dwtag  DW_TAG_member
	.dwattr $C$DW$886, DW_AT_type(*$C$DW$T$110)
	.dwattr $C$DW$886, DW_AT_name("GPFMUX")
	.dwattr $C$DW$886, DW_AT_TI_symbol_name("_GPFMUX")
	.dwattr $C$DW$886, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$886, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$887	.dwtag  DW_TAG_member
	.dwattr $C$DW$887, DW_AT_type(*$C$DW$T$108)
	.dwattr $C$DW$887, DW_AT_name("GPFDIR")
	.dwattr $C$DW$887, DW_AT_TI_symbol_name("_GPFDIR")
	.dwattr $C$DW$887, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$887, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$888	.dwtag  DW_TAG_member
	.dwattr $C$DW$888, DW_AT_type(*$C$DW$T$116)
	.dwattr $C$DW$888, DW_AT_name("rsvd5")
	.dwattr $C$DW$888, DW_AT_TI_symbol_name("_rsvd5")
	.dwattr $C$DW$888, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$888, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$889	.dwtag  DW_TAG_member
	.dwattr $C$DW$889, DW_AT_type(*$C$DW$T$114)
	.dwattr $C$DW$889, DW_AT_name("GPGMUX")
	.dwattr $C$DW$889, DW_AT_TI_symbol_name("_GPGMUX")
	.dwattr $C$DW$889, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$889, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$890	.dwtag  DW_TAG_member
	.dwattr $C$DW$890, DW_AT_type(*$C$DW$T$112)
	.dwattr $C$DW$890, DW_AT_name("GPGDIR")
	.dwattr $C$DW$890, DW_AT_TI_symbol_name("_GPGDIR")
	.dwattr $C$DW$890, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$890, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$891	.dwtag  DW_TAG_member
	.dwattr $C$DW$891, DW_AT_type(*$C$DW$T$117)
	.dwattr $C$DW$891, DW_AT_name("rsvd6")
	.dwattr $C$DW$891, DW_AT_TI_symbol_name("_rsvd6")
	.dwattr $C$DW$891, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$891, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$118

$C$DW$892	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$892, DW_AT_type(*$C$DW$T$118)

$C$DW$T$145	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$145, DW_AT_type(*$C$DW$892)


$C$DW$T$119	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$119, DW_AT_name("MBOX")
	.dwattr $C$DW$T$119, DW_AT_byte_size(0x08)
$C$DW$893	.dwtag  DW_TAG_member
	.dwattr $C$DW$893, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$893, DW_AT_name("MSGID")
	.dwattr $C$DW$893, DW_AT_TI_symbol_name("_MSGID")
	.dwattr $C$DW$893, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$893, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$894	.dwtag  DW_TAG_member
	.dwattr $C$DW$894, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$894, DW_AT_name("MSGCTRL")
	.dwattr $C$DW$894, DW_AT_TI_symbol_name("_MSGCTRL")
	.dwattr $C$DW$894, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$894, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$895	.dwtag  DW_TAG_member
	.dwattr $C$DW$895, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$895, DW_AT_name("MDL")
	.dwattr $C$DW$895, DW_AT_TI_symbol_name("_MDL")
	.dwattr $C$DW$895, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$895, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$896	.dwtag  DW_TAG_member
	.dwattr $C$DW$896, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$896, DW_AT_name("MDH")
	.dwattr $C$DW$896, DW_AT_TI_symbol_name("_MDH")
	.dwattr $C$DW$896, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$896, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$119

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

$C$DW$897	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$897, DW_AT_type(*$C$DW$T$10)

$C$DW$T$151	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$151, DW_AT_type(*$C$DW$897)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)


$C$DW$T$115	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$115, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$115, DW_AT_byte_size(0x05)
$C$DW$898	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$898, DW_AT_upper_bound(0x04)

	.dwendtag $C$DW$T$115


$C$DW$T$116	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$116, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$116, DW_AT_byte_size(0x02)
$C$DW$899	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$899, DW_AT_upper_bound(0x01)

	.dwendtag $C$DW$T$116


$C$DW$T$117	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$117, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$117, DW_AT_byte_size(0x06)
$C$DW$900	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$900, DW_AT_upper_bound(0x05)

	.dwendtag $C$DW$T$117

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$901	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$901, DW_AT_type(*$C$DW$T$12)

$C$DW$T$155	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$155, DW_AT_type(*$C$DW$901)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("Uint32")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)

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

$C$DW$902	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$902, DW_AT_name("AL")
	.dwattr $C$DW$902, DW_AT_location[DW_OP_reg0]

$C$DW$903	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$903, DW_AT_name("AH")
	.dwattr $C$DW$903, DW_AT_location[DW_OP_reg1]

$C$DW$904	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$904, DW_AT_name("PL")
	.dwattr $C$DW$904, DW_AT_location[DW_OP_reg2]

$C$DW$905	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$905, DW_AT_name("PH")
	.dwattr $C$DW$905, DW_AT_location[DW_OP_reg3]

$C$DW$906	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$906, DW_AT_name("SP")
	.dwattr $C$DW$906, DW_AT_location[DW_OP_reg20]

$C$DW$907	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$907, DW_AT_name("XT")
	.dwattr $C$DW$907, DW_AT_location[DW_OP_reg21]

$C$DW$908	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$908, DW_AT_name("T")
	.dwattr $C$DW$908, DW_AT_location[DW_OP_reg22]

$C$DW$909	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$909, DW_AT_name("ST0")
	.dwattr $C$DW$909, DW_AT_location[DW_OP_reg23]

$C$DW$910	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$910, DW_AT_name("ST1")
	.dwattr $C$DW$910, DW_AT_location[DW_OP_reg24]

$C$DW$911	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$911, DW_AT_name("PC")
	.dwattr $C$DW$911, DW_AT_location[DW_OP_reg25]

$C$DW$912	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$912, DW_AT_name("RPC")
	.dwattr $C$DW$912, DW_AT_location[DW_OP_reg26]

$C$DW$913	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$913, DW_AT_name("FP")
	.dwattr $C$DW$913, DW_AT_location[DW_OP_reg28]

$C$DW$914	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$914, DW_AT_name("DP")
	.dwattr $C$DW$914, DW_AT_location[DW_OP_reg29]

$C$DW$915	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$915, DW_AT_name("SXM")
	.dwattr $C$DW$915, DW_AT_location[DW_OP_reg30]

$C$DW$916	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$916, DW_AT_name("PM")
	.dwattr $C$DW$916, DW_AT_location[DW_OP_reg31]

$C$DW$917	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$917, DW_AT_name("OVM")
	.dwattr $C$DW$917, DW_AT_location[DW_OP_regx 0x20]

$C$DW$918	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$918, DW_AT_name("PAGE0")
	.dwattr $C$DW$918, DW_AT_location[DW_OP_regx 0x21]

$C$DW$919	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$919, DW_AT_name("AMODE")
	.dwattr $C$DW$919, DW_AT_location[DW_OP_regx 0x22]

$C$DW$920	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$920, DW_AT_name("INTM")
	.dwattr $C$DW$920, DW_AT_location[DW_OP_regx 0x23]

$C$DW$921	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$921, DW_AT_name("IFR")
	.dwattr $C$DW$921, DW_AT_location[DW_OP_regx 0x24]

$C$DW$922	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$922, DW_AT_name("IER")
	.dwattr $C$DW$922, DW_AT_location[DW_OP_regx 0x25]

$C$DW$923	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$923, DW_AT_name("V")
	.dwattr $C$DW$923, DW_AT_location[DW_OP_regx 0x26]

$C$DW$924	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$924, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$924, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$925	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$925, DW_AT_name("VOL")
	.dwattr $C$DW$925, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$926	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$926, DW_AT_name("AR0")
	.dwattr $C$DW$926, DW_AT_location[DW_OP_reg4]

$C$DW$927	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$927, DW_AT_name("XAR0")
	.dwattr $C$DW$927, DW_AT_location[DW_OP_reg5]

$C$DW$928	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$928, DW_AT_name("AR1")
	.dwattr $C$DW$928, DW_AT_location[DW_OP_reg6]

$C$DW$929	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$929, DW_AT_name("XAR1")
	.dwattr $C$DW$929, DW_AT_location[DW_OP_reg7]

$C$DW$930	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$930, DW_AT_name("AR2")
	.dwattr $C$DW$930, DW_AT_location[DW_OP_reg8]

$C$DW$931	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$931, DW_AT_name("XAR2")
	.dwattr $C$DW$931, DW_AT_location[DW_OP_reg9]

$C$DW$932	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$932, DW_AT_name("AR3")
	.dwattr $C$DW$932, DW_AT_location[DW_OP_reg10]

$C$DW$933	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$933, DW_AT_name("XAR3")
	.dwattr $C$DW$933, DW_AT_location[DW_OP_reg11]

$C$DW$934	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$934, DW_AT_name("AR4")
	.dwattr $C$DW$934, DW_AT_location[DW_OP_reg12]

$C$DW$935	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$935, DW_AT_name("XAR4")
	.dwattr $C$DW$935, DW_AT_location[DW_OP_reg13]

$C$DW$936	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$936, DW_AT_name("AR5")
	.dwattr $C$DW$936, DW_AT_location[DW_OP_reg14]

$C$DW$937	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$937, DW_AT_name("XAR5")
	.dwattr $C$DW$937, DW_AT_location[DW_OP_reg15]

$C$DW$938	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$938, DW_AT_name("AR6")
	.dwattr $C$DW$938, DW_AT_location[DW_OP_reg16]

$C$DW$939	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$939, DW_AT_name("XAR6")
	.dwattr $C$DW$939, DW_AT_location[DW_OP_reg17]

$C$DW$940	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$940, DW_AT_name("AR7")
	.dwattr $C$DW$940, DW_AT_location[DW_OP_reg18]

$C$DW$941	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$941, DW_AT_name("XAR7")
	.dwattr $C$DW$941, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


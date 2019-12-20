;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.7.LTS *
;* Date/Time created: Fri Dec 20 12:47:13 2019                 *
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
	.dwattr $C$DW$5, DW_AT_name("spi_recv")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_spi_recv")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwendtag $C$DW$5


$C$DW$6	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$6, DW_AT_name("sprintf")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_sprintf")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$89)

$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$91)

$C$DW$9	.dwtag  DW_TAG_unspecified_parameters

	.dwendtag $C$DW$6

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\{8B9EAAF9-1149-42BD-BC81-7053F3F997A1} C:\\Users\\ebenton\\AppData\\Local\\Temp\\{D8C8495B-786C-485A-92EE-A4C8DF928618} 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\{5134A629-FC83-470F-939A-1F984FB4D64E} 
	.sect	".text"
	.clink
	.global	_SPICAN_T0_RTS

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("SPICAN_T0_RTS")
	.dwattr $C$DW$11, DW_AT_low_pc(_SPICAN_T0_RTS)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_SPICAN_T0_RTS")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xfb)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 252,column 1,is_stmt,address _SPICAN_T0_RTS,isa 0

	.dwfde $C$DW$CIE, _SPICAN_T0_RTS
;----------------------------------------------------------------------
; 251 | void SPICAN_T0_RTS (void)                                              
; 253 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 254 | spi_xmit(SPICAN_RTS + 0x1);                                            
;----------------------------------------------------------------------
        MOVB      AL,#129               ; [CPU_] |254| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$12, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |254| 
        ; call occurs [#_spi_xmit] ; [] |254| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 255,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |255| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x100)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.global	_SPICANWrite

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("SPICANWrite")
	.dwattr $C$DW$14, DW_AT_low_pc(_SPICANWrite)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_SPICANWrite")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x73)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 116,column 1,is_stmt,address _SPICANWrite,isa 0

	.dwfde $C$DW$CIE, _SPICANWrite
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("ADDR")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg0]

$C$DW$16	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$16, DW_AT_name("Input")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 115 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
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
$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("ADDR")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _Input
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("Input")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AH                ; [CPU_] |116| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 116,column 1,is_stmt,isa 0
        MOVZ      AR2,AL                ; [CPU_] |116| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 119 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |119| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |120| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$21, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x7a)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Data

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("SPICAN_SetT0Data")
	.dwattr $C$DW$23, DW_AT_low_pc(_SPICAN_SetT0Data)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0xed)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 238,column 1,is_stmt,address _SPICAN_SetT0Data,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Data
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("numBytes")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]

$C$DW$25	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$25, DW_AT_name("buf")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 237 | void SPICAN_SetT0Data(Uint16 numBytes, Uint16 *buf)                    
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
$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("Input")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$26, DW_AT_location[DW_OP_breg20 -1]

;* AR1   assigned to _k
$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("k")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _numBytes
$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("numBytes")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg8]

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
; 239 | Uint16 k;                                                              
; 241 | // Send how much data content there is                                 
; 242 | SPICANWrite(SPICAN_TXB0DLC, numBytes);                                 
; 244 | // Fill in the data buffer                                             
;----------------------------------------------------------------------
        MOVZ      AR2,AL                ; [CPU_] |238| 
        MOVL      XAR3,XAR4             ; [CPU_] |238| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#53                ; [CPU_] |119| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
        MOV       AL,AR2                ; [CPU_] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
        MOV       AL,AR2                ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 245,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | for(k = 0; k < numBytes; k++)                                          
;----------------------------------------------------------------------
        B         $C$L2,EQ              ; [CPU_] |245| 
        ; branchcc occurs ; [] |245| 
        SUBB      XAR2,#1               ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 245,column 6,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_] |245| 
$C$L1:    
	.dwpsn	file "../Source/SPICAN.c",line 247,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 247 | SPICANWrite(SPICAN_TXB0D0 + k, buf[k]);                                
;----------------------------------------------------------------------
        MOV       AL,*XAR3++            ; [CPU_] |247| 
        MOV       *-SP[1],AL            ; [CPU_] |247| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |119| 
        ADD       AL,AR1                ; [CPU_] |119| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
        MOV       AL,*-SP[1]            ; [CPU_] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
	.dwpsn	file "../Source/SPICAN.c",line 245,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |245| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 245,column 13,is_stmt,isa 0
        BANZ      $C$L1,AR2--           ; [CPU_] |245| 
        ; branchcc occurs ; [] |245| 
$C$L2:    
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
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0xf9)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Addr

$C$DW$36	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$36, DW_AT_name("SPICAN_SetT0Addr")
	.dwattr $C$DW$36, DW_AT_low_pc(_SPICAN_SetT0Addr)
	.dwattr $C$DW$36, DW_AT_high_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$36, DW_AT_external
	.dwattr $C$DW$36, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0xd9)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 218,column 1,is_stmt,address _SPICAN_SetT0Addr,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Addr
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("canAddress")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 217 | void SPICAN_SetT0Addr(Uint16 canAddress)                               
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
$C$DW$38	.dwtag  DW_TAG_variable
	.dwattr $C$DW$38, DW_AT_name("canAddress")
	.dwattr $C$DW$38, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$38, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _addrHi
$C$DW$39	.dwtag  DW_TAG_variable
	.dwattr $C$DW$39, DW_AT_name("addrHi")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_addrHi")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$39, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _addrLo
$C$DW$40	.dwtag  DW_TAG_variable
	.dwattr $C$DW$40, DW_AT_name("addrLo")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_addrLo")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 219 | Uint16 addrHi, addrLo;                                                 
; 221 | // First grab the important bits                                       
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |218| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 222,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 222 | addrHi = canAddress & 0x7F8;                                           
;----------------------------------------------------------------------
        AND       AH,AR1,#0x07f8        ; [CPU_] |222| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 223,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | addrLo = canAddress & 0x7;                                             
;----------------------------------------------------------------------
        AND       AL,AR1,#0x0007        ; [CPU_] |223| 
	.dwpsn	file "../Source/SPICAN.c",line 222,column 2,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |222| 
	.dwpsn	file "../Source/SPICAN.c",line 223,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | // Now shift them to the right places                                  
; 226 | addrHi = addrHi >> 3;                                                  
; 227 | addrLo = addrLo << 5;                                                  
; 229 | // Set up the ID (X - unused, H - Hi, L - Lo)                          
; 230 | // Want to first send 0bHHHHHHHH                                       
; 231 | SPICANWrite(SPICAN_TXB0SIDH, addrHi); // H (SID10 - SID3)              
; 232 | // Then want to send 0bLLL00000                                        
; 233 | SPICANWrite(SPICAN_TXB0SIDL, addrLo); // L (SID2 - SID0)               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |223| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_] |119| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
        MOV       AL,AR2                ; [CPU_] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        LSR       AL,3                  ; [CPU_] |120| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$44, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_] |119| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
        MOV       AL,AR1                ; [CPU_] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        LSL       AL,5                  ; [CPU_] |120| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$36, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$36, DW_AT_TI_end_line(0xea)
	.dwattr $C$DW$36, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$36

	.sect	".text"
	.clink
	.global	_SPICANRead

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("SPICANRead")
	.dwattr $C$DW$48, DW_AT_low_pc(_SPICANRead)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_SPICANRead")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 102,column 1,is_stmt,address _SPICANRead,isa 0

	.dwfde $C$DW$CIE, _SPICANRead
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("Input")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 101 | Uint16 SPICANRead (Uint16 Input)                                       
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
$C$DW$50	.dwtag  DW_TAG_variable
	.dwattr $C$DW$50, DW_AT_name("Input")
	.dwattr $C$DW$50, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$50, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$50, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 103 | Uint16  RetVal;                                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |102| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |106| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_spi_recv")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
; 109 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x6e)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text"
	.clink
	.global	_SPICANWaitForTXBuf

$C$DW$55	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$55, DW_AT_name("SPICANWaitForTXBuf")
	.dwattr $C$DW$55, DW_AT_low_pc(_SPICANWaitForTXBuf)
	.dwattr $C$DW$55, DW_AT_high_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$55, DW_AT_external
	.dwattr $C$DW$55, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x134)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 309,column 1,is_stmt,address _SPICANWaitForTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANWaitForTXBuf
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("buf_num")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 308 | void SPICANWaitForTXBuf(Uint16 buf_num)                                
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
$C$DW$57	.dwtag  DW_TAG_variable
	.dwattr $C$DW$57, DW_AT_name("res")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _buf_num
$C$DW$58	.dwtag  DW_TAG_variable
	.dwattr $C$DW$58, DW_AT_name("buf_num")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to $O$K7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 310 | Uint16 res;                                                            
; 311 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |309| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #8         ; [CPU_] |106| 
        ADDB      AL,#48                ; [CPU_] |106| 
        MOVZ      AR1,AL                ; [CPU_] |106| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_spi_recv")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 312,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 312 | while((res & 0x08) == 0x08)                                            
;----------------------------------------------------------------------
        B         $C$L4,UNC             ; [CPU_] |312| 
        ; branch occurs ; [] |312| 
$C$L3:    
	.dwpsn	file "../Source/SPICAN.c",line 314,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 314 | delay_us(1);                                                           
; 315 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |314| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_delay_us")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |314| 
        ; call occurs [#_delay_us] ; [] |314| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |106| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_spi_recv")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
$C$L4:    
	.dwpsn	file "../Source/SPICAN.c",line 312,column 8,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_] |312| 
        B         $C$L3,TC              ; [CPU_] |312| 
        ; branchcc occurs ; [] |312| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x13d)
	.dwattr $C$DW$55, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$55

	.sect	".text"
	.clink
	.global	_SPICANVerifyTXBuf

$C$DW$67	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$67, DW_AT_name("SPICANVerifyTXBuf")
	.dwattr $C$DW$67, DW_AT_low_pc(_SPICANVerifyTXBuf)
	.dwattr $C$DW$67, DW_AT_high_pc(0x00)
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_SPICANVerifyTXBuf")
	.dwattr $C$DW$67, DW_AT_external
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$67, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x126)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 295,column 1,is_stmt,address _SPICANVerifyTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANVerifyTXBuf
$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("buf")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg0]

$C$DW$69	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$69, DW_AT_name("data_check")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 294 | int SPICANVerifyTXBuf(Uint16 buf, Uint16 data_check[])                 
; 296 | Uint16 data[8];                                                        
; 297 | int k;                                                                 
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
$C$DW$70	.dwtag  DW_TAG_variable
	.dwattr $C$DW$70, DW_AT_name("data_check")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg12]

;* AR1   assigned to _k
$C$DW$71	.dwtag  DW_TAG_variable
	.dwattr $C$DW$71, DW_AT_name("k")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _RetVal
$C$DW$72	.dwtag  DW_TAG_variable
	.dwattr $C$DW$72, DW_AT_name("RetVal")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]

;* AR2   assigned to $O$U11
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 298,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 298 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        MOVB      XAR1,#0               ; [CPU_] |298| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] 
$C$L5:    
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |106| 
        ADD       AL,AR1                ; [CPU_] |106| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_spi_recv")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 300,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | if(data_check[k] != SPICANRead(SPICAN_TXB0D0 + k))                     
;----------------------------------------------------------------------
        MOVZ      AR6,*+XAR2[0]         ; [CPU_] |300| 
        MOVU      ACC,AL                ; [CPU_] |300| 
        CMPL      ACC,XAR6              ; [CPU_] |300| 
        B         $C$L6,EQ              ; [CPU_] |300| 
        ; branchcc occurs ; [] |300| 
	.dwpsn	file "../Source/SPICAN.c",line 302,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 302 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |302| 
        B         $C$L7,UNC             ; [CPU_] |302| 
        ; branch occurs ; [] |302| 
$C$L6:    
	.dwpsn	file "../Source/SPICAN.c",line 298,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |298| 
        ADDB      XAR2,#1               ; [CPU_] |298| 
        MOV       AL,AR1                ; [CPU_] |298| 
        CMPB      AL,#8                 ; [CPU_] |298| 
        B         $C$L5,LT              ; [CPU_] |298| 
        ; branchcc occurs ; [] |298| 
	.dwpsn	file "../Source/SPICAN.c",line 305,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 305 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |305| 
$C$L7:    
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$67, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x132)
	.dwattr $C$DW$67, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$67

	.sect	".text"
	.clink
	.global	_SPICANSetNorm

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("SPICANSetNorm")
	.dwattr $C$DW$77, DW_AT_low_pc(_SPICANSetNorm)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_SPICANSetNorm")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x89)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 138,column 1,is_stmt,address _SPICANSetNorm,isa 0

	.dwfde $C$DW$CIE, _SPICANSetNorm
;----------------------------------------------------------------------
; 137 | void SPICANSetNorm (void)                                              
; 139 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 140,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |140| 
	.dwpsn	file "../Source/SPICAN.c",line 139,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |139| 
	.dwpsn	file "../Source/SPICAN.c",line 140,column 2,is_stmt,isa 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |140| 
        ; call occurs [#_spi_xmit] ; [] |140| 
	.dwpsn	file "../Source/SPICAN.c",line 141,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |141| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |141| 
        ; call occurs [#_spi_xmit] ; [] |141| 
	.dwpsn	file "../Source/SPICAN.c",line 142,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |142| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |142| 
        ; call occurs [#_spi_xmit] ; [] |142| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 143,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |143| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x90)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text"
	.clink
	.global	_SPICANReadBuf_Array

$C$DW$82	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$82, DW_AT_name("SPICANReadBuf_Array")
	.dwattr $C$DW$82, DW_AT_low_pc(_SPICANReadBuf_Array)
	.dwattr $C$DW$82, DW_AT_high_pc(0x00)
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$82, DW_AT_external
	.dwattr $C$DW$82, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0xc1)
	.dwattr $C$DW$82, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 194,column 1,is_stmt,address _SPICANReadBuf_Array,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf_Array
$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("data")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg12]

$C$DW$84	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$84, DW_AT_name("whichBuf")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 193 | void SPICANReadBuf_Array (Uint16 data[], Uint16 whichBuf)              
; 195 | int k;                                                                 
; 196 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$85	.dwtag  DW_TAG_variable
	.dwattr $C$DW$85, DW_AT_name("data")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$85, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _whichBuf
$C$DW$86	.dwtag  DW_TAG_variable
	.dwattr $C$DW$86, DW_AT_name("whichBuf")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to $O$U10
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 197,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | spi_xmit(SPICAN_RXBUF0 + 4 * whichBuf);                                
;----------------------------------------------------------------------
        MOV       ACC,AL << #2          ; [CPU_] |197| 
	.dwpsn	file "../Source/SPICAN.c",line 194,column 1,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_] |194| 
	.dwpsn	file "../Source/SPICAN.c",line 196,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |196| 
	.dwpsn	file "../Source/SPICAN.c",line 197,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        ADD       AL,#146               ; [CPU_] |197| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |197| 
        ; call occurs [#_spi_xmit] ; [] |197| 
        MOVB      XAR2,#7               ; [CPU_] 
$C$L8:    
	.dwpsn	file "../Source/SPICAN.c",line 200,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | data[k] = spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_spi_recv")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |200| 
        ; call occurs [#_spi_recv] ; [] |200| 
        MOV       *XAR1++,AL            ; [CPU_] |200| 
	.dwpsn	file "../Source/SPICAN.c",line 198,column 13,is_stmt,isa 0
        BANZ      $C$L8,AR2--           ; [CPU_] |198| 
        ; branchcc occurs ; [] |198| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 202,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 202 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |202| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$89	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$89, DW_AT_low_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$82, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$82, DW_AT_TI_end_line(0xcb)
	.dwattr $C$DW$82, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$82

	.sect	".text"
	.clink
	.global	_SPICANReadSetT0Message

$C$DW$90	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$90, DW_AT_name("SPICANReadSetT0Message")
	.dwattr $C$DW$90, DW_AT_low_pc(_SPICANReadSetT0Message)
	.dwattr $C$DW$90, DW_AT_high_pc(0x00)
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$90, DW_AT_external
	.dwattr $C$DW$90, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0xce)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 207,column 1,is_stmt,address _SPICANReadSetT0Message,isa 0

	.dwfde $C$DW$CIE, _SPICANReadSetT0Message
$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("canAddress")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg0]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("numBytes")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg1]

$C$DW$93	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$93, DW_AT_name("buf")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 206 | void SPICANReadSetT0Message(Uint16 canAddress, Uint16 numBytes, Uint16
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
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("numBytes")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _buf
$C$DW$95	.dwtag  DW_TAG_variable
	.dwattr $C$DW$95, DW_AT_name("buf")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$95, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 208 | // Set the new address                                                 
;----------------------------------------------------------------------
        MOVZ      AR1,AH                ; [CPU_] |207| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] |207| 
	.dwpsn	file "../Source/SPICAN.c",line 209,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 209 | SPICAN_SetT0Addr(canAddress);                                          
; 211 | // Set the data                                                        
;----------------------------------------------------------------------
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Addr    ; [CPU_] |209| 
        ; call occurs [#_SPICAN_SetT0Addr] ; [] |209| 
	.dwpsn	file "../Source/SPICAN.c",line 212,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 212 | SPICAN_SetT0Data(numBytes, buf);                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |212| 
        MOVL      XAR4,XAR2             ; [CPU_] |212| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Data    ; [CPU_] |212| 
        ; call occurs [#_SPICAN_SetT0Data] ; [] |212| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$90, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$90, DW_AT_TI_end_line(0xd5)
	.dwattr $C$DW$90, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$90

	.sect	".text"
	.clink
	.global	_SPICANBitModify

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("SPICANBitModify")
	.dwattr $C$DW$99, DW_AT_low_pc(_SPICANBitModify)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_SPICANBitModify")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x13f)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../Source/SPICAN.c",line 320,column 1,is_stmt,address _SPICANBitModify,isa 0

	.dwfde $C$DW$CIE, _SPICANBitModify
$C$DW$100	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$100, DW_AT_name("address")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_address")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg0]

$C$DW$101	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$101, DW_AT_name("mask")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg1]

$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("data_byte")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_data_byte")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 319 | void SPICANBitModify(Uint16 address, Uint16 mask, Uint16 data_byte)    
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
$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("address")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_address")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _mask
$C$DW$104	.dwtag  DW_TAG_variable
	.dwattr $C$DW$104, DW_AT_name("mask")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _data_byte
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("data_byte")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_data_byte")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$101)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVZ      AR1,AR4               ; [CPU_] |320| 
	.dwpsn	file "../Source/SPICAN.c",line 321,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 321 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |321| 
	.dwpsn	file "../Source/SPICAN.c",line 320,column 1,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |320| 
        MOVL      *SP++,XAR3            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOVZ      AR3,AL                ; [CPU_] |320| 
	.dwpsn	file "../Source/SPICAN.c",line 322,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 322 | spi_xmit(0x05);                                         //Bit modify co
;     | mmand                                                                  
;----------------------------------------------------------------------
        MOVB      AL,#5                 ; [CPU_] |322| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |322| 
        ; call occurs [#_spi_xmit] ; [] |322| 
	.dwpsn	file "../Source/SPICAN.c",line 323,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 323 | spi_xmit(address);
;     |          //Write location                                              
;----------------------------------------------------------------------
        MOV       AL,AR3                ; [CPU_] |323| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |323| 
        ; call occurs [#_spi_xmit] ; [] |323| 
	.dwpsn	file "../Source/SPICAN.c",line 324,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 324 | spi_xmit(mask);                                                 //Write
;     |  Info                                                                  
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |324| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |324| 
        ; call occurs [#_spi_xmit] ; [] |324| 
	.dwpsn	file "../Source/SPICAN.c",line 325,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 325 | spi_xmit(data_byte);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |325| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |325| 
        ; call occurs [#_spi_xmit] ; [] |325| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 326,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 326 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |326| 
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
	.dwattr $C$DW$99, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x147)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.clink
	.global	_SPICANRoutine

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("SPICANRoutine")
	.dwattr $C$DW$111, DW_AT_low_pc(_SPICANRoutine)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_SPICANRoutine")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x1b0)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../Source/SPICAN.c",line 433,column 1,is_stmt,address _SPICANRoutine,isa 0

	.dwfde $C$DW$CIE, _SPICANRoutine
;----------------------------------------------------------------------
; 432 | void SPICANRoutine(void)                                               
; 434 | volatile Uint16 interrupts;                                            
; 435 | // Check interrupts for what all happened                              
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRoutine                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  2 SOE     *
;***************************************************************

_SPICANRoutine:
;* AL    assigned to _RetVal
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("RetVal")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("RetVal")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("RetVal")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _bits_to_flip
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("bits_to_flip")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_bits_to_flip")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg6]

$C$DW$116	.dwtag  DW_TAG_variable
	.dwattr $C$DW$116, DW_AT_name("interrupts")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_interrupts")
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$116, DW_AT_location[DW_OP_breg20 -1]

$C$DW$117	.dwtag  DW_TAG_variable
	.dwattr $C$DW$117, DW_AT_name("arr")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_arr")
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$117, DW_AT_location[DW_OP_breg20 -9]

$C$DW$118	.dwtag  DW_TAG_variable
	.dwattr $C$DW$118, DW_AT_name("res")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$118, DW_AT_location[DW_OP_breg20 -10]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -14
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |106| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_spi_recv")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 436,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 436 | interrupts = SPICANRead(0x2B);                                         
;----------------------------------------------------------------------
        MOV       *-SP[1],AL            ; [CPU_] |436| 
	.dwpsn	file "../Source/SPICAN.c",line 438,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 438 | if(interrupts == 0xFF)                                                 
; 439 |         return;                                                        
; 441 | // TX Interrupts                                                       
; 443 | // RX Interrupts                                                       
;----------------------------------------------------------------------
        CMPB      AL,#255               ; [CPU_] |438| 
        B         $C$L13,EQ             ; [CPU_] |438| 
        ; branchcc occurs ; [] |438| 
	.dwpsn	file "../Source/SPICAN.c",line 444,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 444 | if((interrupts & 0x03) > 0x00)                                         
; 447 |         Uint16 arr[8];                                                 
; 448 |         char bits_to_flip = 0x00;                                      
; 450 |         // RX1 Interrupt                                               
;----------------------------------------------------------------------
        MOV       AL,*-SP[1]            ; [CPU_] |444| 
        ANDB      AL,#0x03              ; [CPU_] |444| 
        B         $C$L13,EQ             ; [CPU_] |444| 
        ; branchcc occurs ; [] |444| 
	.dwpsn	file "../Source/SPICAN.c",line 451,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 451 | if((interrupts & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      *-SP[1],#1            ; [CPU_] |451| 
        B         $C$L9,NTC             ; [CPU_] |451| 
        ; branchcc occurs ; [] |451| 
	.dwpsn	file "../Source/SPICAN.c",line 453,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 453 | SPICANReadBuf_Array(arr, 1);                                           
; 454 | // // For now, send back dummy data                                    
; 455 | // // Wait for the TX Buffer to be ready                               
; 456 | // SPICANWaitForTXBuf(0);                                              
; 457 | // // Set the message on the buffer                                    
; 458 | // SPICANReadSetT0Message(0x32, 8, arr);                               
; 459 | // SPICANWaitForTXBuf(0);                                              
; 460 | // // Signal that the message is ready to send                         
; 461 | // SPICAN_T0_RTS();                                                    
; 462 | // bits_to_flip |= 0x02;                                               
; 464 | // RX0 Interrupt                                                       
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |453| 
        MOVB      AL,#1                 ; [CPU_] |453| 
        SUBB      XAR4,#9               ; [CPU_U] |453| 
        MOVZ      AR4,AR4               ; [CPU_] |453| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |453| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |453| 
$C$L9:    
	.dwpsn	file "../Source/SPICAN.c",line 465,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 465 | if((interrupts & 0x01) == 0x01)                                        
; 467 |         if(bits_to_flip > 0x00)                                        
; 468 |                 delay_us(5);                                           
;----------------------------------------------------------------------
        TBIT      *-SP[1],#0            ; [CPU_] |465| 
	.dwpsn	file "../Source/SPICAN.c",line 448,column 21,is_stmt,isa 0
        MOVB      XAR1,#0,NTC           ; [CPU_] |448| 
        B         $C$L10,NTC            ; [CPU_] 
        ; branchcc occurs ; [] 
	.dwpsn	file "../Source/SPICAN.c",line 470,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 470 | SPICANReadBuf_Array(arr, 0);                                           
; 471 | // For now, send back dummy data                                       
; 472 | // Wait for the TX Buffer to be ready                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |470| 
        MOVB      AL,#0                 ; [CPU_] |470| 
        SUBB      XAR4,#9               ; [CPU_U] |470| 
        MOVZ      AR4,AR4               ; [CPU_] |470| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |470| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |470| 
	.dwpsn	file "../Source/SPICAN.c",line 473,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 473 | SPICANWaitForTXBuf(0);                                                 
; 474 | // Set the message on the buffer                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |473| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |473| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |473| 
	.dwpsn	file "../Source/SPICAN.c",line 475,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 475 | SPICANReadSetT0Message(0x43, 8, arr);                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |475| 
        MOVB      AL,#67                ; [CPU_] |475| 
        MOVB      AH,#8                 ; [CPU_] |475| 
        SUBB      XAR4,#9               ; [CPU_U] |475| 
        MOVZ      AR4,AR4               ; [CPU_] |475| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #_SPICANReadSetT0Message ; [CPU_] |475| 
        ; call occurs [#_SPICANReadSetT0Message] ; [] |475| 
	.dwpsn	file "../Source/SPICAN.c",line 476,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 476 | SPICANWaitForTXBuf(0);                                                 
; 477 | // Signal that the message is ready to send                            
; 478 | SPICAN_T0_RTS();                                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |476| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |476| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |476| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
        MOVB      AL,#129               ; [CPU_] |254| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |254| 
        ; call occurs [#_spi_xmit] ; [] |254| 
	.dwpsn	file "../Source/SPICAN.c",line 479,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 479 | bits_to_flip |= 0x01;                                                  
; 481 | volatile Uint16 res;                                                   
;----------------------------------------------------------------------
        MOVB      XAR1,#1               ; [CPU_] |479| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 255,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |255| 
$C$L10:    
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |106| 
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_spi_recv")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 482,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 482 | res = SPICANRead(0x2B);                                                
; 483 | // Set up filters for RX buffs                                         
;----------------------------------------------------------------------
        MOV       *-SP[10],AL           ; [CPU_] |482| 
	.dwpsn	file "../Source/SPICAN.c",line 484,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 484 | while((res & 0x03) > 0x00)                                             
;----------------------------------------------------------------------
        B         $C$L12,UNC            ; [CPU_] |484| 
        ; branch occurs ; [] |484| 
$C$L11:    
	.dwpsn	file "../Source/SPICAN.c",line 486,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 486 | SPICANBitModify(0x2B, bits_to_flip, 0x00);                             
;----------------------------------------------------------------------
        MOV       AH,AR1                ; [CPU_] |486| 
        MOVB      AL,#43                ; [CPU_] |486| 
        MOVB      XAR4,#0               ; [CPU_] |486| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$131, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |486| 
        ; call occurs [#_SPICANBitModify] ; [] |486| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |106| 
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_spi_recv")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 487,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 487 | res = SPICANRead(0x2B);                                                
; 491 | // Clear the interrupts                                                
; 492 | // SPICANWrite(0x0E, 0x00);                                            
; 493 | // SPICANWrite(0x2C, 0x00);                                            
; 494 | //      SPICANCheckInts(447);                                          
; 495 | return;                                                                
;----------------------------------------------------------------------
        MOV       *-SP[10],AL           ; [CPU_] |487| 
$C$L12:    
	.dwpsn	file "../Source/SPICAN.c",line 484,column 9,is_stmt,isa 0
        MOV       AL,*-SP[10]           ; [CPU_] |484| 
        ANDB      AL,#0x03              ; [CPU_] |484| 
        B         $C$L11,NEQ            ; [CPU_] |484| 
        ; branchcc occurs ; [] |484| 
$C$L13:    
        SUBB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x1f0)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.global	_SPICANReset

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("SPICANReset")
	.dwattr $C$DW$136, DW_AT_low_pc(_SPICANReset)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_SPICANReset")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 91,column 1,is_stmt,address _SPICANReset,isa 0

	.dwfde $C$DW$CIE, _SPICANReset
;----------------------------------------------------------------------
;  90 | void SPICANReset (void)                                                
;  92 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |93| 
	.dwpsn	file "../Source/SPICAN.c",line 92,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |92| 
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |93| 
        ; call occurs [#_spi_xmit] ; [] |93| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  95 | return;                                                                
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |94| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x60)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.clink
	.global	_SPICANReadyConfig

$C$DW$139	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$139, DW_AT_name("SPICANReadyConfig")
	.dwattr $C$DW$139, DW_AT_low_pc(_SPICANReadyConfig)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_SPICANReadyConfig")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 39,column 1,is_stmt,address _SPICANReadyConfig,isa 0

	.dwfde $C$DW$CIE, _SPICANReadyConfig
;----------------------------------------------------------------------
;  38 | void SPICANReadyConfig(void)                                           
;  40 | Uint16 res;                                                            
;  41 | res = SPICANRead(SPICAN_CANSTAT);                                      
;  42 | while((res & 0xE0) != 0x80)                                            
;  43 |         res = SPICANRead(SPICAN_CANSTAT);                              
;  44 | return;                                                                
;  47 | void SPICANMasksFilts(void)                                            
;  49 | volatile Uint16 res;                                                   
;  50 | res = SPICANRead(0x00);                                                
;  51 | // Set up filters for RX buffs                                         
;  52 | while(res != 0x80)                                                     
;  54 |         SPICANWrite(0x00, 0x80);                                       
;  55 |         res = SPICANRead(0x00);                                        
;  58 | res = SPICANRead(0x01);                                                
;  59 | while(res != 0x00)                                                     
;  61 |         SPICANWrite(0x01, 0x00);                                       
;  62 |         res = SPICANRead(0x01);                                        
;  65 | // Set up masks for RX buffs                                           
;  66 | res = SPICANRead(0x20);                                                
;  67 | while(res != 0xF9)                                                     
;  69 |         SPICANWrite(0x20, 0xF9);                                       
;  70 |         res = SPICANRead(0x20);                                        
;  73 | res = SPICANRead(0x21);                                                
;  74 | while(res != 0x00)                                                     
;  76 |         SPICANWrite(0x21, 0x00);                                       
;  77 |         res = SPICANRead(0x21);                                        
;  80 | res = SPICANRead(0x00);                                                
;  81 | res = SPICANRead(0x01);                                                
;  82 | res = SPICANRead(0x20);                                                
;  83 | res = SPICANRead(0x21);                                                
;  84 | // MASK: 111 1100 1000                                                 
;  85 | // FILT: 100 0000 0000                                                 
;  86 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  87 | return;                                                                
;  90 | void SPICANReset (void)                                                
;  92 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  93 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;  94 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  95 | return;                                                                
;  98 | // Responsible for reading the status of a                             
;  99 | // register address on the SPICAN Control Register                     
; 100 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 101 | Uint16 SPICANRead (Uint16 Input)                                       
; 103 | Uint16  RetVal;                                                        
; 104 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |106| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_spi_recv")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 42,column 8,is_stmt,isa 0
        ANDB      AL,#224               ; [CPU_] |42| 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 42,column 8,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |42| 
        B         $C$L15,EQ             ; [CPU_] |42| 
        ; branchcc occurs ; [] |42| 
$C$L14:    
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_] |106| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$144, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$145	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$145, DW_AT_low_pc(0x00)
	.dwattr $C$DW$145, DW_AT_name("_spi_recv")
	.dwattr $C$DW$145, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 109,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | return(RetVal);                                                        
;----------------------------------------------------------------------
        ANDB      AL,#224               ; [CPU_] |109| 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 109,column 2,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |109| 
        B         $C$L14,NEQ            ; [CPU_] |109| 
        ; branchcc occurs ; [] |109| 
$C$L15:    
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$139, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text"
	.clink
	.global	_SPICANReadStat

$C$DW$147	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$147, DW_AT_name("SPICANReadStat")
	.dwattr $C$DW$147, DW_AT_low_pc(_SPICANReadStat)
	.dwattr $C$DW$147, DW_AT_high_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_SPICANReadStat")
	.dwattr $C$DW$147, DW_AT_external
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$147, DW_AT_TI_begin_line(0x7e)
	.dwattr $C$DW$147, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$147, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 127,column 1,is_stmt,address _SPICANReadStat,isa 0

	.dwfde $C$DW$CIE, _SPICANReadStat
;----------------------------------------------------------------------
; 126 | Uint16 SPICANReadStat (void)                                           
; 128 | Uint16  RetVal;                                                        
; 129 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 130,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |130| 
	.dwpsn	file "../Source/SPICAN.c",line 129,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |129| 
	.dwpsn	file "../Source/SPICAN.c",line 130,column 2,is_stmt,isa 0
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |130| 
        ; call occurs [#_spi_xmit] ; [] |130| 
	.dwpsn	file "../Source/SPICAN.c",line 131,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |131| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |131| 
        ; call occurs [#_spi_xmit] ; [] |131| 
	.dwpsn	file "../Source/SPICAN.c",line 132,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_spi_recv")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |132| 
        ; call occurs [#_spi_recv] ; [] |132| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 133 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
; 134 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |133| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$147, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$147, DW_AT_TI_end_line(0x87)
	.dwattr $C$DW$147, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$147

	.sect	".text"
	.clink
	.global	_SPICANReadInts

$C$DW$152	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$152, DW_AT_name("SPICANReadInts")
	.dwattr $C$DW$152, DW_AT_low_pc(_SPICANReadInts)
	.dwattr $C$DW$152, DW_AT_high_pc(0x00)
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_SPICANReadInts")
	.dwattr $C$DW$152, DW_AT_external
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$152, DW_AT_TI_begin_line(0x149)
	.dwattr $C$DW$152, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$152, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 330,column 1,is_stmt,address _SPICANReadInts,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInts
;----------------------------------------------------------------------
; 329 | Uint16 SPICANReadInts(void)                                            
; 331 | Uint16 count, res;                                                     
; 332 | count = 0;                                                             
; 333 | res = SPICANRead(0x2C);                                                
; 334 | while(res == 0xFF)                                                     
; 336 |         // delay_us(1);                                                
; 337 |         res = SPICANRead(0x2C);                                        
; 339 | return res;                                                            
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
$C$DW$153	.dwtag  DW_TAG_variable
	.dwattr $C$DW$153, DW_AT_name("res")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |106| 
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_spi_recv")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 109,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |109| 
        B         $C$L17,NEQ            ; [CPU_] |109| 
        ; branchcc occurs ; [] |109| 
$C$L16:    
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |106| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_spi_recv")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 109,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |109| 
        B         $C$L16,EQ             ; [CPU_] |109| 
        ; branchcc occurs ; [] |109| 
$C$L17:    
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$152, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$152, DW_AT_TI_end_line(0x154)
	.dwattr $C$DW$152, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$152

	.sect	".text"
	.clink
	.global	_SPICANReadInt

$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("SPICANReadInt")
	.dwattr $C$DW$161, DW_AT_low_pc(_SPICANReadInt)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_SPICANReadInt")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$161, DW_AT_TI_begin_line(0x9b)
	.dwattr $C$DW$161, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 156,column 1,is_stmt,address _SPICANReadInt,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInt
;----------------------------------------------------------------------
; 155 | Uint16 SPICANReadInt (void)                                            
; 157 | Uint16 RetVal;                                                         
; 158 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 159,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 159 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |159| 
	.dwpsn	file "../Source/SPICAN.c",line 158,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |158| 
	.dwpsn	file "../Source/SPICAN.c",line 159,column 2,is_stmt,isa 0
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |159| 
        ; call occurs [#_spi_xmit] ; [] |159| 
	.dwpsn	file "../Source/SPICAN.c",line 160,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 160 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |160| 
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |160| 
        ; call occurs [#_spi_xmit] ; [] |160| 
	.dwpsn	file "../Source/SPICAN.c",line 161,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_spi_recv")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |161| 
        ; call occurs [#_spi_recv] ; [] |161| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 162,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |162| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$161, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0xa3)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text"
	.clink
	.global	_SPICANRXStatus

$C$DW$166	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$166, DW_AT_name("SPICANRXStatus")
	.dwattr $C$DW$166, DW_AT_low_pc(_SPICANRXStatus)
	.dwattr $C$DW$166, DW_AT_high_pc(0x00)
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_SPICANRXStatus")
	.dwattr $C$DW$166, DW_AT_external
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$166, DW_AT_TI_begin_line(0xa5)
	.dwattr $C$DW$166, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$166, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 166,column 1,is_stmt,address _SPICANRXStatus,isa 0

	.dwfde $C$DW$CIE, _SPICANRXStatus
;----------------------------------------------------------------------
; 165 | Uint16 SPICANRXStatus (void)                                           
; 167 | Uint16  RetVal;                                                        
; 168 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$167	.dwtag  DW_TAG_variable
	.dwattr $C$DW$167, DW_AT_name("RetVal")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 169,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 169 | spi_xmit(SPICAN_RXSTAT);                                               
;----------------------------------------------------------------------
        MOVB      AL,#176               ; [CPU_] |169| 
	.dwpsn	file "../Source/SPICAN.c",line 168,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |168| 
	.dwpsn	file "../Source/SPICAN.c",line 169,column 2,is_stmt,isa 0
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |169| 
        ; call occurs [#_spi_xmit] ; [] |169| 
	.dwpsn	file "../Source/SPICAN.c",line 170,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 170 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_spi_recv")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |170| 
        ; call occurs [#_spi_recv] ; [] |170| 
        MOVZ      AR1,AL                ; [CPU_] |170| 
	.dwpsn	file "../Source/SPICAN.c",line 171,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 171 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_spi_recv")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |171| 
        ; call occurs [#_spi_recv] ; [] |171| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 172,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 172 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |172| 
	.dwpsn	file "../Source/SPICAN.c",line 173,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 173 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |173| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$166, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$166, DW_AT_TI_end_line(0xae)
	.dwattr $C$DW$166, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$166

	.sect	".text"
	.clink
	.global	_SPICANRXBufReady

$C$DW$172	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$172, DW_AT_name("SPICANRXBufReady")
	.dwattr $C$DW$172, DW_AT_low_pc(_SPICANRXBufReady)
	.dwattr $C$DW$172, DW_AT_high_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_SPICANRXBufReady")
	.dwattr $C$DW$172, DW_AT_external
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$172, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$172, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$172, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 259,column 1,is_stmt,address _SPICANRXBufReady,isa 0

	.dwfde $C$DW$CIE, _SPICANRXBufReady
;----------------------------------------------------------------------
; 258 | Uint16 SPICANRXBufReady(void)                                          
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
$C$DW$173	.dwtag  DW_TAG_variable
	.dwattr $C$DW$173, DW_AT_name("RetVal")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 169,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |169| 
	.dwpsn	file "../Source/SPICAN.c",line 168,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |168| 
	.dwpsn	file "../Source/SPICAN.c",line 169,column 2,is_stmt,isa 0
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |169| 
        ; call occurs [#_spi_xmit] ; [] |169| 
	.dwpsn	file "../Source/SPICAN.c",line 170,column 2,is_stmt,isa 0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_spi_recv")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |170| 
        ; call occurs [#_spi_recv] ; [] |170| 
        MOVZ      AR1,AL                ; [CPU_] |170| 
	.dwpsn	file "../Source/SPICAN.c",line 171,column 2,is_stmt,isa 0
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_spi_recv")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |171| 
        ; call occurs [#_spi_recv] ; [] |171| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 260,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 260 | return (SPICANRXStatus() & 0xC0) >> 6;                                 
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |260| 
	.dwpsn	file "../Source/SPICAN.c",line 172,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |172| 
	.dwpsn	file "../Source/SPICAN.c",line 260,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |260| 
        ANDB      AL,#0x03              ; [CPU_] |260| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$172, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$172, DW_AT_TI_end_line(0x105)
	.dwattr $C$DW$172, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$172

	.sect	".text"
	.clink
	.global	_SPICANReadBufs

$C$DW$178	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$178, DW_AT_name("SPICANReadBufs")
	.dwattr $C$DW$178, DW_AT_low_pc(_SPICANReadBufs)
	.dwattr $C$DW$178, DW_AT_high_pc(0x00)
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_SPICANReadBufs")
	.dwattr $C$DW$178, DW_AT_external
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$178, DW_AT_TI_begin_line(0x107)
	.dwattr $C$DW$178, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$178, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 264,column 1,is_stmt,address _SPICANReadBufs,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBufs
$C$DW$179	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$179, DW_AT_name("buf1")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$179, DW_AT_location[DW_OP_reg12]

$C$DW$180	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$180, DW_AT_name("buf2")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$180, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 263 | Uint16 SPICANReadBufs(Uint16 buf1[], Uint16 buf2[])                    
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
$C$DW$181	.dwtag  DW_TAG_variable
	.dwattr $C$DW$181, DW_AT_name("RetVal")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_location[DW_OP_reg6]

$C$DW$182	.dwtag  DW_TAG_variable
	.dwattr $C$DW$182, DW_AT_name("res")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_location[DW_OP_breg20 -1]

$C$DW$183	.dwtag  DW_TAG_variable
	.dwattr $C$DW$183, DW_AT_name("buf_status")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_buf_status")
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_location[DW_OP_breg20 -2]

;* AR3   assigned to _buf2
$C$DW$184	.dwtag  DW_TAG_variable
	.dwattr $C$DW$184, DW_AT_name("buf2")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$184, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _buf1
$C$DW$185	.dwtag  DW_TAG_variable
	.dwattr $C$DW$185, DW_AT_name("buf1")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$185, DW_AT_location[DW_OP_reg8]

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
	.dwpsn	file "../Source/SPICAN.c",line 169,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |169| 
	.dwpsn	file "../Source/SPICAN.c",line 264,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | Uint16 buf_status;                                                     
;----------------------------------------------------------------------
        MOVL      XAR3,XAR5             ; [CPU_] |264| 
        MOVL      XAR2,XAR4             ; [CPU_] |264| 
	.dwpsn	file "../Source/SPICAN.c",line 168,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |168| 
	.dwpsn	file "../Source/SPICAN.c",line 169,column 2,is_stmt,isa 0
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |169| 
        ; call occurs [#_spi_xmit] ; [] |169| 
	.dwpsn	file "../Source/SPICAN.c",line 170,column 2,is_stmt,isa 0
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_spi_recv")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |170| 
        ; call occurs [#_spi_recv] ; [] |170| 
        MOVZ      AR1,AL                ; [CPU_] |170| 
	.dwpsn	file "../Source/SPICAN.c",line 171,column 2,is_stmt,isa 0
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_spi_recv")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |171| 
        ; call occurs [#_spi_recv] ; [] |171| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 260,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |260| 
	.dwpsn	file "../Source/SPICAN.c",line 266,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | Uint16 res = 0x00;                                                     
; 268 | // Get the status of the RX Buffs                                      
; 269 | buf_status = SPICANRXBufReady();                                       
; 270 | // buf_status = SPICANRead(0x2C); // Get the interrupt status          
; 271 | // SPICANWrite(0x2C, (buf_status & 0xFC)); // Reset the RX interrupts  
; 272 | // buf_status = (buf_status & 0x03);                                   
; 274 | // Check if there's a message in the RX Buffers                        
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_] |266| 
	.dwpsn	file "../Source/SPICAN.c",line 172,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |172| 
	.dwpsn	file "../Source/SPICAN.c",line 260,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |260| 
        ANDB      AL,#0x03              ; [CPU_] |260| 
        MOV       *-SP[2],AL            ; [CPU_] |260| 
	.dwpsn	file "../Source/SPICAN.c",line 275,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 275 | if(buf_status != 0x00)                                                 
; 277 |         // First RX Buffer 0                                           
;----------------------------------------------------------------------
        B         $C$L19,EQ             ; [CPU_] |275| 
        ; branchcc occurs ; [] |275| 
	.dwpsn	file "../Source/SPICAN.c",line 278,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 278 | if((buf_status & 0x01) == 0x01)                                        
;----------------------------------------------------------------------
        TBIT      AR1,#6                ; [CPU_] |278| 
        B         $C$L18,NTC            ; [CPU_] |278| 
        ; branchcc occurs ; [] |278| 
	.dwpsn	file "../Source/SPICAN.c",line 280,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | SPICANReadBuf_Array(buf1, 0);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR2             ; [CPU_] |280| 
        MOVB      AL,#0                 ; [CPU_] |280| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |280| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |280| 
	.dwpsn	file "../Source/SPICAN.c",line 281,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 281 | res |= 0x01;                                                           
; 284 | // Second RX Buffer 1                                                  
;----------------------------------------------------------------------
        MOV       *-SP[1],#1            ; [CPU_] |281| 
$C$L18:    
        MOV       AL,*-SP[2]            ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 285,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 285 | if((buf_status & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      AL,#1                 ; [CPU_] |285| 
        B         $C$L19,NTC            ; [CPU_] |285| 
        ; branchcc occurs ; [] |285| 
	.dwpsn	file "../Source/SPICAN.c",line 287,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 287 | SPICANReadBuf_Array(buf2, 1);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR3             ; [CPU_] |287| 
        MOVB      AL,#1                 ; [CPU_] |287| 
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |287| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |287| 
        MOV       AL,*-SP[1]            ; [CPU_] |287| 
	.dwpsn	file "../Source/SPICAN.c",line 288,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 288 | res |= 0x02;                                                           
; 291 | return res;                                                            
;----------------------------------------------------------------------
        ORB       AL,#0x02              ; [CPU_] |288| 
        MOV       *-SP[1],AL            ; [CPU_] |288| 
$C$L19:    
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
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$178, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$178, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$178, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$178

	.sect	".text"
	.clink
	.global	_SPICANReadBuf1

$C$DW$192	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$192, DW_AT_name("SPICANReadBuf1")
	.dwattr $C$DW$192, DW_AT_low_pc(_SPICANReadBuf1)
	.dwattr $C$DW$192, DW_AT_high_pc(0x00)
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_SPICANReadBuf1")
	.dwattr $C$DW$192, DW_AT_external
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$192, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$192, DW_AT_TI_begin_line(0xb0)
	.dwattr $C$DW$192, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$192, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 177,column 1,is_stmt,address _SPICANReadBuf1,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf1
;----------------------------------------------------------------------
; 176 | Uint32 SPICANReadBuf1 (void)                                           
; 178 | Uint32  RetVal;                                                        
; 179 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$193	.dwtag  DW_TAG_variable
	.dwattr $C$DW$193, DW_AT_name("RetVal")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$193, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 180,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | spi_xmit(SPICAN_RXBUF1);                                               
;----------------------------------------------------------------------
        MOVB      AL,#150               ; [CPU_] |180| 
	.dwpsn	file "../Source/SPICAN.c",line 179,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |179| 
	.dwpsn	file "../Source/SPICAN.c",line 180,column 2,is_stmt,isa 0
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |180| 
        ; call occurs [#_spi_xmit] ; [] |180| 
	.dwpsn	file "../Source/SPICAN.c",line 181,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 181 | RetVal = spi_recv() << 24;                                             
;----------------------------------------------------------------------
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_spi_recv")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |181| 
        ; call occurs [#_spi_recv] ; [] |181| 
	.dwpsn	file "../Source/SPICAN.c",line 182,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 182 | RetVal |= spi_recv() << 16;                                            
;----------------------------------------------------------------------
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_spi_recv")
	.dwattr $C$DW$196, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |182| 
        ; call occurs [#_spi_recv] ; [] |182| 
	.dwpsn	file "../Source/SPICAN.c",line 183,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 183 | RetVal |= spi_recv() << 8;                                             
;----------------------------------------------------------------------
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_spi_recv")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |183| 
        ; call occurs [#_spi_recv] ; [] |183| 
        MOV       ACC,AL << #8          ; [CPU_] |183| 
        MOVZ      AR1,AL                ; [CPU_] |183| 
	.dwpsn	file "../Source/SPICAN.c",line 184,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 184 | RetVal |= spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_spi_recv")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |184| 
        ; call occurs [#_spi_recv] ; [] |184| 
        MOVZ      AR6,AL                ; [CPU_] |184| 
        MOVL      ACC,XAR1              ; [CPU_] |184| 
        OR        ACC,AR6               ; [CPU_] |184| 
        MOVL      XAR1,ACC              ; [CPU_] |184| 
	.dwpsn	file "../Source/SPICAN.c",line 185,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 185 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_spi_recv")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |185| 
        ; call occurs [#_spi_recv] ; [] |185| 
	.dwpsn	file "../Source/SPICAN.c",line 186,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 186 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_spi_recv")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |186| 
        ; call occurs [#_spi_recv] ; [] |186| 
	.dwpsn	file "../Source/SPICAN.c",line 187,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_name("_spi_recv")
	.dwattr $C$DW$201, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |187| 
        ; call occurs [#_spi_recv] ; [] |187| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_spi_recv")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |188| 
        ; call occurs [#_spi_recv] ; [] |188| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 189,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 189 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |189| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOVL      ACC,XAR1              ; [CPU_] |190| 
        MOVL      XAR1,*--SP            ; [CPU_] |190| 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$192, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$192, DW_AT_TI_end_line(0xbf)
	.dwattr $C$DW$192, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$192

	.sect	".text"
	.clink
	.global	_SPICANMasksFilts

$C$DW$204	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$204, DW_AT_name("SPICANMasksFilts")
	.dwattr $C$DW$204, DW_AT_low_pc(_SPICANMasksFilts)
	.dwattr $C$DW$204, DW_AT_high_pc(0x00)
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_SPICANMasksFilts")
	.dwattr $C$DW$204, DW_AT_external
	.dwattr $C$DW$204, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$204, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$204, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$204, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 48,column 1,is_stmt,address _SPICANMasksFilts,isa 0

	.dwfde $C$DW$CIE, _SPICANMasksFilts
;----------------------------------------------------------------------
;  47 | void SPICANMasksFilts(void)                                            
;  49 | volatile Uint16 res;                                                   
;  50 | res = SPICANRead(0x00);                                                
;  51 | // Set up filters for RX buffs                                         
;  52 | while(res != 0x80)                                                     
;  54 |         SPICANWrite(0x00, 0x80);                                       
;  55 |         res = SPICANRead(0x00);                                        
;  58 | res = SPICANRead(0x01);                                                
;  59 | while(res != 0x00)                                                     
;  61 |         SPICANWrite(0x01, 0x00);                                       
;  62 |         res = SPICANRead(0x01);                                        
;  65 | // Set up masks for RX buffs                                           
;  66 | res = SPICANRead(0x20);                                                
;  67 | while(res != 0xF9)                                                     
;  69 |         SPICANWrite(0x20, 0xF9);                                       
;  70 |         res = SPICANRead(0x20);                                        
;  73 | res = SPICANRead(0x21);                                                
;  74 | while(res != 0x00)                                                     
;  76 |         SPICANWrite(0x21, 0x00);                                       
;  77 |         res = SPICANRead(0x21);                                        
;  80 | res = SPICANRead(0x00);                                                
;  81 | res = SPICANRead(0x01);                                                
;  82 | res = SPICANRead(0x20);                                                
;  83 | res = SPICANRead(0x21);                                                
;  84 | // MASK: 111 1100 1000                                                 
;  85 | // FILT: 100 0000 0000                                                 
;  86 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  87 | return;                                                                
;  90 | void SPICANReset (void)                                                
;  92 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  93 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;  94 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  95 | return;                                                                
;  98 | // Responsible for reading the status of a                             
;  99 | // register address on the SPICAN Control Register                     
; 100 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 101 | Uint16 SPICANRead (Uint16 Input)                                       
; 103 | Uint16  RetVal;                                                        
; 104 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANMasksFilts             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  1 Auto,  0 SOE     *
;***************************************************************

_SPICANMasksFilts:
;* AL    assigned to _RetVal
$C$DW$205	.dwtag  DW_TAG_variable
	.dwattr $C$DW$205, DW_AT_name("RetVal")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$206	.dwtag  DW_TAG_variable
	.dwattr $C$DW$206, DW_AT_name("RetVal")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$207	.dwtag  DW_TAG_variable
	.dwattr $C$DW$207, DW_AT_name("RetVal")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$208	.dwtag  DW_TAG_variable
	.dwattr $C$DW$208, DW_AT_name("RetVal")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$209	.dwtag  DW_TAG_variable
	.dwattr $C$DW$209, DW_AT_name("RetVal")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_location[DW_OP_reg0]

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

;* AL    assigned to _RetVal
$C$DW$213	.dwtag  DW_TAG_variable
	.dwattr $C$DW$213, DW_AT_name("RetVal")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$214	.dwtag  DW_TAG_variable
	.dwattr $C$DW$214, DW_AT_name("RetVal")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$215	.dwtag  DW_TAG_variable
	.dwattr $C$DW$215, DW_AT_name("RetVal")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$216	.dwtag  DW_TAG_variable
	.dwattr $C$DW$216, DW_AT_name("RetVal")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_location[DW_OP_reg0]

$C$DW$217	.dwtag  DW_TAG_variable
	.dwattr $C$DW$217, DW_AT_name("res")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$217, DW_AT_location[DW_OP_breg20 -1]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |106| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_spi_recv")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
; 109 | return(RetVal);                                                        
; 112 | // Responsible for writing the status of a                             
; 113 | // register address on the SPICAN Control Register                     
; 114 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 115 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 50,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |50| 
	.dwpsn	file "../Source/SPICAN.c",line 52,column 8,is_stmt,isa 0
        B         $C$L21,UNC            ; [CPU_] |52| 
        ; branch occurs ; [] |52| 
$C$L20:    
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 119 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |119| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOVB      AL,#128               ; [CPU_] |120| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |106| 
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_spi_recv")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 55,column 3,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |55| 
$C$L21:    
	.dwpsn	file "../Source/SPICAN.c",line 52,column 8,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_] |52| 
        CMPB      AL,#128               ; [CPU_] |52| 
        B         $C$L20,NEQ            ; [CPU_] |52| 
        ; branchcc occurs ; [] |52| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |106| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_spi_recv")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 8,is_stmt,isa 0
        B         $C$L23,UNC            ; [CPU_] |59| 
        ; branch occurs ; [] |59| 
$C$L22:    
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |119| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$231, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$232, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$233, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |106| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$234, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_spi_recv")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 62,column 3,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |62| 
$C$L23:    
	.dwpsn	file "../Source/SPICAN.c",line 59,column 8,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_] |59| 
        B         $C$L22,NEQ            ; [CPU_] |59| 
        ; branchcc occurs ; [] |59| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$236, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |106| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$237, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_spi_recv")
	.dwattr $C$DW$238, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 66,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |66| 
	.dwpsn	file "../Source/SPICAN.c",line 67,column 8,is_stmt,isa 0
        B         $C$L25,UNC            ; [CPU_] |67| 
        ; branch occurs ; [] |67| 
$C$L24:    
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$239, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |119| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$240, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#249               ; [CPU_] |120| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$241, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$242, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |106| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_spi_recv")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 3,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |70| 
$C$L25:    
	.dwpsn	file "../Source/SPICAN.c",line 67,column 8,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_] |67| 
        CMPB      AL,#249               ; [CPU_] |67| 
        B         $C$L24,NEQ            ; [CPU_] |67| 
        ; branchcc occurs ; [] |67| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |106| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_spi_recv")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 8,is_stmt,isa 0
        B         $C$L27,UNC            ; [CPU_] |74| 
        ; branch occurs ; [] |74| 
$C$L26:    
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |119| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |106| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_spi_recv")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 77,column 3,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |77| 
$C$L27:    
	.dwpsn	file "../Source/SPICAN.c",line 74,column 8,is_stmt,isa 0
        MOV       AL,*-SP[1]            ; [CPU_] |74| 
        B         $C$L26,NEQ            ; [CPU_] |74| 
        ; branchcc occurs ; [] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |106| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_spi_recv")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 80,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |80| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |106| 
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_spi_recv")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 81,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |81| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |106| 
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("_spi_recv")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$263, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |106| 
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$264, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_spi_recv")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOV       *-SP[1],AL            ; [CPU_] |83| 
        SUBB      SP,#2                 ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$204, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$204, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$204, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$204

	.sect	".text"
	.clink
	.global	_SPICANIntEn

$C$DW$267	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$267, DW_AT_name("SPICANIntEn")
	.dwattr $C$DW$267, DW_AT_low_pc(_SPICANIntEn)
	.dwattr $C$DW$267, DW_AT_high_pc(0x00)
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_SPICANIntEn")
	.dwattr $C$DW$267, DW_AT_external
	.dwattr $C$DW$267, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$267, DW_AT_TI_begin_line(0x92)
	.dwattr $C$DW$267, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$267, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 147,column 1,is_stmt,address _SPICANIntEn,isa 0

	.dwfde $C$DW$CIE, _SPICANIntEn
;----------------------------------------------------------------------
; 146 | void SPICANIntEn (void)
;     |  //Enables RX interupts for now                                        
; 148 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 149,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |149| 
	.dwpsn	file "../Source/SPICAN.c",line 148,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |148| 
	.dwpsn	file "../Source/SPICAN.c",line 149,column 2,is_stmt,isa 0
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |149| 
        ; call occurs [#_spi_xmit] ; [] |149| 
	.dwpsn	file "../Source/SPICAN.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |150| 
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |150| 
        ; call occurs [#_spi_xmit] ; [] |150| 
	.dwpsn	file "../Source/SPICAN.c",line 151,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | spi_xmit(0x03);
;     |  //Enable RX Interupts                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |151| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$270, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |151| 
        ; call occurs [#_spi_xmit] ; [] |151| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 152,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |152| 
$C$DW$271	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$271, DW_AT_low_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$267, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$267, DW_AT_TI_end_line(0x99)
	.dwattr $C$DW$267, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$267

	.sect	".text"
	.clink
	.global	_SPICANConfigure

$C$DW$272	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$272, DW_AT_name("SPICANConfigure")
	.dwattr $C$DW$272, DW_AT_low_pc(_SPICANConfigure)
	.dwattr $C$DW$272, DW_AT_high_pc(0x00)
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_SPICANConfigure")
	.dwattr $C$DW$272, DW_AT_external
	.dwattr $C$DW$272, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$272, DW_AT_TI_begin_line(0x156)
	.dwattr $C$DW$272, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$272, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 343,column 1,is_stmt,address _SPICANConfigure,isa 0

	.dwfde $C$DW$CIE, _SPICANConfigure
;----------------------------------------------------------------------
; 342 | void SPICANConfigure(void)                                             
; 345 | // For configuration details, see note at bottom                       
; 346 | // SPICANWrite(0x2A, 0x81);             // Setting up CNF1             
; 347 | // SPICANWrite(0x29, 0xD0);             // Setting up CNF2             
; 348 | // SPICANWrite(0x28, 0xC2);             // Setting up CNF3             
; 349 | SPICANWrite(0x2A, 0x01);                // Setting up CNF1             
; 350 | SPICANWrite(0x29, 0xD0);                // Setting up CNF2             
; 351 | SPICANWrite(0x28, 0xC2);                // Setting up CNF3             
; 352 | return;                                                                
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
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$273	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$273, DW_AT_low_pc(0x00)
	.dwattr $C$DW$273, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$273, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#42                ; [CPU_] |119| 
$C$DW$274	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$274, DW_AT_low_pc(0x00)
	.dwattr $C$DW$274, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$274, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |120| 
$C$DW$275	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$275, DW_AT_low_pc(0x00)
	.dwattr $C$DW$275, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$275, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$276	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$276, DW_AT_low_pc(0x00)
	.dwattr $C$DW$276, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$276, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#41                ; [CPU_] |119| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#208               ; [CPU_] |120| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$279, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#40                ; [CPU_] |119| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$280, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#194               ; [CPU_] |120| 
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$281, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
$C$DW$282	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$282, DW_AT_low_pc(0x00)
	.dwattr $C$DW$282, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$272, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$272, DW_AT_TI_end_line(0x1ae)
	.dwattr $C$DW$272, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$272

	.sect	".text"
	.clink
	.global	_SPICANInit

$C$DW$283	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$283, DW_AT_name("SPICANInit")
	.dwattr $C$DW$283, DW_AT_low_pc(_SPICANInit)
	.dwattr $C$DW$283, DW_AT_high_pc(0x00)
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_SPICANInit")
	.dwattr $C$DW$283, DW_AT_external
	.dwattr $C$DW$283, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$283, DW_AT_TI_begin_line(0x0d)
	.dwattr $C$DW$283, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$283, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 14,column 1,is_stmt,address _SPICANInit,isa 0

	.dwfde $C$DW$CIE, _SPICANInit
;----------------------------------------------------------------------
;  13 | void SPICANInit(void)                                                  
;  15 | SPICANReset();                                  // Reset Command       
;  16 | SPICANReadyConfig();                                                   
;  18 | SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits          
;  19 | // SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits       
;  20 | SPICANMasksFilts();                                                    
;  21 | SPICANWrite(0x60, 0x06);                                               
;  22 | SPICANWrite(0x70, 0x00);                                               
;  23 | SPICANWrite(0x0D, 0x00);                                               
;  24 | // SPICANBitModify(0x60, 0xFF, 0x04);           // Set BUKT to be 1    
;  25 | // SPICANBitModify(0x70, 0xFF, 0x00);           // Setup up RXB1 to rec
;     | eive all messages                                                      
;  26 | // SPICANBitModify(0x0C, 0xFF, 0x00); // Set TXRTSCTRL to 0x00         
;  28 | SPICANConfigure();                                                     
;  29 | SPICANWrite(0x2C, 0x00);                // Clearing all interrupts     
;  30 | SPICANWrite(0x2B, 0x00);                // Clearing all interrupts     
;  32 | SPICANWrite(0x0F, 0x00); // Set CANCTRL to 0x00                        
;  33 | // SPICANBitModify(0x0F, 0xFF, 0x00); // Set TXRTSCTRL to 0x00         
;  34 | SPICANReadStat();                               // Confirm we are in No
;     | rmal Mode                                                              
;  35 | return;                                                                
;  38 | void SPICANReadyConfig(void)                                           
;  40 | Uint16 res;                                                            
;  41 | res = SPICANRead(SPICAN_CANSTAT);                                      
;  42 | while((res & 0xE0) != 0x80)                                            
;  43 |         res = SPICANRead(SPICAN_CANSTAT);                              
;  44 | return;                                                                
;  47 | void SPICANMasksFilts(void)                                            
;  49 | volatile Uint16 res;                                                   
;  50 | res = SPICANRead(0x00);                                                
;  51 | // Set up filters for RX buffs                                         
;  52 | while(res != 0x80)                                                     
;  54 |         SPICANWrite(0x00, 0x80);                                       
;  55 |         res = SPICANRead(0x00);                                        
;  58 | res = SPICANRead(0x01);                                                
;  59 | while(res != 0x00)                                                     
;  61 |         SPICANWrite(0x01, 0x00);                                       
;  62 |         res = SPICANRead(0x01);                                        
;  65 | // Set up masks for RX buffs                                           
;  66 | res = SPICANRead(0x20);                                                
;  67 | while(res != 0xF9)                                                     
;  69 |         SPICANWrite(0x20, 0xF9);                                       
;  70 |         res = SPICANRead(0x20);                                        
;  73 | res = SPICANRead(0x21);                                                
;  74 | while(res != 0x00)                                                     
;  76 |         SPICANWrite(0x21, 0x00);                                       
;  77 |         res = SPICANRead(0x21);                                        
;  80 | res = SPICANRead(0x00);                                                
;  81 | res = SPICANRead(0x01);                                                
;  82 | res = SPICANRead(0x20);                                                
;  83 | res = SPICANRead(0x21);                                                
;  84 | // MASK: 111 1100 1000                                                 
;  85 | // FILT: 100 0000 0000                                                 
;  86 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  87 | return;                                                                
;  90 | void SPICANReset (void)                                                
;  92 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |93| 
	.dwpsn	file "../Source/SPICAN.c",line 92,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |92| 
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
$C$DW$284	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$284, DW_AT_low_pc(0x00)
	.dwattr $C$DW$284, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$284, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |93| 
        ; call occurs [#_spi_xmit] ; [] |93| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  95 | return;                                                                
;  98 | // Responsible for reading the status of a                             
;  99 | // register address on the SPICAN Control Register                     
; 100 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 101 | Uint16 SPICANRead (Uint16 Input)                                       
; 103 | Uint16  RetVal;                                                        
; 104 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
; 105 | spi_xmit(SPICAN_READ);                                                 
; 106 | spi_xmit(Input);                                                       
; 107 | RetVal = spi_recv();                                                   
; 108 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
; 109 | return(RetVal);                                                        
; 112 | // Responsible for writing the status of a                             
; 113 | // register address on the SPICAN Control Register                     
; 114 | // See Pg. 61 in (Table 11-2) for list of addresses                    
; 115 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
; 117 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 16,column 2,is_stmt,isa 0
$C$DW$285	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$285, DW_AT_low_pc(0x00)
	.dwattr $C$DW$285, DW_AT_name("_SPICANReadyConfig")
	.dwattr $C$DW$285, DW_AT_TI_call

        LCR       #_SPICANReadyConfig   ; [CPU_] |16| 
        ; call occurs [#_SPICANReadyConfig] ; [] |16| 
	.dwpsn	file "../Source/SPICAN.c",line 18,column 2,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_] |18| 
        MOVB      AH,#255               ; [CPU_] |18| 
        MOVB      XAR4,#15              ; [CPU_] |18| 
$C$DW$286	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$286, DW_AT_low_pc(0x00)
	.dwattr $C$DW$286, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$286, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |18| 
        ; call occurs [#_SPICANBitModify] ; [] |18| 
	.dwpsn	file "../Source/SPICAN.c",line 20,column 2,is_stmt,isa 0
$C$DW$287	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$287, DW_AT_low_pc(0x00)
	.dwattr $C$DW$287, DW_AT_name("_SPICANMasksFilts")
	.dwattr $C$DW$287, DW_AT_TI_call

        LCR       #_SPICANMasksFilts    ; [CPU_] |20| 
        ; call occurs [#_SPICANMasksFilts] ; [] |20| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$288	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$288, DW_AT_low_pc(0x00)
	.dwattr $C$DW$288, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$288, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 119 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOVB      AL,#96                ; [CPU_] |119| 
$C$DW$289	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$289, DW_AT_low_pc(0x00)
	.dwattr $C$DW$289, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$289, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOVB      AL,#6                 ; [CPU_] |120| 
$C$DW$290	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$290, DW_AT_low_pc(0x00)
	.dwattr $C$DW$290, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$290, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$291	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$291, DW_AT_low_pc(0x00)
	.dwattr $C$DW$291, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$291, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_] |119| 
$C$DW$292	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$292, DW_AT_low_pc(0x00)
	.dwattr $C$DW$292, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$292, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$293	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$293, DW_AT_low_pc(0x00)
	.dwattr $C$DW$293, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$293, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | // Quick polling command that reads several status bits for transmit   
; 125 | // and receive functions.                                              
; 126 | Uint16 SPICANReadStat (void)                                           
; 128 | Uint16  RetVal;                                                        
; 129 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$294	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$294, DW_AT_low_pc(0x00)
	.dwattr $C$DW$294, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$294, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#13                ; [CPU_] |119| 
$C$DW$295	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$295, DW_AT_low_pc(0x00)
	.dwattr $C$DW$295, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$295, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$296	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$296, DW_AT_low_pc(0x00)
	.dwattr $C$DW$296, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$296, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 28,column 2,is_stmt,isa 0
$C$DW$297	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$297, DW_AT_low_pc(0x00)
	.dwattr $C$DW$297, DW_AT_name("_SPICANConfigure")
	.dwattr $C$DW$297, DW_AT_TI_call

        LCR       #_SPICANConfigure     ; [CPU_] |28| 
        ; call occurs [#_SPICANConfigure] ; [] |28| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$298	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$298, DW_AT_low_pc(0x00)
	.dwattr $C$DW$298, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$298, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |119| 
$C$DW$299	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$299, DW_AT_low_pc(0x00)
	.dwattr $C$DW$299, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$299, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$300	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$300, DW_AT_low_pc(0x00)
	.dwattr $C$DW$300, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$300, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$301	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$301, DW_AT_low_pc(0x00)
	.dwattr $C$DW$301, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$301, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |119| 
$C$DW$302	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$302, DW_AT_low_pc(0x00)
	.dwattr $C$DW$302, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$302, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$303	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$303, DW_AT_low_pc(0x00)
	.dwattr $C$DW$303, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$303, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$304	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$304, DW_AT_low_pc(0x00)
	.dwattr $C$DW$304, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$304, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
        MOVB      AL,#15                ; [CPU_] |119| 
$C$DW$305	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$305, DW_AT_low_pc(0x00)
	.dwattr $C$DW$305, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$305, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$306	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$306, DW_AT_low_pc(0x00)
	.dwattr $C$DW$306, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$306, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 130,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |130| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 129,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |129| 
	.dwpsn	file "../Source/SPICAN.c",line 130,column 2,is_stmt,isa 0
$C$DW$307	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$307, DW_AT_low_pc(0x00)
	.dwattr $C$DW$307, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$307, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |130| 
        ; call occurs [#_spi_xmit] ; [] |130| 
	.dwpsn	file "../Source/SPICAN.c",line 131,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 131 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |131| 
$C$DW$308	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$308, DW_AT_low_pc(0x00)
	.dwattr $C$DW$308, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$308, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |131| 
        ; call occurs [#_spi_xmit] ; [] |131| 
	.dwpsn	file "../Source/SPICAN.c",line 132,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 132 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$309	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$309, DW_AT_low_pc(0x00)
	.dwattr $C$DW$309, DW_AT_name("_spi_recv")
	.dwattr $C$DW$309, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |132| 
        ; call occurs [#_spi_recv] ; [] |132| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |133| 
$C$DW$310	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$310, DW_AT_low_pc(0x00)
	.dwattr $C$DW$310, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$283, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$283, DW_AT_TI_end_line(0x24)
	.dwattr $C$DW$283, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$283

	.sect	".text"
	.clink
	.global	_SPICANISR

$C$DW$311	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$311, DW_AT_name("SPICANISR")
	.dwattr $C$DW$311, DW_AT_low_pc(_SPICANISR)
	.dwattr $C$DW$311, DW_AT_high_pc(0x00)
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_SPICANISR")
	.dwattr $C$DW$311, DW_AT_external
	.dwattr $C$DW$311, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$311, DW_AT_TI_begin_line(0x204)
	.dwattr $C$DW$311, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$311, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../Source/SPICAN.c",line 517,column 1,is_stmt,address _SPICANISR,isa 0

	.dwfde $C$DW$CIE, _SPICANISR
;----------------------------------------------------------------------
; 516 | void SPICANISR(void)                                                   
; 518 | volatile Uint16 res;                                                   
; 519 | volatile Uint16 inters;                                                
; 520 | Uint16 arr[8];                                                         
; 521 | // Read the CANSTAT to get the Interrupt code                          
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
$C$DW$312	.dwtag  DW_TAG_variable
	.dwattr $C$DW$312, DW_AT_name("RetVal")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_location[DW_OP_reg0]

$C$DW$313	.dwtag  DW_TAG_variable
	.dwattr $C$DW$313, DW_AT_name("res")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$313, DW_AT_location[DW_OP_breg20 -1]

$C$DW$314	.dwtag  DW_TAG_variable
	.dwattr $C$DW$314, DW_AT_name("inters")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_inters")
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$314, DW_AT_location[DW_OP_breg20 -2]

$C$DW$315	.dwtag  DW_TAG_variable
	.dwattr $C$DW$315, DW_AT_name("arr")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_arr")
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$315, DW_AT_location[DW_OP_breg20 -10]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        ADDB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -12
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 130,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |130| 
	.dwpsn	file "../Source/SPICAN.c",line 129,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |129| 
	.dwpsn	file "../Source/SPICAN.c",line 130,column 2,is_stmt,isa 0
$C$DW$316	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$316, DW_AT_low_pc(0x00)
	.dwattr $C$DW$316, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$316, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |130| 
        ; call occurs [#_spi_xmit] ; [] |130| 
	.dwpsn	file "../Source/SPICAN.c",line 131,column 2,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_] |131| 
$C$DW$317	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$317, DW_AT_low_pc(0x00)
	.dwattr $C$DW$317, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$317, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |131| 
        ; call occurs [#_spi_xmit] ; [] |131| 
	.dwpsn	file "../Source/SPICAN.c",line 132,column 2,is_stmt,isa 0
$C$DW$318	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$318, DW_AT_low_pc(0x00)
	.dwattr $C$DW$318, DW_AT_name("_spi_recv")
	.dwattr $C$DW$318, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |132| 
        ; call occurs [#_spi_recv] ; [] |132| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |133| 
	.dwpsn	file "../Source/SPICAN.c",line 522,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 522 | res = SPICANReadStat();                                                
;----------------------------------------------------------------------
        MOV       *-SP[1],AL            ; [CPU_] |522| 
	.dwpsn	file "../Source/SPICAN.c",line 523,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 523 | inters = (res & 0x0E) >> 1;                                            
; 525 | // RX1 Buf is full                                                     
;----------------------------------------------------------------------
        AND       AL,*-SP[1],#0x000e    ; [CPU_] |523| 
        LSR       AL,1                  ; [CPU_] |523| 
        MOV       *-SP[2],AL            ; [CPU_] |523| 
	.dwpsn	file "../Source/SPICAN.c",line 526,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 526 | if(inters == 0x08)                                                     
;----------------------------------------------------------------------
        CMPB      AL,#8                 ; [CPU_] |526| 
        B         $C$L28,NEQ            ; [CPU_] |526| 
        ; branchcc occurs ; [] |526| 
	.dwpsn	file "../Source/SPICAN.c",line 528,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 528 | SPICANReadBuf_Array(arr, 1);                                           
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |528| 
        MOVB      AL,#1                 ; [CPU_] |528| 
        SUBB      XAR4,#10              ; [CPU_U] |528| 
        MOVZ      AR4,AR4               ; [CPU_] |528| 
$C$DW$319	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$319, DW_AT_low_pc(0x00)
	.dwattr $C$DW$319, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$319, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |528| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |528| 
	.dwpsn	file "../Source/SPICAN.c",line 529,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 529 | SPICANBitModify(0x2C, 0x02, 0x00);                                     
; 532 | // RX1 Buf is full                                                     
;----------------------------------------------------------------------
        MOVB      AL,#44                ; [CPU_] |529| 
        MOVB      AH,#2                 ; [CPU_] |529| 
        MOVB      XAR4,#0               ; [CPU_] |529| 
$C$DW$320	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$320, DW_AT_low_pc(0x00)
	.dwattr $C$DW$320, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$320, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |529| 
        ; call occurs [#_SPICANBitModify] ; [] |529| 
$C$L28:    
	.dwpsn	file "../Source/SPICAN.c",line 533,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 533 | if(inters == 0x07)                                                     
;----------------------------------------------------------------------
        MOV       AL,*-SP[2]            ; [CPU_] |533| 
        CMPB      AL,#7                 ; [CPU_] |533| 
        B         $C$L29,NEQ            ; [CPU_] |533| 
        ; branchcc occurs ; [] |533| 
	.dwpsn	file "../Source/SPICAN.c",line 535,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 535 | SPICANReadBuf_Array(arr, 0);                                           
; 536 | // For now, send back dummy data                                       
; 537 | // Wait for the TX Buffer to be ready                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |535| 
        MOVB      AL,#0                 ; [CPU_] |535| 
        SUBB      XAR4,#10              ; [CPU_U] |535| 
        MOVZ      AR4,AR4               ; [CPU_] |535| 
$C$DW$321	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$321, DW_AT_low_pc(0x00)
	.dwattr $C$DW$321, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$321, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |535| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |535| 
	.dwpsn	file "../Source/SPICAN.c",line 538,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 538 | SPICANWaitForTXBuf(0);                                                 
; 539 | // Set the message on the buffer                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |538| 
$C$DW$322	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$322, DW_AT_low_pc(0x00)
	.dwattr $C$DW$322, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$322, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |538| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |538| 
	.dwpsn	file "../Source/SPICAN.c",line 540,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 540 | SPICANReadSetT0Message(0x43, 8, arr);                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |540| 
        MOVB      AL,#67                ; [CPU_] |540| 
        MOVB      AH,#8                 ; [CPU_] |540| 
        SUBB      XAR4,#10              ; [CPU_U] |540| 
        MOVZ      AR4,AR4               ; [CPU_] |540| 
$C$DW$323	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$323, DW_AT_low_pc(0x00)
	.dwattr $C$DW$323, DW_AT_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$323, DW_AT_TI_call

        LCR       #_SPICANReadSetT0Message ; [CPU_] |540| 
        ; call occurs [#_SPICANReadSetT0Message] ; [] |540| 
	.dwpsn	file "../Source/SPICAN.c",line 541,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 541 | SPICANWaitForTXBuf(0);                                                 
; 542 | // Signal that the message is ready to send                            
; 543 | SPICAN_T0_RTS();                                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |541| 
$C$DW$324	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$324, DW_AT_low_pc(0x00)
	.dwattr $C$DW$324, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$324, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |541| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |541| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
        MOVB      AL,#129               ; [CPU_] |254| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 254,column 2,is_stmt,isa 0
$C$DW$325	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$325, DW_AT_low_pc(0x00)
	.dwattr $C$DW$325, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$325, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |254| 
        ; call occurs [#_spi_xmit] ; [] |254| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 544,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 544 | SPICANBitModify(0x2C, 0x01, 0x00);                                     
;----------------------------------------------------------------------
        MOVB      AL,#44                ; [CPU_] |544| 
        MOVB      AH,#1                 ; [CPU_] |544| 
        MOVB      XAR4,#0               ; [CPU_] |544| 
	.dwpsn	file "../Source/SPICAN.c",line 255,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |255| 
	.dwpsn	file "../Source/SPICAN.c",line 544,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 546 | return;                                                                
;----------------------------------------------------------------------
$C$DW$326	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$326, DW_AT_low_pc(0x00)
	.dwattr $C$DW$326, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$326, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |544| 
        ; call occurs [#_SPICANBitModify] ; [] |544| 
$C$L29:    
        SUBB      SP,#10                ; [CPU_U] 
	.dwcfi	cfa_offset, -2
$C$DW$327	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$327, DW_AT_low_pc(0x00)
	.dwattr $C$DW$327, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$311, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$311, DW_AT_TI_end_line(0x223)
	.dwattr $C$DW$311, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$311

	.sect	".text"
	.clink
	.global	_SPICANCheckInts

$C$DW$328	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$328, DW_AT_name("SPICANCheckInts")
	.dwattr $C$DW$328, DW_AT_low_pc(_SPICANCheckInts)
	.dwattr $C$DW$328, DW_AT_high_pc(0x00)
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_SPICANCheckInts")
	.dwattr $C$DW$328, DW_AT_external
	.dwattr $C$DW$328, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$328, DW_AT_TI_begin_line(0x1f2)
	.dwattr $C$DW$328, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$328, DW_AT_TI_max_frame_size(-90)
	.dwpsn	file "../Source/SPICAN.c",line 499,column 1,is_stmt,address _SPICANCheckInts,isa 0

	.dwfde $C$DW$CIE, _SPICANCheckInts
$C$DW$329	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$329, DW_AT_name("line")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_line")
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$329, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 498 | void SPICANCheckInts(int line)                                         
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
$C$DW$330	.dwtag  DW_TAG_variable
	.dwattr $C$DW$330, DW_AT_name("RetVal")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _line
$C$DW$331	.dwtag  DW_TAG_variable
	.dwattr $C$DW$331, DW_AT_name("line")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_line")
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$331, DW_AT_location[DW_OP_reg6]

$C$DW$332	.dwtag  DW_TAG_variable
	.dwattr $C$DW$332, DW_AT_name("interrupts")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_interrupts")
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$332, DW_AT_location[DW_OP_breg20 -4]

$C$DW$333	.dwtag  DW_TAG_variable
	.dwattr $C$DW$333, DW_AT_name("buff")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_buff")
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$333, DW_AT_location[DW_OP_breg20 -84]

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
; 500 | volatile Uint16 interrupts;                                            
; 501 | char buff[80];                                                         
; 502 | // Check interrupts for what all happened                              
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |499| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |105| 
$C$DW$334	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$334, DW_AT_low_pc(0x00)
	.dwattr $C$DW$334, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$334, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |106| 
$C$DW$335	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$335, DW_AT_low_pc(0x00)
	.dwattr $C$DW$335, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$335, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
$C$DW$336	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$336, DW_AT_low_pc(0x00)
	.dwattr $C$DW$336, DW_AT_name("_spi_recv")
	.dwattr $C$DW$336, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |107| 
        ; call occurs [#_spi_recv] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 503,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 503 | interrupts = SPICANRead(0x2C);                                         
; 505 | // TX Interrupts                                                       
;----------------------------------------------------------------------
        MOV       *-SP[4],AL            ; [CPU_] |503| 
	.dwpsn	file "../Source/SPICAN.c",line 506,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 506 | buff[0] = interrupts;                                                  
; 507 | // RX Interrupts                                                       
;----------------------------------------------------------------------
        MOV       *+FP[6],AL            ; [CPU_] |506| 
	.dwpsn	file "../Source/SPICAN.c",line 508,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 508 | if((interrupts & 0x03) > 0x00)                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_] |508| 
        ANDB      AL,#0x03              ; [CPU_] |508| 
        B         $C$L30,EQ             ; [CPU_] |508| 
        ; branchcc occurs ; [] |508| 
	.dwpsn	file "../Source/SPICAN.c",line 510,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 510 | sprintf( buff, "There was an interrupt on line: %d", line);            
; 511 | //              printf("%s", buff);                                    
; 513 | return;                                                                
;----------------------------------------------------------------------
        MOVL      XAR4,#$C$FSL1         ; [CPU_U] |510| 
        MOVL      *-SP[2],XAR4          ; [CPU_] |510| 
        MOVZ      AR4,SP                ; [CPU_] |510| 
        MOV       *-SP[3],AR1           ; [CPU_] |510| 
        SUBB      XAR4,#84              ; [CPU_U] |510| 
        MOVZ      AR4,AR4               ; [CPU_] |510| 
$C$DW$337	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$337, DW_AT_low_pc(0x00)
	.dwattr $C$DW$337, DW_AT_name("_sprintf")
	.dwattr $C$DW$337, DW_AT_TI_call

        LCR       #_sprintf             ; [CPU_] |510| 
        ; call occurs [#_sprintf] ; [] |510| 
$C$L30:    
        SUBB      SP,#84                ; [CPU_U] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$338	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$338, DW_AT_low_pc(0x00)
	.dwattr $C$DW$338, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$328, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$328, DW_AT_TI_end_line(0x202)
	.dwattr $C$DW$328, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$328

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
	.global	_spi_recv
	.global	_sprintf
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIOA0")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIOA1")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOA2")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIOA3")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIOA4")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIOA5")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIOA6")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOA7")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOA8")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIOA9")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIOA10")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIOA11")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("GPIOA12")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("GPIOA13")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIOA14")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIOA15")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("all")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$356, DW_AT_name("bit")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIOA0")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIOA1")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIOA2")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIOA3")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("GPIOA4")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIOA5")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIOA6")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIOA7")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIOA8")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIOA9")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIOA10")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("GPIOA11")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("GPIOA12")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("GPIOA13")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIOA14")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIOA15")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("all")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$374, DW_AT_name("bit")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIOA0")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIOA1")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIOA2")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIOA3")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIOA4")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIOA5")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIOA6")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIOA7")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIOA8")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIOA9")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIOA10")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("GPIOA11")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("GPIOA12")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("GPIOA13")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("GPIOA14")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("GPIOA15")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("all")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$392, DW_AT_name("bit")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("GPIOA0")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIOA1")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("GPIOA2")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("GPIOA3")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIOA4")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("GPIOA5")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("GPIOA6")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("GPIOA7")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIOA8")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIOA9")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("GPIOA10")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("GPIOA11")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("GPIOA12")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("GPIOA13")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIOA14")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIOA15")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("all")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$410, DW_AT_name("bit")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("GPIOB0")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIOB1")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIOB2")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIOB3")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("GPIOB4")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("GPIOB5")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIOB6")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIOB7")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIOB8")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIOB9")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIOB10")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("GPIOB11")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("GPIOB12")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("GPIOB13")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("GPIOB14")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("GPIOB15")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("all")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$428, DW_AT_name("bit")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("GPIOB0")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("GPIOB1")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("GPIOB2")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("GPIOB3")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("GPIOB4")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("GPIOB5")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("GPIOB6")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("GPIOB7")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIOB8")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIOB9")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("GPIOB10")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("GPIOB11")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("GPIOB12")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("GPIOB13")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("GPIOB14")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("GPIOB15")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("all")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$446, DW_AT_name("bit")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("GPIOB0")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$447, DW_AT_bit_size(0x01)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("GPIOB1")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("GPIOB2")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIOB3")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIOB4")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("GPIOB5")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("GPIOB6")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("GPIOB7")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("GPIOB8")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("GPIOB9")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("GPIOB10")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("GPIOB11")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("GPIOB12")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("GPIOB13")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("GPIOB14")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("GPIOB15")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("all")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$464, DW_AT_name("bit")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("GPIOB0")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("GPIOB1")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("GPIOB2")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("GPIOB3")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("GPIOB4")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("GPIOB5")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("GPIOB6")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("GPIOB7")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("GPIOB8")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("GPIOB9")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("GPIOB10")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("GPIOB11")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("GPIOB12")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("GPIOB13")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("GPIOB14")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("GPIOB15")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("all")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$482, DW_AT_name("bit")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("GPIOD0")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("GPIOD1")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("rsvd1")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$485, DW_AT_bit_size(0x03)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("GPIOD5")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("GPIOD6")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("rsvd2")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$488, DW_AT_bit_size(0x09)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("all")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$490, DW_AT_name("bit")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("GPIOD0")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("GPIOD1")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("rsvd1")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$493, DW_AT_bit_size(0x03)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("GPIOD5")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("GPIOD6")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("rsvd2")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$496, DW_AT_bit_size(0x09)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("all")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$498, DW_AT_name("bit")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("GPIOD0")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("GPIOD1")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("rsvd1")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$501, DW_AT_bit_size(0x03)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("GPIOD5")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("GPIOD6")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("rsvd2")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$504, DW_AT_bit_size(0x09)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("all")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$506, DW_AT_name("bit")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("GPIOD0")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("GPIOD1")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("rsvd1")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$509, DW_AT_bit_size(0x03)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("GPIOD5")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("GPIOD6")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("rsvd2")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$512, DW_AT_bit_size(0x09)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("all")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$514, DW_AT_name("bit")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("GPIOE0")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("GPIOE1")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("GPIOE2")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("rsvd1")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$518, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("all")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$520, DW_AT_name("bit")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("GPIOE0")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("GPIOE1")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("GPIOE2")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("rsvd1")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$524, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("all")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$526, DW_AT_name("bit")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("GPIOE0")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("GPIOE1")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("GPIOE2")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("rsvd1")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$530, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("all")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$532, DW_AT_name("bit")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("GPIOE0")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("GPIOE1")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("GPIOE2")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("rsvd1")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$536, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("all")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$538, DW_AT_name("bit")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("GPIOF0")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("GPIOF1")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("GPIOF2")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("GPIOF3")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("GPIOF4")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("GPIOF5")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("GPIOF6")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("GPIOF7")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("GPIOF8")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("GPIOF9")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("GPIOF10")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("GPIOF11")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("GPIOF12")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("GPIOF13")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$552, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$552, DW_AT_bit_size(0x01)
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$553, DW_AT_name("GPIOF14")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$553, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$553, DW_AT_bit_size(0x01)
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("GPIOF15")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$554, DW_AT_bit_size(0x01)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("all")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$556, DW_AT_name("bit")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("GPIOF0")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$557, DW_AT_bit_size(0x01)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("GPIOF1")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$558, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$558, DW_AT_bit_size(0x01)
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$559, DW_AT_name("GPIOF2")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$559, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$559, DW_AT_bit_size(0x01)
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("GPIOF3")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$560, DW_AT_bit_size(0x01)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("GPIOF4")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("GPIOF5")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("GPIOF6")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$563, DW_AT_bit_size(0x01)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("GPIOF7")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$564, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$564, DW_AT_bit_size(0x01)
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$565, DW_AT_name("GPIOF8")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$565, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$565, DW_AT_bit_size(0x01)
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("GPIOF9")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$566, DW_AT_bit_size(0x01)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("GPIOF10")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("GPIOF11")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("GPIOF12")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$569, DW_AT_bit_size(0x01)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("GPIOF13")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$570, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$570, DW_AT_bit_size(0x01)
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$571, DW_AT_name("GPIOF14")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$571, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$571, DW_AT_bit_size(0x01)
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("GPIOF15")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$572, DW_AT_bit_size(0x01)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("all")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$574, DW_AT_name("bit")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("GPIOF0")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$575, DW_AT_bit_size(0x01)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("GPIOF1")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$576, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$576, DW_AT_bit_size(0x01)
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$577, DW_AT_name("GPIOF2")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$577, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$577, DW_AT_bit_size(0x01)
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$578, DW_AT_name("GPIOF3")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$578, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$578, DW_AT_bit_size(0x01)
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$579, DW_AT_name("GPIOF4")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$579, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$579, DW_AT_bit_size(0x01)
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$580, DW_AT_name("GPIOF5")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$580, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$580, DW_AT_bit_size(0x01)
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$581, DW_AT_name("GPIOF6")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$581, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$581, DW_AT_bit_size(0x01)
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$582, DW_AT_name("GPIOF7")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$582, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$582, DW_AT_bit_size(0x01)
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$583, DW_AT_name("GPIOF8")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$583, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$583, DW_AT_bit_size(0x01)
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$584, DW_AT_name("GPIOF9")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$584, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$584, DW_AT_bit_size(0x01)
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$585, DW_AT_name("GPIOF10")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$585, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$585, DW_AT_bit_size(0x01)
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$586, DW_AT_name("GPIOF11")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$586, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$586, DW_AT_bit_size(0x01)
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$587, DW_AT_name("GPIOF12")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$587, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$587, DW_AT_bit_size(0x01)
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$588, DW_AT_name("GPIOF13")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$588, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$588, DW_AT_bit_size(0x01)
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$589, DW_AT_name("GPIOF14")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$589, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$589, DW_AT_bit_size(0x01)
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$590, DW_AT_name("GPIOF15")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$590, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$590, DW_AT_bit_size(0x01)
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$591, DW_AT_name("all")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$592, DW_AT_name("bit")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$593, DW_AT_name("GPIOF0")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$593, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$593, DW_AT_bit_size(0x01)
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$594, DW_AT_name("GPIOF1")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$594, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$594, DW_AT_bit_size(0x01)
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$595, DW_AT_name("GPIOF2")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$595, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$595, DW_AT_bit_size(0x01)
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$596, DW_AT_name("GPIOF3")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$596, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$596, DW_AT_bit_size(0x01)
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$597, DW_AT_name("GPIOF4")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$597, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$597, DW_AT_bit_size(0x01)
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$598, DW_AT_name("GPIOF5")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$598, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$598, DW_AT_bit_size(0x01)
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$599, DW_AT_name("GPIOF6")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$599, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$599, DW_AT_bit_size(0x01)
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$600, DW_AT_name("GPIOF7")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$600, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$600, DW_AT_bit_size(0x01)
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$601, DW_AT_name("GPIOF8")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$601, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$601, DW_AT_bit_size(0x01)
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$602, DW_AT_name("GPIOF9")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$602, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$602, DW_AT_bit_size(0x01)
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$603, DW_AT_name("GPIOF10")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$603, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$603, DW_AT_bit_size(0x01)
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$604	.dwtag  DW_TAG_member
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$604, DW_AT_name("GPIOF11")
	.dwattr $C$DW$604, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$604, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$604, DW_AT_bit_size(0x01)
	.dwattr $C$DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$604, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$605	.dwtag  DW_TAG_member
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$605, DW_AT_name("GPIOF12")
	.dwattr $C$DW$605, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$605, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$605, DW_AT_bit_size(0x01)
	.dwattr $C$DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$605, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$606	.dwtag  DW_TAG_member
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$606, DW_AT_name("GPIOF13")
	.dwattr $C$DW$606, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$606, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$606, DW_AT_bit_size(0x01)
	.dwattr $C$DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$606, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$607	.dwtag  DW_TAG_member
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$607, DW_AT_name("GPIOF14")
	.dwattr $C$DW$607, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$607, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$607, DW_AT_bit_size(0x01)
	.dwattr $C$DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$607, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$608	.dwtag  DW_TAG_member
	.dwattr $C$DW$608, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$608, DW_AT_name("GPIOF15")
	.dwattr $C$DW$608, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$608, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$608, DW_AT_bit_size(0x01)
	.dwattr $C$DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$608, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$609	.dwtag  DW_TAG_member
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$609, DW_AT_name("all")
	.dwattr $C$DW$609, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$609, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$610	.dwtag  DW_TAG_member
	.dwattr $C$DW$610, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$610, DW_AT_name("bit")
	.dwattr $C$DW$610, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$610, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$611	.dwtag  DW_TAG_member
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$611, DW_AT_name("rsvd1")
	.dwattr $C$DW$611, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$611, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$611, DW_AT_bit_size(0x04)
	.dwattr $C$DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$611, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$612	.dwtag  DW_TAG_member
	.dwattr $C$DW$612, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$612, DW_AT_name("GPIOG4")
	.dwattr $C$DW$612, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$612, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$612, DW_AT_bit_size(0x01)
	.dwattr $C$DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$612, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$613	.dwtag  DW_TAG_member
	.dwattr $C$DW$613, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$613, DW_AT_name("GPIOG5")
	.dwattr $C$DW$613, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$613, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$613, DW_AT_bit_size(0x01)
	.dwattr $C$DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$613, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$614	.dwtag  DW_TAG_member
	.dwattr $C$DW$614, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$614, DW_AT_name("rsvd2")
	.dwattr $C$DW$614, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$614, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$614, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$614, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$615	.dwtag  DW_TAG_member
	.dwattr $C$DW$615, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$615, DW_AT_name("all")
	.dwattr $C$DW$615, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$615, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$616	.dwtag  DW_TAG_member
	.dwattr $C$DW$616, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$616, DW_AT_name("bit")
	.dwattr $C$DW$616, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$616, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$617	.dwtag  DW_TAG_member
	.dwattr $C$DW$617, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$617, DW_AT_name("rsvd1")
	.dwattr $C$DW$617, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$617, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$617, DW_AT_bit_size(0x04)
	.dwattr $C$DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$617, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$618	.dwtag  DW_TAG_member
	.dwattr $C$DW$618, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$618, DW_AT_name("GPIOG4")
	.dwattr $C$DW$618, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$618, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$618, DW_AT_bit_size(0x01)
	.dwattr $C$DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$618, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$619	.dwtag  DW_TAG_member
	.dwattr $C$DW$619, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$619, DW_AT_name("GPIOG5")
	.dwattr $C$DW$619, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$619, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$619, DW_AT_bit_size(0x01)
	.dwattr $C$DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$619, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$620	.dwtag  DW_TAG_member
	.dwattr $C$DW$620, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$620, DW_AT_name("rsvd2")
	.dwattr $C$DW$620, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$620, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$620, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$620, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$621	.dwtag  DW_TAG_member
	.dwattr $C$DW$621, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$621, DW_AT_name("all")
	.dwattr $C$DW$621, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$621, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$622	.dwtag  DW_TAG_member
	.dwattr $C$DW$622, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$622, DW_AT_name("bit")
	.dwattr $C$DW$622, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$622, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$623	.dwtag  DW_TAG_member
	.dwattr $C$DW$623, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$623, DW_AT_name("rsvd1")
	.dwattr $C$DW$623, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$623, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$623, DW_AT_bit_size(0x04)
	.dwattr $C$DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$623, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$624	.dwtag  DW_TAG_member
	.dwattr $C$DW$624, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$624, DW_AT_name("GPIOG4")
	.dwattr $C$DW$624, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$624, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$624, DW_AT_bit_size(0x01)
	.dwattr $C$DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$624, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$625	.dwtag  DW_TAG_member
	.dwattr $C$DW$625, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$625, DW_AT_name("GPIOG5")
	.dwattr $C$DW$625, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$625, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$625, DW_AT_bit_size(0x01)
	.dwattr $C$DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$625, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$626	.dwtag  DW_TAG_member
	.dwattr $C$DW$626, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$626, DW_AT_name("rsvd2")
	.dwattr $C$DW$626, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$626, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$626, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$626, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$627	.dwtag  DW_TAG_member
	.dwattr $C$DW$627, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$627, DW_AT_name("all")
	.dwattr $C$DW$627, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$627, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$628	.dwtag  DW_TAG_member
	.dwattr $C$DW$628, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$628, DW_AT_name("bit")
	.dwattr $C$DW$628, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$628, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$629	.dwtag  DW_TAG_member
	.dwattr $C$DW$629, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$629, DW_AT_name("rsvd1")
	.dwattr $C$DW$629, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$629, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$629, DW_AT_bit_size(0x04)
	.dwattr $C$DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$629, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$630	.dwtag  DW_TAG_member
	.dwattr $C$DW$630, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$630, DW_AT_name("GPIOG4")
	.dwattr $C$DW$630, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$630, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$630, DW_AT_bit_size(0x01)
	.dwattr $C$DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$630, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$631	.dwtag  DW_TAG_member
	.dwattr $C$DW$631, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$631, DW_AT_name("GPIOG5")
	.dwattr $C$DW$631, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$631, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$631, DW_AT_bit_size(0x01)
	.dwattr $C$DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$631, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$632	.dwtag  DW_TAG_member
	.dwattr $C$DW$632, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$632, DW_AT_name("rsvd2")
	.dwattr $C$DW$632, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$632, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$632, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$632, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$633	.dwtag  DW_TAG_member
	.dwattr $C$DW$633, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$633, DW_AT_name("all")
	.dwattr $C$DW$633, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$633, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$634	.dwtag  DW_TAG_member
	.dwattr $C$DW$634, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$634, DW_AT_name("bit")
	.dwattr $C$DW$634, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$634, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x20)
$C$DW$635	.dwtag  DW_TAG_member
	.dwattr $C$DW$635, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$635, DW_AT_name("GPADAT")
	.dwattr $C$DW$635, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$635, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$636	.dwtag  DW_TAG_member
	.dwattr $C$DW$636, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$636, DW_AT_name("GPASET")
	.dwattr $C$DW$636, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$636, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$637	.dwtag  DW_TAG_member
	.dwattr $C$DW$637, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$637, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$637, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$637, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$638	.dwtag  DW_TAG_member
	.dwattr $C$DW$638, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$638, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$638, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$638, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$639	.dwtag  DW_TAG_member
	.dwattr $C$DW$639, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$639, DW_AT_name("GPBDAT")
	.dwattr $C$DW$639, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$639, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$640	.dwtag  DW_TAG_member
	.dwattr $C$DW$640, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$640, DW_AT_name("GPBSET")
	.dwattr $C$DW$640, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$640, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$641	.dwtag  DW_TAG_member
	.dwattr $C$DW$641, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$641, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$641, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$641, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$642	.dwtag  DW_TAG_member
	.dwattr $C$DW$642, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$642, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$642, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$642, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$643	.dwtag  DW_TAG_member
	.dwattr $C$DW$643, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$643, DW_AT_name("rsvd1")
	.dwattr $C$DW$643, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$643, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$644	.dwtag  DW_TAG_member
	.dwattr $C$DW$644, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$644, DW_AT_name("GPDDAT")
	.dwattr $C$DW$644, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$644, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$645	.dwtag  DW_TAG_member
	.dwattr $C$DW$645, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$645, DW_AT_name("GPDSET")
	.dwattr $C$DW$645, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$645, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$646	.dwtag  DW_TAG_member
	.dwattr $C$DW$646, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$646, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$646, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$646, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$647	.dwtag  DW_TAG_member
	.dwattr $C$DW$647, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$647, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$647, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$647, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$648	.dwtag  DW_TAG_member
	.dwattr $C$DW$648, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$648, DW_AT_name("GPEDAT")
	.dwattr $C$DW$648, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$648, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$649	.dwtag  DW_TAG_member
	.dwattr $C$DW$649, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$649, DW_AT_name("GPESET")
	.dwattr $C$DW$649, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$649, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$650	.dwtag  DW_TAG_member
	.dwattr $C$DW$650, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$650, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$650, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$650, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$651	.dwtag  DW_TAG_member
	.dwattr $C$DW$651, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$651, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$651, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$651, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$652	.dwtag  DW_TAG_member
	.dwattr $C$DW$652, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$652, DW_AT_name("GPFDAT")
	.dwattr $C$DW$652, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$652, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$653	.dwtag  DW_TAG_member
	.dwattr $C$DW$653, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$653, DW_AT_name("GPFSET")
	.dwattr $C$DW$653, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$653, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$654	.dwtag  DW_TAG_member
	.dwattr $C$DW$654, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$654, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$654, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$654, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$655	.dwtag  DW_TAG_member
	.dwattr $C$DW$655, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$655, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$655, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$655, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$656	.dwtag  DW_TAG_member
	.dwattr $C$DW$656, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$656, DW_AT_name("GPGDAT")
	.dwattr $C$DW$656, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$656, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$657	.dwtag  DW_TAG_member
	.dwattr $C$DW$657, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$657, DW_AT_name("GPGSET")
	.dwattr $C$DW$657, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$657, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$658	.dwtag  DW_TAG_member
	.dwattr $C$DW$658, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$658, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$658, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$658, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$659	.dwtag  DW_TAG_member
	.dwattr $C$DW$659, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$659, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$659, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$659, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$660	.dwtag  DW_TAG_member
	.dwattr $C$DW$660, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$660, DW_AT_name("rsvd2")
	.dwattr $C$DW$660, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$660, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$661	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$661, DW_AT_type(*$C$DW$T$69)

$C$DW$T$70	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$661)

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

$C$DW$662	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$662, DW_AT_type(*$C$DW$T$10)

$C$DW$T$98	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$662)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$663	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$663, DW_AT_type(*$C$DW$T$19)

$C$DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$663)

$C$DW$664	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$664, DW_AT_type(*$C$DW$T$19)

$C$DW$T$101	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$664)


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$665	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$665, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$68

$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)

$C$DW$666	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$666, DW_AT_type(*$C$DW$T$77)

$C$DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$666)


$C$DW$T$107	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x08)
$C$DW$667	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$667, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$107

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$119	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$119, DW_AT_name("Uint32")
	.dwattr $C$DW$T$119, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$119, DW_AT_language(DW_LANG_C)

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

$C$DW$T$89	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$89, DW_AT_address_class(0x20)

$C$DW$668	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$668, DW_AT_type(*$C$DW$T$5)

$C$DW$T$90	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$668)

$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)


$C$DW$T$122	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x50)
$C$DW$669	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$669, DW_AT_upper_bound(0x4f)

	.dwendtag $C$DW$T$122

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

$C$DW$670	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$670, DW_AT_name("AL")
	.dwattr $C$DW$670, DW_AT_location[DW_OP_reg0]

$C$DW$671	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$671, DW_AT_name("AH")
	.dwattr $C$DW$671, DW_AT_location[DW_OP_reg1]

$C$DW$672	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$672, DW_AT_name("PL")
	.dwattr $C$DW$672, DW_AT_location[DW_OP_reg2]

$C$DW$673	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$673, DW_AT_name("PH")
	.dwattr $C$DW$673, DW_AT_location[DW_OP_reg3]

$C$DW$674	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$674, DW_AT_name("SP")
	.dwattr $C$DW$674, DW_AT_location[DW_OP_reg20]

$C$DW$675	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$675, DW_AT_name("XT")
	.dwattr $C$DW$675, DW_AT_location[DW_OP_reg21]

$C$DW$676	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$676, DW_AT_name("T")
	.dwattr $C$DW$676, DW_AT_location[DW_OP_reg22]

$C$DW$677	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$677, DW_AT_name("ST0")
	.dwattr $C$DW$677, DW_AT_location[DW_OP_reg23]

$C$DW$678	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$678, DW_AT_name("ST1")
	.dwattr $C$DW$678, DW_AT_location[DW_OP_reg24]

$C$DW$679	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$679, DW_AT_name("PC")
	.dwattr $C$DW$679, DW_AT_location[DW_OP_reg25]

$C$DW$680	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$680, DW_AT_name("RPC")
	.dwattr $C$DW$680, DW_AT_location[DW_OP_reg26]

$C$DW$681	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$681, DW_AT_name("FP")
	.dwattr $C$DW$681, DW_AT_location[DW_OP_reg28]

$C$DW$682	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$682, DW_AT_name("DP")
	.dwattr $C$DW$682, DW_AT_location[DW_OP_reg29]

$C$DW$683	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$683, DW_AT_name("SXM")
	.dwattr $C$DW$683, DW_AT_location[DW_OP_reg30]

$C$DW$684	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$684, DW_AT_name("PM")
	.dwattr $C$DW$684, DW_AT_location[DW_OP_reg31]

$C$DW$685	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$685, DW_AT_name("OVM")
	.dwattr $C$DW$685, DW_AT_location[DW_OP_regx 0x20]

$C$DW$686	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$686, DW_AT_name("PAGE0")
	.dwattr $C$DW$686, DW_AT_location[DW_OP_regx 0x21]

$C$DW$687	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$687, DW_AT_name("AMODE")
	.dwattr $C$DW$687, DW_AT_location[DW_OP_regx 0x22]

$C$DW$688	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$688, DW_AT_name("INTM")
	.dwattr $C$DW$688, DW_AT_location[DW_OP_regx 0x23]

$C$DW$689	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$689, DW_AT_name("IFR")
	.dwattr $C$DW$689, DW_AT_location[DW_OP_regx 0x24]

$C$DW$690	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$690, DW_AT_name("IER")
	.dwattr $C$DW$690, DW_AT_location[DW_OP_regx 0x25]

$C$DW$691	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$691, DW_AT_name("V")
	.dwattr $C$DW$691, DW_AT_location[DW_OP_regx 0x26]

$C$DW$692	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$692, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$692, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$693	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$693, DW_AT_name("VOL")
	.dwattr $C$DW$693, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$694	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$694, DW_AT_name("AR0")
	.dwattr $C$DW$694, DW_AT_location[DW_OP_reg4]

$C$DW$695	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$695, DW_AT_name("XAR0")
	.dwattr $C$DW$695, DW_AT_location[DW_OP_reg5]

$C$DW$696	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$696, DW_AT_name("AR1")
	.dwattr $C$DW$696, DW_AT_location[DW_OP_reg6]

$C$DW$697	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$697, DW_AT_name("XAR1")
	.dwattr $C$DW$697, DW_AT_location[DW_OP_reg7]

$C$DW$698	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$698, DW_AT_name("AR2")
	.dwattr $C$DW$698, DW_AT_location[DW_OP_reg8]

$C$DW$699	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$699, DW_AT_name("XAR2")
	.dwattr $C$DW$699, DW_AT_location[DW_OP_reg9]

$C$DW$700	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$700, DW_AT_name("AR3")
	.dwattr $C$DW$700, DW_AT_location[DW_OP_reg10]

$C$DW$701	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$701, DW_AT_name("XAR3")
	.dwattr $C$DW$701, DW_AT_location[DW_OP_reg11]

$C$DW$702	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$702, DW_AT_name("AR4")
	.dwattr $C$DW$702, DW_AT_location[DW_OP_reg12]

$C$DW$703	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$703, DW_AT_name("XAR4")
	.dwattr $C$DW$703, DW_AT_location[DW_OP_reg13]

$C$DW$704	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$704, DW_AT_name("AR5")
	.dwattr $C$DW$704, DW_AT_location[DW_OP_reg14]

$C$DW$705	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$705, DW_AT_name("XAR5")
	.dwattr $C$DW$705, DW_AT_location[DW_OP_reg15]

$C$DW$706	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$706, DW_AT_name("AR6")
	.dwattr $C$DW$706, DW_AT_location[DW_OP_reg16]

$C$DW$707	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$707, DW_AT_name("XAR6")
	.dwattr $C$DW$707, DW_AT_location[DW_OP_reg17]

$C$DW$708	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$708, DW_AT_name("AR7")
	.dwattr $C$DW$708, DW_AT_location[DW_OP_reg18]

$C$DW$709	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$709, DW_AT_name("XAR7")
	.dwattr $C$DW$709, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


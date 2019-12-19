;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.4.LTS *
;* Date/Time created: Thu Dec 19 16:17:16 2019                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/SPICAN.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.4.LTS Copyright (c) 1996-2015 Texas Instruments Incorporated")
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
	.dwattr $C$DW$5, DW_AT_name("sprintf")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_sprintf")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$89)

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$91)

$C$DW$8	.dwtag  DW_TAG_unspecified_parameters

	.dwendtag $C$DW$5


$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("spi_recv")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_spi_recv")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwendtag $C$DW$9

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\266282 C:\\Users\\ebenton\\AppData\\Local\\Temp\\266284 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\2662812 
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
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0xe5)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 230,column 1,is_stmt,address _SPICAN_T0_RTS,isa 0

	.dwfde $C$DW$CIE, _SPICAN_T0_RTS
;----------------------------------------------------------------------
; 229 | void SPICAN_T0_RTS (void)                                              
; 231 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 232,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 232 | spi_xmit(SPICAN_RTS + 0x1);                                            
;----------------------------------------------------------------------
        MOVB      AL,#129               ; [CPU_] |232| 
	.dwpsn	file "../Source/SPICAN.c",line 231,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |231| 
	.dwpsn	file "../Source/SPICAN.c",line 232,column 2,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$12, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |232| 
        ; call occurs [#_spi_xmit] ; [] |232| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 233,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 233 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |233| 
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0xea)
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
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x5d)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 94,column 1,is_stmt,address _SPICANWrite,isa 0

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
;  93 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
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
        MOVZ      AR1,AH                ; [CPU_] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 94,column 1,is_stmt,isa 0
        MOVZ      AR2,AL                ; [CPU_] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$19, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |97| 
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |98| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$21, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
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
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x64)
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
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0xd7)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 216,column 1,is_stmt,address _SPICAN_SetT0Data,isa 0

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
; 215 | void SPICAN_SetT0Data(Uint16 numBytes, Uint16 *buf)                    
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
; 217 | Uint16 k;                                                              
; 219 | // Send how much data content there is                                 
; 220 | SPICANWrite(SPICAN_TXB0DLC, numBytes);                                 
; 222 | // Fill in the data buffer                                             
;----------------------------------------------------------------------
        MOVZ      AR2,AL                ; [CPU_] |216| 
        MOVL      XAR3,XAR4             ; [CPU_] |216| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#53                ; [CPU_] |97| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
        MOV       AL,AR2                ; [CPU_] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
        MOV       AL,AR2                ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 223,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 223 | for(k = 0; k < numBytes; k++)                                          
;----------------------------------------------------------------------
        B         $C$L2,EQ              ; [CPU_] |223| 
        ; branchcc occurs ; [] |223| 
        SUBB      XAR2,#1               ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 223,column 6,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_] |223| 
$C$L1:    
	.dwpsn	file "../Source/SPICAN.c",line 225,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | SPICANWrite(SPICAN_TXB0D0 + k, buf[k]);                                
;----------------------------------------------------------------------
        MOV       AL,*XAR3++            ; [CPU_] |225| 
        MOV       *-SP[1],AL            ; [CPU_] |225| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$32, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |97| 
        ADD       AL,AR1                ; [CPU_] |97| 
$C$DW$33	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$33, DW_AT_low_pc(0x00)
	.dwattr $C$DW$33, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$33, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
        MOV       AL,*-SP[1]            ; [CPU_] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
	.dwpsn	file "../Source/SPICAN.c",line 223,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |223| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 223,column 13,is_stmt,isa 0
        BANZ      $C$L1,AR2--           ; [CPU_] |223| 
        ; branchcc occurs ; [] |223| 
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
	.dwattr $C$DW$23, DW_AT_TI_end_line(0xe3)
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
	.dwattr $C$DW$36, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$36, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$36, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 196,column 1,is_stmt,address _SPICAN_SetT0Addr,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Addr
$C$DW$37	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$37, DW_AT_name("canAddress")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 195 | void SPICAN_SetT0Addr(Uint16 canAddress)                               
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
; 197 | Uint16 addrHi, addrLo;                                                 
; 199 | // First grab the important bits                                       
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |196| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 200,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | addrHi = canAddress & 0x7F8;                                           
;----------------------------------------------------------------------
        AND       AH,AR1,#0x07f8        ; [CPU_] |200| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 201 | addrLo = canAddress & 0x7;                                             
;----------------------------------------------------------------------
        AND       AL,AR1,#0x0007        ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 200,column 2,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |200| 
	.dwpsn	file "../Source/SPICAN.c",line 201,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 203 | // Now shift them to the right places                                  
; 204 | addrHi = addrHi >> 3;                                                  
; 205 | addrLo = addrLo << 5;                                                  
; 207 | // Set up the ID (X - unused, H - Hi, L - Lo)                          
; 208 | // Want to first send 0bHHHHHHHH                                       
; 209 | SPICANWrite(SPICAN_TXB0SIDH, addrHi); // H (SID10 - SID3)              
; 210 | // Then want to send 0bLLL00000                                        
; 211 | SPICANWrite(SPICAN_TXB0SIDL, addrLo); // L (SID2 - SID0)               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |201| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_] |97| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
        MOV       AL,AR2                ; [CPU_] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        LSR       AL,3                  ; [CPU_] |98| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$44, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_] |97| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$45, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
        MOV       AL,AR1                ; [CPU_] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        LSL       AL,5                  ; [CPU_] |98| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$46, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
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
	.dwattr $C$DW$36, DW_AT_TI_end_line(0xd4)
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
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x4f)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 80,column 1,is_stmt,address _SPICANRead,isa 0

	.dwfde $C$DW$CIE, _SPICANRead
$C$DW$49	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$49, DW_AT_name("Input")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  79 | Uint16 SPICANRead (Uint16 Input)                                       
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
;  81 | Uint16  RetVal;                                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |80| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$51, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |84| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_spi_recv")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  87 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$48, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0x58)
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
	.dwattr $C$DW$55, DW_AT_TI_begin_line(0x11e)
	.dwattr $C$DW$55, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$55, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 287,column 1,is_stmt,address _SPICANWaitForTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANWaitForTXBuf
$C$DW$56	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$56, DW_AT_name("buf_num")
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$56, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$56, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 286 | void SPICANWaitForTXBuf(Uint16 buf_num)                                
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
; 288 | Uint16 res;                                                            
; 289 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |287| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #8         ; [CPU_] |84| 
        ADDB      AL,#48                ; [CPU_] |84| 
        MOVZ      AR1,AL                ; [CPU_] |84| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_spi_recv")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 290,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 290 | while((res & 0x08) == 0x08)                                            
;----------------------------------------------------------------------
        B         $C$L4,UNC             ; [CPU_] |290| 
        ; branch occurs ; [] |290| 
$C$L3:    
	.dwpsn	file "../Source/SPICAN.c",line 292,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 292 | delay_us(1);                                                           
; 293 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |292| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_delay_us")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |292| 
        ; call occurs [#_delay_us] ; [] |292| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$63, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |84| 
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$64, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_spi_recv")
	.dwattr $C$DW$65, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
$C$L4:    
	.dwpsn	file "../Source/SPICAN.c",line 290,column 8,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_] |290| 
        B         $C$L3,TC              ; [CPU_] |290| 
        ; branchcc occurs ; [] |290| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$55, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$55, DW_AT_TI_end_line(0x127)
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
	.dwattr $C$DW$67, DW_AT_TI_begin_line(0x110)
	.dwattr $C$DW$67, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$67, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 273,column 1,is_stmt,address _SPICANVerifyTXBuf,isa 0

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
; 272 | int SPICANVerifyTXBuf(Uint16 buf, Uint16 data_check[])                 
; 274 | Uint16 data[8];                                                        
; 275 | int k;                                                                 
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
	.dwpsn	file "../Source/SPICAN.c",line 276,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 276 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        MOVB      XAR1,#0               ; [CPU_] |276| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] 
$C$L5:    
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |84| 
        ADD       AL,AR1                ; [CPU_] |84| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_spi_recv")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 278,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 278 | if(data_check[k] != SPICANRead(SPICAN_TXB0D0 + k))                     
;----------------------------------------------------------------------
        MOVZ      AR6,*+XAR2[0]         ; [CPU_] |278| 
        MOVU      ACC,AL                ; [CPU_] |278| 
        CMPL      ACC,XAR6              ; [CPU_] |278| 
        B         $C$L6,EQ              ; [CPU_] |278| 
        ; branchcc occurs ; [] |278| 
	.dwpsn	file "../Source/SPICAN.c",line 280,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |280| 
        B         $C$L7,UNC             ; [CPU_] |280| 
        ; branch occurs ; [] |280| 
$C$L6:    
	.dwpsn	file "../Source/SPICAN.c",line 276,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |276| 
        ADDB      XAR2,#1               ; [CPU_] |276| 
        MOV       AL,AR1                ; [CPU_] |276| 
        CMPB      AL,#8                 ; [CPU_] |276| 
        B         $C$L5,LT              ; [CPU_] |276| 
        ; branchcc occurs ; [] |276| 
	.dwpsn	file "../Source/SPICAN.c",line 283,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 283 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |283| 
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
	.dwattr $C$DW$67, DW_AT_TI_end_line(0x11c)
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
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x73)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 116,column 1,is_stmt,address _SPICANSetNorm,isa 0

	.dwfde $C$DW$CIE, _SPICANSetNorm
;----------------------------------------------------------------------
; 115 | void SPICANSetNorm (void)                                              
; 117 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 118 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |117| 
	.dwpsn	file "../Source/SPICAN.c",line 118,column 2,is_stmt,isa 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |118| 
        ; call occurs [#_spi_xmit] ; [] |118| 
	.dwpsn	file "../Source/SPICAN.c",line 119,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 119 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |119| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$79, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |119| 
        ; call occurs [#_spi_xmit] ; [] |119| 
	.dwpsn	file "../Source/SPICAN.c",line 120,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |120| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$80, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |120| 
        ; call occurs [#_spi_xmit] ; [] |120| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 121 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |121| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x7a)
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
	.dwattr $C$DW$82, DW_AT_TI_begin_line(0xab)
	.dwattr $C$DW$82, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$82, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 172,column 1,is_stmt,address _SPICANReadBuf_Array,isa 0

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
; 171 | void SPICANReadBuf_Array (Uint16 data[], Uint16 whichBuf)              
; 173 | int k;                                                                 
; 174 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 175,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 175 | spi_xmit(SPICAN_RXBUF0 + 4 * whichBuf);                                
;----------------------------------------------------------------------
        MOV       ACC,AL << #2          ; [CPU_] |175| 
	.dwpsn	file "../Source/SPICAN.c",line 172,column 1,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_] |172| 
	.dwpsn	file "../Source/SPICAN.c",line 174,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |174| 
	.dwpsn	file "../Source/SPICAN.c",line 175,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        ADD       AL,#146               ; [CPU_] |175| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$87, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |175| 
        ; call occurs [#_spi_xmit] ; [] |175| 
        MOVB      XAR2,#7               ; [CPU_] 
$C$L8:    
	.dwpsn	file "../Source/SPICAN.c",line 178,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 178 | data[k] = spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_name("_spi_recv")
	.dwattr $C$DW$88, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |178| 
        ; call occurs [#_spi_recv] ; [] |178| 
        MOV       *XAR1++,AL            ; [CPU_] |178| 
	.dwpsn	file "../Source/SPICAN.c",line 176,column 13,is_stmt,isa 0
        BANZ      $C$L8,AR2--           ; [CPU_] |176| 
        ; branchcc occurs ; [] |176| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 180,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 180 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |180| 
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
	.dwattr $C$DW$82, DW_AT_TI_end_line(0xb5)
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
	.dwattr $C$DW$90, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$90, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$90, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 185,column 1,is_stmt,address _SPICANReadSetT0Message,isa 0

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
; 184 | void SPICANReadSetT0Message(Uint16 canAddress, Uint16 numBytes, Uint16
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
; 186 | // Set the new address                                                 
;----------------------------------------------------------------------
        MOVZ      AR1,AH                ; [CPU_] |185| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] |185| 
	.dwpsn	file "../Source/SPICAN.c",line 187,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | SPICAN_SetT0Addr(canAddress);                                          
; 189 | // Set the data                                                        
;----------------------------------------------------------------------
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Addr    ; [CPU_] |187| 
        ; call occurs [#_SPICAN_SetT0Addr] ; [] |187| 
	.dwpsn	file "../Source/SPICAN.c",line 190,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | SPICAN_SetT0Data(numBytes, buf);                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |190| 
        MOVL      XAR4,XAR2             ; [CPU_] |190| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Data    ; [CPU_] |190| 
        ; call occurs [#_SPICAN_SetT0Data] ; [] |190| 
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
	.dwattr $C$DW$90, DW_AT_TI_end_line(0xbf)
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
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x129)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../Source/SPICAN.c",line 298,column 1,is_stmt,address _SPICANBitModify,isa 0

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
; 297 | void SPICANBitModify(Uint16 address, Uint16 mask, Uint16 data_byte)    
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
        MOVZ      AR1,AR4               ; [CPU_] |298| 
	.dwpsn	file "../Source/SPICAN.c",line 299,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 299 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |299| 
	.dwpsn	file "../Source/SPICAN.c",line 298,column 1,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |298| 
        MOVL      *SP++,XAR3            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOVZ      AR3,AL                ; [CPU_] |298| 
	.dwpsn	file "../Source/SPICAN.c",line 300,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 300 | spi_xmit(0x05);                                         //Bit modify co
;     | mmand                                                                  
;----------------------------------------------------------------------
        MOVB      AL,#5                 ; [CPU_] |300| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |300| 
        ; call occurs [#_spi_xmit] ; [] |300| 
	.dwpsn	file "../Source/SPICAN.c",line 301,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 301 | spi_xmit(address);
;     |          //Write location                                              
;----------------------------------------------------------------------
        MOV       AL,AR3                ; [CPU_] |301| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |301| 
        ; call occurs [#_spi_xmit] ; [] |301| 
	.dwpsn	file "../Source/SPICAN.c",line 302,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 302 | spi_xmit(mask);                                                 //Write
;     |  Info                                                                  
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |302| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |302| 
        ; call occurs [#_spi_xmit] ; [] |302| 
	.dwpsn	file "../Source/SPICAN.c",line 303,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | spi_xmit(data_byte);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |303| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |303| 
        ; call occurs [#_spi_xmit] ; [] |303| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 304,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 304 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |304| 
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
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x131)
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
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x19a)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-14)
	.dwpsn	file "../Source/SPICAN.c",line 411,column 1,is_stmt,address _SPICANRoutine,isa 0

	.dwfde $C$DW$CIE, _SPICANRoutine
;----------------------------------------------------------------------
; 410 | void SPICANRoutine(void)                                               
; 412 | Uint16 interrupts;                                                     
; 413 | // Check interrupts for what all happened                              
; 414 | interrupts = SPICANRead(0x2C);                                         
; 416 | // TX Interrupts                                                       
; 418 | // RX Interrupts                                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRoutine                FR SIZE:  12           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  4 SOE     *
;***************************************************************

_SPICANRoutine:
;* AL    assigned to _RetVal
$C$DW$112	.dwtag  DW_TAG_variable
	.dwattr $C$DW$112, DW_AT_name("RetVal")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _bits_to_flip
$C$DW$113	.dwtag  DW_TAG_variable
	.dwattr $C$DW$113, DW_AT_name("bits_to_flip")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_bits_to_flip")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _interrupts
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("interrupts")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_interrupts")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg8]

$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("arr")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_arr")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_breg20 -8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        ADDB      SP,#8                 ; [CPU_U] 
	.dwcfi	cfa_offset, -14
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |84| 
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_spi_recv")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
        MOVZ      AR2,AL                ; [CPU_] |87| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 419,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 419 | if((interrupts & 0x03) > 0x00)                                         
; 422 |         Uint16 arr[8];                                                 
; 423 |         char bits_to_flip = 0x00;                                      
; 425 |         // RX1 Interrupt                                               
;----------------------------------------------------------------------
        AND       AL,AR2,#0x0003        ; [CPU_] |419| 
        B         $C$L11,EQ             ; [CPU_] |419| 
        ; branchcc occurs ; [] |419| 
	.dwpsn	file "../Source/SPICAN.c",line 426,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 426 | if((interrupts & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      AR2,#1                ; [CPU_] |426| 
	.dwpsn	file "../Source/SPICAN.c",line 423,column 21,is_stmt,isa 0
        MOVB      XAR1,#0,NTC           ; [CPU_] |423| 
        B         $C$L9,NTC             ; [CPU_] 
        ; branchcc occurs ; [] 
	.dwpsn	file "../Source/SPICAN.c",line 428,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 428 | SPICANReadBuf_Array(arr, 0);                                           
; 429 | // For now, send back dummy data                                       
; 430 | // Wait for the TX Buffer to be ready                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |428| 
        MOVB      AL,#0                 ; [CPU_] |428| 
        SUBB      XAR4,#8               ; [CPU_U] |428| 
        MOVZ      AR4,AR4               ; [CPU_] |428| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$119, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |428| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |428| 
	.dwpsn	file "../Source/SPICAN.c",line 431,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 431 | SPICANWaitForTXBuf(0);                                                 
; 432 | // Set the message on the buffer                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |431| 
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$120, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |431| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |431| 
	.dwpsn	file "../Source/SPICAN.c",line 433,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 433 | SPICANReadSetT0Message(0x32, 8, arr);                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |433| 
        MOVB      AL,#50                ; [CPU_] |433| 
        MOVB      AH,#8                 ; [CPU_] |433| 
        SUBB      XAR4,#8               ; [CPU_U] |433| 
        MOVZ      AR4,AR4               ; [CPU_] |433| 
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_SPICANReadSetT0Message ; [CPU_] |433| 
        ; call occurs [#_SPICANReadSetT0Message] ; [] |433| 
	.dwpsn	file "../Source/SPICAN.c",line 434,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 434 | SPICANWaitForTXBuf(0);                                                 
; 435 | // Signal that the message is ready to send                            
; 436 | // SPICAN_T0_RTS();                                                    
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |434| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |434| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |434| 
	.dwpsn	file "../Source/SPICAN.c",line 437,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 437 | bits_to_flip |= 0x02;                                                  
; 439 | // RX0 Interrupt                                                       
;----------------------------------------------------------------------
        MOVB      XAR1,#2               ; [CPU_] |437| 
$C$L9:    
	.dwpsn	file "../Source/SPICAN.c",line 440,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 440 | if((interrupts & 0x01) == 0x01)                                        
;----------------------------------------------------------------------
        TBIT      AR2,#0                ; [CPU_] |440| 
        B         $C$L10,NTC            ; [CPU_] |440| 
        ; branchcc occurs ; [] |440| 
	.dwpsn	file "../Source/SPICAN.c",line 442,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 442 | SPICANReadBuf_Array(arr, 1);                                           
; 443 | // For now, send back dummy data                                       
; 444 | // Wait for the TX Buffer to be ready                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |442| 
        MOVB      AL,#1                 ; [CPU_] |442| 
        SUBB      XAR4,#8               ; [CPU_U] |442| 
        MOVZ      AR4,AR4               ; [CPU_] |442| 
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |442| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |442| 
	.dwpsn	file "../Source/SPICAN.c",line 445,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 445 | SPICANWaitForTXBuf(0);                                                 
; 446 | // Set the message on the buffer                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |445| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$124, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |445| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |445| 
	.dwpsn	file "../Source/SPICAN.c",line 447,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 447 | SPICANReadSetT0Message(0x43, 8, arr);                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |447| 
        MOVB      AL,#67                ; [CPU_] |447| 
        MOVB      AH,#8                 ; [CPU_] |447| 
        SUBB      XAR4,#8               ; [CPU_U] |447| 
        MOVZ      AR4,AR4               ; [CPU_] |447| 
$C$DW$125	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$125, DW_AT_low_pc(0x00)
	.dwattr $C$DW$125, DW_AT_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$125, DW_AT_TI_call

        LCR       #_SPICANReadSetT0Message ; [CPU_] |447| 
        ; call occurs [#_SPICANReadSetT0Message] ; [] |447| 
	.dwpsn	file "../Source/SPICAN.c",line 448,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 448 | SPICANWaitForTXBuf(0);                                                 
; 449 | // Signal that the message is ready to send                            
; 450 | // SPICAN_T0_RTS();                                                    
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |448| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$126, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |448| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |448| 
        MOV       AL,AR1                ; [CPU_] |448| 
	.dwpsn	file "../Source/SPICAN.c",line 451,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 451 | bits_to_flip |= 0x01;                                                  
;----------------------------------------------------------------------
        ORB       AL,#0x01              ; [CPU_] |451| 
        MOVZ      AR1,AL                ; [CPU_] |451| 
$C$L10:    
        MOV       AH,AR1                ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 453,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 453 | SPICANBitModify(0x2C, bits_to_flip, 0x00);                             
; 456 | // Clear the interrupts                                                
; 457 | // SPICANWrite(0x0E, 0x00);                                            
; 458 | // SPICANWrite(0x2C, 0x00);                                            
; 459 | //      SPICANCheckInts(447);                                          
; 460 | return;                                                                
;----------------------------------------------------------------------
        MOVB      AL,#44                ; [CPU_] |453| 
        MOVB      XAR4,#0               ; [CPU_] |453| 
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |453| 
        ; call occurs [#_SPICANBitModify] ; [] |453| 
$C$L11:    
        SUBB      SP,#8                 ; [CPU_U] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x1cd)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.global	_SPICANReset

$C$DW$129	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$129, DW_AT_name("SPICANReset")
	.dwattr $C$DW$129, DW_AT_low_pc(_SPICANReset)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_SPICANReset")
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0x45)
	.dwattr $C$DW$129, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 70,column 1,is_stmt,address _SPICANReset,isa 0

	.dwfde $C$DW$CIE, _SPICANReset
;----------------------------------------------------------------------
;  69 | void SPICANReset (void)                                                
;  71 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0x4a)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$129

	.sect	".text"
	.clink
	.global	_SPICANReadyConfig

$C$DW$132	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$132, DW_AT_name("SPICANReadyConfig")
	.dwattr $C$DW$132, DW_AT_low_pc(_SPICANReadyConfig)
	.dwattr $C$DW$132, DW_AT_high_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_SPICANReadyConfig")
	.dwattr $C$DW$132, DW_AT_external
	.dwattr $C$DW$132, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$132, DW_AT_TI_begin_line(0x26)
	.dwattr $C$DW$132, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$132, DW_AT_TI_max_frame_size(-2)
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
;  49 | // Set up filters for RX buffs                                         
;  50 | while(SPICANRead(0x00) != 0x80)                                        
;  51 |         SPICANWrite(0x00, 0x80);                                       
;  53 | while(SPICANRead(0x01) != 0x00)                                        
;  54 |         SPICANWrite(0x01, 0x00);                                       
;  56 | // Set up masks for RX buffs                                           
;  57 | while(SPICANRead(0x20) != 0xF9)                                        
;  58 |         SPICANWrite(0x20, 0xF9);                                       
;  60 | while(SPICANRead(0x21) != 0x80)                                        
;  61 |         SPICANWrite(0x21, 0x80);                                       
;  63 | // MASK: 111 1100 1000                                                 
;  64 | // FILT: 100 0000 0000                                                 
;  65 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  66 | return;                                                                
;  69 | void SPICANReset (void)                                                
;  71 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  72 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;  73 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  76 | // Responsible for reading the status of a                             
;  77 | // register address on the SPICAN Control Register                     
;  78 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  79 | Uint16 SPICANRead (Uint16 Input)                                       
;  81 | Uint16  RetVal;                                                        
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$133, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |84| 
$C$DW$134	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$134, DW_AT_low_pc(0x00)
	.dwattr $C$DW$134, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$134, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_spi_recv")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 42,column 8,is_stmt,isa 0
        ANDB      AL,#224               ; [CPU_] |42| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 42,column 8,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |42| 
        B         $C$L13,EQ             ; [CPU_] |42| 
        ; branchcc occurs ; [] |42| 
$C$L12:    
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_] |84| 
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_spi_recv")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | return(RetVal);                                                        
;----------------------------------------------------------------------
        ANDB      AL,#224               ; [CPU_] |87| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |87| 
        B         $C$L12,NEQ            ; [CPU_] |87| 
        ; branchcc occurs ; [] |87| 
$C$L13:    
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$132, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$132, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$132, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$132

	.sect	".text"
	.clink
	.global	_SPICANReadStat

$C$DW$140	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$140, DW_AT_name("SPICANReadStat")
	.dwattr $C$DW$140, DW_AT_low_pc(_SPICANReadStat)
	.dwattr $C$DW$140, DW_AT_high_pc(0x00)
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_SPICANReadStat")
	.dwattr $C$DW$140, DW_AT_external
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$140, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$140, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$140, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 105,column 1,is_stmt,address _SPICANReadStat,isa 0

	.dwfde $C$DW$CIE, _SPICANReadStat
;----------------------------------------------------------------------
; 104 | Uint16 SPICANReadStat (void)                                           
; 106 | Uint16  RetVal;                                                        
; 107 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |107| 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |108| 
        ; call occurs [#_spi_xmit] ; [] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 109,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |109| 
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |109| 
        ; call occurs [#_spi_xmit] ; [] |109| 
	.dwpsn	file "../Source/SPICAN.c",line 110,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 110 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_spi_recv")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |110| 
        ; call occurs [#_spi_recv] ; [] |110| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 111,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 111 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
; 112 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |111| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$140, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$140, DW_AT_TI_end_line(0x71)
	.dwattr $C$DW$140, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$140

	.sect	".text"
	.clink
	.global	_SPICANReadInts

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("SPICANReadInts")
	.dwattr $C$DW$145, DW_AT_low_pc(_SPICANReadInts)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_SPICANReadInts")
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$145, DW_AT_TI_begin_line(0x133)
	.dwattr $C$DW$145, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 308,column 1,is_stmt,address _SPICANReadInts,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInts
;----------------------------------------------------------------------
; 307 | Uint16 SPICANReadInts(void)                                            
; 309 | Uint16 count, res;                                                     
; 310 | count = 0;                                                             
; 311 | res = SPICANRead(0x2C);                                                
; 312 | while(res == 0xFF)                                                     
; 314 |         // delay_us(1);                                                
; 315 |         res = SPICANRead(0x2C);                                        
; 317 | return res;                                                            
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
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("res")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |84| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_spi_recv")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |87| 
        B         $C$L15,NEQ            ; [CPU_] |87| 
        ; branchcc occurs ; [] |87| 
$C$L14:    
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$150, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |84| 
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_spi_recv")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |87| 
        B         $C$L14,EQ             ; [CPU_] |87| 
        ; branchcc occurs ; [] |87| 
$C$L15:    
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0x13e)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text"
	.clink
	.global	_SPICANReadInt

$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("SPICANReadInt")
	.dwattr $C$DW$154, DW_AT_low_pc(_SPICANReadInt)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_SPICANReadInt")
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$154, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 134,column 1,is_stmt,address _SPICANReadInt,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInt
;----------------------------------------------------------------------
; 133 | Uint16 SPICANReadInt (void)                                            
; 135 | Uint16 RetVal;                                                         
; 136 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 137,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 137 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |137| 
	.dwpsn	file "../Source/SPICAN.c",line 136,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |136| 
	.dwpsn	file "../Source/SPICAN.c",line 137,column 2,is_stmt,isa 0
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |137| 
        ; call occurs [#_spi_xmit] ; [] |137| 
	.dwpsn	file "../Source/SPICAN.c",line 138,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |138| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |138| 
        ; call occurs [#_spi_xmit] ; [] |138| 
	.dwpsn	file "../Source/SPICAN.c",line 139,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 139 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_spi_recv")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |139| 
        ; call occurs [#_spi_recv] ; [] |139| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 140,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |140| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x8d)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text"
	.clink
	.global	_SPICANRXStatus

$C$DW$159	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$159, DW_AT_name("SPICANRXStatus")
	.dwattr $C$DW$159, DW_AT_low_pc(_SPICANRXStatus)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_SPICANRXStatus")
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$159, DW_AT_TI_begin_line(0x8f)
	.dwattr $C$DW$159, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$159, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 144,column 1,is_stmt,address _SPICANRXStatus,isa 0

	.dwfde $C$DW$CIE, _SPICANRXStatus
;----------------------------------------------------------------------
; 143 | Uint16 SPICANRXStatus (void)                                           
; 145 | Uint16  RetVal;                                                        
; 146 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$160	.dwtag  DW_TAG_variable
	.dwattr $C$DW$160, DW_AT_name("RetVal")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 147,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | spi_xmit(SPICAN_RXSTAT);                                               
;----------------------------------------------------------------------
        MOVB      AL,#176               ; [CPU_] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 146,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |146| 
	.dwpsn	file "../Source/SPICAN.c",line 147,column 2,is_stmt,isa 0
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |147| 
        ; call occurs [#_spi_xmit] ; [] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 148,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_spi_recv")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |148| 
        ; call occurs [#_spi_recv] ; [] |148| 
        MOVZ      AR1,AL                ; [CPU_] |148| 
	.dwpsn	file "../Source/SPICAN.c",line 149,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_spi_recv")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |149| 
        ; call occurs [#_spi_recv] ; [] |149| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |150| 
	.dwpsn	file "../Source/SPICAN.c",line 151,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |151| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$159, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x98)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$159

	.sect	".text"
	.clink
	.global	_SPICANRXBufReady

$C$DW$165	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$165, DW_AT_name("SPICANRXBufReady")
	.dwattr $C$DW$165, DW_AT_low_pc(_SPICANRXBufReady)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_SPICANRXBufReady")
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0xec)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 237,column 1,is_stmt,address _SPICANRXBufReady,isa 0

	.dwfde $C$DW$CIE, _SPICANRXBufReady
;----------------------------------------------------------------------
; 236 | Uint16 SPICANRXBufReady(void)                                          
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
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("RetVal")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 147,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 146,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |146| 
	.dwpsn	file "../Source/SPICAN.c",line 147,column 2,is_stmt,isa 0
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |147| 
        ; call occurs [#_spi_xmit] ; [] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 148,column 2,is_stmt,isa 0
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_spi_recv")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |148| 
        ; call occurs [#_spi_recv] ; [] |148| 
        MOVZ      AR1,AL                ; [CPU_] |148| 
	.dwpsn	file "../Source/SPICAN.c",line 149,column 2,is_stmt,isa 0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_spi_recv")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |149| 
        ; call occurs [#_spi_recv] ; [] |149| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 238,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | return (SPICANRXStatus() & 0xC0) >> 6;                                 
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |238| 
	.dwpsn	file "../Source/SPICAN.c",line 150,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |150| 
	.dwpsn	file "../Source/SPICAN.c",line 238,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |238| 
        ANDB      AL,#0x03              ; [CPU_] |238| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$165, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0xef)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165

	.sect	".text"
	.clink
	.global	_SPICANReadBufs

$C$DW$171	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$171, DW_AT_name("SPICANReadBufs")
	.dwattr $C$DW$171, DW_AT_low_pc(_SPICANReadBufs)
	.dwattr $C$DW$171, DW_AT_high_pc(0x00)
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_SPICANReadBufs")
	.dwattr $C$DW$171, DW_AT_external
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$171, DW_AT_TI_begin_line(0xf1)
	.dwattr $C$DW$171, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$171, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 242,column 1,is_stmt,address _SPICANReadBufs,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBufs
$C$DW$172	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$172, DW_AT_name("buf1")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$172, DW_AT_location[DW_OP_reg12]

$C$DW$173	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$173, DW_AT_name("buf2")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$173, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 241 | Uint16 SPICANReadBufs(Uint16 buf1[], Uint16 buf2[])                    
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
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("RetVal")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg6]

$C$DW$175	.dwtag  DW_TAG_variable
	.dwattr $C$DW$175, DW_AT_name("res")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_location[DW_OP_breg20 -1]

$C$DW$176	.dwtag  DW_TAG_variable
	.dwattr $C$DW$176, DW_AT_name("buf_status")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_buf_status")
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_location[DW_OP_breg20 -2]

;* AR3   assigned to _buf2
$C$DW$177	.dwtag  DW_TAG_variable
	.dwattr $C$DW$177, DW_AT_name("buf2")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$177, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _buf1
$C$DW$178	.dwtag  DW_TAG_variable
	.dwattr $C$DW$178, DW_AT_name("buf1")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$102)
	.dwattr $C$DW$178, DW_AT_location[DW_OP_reg8]

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
	.dwpsn	file "../Source/SPICAN.c",line 147,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 242,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | Uint16 buf_status;                                                     
;----------------------------------------------------------------------
        MOVL      XAR3,XAR5             ; [CPU_] |242| 
        MOVL      XAR2,XAR4             ; [CPU_] |242| 
	.dwpsn	file "../Source/SPICAN.c",line 146,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |146| 
	.dwpsn	file "../Source/SPICAN.c",line 147,column 2,is_stmt,isa 0
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |147| 
        ; call occurs [#_spi_xmit] ; [] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 148,column 2,is_stmt,isa 0
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_spi_recv")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |148| 
        ; call occurs [#_spi_recv] ; [] |148| 
        MOVZ      AR1,AL                ; [CPU_] |148| 
	.dwpsn	file "../Source/SPICAN.c",line 149,column 2,is_stmt,isa 0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_spi_recv")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |149| 
        ; call occurs [#_spi_recv] ; [] |149| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 238,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |238| 
	.dwpsn	file "../Source/SPICAN.c",line 244,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 244 | Uint16 res = 0x00;                                                     
; 246 | // Get the status of the RX Buffs                                      
; 247 | buf_status = SPICANRXBufReady();                                       
; 248 | // buf_status = SPICANRead(0x2C); // Get the interrupt status          
; 249 | // SPICANWrite(0x2C, (buf_status & 0xFC)); // Reset the RX interrupts  
; 250 | // buf_status = (buf_status & 0x03);                                   
; 252 | // Check if there's a message in the RX Buffers                        
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_] |244| 
	.dwpsn	file "../Source/SPICAN.c",line 150,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |150| 
	.dwpsn	file "../Source/SPICAN.c",line 238,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |238| 
        ANDB      AL,#0x03              ; [CPU_] |238| 
        MOV       *-SP[2],AL            ; [CPU_] |238| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | if(buf_status != 0x00)                                                 
; 255 |         // First RX Buffer 0                                           
;----------------------------------------------------------------------
        B         $C$L17,EQ             ; [CPU_] |253| 
        ; branchcc occurs ; [] |253| 
	.dwpsn	file "../Source/SPICAN.c",line 256,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 256 | if((buf_status & 0x01) == 0x01)                                        
;----------------------------------------------------------------------
        TBIT      AR1,#6                ; [CPU_] |256| 
        B         $C$L16,NTC            ; [CPU_] |256| 
        ; branchcc occurs ; [] |256| 
	.dwpsn	file "../Source/SPICAN.c",line 258,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 258 | SPICANReadBuf_Array(buf1, 0);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR2             ; [CPU_] |258| 
        MOVB      AL,#0                 ; [CPU_] |258| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |258| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |258| 
	.dwpsn	file "../Source/SPICAN.c",line 259,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 259 | res |= 0x01;                                                           
; 262 | // Second RX Buffer 1                                                  
;----------------------------------------------------------------------
        MOV       *-SP[1],#1            ; [CPU_] |259| 
$C$L16:    
        MOV       AL,*-SP[2]            ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 263,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 263 | if((buf_status & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      AL,#1                 ; [CPU_] |263| 
        B         $C$L17,NTC            ; [CPU_] |263| 
        ; branchcc occurs ; [] |263| 
	.dwpsn	file "../Source/SPICAN.c",line 265,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | SPICANReadBuf_Array(buf2, 1);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR3             ; [CPU_] |265| 
        MOVB      AL,#1                 ; [CPU_] |265| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |265| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |265| 
        MOV       AL,*-SP[1]            ; [CPU_] |265| 
	.dwpsn	file "../Source/SPICAN.c",line 266,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 266 | res |= 0x02;                                                           
; 269 | return res;                                                            
;----------------------------------------------------------------------
        ORB       AL,#0x02              ; [CPU_] |266| 
        MOV       *-SP[1],AL            ; [CPU_] |266| 
$C$L17:    
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
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$171, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$171, DW_AT_TI_end_line(0x10e)
	.dwattr $C$DW$171, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$171

	.sect	".text"
	.clink
	.global	_SPICANReadBuf1

$C$DW$185	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$185, DW_AT_name("SPICANReadBuf1")
	.dwattr $C$DW$185, DW_AT_low_pc(_SPICANReadBuf1)
	.dwattr $C$DW$185, DW_AT_high_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_SPICANReadBuf1")
	.dwattr $C$DW$185, DW_AT_external
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$185, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$185, DW_AT_TI_begin_line(0x9a)
	.dwattr $C$DW$185, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$185, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 155,column 1,is_stmt,address _SPICANReadBuf1,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf1
;----------------------------------------------------------------------
; 154 | Uint32 SPICANReadBuf1 (void)                                           
; 156 | Uint32  RetVal;                                                        
; 157 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$186	.dwtag  DW_TAG_variable
	.dwattr $C$DW$186, DW_AT_name("RetVal")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$119)
	.dwattr $C$DW$186, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 158,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 158 | spi_xmit(SPICAN_RXBUF1);                                               
;----------------------------------------------------------------------
        MOVB      AL,#150               ; [CPU_] |158| 
	.dwpsn	file "../Source/SPICAN.c",line 157,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |157| 
	.dwpsn	file "../Source/SPICAN.c",line 158,column 2,is_stmt,isa 0
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |158| 
        ; call occurs [#_spi_xmit] ; [] |158| 
	.dwpsn	file "../Source/SPICAN.c",line 159,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 159 | RetVal = spi_recv() << 24;                                             
;----------------------------------------------------------------------
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_spi_recv")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |159| 
        ; call occurs [#_spi_recv] ; [] |159| 
	.dwpsn	file "../Source/SPICAN.c",line 160,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 160 | RetVal |= spi_recv() << 16;                                            
;----------------------------------------------------------------------
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_spi_recv")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |160| 
        ; call occurs [#_spi_recv] ; [] |160| 
	.dwpsn	file "../Source/SPICAN.c",line 161,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 161 | RetVal |= spi_recv() << 8;                                             
;----------------------------------------------------------------------
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_spi_recv")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |161| 
        ; call occurs [#_spi_recv] ; [] |161| 
        MOV       ACC,AL << #8          ; [CPU_] |161| 
        MOVZ      AR1,AL                ; [CPU_] |161| 
	.dwpsn	file "../Source/SPICAN.c",line 162,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | RetVal |= spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_spi_recv")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |162| 
        ; call occurs [#_spi_recv] ; [] |162| 
        MOVZ      AR6,AL                ; [CPU_] |162| 
        MOVL      ACC,XAR1              ; [CPU_] |162| 
        OR        ACC,AR6               ; [CPU_] |162| 
        MOVL      XAR1,ACC              ; [CPU_] |162| 
	.dwpsn	file "../Source/SPICAN.c",line 163,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_spi_recv")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |163| 
        ; call occurs [#_spi_recv] ; [] |163| 
	.dwpsn	file "../Source/SPICAN.c",line 164,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 164 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_spi_recv")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |164| 
        ; call occurs [#_spi_recv] ; [] |164| 
	.dwpsn	file "../Source/SPICAN.c",line 165,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_spi_recv")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |165| 
        ; call occurs [#_spi_recv] ; [] |165| 
	.dwpsn	file "../Source/SPICAN.c",line 166,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 166 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_spi_recv")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |166| 
        ; call occurs [#_spi_recv] ; [] |166| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 167,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |167| 
	.dwpsn	file "../Source/SPICAN.c",line 168,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 168 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOVL      ACC,XAR1              ; [CPU_] |168| 
        MOVL      XAR1,*--SP            ; [CPU_] |168| 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$185, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$185, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$185, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$185

	.sect	".text"
	.clink
	.global	_SPICANMasksFilts

$C$DW$197	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$197, DW_AT_name("SPICANMasksFilts")
	.dwattr $C$DW$197, DW_AT_low_pc(_SPICANMasksFilts)
	.dwattr $C$DW$197, DW_AT_high_pc(0x00)
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_SPICANMasksFilts")
	.dwattr $C$DW$197, DW_AT_external
	.dwattr $C$DW$197, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$197, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$197, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$197, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 48,column 1,is_stmt,address _SPICANMasksFilts,isa 0

	.dwfde $C$DW$CIE, _SPICANMasksFilts
;----------------------------------------------------------------------
;  47 | void SPICANMasksFilts(void)                                            
;  49 | // Set up filters for RX buffs                                         
;  50 | while(SPICANRead(0x00) != 0x80)                                        
;  51 |         SPICANWrite(0x00, 0x80);                                       
;  53 | while(SPICANRead(0x01) != 0x00)                                        
;  54 |         SPICANWrite(0x01, 0x00);                                       
;  56 | // Set up masks for RX buffs                                           
;  57 | while(SPICANRead(0x20) != 0xF9)                                        
;  58 |         SPICANWrite(0x20, 0xF9);                                       
;  60 | while(SPICANRead(0x21) != 0x80)                                        
;  61 |         SPICANWrite(0x21, 0x80);                                       
;  63 | // MASK: 111 1100 1000                                                 
;  64 | // FILT: 100 0000 0000                                                 
;  65 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  66 | return;                                                                
;  69 | void SPICANReset (void)                                                
;  71 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  72 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;  73 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  76 | // Responsible for reading the status of a                             
;  77 | // register address on the SPICAN Control Register                     
;  78 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  79 | Uint16 SPICANRead (Uint16 Input)                                       
;  81 | Uint16  RetVal;                                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANMasksFilts             FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************

_SPICANMasksFilts:
;* AL    assigned to _RetVal
$C$DW$198	.dwtag  DW_TAG_variable
	.dwattr $C$DW$198, DW_AT_name("RetVal")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$199	.dwtag  DW_TAG_variable
	.dwattr $C$DW$199, DW_AT_name("RetVal")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$200	.dwtag  DW_TAG_variable
	.dwattr $C$DW$200, DW_AT_name("RetVal")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg0]

;* AL    assigned to _RetVal
$C$DW$201	.dwtag  DW_TAG_variable
	.dwattr $C$DW$201, DW_AT_name("RetVal")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to $O$K1
;* AR1   assigned to $O$K1
;* AR1   assigned to $O$K1
;* AR1   assigned to $O$K1
;* AR1   assigned to $O$K1
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  83 | spi_xmit(SPICAN_READ);                                                 
;  84 | spi_xmit(Input);                                                       
;  85 | RetVal = spi_recv();                                                   
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  87 | return(RetVal);                                                        
;  90 | // Responsible for writing the status of a                             
;  91 | // register address on the SPICAN Control Register                     
;  92 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  93 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
;----------------------------------------------------------------------
        MOVL      XAR1,#_GpioDataRegs   ; [CPU_U] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 50,column 2,is_stmt,isa 0
        B         $C$L19,UNC            ; [CPU_] |50| 
        ; branch occurs ; [] |50| 
$C$L18:    
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$202	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$202, DW_AT_low_pc(0x00)
	.dwattr $C$DW$202, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$202, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |97| 
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOVB      AL,#128               ; [CPU_] |98| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        *+XAR1[0],#0x0001     ; [CPU_] |99| 
$C$L19:    
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |84| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$206, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$207	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$207, DW_AT_low_pc(0x00)
	.dwattr $C$DW$207, DW_AT_name("_spi_recv")
	.dwattr $C$DW$207, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        *+XAR1[0],#0x0001     ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 50,column 8,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |50| 
        B         $C$L18,NEQ            ; [CPU_] |50| 
        ; branchcc occurs ; [] |50| 
	.dwpsn	file "../Source/SPICAN.c",line 53,column 2,is_stmt,isa 0
        B         $C$L22,UNC            ; [CPU_] |53| 
        ; branch occurs ; [] |53| 
$C$L20:    
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |97| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#128               ; [CPU_] |98| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        *+XAR1[0],#0x0001     ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 100,column 1,is_stmt,isa 0
        B         $C$L25,UNC            ; [CPU_] |100| 
        ; branch occurs ; [] |100| 
$C$L21:    
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |97| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |98| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        *+XAR1[0],#0x0001     ; [CPU_] |99| 
$C$L22:    
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |84| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_spi_recv")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        *+XAR1[0],#0x0001     ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
        CMPB      AL,#0                 ; [CPU_] |87| 
        B         $C$L21,NEQ            ; [CPU_] |87| 
        ; branchcc occurs ; [] |87| 
	.dwpsn	file "../Source/SPICAN.c",line 57,column 2,is_stmt,isa 0
        B         $C$L24,UNC            ; [CPU_] |57| 
        ; branch occurs ; [] |57| 
$C$L23:    
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$217, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |97| 
$C$DW$218	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$218, DW_AT_low_pc(0x00)
	.dwattr $C$DW$218, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$218, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#249               ; [CPU_] |98| 
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        *+XAR1[0],#0x0001     ; [CPU_] |99| 
$C$L24:    
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |84| 
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_spi_recv")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        *+XAR1[0],#0x0001     ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 57,column 8,is_stmt,isa 0
        CMPB      AL,#249               ; [CPU_] |57| 
        B         $C$L23,NEQ            ; [CPU_] |57| 
        ; branchcc occurs ; [] |57| 
$C$L25:    
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       *+XAR1[0],#0xfffe     ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |84| 
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_spi_recv")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        *+XAR1[0],#0x0001     ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 60,column 8,is_stmt,isa 0
        CMPB      AL,#128               ; [CPU_] |60| 
        B         $C$L20,NEQ            ; [CPU_] |60| 
        ; branchcc occurs ; [] |60| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$197, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$197, DW_AT_TI_end_line(0x43)
	.dwattr $C$DW$197, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$197

	.sect	".text"
	.clink
	.global	_SPICANIntEn

$C$DW$227	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$227, DW_AT_name("SPICANIntEn")
	.dwattr $C$DW$227, DW_AT_low_pc(_SPICANIntEn)
	.dwattr $C$DW$227, DW_AT_high_pc(0x00)
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_SPICANIntEn")
	.dwattr $C$DW$227, DW_AT_external
	.dwattr $C$DW$227, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$227, DW_AT_TI_begin_line(0x7c)
	.dwattr $C$DW$227, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$227, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 125,column 1,is_stmt,address _SPICANIntEn,isa 0

	.dwfde $C$DW$CIE, _SPICANIntEn
;----------------------------------------------------------------------
; 124 | void SPICANIntEn (void)
;     |  //Enables RX interupts for now                                        
; 126 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 127,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 127 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |127| 
	.dwpsn	file "../Source/SPICAN.c",line 126,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |126| 
	.dwpsn	file "../Source/SPICAN.c",line 127,column 2,is_stmt,isa 0
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |127| 
        ; call occurs [#_spi_xmit] ; [] |127| 
	.dwpsn	file "../Source/SPICAN.c",line 128,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 128 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |128| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |128| 
        ; call occurs [#_spi_xmit] ; [] |128| 
	.dwpsn	file "../Source/SPICAN.c",line 129,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 129 | spi_xmit(0x03);
;     |  //Enable RX Interupts                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |129| 
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |129| 
        ; call occurs [#_spi_xmit] ; [] |129| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 130,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |130| 
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$227, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$227, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$227, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$227

	.sect	".text"
	.clink
	.global	_SPICANConfigure

$C$DW$232	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$232, DW_AT_name("SPICANConfigure")
	.dwattr $C$DW$232, DW_AT_low_pc(_SPICANConfigure)
	.dwattr $C$DW$232, DW_AT_high_pc(0x00)
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_SPICANConfigure")
	.dwattr $C$DW$232, DW_AT_external
	.dwattr $C$DW$232, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$232, DW_AT_TI_begin_line(0x140)
	.dwattr $C$DW$232, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$232, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 321,column 1,is_stmt,address _SPICANConfigure,isa 0

	.dwfde $C$DW$CIE, _SPICANConfigure
;----------------------------------------------------------------------
; 320 | void SPICANConfigure(void)                                             
; 323 | // For configuration details, see note at bottom                       
; 324 | // SPICANWrite(0x2A, 0x81);             // Setting up CNF1             
; 325 | // SPICANWrite(0x29, 0xD0);             // Setting up CNF2             
; 326 | // SPICANWrite(0x28, 0xC2);             // Setting up CNF3             
; 327 | SPICANWrite(0x2A, 0x01);                // Setting up CNF1             
; 328 | SPICANWrite(0x29, 0xD0);                // Setting up CNF2             
; 329 | SPICANWrite(0x28, 0xC2);                // Setting up CNF3             
; 330 | return;                                                                
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
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$233, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#42                ; [CPU_] |97| 
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$234, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |98| 
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$236, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#41                ; [CPU_] |97| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$237, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#208               ; [CPU_] |98| 
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$238, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$239, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#40                ; [CPU_] |97| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$240, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#194               ; [CPU_] |98| 
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$241, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$232, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$232, DW_AT_TI_end_line(0x198)
	.dwattr $C$DW$232, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$232

	.sect	".text"
	.clink
	.global	_SPICANInit

$C$DW$243	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$243, DW_AT_name("SPICANInit")
	.dwattr $C$DW$243, DW_AT_low_pc(_SPICANInit)
	.dwattr $C$DW$243, DW_AT_high_pc(0x00)
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_SPICANInit")
	.dwattr $C$DW$243, DW_AT_external
	.dwattr $C$DW$243, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$243, DW_AT_TI_begin_line(0x0d)
	.dwattr $C$DW$243, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$243, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 14,column 1,is_stmt,address _SPICANInit,isa 0

	.dwfde $C$DW$CIE, _SPICANInit
;----------------------------------------------------------------------
;  13 | void SPICANInit(void)                                                  
;  15 | SPICANReset();                                  // Reset Command       
;  16 | SPICANReadyConfig();                                                   
;  18 | SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits          
;  19 | // SPICANBitModify(0x0C, 0xFF, 0x0F); // Enable the BFPCTRL bits       
;  20 | SPICANMasksFilts();                                                    
;  21 | SPICANWrite(0x60, 0x04);                                               
;  22 | SPICANWrite(0x70, 0x00);                                               
;  23 | SPICANWrite(0x0D, 0x00);                                               
;  24 | // SPICANBitModify(0x60, 0xFF, 0x04);           // Set BUKT to be 1    
;  25 | // SPICANBitModify(0x70, 0xFF, 0x00);           // Setup up RXB1 to rec
;     | eive all messages                                                      
;  26 | // SPICANBitModify(0x0C, 0xFF, 0x00); // Set TXRTSCTRL to 0x00         
;  28 | SPICANConfigure();                                                     
;  29 | SPICANWrite(0x2C, 0x00);                // Clearing all interrupts     
;  30 | SPICANWrite(0x2B, 0x3F);                // Clearing all interrupts     
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
;  49 | // Set up filters for RX buffs                                         
;  50 | while(SPICANRead(0x00) != 0x80)                                        
;  51 |         SPICANWrite(0x00, 0x80);                                       
;  53 | while(SPICANRead(0x01) != 0x00)                                        
;  54 |         SPICANWrite(0x01, 0x00);                                       
;  56 | // Set up masks for RX buffs                                           
;  57 | while(SPICANRead(0x20) != 0xF9)                                        
;  58 |         SPICANWrite(0x20, 0xF9);                                       
;  60 | while(SPICANRead(0x21) != 0x80)                                        
;  61 |         SPICANWrite(0x21, 0x80);                                       
;  63 | // MASK: 111 1100 1000                                                 
;  64 | // FILT: 100 0000 0000                                                 
;  65 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  66 | return;                                                                
;  69 | void SPICANReset (void)                                                
;  71 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  76 | // Responsible for reading the status of a                             
;  77 | // register address on the SPICAN Control Register                     
;  78 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  79 | Uint16 SPICANRead (Uint16 Input)                                       
;  81 | Uint16  RetVal;                                                        
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  83 | spi_xmit(SPICAN_READ);                                                 
;  84 | spi_xmit(Input);                                                       
;  85 | RetVal = spi_recv();                                                   
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  87 | return(RetVal);                                                        
;  90 | // Responsible for writing the status of a                             
;  91 | // register address on the SPICAN Control Register                     
;  92 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  93 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
;  95 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 16,column 2,is_stmt,isa 0
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_SPICANReadyConfig")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #_SPICANReadyConfig   ; [CPU_] |16| 
        ; call occurs [#_SPICANReadyConfig] ; [] |16| 
	.dwpsn	file "../Source/SPICAN.c",line 18,column 2,is_stmt,isa 0
        MOVB      AL,#12                ; [CPU_] |18| 
        MOVB      AH,#255               ; [CPU_] |18| 
        MOVB      XAR4,#15              ; [CPU_] |18| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |18| 
        ; call occurs [#_SPICANBitModify] ; [] |18| 
	.dwpsn	file "../Source/SPICAN.c",line 20,column 2,is_stmt,isa 0
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_SPICANMasksFilts")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #_SPICANMasksFilts    ; [CPU_] |20| 
        ; call occurs [#_SPICANMasksFilts] ; [] |20| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$248, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOVB      AL,#96                ; [CPU_] |97| 
$C$DW$249	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$249, DW_AT_low_pc(0x00)
	.dwattr $C$DW$249, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$249, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOVB      AL,#4                 ; [CPU_] |98| 
$C$DW$250	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$250, DW_AT_low_pc(0x00)
	.dwattr $C$DW$250, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$250, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  99 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$251	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$251, DW_AT_low_pc(0x00)
	.dwattr $C$DW$251, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$251, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_] |97| 
$C$DW$252	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$252, DW_AT_low_pc(0x00)
	.dwattr $C$DW$252, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$252, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |98| 
$C$DW$253	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$253, DW_AT_low_pc(0x00)
	.dwattr $C$DW$253, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$253, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | // Quick polling command that reads several status bits for transmit   
; 103 | // and receive functions.                                              
; 104 | Uint16 SPICANReadStat (void)                                           
; 106 | Uint16  RetVal;                                                        
; 107 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$254	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$254, DW_AT_low_pc(0x00)
	.dwattr $C$DW$254, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$254, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#13                ; [CPU_] |97| 
$C$DW$255	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$255, DW_AT_low_pc(0x00)
	.dwattr $C$DW$255, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$255, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |98| 
$C$DW$256	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$256, DW_AT_low_pc(0x00)
	.dwattr $C$DW$256, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$256, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 28,column 2,is_stmt,isa 0
$C$DW$257	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$257, DW_AT_low_pc(0x00)
	.dwattr $C$DW$257, DW_AT_name("_SPICANConfigure")
	.dwattr $C$DW$257, DW_AT_TI_call

        LCR       #_SPICANConfigure     ; [CPU_] |28| 
        ; call occurs [#_SPICANConfigure] ; [] |28| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$258	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$258, DW_AT_low_pc(0x00)
	.dwattr $C$DW$258, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$258, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |97| 
$C$DW$259	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$259, DW_AT_low_pc(0x00)
	.dwattr $C$DW$259, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$259, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |98| 
$C$DW$260	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$260, DW_AT_low_pc(0x00)
	.dwattr $C$DW$260, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$260, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$261	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$261, DW_AT_low_pc(0x00)
	.dwattr $C$DW$261, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$261, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |97| 
$C$DW$262	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$262, DW_AT_low_pc(0x00)
	.dwattr $C$DW$262, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$262, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#63                ; [CPU_] |98| 
$C$DW$263	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$263, DW_AT_low_pc(0x00)
	.dwattr $C$DW$263, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$263, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
$C$DW$264	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$264, DW_AT_low_pc(0x00)
	.dwattr $C$DW$264, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$264, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
        MOVB      AL,#15                ; [CPU_] |97| 
$C$DW$265	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$265, DW_AT_low_pc(0x00)
	.dwattr $C$DW$265, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$265, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |97| 
        ; call occurs [#_spi_xmit] ; [] |97| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |98| 
$C$DW$266	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$266, DW_AT_low_pc(0x00)
	.dwattr $C$DW$266, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$266, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |98| 
        ; call occurs [#_spi_xmit] ; [] |98| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 99,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |99| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |107| 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
$C$DW$267	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$267, DW_AT_low_pc(0x00)
	.dwattr $C$DW$267, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$267, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |108| 
        ; call occurs [#_spi_xmit] ; [] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 109,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |109| 
$C$DW$268	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$268, DW_AT_low_pc(0x00)
	.dwattr $C$DW$268, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$268, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |109| 
        ; call occurs [#_spi_xmit] ; [] |109| 
	.dwpsn	file "../Source/SPICAN.c",line 110,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 110 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$269	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$269, DW_AT_low_pc(0x00)
	.dwattr $C$DW$269, DW_AT_name("_spi_recv")
	.dwattr $C$DW$269, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |110| 
        ; call occurs [#_spi_recv] ; [] |110| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 111,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |111| 
$C$DW$270	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$270, DW_AT_low_pc(0x00)
	.dwattr $C$DW$270, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$243, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$243, DW_AT_TI_end_line(0x24)
	.dwattr $C$DW$243, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$243

	.sect	".text"
	.clink
	.global	_SPICANCheckInts

$C$DW$271	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$271, DW_AT_name("SPICANCheckInts")
	.dwattr $C$DW$271, DW_AT_low_pc(_SPICANCheckInts)
	.dwattr $C$DW$271, DW_AT_high_pc(0x00)
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_SPICANCheckInts")
	.dwattr $C$DW$271, DW_AT_external
	.dwattr $C$DW$271, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$271, DW_AT_TI_begin_line(0x1cf)
	.dwattr $C$DW$271, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$271, DW_AT_TI_max_frame_size(-90)
	.dwpsn	file "../Source/SPICAN.c",line 464,column 1,is_stmt,address _SPICANCheckInts,isa 0

	.dwfde $C$DW$CIE, _SPICANCheckInts
$C$DW$272	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$272, DW_AT_name("line")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_line")
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$272, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 463 | void SPICANCheckInts(int line)                                         
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
$C$DW$273	.dwtag  DW_TAG_variable
	.dwattr $C$DW$273, DW_AT_name("RetVal")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _line
$C$DW$274	.dwtag  DW_TAG_variable
	.dwattr $C$DW$274, DW_AT_name("line")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_line")
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$98)
	.dwattr $C$DW$274, DW_AT_location[DW_OP_reg6]

$C$DW$275	.dwtag  DW_TAG_variable
	.dwattr $C$DW$275, DW_AT_name("interrupts")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_interrupts")
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$100)
	.dwattr $C$DW$275, DW_AT_location[DW_OP_breg20 -4]

$C$DW$276	.dwtag  DW_TAG_variable
	.dwattr $C$DW$276, DW_AT_name("buff")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_buff")
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$122)
	.dwattr $C$DW$276, DW_AT_location[DW_OP_breg20 -84]

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
; 465 | volatile Uint16 interrupts;                                            
; 466 | char buff[80];                                                         
; 467 | // Check interrupts for what all happened                              
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |464| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
$C$DW$277	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$277, DW_AT_low_pc(0x00)
	.dwattr $C$DW$277, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$277, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |84| 
$C$DW$278	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$278, DW_AT_low_pc(0x00)
	.dwattr $C$DW$278, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$278, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$279	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$279, DW_AT_low_pc(0x00)
	.dwattr $C$DW$279, DW_AT_name("_spi_recv")
	.dwattr $C$DW$279, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 468,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 468 | interrupts = SPICANRead(0x2C);                                         
; 470 | // TX Interrupts                                                       
;----------------------------------------------------------------------
        MOV       *-SP[4],AL            ; [CPU_] |468| 
	.dwpsn	file "../Source/SPICAN.c",line 471,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 471 | buff[0] = interrupts;                                                  
; 472 | // RX Interrupts                                                       
;----------------------------------------------------------------------
        MOV       *+FP[6],AL            ; [CPU_] |471| 
	.dwpsn	file "../Source/SPICAN.c",line 473,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 473 | if((interrupts & 0x03) > 0x00)                                         
;----------------------------------------------------------------------
        MOV       AL,*-SP[4]            ; [CPU_] |473| 
        ANDB      AL,#0x03              ; [CPU_] |473| 
        B         $C$L26,EQ             ; [CPU_] |473| 
        ; branchcc occurs ; [] |473| 
	.dwpsn	file "../Source/SPICAN.c",line 475,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 475 | sprintf( buff, "There was an interrupt on line: %d", line);            
; 476 | //              printf("%s", buff);                                    
; 478 | return;                                                                
;----------------------------------------------------------------------
        MOVL      XAR4,#$C$FSL1         ; [CPU_U] |475| 
        MOVL      *-SP[2],XAR4          ; [CPU_] |475| 
        MOVZ      AR4,SP                ; [CPU_] |475| 
        MOV       *-SP[3],AR1           ; [CPU_] |475| 
        SUBB      XAR4,#84              ; [CPU_U] |475| 
        MOVZ      AR4,AR4               ; [CPU_] |475| 
$C$DW$280	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$280, DW_AT_low_pc(0x00)
	.dwattr $C$DW$280, DW_AT_name("_sprintf")
	.dwattr $C$DW$280, DW_AT_TI_call

        LCR       #_sprintf             ; [CPU_] |475| 
        ; call occurs [#_sprintf] ; [] |475| 
$C$L26:    
        SUBB      SP,#84                ; [CPU_U] 
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$281	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$281, DW_AT_low_pc(0x00)
	.dwattr $C$DW$281, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$271, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$271, DW_AT_TI_end_line(0x1df)
	.dwattr $C$DW$271, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$271

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
	.global	_sprintf
	.global	_spi_recv
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("GPIOA0")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("GPIOA1")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("GPIOA2")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("GPIOA3")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("GPIOA4")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIOA5")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("GPIOA6")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("GPIOA7")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("GPIOA8")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("GPIOA9")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("GPIOA10")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("GPIOA11")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("GPIOA12")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("GPIOA13")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("GPIOA14")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIOA15")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("all")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$299, DW_AT_name("bit")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("GPIOA0")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("GPIOA1")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("GPIOA2")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIOA3")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("GPIOA4")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("GPIOA5")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("GPIOA6")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("GPIOA7")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("GPIOA8")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("GPIOA9")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("GPIOA10")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("GPIOA11")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("GPIOA12")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("GPIOA13")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("GPIOA14")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("GPIOA15")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("all")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$317, DW_AT_name("bit")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("GPIOA0")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("GPIOA1")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("GPIOA2")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("GPIOA3")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIOA4")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIOA5")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIOA6")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIOA7")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("GPIOA8")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("GPIOA9")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("GPIOA10")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIOA11")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIOA12")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("GPIOA13")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("GPIOA14")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("GPIOA15")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("all")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$335, DW_AT_name("bit")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("GPIOA0")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("GPIOA1")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$337, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$337, DW_AT_bit_size(0x01)
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("GPIOA2")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIOA3")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIOA4")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOA5")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIOA6")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIOA7")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIOA8")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIOA9")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOA10")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOA11")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIOA12")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIOA13")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIOA14")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("GPIOA15")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("all")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$353, DW_AT_name("bit")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIOB0")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("GPIOB1")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("GPIOB2")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$356, DW_AT_bit_size(0x01)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIOB3")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIOB4")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIOB5")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIOB6")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("GPIOB7")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIOB8")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIOB9")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIOB10")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIOB11")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIOB12")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIOB13")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("GPIOB14")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("GPIOB15")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("all")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$371, DW_AT_name("bit")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIOB0")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("GPIOB1")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$373, DW_AT_bit_size(0x01)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("GPIOB2")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$374, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$374, DW_AT_bit_size(0x01)
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIOB3")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIOB4")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIOB5")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIOB6")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIOB7")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIOB8")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIOB9")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIOB10")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIOB11")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIOB12")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIOB13")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("GPIOB14")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("GPIOB15")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("all")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$389, DW_AT_name("bit")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("GPIOB0")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("GPIOB1")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$391, DW_AT_bit_size(0x01)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("GPIOB2")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$392, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$392, DW_AT_bit_size(0x01)
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("GPIOB3")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIOB4")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("GPIOB5")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("GPIOB6")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIOB7")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("GPIOB8")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("GPIOB9")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("GPIOB10")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIOB11")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIOB12")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("GPIOB13")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("GPIOB14")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("GPIOB15")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("all")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$407, DW_AT_name("bit")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIOB0")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("GPIOB1")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("GPIOB2")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("GPIOB3")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$411, DW_AT_bit_size(0x01)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIOB4")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIOB5")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIOB6")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("GPIOB7")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("GPIOB8")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIOB9")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIOB10")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIOB11")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIOB12")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIOB13")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("GPIOB14")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("GPIOB15")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("all")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$425, DW_AT_name("bit")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("GPIOD0")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("GPIOD1")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("rsvd1")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$428, DW_AT_bit_size(0x03)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("GPIOD5")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$429, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$429, DW_AT_bit_size(0x01)
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("GPIOD6")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("rsvd2")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$431, DW_AT_bit_size(0x09)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("all")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$433, DW_AT_name("bit")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("GPIOD0")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("GPIOD1")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("rsvd1")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$436, DW_AT_bit_size(0x03)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIOD5")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIOD6")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("rsvd2")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$439, DW_AT_bit_size(0x09)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("all")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$441, DW_AT_name("bit")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("GPIOD0")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("GPIOD1")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("rsvd1")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$444, DW_AT_bit_size(0x03)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("GPIOD5")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("GPIOD6")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$446, DW_AT_bit_size(0x01)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("rsvd2")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$447, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$447, DW_AT_bit_size(0x09)
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("all")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$449, DW_AT_name("bit")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIOD0")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIOD1")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("rsvd1")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$452, DW_AT_bit_size(0x03)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("GPIOD5")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("GPIOD6")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("rsvd2")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$455, DW_AT_bit_size(0x09)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("all")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$457, DW_AT_name("bit")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("GPIOE0")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("GPIOE1")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("GPIOE2")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("rsvd1")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$461, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("all")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$463, DW_AT_name("bit")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("GPIOE0")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("GPIOE1")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$465, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$465, DW_AT_bit_size(0x01)
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("GPIOE2")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$466, DW_AT_bit_size(0x01)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("rsvd1")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$467, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("all")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$469, DW_AT_name("bit")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("GPIOE0")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("GPIOE1")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("GPIOE2")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("rsvd1")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$473, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("all")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$475, DW_AT_name("bit")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("GPIOE0")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("GPIOE1")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("GPIOE2")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("rsvd1")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$479, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("all")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$481, DW_AT_name("bit")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("GPIOF0")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("GPIOF1")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$483, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$483, DW_AT_bit_size(0x01)
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("GPIOF2")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$484, DW_AT_bit_size(0x01)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("GPIOF3")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("GPIOF4")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("GPIOF5")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("GPIOF6")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("GPIOF7")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("GPIOF8")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("GPIOF9")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("GPIOF10")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("GPIOF11")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("GPIOF12")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("GPIOF13")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("GPIOF14")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("GPIOF15")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("all")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$499, DW_AT_name("bit")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("GPIOF0")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("GPIOF1")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$501, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$501, DW_AT_bit_size(0x01)
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$502, DW_AT_name("GPIOF2")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$502, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$502, DW_AT_bit_size(0x01)
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("GPIOF3")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("GPIOF4")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("GPIOF5")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("GPIOF6")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("GPIOF7")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("GPIOF8")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("GPIOF9")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("GPIOF10")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("GPIOF11")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("GPIOF12")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("GPIOF13")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("GPIOF14")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("GPIOF15")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("all")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$517, DW_AT_name("bit")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("GPIOF0")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("GPIOF1")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$519, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$519, DW_AT_bit_size(0x01)
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$520, DW_AT_name("GPIOF2")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$520, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$520, DW_AT_bit_size(0x01)
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("GPIOF3")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$521, DW_AT_bit_size(0x01)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("GPIOF4")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("GPIOF5")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("GPIOF6")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$524, DW_AT_bit_size(0x01)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("GPIOF7")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$525, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$525, DW_AT_bit_size(0x01)
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$526, DW_AT_name("GPIOF8")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$526, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$526, DW_AT_bit_size(0x01)
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("GPIOF9")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$527, DW_AT_bit_size(0x01)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("GPIOF10")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("GPIOF11")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("GPIOF12")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$530, DW_AT_bit_size(0x01)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("GPIOF13")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$531, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$531, DW_AT_bit_size(0x01)
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$532, DW_AT_name("GPIOF14")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$532, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$532, DW_AT_bit_size(0x01)
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("GPIOF15")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$533, DW_AT_bit_size(0x01)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("all")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$535, DW_AT_name("bit")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("GPIOF0")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$536, DW_AT_bit_size(0x01)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("GPIOF1")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$537, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$537, DW_AT_bit_size(0x01)
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$538, DW_AT_name("GPIOF2")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$538, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$538, DW_AT_bit_size(0x01)
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("GPIOF3")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$539, DW_AT_bit_size(0x01)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("GPIOF4")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("GPIOF5")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("GPIOF6")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$542, DW_AT_bit_size(0x01)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("GPIOF7")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$543, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$543, DW_AT_bit_size(0x01)
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$544, DW_AT_name("GPIOF8")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$544, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$544, DW_AT_bit_size(0x01)
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$545, DW_AT_name("GPIOF9")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$545, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$545, DW_AT_bit_size(0x01)
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$546, DW_AT_name("GPIOF10")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$546, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$546, DW_AT_bit_size(0x01)
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$547, DW_AT_name("GPIOF11")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$547, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$547, DW_AT_bit_size(0x01)
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$548, DW_AT_name("GPIOF12")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$548, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$548, DW_AT_bit_size(0x01)
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$549, DW_AT_name("GPIOF13")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$549, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$549, DW_AT_bit_size(0x01)
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$550, DW_AT_name("GPIOF14")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$550, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$550, DW_AT_bit_size(0x01)
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$551, DW_AT_name("GPIOF15")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$551, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$551, DW_AT_bit_size(0x01)
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$552, DW_AT_name("all")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$553, DW_AT_name("bit")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$554, DW_AT_name("rsvd1")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$554, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$554, DW_AT_bit_size(0x04)
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$555, DW_AT_name("GPIOG4")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$555, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$555, DW_AT_bit_size(0x01)
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$556, DW_AT_name("GPIOG5")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$556, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$556, DW_AT_bit_size(0x01)
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$557, DW_AT_name("rsvd2")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$557, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$557, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$558, DW_AT_name("all")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$559, DW_AT_name("bit")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$560, DW_AT_name("rsvd1")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$560, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$560, DW_AT_bit_size(0x04)
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$561, DW_AT_name("GPIOG4")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$561, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$561, DW_AT_bit_size(0x01)
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$562, DW_AT_name("GPIOG5")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$562, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$562, DW_AT_bit_size(0x01)
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$563, DW_AT_name("rsvd2")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$563, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$563, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$564, DW_AT_name("all")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$565, DW_AT_name("bit")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$566, DW_AT_name("rsvd1")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$566, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$566, DW_AT_bit_size(0x04)
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$567, DW_AT_name("GPIOG4")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$567, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$567, DW_AT_bit_size(0x01)
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$568, DW_AT_name("GPIOG5")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$568, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$568, DW_AT_bit_size(0x01)
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$569, DW_AT_name("rsvd2")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$569, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$569, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$570, DW_AT_name("all")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$571	.dwtag  DW_TAG_member
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$571, DW_AT_name("bit")
	.dwattr $C$DW$571, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$571, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$572	.dwtag  DW_TAG_member
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$572, DW_AT_name("rsvd1")
	.dwattr $C$DW$572, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$572, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$572, DW_AT_bit_size(0x04)
	.dwattr $C$DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$572, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$573	.dwtag  DW_TAG_member
	.dwattr $C$DW$573, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$573, DW_AT_name("GPIOG4")
	.dwattr $C$DW$573, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$573, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$573, DW_AT_bit_size(0x01)
	.dwattr $C$DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$573, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$574	.dwtag  DW_TAG_member
	.dwattr $C$DW$574, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$574, DW_AT_name("GPIOG5")
	.dwattr $C$DW$574, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$574, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$574, DW_AT_bit_size(0x01)
	.dwattr $C$DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$574, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$575	.dwtag  DW_TAG_member
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$575, DW_AT_name("rsvd2")
	.dwattr $C$DW$575, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$575, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$575, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$575, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$576	.dwtag  DW_TAG_member
	.dwattr $C$DW$576, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$576, DW_AT_name("all")
	.dwattr $C$DW$576, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$576, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$577	.dwtag  DW_TAG_member
	.dwattr $C$DW$577, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$577, DW_AT_name("bit")
	.dwattr $C$DW$577, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$577, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x20)
$C$DW$578	.dwtag  DW_TAG_member
	.dwattr $C$DW$578, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$578, DW_AT_name("GPADAT")
	.dwattr $C$DW$578, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$578, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$579	.dwtag  DW_TAG_member
	.dwattr $C$DW$579, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$579, DW_AT_name("GPASET")
	.dwattr $C$DW$579, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$579, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$580	.dwtag  DW_TAG_member
	.dwattr $C$DW$580, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$580, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$580, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$580, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$581	.dwtag  DW_TAG_member
	.dwattr $C$DW$581, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$581, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$581, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$581, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$582	.dwtag  DW_TAG_member
	.dwattr $C$DW$582, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$582, DW_AT_name("GPBDAT")
	.dwattr $C$DW$582, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$582, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$583	.dwtag  DW_TAG_member
	.dwattr $C$DW$583, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$583, DW_AT_name("GPBSET")
	.dwattr $C$DW$583, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$583, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$584	.dwtag  DW_TAG_member
	.dwattr $C$DW$584, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$584, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$584, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$584, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$585	.dwtag  DW_TAG_member
	.dwattr $C$DW$585, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$585, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$585, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$585, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$586	.dwtag  DW_TAG_member
	.dwattr $C$DW$586, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$586, DW_AT_name("rsvd1")
	.dwattr $C$DW$586, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$586, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$587	.dwtag  DW_TAG_member
	.dwattr $C$DW$587, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$587, DW_AT_name("GPDDAT")
	.dwattr $C$DW$587, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$587, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$588	.dwtag  DW_TAG_member
	.dwattr $C$DW$588, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$588, DW_AT_name("GPDSET")
	.dwattr $C$DW$588, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$588, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$589	.dwtag  DW_TAG_member
	.dwattr $C$DW$589, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$589, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$589, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$589, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$590	.dwtag  DW_TAG_member
	.dwattr $C$DW$590, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$590, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$590, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$590, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$591	.dwtag  DW_TAG_member
	.dwattr $C$DW$591, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$591, DW_AT_name("GPEDAT")
	.dwattr $C$DW$591, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$591, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$592	.dwtag  DW_TAG_member
	.dwattr $C$DW$592, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$592, DW_AT_name("GPESET")
	.dwattr $C$DW$592, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$592, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$593	.dwtag  DW_TAG_member
	.dwattr $C$DW$593, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$593, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$593, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$593, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$594	.dwtag  DW_TAG_member
	.dwattr $C$DW$594, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$594, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$594, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$594, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$595	.dwtag  DW_TAG_member
	.dwattr $C$DW$595, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$595, DW_AT_name("GPFDAT")
	.dwattr $C$DW$595, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$595, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$596	.dwtag  DW_TAG_member
	.dwattr $C$DW$596, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$596, DW_AT_name("GPFSET")
	.dwattr $C$DW$596, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$596, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$597	.dwtag  DW_TAG_member
	.dwattr $C$DW$597, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$597, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$597, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$597, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$598	.dwtag  DW_TAG_member
	.dwattr $C$DW$598, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$598, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$598, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$598, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$599	.dwtag  DW_TAG_member
	.dwattr $C$DW$599, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$599, DW_AT_name("GPGDAT")
	.dwattr $C$DW$599, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$599, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$600	.dwtag  DW_TAG_member
	.dwattr $C$DW$600, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$600, DW_AT_name("GPGSET")
	.dwattr $C$DW$600, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$600, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$601	.dwtag  DW_TAG_member
	.dwattr $C$DW$601, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$601, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$601, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$601, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$602	.dwtag  DW_TAG_member
	.dwattr $C$DW$602, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$602, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$602, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$602, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$603	.dwtag  DW_TAG_member
	.dwattr $C$DW$603, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$603, DW_AT_name("rsvd2")
	.dwattr $C$DW$603, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$603, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$604	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$604, DW_AT_type(*$C$DW$T$69)

$C$DW$T$70	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$604)

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

$C$DW$605	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$605, DW_AT_type(*$C$DW$T$10)

$C$DW$T$98	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$98, DW_AT_type(*$C$DW$605)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$606	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$606, DW_AT_type(*$C$DW$T$19)

$C$DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$100, DW_AT_type(*$C$DW$606)

$C$DW$607	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$607, DW_AT_type(*$C$DW$T$19)

$C$DW$T$101	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$101, DW_AT_type(*$C$DW$607)


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$608	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$608, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$68

$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)

$C$DW$609	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$609, DW_AT_type(*$C$DW$T$77)

$C$DW$T$102	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$102, DW_AT_type(*$C$DW$609)


$C$DW$T$107	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$107, DW_AT_byte_size(0x08)
$C$DW$610	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$610, DW_AT_upper_bound(0x07)

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

$C$DW$611	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$611, DW_AT_type(*$C$DW$T$5)

$C$DW$T$90	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$90, DW_AT_type(*$C$DW$611)

$C$DW$T$91	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$91, DW_AT_type(*$C$DW$T$90)
	.dwattr $C$DW$T$91, DW_AT_address_class(0x20)


$C$DW$T$122	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$122, DW_AT_type(*$C$DW$T$5)
	.dwattr $C$DW$T$122, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$122, DW_AT_byte_size(0x50)
$C$DW$612	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$612, DW_AT_upper_bound(0x4f)

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

$C$DW$613	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$613, DW_AT_name("AL")
	.dwattr $C$DW$613, DW_AT_location[DW_OP_reg0]

$C$DW$614	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$614, DW_AT_name("AH")
	.dwattr $C$DW$614, DW_AT_location[DW_OP_reg1]

$C$DW$615	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$615, DW_AT_name("PL")
	.dwattr $C$DW$615, DW_AT_location[DW_OP_reg2]

$C$DW$616	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$616, DW_AT_name("PH")
	.dwattr $C$DW$616, DW_AT_location[DW_OP_reg3]

$C$DW$617	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$617, DW_AT_name("SP")
	.dwattr $C$DW$617, DW_AT_location[DW_OP_reg20]

$C$DW$618	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$618, DW_AT_name("XT")
	.dwattr $C$DW$618, DW_AT_location[DW_OP_reg21]

$C$DW$619	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$619, DW_AT_name("T")
	.dwattr $C$DW$619, DW_AT_location[DW_OP_reg22]

$C$DW$620	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$620, DW_AT_name("ST0")
	.dwattr $C$DW$620, DW_AT_location[DW_OP_reg23]

$C$DW$621	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$621, DW_AT_name("ST1")
	.dwattr $C$DW$621, DW_AT_location[DW_OP_reg24]

$C$DW$622	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$622, DW_AT_name("PC")
	.dwattr $C$DW$622, DW_AT_location[DW_OP_reg25]

$C$DW$623	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$623, DW_AT_name("RPC")
	.dwattr $C$DW$623, DW_AT_location[DW_OP_reg26]

$C$DW$624	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$624, DW_AT_name("FP")
	.dwattr $C$DW$624, DW_AT_location[DW_OP_reg28]

$C$DW$625	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$625, DW_AT_name("DP")
	.dwattr $C$DW$625, DW_AT_location[DW_OP_reg29]

$C$DW$626	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$626, DW_AT_name("SXM")
	.dwattr $C$DW$626, DW_AT_location[DW_OP_reg30]

$C$DW$627	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$627, DW_AT_name("PM")
	.dwattr $C$DW$627, DW_AT_location[DW_OP_reg31]

$C$DW$628	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$628, DW_AT_name("OVM")
	.dwattr $C$DW$628, DW_AT_location[DW_OP_regx 0x20]

$C$DW$629	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$629, DW_AT_name("PAGE0")
	.dwattr $C$DW$629, DW_AT_location[DW_OP_regx 0x21]

$C$DW$630	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$630, DW_AT_name("AMODE")
	.dwattr $C$DW$630, DW_AT_location[DW_OP_regx 0x22]

$C$DW$631	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$631, DW_AT_name("INTM")
	.dwattr $C$DW$631, DW_AT_location[DW_OP_regx 0x23]

$C$DW$632	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$632, DW_AT_name("IFR")
	.dwattr $C$DW$632, DW_AT_location[DW_OP_regx 0x24]

$C$DW$633	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$633, DW_AT_name("IER")
	.dwattr $C$DW$633, DW_AT_location[DW_OP_regx 0x25]

$C$DW$634	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$634, DW_AT_name("V")
	.dwattr $C$DW$634, DW_AT_location[DW_OP_regx 0x26]

$C$DW$635	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$635, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$635, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$636	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$636, DW_AT_name("VOL")
	.dwattr $C$DW$636, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$637	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$637, DW_AT_name("AR0")
	.dwattr $C$DW$637, DW_AT_location[DW_OP_reg4]

$C$DW$638	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$638, DW_AT_name("XAR0")
	.dwattr $C$DW$638, DW_AT_location[DW_OP_reg5]

$C$DW$639	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$639, DW_AT_name("AR1")
	.dwattr $C$DW$639, DW_AT_location[DW_OP_reg6]

$C$DW$640	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$640, DW_AT_name("XAR1")
	.dwattr $C$DW$640, DW_AT_location[DW_OP_reg7]

$C$DW$641	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$641, DW_AT_name("AR2")
	.dwattr $C$DW$641, DW_AT_location[DW_OP_reg8]

$C$DW$642	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$642, DW_AT_name("XAR2")
	.dwattr $C$DW$642, DW_AT_location[DW_OP_reg9]

$C$DW$643	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$643, DW_AT_name("AR3")
	.dwattr $C$DW$643, DW_AT_location[DW_OP_reg10]

$C$DW$644	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$644, DW_AT_name("XAR3")
	.dwattr $C$DW$644, DW_AT_location[DW_OP_reg11]

$C$DW$645	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$645, DW_AT_name("AR4")
	.dwattr $C$DW$645, DW_AT_location[DW_OP_reg12]

$C$DW$646	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$646, DW_AT_name("XAR4")
	.dwattr $C$DW$646, DW_AT_location[DW_OP_reg13]

$C$DW$647	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$647, DW_AT_name("AR5")
	.dwattr $C$DW$647, DW_AT_location[DW_OP_reg14]

$C$DW$648	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$648, DW_AT_name("XAR5")
	.dwattr $C$DW$648, DW_AT_location[DW_OP_reg15]

$C$DW$649	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$649, DW_AT_name("AR6")
	.dwattr $C$DW$649, DW_AT_location[DW_OP_reg16]

$C$DW$650	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$650, DW_AT_name("XAR6")
	.dwattr $C$DW$650, DW_AT_location[DW_OP_reg17]

$C$DW$651	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$651, DW_AT_name("AR7")
	.dwattr $C$DW$651, DW_AT_location[DW_OP_reg18]

$C$DW$652	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$652, DW_AT_name("XAR7")
	.dwattr $C$DW$652, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


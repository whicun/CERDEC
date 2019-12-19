;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.4.LTS *
;* Date/Time created: Thu Dec 19 09:56:41 2019                 *
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
	.dwattr $C$DW$5, DW_AT_name("spi_recv")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_spi_recv")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwendtag $C$DW$5

	.sect	".econst:_$P$T0$1"
	.clink
	.align	1
_$P$T0$1:
	.bits	0,16			; _$P$T0$1[0] @ 0
	.bits	1,16			; _$P$T0$1[1] @ 16
	.bits	2,16			; _$P$T0$1[2] @ 32
	.bits	3,16			; _$P$T0$1[3] @ 48
	.bits	4,16			; _$P$T0$1[4] @ 64
	.bits	5,16			; _$P$T0$1[5] @ 80
	.bits	6,16			; _$P$T0$1[6] @ 96
	.bits	7,16			; _$P$T0$1[7] @ 112

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("$P$T0$1")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_$P$T0$1")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$88)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_addr _$P$T0$1]

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\323242 C:\\Users\\ebenton\\AppData\\Local\\Temp\\323244 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\3232412 
	.sect	".text"
	.clink
	.global	_SPICAN_T0_RTS

$C$DW$8	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$8, DW_AT_name("SPICAN_T0_RTS")
	.dwattr $C$DW$8, DW_AT_low_pc(_SPICAN_T0_RTS)
	.dwattr $C$DW$8, DW_AT_high_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_SPICAN_T0_RTS")
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$8, DW_AT_TI_begin_line(0xd8)
	.dwattr $C$DW$8, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$8, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 217,column 1,is_stmt,address _SPICAN_T0_RTS,isa 0

	.dwfde $C$DW$CIE, _SPICAN_T0_RTS
;----------------------------------------------------------------------
; 216 | void SPICAN_T0_RTS (void)                                              
; 218 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 219,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 219 | spi_xmit(SPICAN_RTS + 0x1);                                            
;----------------------------------------------------------------------
        MOVB      AL,#129               ; [CPU_] |219| 
	.dwpsn	file "../Source/SPICAN.c",line 218,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |218| 
	.dwpsn	file "../Source/SPICAN.c",line 219,column 2,is_stmt,isa 0
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$9, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |219| 
        ; call occurs [#_spi_xmit] ; [] |219| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 220,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 220 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |220| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$8, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$8, DW_AT_TI_end_line(0xdd)
	.dwattr $C$DW$8, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$8

	.sect	".text"
	.clink
	.global	_SPICANWrite

$C$DW$11	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$11, DW_AT_name("SPICANWrite")
	.dwattr $C$DW$11, DW_AT_low_pc(_SPICANWrite)
	.dwattr $C$DW$11, DW_AT_high_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_SPICANWrite")
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$11, DW_AT_TI_begin_line(0x50)
	.dwattr $C$DW$11, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$11, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 81,column 1,is_stmt,address _SPICANWrite,isa 0

	.dwfde $C$DW$CIE, _SPICANWrite
$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("ADDR")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg0]

$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("Input")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
;  80 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
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
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("ADDR")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _Input
$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("Input")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AH                ; [CPU_] |81| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 81,column 1,is_stmt,isa 0
        MOVZ      AR2,AL                ; [CPU_] |81| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |83| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |84| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |85| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$18, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$11, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$11, DW_AT_TI_end_line(0x57)
	.dwattr $C$DW$11, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$11

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Data

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("SPICAN_SetT0Data")
	.dwattr $C$DW$20, DW_AT_low_pc(_SPICAN_SetT0Data)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0xca)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 203,column 1,is_stmt,address _SPICAN_SetT0Data,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Data
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("numBytes")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]

$C$DW$22	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$22, DW_AT_name("buf")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 202 | void SPICAN_SetT0Data(Uint16 numBytes, Uint16 *buf)                    
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
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("Input")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_breg20 -1]

;* AR1   assigned to _k
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("k")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _numBytes
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("numBytes")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg8]

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
; 204 | Uint16 k;                                                              
; 206 | // Send how much data content there is                                 
; 207 | SPICANWrite(SPICAN_TXB0DLC, numBytes);                                 
; 209 | // Fill in the data buffer                                             
;----------------------------------------------------------------------
        MOVZ      AR2,AL                ; [CPU_] |203| 
        MOVL      XAR3,XAR4             ; [CPU_] |203| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#53                ; [CPU_] |84| 
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
        MOV       AL,AR2                ; [CPU_] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
        MOV       AL,AR2                ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 210,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 210 | for(k = 0; k < numBytes; k++)                                          
;----------------------------------------------------------------------
        B         $C$L2,EQ              ; [CPU_] |210| 
        ; branchcc occurs ; [] |210| 
        SUBB      XAR2,#1               ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 210,column 6,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_] |210| 
$C$L1:    
	.dwpsn	file "../Source/SPICAN.c",line 212,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 212 | SPICANWrite(SPICAN_TXB0D0 + k, buf[k]);                                
;----------------------------------------------------------------------
        MOV       AL,*XAR3++            ; [CPU_] |212| 
        MOV       *-SP[1],AL            ; [CPU_] |212| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |84| 
        ADD       AL,AR1                ; [CPU_] |84| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
        MOV       AL,*-SP[1]            ; [CPU_] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$31, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
	.dwpsn	file "../Source/SPICAN.c",line 210,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |210| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 210,column 13,is_stmt,isa 0
        BANZ      $C$L1,AR2--           ; [CPU_] |210| 
        ; branchcc occurs ; [] |210| 
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
$C$DW$32	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$32, DW_AT_low_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0xd6)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Addr

$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("SPICAN_SetT0Addr")
	.dwattr $C$DW$33, DW_AT_low_pc(_SPICAN_SetT0Addr)
	.dwattr $C$DW$33, DW_AT_high_pc(0x00)
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$33, DW_AT_TI_begin_line(0xb6)
	.dwattr $C$DW$33, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$33, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 183,column 1,is_stmt,address _SPICAN_SetT0Addr,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Addr
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_name("canAddress")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 182 | void SPICAN_SetT0Addr(Uint16 canAddress)                               
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
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("canAddress")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _addrHi
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("addrHi")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_addrHi")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _addrLo
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("addrLo")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_addrLo")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 184 | Uint16 addrHi, addrLo;                                                 
; 186 | // First grab the important bits                                       
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |183| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 187,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 187 | addrHi = canAddress & 0x7F8;                                           
;----------------------------------------------------------------------
        AND       AH,AR1,#0x07f8        ; [CPU_] |187| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 188 | addrLo = canAddress & 0x7;                                             
;----------------------------------------------------------------------
        AND       AL,AR1,#0x0007        ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 187,column 2,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |187| 
	.dwpsn	file "../Source/SPICAN.c",line 188,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 190 | // Now shift them to the right places                                  
; 191 | addrHi = addrHi >> 3;                                                  
; 192 | addrLo = addrLo << 5;                                                  
; 194 | // Set up the ID (X - unused, H - Hi, L - Lo)                          
; 195 | // Want to first send 0bHHHHHHHH                                       
; 196 | SPICANWrite(SPICAN_TXB0SIDH, addrHi); // H (SID10 - SID3)              
; 197 | // Then want to send 0bLLL00000                                        
; 198 | SPICANWrite(SPICAN_TXB0SIDL, addrLo); // L (SID2 - SID0)               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |188| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_] |84| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
        MOV       AL,AR2                ; [CPU_] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        LSR       AL,3                  ; [CPU_] |85| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_] |84| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
        MOV       AL,AR1                ; [CPU_] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        LSL       AL,5                  ; [CPU_] |85| 
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$43, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$33, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$33, DW_AT_TI_end_line(0xc7)
	.dwattr $C$DW$33, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$33

	.sect	".text"
	.clink
	.global	_SPICANRead

$C$DW$45	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$45, DW_AT_name("SPICANRead")
	.dwattr $C$DW$45, DW_AT_low_pc(_SPICANRead)
	.dwattr $C$DW$45, DW_AT_high_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_SPICANRead")
	.dwattr $C$DW$45, DW_AT_external
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$45, DW_AT_TI_begin_line(0x42)
	.dwattr $C$DW$45, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$45, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 67,column 1,is_stmt,address _SPICANRead,isa 0

	.dwfde $C$DW$CIE, _SPICANRead
$C$DW$46	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$46, DW_AT_name("Input")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  66 | Uint16 SPICANRead (Uint16 Input)                                       
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
$C$DW$47	.dwtag  DW_TAG_variable
	.dwattr $C$DW$47, DW_AT_name("Input")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
;  68 | Uint16  RetVal;                                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |67| 
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |70| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |70| 
        ; call occurs [#_spi_xmit] ; [] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  71 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |71| 
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_spi_recv")
	.dwattr $C$DW$50, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |72| 
        ; call occurs [#_spi_recv] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  74 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$45, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$45, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$45, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$45

	.sect	".text"
	.clink
	.global	_SPICANWaitForTXBuf

$C$DW$52	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$52, DW_AT_name("SPICANWaitForTXBuf")
	.dwattr $C$DW$52, DW_AT_low_pc(_SPICANWaitForTXBuf)
	.dwattr $C$DW$52, DW_AT_high_pc(0x00)
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$52, DW_AT_external
	.dwattr $C$DW$52, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$52, DW_AT_TI_begin_line(0x111)
	.dwattr $C$DW$52, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$52, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 274,column 1,is_stmt,address _SPICANWaitForTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANWaitForTXBuf
$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("buf_num")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 273 | void SPICANWaitForTXBuf(Uint16 buf_num)                                
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
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("res")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _buf_num
$C$DW$55	.dwtag  DW_TAG_variable
	.dwattr $C$DW$55, DW_AT_name("buf_num")
	.dwattr $C$DW$55, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$55, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$55, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to $O$K7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 275 | Uint16 res;                                                            
; 276 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |274| 
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |70| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |70| 
        ; call occurs [#_spi_xmit] ; [] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #8         ; [CPU_] |71| 
        ADDB      AL,#48                ; [CPU_] |71| 
        MOVZ      AR1,AL                ; [CPU_] |71| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_spi_recv")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |72| 
        ; call occurs [#_spi_recv] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 277,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 277 | while((res & 0x08) == 0x08)                                            
;----------------------------------------------------------------------
        B         $C$L4,UNC             ; [CPU_] |277| 
        ; branch occurs ; [] |277| 
$C$L3:    
	.dwpsn	file "../Source/SPICAN.c",line 279,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 279 | delay_us(1);                                                           
; 280 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |279| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_delay_us")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |279| 
        ; call occurs [#_delay_us] ; [] |279| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |70| 
        ; call occurs [#_spi_xmit] ; [] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |71| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$61, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_spi_recv")
	.dwattr $C$DW$62, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |72| 
        ; call occurs [#_spi_recv] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
$C$L4:    
	.dwpsn	file "../Source/SPICAN.c",line 277,column 8,is_stmt,isa 0
        TBIT      AL,#3                 ; [CPU_] |277| 
        B         $C$L3,TC              ; [CPU_] |277| 
        ; branchcc occurs ; [] |277| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$52, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$52, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$52, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$52

	.sect	".text"
	.clink
	.global	_SPICANVerifyTXBuf

$C$DW$64	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$64, DW_AT_name("SPICANVerifyTXBuf")
	.dwattr $C$DW$64, DW_AT_low_pc(_SPICANVerifyTXBuf)
	.dwattr $C$DW$64, DW_AT_high_pc(0x00)
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_SPICANVerifyTXBuf")
	.dwattr $C$DW$64, DW_AT_external
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$64, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$64, DW_AT_TI_begin_line(0x103)
	.dwattr $C$DW$64, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$64, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 260,column 1,is_stmt,address _SPICANVerifyTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANVerifyTXBuf
$C$DW$65	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$65, DW_AT_name("buf")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg0]

$C$DW$66	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$66, DW_AT_name("data_check")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 259 | int SPICANVerifyTXBuf(Uint16 buf, Uint16 data_check[])                 
; 261 | Uint16 data[8];                                                        
; 262 | int k;                                                                 
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
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("data_check")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg12]

;* AR1   assigned to _k
$C$DW$68	.dwtag  DW_TAG_variable
	.dwattr $C$DW$68, DW_AT_name("k")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _RetVal
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("RetVal")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg0]

;* AR2   assigned to $O$U11
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 263,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 263 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        MOVB      XAR1,#0               ; [CPU_] |263| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] 
$C$L5:    
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |70| 
        ; call occurs [#_spi_xmit] ; [] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |71| 
        ADD       AL,AR1                ; [CPU_] |71| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$71, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_spi_recv")
	.dwattr $C$DW$72, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |72| 
        ; call occurs [#_spi_recv] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 265,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 265 | if(data_check[k] != SPICANRead(SPICAN_TXB0D0 + k))                     
;----------------------------------------------------------------------
        MOVZ      AR6,*+XAR2[0]         ; [CPU_] |265| 
        MOVU      ACC,AL                ; [CPU_] |265| 
        CMPL      ACC,XAR6              ; [CPU_] |265| 
        B         $C$L6,EQ              ; [CPU_] |265| 
        ; branchcc occurs ; [] |265| 
	.dwpsn	file "../Source/SPICAN.c",line 267,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 267 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |267| 
        B         $C$L7,UNC             ; [CPU_] |267| 
        ; branch occurs ; [] |267| 
$C$L6:    
	.dwpsn	file "../Source/SPICAN.c",line 263,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |263| 
        ADDB      XAR2,#1               ; [CPU_] |263| 
        MOV       AL,AR1                ; [CPU_] |263| 
        CMPB      AL,#8                 ; [CPU_] |263| 
        B         $C$L5,LT              ; [CPU_] |263| 
        ; branchcc occurs ; [] |263| 
	.dwpsn	file "../Source/SPICAN.c",line 270,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 270 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |270| 
$C$L7:    
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$64, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$64, DW_AT_TI_end_line(0x10f)
	.dwattr $C$DW$64, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$64

	.sect	".text"
	.clink
	.global	_SPICANSetNorm

$C$DW$74	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$74, DW_AT_name("SPICANSetNorm")
	.dwattr $C$DW$74, DW_AT_low_pc(_SPICANSetNorm)
	.dwattr $C$DW$74, DW_AT_high_pc(0x00)
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_SPICANSetNorm")
	.dwattr $C$DW$74, DW_AT_external
	.dwattr $C$DW$74, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$74, DW_AT_TI_begin_line(0x66)
	.dwattr $C$DW$74, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$74, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 103,column 1,is_stmt,address _SPICANSetNorm,isa 0

	.dwfde $C$DW$CIE, _SPICANSetNorm
;----------------------------------------------------------------------
; 102 | void SPICANSetNorm (void)                                              
; 104 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |106| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$76, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |107| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$77, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |107| 
        ; call occurs [#_spi_xmit] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 108 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$74, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$74, DW_AT_TI_end_line(0x6d)
	.dwattr $C$DW$74, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$74

	.sect	".text"
	.clink
	.global	_SPICANReadSetT0Message

$C$DW$79	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$79, DW_AT_name("SPICANReadSetT0Message")
	.dwattr $C$DW$79, DW_AT_low_pc(_SPICANReadSetT0Message)
	.dwattr $C$DW$79, DW_AT_high_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$79, DW_AT_external
	.dwattr $C$DW$79, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$79, DW_AT_TI_begin_line(0xab)
	.dwattr $C$DW$79, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$79, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 172,column 1,is_stmt,address _SPICANReadSetT0Message,isa 0

	.dwfde $C$DW$CIE, _SPICANReadSetT0Message
$C$DW$80	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$80, DW_AT_name("canAddress")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_location[DW_OP_reg0]

$C$DW$81	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$81, DW_AT_name("numBytes")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_location[DW_OP_reg1]

$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("buf")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 171 | void SPICANReadSetT0Message(Uint16 canAddress, Uint16 numBytes, Uint16
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
$C$DW$83	.dwtag  DW_TAG_variable
	.dwattr $C$DW$83, DW_AT_name("numBytes")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _buf
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("buf")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 173 | // Set the new address                                                 
;----------------------------------------------------------------------
        MOVZ      AR1,AH                ; [CPU_] |172| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] |172| 
	.dwpsn	file "../Source/SPICAN.c",line 174,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 174 | SPICAN_SetT0Addr(canAddress);                                          
; 176 | // Set the data                                                        
;----------------------------------------------------------------------
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$85, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Addr    ; [CPU_] |174| 
        ; call occurs [#_SPICAN_SetT0Addr] ; [] |174| 
	.dwpsn	file "../Source/SPICAN.c",line 177,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 177 | SPICAN_SetT0Data(numBytes, buf);                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |177| 
        MOVL      XAR4,XAR2             ; [CPU_] |177| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$86, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Data    ; [CPU_] |177| 
        ; call occurs [#_SPICAN_SetT0Data] ; [] |177| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$79, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$79, DW_AT_TI_end_line(0xb2)
	.dwattr $C$DW$79, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$79

	.sect	".text"
	.clink
	.global	_SPICANBitModify

$C$DW$88	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$88, DW_AT_name("SPICANBitModify")
	.dwattr $C$DW$88, DW_AT_low_pc(_SPICANBitModify)
	.dwattr $C$DW$88, DW_AT_high_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_SPICANBitModify")
	.dwattr $C$DW$88, DW_AT_external
	.dwattr $C$DW$88, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$88, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$88, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$88, DW_AT_TI_max_frame_size(-8)
	.dwpsn	file "../Source/SPICAN.c",line 285,column 1,is_stmt,address _SPICANBitModify,isa 0

	.dwfde $C$DW$CIE, _SPICANBitModify
$C$DW$89	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$89, DW_AT_name("address")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_address")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg0]

$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("mask")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg1]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("data_byte")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_data_byte")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 284 | void SPICANBitModify(Uint16 address, Uint16 mask, Uint16 data_byte)    
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
$C$DW$92	.dwtag  DW_TAG_variable
	.dwattr $C$DW$92, DW_AT_name("address")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_address")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _mask
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("mask")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_mask")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _data_byte
$C$DW$94	.dwtag  DW_TAG_variable
	.dwattr $C$DW$94, DW_AT_name("data_byte")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_data_byte")
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$94, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVZ      AR1,AR4               ; [CPU_] |285| 
	.dwpsn	file "../Source/SPICAN.c",line 286,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |286| 
	.dwpsn	file "../Source/SPICAN.c",line 285,column 1,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |285| 
        MOVL      *SP++,XAR3            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 11, 6
	.dwcfi	cfa_offset, -8
        MOVZ      AR3,AL                ; [CPU_] |285| 
	.dwpsn	file "../Source/SPICAN.c",line 287,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 287 | spi_xmit(0x05);                                         //Bit modify co
;     | mmand                                                                  
;----------------------------------------------------------------------
        MOVB      AL,#5                 ; [CPU_] |287| 
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |287| 
        ; call occurs [#_spi_xmit] ; [] |287| 
	.dwpsn	file "../Source/SPICAN.c",line 288,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 288 | spi_xmit(address);
;     |          //Write location                                              
;----------------------------------------------------------------------
        MOV       AL,AR3                ; [CPU_] |288| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |288| 
        ; call occurs [#_spi_xmit] ; [] |288| 
	.dwpsn	file "../Source/SPICAN.c",line 289,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 289 | spi_xmit(mask);                                                 //Write
;     |  Info                                                                  
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |289| 
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |289| 
        ; call occurs [#_spi_xmit] ; [] |289| 
	.dwpsn	file "../Source/SPICAN.c",line 290,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 290 | spi_xmit(data_byte);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |290| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$98, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |290| 
        ; call occurs [#_spi_xmit] ; [] |290| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 291,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |291| 
        MOVL      XAR3,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -6
	.dwcfi	restore_reg, 11
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$99	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$99, DW_AT_low_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$88, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$88, DW_AT_TI_end_line(0x124)
	.dwattr $C$DW$88, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$88

	.sect	".text"
	.clink
	.global	_SPICANRoutine

$C$DW$100	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$100, DW_AT_name("SPICANRoutine")
	.dwattr $C$DW$100, DW_AT_low_pc(_SPICANRoutine)
	.dwattr $C$DW$100, DW_AT_high_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_SPICANRoutine")
	.dwattr $C$DW$100, DW_AT_external
	.dwattr $C$DW$100, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$100, DW_AT_TI_begin_line(0x18a)
	.dwattr $C$DW$100, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$100, DW_AT_TI_max_frame_size(-12)
	.dwpsn	file "../Source/SPICAN.c",line 395,column 1,is_stmt,address _SPICANRoutine,isa 0

	.dwfde $C$DW$CIE, _SPICANRoutine
;----------------------------------------------------------------------
; 394 | void SPICANRoutine(void)                                               
; 396 | Uint16 interrupts;                                                     
; 397 | // Check interrupts for what all happened                              
; 398 | interrupts = SPICANRead(0x2C);                                         
; 400 | // TX Interrupts                                                       
; 402 | // RX Interrupts                                                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRoutine                FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  2 SOE     *
;***************************************************************

_SPICANRoutine:
;* AL    assigned to _RetVal
$C$DW$101	.dwtag  DW_TAG_variable
	.dwattr $C$DW$101, DW_AT_name("RetVal")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _interrupts
$C$DW$102	.dwtag  DW_TAG_variable
	.dwattr $C$DW$102, DW_AT_name("interrupts")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_interrupts")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg6]

$C$DW$103	.dwtag  DW_TAG_variable
	.dwattr $C$DW$103, DW_AT_name("arr")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_arr")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$94)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_breg20 -8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        ADDB      SP,#8                 ; [CPU_U] 
	.dwcfi	cfa_offset, -12
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$104, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |70| 
        ; call occurs [#_spi_xmit] ; [] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |71| 
$C$DW$105	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$105, DW_AT_low_pc(0x00)
	.dwattr $C$DW$105, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$105, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_name("_spi_recv")
	.dwattr $C$DW$106, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |72| 
        ; call occurs [#_spi_recv] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        MOVZ      AR1,AL                ; [CPU_] |74| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 403,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 403 | if((interrupts & 0x03) > 0x00)                                         
;----------------------------------------------------------------------
        AND       AL,AR1,#0x0003        ; [CPU_] |403| 
        B         $C$L9,EQ              ; [CPU_] |403| 
        ; branchcc occurs ; [] |403| 
	.dwpsn	file "../Source/SPICAN.c",line 406,column 10,is_stmt,isa 0
;----------------------------------------------------------------------
; 406 | Uint16 arr[] = {0, 1, 2, 3, 4, 5, 6, 7};                               
; 407 | // RX1 Interrupt                                                       
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |406| 
        SUBB      XAR4,#8               ; [CPU_U] |406| 
        MOVZ      AR4,AR4               ; [CPU_] |406| 
        MOVL      XAR7,#_$P$T0$1        ; [CPU_U] |406| 
	.dwpsn	file "../Source/SPICAN.c",line 408,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 408 | if((interrupts & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      AR1,#1                ; [CPU_] |408| 
	.dwpsn	file "../Source/SPICAN.c",line 406,column 10,is_stmt,isa 0
        RPT       #7
||     PREAD     *XAR4++,*XAR7         ; [CPU_] |406| 
	.dwpsn	file "../Source/SPICAN.c",line 408,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 410 | // For now, send back dummy data                                       
; 411 | // Wait for the TX Buffer to be ready                                  
;----------------------------------------------------------------------
        B         $C$L8,NTC             ; [CPU_] |408| 
        ; branchcc occurs ; [] |408| 
	.dwpsn	file "../Source/SPICAN.c",line 412,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 412 | SPICANWaitForTXBuf(0);                                                 
; 413 | // Set the message on the buffer                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |412| 
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |412| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |412| 
	.dwpsn	file "../Source/SPICAN.c",line 414,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 414 | SPICANReadSetT0Message(0xA2, 8, arr);                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |414| 
        MOVB      AL,#162               ; [CPU_] |414| 
        MOVB      AH,#8                 ; [CPU_] |414| 
        SUBB      XAR4,#8               ; [CPU_U] |414| 
        MOVZ      AR4,AR4               ; [CPU_] |414| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_SPICANReadSetT0Message ; [CPU_] |414| 
        ; call occurs [#_SPICANReadSetT0Message] ; [] |414| 
	.dwpsn	file "../Source/SPICAN.c",line 415,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 415 | SPICANWaitForTXBuf(0);                                                 
; 416 | // Signal that the message is ready to send                            
; 417 | SPICAN_T0_RTS();                                                       
; 419 | // RX0 Interrupt                                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |415| 
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |415| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |415| 
	.dwpsn	file "../Source/SPICAN.c",line 219,column 2,is_stmt,isa 0
        MOVB      AL,#129               ; [CPU_] |219| 
	.dwpsn	file "../Source/SPICAN.c",line 218,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |218| 
	.dwpsn	file "../Source/SPICAN.c",line 219,column 2,is_stmt,isa 0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$110, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |219| 
        ; call occurs [#_spi_xmit] ; [] |219| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 220,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |220| 
$C$L8:    
	.dwpsn	file "../Source/SPICAN.c",line 420,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 420 | if((interrupts & 0x01) == 0x01)                                        
; 422 |         // For now, send back dummy data                               
; 423 |         // Wait for the TX Buffer to be ready                          
;----------------------------------------------------------------------
        TBIT      AR1,#0                ; [CPU_] |420| 
        B         $C$L9,NTC             ; [CPU_] |420| 
        ; branchcc occurs ; [] |420| 
	.dwpsn	file "../Source/SPICAN.c",line 424,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 424 | SPICANWaitForTXBuf(0);                                                 
; 425 | // Set the message on the buffer                                       
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |424| 
$C$DW$111	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$111, DW_AT_low_pc(0x00)
	.dwattr $C$DW$111, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$111, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |424| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |424| 
	.dwpsn	file "../Source/SPICAN.c",line 426,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 426 | SPICANReadSetT0Message(0xB3, 8, arr);                                  
;----------------------------------------------------------------------
        MOVZ      AR4,SP                ; [CPU_] |426| 
        MOVB      AL,#179               ; [CPU_] |426| 
        MOVB      AH,#8                 ; [CPU_] |426| 
        SUBB      XAR4,#8               ; [CPU_U] |426| 
        MOVZ      AR4,AR4               ; [CPU_] |426| 
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$112, DW_AT_TI_call

        LCR       #_SPICANReadSetT0Message ; [CPU_] |426| 
        ; call occurs [#_SPICANReadSetT0Message] ; [] |426| 
	.dwpsn	file "../Source/SPICAN.c",line 427,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 427 | SPICANWaitForTXBuf(0);                                                 
; 428 | // Signal that the message is ready to send                            
; 429 | SPICAN_T0_RTS();                                                       
; 433 | // Clear the interrupts                                                
; 434 | // SPICANWrite(0x0E, 0x00);                                            
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |427| 
$C$DW$113	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$113, DW_AT_low_pc(0x00)
	.dwattr $C$DW$113, DW_AT_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$113, DW_AT_TI_call

        LCR       #_SPICANWaitForTXBuf  ; [CPU_] |427| 
        ; call occurs [#_SPICANWaitForTXBuf] ; [] |427| 
	.dwpsn	file "../Source/SPICAN.c",line 219,column 2,is_stmt,isa 0
        MOVB      AL,#129               ; [CPU_] |219| 
	.dwpsn	file "../Source/SPICAN.c",line 218,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |218| 
	.dwpsn	file "../Source/SPICAN.c",line 219,column 2,is_stmt,isa 0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$114, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |219| 
        ; call occurs [#_spi_xmit] ; [] |219| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 220,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |220| 
$C$L9:    
	.dwpsn	file "../Source/SPICAN.c",line 435,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 435 | SPICANBitModify(0x2C, 0xFF, 0x00);                                     
; 436 | return;                                                                
;----------------------------------------------------------------------
        MOVB      AL,#44                ; [CPU_] |435| 
        MOVB      AH,#255               ; [CPU_] |435| 
        MOVB      XAR4,#0               ; [CPU_] |435| 
$C$DW$115	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$115, DW_AT_low_pc(0x00)
	.dwattr $C$DW$115, DW_AT_name("_SPICANBitModify")
	.dwattr $C$DW$115, DW_AT_TI_call

        LCR       #_SPICANBitModify     ; [CPU_] |435| 
        ; call occurs [#_SPICANBitModify] ; [] |435| 
        SUBB      SP,#8                 ; [CPU_U] 
	.dwcfi	cfa_offset, -4
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$100, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$100, DW_AT_TI_end_line(0x1b5)
	.dwattr $C$DW$100, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$100

	.sect	".text"
	.clink
	.global	_SPICANReset

$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("SPICANReset")
	.dwattr $C$DW$117, DW_AT_low_pc(_SPICANReset)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_SPICANReset")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x38)
	.dwattr $C$DW$117, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 57,column 1,is_stmt,address _SPICANReset,isa 0

	.dwfde $C$DW$CIE, _SPICANReset
;----------------------------------------------------------------------
;  56 | void SPICANReset (void)                                                
;  58 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |59| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$118, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |59| 
        ; call occurs [#_spi_xmit] ; [] |59| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 60,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |60| 
$C$DW$119	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$119, DW_AT_low_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$117, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x3d)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	".text"
	.clink
	.global	_SPICANReadStat

$C$DW$120	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$120, DW_AT_name("SPICANReadStat")
	.dwattr $C$DW$120, DW_AT_low_pc(_SPICANReadStat)
	.dwattr $C$DW$120, DW_AT_high_pc(0x00)
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_SPICANReadStat")
	.dwattr $C$DW$120, DW_AT_external
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$120, DW_AT_TI_begin_line(0x5b)
	.dwattr $C$DW$120, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$120, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 92,column 1,is_stmt,address _SPICANReadStat,isa 0

	.dwfde $C$DW$CIE, _SPICANReadStat
;----------------------------------------------------------------------
;  91 | Uint16 SPICANReadStat (void)                                           
;  93 | Uint16  RetVal;                                                        
;  94 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
$C$DW$121	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$121, DW_AT_low_pc(0x00)
	.dwattr $C$DW$121, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$121, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |95| 
        ; call occurs [#_spi_xmit] ; [] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |96| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$122, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$123	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$123, DW_AT_low_pc(0x00)
	.dwattr $C$DW$123, DW_AT_name("_spi_recv")
	.dwattr $C$DW$123, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |97| 
        ; call occurs [#_spi_recv] ; [] |97| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  99 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |98| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$120, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$120, DW_AT_TI_end_line(0x64)
	.dwattr $C$DW$120, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$120

	.sect	".text"
	.clink
	.global	_SPICANReadInts

$C$DW$125	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$125, DW_AT_name("SPICANReadInts")
	.dwattr $C$DW$125, DW_AT_low_pc(_SPICANReadInts)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_SPICANReadInts")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x126)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 295,column 1,is_stmt,address _SPICANReadInts,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInts
;----------------------------------------------------------------------
; 294 | Uint16 SPICANReadInts(void)                                            
; 296 | Uint16 count, res;                                                     
; 297 | count = 0;                                                             
; 298 | res = SPICANRead(0x2C);                                                
; 299 | while(res == 0xFF)                                                     
; 301 |         // delay_us(1);                                                
; 302 |         res = SPICANRead(0x2C);                                        
; 304 | return res;                                                            
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
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("res")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |70| 
        ; call occurs [#_spi_xmit] ; [] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |71| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_spi_recv")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |72| 
        ; call occurs [#_spi_recv] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |74| 
        B         $C$L11,NEQ            ; [CPU_] |74| 
        ; branchcc occurs ; [] |74| 
$C$L10:    
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |70| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |70| 
        ; call occurs [#_spi_xmit] ; [] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#44                ; [CPU_] |71| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$131, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_name("_spi_recv")
	.dwattr $C$DW$132, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |72| 
        ; call occurs [#_spi_recv] ; [] |72| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        CMPB      AL,#255               ; [CPU_] |74| 
        B         $C$L10,EQ             ; [CPU_] |74| 
        ; branchcc occurs ; [] |74| 
$C$L11:    
$C$DW$133	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$133, DW_AT_low_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$125, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x131)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.clink
	.global	_SPICANReadInt

$C$DW$134	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$134, DW_AT_name("SPICANReadInt")
	.dwattr $C$DW$134, DW_AT_low_pc(_SPICANReadInt)
	.dwattr $C$DW$134, DW_AT_high_pc(0x00)
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_SPICANReadInt")
	.dwattr $C$DW$134, DW_AT_external
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$134, DW_AT_TI_begin_line(0x78)
	.dwattr $C$DW$134, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$134, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 121,column 1,is_stmt,address _SPICANReadInt,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInt
;----------------------------------------------------------------------
; 120 | Uint16 SPICANReadInt (void)                                            
; 122 | Uint16 RetVal;                                                         
; 123 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 124,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |124| 
	.dwpsn	file "../Source/SPICAN.c",line 123,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |123| 
	.dwpsn	file "../Source/SPICAN.c",line 124,column 2,is_stmt,isa 0
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |124| 
        ; call occurs [#_spi_xmit] ; [] |124| 
	.dwpsn	file "../Source/SPICAN.c",line 125,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 125 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |125| 
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |125| 
        ; call occurs [#_spi_xmit] ; [] |125| 
	.dwpsn	file "../Source/SPICAN.c",line 126,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_spi_recv")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |126| 
        ; call occurs [#_spi_recv] ; [] |126| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 127,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 127 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |127| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$134, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$134, DW_AT_TI_end_line(0x80)
	.dwattr $C$DW$134, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$134

	.sect	".text"
	.clink
	.global	_SPICANRXStatus

$C$DW$139	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$139, DW_AT_name("SPICANRXStatus")
	.dwattr $C$DW$139, DW_AT_low_pc(_SPICANRXStatus)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_SPICANRXStatus")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0x82)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 131,column 1,is_stmt,address _SPICANRXStatus,isa 0

	.dwfde $C$DW$CIE, _SPICANRXStatus
;----------------------------------------------------------------------
; 130 | Uint16 SPICANRXStatus (void)                                           
; 132 | Uint16  RetVal;                                                        
; 133 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$140	.dwtag  DW_TAG_variable
	.dwattr $C$DW$140, DW_AT_name("RetVal")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 134,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | spi_xmit(SPICAN_RXSTAT);                                               
;----------------------------------------------------------------------
        MOVB      AL,#176               ; [CPU_] |134| 
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |133| 
	.dwpsn	file "../Source/SPICAN.c",line 134,column 2,is_stmt,isa 0
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |134| 
        ; call occurs [#_spi_xmit] ; [] |134| 
	.dwpsn	file "../Source/SPICAN.c",line 135,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_spi_recv")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |135| 
        ; call occurs [#_spi_recv] ; [] |135| 
        MOVZ      AR1,AL                ; [CPU_] |135| 
	.dwpsn	file "../Source/SPICAN.c",line 136,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 136 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_spi_recv")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |136| 
        ; call occurs [#_spi_recv] ; [] |136| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 137,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 137 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |137| 
	.dwpsn	file "../Source/SPICAN.c",line 138,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |138| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$139, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0x8b)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text"
	.clink
	.global	_SPICANRXBufReady

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("SPICANRXBufReady")
	.dwattr $C$DW$145, DW_AT_low_pc(_SPICANRXBufReady)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_SPICANRXBufReady")
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$145, DW_AT_TI_begin_line(0xdf)
	.dwattr $C$DW$145, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 224,column 1,is_stmt,address _SPICANRXBufReady,isa 0

	.dwfde $C$DW$CIE, _SPICANRXBufReady
;----------------------------------------------------------------------
; 223 | Uint16 SPICANRXBufReady(void)                                          
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
$C$DW$146	.dwtag  DW_TAG_variable
	.dwattr $C$DW$146, DW_AT_name("RetVal")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 134,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |134| 
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |133| 
	.dwpsn	file "../Source/SPICAN.c",line 134,column 2,is_stmt,isa 0
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |134| 
        ; call occurs [#_spi_xmit] ; [] |134| 
	.dwpsn	file "../Source/SPICAN.c",line 135,column 2,is_stmt,isa 0
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_spi_recv")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |135| 
        ; call occurs [#_spi_recv] ; [] |135| 
        MOVZ      AR1,AL                ; [CPU_] |135| 
	.dwpsn	file "../Source/SPICAN.c",line 136,column 2,is_stmt,isa 0
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_name("_spi_recv")
	.dwattr $C$DW$149, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |136| 
        ; call occurs [#_spi_recv] ; [] |136| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 225,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | return (SPICANRXStatus() & 0xC0) >> 6;                                 
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |225| 
	.dwpsn	file "../Source/SPICAN.c",line 137,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |137| 
	.dwpsn	file "../Source/SPICAN.c",line 225,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |225| 
        ANDB      AL,#0x03              ; [CPU_] |225| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0xe2)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text"
	.clink
	.global	_SPICANReadBuf_Array

$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("SPICANReadBuf_Array")
	.dwattr $C$DW$151, DW_AT_low_pc(_SPICANReadBuf_Array)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0x9e)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 159,column 1,is_stmt,address _SPICANReadBuf_Array,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf_Array
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("data")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg12]

$C$DW$153	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$153, DW_AT_name("whichBuf")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 158 | void SPICANReadBuf_Array (Uint16 data[], Uint16 whichBuf)              
; 160 | int k;                                                                 
; 161 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$154	.dwtag  DW_TAG_variable
	.dwattr $C$DW$154, DW_AT_name("data")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$154, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _whichBuf
$C$DW$155	.dwtag  DW_TAG_variable
	.dwattr $C$DW$155, DW_AT_name("whichBuf")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to $O$U10
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 162,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | spi_xmit(SPICAN_RXBUF0 + 4 * whichBuf);                                
;----------------------------------------------------------------------
        MOV       ACC,AL << #2          ; [CPU_] |162| 
	.dwpsn	file "../Source/SPICAN.c",line 159,column 1,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_] |159| 
	.dwpsn	file "../Source/SPICAN.c",line 161,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |161| 
	.dwpsn	file "../Source/SPICAN.c",line 162,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 163 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        ADD       AL,#146               ; [CPU_] |162| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |162| 
        ; call occurs [#_spi_xmit] ; [] |162| 
        MOVB      XAR2,#7               ; [CPU_] 
$C$L12:    
	.dwpsn	file "../Source/SPICAN.c",line 165,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | data[k] = spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_spi_recv")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |165| 
        ; call occurs [#_spi_recv] ; [] |165| 
        MOV       *XAR1++,AL            ; [CPU_] |165| 
	.dwpsn	file "../Source/SPICAN.c",line 163,column 13,is_stmt,isa 0
        BANZ      $C$L12,AR2--          ; [CPU_] |163| 
        ; branchcc occurs ; [] |163| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 167,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 167 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |167| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$151, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0xa8)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text"
	.clink
	.global	_SPICANReadBufs

$C$DW$159	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$159, DW_AT_name("SPICANReadBufs")
	.dwattr $C$DW$159, DW_AT_low_pc(_SPICANReadBufs)
	.dwattr $C$DW$159, DW_AT_high_pc(0x00)
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_SPICANReadBufs")
	.dwattr $C$DW$159, DW_AT_external
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$159, DW_AT_TI_begin_line(0xe4)
	.dwattr $C$DW$159, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$159, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 229,column 1,is_stmt,address _SPICANReadBufs,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBufs
$C$DW$160	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$160, DW_AT_name("buf1")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$160, DW_AT_location[DW_OP_reg12]

$C$DW$161	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$161, DW_AT_name("buf2")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$77)
	.dwattr $C$DW$161, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 228 | Uint16 SPICANReadBufs(Uint16 buf1[], Uint16 buf2[])                    
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
$C$DW$162	.dwtag  DW_TAG_variable
	.dwattr $C$DW$162, DW_AT_name("RetVal")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg6]

$C$DW$163	.dwtag  DW_TAG_variable
	.dwattr $C$DW$163, DW_AT_name("res")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_breg20 -1]

$C$DW$164	.dwtag  DW_TAG_variable
	.dwattr $C$DW$164, DW_AT_name("buf_status")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_buf_status")
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_location[DW_OP_breg20 -2]

;* AR3   assigned to _buf2
$C$DW$165	.dwtag  DW_TAG_variable
	.dwattr $C$DW$165, DW_AT_name("buf2")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$165, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _buf1
$C$DW$166	.dwtag  DW_TAG_variable
	.dwattr $C$DW$166, DW_AT_name("buf1")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$89)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg8]

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
	.dwpsn	file "../Source/SPICAN.c",line 134,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |134| 
	.dwpsn	file "../Source/SPICAN.c",line 229,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | Uint16 buf_status;                                                     
;----------------------------------------------------------------------
        MOVL      XAR3,XAR5             ; [CPU_] |229| 
        MOVL      XAR2,XAR4             ; [CPU_] |229| 
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |133| 
	.dwpsn	file "../Source/SPICAN.c",line 134,column 2,is_stmt,isa 0
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |134| 
        ; call occurs [#_spi_xmit] ; [] |134| 
	.dwpsn	file "../Source/SPICAN.c",line 135,column 2,is_stmt,isa 0
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_spi_recv")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |135| 
        ; call occurs [#_spi_recv] ; [] |135| 
        MOVZ      AR1,AL                ; [CPU_] |135| 
	.dwpsn	file "../Source/SPICAN.c",line 136,column 2,is_stmt,isa 0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_spi_recv")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |136| 
        ; call occurs [#_spi_recv] ; [] |136| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 225,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |225| 
	.dwpsn	file "../Source/SPICAN.c",line 231,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 231 | Uint16 res = 0x00;                                                     
; 233 | // Get the status of the RX Buffs                                      
; 234 | buf_status = SPICANRXBufReady();                                       
; 235 | // buf_status = SPICANRead(0x2C); // Get the interrupt status          
; 236 | // SPICANWrite(0x2C, (buf_status & 0xFC)); // Reset the RX interrupts  
; 237 | // buf_status = (buf_status & 0x03);                                   
; 239 | // Check if there's a message in the RX Buffers                        
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_] |231| 
	.dwpsn	file "../Source/SPICAN.c",line 137,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |137| 
	.dwpsn	file "../Source/SPICAN.c",line 225,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |225| 
        ANDB      AL,#0x03              ; [CPU_] |225| 
        MOV       *-SP[2],AL            ; [CPU_] |225| 
	.dwpsn	file "../Source/SPICAN.c",line 240,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 240 | if(buf_status != 0x00)                                                 
; 242 |         // First RX Buffer 0                                           
;----------------------------------------------------------------------
        B         $C$L14,EQ             ; [CPU_] |240| 
        ; branchcc occurs ; [] |240| 
	.dwpsn	file "../Source/SPICAN.c",line 243,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 243 | if((buf_status & 0x01) == 0x01)                                        
;----------------------------------------------------------------------
        TBIT      AR1,#6                ; [CPU_] |243| 
        B         $C$L13,NTC            ; [CPU_] |243| 
        ; branchcc occurs ; [] |243| 
	.dwpsn	file "../Source/SPICAN.c",line 245,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | SPICANReadBuf_Array(buf1, 0);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR2             ; [CPU_] |245| 
        MOVB      AL,#0                 ; [CPU_] |245| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |245| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |245| 
	.dwpsn	file "../Source/SPICAN.c",line 246,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 246 | res |= 0x01;                                                           
; 249 | // Second RX Buffer 1                                                  
;----------------------------------------------------------------------
        MOV       *-SP[1],#1            ; [CPU_] |246| 
$C$L13:    
        MOV       AL,*-SP[2]            ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 250,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | if((buf_status & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      AL,#1                 ; [CPU_] |250| 
        B         $C$L14,NTC            ; [CPU_] |250| 
        ; branchcc occurs ; [] |250| 
	.dwpsn	file "../Source/SPICAN.c",line 252,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 252 | SPICANReadBuf_Array(buf2, 1);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR3             ; [CPU_] |252| 
        MOVB      AL,#1                 ; [CPU_] |252| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |252| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |252| 
        MOV       AL,*-SP[1]            ; [CPU_] |252| 
	.dwpsn	file "../Source/SPICAN.c",line 253,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 253 | res |= 0x02;                                                           
; 256 | return res;                                                            
;----------------------------------------------------------------------
        ORB       AL,#0x02              ; [CPU_] |253| 
        MOV       *-SP[1],AL            ; [CPU_] |253| 
$C$L14:    
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
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$159, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$159, DW_AT_TI_end_line(0x101)
	.dwattr $C$DW$159, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$159

	.sect	".text"
	.clink
	.global	_SPICANReadBuf1

$C$DW$173	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$173, DW_AT_name("SPICANReadBuf1")
	.dwattr $C$DW$173, DW_AT_low_pc(_SPICANReadBuf1)
	.dwattr $C$DW$173, DW_AT_high_pc(0x00)
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_SPICANReadBuf1")
	.dwattr $C$DW$173, DW_AT_external
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$173, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$173, DW_AT_TI_begin_line(0x8d)
	.dwattr $C$DW$173, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$173, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 142,column 1,is_stmt,address _SPICANReadBuf1,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf1
;----------------------------------------------------------------------
; 141 | Uint32 SPICANReadBuf1 (void)                                           
; 143 | Uint32  RetVal;                                                        
; 144 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$174	.dwtag  DW_TAG_variable
	.dwattr $C$DW$174, DW_AT_name("RetVal")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$107)
	.dwattr $C$DW$174, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 145,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 145 | spi_xmit(SPICAN_RXBUF1);                                               
;----------------------------------------------------------------------
        MOVB      AL,#150               ; [CPU_] |145| 
	.dwpsn	file "../Source/SPICAN.c",line 144,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |144| 
	.dwpsn	file "../Source/SPICAN.c",line 145,column 2,is_stmt,isa 0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |145| 
        ; call occurs [#_spi_xmit] ; [] |145| 
	.dwpsn	file "../Source/SPICAN.c",line 146,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 146 | RetVal = spi_recv() << 24;                                             
;----------------------------------------------------------------------
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_spi_recv")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |146| 
        ; call occurs [#_spi_recv] ; [] |146| 
	.dwpsn	file "../Source/SPICAN.c",line 147,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | RetVal |= spi_recv() << 16;                                            
;----------------------------------------------------------------------
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_spi_recv")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |147| 
        ; call occurs [#_spi_recv] ; [] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 148,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 148 | RetVal |= spi_recv() << 8;                                             
;----------------------------------------------------------------------
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_spi_recv")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |148| 
        ; call occurs [#_spi_recv] ; [] |148| 
        MOV       ACC,AL << #8          ; [CPU_] |148| 
        MOVZ      AR1,AL                ; [CPU_] |148| 
	.dwpsn	file "../Source/SPICAN.c",line 149,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 149 | RetVal |= spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_spi_recv")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |149| 
        ; call occurs [#_spi_recv] ; [] |149| 
        MOVZ      AR6,AL                ; [CPU_] |149| 
        MOVL      ACC,XAR1              ; [CPU_] |149| 
        OR        ACC,AR6               ; [CPU_] |149| 
        MOVL      XAR1,ACC              ; [CPU_] |149| 
	.dwpsn	file "../Source/SPICAN.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_spi_recv")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |150| 
        ; call occurs [#_spi_recv] ; [] |150| 
	.dwpsn	file "../Source/SPICAN.c",line 151,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_spi_recv")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |151| 
        ; call occurs [#_spi_recv] ; [] |151| 
	.dwpsn	file "../Source/SPICAN.c",line 152,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 152 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_spi_recv")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |152| 
        ; call occurs [#_spi_recv] ; [] |152| 
	.dwpsn	file "../Source/SPICAN.c",line 153,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_spi_recv")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |153| 
        ; call occurs [#_spi_recv] ; [] |153| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 154,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 154 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |154| 
	.dwpsn	file "../Source/SPICAN.c",line 155,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOVL      ACC,XAR1              ; [CPU_] |155| 
        MOVL      XAR1,*--SP            ; [CPU_] |155| 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$173, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$173, DW_AT_TI_end_line(0x9c)
	.dwattr $C$DW$173, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$173

	.sect	".text"
	.clink
	.global	_SPICANMasksFilts

$C$DW$185	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$185, DW_AT_name("SPICANMasksFilts")
	.dwattr $C$DW$185, DW_AT_low_pc(_SPICANMasksFilts)
	.dwattr $C$DW$185, DW_AT_high_pc(0x00)
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_SPICANMasksFilts")
	.dwattr $C$DW$185, DW_AT_external
	.dwattr $C$DW$185, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$185, DW_AT_TI_begin_line(0x25)
	.dwattr $C$DW$185, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$185, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 38,column 1,is_stmt,address _SPICANMasksFilts,isa 0

	.dwfde $C$DW$CIE, _SPICANMasksFilts
;----------------------------------------------------------------------
;  37 | void SPICANMasksFilts(void)                                            
;  39 | // Set up filters for RX buffs                                         
;  40 | SPICANWrite(0x00, 0x80);                                               
;  41 | delay_us(10);                                                          
;  42 | SPICANWrite(0x01, 0x00);                                               
;  43 | delay_us(10);                                                          
;  45 | // Set up masks for RX buffs                                           
;  46 | SPICANWrite(0x20, 0xF9);                                               
;  47 | delay_us(10);                                                          
;  48 | SPICANWrite(0x21, 0x80);                                               
;  50 | // MASK: 111 1100 1000                                                 
;  51 | // FILT: 100 0000 0000                                                 
;  52 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  53 | return;                                                                
;  56 | void SPICANReset (void)                                                
;  58 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  59 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;  60 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  63 | // Responsible for reading the status of a                             
;  64 | // register address on the SPICAN Control Register                     
;  65 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  66 | Uint16 SPICANRead (Uint16 Input)                                       
;  68 | Uint16  RetVal;                                                        
;  69 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  70 | spi_xmit(SPICAN_READ);                                                 
;  71 | spi_xmit(Input);                                                       
;  72 | RetVal = spi_recv();                                                   
;  73 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  74 | return(RetVal);                                                        
;  77 | // Responsible for writing the status of a                             
;  78 | // register address on the SPICAN Control Register                     
;  79 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  80 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANMasksFilts             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANMasksFilts:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |84| 
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOVB      AL,#128               ; [CPU_] |85| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 41,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |41| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 41,column 2,is_stmt,isa 0
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_delay_us")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |41| 
        ; call occurs [#_delay_us] ; [] |41| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$190	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$190, DW_AT_low_pc(0x00)
	.dwattr $C$DW$190, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$190, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |84| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |85| 
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 43,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |43| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 43,column 2,is_stmt,isa 0
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_name("_delay_us")
	.dwattr $C$DW$193, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |43| 
        ; call occurs [#_delay_us] ; [] |43| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$194	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$194, DW_AT_low_pc(0x00)
	.dwattr $C$DW$194, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$194, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |84| 
$C$DW$195	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$195, DW_AT_low_pc(0x00)
	.dwattr $C$DW$195, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$195, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#249               ; [CPU_] |85| 
$C$DW$196	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$196, DW_AT_low_pc(0x00)
	.dwattr $C$DW$196, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$196, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |47| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
$C$DW$197	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$197, DW_AT_low_pc(0x00)
	.dwattr $C$DW$197, DW_AT_name("_delay_us")
	.dwattr $C$DW$197, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |47| 
        ; call occurs [#_delay_us] ; [] |47| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$198	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$198, DW_AT_low_pc(0x00)
	.dwattr $C$DW$198, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$198, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |84| 
$C$DW$199	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$199, DW_AT_low_pc(0x00)
	.dwattr $C$DW$199, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$199, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#128               ; [CPU_] |85| 
$C$DW$200	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$200, DW_AT_low_pc(0x00)
	.dwattr $C$DW$200, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$200, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
$C$DW$201	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$201, DW_AT_low_pc(0x00)
	.dwattr $C$DW$201, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$185, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$185, DW_AT_TI_end_line(0x36)
	.dwattr $C$DW$185, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$185

	.sect	".text"
	.clink
	.global	_SPICANIntEn

$C$DW$202	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$202, DW_AT_name("SPICANIntEn")
	.dwattr $C$DW$202, DW_AT_low_pc(_SPICANIntEn)
	.dwattr $C$DW$202, DW_AT_high_pc(0x00)
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_SPICANIntEn")
	.dwattr $C$DW$202, DW_AT_external
	.dwattr $C$DW$202, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$202, DW_AT_TI_begin_line(0x6f)
	.dwattr $C$DW$202, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$202, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 112,column 1,is_stmt,address _SPICANIntEn,isa 0

	.dwfde $C$DW$CIE, _SPICANIntEn
;----------------------------------------------------------------------
; 111 | void SPICANIntEn (void)
;     |  //Enables RX interupts for now                                        
; 113 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 114,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 114 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |114| 
	.dwpsn	file "../Source/SPICAN.c",line 113,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |113| 
	.dwpsn	file "../Source/SPICAN.c",line 114,column 2,is_stmt,isa 0
$C$DW$203	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$203, DW_AT_low_pc(0x00)
	.dwattr $C$DW$203, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$203, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |114| 
        ; call occurs [#_spi_xmit] ; [] |114| 
	.dwpsn	file "../Source/SPICAN.c",line 115,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 115 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |115| 
$C$DW$204	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$204, DW_AT_low_pc(0x00)
	.dwattr $C$DW$204, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$204, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |115| 
        ; call occurs [#_spi_xmit] ; [] |115| 
	.dwpsn	file "../Source/SPICAN.c",line 116,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 116 | spi_xmit(0x03);
;     |  //Enable RX Interupts                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |116| 
$C$DW$205	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$205, DW_AT_low_pc(0x00)
	.dwattr $C$DW$205, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$205, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |116| 
        ; call occurs [#_spi_xmit] ; [] |116| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 117,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 117 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |117| 
$C$DW$206	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$206, DW_AT_low_pc(0x00)
	.dwattr $C$DW$206, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$202, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$202, DW_AT_TI_end_line(0x76)
	.dwattr $C$DW$202, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$202

	.sect	".text"
	.clink
	.global	_SPICANConfigure

$C$DW$207	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$207, DW_AT_name("SPICANConfigure")
	.dwattr $C$DW$207, DW_AT_low_pc(_SPICANConfigure)
	.dwattr $C$DW$207, DW_AT_high_pc(0x00)
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_SPICANConfigure")
	.dwattr $C$DW$207, DW_AT_external
	.dwattr $C$DW$207, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$207, DW_AT_TI_begin_line(0x133)
	.dwattr $C$DW$207, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$207, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 308,column 1,is_stmt,address _SPICANConfigure,isa 0

	.dwfde $C$DW$CIE, _SPICANConfigure
;----------------------------------------------------------------------
; 307 | void SPICANConfigure(void)                                             
; 310 | // For configuration details, see note at bottom                       
; 311 | SPICANWrite(0x2A, 0x81);                // Setting up CNF1             
; 312 | SPICANWrite(0x29, 0xD0);                // Setting up CNF2             
; 313 | SPICANWrite(0x28, 0xC2);                // Setting up CNF3             
; 314 | return;                                                                
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
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$208	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$208, DW_AT_low_pc(0x00)
	.dwattr $C$DW$208, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$208, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#42                ; [CPU_] |84| 
$C$DW$209	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$209, DW_AT_low_pc(0x00)
	.dwattr $C$DW$209, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$209, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#129               ; [CPU_] |85| 
$C$DW$210	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$210, DW_AT_low_pc(0x00)
	.dwattr $C$DW$210, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$210, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$211	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$211, DW_AT_low_pc(0x00)
	.dwattr $C$DW$211, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$211, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#41                ; [CPU_] |84| 
$C$DW$212	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$212, DW_AT_low_pc(0x00)
	.dwattr $C$DW$212, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$212, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#208               ; [CPU_] |85| 
$C$DW$213	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$213, DW_AT_low_pc(0x00)
	.dwattr $C$DW$213, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$213, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$214	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$214, DW_AT_low_pc(0x00)
	.dwattr $C$DW$214, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$214, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#40                ; [CPU_] |84| 
$C$DW$215	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$215, DW_AT_low_pc(0x00)
	.dwattr $C$DW$215, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$215, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#194               ; [CPU_] |85| 
$C$DW$216	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$216, DW_AT_low_pc(0x00)
	.dwattr $C$DW$216, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$216, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
$C$DW$217	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$217, DW_AT_low_pc(0x00)
	.dwattr $C$DW$217, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$207, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$207, DW_AT_TI_end_line(0x188)
	.dwattr $C$DW$207, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$207

	.sect	".text"
	.clink
	.global	_SPICANInit

$C$DW$218	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$218, DW_AT_name("SPICANInit")
	.dwattr $C$DW$218, DW_AT_low_pc(_SPICANInit)
	.dwattr $C$DW$218, DW_AT_high_pc(0x00)
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_SPICANInit")
	.dwattr $C$DW$218, DW_AT_external
	.dwattr $C$DW$218, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$218, DW_AT_TI_begin_line(0x09)
	.dwattr $C$DW$218, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$218, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 10,column 1,is_stmt,address _SPICANInit,isa 0

	.dwfde $C$DW$CIE, _SPICANInit
;----------------------------------------------------------------------
;   9 | void SPICANInit(void)                                                  
;  11 | SPICANReset();                                  // Reset Command       
;  12 | delay_us(10);                                                          
;  13 | SPICANReadStat();                               // Make sure we're in c
;     | onfig mode                                                             
;  14 | delay_us(10);                                   // Need some form of de
;     | lay                                                                    
;  16 | SPICANConfigure();                                                     
;  17 | delay_us(10);                                                          
;  18 | SPICANWrite(0x2B, 0x00);                // Clearing all interrupts     
;  19 | delay_us(10);                                                          
;  20 | // SPICANWrite(0x2B, 0xFF); // Enabling all interrupts                 
;  22 | // Set up buffers to receive all valid messages                        
;  23 | SPICANWrite(0x60, 0x04);                // Set BUKT to be 1            
;  24 | delay_us(10);                                                          
;  25 | SPICANWrite(0x70, 0x00);                // Setup up RXB1 to receive all
;     |  messages                                                              
;  26 | delay_us(10);                                                          
;  28 | SPICANMasksFilts();                                                    
;  29 | delay_us(10);                                                          
;  31 | SPICANSetNorm();                                // Allow for Normal Mod
;     | e                                                                      
;  32 | delay_us(10);                                                          
;  33 | SPICANReadStat();                               // Confirm we are in No
;     | rmal Mode                                                              
;  34 | return;                                                                
;  37 | void SPICANMasksFilts(void)                                            
;  39 | // Set up filters for RX buffs                                         
;  40 | SPICANWrite(0x00, 0x80);                                               
;  41 | delay_us(10);                                                          
;  42 | SPICANWrite(0x01, 0x00);                                               
;  43 | delay_us(10);                                                          
;  45 | // Set up masks for RX buffs                                           
;  46 | SPICANWrite(0x20, 0xF9);                                               
;  47 | delay_us(10);                                                          
;  48 | SPICANWrite(0x21, 0x80);                                               
;  50 | // MASK: 111 1100 1000                                                 
;  51 | // FILT: 100 0000 0000                                                 
;  52 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  53 | return;                                                                
;  56 | void SPICANReset (void)                                                
;  58 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |59| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
$C$DW$219	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$219, DW_AT_low_pc(0x00)
	.dwattr $C$DW$219, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$219, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |59| 
        ; call occurs [#_spi_xmit] ; [] |59| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 12,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |12| 
	.dwpsn	file "../Source/SPICAN.c",line 60,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  63 | // Responsible for reading the status of a                             
;  64 | // register address on the SPICAN Control Register                     
;  65 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  66 | Uint16 SPICANRead (Uint16 Input)                                       
;  68 | Uint16  RetVal;                                                        
;  69 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  70 | spi_xmit(SPICAN_READ);                                                 
;  71 | spi_xmit(Input);                                                       
;  72 | RetVal = spi_recv();                                                   
;  73 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  74 | return(RetVal);                                                        
;  77 | // Responsible for writing the status of a                             
;  78 | // register address on the SPICAN Control Register                     
;  79 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  80 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  83 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;  84 | spi_xmit(ADDR);
;     |  //Write location                                                      
;  85 | spi_xmit(Input);
;     |  //Write Info                                                          
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;  89 | // Quick polling command that reads several status bits for transmit   
;  90 | // and receive functions.                                              
;  91 | Uint16 SPICANReadStat (void)                                           
;  93 | Uint16  RetVal;                                                        
;  94 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |60| 
	.dwpsn	file "../Source/SPICAN.c",line 12,column 2,is_stmt,isa 0
$C$DW$220	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$220, DW_AT_low_pc(0x00)
	.dwattr $C$DW$220, DW_AT_name("_delay_us")
	.dwattr $C$DW$220, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |12| 
        ; call occurs [#_delay_us] ; [] |12| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
$C$DW$221	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$221, DW_AT_low_pc(0x00)
	.dwattr $C$DW$221, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$221, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |95| 
        ; call occurs [#_spi_xmit] ; [] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |96| 
$C$DW$222	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$222, DW_AT_low_pc(0x00)
	.dwattr $C$DW$222, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$222, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$223	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$223, DW_AT_low_pc(0x00)
	.dwattr $C$DW$223, DW_AT_name("_spi_recv")
	.dwattr $C$DW$223, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |97| 
        ; call occurs [#_spi_recv] ; [] |97| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 14,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |14| 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  98 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  99 | return(RetVal);                                                        
; 102 | void SPICANSetNorm (void)                                              
; 104 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |98| 
	.dwpsn	file "../Source/SPICAN.c",line 14,column 2,is_stmt,isa 0
$C$DW$224	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$224, DW_AT_low_pc(0x00)
	.dwattr $C$DW$224, DW_AT_name("_delay_us")
	.dwattr $C$DW$224, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |14| 
        ; call occurs [#_delay_us] ; [] |14| 
	.dwpsn	file "../Source/SPICAN.c",line 16,column 2,is_stmt,isa 0
$C$DW$225	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$225, DW_AT_low_pc(0x00)
	.dwattr $C$DW$225, DW_AT_name("_SPICANConfigure")
	.dwattr $C$DW$225, DW_AT_TI_call

        LCR       #_SPICANConfigure     ; [CPU_] |16| 
        ; call occurs [#_SPICANConfigure] ; [] |16| 
	.dwpsn	file "../Source/SPICAN.c",line 17,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |17| 
$C$DW$226	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$226, DW_AT_low_pc(0x00)
	.dwattr $C$DW$226, DW_AT_name("_delay_us")
	.dwattr $C$DW$226, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |17| 
        ; call occurs [#_delay_us] ; [] |17| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$227	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$227, DW_AT_low_pc(0x00)
	.dwattr $C$DW$227, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$227, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |84| 
$C$DW$228	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$228, DW_AT_low_pc(0x00)
	.dwattr $C$DW$228, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$228, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |85| 
$C$DW$229	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$229, DW_AT_low_pc(0x00)
	.dwattr $C$DW$229, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$229, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 19,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |19| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 19,column 2,is_stmt,isa 0
$C$DW$230	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$230, DW_AT_low_pc(0x00)
	.dwattr $C$DW$230, DW_AT_name("_delay_us")
	.dwattr $C$DW$230, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |19| 
        ; call occurs [#_delay_us] ; [] |19| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$231	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$231, DW_AT_low_pc(0x00)
	.dwattr $C$DW$231, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$231, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#96                ; [CPU_] |84| 
$C$DW$232	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$232, DW_AT_low_pc(0x00)
	.dwattr $C$DW$232, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$232, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_] |85| 
$C$DW$233	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$233, DW_AT_low_pc(0x00)
	.dwattr $C$DW$233, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$233, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 24,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |24| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 24,column 2,is_stmt,isa 0
$C$DW$234	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$234, DW_AT_low_pc(0x00)
	.dwattr $C$DW$234, DW_AT_name("_delay_us")
	.dwattr $C$DW$234, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |24| 
        ; call occurs [#_delay_us] ; [] |24| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$235	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$235, DW_AT_low_pc(0x00)
	.dwattr $C$DW$235, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$235, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_] |84| 
$C$DW$236	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$236, DW_AT_low_pc(0x00)
	.dwattr $C$DW$236, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$236, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |85| 
$C$DW$237	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$237, DW_AT_low_pc(0x00)
	.dwattr $C$DW$237, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$237, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |85| 
        ; call occurs [#_spi_xmit] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 26,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |26| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 26,column 2,is_stmt,isa 0
$C$DW$238	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$238, DW_AT_low_pc(0x00)
	.dwattr $C$DW$238, DW_AT_name("_delay_us")
	.dwattr $C$DW$238, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |26| 
        ; call occurs [#_delay_us] ; [] |26| 
	.dwpsn	file "../Source/SPICAN.c",line 28,column 2,is_stmt,isa 0
$C$DW$239	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$239, DW_AT_low_pc(0x00)
	.dwattr $C$DW$239, DW_AT_name("_SPICANMasksFilts")
	.dwattr $C$DW$239, DW_AT_TI_call

        LCR       #_SPICANMasksFilts    ; [CPU_] |28| 
        ; call occurs [#_SPICANMasksFilts] ; [] |28| 
	.dwpsn	file "../Source/SPICAN.c",line 29,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |29| 
$C$DW$240	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$240, DW_AT_low_pc(0x00)
	.dwattr $C$DW$240, DW_AT_name("_delay_us")
	.dwattr $C$DW$240, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |29| 
        ; call occurs [#_delay_us] ; [] |29| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |104| 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
$C$DW$241	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$241, DW_AT_low_pc(0x00)
	.dwattr $C$DW$241, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$241, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |105| 
        ; call occurs [#_spi_xmit] ; [] |105| 
	.dwpsn	file "../Source/SPICAN.c",line 106,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 106 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |106| 
$C$DW$242	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$242, DW_AT_low_pc(0x00)
	.dwattr $C$DW$242, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$242, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |106| 
        ; call occurs [#_spi_xmit] ; [] |106| 
	.dwpsn	file "../Source/SPICAN.c",line 107,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 107 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |107| 
$C$DW$243	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$243, DW_AT_low_pc(0x00)
	.dwattr $C$DW$243, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$243, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |107| 
        ; call occurs [#_spi_xmit] ; [] |107| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 32,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |32| 
	.dwpsn	file "../Source/SPICAN.c",line 108,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |108| 
	.dwpsn	file "../Source/SPICAN.c",line 32,column 2,is_stmt,isa 0
$C$DW$244	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$244, DW_AT_low_pc(0x00)
	.dwattr $C$DW$244, DW_AT_name("_delay_us")
	.dwattr $C$DW$244, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |32| 
        ; call occurs [#_delay_us] ; [] |32| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
$C$DW$245	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$245, DW_AT_low_pc(0x00)
	.dwattr $C$DW$245, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$245, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |95| 
        ; call occurs [#_spi_xmit] ; [] |95| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        MOVB      AL,#14                ; [CPU_] |96| 
$C$DW$246	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$246, DW_AT_low_pc(0x00)
	.dwattr $C$DW$246, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$246, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |96| 
        ; call occurs [#_spi_xmit] ; [] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
$C$DW$247	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$247, DW_AT_low_pc(0x00)
	.dwattr $C$DW$247, DW_AT_name("_spi_recv")
	.dwattr $C$DW$247, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |97| 
        ; call occurs [#_spi_recv] ; [] |97| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 98,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |98| 
$C$DW$248	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$248, DW_AT_low_pc(0x00)
	.dwattr $C$DW$248, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$218, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$218, DW_AT_TI_end_line(0x23)
	.dwattr $C$DW$218, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$218

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_delay_us
	.global	_spi_xmit
	.global	_spi_recv
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("GPIOA0")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("GPIOA1")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("GPIOA2")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("GPIOA3")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("GPIOA4")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("GPIOA5")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("GPIOA6")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("GPIOA7")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("GPIOA8")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("GPIOA9")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("GPIOA10")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("GPIOA11")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("GPIOA12")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("GPIOA13")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("GPIOA14")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("GPIOA15")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("all")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$266, DW_AT_name("bit")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("GPIOA0")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("GPIOA1")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("GPIOA2")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("GPIOA3")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("GPIOA4")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("GPIOA5")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("GPIOA6")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("GPIOA7")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("GPIOA8")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("GPIOA9")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("GPIOA10")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("GPIOA11")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("GPIOA12")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("GPIOA13")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("GPIOA14")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("GPIOA15")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("all")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$284, DW_AT_name("bit")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("GPIOA0")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("GPIOA1")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIOA2")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("GPIOA3")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("GPIOA4")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("GPIOA5")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("GPIOA6")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("GPIOA7")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("GPIOA8")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("GPIOA9")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("GPIOA10")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("GPIOA11")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIOA12")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("GPIOA13")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("GPIOA14")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("GPIOA15")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("all")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$302, DW_AT_name("bit")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIOA0")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("GPIOA1")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("GPIOA2")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("GPIOA3")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("GPIOA4")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("GPIOA5")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("GPIOA6")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("GPIOA7")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("GPIOA8")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("GPIOA9")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("GPIOA10")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("GPIOA11")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("GPIOA12")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("GPIOA13")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("GPIOA14")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("GPIOA15")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("all")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$320, DW_AT_name("bit")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("GPIOB0")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIOB1")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIOB2")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIOB3")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIOB4")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("GPIOB5")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("GPIOB6")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("GPIOB7")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIOB8")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIOB9")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("GPIOB10")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("GPIOB11")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("GPIOB12")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("GPIOB13")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIOB14")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("GPIOB15")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$336, DW_AT_bit_size(0x01)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("all")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$338, DW_AT_name("bit")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIOB0")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIOB1")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOB2")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIOB3")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("GPIOB4")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$343, DW_AT_bit_size(0x01)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("GPIOB5")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$344, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$344, DW_AT_bit_size(0x01)
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("GPIOB6")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$345, DW_AT_bit_size(0x01)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOB7")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOB8")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("GPIOB9")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$348, DW_AT_bit_size(0x01)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIOB10")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIOB11")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("GPIOB12")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$351, DW_AT_bit_size(0x01)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("GPIOB13")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIOB14")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIOB15")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("all")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$356, DW_AT_name("bit")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIOB0")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIOB1")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("GPIOB2")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$359, DW_AT_bit_size(0x01)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("GPIOB3")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$360, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$360, DW_AT_bit_size(0x01)
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$361, DW_AT_name("GPIOB4")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$361, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$361, DW_AT_bit_size(0x01)
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIOB5")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIOB6")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("GPIOB7")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$364, DW_AT_bit_size(0x01)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIOB8")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIOB9")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("GPIOB10")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$367, DW_AT_bit_size(0x01)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("GPIOB11")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$368, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$368, DW_AT_bit_size(0x01)
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$369, DW_AT_name("GPIOB12")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$369, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$369, DW_AT_bit_size(0x01)
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("GPIOB13")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIOB14")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIOB15")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("all")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$374, DW_AT_name("bit")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$375, DW_AT_name("GPIOB0")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$375, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$375, DW_AT_bit_size(0x01)
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIOB1")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIOB2")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIOB3")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("GPIOB4")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$379, DW_AT_bit_size(0x01)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("GPIOB5")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$380, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$380, DW_AT_bit_size(0x01)
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$381, DW_AT_name("GPIOB6")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$381, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$381, DW_AT_bit_size(0x01)
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIOB7")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIOB8")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIOB9")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("GPIOB10")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$385, DW_AT_bit_size(0x01)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("GPIOB11")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$386, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$386, DW_AT_bit_size(0x01)
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$387, DW_AT_name("GPIOB12")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$387, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$387, DW_AT_bit_size(0x01)
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("GPIOB13")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("GPIOB14")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("GPIOB15")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("all")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$392, DW_AT_name("bit")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$393, DW_AT_name("GPIOD0")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$393, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$393, DW_AT_bit_size(0x01)
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIOD1")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("rsvd1")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$395, DW_AT_bit_size(0x03)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("GPIOD5")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIOD6")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("rsvd2")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$398, DW_AT_bit_size(0x09)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("all")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$400, DW_AT_name("bit")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIOD0")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIOD1")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("rsvd1")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$403, DW_AT_bit_size(0x03)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("GPIOD5")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("GPIOD6")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("rsvd2")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$406, DW_AT_bit_size(0x09)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("all")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$408, DW_AT_name("bit")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("GPIOD0")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("GPIOD1")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$410, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$410, DW_AT_bit_size(0x01)
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$411, DW_AT_name("rsvd1")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$411, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$411, DW_AT_bit_size(0x03)
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIOD5")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIOD6")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("rsvd2")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$414, DW_AT_bit_size(0x09)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("all")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$416, DW_AT_name("bit")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIOD0")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIOD1")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("rsvd1")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$419, DW_AT_bit_size(0x03)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIOD5")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIOD6")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("rsvd2")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$422, DW_AT_bit_size(0x09)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("all")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$424, DW_AT_name("bit")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("GPIOE0")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("GPIOE1")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("GPIOE2")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("rsvd1")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$428, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$428, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$429, DW_AT_name("all")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$430, DW_AT_name("bit")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("GPIOE0")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("GPIOE1")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("GPIOE2")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("rsvd1")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$434, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("all")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$436, DW_AT_name("bit")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIOE0")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIOE1")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("GPIOE2")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("rsvd1")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$440, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("all")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$442, DW_AT_name("bit")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("GPIOE0")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("GPIOE1")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("GPIOE2")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("rsvd1")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$446, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$446, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$447, DW_AT_name("all")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$448, DW_AT_name("bit")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("GPIOF0")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIOF1")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIOF2")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("GPIOF3")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("GPIOF4")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("GPIOF5")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("GPIOF6")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("GPIOF7")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("GPIOF8")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("GPIOF9")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("GPIOF10")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("GPIOF11")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("GPIOF12")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("GPIOF13")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("GPIOF14")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("GPIOF15")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$464, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$464, DW_AT_bit_size(0x01)
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$465, DW_AT_name("all")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$466, DW_AT_name("bit")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("GPIOF0")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("GPIOF1")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("GPIOF2")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$469, DW_AT_bit_size(0x01)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("GPIOF3")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$470, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$470, DW_AT_bit_size(0x01)
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$471, DW_AT_name("GPIOF4")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$471, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$471, DW_AT_bit_size(0x01)
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("GPIOF5")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$472, DW_AT_bit_size(0x01)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("GPIOF6")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("GPIOF7")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("GPIOF8")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$475, DW_AT_bit_size(0x01)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("GPIOF9")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$476, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$476, DW_AT_bit_size(0x01)
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$477, DW_AT_name("GPIOF10")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$477, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$477, DW_AT_bit_size(0x01)
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("GPIOF11")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$478, DW_AT_bit_size(0x01)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("GPIOF12")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("GPIOF13")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("GPIOF14")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$481, DW_AT_bit_size(0x01)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("GPIOF15")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$482, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$482, DW_AT_bit_size(0x01)
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$483, DW_AT_name("all")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$484, DW_AT_name("bit")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("GPIOF0")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("GPIOF1")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("GPIOF2")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$487, DW_AT_bit_size(0x01)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("GPIOF3")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$488, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$488, DW_AT_bit_size(0x01)
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$489, DW_AT_name("GPIOF4")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$489, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$489, DW_AT_bit_size(0x01)
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$490, DW_AT_name("GPIOF5")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$490, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$490, DW_AT_bit_size(0x01)
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$491, DW_AT_name("GPIOF6")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$491, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$491, DW_AT_bit_size(0x01)
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$492, DW_AT_name("GPIOF7")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$492, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$492, DW_AT_bit_size(0x01)
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$493, DW_AT_name("GPIOF8")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$493, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$493, DW_AT_bit_size(0x01)
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$494, DW_AT_name("GPIOF9")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$494, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$494, DW_AT_bit_size(0x01)
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$495, DW_AT_name("GPIOF10")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$495, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$495, DW_AT_bit_size(0x01)
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$496, DW_AT_name("GPIOF11")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$496, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$496, DW_AT_bit_size(0x01)
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$497, DW_AT_name("GPIOF12")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$497, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$497, DW_AT_bit_size(0x01)
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$498, DW_AT_name("GPIOF13")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$498, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$498, DW_AT_bit_size(0x01)
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$499, DW_AT_name("GPIOF14")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$499, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$499, DW_AT_bit_size(0x01)
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$500, DW_AT_name("GPIOF15")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$500, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$500, DW_AT_bit_size(0x01)
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$501, DW_AT_name("all")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$502, DW_AT_name("bit")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$503, DW_AT_name("GPIOF0")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$503, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$503, DW_AT_bit_size(0x01)
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$504, DW_AT_name("GPIOF1")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$504, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$504, DW_AT_bit_size(0x01)
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$505, DW_AT_name("GPIOF2")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$505, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$505, DW_AT_bit_size(0x01)
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$506, DW_AT_name("GPIOF3")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$506, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$506, DW_AT_bit_size(0x01)
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$507, DW_AT_name("GPIOF4")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$507, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$507, DW_AT_bit_size(0x01)
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$508, DW_AT_name("GPIOF5")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$508, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$508, DW_AT_bit_size(0x01)
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$509, DW_AT_name("GPIOF6")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$509, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$509, DW_AT_bit_size(0x01)
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$510, DW_AT_name("GPIOF7")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$510, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$510, DW_AT_bit_size(0x01)
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$511, DW_AT_name("GPIOF8")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$511, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$511, DW_AT_bit_size(0x01)
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$512, DW_AT_name("GPIOF9")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$512, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$512, DW_AT_bit_size(0x01)
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$513, DW_AT_name("GPIOF10")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$513, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$513, DW_AT_bit_size(0x01)
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$514, DW_AT_name("GPIOF11")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$514, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$514, DW_AT_bit_size(0x01)
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$515, DW_AT_name("GPIOF12")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$515, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$515, DW_AT_bit_size(0x01)
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$516	.dwtag  DW_TAG_member
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$516, DW_AT_name("GPIOF13")
	.dwattr $C$DW$516, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$516, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$516, DW_AT_bit_size(0x01)
	.dwattr $C$DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$516, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$517	.dwtag  DW_TAG_member
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$517, DW_AT_name("GPIOF14")
	.dwattr $C$DW$517, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$517, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$517, DW_AT_bit_size(0x01)
	.dwattr $C$DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$517, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$518	.dwtag  DW_TAG_member
	.dwattr $C$DW$518, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$518, DW_AT_name("GPIOF15")
	.dwattr $C$DW$518, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$518, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$518, DW_AT_bit_size(0x01)
	.dwattr $C$DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$518, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$519	.dwtag  DW_TAG_member
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$519, DW_AT_name("all")
	.dwattr $C$DW$519, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$519, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$520	.dwtag  DW_TAG_member
	.dwattr $C$DW$520, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$520, DW_AT_name("bit")
	.dwattr $C$DW$520, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$520, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$521	.dwtag  DW_TAG_member
	.dwattr $C$DW$521, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$521, DW_AT_name("rsvd1")
	.dwattr $C$DW$521, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$521, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$521, DW_AT_bit_size(0x04)
	.dwattr $C$DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$521, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$522	.dwtag  DW_TAG_member
	.dwattr $C$DW$522, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$522, DW_AT_name("GPIOG4")
	.dwattr $C$DW$522, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$522, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$522, DW_AT_bit_size(0x01)
	.dwattr $C$DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$522, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$523	.dwtag  DW_TAG_member
	.dwattr $C$DW$523, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$523, DW_AT_name("GPIOG5")
	.dwattr $C$DW$523, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$523, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$523, DW_AT_bit_size(0x01)
	.dwattr $C$DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$523, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$524	.dwtag  DW_TAG_member
	.dwattr $C$DW$524, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$524, DW_AT_name("rsvd2")
	.dwattr $C$DW$524, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$524, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$524, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$524, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$525	.dwtag  DW_TAG_member
	.dwattr $C$DW$525, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$525, DW_AT_name("all")
	.dwattr $C$DW$525, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$525, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$526	.dwtag  DW_TAG_member
	.dwattr $C$DW$526, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$526, DW_AT_name("bit")
	.dwattr $C$DW$526, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$526, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$527	.dwtag  DW_TAG_member
	.dwattr $C$DW$527, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$527, DW_AT_name("rsvd1")
	.dwattr $C$DW$527, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$527, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$527, DW_AT_bit_size(0x04)
	.dwattr $C$DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$527, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$528	.dwtag  DW_TAG_member
	.dwattr $C$DW$528, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$528, DW_AT_name("GPIOG4")
	.dwattr $C$DW$528, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$528, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$528, DW_AT_bit_size(0x01)
	.dwattr $C$DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$528, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$529	.dwtag  DW_TAG_member
	.dwattr $C$DW$529, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$529, DW_AT_name("GPIOG5")
	.dwattr $C$DW$529, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$529, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$529, DW_AT_bit_size(0x01)
	.dwattr $C$DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$529, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$530	.dwtag  DW_TAG_member
	.dwattr $C$DW$530, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$530, DW_AT_name("rsvd2")
	.dwattr $C$DW$530, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$530, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$530, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$530, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$531	.dwtag  DW_TAG_member
	.dwattr $C$DW$531, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$531, DW_AT_name("all")
	.dwattr $C$DW$531, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$531, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$532	.dwtag  DW_TAG_member
	.dwattr $C$DW$532, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$532, DW_AT_name("bit")
	.dwattr $C$DW$532, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$532, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$533	.dwtag  DW_TAG_member
	.dwattr $C$DW$533, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$533, DW_AT_name("rsvd1")
	.dwattr $C$DW$533, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$533, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$533, DW_AT_bit_size(0x04)
	.dwattr $C$DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$533, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$534	.dwtag  DW_TAG_member
	.dwattr $C$DW$534, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$534, DW_AT_name("GPIOG4")
	.dwattr $C$DW$534, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$534, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$534, DW_AT_bit_size(0x01)
	.dwattr $C$DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$534, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$535	.dwtag  DW_TAG_member
	.dwattr $C$DW$535, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$535, DW_AT_name("GPIOG5")
	.dwattr $C$DW$535, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$535, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$535, DW_AT_bit_size(0x01)
	.dwattr $C$DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$535, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$536	.dwtag  DW_TAG_member
	.dwattr $C$DW$536, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$536, DW_AT_name("rsvd2")
	.dwattr $C$DW$536, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$536, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$536, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$536, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$537	.dwtag  DW_TAG_member
	.dwattr $C$DW$537, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$537, DW_AT_name("all")
	.dwattr $C$DW$537, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$537, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$538	.dwtag  DW_TAG_member
	.dwattr $C$DW$538, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$538, DW_AT_name("bit")
	.dwattr $C$DW$538, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$538, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$539	.dwtag  DW_TAG_member
	.dwattr $C$DW$539, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$539, DW_AT_name("rsvd1")
	.dwattr $C$DW$539, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$539, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$539, DW_AT_bit_size(0x04)
	.dwattr $C$DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$539, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$540	.dwtag  DW_TAG_member
	.dwattr $C$DW$540, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$540, DW_AT_name("GPIOG4")
	.dwattr $C$DW$540, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$540, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$540, DW_AT_bit_size(0x01)
	.dwattr $C$DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$540, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$541	.dwtag  DW_TAG_member
	.dwattr $C$DW$541, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$541, DW_AT_name("GPIOG5")
	.dwattr $C$DW$541, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$541, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$541, DW_AT_bit_size(0x01)
	.dwattr $C$DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$541, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$542	.dwtag  DW_TAG_member
	.dwattr $C$DW$542, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$542, DW_AT_name("rsvd2")
	.dwattr $C$DW$542, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$542, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$542, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$542, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$543	.dwtag  DW_TAG_member
	.dwattr $C$DW$543, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$543, DW_AT_name("all")
	.dwattr $C$DW$543, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$543, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$544	.dwtag  DW_TAG_member
	.dwattr $C$DW$544, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$544, DW_AT_name("bit")
	.dwattr $C$DW$544, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$544, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x20)
$C$DW$545	.dwtag  DW_TAG_member
	.dwattr $C$DW$545, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$545, DW_AT_name("GPADAT")
	.dwattr $C$DW$545, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$545, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$546	.dwtag  DW_TAG_member
	.dwattr $C$DW$546, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$546, DW_AT_name("GPASET")
	.dwattr $C$DW$546, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$546, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$547	.dwtag  DW_TAG_member
	.dwattr $C$DW$547, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$547, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$547, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$547, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$548	.dwtag  DW_TAG_member
	.dwattr $C$DW$548, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$548, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$548, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$548, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$549	.dwtag  DW_TAG_member
	.dwattr $C$DW$549, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$549, DW_AT_name("GPBDAT")
	.dwattr $C$DW$549, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$549, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$550	.dwtag  DW_TAG_member
	.dwattr $C$DW$550, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$550, DW_AT_name("GPBSET")
	.dwattr $C$DW$550, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$550, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$551	.dwtag  DW_TAG_member
	.dwattr $C$DW$551, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$551, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$551, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$551, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$552	.dwtag  DW_TAG_member
	.dwattr $C$DW$552, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$552, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$552, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$552, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$553	.dwtag  DW_TAG_member
	.dwattr $C$DW$553, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$553, DW_AT_name("rsvd1")
	.dwattr $C$DW$553, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$553, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$554	.dwtag  DW_TAG_member
	.dwattr $C$DW$554, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$554, DW_AT_name("GPDDAT")
	.dwattr $C$DW$554, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$554, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$555	.dwtag  DW_TAG_member
	.dwattr $C$DW$555, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$555, DW_AT_name("GPDSET")
	.dwattr $C$DW$555, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$555, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$556	.dwtag  DW_TAG_member
	.dwattr $C$DW$556, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$556, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$556, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$556, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$557	.dwtag  DW_TAG_member
	.dwattr $C$DW$557, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$557, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$557, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$557, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$558	.dwtag  DW_TAG_member
	.dwattr $C$DW$558, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$558, DW_AT_name("GPEDAT")
	.dwattr $C$DW$558, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$558, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$559	.dwtag  DW_TAG_member
	.dwattr $C$DW$559, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$559, DW_AT_name("GPESET")
	.dwattr $C$DW$559, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$559, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$560	.dwtag  DW_TAG_member
	.dwattr $C$DW$560, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$560, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$560, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$560, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$561	.dwtag  DW_TAG_member
	.dwattr $C$DW$561, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$561, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$561, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$561, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$562	.dwtag  DW_TAG_member
	.dwattr $C$DW$562, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$562, DW_AT_name("GPFDAT")
	.dwattr $C$DW$562, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$562, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$563	.dwtag  DW_TAG_member
	.dwattr $C$DW$563, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$563, DW_AT_name("GPFSET")
	.dwattr $C$DW$563, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$563, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$564	.dwtag  DW_TAG_member
	.dwattr $C$DW$564, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$564, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$564, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$564, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$565	.dwtag  DW_TAG_member
	.dwattr $C$DW$565, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$565, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$565, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$565, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$566	.dwtag  DW_TAG_member
	.dwattr $C$DW$566, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$566, DW_AT_name("GPGDAT")
	.dwattr $C$DW$566, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$566, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$567	.dwtag  DW_TAG_member
	.dwattr $C$DW$567, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$567, DW_AT_name("GPGSET")
	.dwattr $C$DW$567, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$567, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$568	.dwtag  DW_TAG_member
	.dwattr $C$DW$568, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$568, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$568, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$568, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$569	.dwtag  DW_TAG_member
	.dwattr $C$DW$569, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$569, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$569, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$569, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$570	.dwtag  DW_TAG_member
	.dwattr $C$DW$570, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$570, DW_AT_name("rsvd2")
	.dwattr $C$DW$570, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$570, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$571	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$571, DW_AT_type(*$C$DW$T$69)

$C$DW$T$70	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$571)

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

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Uint16")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)

$C$DW$572	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$572, DW_AT_type(*$C$DW$T$19)

$C$DW$T$87	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$572)


$C$DW$T$88	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$88, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$T$88, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$88, DW_AT_byte_size(0x08)
$C$DW$573	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$573, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$88


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$574	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$574, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$68

$C$DW$T$77	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$77, DW_AT_address_class(0x20)

$C$DW$575	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$575, DW_AT_type(*$C$DW$T$77)

$C$DW$T$89	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$89, DW_AT_type(*$C$DW$575)


$C$DW$T$94	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$94, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$94, DW_AT_byte_size(0x08)
$C$DW$576	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$576, DW_AT_upper_bound(0x07)

	.dwendtag $C$DW$T$94

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$107	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$107, DW_AT_name("Uint32")
	.dwattr $C$DW$T$107, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$107, DW_AT_language(DW_LANG_C)

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

$C$DW$577	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$577, DW_AT_name("AL")
	.dwattr $C$DW$577, DW_AT_location[DW_OP_reg0]

$C$DW$578	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$578, DW_AT_name("AH")
	.dwattr $C$DW$578, DW_AT_location[DW_OP_reg1]

$C$DW$579	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$579, DW_AT_name("PL")
	.dwattr $C$DW$579, DW_AT_location[DW_OP_reg2]

$C$DW$580	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$580, DW_AT_name("PH")
	.dwattr $C$DW$580, DW_AT_location[DW_OP_reg3]

$C$DW$581	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$581, DW_AT_name("SP")
	.dwattr $C$DW$581, DW_AT_location[DW_OP_reg20]

$C$DW$582	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$582, DW_AT_name("XT")
	.dwattr $C$DW$582, DW_AT_location[DW_OP_reg21]

$C$DW$583	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$583, DW_AT_name("T")
	.dwattr $C$DW$583, DW_AT_location[DW_OP_reg22]

$C$DW$584	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$584, DW_AT_name("ST0")
	.dwattr $C$DW$584, DW_AT_location[DW_OP_reg23]

$C$DW$585	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$585, DW_AT_name("ST1")
	.dwattr $C$DW$585, DW_AT_location[DW_OP_reg24]

$C$DW$586	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$586, DW_AT_name("PC")
	.dwattr $C$DW$586, DW_AT_location[DW_OP_reg25]

$C$DW$587	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$587, DW_AT_name("RPC")
	.dwattr $C$DW$587, DW_AT_location[DW_OP_reg26]

$C$DW$588	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$588, DW_AT_name("FP")
	.dwattr $C$DW$588, DW_AT_location[DW_OP_reg28]

$C$DW$589	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$589, DW_AT_name("DP")
	.dwattr $C$DW$589, DW_AT_location[DW_OP_reg29]

$C$DW$590	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$590, DW_AT_name("SXM")
	.dwattr $C$DW$590, DW_AT_location[DW_OP_reg30]

$C$DW$591	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$591, DW_AT_name("PM")
	.dwattr $C$DW$591, DW_AT_location[DW_OP_reg31]

$C$DW$592	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$592, DW_AT_name("OVM")
	.dwattr $C$DW$592, DW_AT_location[DW_OP_regx 0x20]

$C$DW$593	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$593, DW_AT_name("PAGE0")
	.dwattr $C$DW$593, DW_AT_location[DW_OP_regx 0x21]

$C$DW$594	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$594, DW_AT_name("AMODE")
	.dwattr $C$DW$594, DW_AT_location[DW_OP_regx 0x22]

$C$DW$595	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$595, DW_AT_name("INTM")
	.dwattr $C$DW$595, DW_AT_location[DW_OP_regx 0x23]

$C$DW$596	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$596, DW_AT_name("IFR")
	.dwattr $C$DW$596, DW_AT_location[DW_OP_regx 0x24]

$C$DW$597	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$597, DW_AT_name("IER")
	.dwattr $C$DW$597, DW_AT_location[DW_OP_regx 0x25]

$C$DW$598	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$598, DW_AT_name("V")
	.dwattr $C$DW$598, DW_AT_location[DW_OP_regx 0x26]

$C$DW$599	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$599, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$599, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$600	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$600, DW_AT_name("VOL")
	.dwattr $C$DW$600, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$601	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$601, DW_AT_name("AR0")
	.dwattr $C$DW$601, DW_AT_location[DW_OP_reg4]

$C$DW$602	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$602, DW_AT_name("XAR0")
	.dwattr $C$DW$602, DW_AT_location[DW_OP_reg5]

$C$DW$603	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$603, DW_AT_name("AR1")
	.dwattr $C$DW$603, DW_AT_location[DW_OP_reg6]

$C$DW$604	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$604, DW_AT_name("XAR1")
	.dwattr $C$DW$604, DW_AT_location[DW_OP_reg7]

$C$DW$605	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$605, DW_AT_name("AR2")
	.dwattr $C$DW$605, DW_AT_location[DW_OP_reg8]

$C$DW$606	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$606, DW_AT_name("XAR2")
	.dwattr $C$DW$606, DW_AT_location[DW_OP_reg9]

$C$DW$607	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$607, DW_AT_name("AR3")
	.dwattr $C$DW$607, DW_AT_location[DW_OP_reg10]

$C$DW$608	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$608, DW_AT_name("XAR3")
	.dwattr $C$DW$608, DW_AT_location[DW_OP_reg11]

$C$DW$609	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$609, DW_AT_name("AR4")
	.dwattr $C$DW$609, DW_AT_location[DW_OP_reg12]

$C$DW$610	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$610, DW_AT_name("XAR4")
	.dwattr $C$DW$610, DW_AT_location[DW_OP_reg13]

$C$DW$611	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$611, DW_AT_name("AR5")
	.dwattr $C$DW$611, DW_AT_location[DW_OP_reg14]

$C$DW$612	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$612, DW_AT_name("XAR5")
	.dwattr $C$DW$612, DW_AT_location[DW_OP_reg15]

$C$DW$613	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$613, DW_AT_name("AR6")
	.dwattr $C$DW$613, DW_AT_location[DW_OP_reg16]

$C$DW$614	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$614, DW_AT_name("XAR6")
	.dwattr $C$DW$614, DW_AT_location[DW_OP_reg17]

$C$DW$615	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$615, DW_AT_name("AR7")
	.dwattr $C$DW$615, DW_AT_location[DW_OP_reg18]

$C$DW$616	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$616, DW_AT_name("XAR7")
	.dwattr $C$DW$616, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


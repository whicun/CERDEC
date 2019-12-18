;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.4.LTS *
;* Date/Time created: Wed Dec 18 09:12:46 2019                 *
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

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\077122 C:\\Users\\ebenton\\AppData\\Local\\Temp\\077124 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\0771212 
	.sect	".text"
	.clink
	.global	_SPICAN_T0_RTS

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("SPICAN_T0_RTS")
	.dwattr $C$DW$7, DW_AT_low_pc(_SPICAN_T0_RTS)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_SPICAN_T0_RTS")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0xcc)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 205,column 1,is_stmt,address _SPICAN_T0_RTS,isa 0

	.dwfde $C$DW$CIE, _SPICAN_T0_RTS
;----------------------------------------------------------------------
; 204 | void SPICAN_T0_RTS (void)                                              
; 206 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 207,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 207 | spi_xmit(SPICAN_RTS + 0x1);                                            
;----------------------------------------------------------------------
        MOVB      AL,#129               ; [CPU_] |207| 
	.dwpsn	file "../Source/SPICAN.c",line 206,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |206| 
	.dwpsn	file "../Source/SPICAN.c",line 207,column 2,is_stmt,isa 0
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$8, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |207| 
        ; call occurs [#_spi_xmit] ; [] |207| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 208,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 208 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |208| 
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0xd1)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text"
	.clink
	.global	_SPICANWrite

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("SPICANWrite")
	.dwattr $C$DW$10, DW_AT_low_pc(_SPICANWrite)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_SPICANWrite")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x44)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 69,column 1,is_stmt,address _SPICANWrite,isa 0

	.dwfde $C$DW$CIE, _SPICANWrite
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("ADDR")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg0]

$C$DW$12	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$12, DW_AT_name("Input")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
;  68 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
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
$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("ADDR")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _Input
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("Input")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AH                ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 69,column 1,is_stmt,isa 0
        MOVZ      AR2,AL                ; [CPU_] |69| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  71 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |71| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$15, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  72 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |72| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  73 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |73| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  74 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x4b)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Data

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("SPICAN_SetT0Data")
	.dwattr $C$DW$19, DW_AT_low_pc(_SPICAN_SetT0Data)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0xbe)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 191,column 1,is_stmt,address _SPICAN_SetT0Data,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Data
$C$DW$20	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$20, DW_AT_name("numBytes")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_location[DW_OP_reg0]

$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("buf")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 190 | void SPICAN_SetT0Data(Uint16 numBytes, Uint16 *buf)                    
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
$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("Input")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_location[DW_OP_breg20 -1]

;* AR1   assigned to _k
$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("k")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _numBytes
$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("numBytes")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg8]

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
; 192 | Uint16 k;                                                              
; 194 | // Send how much data content there is                                 
; 195 | SPICANWrite(SPICAN_TXB0DLC, numBytes);                                 
; 197 | // Fill in the data buffer                                             
;----------------------------------------------------------------------
        MOVZ      AR2,AL                ; [CPU_] |191| 
        MOVL      XAR3,XAR4             ; [CPU_] |191| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#53                ; [CPU_] |72| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$26, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
        MOV       AL,AR2                ; [CPU_] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
$C$DW$27	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$27, DW_AT_low_pc(0x00)
	.dwattr $C$DW$27, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$27, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
        MOV       AL,AR2                ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 198,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 198 | for(k = 0; k < numBytes; k++)                                          
;----------------------------------------------------------------------
        B         $C$L2,EQ              ; [CPU_] |198| 
        ; branchcc occurs ; [] |198| 
        SUBB      XAR2,#1               ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 198,column 6,is_stmt,isa 0
        MOVB      XAR1,#0               ; [CPU_] |198| 
$C$L1:    
	.dwpsn	file "../Source/SPICAN.c",line 200,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 200 | SPICANWrite(SPICAN_TXB0D0 + k, buf[k]);                                
;----------------------------------------------------------------------
        MOV       AL,*XAR3++            ; [CPU_] |200| 
        MOV       *-SP[1],AL            ; [CPU_] |200| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |72| 
        ADD       AL,AR1                ; [CPU_] |72| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
        MOV       AL,*-SP[1]            ; [CPU_] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
	.dwpsn	file "../Source/SPICAN.c",line 198,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |198| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 198,column 13,is_stmt,isa 0
        BANZ      $C$L1,AR2--           ; [CPU_] |198| 
        ; branchcc occurs ; [] |198| 
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
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0xca)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.clink
	.global	_SPICAN_SetT0Addr

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("SPICAN_SetT0Addr")
	.dwattr $C$DW$32, DW_AT_low_pc(_SPICAN_SetT0Addr)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0xaa)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 171,column 1,is_stmt,address _SPICAN_SetT0Addr,isa 0

	.dwfde $C$DW$CIE, _SPICAN_SetT0Addr
$C$DW$33	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$33, DW_AT_name("canAddress")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 170 | void SPICAN_SetT0Addr(Uint16 canAddress)                               
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
$C$DW$34	.dwtag  DW_TAG_variable
	.dwattr $C$DW$34, DW_AT_name("canAddress")
	.dwattr $C$DW$34, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _addrHi
$C$DW$35	.dwtag  DW_TAG_variable
	.dwattr $C$DW$35, DW_AT_name("addrHi")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_addrHi")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _addrLo
$C$DW$36	.dwtag  DW_TAG_variable
	.dwattr $C$DW$36, DW_AT_name("addrLo")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_addrLo")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 172 | Uint16 addrHi, addrLo;                                                 
; 174 | // First grab the important bits                                       
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |171| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 175,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 175 | addrHi = canAddress & 0x7F8;                                           
;----------------------------------------------------------------------
        AND       AH,AR1,#0x07f8        ; [CPU_] |175| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 176,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 176 | addrLo = canAddress & 0x7;                                             
;----------------------------------------------------------------------
        AND       AL,AR1,#0x0007        ; [CPU_] |176| 
	.dwpsn	file "../Source/SPICAN.c",line 175,column 2,is_stmt,isa 0
        MOVZ      AR2,AH                ; [CPU_] |175| 
	.dwpsn	file "../Source/SPICAN.c",line 176,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 178 | // Now shift them to the right places                                  
; 179 | addrHi = addrHi >> 3;                                                  
; 180 | addrLo = addrLo << 5;                                                  
; 182 | // Set up the ID (X - unused, H - Hi, L - Lo)                          
; 183 | // Want to first send 0bHHHHHHHH                                       
; 184 | SPICANWrite(SPICAN_TXB0SIDH, addrHi); // H (SID10 - SID3)              
; 185 | // Then want to send 0bLLL00000                                        
; 186 | SPICANWrite(SPICAN_TXB0SIDL, addrLo); // L (SID2 - SID0)               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |176| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#49                ; [CPU_] |72| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
        MOV       AL,AR2                ; [CPU_] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        LSR       AL,3                  ; [CPU_] |73| 
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#50                ; [CPU_] |72| 
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
        MOV       AL,AR1                ; [CPU_] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        LSL       AL,5                  ; [CPU_] |73| 
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0xbb)
	.dwattr $C$DW$32, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$32

	.sect	".text"
	.clink
	.global	_SPICANRead

$C$DW$44	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$44, DW_AT_name("SPICANRead")
	.dwattr $C$DW$44, DW_AT_low_pc(_SPICANRead)
	.dwattr $C$DW$44, DW_AT_high_pc(0x00)
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_SPICANRead")
	.dwattr $C$DW$44, DW_AT_external
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$44, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x36)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 55,column 1,is_stmt,address _SPICANRead,isa 0

	.dwfde $C$DW$CIE, _SPICANRead
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("Input")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  54 | Uint16 SPICANRead (Uint16 Input)                                       
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
$C$DW$46	.dwtag  DW_TAG_variable
	.dwattr $C$DW$46, DW_AT_name("Input")
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
;  56 | Uint16  RetVal;                                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |55| 
	.dwpsn	file "../Source/SPICAN.c",line 57,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |57| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |58| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$47, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |58| 
        ; call occurs [#_spi_xmit] ; [] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |59| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |59| 
        ; call occurs [#_spi_xmit] ; [] |59| 
	.dwpsn	file "../Source/SPICAN.c",line 60,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  60 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_spi_recv")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |60| 
        ; call occurs [#_spi_recv] ; [] |60| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 61,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  61 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  62 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |61| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x3f)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.clink
	.global	_SPICANWaitForTXBuf

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("SPICANWaitForTXBuf")
	.dwattr $C$DW$51, DW_AT_low_pc(_SPICANWaitForTXBuf)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_SPICANWaitForTXBuf")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x102)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 259,column 1,is_stmt,address _SPICANWaitForTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANWaitForTXBuf
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("buf_num")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 258 | void SPICANWaitForTXBuf(Uint16 buf_num)                                
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
$C$DW$53	.dwtag  DW_TAG_variable
	.dwattr $C$DW$53, DW_AT_name("res")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to _buf_num
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("buf_num")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_buf_num")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg6]

;* AR1   assigned to $O$K7
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
; 260 | Uint16 res;                                                            
; 261 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |259| 
	.dwpsn	file "../Source/SPICAN.c",line 57,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |57| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |58| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$55, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |58| 
        ; call occurs [#_spi_xmit] ; [] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
        MOV       ACC,AR1 << #8         ; [CPU_] |59| 
        ADDB      AL,#48                ; [CPU_] |59| 
        MOVZ      AR1,AL                ; [CPU_] |59| 
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$56, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |59| 
        ; call occurs [#_spi_xmit] ; [] |59| 
	.dwpsn	file "../Source/SPICAN.c",line 60,column 2,is_stmt,isa 0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_spi_recv")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |60| 
        ; call occurs [#_spi_recv] ; [] |60| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 61,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |61| 
	.dwpsn	file "../Source/SPICAN.c",line 262,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 262 | while((res & 0x08) == 0x08)                                            
;----------------------------------------------------------------------
        B         $C$L4,UNC             ; [CPU_] |262| 
        ; branch occurs ; [] |262| 
$C$L3:    
	.dwpsn	file "../Source/SPICAN.c",line 57,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |57| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |58| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |58| 
        ; call occurs [#_spi_xmit] ; [] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |59| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |59| 
        ; call occurs [#_spi_xmit] ; [] |59| 
	.dwpsn	file "../Source/SPICAN.c",line 60,column 2,is_stmt,isa 0
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_spi_recv")
	.dwattr $C$DW$60, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |60| 
        ; call occurs [#_spi_recv] ; [] |60| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 61,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |61| 
$C$L4:    
	.dwpsn	file "../Source/SPICAN.c",line 262,column 8,is_stmt,isa 0
;----------------------------------------------------------------------
; 264 | res = SPICANRead(0x30 + (buf_num << 8));                               
;----------------------------------------------------------------------
        TBIT      AL,#3                 ; [CPU_] |262| 
        B         $C$L3,TC              ; [CPU_] |262| 
        ; branchcc occurs ; [] |262| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x10a)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.clink
	.global	_SPICANVerifyTXBuf

$C$DW$62	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$62, DW_AT_name("SPICANVerifyTXBuf")
	.dwattr $C$DW$62, DW_AT_low_pc(_SPICANVerifyTXBuf)
	.dwattr $C$DW$62, DW_AT_high_pc(0x00)
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_SPICANVerifyTXBuf")
	.dwattr $C$DW$62, DW_AT_external
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$62, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$62, DW_AT_TI_begin_line(0xf4)
	.dwattr $C$DW$62, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$62, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 245,column 1,is_stmt,address _SPICANVerifyTXBuf,isa 0

	.dwfde $C$DW$CIE, _SPICANVerifyTXBuf
$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("buf")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg0]

$C$DW$64	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$64, DW_AT_name("data_check")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 244 | int SPICANVerifyTXBuf(Uint16 buf, Uint16 data_check[])                 
; 246 | Uint16 data[8];                                                        
; 247 | int k;                                                                 
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
$C$DW$65	.dwtag  DW_TAG_variable
	.dwattr $C$DW$65, DW_AT_name("data_check")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_data_check")
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg12]

;* AR1   assigned to _k
$C$DW$66	.dwtag  DW_TAG_variable
	.dwattr $C$DW$66, DW_AT_name("k")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_k")
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _RetVal
$C$DW$67	.dwtag  DW_TAG_variable
	.dwattr $C$DW$67, DW_AT_name("RetVal")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg0]

;* AR2   assigned to $O$U11
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 248,column 6,is_stmt,isa 0
;----------------------------------------------------------------------
; 248 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        MOVB      XAR1,#0               ; [CPU_] |248| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] 
$C$L5:    
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 57,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |57| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$68, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |58| 
        ; call occurs [#_spi_xmit] ; [] |58| 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
        MOVB      AL,#54                ; [CPU_] |59| 
        ADD       AL,AR1                ; [CPU_] |59| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$69, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |59| 
        ; call occurs [#_spi_xmit] ; [] |59| 
	.dwpsn	file "../Source/SPICAN.c",line 60,column 2,is_stmt,isa 0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_spi_recv")
	.dwattr $C$DW$70, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |60| 
        ; call occurs [#_spi_recv] ; [] |60| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 61,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |61| 
	.dwpsn	file "../Source/SPICAN.c",line 250,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 250 | if(data_check[k] != SPICANRead(SPICAN_TXB0D0 + k))                     
;----------------------------------------------------------------------
        MOVZ      AR6,*+XAR2[0]         ; [CPU_] |250| 
        MOVU      ACC,AL                ; [CPU_] |250| 
        CMPL      ACC,XAR6              ; [CPU_] |250| 
        B         $C$L6,EQ              ; [CPU_] |250| 
        ; branchcc occurs ; [] |250| 
	.dwpsn	file "../Source/SPICAN.c",line 252,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 252 | return 0;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |252| 
        B         $C$L7,UNC             ; [CPU_] |252| 
        ; branch occurs ; [] |252| 
$C$L6:    
	.dwpsn	file "../Source/SPICAN.c",line 248,column 13,is_stmt,isa 0
        ADDB      XAR1,#1               ; [CPU_] |248| 
        ADDB      XAR2,#1               ; [CPU_] |248| 
        MOV       AL,AR1                ; [CPU_] |248| 
        CMPB      AL,#8                 ; [CPU_] |248| 
        B         $C$L5,LT              ; [CPU_] |248| 
        ; branchcc occurs ; [] |248| 
	.dwpsn	file "../Source/SPICAN.c",line 255,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 255 | return 1;                                                              
;----------------------------------------------------------------------
        MOVB      AL,#1                 ; [CPU_] |255| 
$C$L7:    
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$62, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$62, DW_AT_TI_end_line(0x100)
	.dwattr $C$DW$62, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$62

	.sect	".text"
	.clink
	.global	_SPICANSetNorm

$C$DW$72	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$72, DW_AT_name("SPICANSetNorm")
	.dwattr $C$DW$72, DW_AT_low_pc(_SPICANSetNorm)
	.dwattr $C$DW$72, DW_AT_high_pc(0x00)
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_SPICANSetNorm")
	.dwattr $C$DW$72, DW_AT_external
	.dwattr $C$DW$72, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$72, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$72, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$72, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 91,column 1,is_stmt,address _SPICANSetNorm,isa 0

	.dwfde $C$DW$CIE, _SPICANSetNorm
;----------------------------------------------------------------------
;  90 | void SPICANSetNorm (void)                                              
;  92 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |93| 
	.dwpsn	file "../Source/SPICAN.c",line 92,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |92| 
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$73, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |93| 
        ; call occurs [#_spi_xmit] ; [] |93| 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |94| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$74, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |94| 
        ; call occurs [#_spi_xmit] ; [] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |95| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$75, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |95| 
        ; call occurs [#_spi_xmit] ; [] |95| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |96| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$72, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$72, DW_AT_TI_end_line(0x61)
	.dwattr $C$DW$72, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$72

	.sect	".text"
	.clink
	.global	_SPICANReset

$C$DW$77	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$77, DW_AT_name("SPICANReset")
	.dwattr $C$DW$77, DW_AT_low_pc(_SPICANReset)
	.dwattr $C$DW$77, DW_AT_high_pc(0x00)
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_SPICANReset")
	.dwattr $C$DW$77, DW_AT_external
	.dwattr $C$DW$77, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$77, DW_AT_TI_begin_line(0x2c)
	.dwattr $C$DW$77, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$77, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 45,column 1,is_stmt,address _SPICANReset,isa 0

	.dwfde $C$DW$CIE, _SPICANReset
;----------------------------------------------------------------------
;  44 | void SPICANReset (void)                                                
;  46 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |47| 
	.dwpsn	file "../Source/SPICAN.c",line 46,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |46| 
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$78, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |47| 
        ; call occurs [#_spi_xmit] ; [] |47| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 48,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |48| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$77, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$77, DW_AT_TI_end_line(0x31)
	.dwattr $C$DW$77, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$77

	.sect	".text"
	.clink
	.global	_SPICANReadStat

$C$DW$80	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$80, DW_AT_name("SPICANReadStat")
	.dwattr $C$DW$80, DW_AT_low_pc(_SPICANReadStat)
	.dwattr $C$DW$80, DW_AT_high_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_SPICANReadStat")
	.dwattr $C$DW$80, DW_AT_external
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$80, DW_AT_TI_begin_line(0x4f)
	.dwattr $C$DW$80, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$80, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 80,column 1,is_stmt,address _SPICANReadStat,isa 0

	.dwfde $C$DW$CIE, _SPICANReadStat
;----------------------------------------------------------------------
;  79 | Uint16 SPICANReadStat (void)                                           
;  81 | Uint16  RetVal;                                                        
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$81, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |84| 
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$82, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_spi_recv")
	.dwattr $C$DW$83, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  87 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$80, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$80, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$80, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$80

	.sect	".text"
	.clink
	.global	_SPICANReadSetT0Message

$C$DW$85	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$85, DW_AT_name("SPICANReadSetT0Message")
	.dwattr $C$DW$85, DW_AT_low_pc(_SPICANReadSetT0Message)
	.dwattr $C$DW$85, DW_AT_high_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_SPICANReadSetT0Message")
	.dwattr $C$DW$85, DW_AT_external
	.dwattr $C$DW$85, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$85, DW_AT_TI_begin_line(0x9f)
	.dwattr $C$DW$85, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$85, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 160,column 1,is_stmt,address _SPICANReadSetT0Message,isa 0

	.dwfde $C$DW$CIE, _SPICANReadSetT0Message
$C$DW$86	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$86, DW_AT_name("canAddress")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_canAddress")
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_location[DW_OP_reg0]

$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("numBytes")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg1]

$C$DW$88	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$88, DW_AT_name("buf")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$88, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 159 | void SPICANReadSetT0Message(Uint16 canAddress, Uint16 numBytes, Uint16
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
$C$DW$89	.dwtag  DW_TAG_variable
	.dwattr $C$DW$89, DW_AT_name("numBytes")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_numBytes")
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$89, DW_AT_location[DW_OP_reg6]

;* AR2   assigned to _buf
$C$DW$90	.dwtag  DW_TAG_variable
	.dwattr $C$DW$90, DW_AT_name("buf")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_buf")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg8]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
;----------------------------------------------------------------------
; 161 | // Set the new address                                                 
;----------------------------------------------------------------------
        MOVZ      AR1,AH                ; [CPU_] |160| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
        MOVL      XAR2,XAR4             ; [CPU_] |160| 
	.dwpsn	file "../Source/SPICAN.c",line 162,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 162 | SPICAN_SetT0Addr(canAddress);                                          
; 164 | // Set the data                                                        
;----------------------------------------------------------------------
$C$DW$91	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$91, DW_AT_low_pc(0x00)
	.dwattr $C$DW$91, DW_AT_name("_SPICAN_SetT0Addr")
	.dwattr $C$DW$91, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Addr    ; [CPU_] |162| 
        ; call occurs [#_SPICAN_SetT0Addr] ; [] |162| 
	.dwpsn	file "../Source/SPICAN.c",line 165,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 165 | SPICAN_SetT0Data(numBytes, buf);                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |165| 
        MOVL      XAR4,XAR2             ; [CPU_] |165| 
$C$DW$92	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$92, DW_AT_low_pc(0x00)
	.dwattr $C$DW$92, DW_AT_name("_SPICAN_SetT0Data")
	.dwattr $C$DW$92, DW_AT_TI_call

        LCR       #_SPICAN_SetT0Data    ; [CPU_] |165| 
        ; call occurs [#_SPICAN_SetT0Data] ; [] |165| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$93	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$93, DW_AT_low_pc(0x00)
	.dwattr $C$DW$93, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$85, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$85, DW_AT_TI_end_line(0xa6)
	.dwattr $C$DW$85, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$85

	.sect	".text"
	.clink
	.global	_SPICANReadInt

$C$DW$94	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$94, DW_AT_name("SPICANReadInt")
	.dwattr $C$DW$94, DW_AT_low_pc(_SPICANReadInt)
	.dwattr $C$DW$94, DW_AT_high_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_SPICANReadInt")
	.dwattr $C$DW$94, DW_AT_external
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$94, DW_AT_TI_begin_line(0x6c)
	.dwattr $C$DW$94, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$94, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 109,column 1,is_stmt,address _SPICANReadInt,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInt
;----------------------------------------------------------------------
; 108 | Uint16 SPICANReadInt (void)                                            
; 110 | Uint16 RetVal;                                                         
; 111 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 112,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 112 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |112| 
	.dwpsn	file "../Source/SPICAN.c",line 111,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |111| 
	.dwpsn	file "../Source/SPICAN.c",line 112,column 2,is_stmt,isa 0
$C$DW$95	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$95, DW_AT_low_pc(0x00)
	.dwattr $C$DW$95, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$95, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |112| 
        ; call occurs [#_spi_xmit] ; [] |112| 
	.dwpsn	file "../Source/SPICAN.c",line 113,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 113 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |113| 
$C$DW$96	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$96, DW_AT_low_pc(0x00)
	.dwattr $C$DW$96, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$96, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |113| 
        ; call occurs [#_spi_xmit] ; [] |113| 
	.dwpsn	file "../Source/SPICAN.c",line 114,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 114 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$97	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$97, DW_AT_low_pc(0x00)
	.dwattr $C$DW$97, DW_AT_name("_spi_recv")
	.dwattr $C$DW$97, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |114| 
        ; call occurs [#_spi_recv] ; [] |114| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 115,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 115 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |115| 
$C$DW$98	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$98, DW_AT_low_pc(0x00)
	.dwattr $C$DW$98, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$94, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$94, DW_AT_TI_end_line(0x74)
	.dwattr $C$DW$94, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$94

	.sect	".text"
	.clink
	.global	_SPICANRXStatus

$C$DW$99	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$99, DW_AT_name("SPICANRXStatus")
	.dwattr $C$DW$99, DW_AT_low_pc(_SPICANRXStatus)
	.dwattr $C$DW$99, DW_AT_high_pc(0x00)
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_SPICANRXStatus")
	.dwattr $C$DW$99, DW_AT_external
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$99, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$99, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$99, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 119,column 1,is_stmt,address _SPICANRXStatus,isa 0

	.dwfde $C$DW$CIE, _SPICANRXStatus
;----------------------------------------------------------------------
; 118 | Uint16 SPICANRXStatus (void)                                           
; 120 | Uint16  RetVal;                                                        
; 121 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$100	.dwtag  DW_TAG_variable
	.dwattr $C$DW$100, DW_AT_name("RetVal")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 122,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 122 | spi_xmit(SPICAN_RXSTAT);                                               
;----------------------------------------------------------------------
        MOVB      AL,#176               ; [CPU_] |122| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 122,column 2,is_stmt,isa 0
$C$DW$101	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$101, DW_AT_low_pc(0x00)
	.dwattr $C$DW$101, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$101, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |122| 
        ; call occurs [#_spi_xmit] ; [] |122| 
	.dwpsn	file "../Source/SPICAN.c",line 123,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 123 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$102	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$102, DW_AT_low_pc(0x00)
	.dwattr $C$DW$102, DW_AT_name("_spi_recv")
	.dwattr $C$DW$102, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |123| 
        ; call occurs [#_spi_recv] ; [] |123| 
        MOVZ      AR1,AL                ; [CPU_] |123| 
	.dwpsn	file "../Source/SPICAN.c",line 124,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$103	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$103, DW_AT_low_pc(0x00)
	.dwattr $C$DW$103, DW_AT_name("_spi_recv")
	.dwattr $C$DW$103, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |124| 
        ; call occurs [#_spi_recv] ; [] |124| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 125,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 125 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |125| 
	.dwpsn	file "../Source/SPICAN.c",line 126,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 126 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |126| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$104	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$104, DW_AT_low_pc(0x00)
	.dwattr $C$DW$104, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$99, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$99, DW_AT_TI_end_line(0x7f)
	.dwattr $C$DW$99, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$99

	.sect	".text"
	.clink
	.global	_SPICANRXBufReady

$C$DW$105	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$105, DW_AT_name("SPICANRXBufReady")
	.dwattr $C$DW$105, DW_AT_low_pc(_SPICANRXBufReady)
	.dwattr $C$DW$105, DW_AT_high_pc(0x00)
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_SPICANRXBufReady")
	.dwattr $C$DW$105, DW_AT_external
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$105, DW_AT_TI_begin_line(0xd3)
	.dwattr $C$DW$105, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$105, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 212,column 1,is_stmt,address _SPICANRXBufReady,isa 0

	.dwfde $C$DW$CIE, _SPICANRXBufReady
;----------------------------------------------------------------------
; 211 | Uint16 SPICANRXBufReady(void)                                          
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
$C$DW$106	.dwtag  DW_TAG_variable
	.dwattr $C$DW$106, DW_AT_name("RetVal")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 122,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |122| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 122,column 2,is_stmt,isa 0
$C$DW$107	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$107, DW_AT_low_pc(0x00)
	.dwattr $C$DW$107, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$107, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |122| 
        ; call occurs [#_spi_xmit] ; [] |122| 
	.dwpsn	file "../Source/SPICAN.c",line 123,column 2,is_stmt,isa 0
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_name("_spi_recv")
	.dwattr $C$DW$108, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |123| 
        ; call occurs [#_spi_recv] ; [] |123| 
        MOVZ      AR1,AL                ; [CPU_] |123| 
	.dwpsn	file "../Source/SPICAN.c",line 124,column 2,is_stmt,isa 0
$C$DW$109	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$109, DW_AT_low_pc(0x00)
	.dwattr $C$DW$109, DW_AT_name("_spi_recv")
	.dwattr $C$DW$109, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |124| 
        ; call occurs [#_spi_recv] ; [] |124| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 213,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 213 | return (SPICANRXStatus() & 0xC0) >> 6;                                 
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |213| 
	.dwpsn	file "../Source/SPICAN.c",line 125,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |125| 
	.dwpsn	file "../Source/SPICAN.c",line 213,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |213| 
        ANDB      AL,#0x03              ; [CPU_] |213| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$105, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$105, DW_AT_TI_end_line(0xd6)
	.dwattr $C$DW$105, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$105

	.sect	".text"
	.clink
	.global	_SPICANReadBuf_Array

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("SPICANReadBuf_Array")
	.dwattr $C$DW$111, DW_AT_low_pc(_SPICANReadBuf_Array)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0x92)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 147,column 1,is_stmt,address _SPICANReadBuf_Array,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf_Array
$C$DW$112	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$112, DW_AT_name("data")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg12]

$C$DW$113	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$113, DW_AT_name("whichBuf")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 146 | void SPICANReadBuf_Array (Uint16 data[], Uint16 whichBuf)              
; 148 | int k;                                                                 
; 149 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$114	.dwtag  DW_TAG_variable
	.dwattr $C$DW$114, DW_AT_name("data")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_data")
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg6]

;* AL    assigned to _whichBuf
$C$DW$115	.dwtag  DW_TAG_variable
	.dwattr $C$DW$115, DW_AT_name("whichBuf")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_whichBuf")
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$83)
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg0]

;* AR1   assigned to $O$U10
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 150 | spi_xmit(SPICAN_RXBUF0 + 4 * whichBuf);                                
;----------------------------------------------------------------------
        MOV       ACC,AL << #2          ; [CPU_] |150| 
	.dwpsn	file "../Source/SPICAN.c",line 147,column 1,is_stmt,isa 0
        MOVL      XAR1,XAR4             ; [CPU_] |147| 
	.dwpsn	file "../Source/SPICAN.c",line 149,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |149| 
	.dwpsn	file "../Source/SPICAN.c",line 150,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 151 | for(k = 0; k < 8; k++)                                                 
;----------------------------------------------------------------------
        ADD       AL,#146               ; [CPU_] |150| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$116, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |150| 
        ; call occurs [#_spi_xmit] ; [] |150| 
        MOVB      XAR2,#7               ; [CPU_] 
$C$L8:    
	.dwpsn	file "../Source/SPICAN.c",line 153,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | data[k] = spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$117	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$117, DW_AT_low_pc(0x00)
	.dwattr $C$DW$117, DW_AT_name("_spi_recv")
	.dwattr $C$DW$117, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |153| 
        ; call occurs [#_spi_recv] ; [] |153| 
        MOV       *XAR1++,AL            ; [CPU_] |153| 
	.dwpsn	file "../Source/SPICAN.c",line 151,column 13,is_stmt,isa 0
        BANZ      $C$L8,AR2--           ; [CPU_] |151| 
        ; branchcc occurs ; [] |151| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 155,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 155 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |155| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0x9c)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.global	_SPICANReadBufs

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("SPICANReadBufs")
	.dwattr $C$DW$119, DW_AT_low_pc(_SPICANReadBufs)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_SPICANReadBufs")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0xd8)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(-10)
	.dwpsn	file "../Source/SPICAN.c",line 217,column 1,is_stmt,address _SPICANReadBufs,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBufs
$C$DW$120	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$120, DW_AT_name("buf1")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg12]

$C$DW$121	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$121, DW_AT_name("buf2")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg14]

;----------------------------------------------------------------------
; 216 | Uint16 SPICANReadBufs(Uint16 buf1[], Uint16 buf2[])                    
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
$C$DW$122	.dwtag  DW_TAG_variable
	.dwattr $C$DW$122, DW_AT_name("RetVal")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg6]

$C$DW$123	.dwtag  DW_TAG_variable
	.dwattr $C$DW$123, DW_AT_name("res")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_res")
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_location[DW_OP_breg20 -1]

$C$DW$124	.dwtag  DW_TAG_variable
	.dwattr $C$DW$124, DW_AT_name("buf_status")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_buf_status")
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_location[DW_OP_breg20 -2]

;* AR3   assigned to _buf2
$C$DW$125	.dwtag  DW_TAG_variable
	.dwattr $C$DW$125, DW_AT_name("buf2")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_buf2")
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg10]

;* AR2   assigned to _buf1
$C$DW$126	.dwtag  DW_TAG_variable
	.dwattr $C$DW$126, DW_AT_name("buf1")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_buf1")
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$84)
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg8]

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
	.dwpsn	file "../Source/SPICAN.c",line 122,column 2,is_stmt,isa 0
        MOVB      AL,#176               ; [CPU_] |122| 
	.dwpsn	file "../Source/SPICAN.c",line 217,column 1,is_stmt,isa 0
;----------------------------------------------------------------------
; 218 | Uint16 buf_status;                                                     
;----------------------------------------------------------------------
        MOVL      XAR3,XAR5             ; [CPU_] |217| 
        MOVL      XAR2,XAR4             ; [CPU_] |217| 
	.dwpsn	file "../Source/SPICAN.c",line 121,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |121| 
	.dwpsn	file "../Source/SPICAN.c",line 122,column 2,is_stmt,isa 0
$C$DW$127	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$127, DW_AT_low_pc(0x00)
	.dwattr $C$DW$127, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$127, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |122| 
        ; call occurs [#_spi_xmit] ; [] |122| 
	.dwpsn	file "../Source/SPICAN.c",line 123,column 2,is_stmt,isa 0
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_name("_spi_recv")
	.dwattr $C$DW$128, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |123| 
        ; call occurs [#_spi_recv] ; [] |123| 
        MOVZ      AR1,AL                ; [CPU_] |123| 
	.dwpsn	file "../Source/SPICAN.c",line 124,column 2,is_stmt,isa 0
$C$DW$129	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$129, DW_AT_low_pc(0x00)
	.dwattr $C$DW$129, DW_AT_name("_spi_recv")
	.dwattr $C$DW$129, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |124| 
        ; call occurs [#_spi_recv] ; [] |124| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 213,column 2,is_stmt,isa 0
        MOV       AL,AR1                ; [CPU_] |213| 
	.dwpsn	file "../Source/SPICAN.c",line 219,column 13,is_stmt,isa 0
;----------------------------------------------------------------------
; 219 | Uint16 res = 0x00;                                                     
; 221 | // Get the status of the RX Buffs                                      
; 222 | buf_status = SPICANRXBufReady();                                       
; 224 | // Check if there's a message in the RX Buffers                        
;----------------------------------------------------------------------
        MOV       *-SP[1],#0            ; [CPU_] |219| 
	.dwpsn	file "../Source/SPICAN.c",line 125,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |125| 
	.dwpsn	file "../Source/SPICAN.c",line 213,column 2,is_stmt,isa 0
        LSR       AL,6                  ; [CPU_] |213| 
        ANDB      AL,#0x03              ; [CPU_] |213| 
        MOV       *-SP[2],AL            ; [CPU_] |213| 
	.dwpsn	file "../Source/SPICAN.c",line 225,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 225 | if(buf_status != 0x00)                                                 
; 227 |         // First RX Buffer 0                                           
;----------------------------------------------------------------------
        B         $C$L10,EQ             ; [CPU_] |225| 
        ; branchcc occurs ; [] |225| 
	.dwpsn	file "../Source/SPICAN.c",line 228,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | if((buf_status & 0x01) == 0x01)                                        
;----------------------------------------------------------------------
        TBIT      AR1,#6                ; [CPU_] |228| 
        B         $C$L9,NTC             ; [CPU_] |228| 
        ; branchcc occurs ; [] |228| 
	.dwpsn	file "../Source/SPICAN.c",line 230,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 230 | SPICANReadBuf_Array(buf1, 0);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR2             ; [CPU_] |230| 
        MOVB      AL,#0                 ; [CPU_] |230| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$130, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |230| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |230| 
	.dwpsn	file "../Source/SPICAN.c",line 231,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 231 | res |= 0x01;                                                           
; 234 | // Second RX Buffer 1                                                  
;----------------------------------------------------------------------
        MOV       *-SP[1],#1            ; [CPU_] |231| 
$C$L9:    
        MOV       AL,*-SP[2]            ; [CPU_] 
	.dwpsn	file "../Source/SPICAN.c",line 235,column 3,is_stmt,isa 0
;----------------------------------------------------------------------
; 235 | if((buf_status & 0x02) == 0x02)                                        
;----------------------------------------------------------------------
        TBIT      AL,#1                 ; [CPU_] |235| 
        B         $C$L10,NTC            ; [CPU_] |235| 
        ; branchcc occurs ; [] |235| 
	.dwpsn	file "../Source/SPICAN.c",line 237,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 237 | SPICANReadBuf_Array(buf2, 1);                                          
;----------------------------------------------------------------------
        MOVL      XAR4,XAR3             ; [CPU_] |237| 
        MOVB      AL,#1                 ; [CPU_] |237| 
$C$DW$131	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$131, DW_AT_low_pc(0x00)
	.dwattr $C$DW$131, DW_AT_name("_SPICANReadBuf_Array")
	.dwattr $C$DW$131, DW_AT_TI_call

        LCR       #_SPICANReadBuf_Array ; [CPU_] |237| 
        ; call occurs [#_SPICANReadBuf_Array] ; [] |237| 
        MOV       AL,*-SP[1]            ; [CPU_] |237| 
	.dwpsn	file "../Source/SPICAN.c",line 238,column 4,is_stmt,isa 0
;----------------------------------------------------------------------
; 238 | res |= 0x02;                                                           
; 241 | return res;                                                            
;----------------------------------------------------------------------
        ORB       AL,#0x02              ; [CPU_] |238| 
        MOV       *-SP[1],AL            ; [CPU_] |238| 
$C$L10:    
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
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0xf2)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text"
	.clink
	.global	_SPICANReadBuf1

$C$DW$133	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$133, DW_AT_name("SPICANReadBuf1")
	.dwattr $C$DW$133, DW_AT_low_pc(_SPICANReadBuf1)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_SPICANReadBuf1")
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$133, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$133, DW_AT_TI_begin_line(0x81)
	.dwattr $C$DW$133, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 130,column 1,is_stmt,address _SPICANReadBuf1,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf1
;----------------------------------------------------------------------
; 129 | Uint32 SPICANReadBuf1 (void)                                           
; 131 | Uint32  RetVal;                                                        
; 132 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$134	.dwtag  DW_TAG_variable
	.dwattr $C$DW$134, DW_AT_name("RetVal")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$99)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 133 | spi_xmit(SPICAN_RXBUF1);                                               
;----------------------------------------------------------------------
        MOVB      AL,#150               ; [CPU_] |133| 
	.dwpsn	file "../Source/SPICAN.c",line 132,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |132| 
	.dwpsn	file "../Source/SPICAN.c",line 133,column 2,is_stmt,isa 0
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$135, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |133| 
        ; call occurs [#_spi_xmit] ; [] |133| 
	.dwpsn	file "../Source/SPICAN.c",line 134,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 134 | RetVal = spi_recv() << 24;                                             
;----------------------------------------------------------------------
$C$DW$136	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$136, DW_AT_low_pc(0x00)
	.dwattr $C$DW$136, DW_AT_name("_spi_recv")
	.dwattr $C$DW$136, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |134| 
        ; call occurs [#_spi_recv] ; [] |134| 
	.dwpsn	file "../Source/SPICAN.c",line 135,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | RetVal |= spi_recv() << 16;                                            
;----------------------------------------------------------------------
$C$DW$137	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$137, DW_AT_low_pc(0x00)
	.dwattr $C$DW$137, DW_AT_name("_spi_recv")
	.dwattr $C$DW$137, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |135| 
        ; call occurs [#_spi_recv] ; [] |135| 
	.dwpsn	file "../Source/SPICAN.c",line 136,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 136 | RetVal |= spi_recv() << 8;                                             
;----------------------------------------------------------------------
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_name("_spi_recv")
	.dwattr $C$DW$138, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |136| 
        ; call occurs [#_spi_recv] ; [] |136| 
        MOV       ACC,AL << #8          ; [CPU_] |136| 
        MOVZ      AR1,AL                ; [CPU_] |136| 
	.dwpsn	file "../Source/SPICAN.c",line 137,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 137 | RetVal |= spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$139	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$139, DW_AT_low_pc(0x00)
	.dwattr $C$DW$139, DW_AT_name("_spi_recv")
	.dwattr $C$DW$139, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |137| 
        ; call occurs [#_spi_recv] ; [] |137| 
        MOVZ      AR6,AL                ; [CPU_] |137| 
        MOVL      ACC,XAR1              ; [CPU_] |137| 
        OR        ACC,AR6               ; [CPU_] |137| 
        MOVL      XAR1,ACC              ; [CPU_] |137| 
	.dwpsn	file "../Source/SPICAN.c",line 138,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 138 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$140	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$140, DW_AT_low_pc(0x00)
	.dwattr $C$DW$140, DW_AT_name("_spi_recv")
	.dwattr $C$DW$140, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |138| 
        ; call occurs [#_spi_recv] ; [] |138| 
	.dwpsn	file "../Source/SPICAN.c",line 139,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 139 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_name("_spi_recv")
	.dwattr $C$DW$141, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |139| 
        ; call occurs [#_spi_recv] ; [] |139| 
	.dwpsn	file "../Source/SPICAN.c",line 140,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 140 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$142	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$142, DW_AT_low_pc(0x00)
	.dwattr $C$DW$142, DW_AT_name("_spi_recv")
	.dwattr $C$DW$142, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |140| 
        ; call occurs [#_spi_recv] ; [] |140| 
	.dwpsn	file "../Source/SPICAN.c",line 141,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 141 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$143	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$143, DW_AT_low_pc(0x00)
	.dwattr $C$DW$143, DW_AT_name("_spi_recv")
	.dwattr $C$DW$143, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |141| 
        ; call occurs [#_spi_recv] ; [] |141| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 142,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |142| 
	.dwpsn	file "../Source/SPICAN.c",line 143,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 143 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOVL      ACC,XAR1              ; [CPU_] |143| 
        MOVL      XAR1,*--SP            ; [CPU_] |143| 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$133, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0x90)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	".text"
	.clink
	.global	_SPICANIntEn

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("SPICANIntEn")
	.dwattr $C$DW$145, DW_AT_low_pc(_SPICANIntEn)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_SPICANIntEn")
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$145, DW_AT_TI_begin_line(0x63)
	.dwattr $C$DW$145, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 100,column 1,is_stmt,address _SPICANIntEn,isa 0

	.dwfde $C$DW$CIE, _SPICANIntEn
;----------------------------------------------------------------------
;  99 | void SPICANIntEn (void)
;     |  //Enables RX interupts for now                                        
; 101 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 102,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 102 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |102| 
	.dwpsn	file "../Source/SPICAN.c",line 101,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |101| 
	.dwpsn	file "../Source/SPICAN.c",line 102,column 2,is_stmt,isa 0
$C$DW$146	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$146, DW_AT_low_pc(0x00)
	.dwattr $C$DW$146, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$146, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |102| 
        ; call occurs [#_spi_xmit] ; [] |102| 
	.dwpsn	file "../Source/SPICAN.c",line 103,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 103 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |103| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$147, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |103| 
        ; call occurs [#_spi_xmit] ; [] |103| 
	.dwpsn	file "../Source/SPICAN.c",line 104,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 104 | spi_xmit(0x03);
;     |  //Enable RX Interupts                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |104| 
$C$DW$148	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$148, DW_AT_low_pc(0x00)
	.dwattr $C$DW$148, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$148, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |104| 
        ; call occurs [#_spi_xmit] ; [] |104| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 105,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 105 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |105| 
$C$DW$149	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$149, DW_AT_low_pc(0x00)
	.dwattr $C$DW$149, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0x6a)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text"
	.clink
	.global	_SPICANInit

$C$DW$150	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$150, DW_AT_name("SPICANInit")
	.dwattr $C$DW$150, DW_AT_low_pc(_SPICANInit)
	.dwattr $C$DW$150, DW_AT_high_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_SPICANInit")
	.dwattr $C$DW$150, DW_AT_external
	.dwattr $C$DW$150, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$150, DW_AT_TI_begin_line(0x09)
	.dwattr $C$DW$150, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$150, DW_AT_TI_max_frame_size(-2)
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
;  16 | // For configuration details, see note at bottom                       
;  17 | SPICANWrite(0x2A, 0x81);                // Setting up CNF1             
;  18 | SPICANWrite(0x29, 0xD0);                // Setting up CNF2             
;  19 | SPICANWrite(0x28, 0xC2);                // Setting up CNF3             
;  21 | SPICANWrite(0x2B, 0x00);                // Clearing all interrupts     
;  23 | // Set up buffers to receive all valid messages                        
;  24 | SPICANWrite(0x60, 0x04);                // Set BUKT to be 1            
;  25 | SPICANWrite(0x70, 0x00);                // Setup up RXB1 to receive all
;     |  messages                                                              
;  27 | // Set up filters for RX buffs                                         
;  28 | SPICANWrite(0x00, 0x80);                                               
;  29 | SPICANWrite(0x01, 0x00);                                               
;  31 | // Set up masks for RX buffs                                           
;  32 | SPICANWrite(0x20, 0xF9);                                               
;  33 | SPICANWrite(0x21, 0x00);                                               
;  35 | // MASK: 111 1100 1000                                                 
;  36 | // FILT: 100 0000 0000                                                 
;  37 | // RSLT: 100 00XX 0XXX (X is don't care)                               
;  39 | SPICANSetNorm();                                // Allow for Normal Mod
;     | e                                                                      
;  40 | SPICANReadStat();                               // Confirm we are in No
;     | rmal Mode                                                              
;  41 | return;                                                                
;  44 | void SPICANReset (void)                                                
;  46 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |47| 
	.dwpsn	file "../Source/SPICAN.c",line 46,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |46| 
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
$C$DW$151	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$151, DW_AT_low_pc(0x00)
	.dwattr $C$DW$151, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$151, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |47| 
        ; call occurs [#_spi_xmit] ; [] |47| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 12,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |12| 
	.dwpsn	file "../Source/SPICAN.c",line 48,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  51 | // Responsible for reading the status of a                             
;  52 | // register address on the SPICAN Control Register                     
;  53 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  54 | Uint16 SPICANRead (Uint16 Input)                                       
;  56 | Uint16  RetVal;                                                        
;  57 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  58 | spi_xmit(SPICAN_READ);                                                 
;  59 | spi_xmit(Input);                                                       
;  60 | RetVal = spi_recv();                                                   
;  61 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  62 | return(RetVal);                                                        
;  65 | // Responsible for writing the status of a                             
;  66 | // register address on the SPICAN Control Register                     
;  67 | // See Pg. 61 in (Table 11-2) for list of addresses                    
;  68 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
;  70 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;  71 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;  72 | spi_xmit(ADDR);
;     |  //Write location                                                      
;  73 | spi_xmit(Input);
;     |  //Write Info                                                          
;  74 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;  77 | // Quick polling command that reads several status bits for transmit   
;  78 | // and receive functions.                                              
;  79 | Uint16 SPICANReadStat (void)                                           
;  81 | Uint16  RetVal;                                                        
;  82 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |48| 
	.dwpsn	file "../Source/SPICAN.c",line 12,column 2,is_stmt,isa 0
$C$DW$152	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$152, DW_AT_low_pc(0x00)
	.dwattr $C$DW$152, DW_AT_name("_delay_us")
	.dwattr $C$DW$152, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |12| 
        ; call occurs [#_delay_us] ; [] |12| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  83 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 82,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |82| 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$153, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |83| 
        ; call occurs [#_spi_xmit] ; [] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 84,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  84 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |84| 
$C$DW$154	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$154, DW_AT_low_pc(0x00)
	.dwattr $C$DW$154, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$154, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  85 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$155	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$155, DW_AT_low_pc(0x00)
	.dwattr $C$DW$155, DW_AT_name("_spi_recv")
	.dwattr $C$DW$155, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 14,column 2,is_stmt,isa 0
        MOVB      AL,#10                ; [CPU_] |14| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  87 | return(RetVal);                                                        
;  90 | void SPICANSetNorm (void)                                              
;  92 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 14,column 2,is_stmt,isa 0
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_name("_delay_us")
	.dwattr $C$DW$156, DW_AT_TI_call

        LCR       #_delay_us            ; [CPU_] |14| 
        ; call occurs [#_delay_us] ; [] |14| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$157	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$157, DW_AT_low_pc(0x00)
	.dwattr $C$DW$157, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$157, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#42                ; [CPU_] |72| 
$C$DW$158	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$158, DW_AT_low_pc(0x00)
	.dwattr $C$DW$158, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$158, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#129               ; [CPU_] |73| 
$C$DW$159	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$159, DW_AT_low_pc(0x00)
	.dwattr $C$DW$159, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$159, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$160, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#41                ; [CPU_] |72| 
$C$DW$161	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$161, DW_AT_low_pc(0x00)
	.dwattr $C$DW$161, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$161, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#208               ; [CPU_] |73| 
$C$DW$162	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$162, DW_AT_low_pc(0x00)
	.dwattr $C$DW$162, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$162, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$163	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$163, DW_AT_low_pc(0x00)
	.dwattr $C$DW$163, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$163, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#40                ; [CPU_] |72| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$164, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#194               ; [CPU_] |73| 
$C$DW$165	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$165, DW_AT_low_pc(0x00)
	.dwattr $C$DW$165, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$165, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$166	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$166, DW_AT_low_pc(0x00)
	.dwattr $C$DW$166, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$166, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#43                ; [CPU_] |72| 
$C$DW$167	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$167, DW_AT_low_pc(0x00)
	.dwattr $C$DW$167, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$167, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |73| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$168, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$169	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$169, DW_AT_low_pc(0x00)
	.dwattr $C$DW$169, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$169, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#96                ; [CPU_] |72| 
$C$DW$170	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$170, DW_AT_low_pc(0x00)
	.dwattr $C$DW$170, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$170, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#4                 ; [CPU_] |73| 
$C$DW$171	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$171, DW_AT_low_pc(0x00)
	.dwattr $C$DW$171, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$171, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$172	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$172, DW_AT_low_pc(0x00)
	.dwattr $C$DW$172, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$172, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#112               ; [CPU_] |72| 
$C$DW$173	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$173, DW_AT_low_pc(0x00)
	.dwattr $C$DW$173, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$173, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |73| 
$C$DW$174	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$174, DW_AT_low_pc(0x00)
	.dwattr $C$DW$174, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$174, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$175	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$175, DW_AT_low_pc(0x00)
	.dwattr $C$DW$175, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$175, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |72| 
$C$DW$176	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$176, DW_AT_low_pc(0x00)
	.dwattr $C$DW$176, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$176, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#128               ; [CPU_] |73| 
$C$DW$177	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$177, DW_AT_low_pc(0x00)
	.dwattr $C$DW$177, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$177, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$178	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$178, DW_AT_low_pc(0x00)
	.dwattr $C$DW$178, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$178, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#1                 ; [CPU_] |72| 
$C$DW$179	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$179, DW_AT_low_pc(0x00)
	.dwattr $C$DW$179, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$179, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |73| 
$C$DW$180	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$180, DW_AT_low_pc(0x00)
	.dwattr $C$DW$180, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$180, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$181	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$181, DW_AT_low_pc(0x00)
	.dwattr $C$DW$181, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$181, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#32                ; [CPU_] |72| 
$C$DW$182	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$182, DW_AT_low_pc(0x00)
	.dwattr $C$DW$182, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$182, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#249               ; [CPU_] |73| 
$C$DW$183	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$183, DW_AT_low_pc(0x00)
	.dwattr $C$DW$183, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$183, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
        MOVB      AL,#2                 ; [CPU_] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 70,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |70| 
	.dwpsn	file "../Source/SPICAN.c",line 71,column 2,is_stmt,isa 0
$C$DW$184	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$184, DW_AT_low_pc(0x00)
	.dwattr $C$DW$184, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$184, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |71| 
        ; call occurs [#_spi_xmit] ; [] |71| 
	.dwpsn	file "../Source/SPICAN.c",line 72,column 2,is_stmt,isa 0
        MOVB      AL,#33                ; [CPU_] |72| 
$C$DW$185	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$185, DW_AT_low_pc(0x00)
	.dwattr $C$DW$185, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$185, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |72| 
        ; call occurs [#_spi_xmit] ; [] |72| 
	.dwpsn	file "../Source/SPICAN.c",line 73,column 2,is_stmt,isa 0
        MOVB      AL,#0                 ; [CPU_] |73| 
$C$DW$186	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$186, DW_AT_low_pc(0x00)
	.dwattr $C$DW$186, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$186, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |73| 
        ; call occurs [#_spi_xmit] ; [] |73| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |93| 
	.dwpsn	file "../Source/SPICAN.c",line 74,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |74| 
	.dwpsn	file "../Source/SPICAN.c",line 92,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |92| 
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
$C$DW$187	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$187, DW_AT_low_pc(0x00)
	.dwattr $C$DW$187, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$187, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |93| 
        ; call occurs [#_spi_xmit] ; [] |93| 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |94| 
$C$DW$188	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$188, DW_AT_low_pc(0x00)
	.dwattr $C$DW$188, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$188, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |94| 
        ; call occurs [#_spi_xmit] ; [] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |95| 
$C$DW$189	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$189, DW_AT_low_pc(0x00)
	.dwattr $C$DW$189, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$189, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |95| 
        ; call occurs [#_spi_xmit] ; [] |95| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 83,column 2,is_stmt,isa 0
        MOVB      AL,#3                 ; [CPU_] |83| 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |96| 
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
        MOVB      AL,#14                ; [CPU_] |84| 
$C$DW$191	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$191, DW_AT_low_pc(0x00)
	.dwattr $C$DW$191, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$191, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |84| 
        ; call occurs [#_spi_xmit] ; [] |84| 
	.dwpsn	file "../Source/SPICAN.c",line 85,column 2,is_stmt,isa 0
$C$DW$192	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$192, DW_AT_low_pc(0x00)
	.dwattr $C$DW$192, DW_AT_name("_spi_recv")
	.dwattr $C$DW$192, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |85| 
        ; call occurs [#_spi_recv] ; [] |85| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |86| 
$C$DW$193	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$193, DW_AT_low_pc(0x00)
	.dwattr $C$DW$193, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$150, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$150, DW_AT_TI_end_line(0x2a)
	.dwattr $C$DW$150, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$150

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
$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("GPIOA0")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("GPIOA1")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("GPIOA2")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("GPIOA3")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("GPIOA4")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("GPIOA5")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("GPIOA6")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("GPIOA7")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("GPIOA8")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("GPIOA9")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$203, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$203, DW_AT_bit_size(0x01)
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$204, DW_AT_name("GPIOA10")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$204, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$204, DW_AT_bit_size(0x01)
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("GPIOA11")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("GPIOA12")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("GPIOA13")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$207, DW_AT_bit_size(0x01)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("GPIOA14")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("GPIOA15")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("all")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$211, DW_AT_name("bit")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$212, DW_AT_name("GPIOA0")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$212, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$212, DW_AT_bit_size(0x01)
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("GPIOA1")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("GPIOA2")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("GPIOA3")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$215, DW_AT_bit_size(0x01)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("GPIOA4")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("GPIOA5")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("GPIOA6")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$218, DW_AT_bit_size(0x01)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("GPIOA7")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$219, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$219, DW_AT_bit_size(0x01)
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$220, DW_AT_name("GPIOA8")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$220, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$220, DW_AT_bit_size(0x01)
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("GPIOA9")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("GPIOA10")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("GPIOA11")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$223, DW_AT_bit_size(0x01)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("GPIOA12")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("GPIOA13")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("GPIOA14")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$226, DW_AT_bit_size(0x01)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("GPIOA15")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$227, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$227, DW_AT_bit_size(0x01)
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$228, DW_AT_name("all")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$229, DW_AT_name("bit")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("GPIOA0")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("GPIOA1")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$231, DW_AT_bit_size(0x01)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("GPIOA2")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("GPIOA3")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("GPIOA4")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$234, DW_AT_bit_size(0x01)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("GPIOA5")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$235, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$235, DW_AT_bit_size(0x01)
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$236, DW_AT_name("GPIOA6")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$236, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$236, DW_AT_bit_size(0x01)
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("GPIOA7")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("GPIOA8")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("GPIOA9")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("GPIOA10")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$240, DW_AT_bit_size(0x01)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("GPIOA11")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$241, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$241, DW_AT_bit_size(0x01)
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$242, DW_AT_name("GPIOA12")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$242, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$242, DW_AT_bit_size(0x01)
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("GPIOA13")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("GPIOA14")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("GPIOA15")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("all")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$247, DW_AT_name("bit")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$248, DW_AT_name("GPIOA0")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$248, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$248, DW_AT_bit_size(0x01)
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("GPIOA1")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("GPIOA2")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("GPIOA3")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("GPIOA4")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$252, DW_AT_bit_size(0x01)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("GPIOA5")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$253, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$253, DW_AT_bit_size(0x01)
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$254, DW_AT_name("GPIOA6")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$254, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$254, DW_AT_bit_size(0x01)
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("GPIOA7")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("GPIOA8")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("GPIOA9")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("GPIOA10")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$258, DW_AT_bit_size(0x01)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("GPIOA11")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$259, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$259, DW_AT_bit_size(0x01)
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$260, DW_AT_name("GPIOA12")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$260, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$260, DW_AT_bit_size(0x01)
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("GPIOA13")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("GPIOA14")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("GPIOA15")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("all")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$265, DW_AT_name("bit")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("GPIOB0")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("GPIOB1")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("GPIOB2")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("GPIOB3")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("GPIOB4")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("GPIOB5")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("GPIOB6")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("GPIOB7")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("GPIOB8")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("GPIOB9")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("GPIOB10")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("GPIOB11")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$277, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$277, DW_AT_bit_size(0x01)
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$278, DW_AT_name("GPIOB12")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$278, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$278, DW_AT_bit_size(0x01)
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("GPIOB13")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("GPIOB14")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("GPIOB15")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("all")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$283, DW_AT_name("bit")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("GPIOB0")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("GPIOB1")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("GPIOB2")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIOB3")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("GPIOB4")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("GPIOB5")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("GPIOB6")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("GPIOB7")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("GPIOB8")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("GPIOB9")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("GPIOB10")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("GPIOB11")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$295, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$295, DW_AT_bit_size(0x01)
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$296, DW_AT_name("GPIOB12")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$296, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$296, DW_AT_bit_size(0x01)
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIOB13")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("GPIOB14")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("GPIOB15")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("all")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$301, DW_AT_name("bit")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("GPIOB0")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIOB1")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("GPIOB2")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("GPIOB3")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("GPIOB4")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("GPIOB5")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("GPIOB6")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("GPIOB7")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("GPIOB8")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("GPIOB9")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("GPIOB10")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("GPIOB11")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$313, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$313, DW_AT_bit_size(0x01)
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$314, DW_AT_name("GPIOB12")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$314, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$314, DW_AT_bit_size(0x01)
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("GPIOB13")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("GPIOB14")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("GPIOB15")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("all")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$319, DW_AT_name("bit")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("GPIOB0")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("GPIOB1")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIOB2")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIOB3")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIOB4")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIOB5")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("GPIOB6")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("GPIOB7")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("GPIOB8")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIOB9")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIOB10")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("GPIOB11")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$331, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$331, DW_AT_bit_size(0x01)
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$332, DW_AT_name("GPIOB12")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$332, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$332, DW_AT_bit_size(0x01)
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("GPIOB13")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$333, DW_AT_bit_size(0x01)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("GPIOB14")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIOB15")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("all")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$337, DW_AT_name("bit")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$338, DW_AT_name("GPIOD0")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$338, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$338, DW_AT_bit_size(0x01)
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("GPIOD1")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$339, DW_AT_bit_size(0x01)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("rsvd1")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$340, DW_AT_bit_size(0x03)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOD5")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("GPIOD6")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$342, DW_AT_bit_size(0x01)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("rsvd2")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$343, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$343, DW_AT_bit_size(0x09)
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$344, DW_AT_name("all")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$345, DW_AT_name("bit")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOD0")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOD1")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("rsvd1")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$348, DW_AT_bit_size(0x03)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("GPIOD5")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$349, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$349, DW_AT_bit_size(0x01)
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$350, DW_AT_name("GPIOD6")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$350, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$350, DW_AT_bit_size(0x01)
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("rsvd2")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$351, DW_AT_bit_size(0x09)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("all")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$353, DW_AT_name("bit")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("GPIOD0")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$354, DW_AT_bit_size(0x01)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("GPIOD1")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$355, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$355, DW_AT_bit_size(0x01)
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$356, DW_AT_name("rsvd1")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$356, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$356, DW_AT_bit_size(0x03)
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$357, DW_AT_name("GPIOD5")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$357, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$357, DW_AT_bit_size(0x01)
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$358, DW_AT_name("GPIOD6")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$358, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$358, DW_AT_bit_size(0x01)
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$359, DW_AT_name("rsvd2")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$359, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$359, DW_AT_bit_size(0x09)
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$360, DW_AT_name("all")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$361, DW_AT_name("bit")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$362, DW_AT_name("GPIOD0")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$362, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$362, DW_AT_bit_size(0x01)
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$363, DW_AT_name("GPIOD1")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$363, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$363, DW_AT_bit_size(0x01)
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$364, DW_AT_name("rsvd1")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$364, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$364, DW_AT_bit_size(0x03)
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$365, DW_AT_name("GPIOD5")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$365, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$365, DW_AT_bit_size(0x01)
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$366, DW_AT_name("GPIOD6")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$366, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$366, DW_AT_bit_size(0x01)
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$367, DW_AT_name("rsvd2")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$367, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$367, DW_AT_bit_size(0x09)
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$368, DW_AT_name("all")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$369, DW_AT_name("bit")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$370, DW_AT_name("GPIOE0")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$370, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$370, DW_AT_bit_size(0x01)
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$371, DW_AT_name("GPIOE1")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$371, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$371, DW_AT_bit_size(0x01)
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$372, DW_AT_name("GPIOE2")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$372, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$372, DW_AT_bit_size(0x01)
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$373, DW_AT_name("rsvd1")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$373, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$373, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$374, DW_AT_name("all")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$375, DW_AT_name("bit")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$376, DW_AT_name("GPIOE0")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$376, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$376, DW_AT_bit_size(0x01)
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$377, DW_AT_name("GPIOE1")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$377, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$377, DW_AT_bit_size(0x01)
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$378, DW_AT_name("GPIOE2")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$378, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$378, DW_AT_bit_size(0x01)
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$379, DW_AT_name("rsvd1")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$379, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$379, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$380, DW_AT_name("all")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$381, DW_AT_name("bit")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$382, DW_AT_name("GPIOE0")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$382, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$382, DW_AT_bit_size(0x01)
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$383	.dwtag  DW_TAG_member
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$383, DW_AT_name("GPIOE1")
	.dwattr $C$DW$383, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$383, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$383, DW_AT_bit_size(0x01)
	.dwattr $C$DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$383, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$384	.dwtag  DW_TAG_member
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$384, DW_AT_name("GPIOE2")
	.dwattr $C$DW$384, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$384, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$384, DW_AT_bit_size(0x01)
	.dwattr $C$DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$384, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$385	.dwtag  DW_TAG_member
	.dwattr $C$DW$385, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$385, DW_AT_name("rsvd1")
	.dwattr $C$DW$385, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$385, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$385, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$385, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$386	.dwtag  DW_TAG_member
	.dwattr $C$DW$386, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$386, DW_AT_name("all")
	.dwattr $C$DW$386, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$386, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$387	.dwtag  DW_TAG_member
	.dwattr $C$DW$387, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$387, DW_AT_name("bit")
	.dwattr $C$DW$387, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$387, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$388	.dwtag  DW_TAG_member
	.dwattr $C$DW$388, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$388, DW_AT_name("GPIOE0")
	.dwattr $C$DW$388, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$388, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$388, DW_AT_bit_size(0x01)
	.dwattr $C$DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$388, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$389	.dwtag  DW_TAG_member
	.dwattr $C$DW$389, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$389, DW_AT_name("GPIOE1")
	.dwattr $C$DW$389, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$389, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$389, DW_AT_bit_size(0x01)
	.dwattr $C$DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$389, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$390	.dwtag  DW_TAG_member
	.dwattr $C$DW$390, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$390, DW_AT_name("GPIOE2")
	.dwattr $C$DW$390, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$390, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$390, DW_AT_bit_size(0x01)
	.dwattr $C$DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$390, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$391	.dwtag  DW_TAG_member
	.dwattr $C$DW$391, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$391, DW_AT_name("rsvd1")
	.dwattr $C$DW$391, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$391, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$391, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$391, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$392	.dwtag  DW_TAG_member
	.dwattr $C$DW$392, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$392, DW_AT_name("all")
	.dwattr $C$DW$392, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$392, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$393	.dwtag  DW_TAG_member
	.dwattr $C$DW$393, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$393, DW_AT_name("bit")
	.dwattr $C$DW$393, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$393, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$394	.dwtag  DW_TAG_member
	.dwattr $C$DW$394, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$394, DW_AT_name("GPIOF0")
	.dwattr $C$DW$394, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$394, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$394, DW_AT_bit_size(0x01)
	.dwattr $C$DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$394, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$395	.dwtag  DW_TAG_member
	.dwattr $C$DW$395, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$395, DW_AT_name("GPIOF1")
	.dwattr $C$DW$395, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$395, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$395, DW_AT_bit_size(0x01)
	.dwattr $C$DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$395, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$396	.dwtag  DW_TAG_member
	.dwattr $C$DW$396, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$396, DW_AT_name("GPIOF2")
	.dwattr $C$DW$396, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$396, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$396, DW_AT_bit_size(0x01)
	.dwattr $C$DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$396, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$397	.dwtag  DW_TAG_member
	.dwattr $C$DW$397, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$397, DW_AT_name("GPIOF3")
	.dwattr $C$DW$397, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$397, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$397, DW_AT_bit_size(0x01)
	.dwattr $C$DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$397, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$398	.dwtag  DW_TAG_member
	.dwattr $C$DW$398, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$398, DW_AT_name("GPIOF4")
	.dwattr $C$DW$398, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$398, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$398, DW_AT_bit_size(0x01)
	.dwattr $C$DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$398, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$399	.dwtag  DW_TAG_member
	.dwattr $C$DW$399, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$399, DW_AT_name("GPIOF5")
	.dwattr $C$DW$399, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$399, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$399, DW_AT_bit_size(0x01)
	.dwattr $C$DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$399, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$400	.dwtag  DW_TAG_member
	.dwattr $C$DW$400, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$400, DW_AT_name("GPIOF6")
	.dwattr $C$DW$400, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$400, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$400, DW_AT_bit_size(0x01)
	.dwattr $C$DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$400, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$401	.dwtag  DW_TAG_member
	.dwattr $C$DW$401, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$401, DW_AT_name("GPIOF7")
	.dwattr $C$DW$401, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$401, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$401, DW_AT_bit_size(0x01)
	.dwattr $C$DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$401, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$402	.dwtag  DW_TAG_member
	.dwattr $C$DW$402, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$402, DW_AT_name("GPIOF8")
	.dwattr $C$DW$402, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$402, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$402, DW_AT_bit_size(0x01)
	.dwattr $C$DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$402, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$403	.dwtag  DW_TAG_member
	.dwattr $C$DW$403, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$403, DW_AT_name("GPIOF9")
	.dwattr $C$DW$403, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$403, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$403, DW_AT_bit_size(0x01)
	.dwattr $C$DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$403, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$404	.dwtag  DW_TAG_member
	.dwattr $C$DW$404, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$404, DW_AT_name("GPIOF10")
	.dwattr $C$DW$404, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$404, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$404, DW_AT_bit_size(0x01)
	.dwattr $C$DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$404, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$405	.dwtag  DW_TAG_member
	.dwattr $C$DW$405, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$405, DW_AT_name("GPIOF11")
	.dwattr $C$DW$405, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$405, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$405, DW_AT_bit_size(0x01)
	.dwattr $C$DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$405, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$406	.dwtag  DW_TAG_member
	.dwattr $C$DW$406, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$406, DW_AT_name("GPIOF12")
	.dwattr $C$DW$406, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$406, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$406, DW_AT_bit_size(0x01)
	.dwattr $C$DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$406, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$407	.dwtag  DW_TAG_member
	.dwattr $C$DW$407, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$407, DW_AT_name("GPIOF13")
	.dwattr $C$DW$407, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$407, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$407, DW_AT_bit_size(0x01)
	.dwattr $C$DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$407, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$408	.dwtag  DW_TAG_member
	.dwattr $C$DW$408, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$408, DW_AT_name("GPIOF14")
	.dwattr $C$DW$408, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$408, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$408, DW_AT_bit_size(0x01)
	.dwattr $C$DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$408, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$409	.dwtag  DW_TAG_member
	.dwattr $C$DW$409, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$409, DW_AT_name("GPIOF15")
	.dwattr $C$DW$409, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$409, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$409, DW_AT_bit_size(0x01)
	.dwattr $C$DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$409, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$410	.dwtag  DW_TAG_member
	.dwattr $C$DW$410, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$410, DW_AT_name("all")
	.dwattr $C$DW$410, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$410, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$411	.dwtag  DW_TAG_member
	.dwattr $C$DW$411, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$411, DW_AT_name("bit")
	.dwattr $C$DW$411, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$411, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$412	.dwtag  DW_TAG_member
	.dwattr $C$DW$412, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$412, DW_AT_name("GPIOF0")
	.dwattr $C$DW$412, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$412, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$412, DW_AT_bit_size(0x01)
	.dwattr $C$DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$412, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$413	.dwtag  DW_TAG_member
	.dwattr $C$DW$413, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$413, DW_AT_name("GPIOF1")
	.dwattr $C$DW$413, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$413, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$413, DW_AT_bit_size(0x01)
	.dwattr $C$DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$413, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$414	.dwtag  DW_TAG_member
	.dwattr $C$DW$414, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$414, DW_AT_name("GPIOF2")
	.dwattr $C$DW$414, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$414, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$414, DW_AT_bit_size(0x01)
	.dwattr $C$DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$414, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$415	.dwtag  DW_TAG_member
	.dwattr $C$DW$415, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$415, DW_AT_name("GPIOF3")
	.dwattr $C$DW$415, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$415, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$415, DW_AT_bit_size(0x01)
	.dwattr $C$DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$415, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$416	.dwtag  DW_TAG_member
	.dwattr $C$DW$416, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$416, DW_AT_name("GPIOF4")
	.dwattr $C$DW$416, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$416, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$416, DW_AT_bit_size(0x01)
	.dwattr $C$DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$416, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$417	.dwtag  DW_TAG_member
	.dwattr $C$DW$417, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$417, DW_AT_name("GPIOF5")
	.dwattr $C$DW$417, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$417, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$417, DW_AT_bit_size(0x01)
	.dwattr $C$DW$417, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$417, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$418	.dwtag  DW_TAG_member
	.dwattr $C$DW$418, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$418, DW_AT_name("GPIOF6")
	.dwattr $C$DW$418, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$418, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$418, DW_AT_bit_size(0x01)
	.dwattr $C$DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$418, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$419	.dwtag  DW_TAG_member
	.dwattr $C$DW$419, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$419, DW_AT_name("GPIOF7")
	.dwattr $C$DW$419, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$419, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$419, DW_AT_bit_size(0x01)
	.dwattr $C$DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$419, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$420	.dwtag  DW_TAG_member
	.dwattr $C$DW$420, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$420, DW_AT_name("GPIOF8")
	.dwattr $C$DW$420, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$420, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$420, DW_AT_bit_size(0x01)
	.dwattr $C$DW$420, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$420, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$421	.dwtag  DW_TAG_member
	.dwattr $C$DW$421, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$421, DW_AT_name("GPIOF9")
	.dwattr $C$DW$421, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$421, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$421, DW_AT_bit_size(0x01)
	.dwattr $C$DW$421, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$421, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$422	.dwtag  DW_TAG_member
	.dwattr $C$DW$422, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$422, DW_AT_name("GPIOF10")
	.dwattr $C$DW$422, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$422, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$422, DW_AT_bit_size(0x01)
	.dwattr $C$DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$422, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$423	.dwtag  DW_TAG_member
	.dwattr $C$DW$423, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$423, DW_AT_name("GPIOF11")
	.dwattr $C$DW$423, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$423, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$423, DW_AT_bit_size(0x01)
	.dwattr $C$DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$423, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$424	.dwtag  DW_TAG_member
	.dwattr $C$DW$424, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$424, DW_AT_name("GPIOF12")
	.dwattr $C$DW$424, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$424, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$424, DW_AT_bit_size(0x01)
	.dwattr $C$DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$424, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$425	.dwtag  DW_TAG_member
	.dwattr $C$DW$425, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$425, DW_AT_name("GPIOF13")
	.dwattr $C$DW$425, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$425, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$425, DW_AT_bit_size(0x01)
	.dwattr $C$DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$425, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$426	.dwtag  DW_TAG_member
	.dwattr $C$DW$426, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$426, DW_AT_name("GPIOF14")
	.dwattr $C$DW$426, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$426, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$426, DW_AT_bit_size(0x01)
	.dwattr $C$DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$426, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$427	.dwtag  DW_TAG_member
	.dwattr $C$DW$427, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$427, DW_AT_name("GPIOF15")
	.dwattr $C$DW$427, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$427, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$427, DW_AT_bit_size(0x01)
	.dwattr $C$DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$427, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$428	.dwtag  DW_TAG_member
	.dwattr $C$DW$428, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$428, DW_AT_name("all")
	.dwattr $C$DW$428, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$428, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$429	.dwtag  DW_TAG_member
	.dwattr $C$DW$429, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$429, DW_AT_name("bit")
	.dwattr $C$DW$429, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$429, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$430	.dwtag  DW_TAG_member
	.dwattr $C$DW$430, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$430, DW_AT_name("GPIOF0")
	.dwattr $C$DW$430, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$430, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$430, DW_AT_bit_size(0x01)
	.dwattr $C$DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$430, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$431	.dwtag  DW_TAG_member
	.dwattr $C$DW$431, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$431, DW_AT_name("GPIOF1")
	.dwattr $C$DW$431, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$431, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$431, DW_AT_bit_size(0x01)
	.dwattr $C$DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$431, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$432	.dwtag  DW_TAG_member
	.dwattr $C$DW$432, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$432, DW_AT_name("GPIOF2")
	.dwattr $C$DW$432, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$432, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$432, DW_AT_bit_size(0x01)
	.dwattr $C$DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$432, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$433	.dwtag  DW_TAG_member
	.dwattr $C$DW$433, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$433, DW_AT_name("GPIOF3")
	.dwattr $C$DW$433, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$433, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$433, DW_AT_bit_size(0x01)
	.dwattr $C$DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$433, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$434	.dwtag  DW_TAG_member
	.dwattr $C$DW$434, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$434, DW_AT_name("GPIOF4")
	.dwattr $C$DW$434, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$434, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$434, DW_AT_bit_size(0x01)
	.dwattr $C$DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$434, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$435	.dwtag  DW_TAG_member
	.dwattr $C$DW$435, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$435, DW_AT_name("GPIOF5")
	.dwattr $C$DW$435, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$435, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$435, DW_AT_bit_size(0x01)
	.dwattr $C$DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$435, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$436	.dwtag  DW_TAG_member
	.dwattr $C$DW$436, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$436, DW_AT_name("GPIOF6")
	.dwattr $C$DW$436, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$436, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$436, DW_AT_bit_size(0x01)
	.dwattr $C$DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$436, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$437	.dwtag  DW_TAG_member
	.dwattr $C$DW$437, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$437, DW_AT_name("GPIOF7")
	.dwattr $C$DW$437, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$437, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$437, DW_AT_bit_size(0x01)
	.dwattr $C$DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$437, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$438	.dwtag  DW_TAG_member
	.dwattr $C$DW$438, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$438, DW_AT_name("GPIOF8")
	.dwattr $C$DW$438, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$438, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$438, DW_AT_bit_size(0x01)
	.dwattr $C$DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$438, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$439	.dwtag  DW_TAG_member
	.dwattr $C$DW$439, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$439, DW_AT_name("GPIOF9")
	.dwattr $C$DW$439, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$439, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$439, DW_AT_bit_size(0x01)
	.dwattr $C$DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$439, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$440	.dwtag  DW_TAG_member
	.dwattr $C$DW$440, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$440, DW_AT_name("GPIOF10")
	.dwattr $C$DW$440, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$440, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$440, DW_AT_bit_size(0x01)
	.dwattr $C$DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$440, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$441	.dwtag  DW_TAG_member
	.dwattr $C$DW$441, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$441, DW_AT_name("GPIOF11")
	.dwattr $C$DW$441, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$441, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$441, DW_AT_bit_size(0x01)
	.dwattr $C$DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$441, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$442	.dwtag  DW_TAG_member
	.dwattr $C$DW$442, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$442, DW_AT_name("GPIOF12")
	.dwattr $C$DW$442, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$442, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$442, DW_AT_bit_size(0x01)
	.dwattr $C$DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$442, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$443	.dwtag  DW_TAG_member
	.dwattr $C$DW$443, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$443, DW_AT_name("GPIOF13")
	.dwattr $C$DW$443, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$443, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$443, DW_AT_bit_size(0x01)
	.dwattr $C$DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$443, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$444	.dwtag  DW_TAG_member
	.dwattr $C$DW$444, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$444, DW_AT_name("GPIOF14")
	.dwattr $C$DW$444, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$444, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$444, DW_AT_bit_size(0x01)
	.dwattr $C$DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$444, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$445	.dwtag  DW_TAG_member
	.dwattr $C$DW$445, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$445, DW_AT_name("GPIOF15")
	.dwattr $C$DW$445, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$445, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$445, DW_AT_bit_size(0x01)
	.dwattr $C$DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$445, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$446	.dwtag  DW_TAG_member
	.dwattr $C$DW$446, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$446, DW_AT_name("all")
	.dwattr $C$DW$446, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$446, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$447	.dwtag  DW_TAG_member
	.dwattr $C$DW$447, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$447, DW_AT_name("bit")
	.dwattr $C$DW$447, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$447, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$448	.dwtag  DW_TAG_member
	.dwattr $C$DW$448, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$448, DW_AT_name("GPIOF0")
	.dwattr $C$DW$448, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$448, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$448, DW_AT_bit_size(0x01)
	.dwattr $C$DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$448, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$449	.dwtag  DW_TAG_member
	.dwattr $C$DW$449, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$449, DW_AT_name("GPIOF1")
	.dwattr $C$DW$449, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$449, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$449, DW_AT_bit_size(0x01)
	.dwattr $C$DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$449, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$450	.dwtag  DW_TAG_member
	.dwattr $C$DW$450, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$450, DW_AT_name("GPIOF2")
	.dwattr $C$DW$450, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$450, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$450, DW_AT_bit_size(0x01)
	.dwattr $C$DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$450, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$451	.dwtag  DW_TAG_member
	.dwattr $C$DW$451, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$451, DW_AT_name("GPIOF3")
	.dwattr $C$DW$451, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$451, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$451, DW_AT_bit_size(0x01)
	.dwattr $C$DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$451, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$452	.dwtag  DW_TAG_member
	.dwattr $C$DW$452, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$452, DW_AT_name("GPIOF4")
	.dwattr $C$DW$452, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$452, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$452, DW_AT_bit_size(0x01)
	.dwattr $C$DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$452, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$453	.dwtag  DW_TAG_member
	.dwattr $C$DW$453, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$453, DW_AT_name("GPIOF5")
	.dwattr $C$DW$453, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$453, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$453, DW_AT_bit_size(0x01)
	.dwattr $C$DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$453, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$454	.dwtag  DW_TAG_member
	.dwattr $C$DW$454, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$454, DW_AT_name("GPIOF6")
	.dwattr $C$DW$454, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$454, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$454, DW_AT_bit_size(0x01)
	.dwattr $C$DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$454, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$455	.dwtag  DW_TAG_member
	.dwattr $C$DW$455, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$455, DW_AT_name("GPIOF7")
	.dwattr $C$DW$455, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$455, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$455, DW_AT_bit_size(0x01)
	.dwattr $C$DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$455, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$456	.dwtag  DW_TAG_member
	.dwattr $C$DW$456, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$456, DW_AT_name("GPIOF8")
	.dwattr $C$DW$456, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$456, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$456, DW_AT_bit_size(0x01)
	.dwattr $C$DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$456, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$457	.dwtag  DW_TAG_member
	.dwattr $C$DW$457, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$457, DW_AT_name("GPIOF9")
	.dwattr $C$DW$457, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$457, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$457, DW_AT_bit_size(0x01)
	.dwattr $C$DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$457, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$458	.dwtag  DW_TAG_member
	.dwattr $C$DW$458, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$458, DW_AT_name("GPIOF10")
	.dwattr $C$DW$458, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$458, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$458, DW_AT_bit_size(0x01)
	.dwattr $C$DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$458, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$459	.dwtag  DW_TAG_member
	.dwattr $C$DW$459, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$459, DW_AT_name("GPIOF11")
	.dwattr $C$DW$459, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$459, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$459, DW_AT_bit_size(0x01)
	.dwattr $C$DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$459, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$460	.dwtag  DW_TAG_member
	.dwattr $C$DW$460, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$460, DW_AT_name("GPIOF12")
	.dwattr $C$DW$460, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$460, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$460, DW_AT_bit_size(0x01)
	.dwattr $C$DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$460, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$461	.dwtag  DW_TAG_member
	.dwattr $C$DW$461, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$461, DW_AT_name("GPIOF13")
	.dwattr $C$DW$461, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$461, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$461, DW_AT_bit_size(0x01)
	.dwattr $C$DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$461, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$462	.dwtag  DW_TAG_member
	.dwattr $C$DW$462, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$462, DW_AT_name("GPIOF14")
	.dwattr $C$DW$462, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$462, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$462, DW_AT_bit_size(0x01)
	.dwattr $C$DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$462, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$463	.dwtag  DW_TAG_member
	.dwattr $C$DW$463, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$463, DW_AT_name("GPIOF15")
	.dwattr $C$DW$463, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$463, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$463, DW_AT_bit_size(0x01)
	.dwattr $C$DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$463, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$464	.dwtag  DW_TAG_member
	.dwattr $C$DW$464, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$464, DW_AT_name("all")
	.dwattr $C$DW$464, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$464, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$465	.dwtag  DW_TAG_member
	.dwattr $C$DW$465, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$465, DW_AT_name("bit")
	.dwattr $C$DW$465, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$465, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$466	.dwtag  DW_TAG_member
	.dwattr $C$DW$466, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$466, DW_AT_name("rsvd1")
	.dwattr $C$DW$466, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$466, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$466, DW_AT_bit_size(0x04)
	.dwattr $C$DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$466, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$467	.dwtag  DW_TAG_member
	.dwattr $C$DW$467, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$467, DW_AT_name("GPIOG4")
	.dwattr $C$DW$467, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$467, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$467, DW_AT_bit_size(0x01)
	.dwattr $C$DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$467, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$468	.dwtag  DW_TAG_member
	.dwattr $C$DW$468, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$468, DW_AT_name("GPIOG5")
	.dwattr $C$DW$468, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$468, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$468, DW_AT_bit_size(0x01)
	.dwattr $C$DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$468, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$469	.dwtag  DW_TAG_member
	.dwattr $C$DW$469, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$469, DW_AT_name("rsvd2")
	.dwattr $C$DW$469, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$469, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$469, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$469, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$470	.dwtag  DW_TAG_member
	.dwattr $C$DW$470, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$470, DW_AT_name("all")
	.dwattr $C$DW$470, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$470, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$471	.dwtag  DW_TAG_member
	.dwattr $C$DW$471, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$471, DW_AT_name("bit")
	.dwattr $C$DW$471, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$471, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$472	.dwtag  DW_TAG_member
	.dwattr $C$DW$472, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$472, DW_AT_name("rsvd1")
	.dwattr $C$DW$472, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$472, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$472, DW_AT_bit_size(0x04)
	.dwattr $C$DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$472, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$473	.dwtag  DW_TAG_member
	.dwattr $C$DW$473, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$473, DW_AT_name("GPIOG4")
	.dwattr $C$DW$473, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$473, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$473, DW_AT_bit_size(0x01)
	.dwattr $C$DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$473, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$474	.dwtag  DW_TAG_member
	.dwattr $C$DW$474, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$474, DW_AT_name("GPIOG5")
	.dwattr $C$DW$474, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$474, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$474, DW_AT_bit_size(0x01)
	.dwattr $C$DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$474, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$475	.dwtag  DW_TAG_member
	.dwattr $C$DW$475, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$475, DW_AT_name("rsvd2")
	.dwattr $C$DW$475, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$475, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$475, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$475, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$476	.dwtag  DW_TAG_member
	.dwattr $C$DW$476, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$476, DW_AT_name("all")
	.dwattr $C$DW$476, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$476, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$477	.dwtag  DW_TAG_member
	.dwattr $C$DW$477, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$477, DW_AT_name("bit")
	.dwattr $C$DW$477, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$477, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$478	.dwtag  DW_TAG_member
	.dwattr $C$DW$478, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$478, DW_AT_name("rsvd1")
	.dwattr $C$DW$478, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$478, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$478, DW_AT_bit_size(0x04)
	.dwattr $C$DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$478, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$479	.dwtag  DW_TAG_member
	.dwattr $C$DW$479, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$479, DW_AT_name("GPIOG4")
	.dwattr $C$DW$479, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$479, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$479, DW_AT_bit_size(0x01)
	.dwattr $C$DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$479, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$480	.dwtag  DW_TAG_member
	.dwattr $C$DW$480, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$480, DW_AT_name("GPIOG5")
	.dwattr $C$DW$480, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$480, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$480, DW_AT_bit_size(0x01)
	.dwattr $C$DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$480, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$481	.dwtag  DW_TAG_member
	.dwattr $C$DW$481, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$481, DW_AT_name("rsvd2")
	.dwattr $C$DW$481, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$481, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$481, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$481, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$482	.dwtag  DW_TAG_member
	.dwattr $C$DW$482, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$482, DW_AT_name("all")
	.dwattr $C$DW$482, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$482, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$483	.dwtag  DW_TAG_member
	.dwattr $C$DW$483, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$483, DW_AT_name("bit")
	.dwattr $C$DW$483, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$483, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$484	.dwtag  DW_TAG_member
	.dwattr $C$DW$484, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$484, DW_AT_name("rsvd1")
	.dwattr $C$DW$484, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$484, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$484, DW_AT_bit_size(0x04)
	.dwattr $C$DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$484, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$485	.dwtag  DW_TAG_member
	.dwattr $C$DW$485, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$485, DW_AT_name("GPIOG4")
	.dwattr $C$DW$485, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$485, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$485, DW_AT_bit_size(0x01)
	.dwattr $C$DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$485, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$486	.dwtag  DW_TAG_member
	.dwattr $C$DW$486, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$486, DW_AT_name("GPIOG5")
	.dwattr $C$DW$486, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$486, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$486, DW_AT_bit_size(0x01)
	.dwattr $C$DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$486, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$487	.dwtag  DW_TAG_member
	.dwattr $C$DW$487, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$487, DW_AT_name("rsvd2")
	.dwattr $C$DW$487, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$487, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$487, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$487, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$488	.dwtag  DW_TAG_member
	.dwattr $C$DW$488, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$488, DW_AT_name("all")
	.dwattr $C$DW$488, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$488, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$489	.dwtag  DW_TAG_member
	.dwattr $C$DW$489, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$489, DW_AT_name("bit")
	.dwattr $C$DW$489, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$489, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x20)
$C$DW$490	.dwtag  DW_TAG_member
	.dwattr $C$DW$490, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$490, DW_AT_name("GPADAT")
	.dwattr $C$DW$490, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$490, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$491	.dwtag  DW_TAG_member
	.dwattr $C$DW$491, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$491, DW_AT_name("GPASET")
	.dwattr $C$DW$491, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$491, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$492	.dwtag  DW_TAG_member
	.dwattr $C$DW$492, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$492, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$492, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$492, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$493	.dwtag  DW_TAG_member
	.dwattr $C$DW$493, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$493, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$493, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$493, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$494	.dwtag  DW_TAG_member
	.dwattr $C$DW$494, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$494, DW_AT_name("GPBDAT")
	.dwattr $C$DW$494, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$494, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$495	.dwtag  DW_TAG_member
	.dwattr $C$DW$495, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$495, DW_AT_name("GPBSET")
	.dwattr $C$DW$495, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$495, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$496	.dwtag  DW_TAG_member
	.dwattr $C$DW$496, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$496, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$496, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$496, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$497	.dwtag  DW_TAG_member
	.dwattr $C$DW$497, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$497, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$497, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$497, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$498	.dwtag  DW_TAG_member
	.dwattr $C$DW$498, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$498, DW_AT_name("rsvd1")
	.dwattr $C$DW$498, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$498, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$499	.dwtag  DW_TAG_member
	.dwattr $C$DW$499, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$499, DW_AT_name("GPDDAT")
	.dwattr $C$DW$499, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$499, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$500	.dwtag  DW_TAG_member
	.dwattr $C$DW$500, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$500, DW_AT_name("GPDSET")
	.dwattr $C$DW$500, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$500, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$501	.dwtag  DW_TAG_member
	.dwattr $C$DW$501, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$501, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$501, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$501, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$502	.dwtag  DW_TAG_member
	.dwattr $C$DW$502, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$502, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$502, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$502, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$503	.dwtag  DW_TAG_member
	.dwattr $C$DW$503, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$503, DW_AT_name("GPEDAT")
	.dwattr $C$DW$503, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$503, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$504	.dwtag  DW_TAG_member
	.dwattr $C$DW$504, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$504, DW_AT_name("GPESET")
	.dwattr $C$DW$504, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$504, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$505	.dwtag  DW_TAG_member
	.dwattr $C$DW$505, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$505, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$505, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$505, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$506	.dwtag  DW_TAG_member
	.dwattr $C$DW$506, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$506, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$506, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$506, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$507	.dwtag  DW_TAG_member
	.dwattr $C$DW$507, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$507, DW_AT_name("GPFDAT")
	.dwattr $C$DW$507, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$507, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$508	.dwtag  DW_TAG_member
	.dwattr $C$DW$508, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$508, DW_AT_name("GPFSET")
	.dwattr $C$DW$508, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$508, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$509	.dwtag  DW_TAG_member
	.dwattr $C$DW$509, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$509, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$509, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$509, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$510	.dwtag  DW_TAG_member
	.dwattr $C$DW$510, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$510, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$510, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$510, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$511	.dwtag  DW_TAG_member
	.dwattr $C$DW$511, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$511, DW_AT_name("GPGDAT")
	.dwattr $C$DW$511, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$511, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$512	.dwtag  DW_TAG_member
	.dwattr $C$DW$512, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$512, DW_AT_name("GPGSET")
	.dwattr $C$DW$512, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$512, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$513	.dwtag  DW_TAG_member
	.dwattr $C$DW$513, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$513, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$513, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$513, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$514	.dwtag  DW_TAG_member
	.dwattr $C$DW$514, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$514, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$514, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$514, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$515	.dwtag  DW_TAG_member
	.dwattr $C$DW$515, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$515, DW_AT_name("rsvd2")
	.dwattr $C$DW$515, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$515, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$516	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$516, DW_AT_type(*$C$DW$T$69)

$C$DW$T$70	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$516)

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

$C$DW$517	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$517, DW_AT_type(*$C$DW$T$19)

$C$DW$T$83	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$83, DW_AT_type(*$C$DW$517)


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$518	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$518, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$68

$C$DW$T$76	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$76, DW_AT_address_class(0x20)

$C$DW$519	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$519, DW_AT_type(*$C$DW$T$76)

$C$DW$T$84	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$84, DW_AT_type(*$C$DW$519)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$99	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$99, DW_AT_name("Uint32")
	.dwattr $C$DW$T$99, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$99, DW_AT_language(DW_LANG_C)

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

$C$DW$520	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$520, DW_AT_name("AL")
	.dwattr $C$DW$520, DW_AT_location[DW_OP_reg0]

$C$DW$521	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$521, DW_AT_name("AH")
	.dwattr $C$DW$521, DW_AT_location[DW_OP_reg1]

$C$DW$522	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$522, DW_AT_name("PL")
	.dwattr $C$DW$522, DW_AT_location[DW_OP_reg2]

$C$DW$523	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$523, DW_AT_name("PH")
	.dwattr $C$DW$523, DW_AT_location[DW_OP_reg3]

$C$DW$524	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$524, DW_AT_name("SP")
	.dwattr $C$DW$524, DW_AT_location[DW_OP_reg20]

$C$DW$525	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$525, DW_AT_name("XT")
	.dwattr $C$DW$525, DW_AT_location[DW_OP_reg21]

$C$DW$526	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$526, DW_AT_name("T")
	.dwattr $C$DW$526, DW_AT_location[DW_OP_reg22]

$C$DW$527	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$527, DW_AT_name("ST0")
	.dwattr $C$DW$527, DW_AT_location[DW_OP_reg23]

$C$DW$528	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$528, DW_AT_name("ST1")
	.dwattr $C$DW$528, DW_AT_location[DW_OP_reg24]

$C$DW$529	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$529, DW_AT_name("PC")
	.dwattr $C$DW$529, DW_AT_location[DW_OP_reg25]

$C$DW$530	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$530, DW_AT_name("RPC")
	.dwattr $C$DW$530, DW_AT_location[DW_OP_reg26]

$C$DW$531	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$531, DW_AT_name("FP")
	.dwattr $C$DW$531, DW_AT_location[DW_OP_reg28]

$C$DW$532	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$532, DW_AT_name("DP")
	.dwattr $C$DW$532, DW_AT_location[DW_OP_reg29]

$C$DW$533	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$533, DW_AT_name("SXM")
	.dwattr $C$DW$533, DW_AT_location[DW_OP_reg30]

$C$DW$534	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$534, DW_AT_name("PM")
	.dwattr $C$DW$534, DW_AT_location[DW_OP_reg31]

$C$DW$535	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$535, DW_AT_name("OVM")
	.dwattr $C$DW$535, DW_AT_location[DW_OP_regx 0x20]

$C$DW$536	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$536, DW_AT_name("PAGE0")
	.dwattr $C$DW$536, DW_AT_location[DW_OP_regx 0x21]

$C$DW$537	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$537, DW_AT_name("AMODE")
	.dwattr $C$DW$537, DW_AT_location[DW_OP_regx 0x22]

$C$DW$538	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$538, DW_AT_name("INTM")
	.dwattr $C$DW$538, DW_AT_location[DW_OP_regx 0x23]

$C$DW$539	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$539, DW_AT_name("IFR")
	.dwattr $C$DW$539, DW_AT_location[DW_OP_regx 0x24]

$C$DW$540	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$540, DW_AT_name("IER")
	.dwattr $C$DW$540, DW_AT_location[DW_OP_regx 0x25]

$C$DW$541	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$541, DW_AT_name("V")
	.dwattr $C$DW$541, DW_AT_location[DW_OP_regx 0x26]

$C$DW$542	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$542, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$542, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$543	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$543, DW_AT_name("VOL")
	.dwattr $C$DW$543, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$544	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$544, DW_AT_name("AR0")
	.dwattr $C$DW$544, DW_AT_location[DW_OP_reg4]

$C$DW$545	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$545, DW_AT_name("XAR0")
	.dwattr $C$DW$545, DW_AT_location[DW_OP_reg5]

$C$DW$546	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$546, DW_AT_name("AR1")
	.dwattr $C$DW$546, DW_AT_location[DW_OP_reg6]

$C$DW$547	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$547, DW_AT_name("XAR1")
	.dwattr $C$DW$547, DW_AT_location[DW_OP_reg7]

$C$DW$548	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$548, DW_AT_name("AR2")
	.dwattr $C$DW$548, DW_AT_location[DW_OP_reg8]

$C$DW$549	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$549, DW_AT_name("XAR2")
	.dwattr $C$DW$549, DW_AT_location[DW_OP_reg9]

$C$DW$550	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$550, DW_AT_name("AR3")
	.dwattr $C$DW$550, DW_AT_location[DW_OP_reg10]

$C$DW$551	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$551, DW_AT_name("XAR3")
	.dwattr $C$DW$551, DW_AT_location[DW_OP_reg11]

$C$DW$552	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$552, DW_AT_name("AR4")
	.dwattr $C$DW$552, DW_AT_location[DW_OP_reg12]

$C$DW$553	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$553, DW_AT_name("XAR4")
	.dwattr $C$DW$553, DW_AT_location[DW_OP_reg13]

$C$DW$554	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$554, DW_AT_name("AR5")
	.dwattr $C$DW$554, DW_AT_location[DW_OP_reg14]

$C$DW$555	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$555, DW_AT_name("XAR5")
	.dwattr $C$DW$555, DW_AT_location[DW_OP_reg15]

$C$DW$556	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$556, DW_AT_name("AR6")
	.dwattr $C$DW$556, DW_AT_location[DW_OP_reg16]

$C$DW$557	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$557, DW_AT_name("XAR6")
	.dwattr $C$DW$557, DW_AT_location[DW_OP_reg17]

$C$DW$558	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$558, DW_AT_name("AR7")
	.dwattr $C$DW$558, DW_AT_location[DW_OP_reg18]

$C$DW$559	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$559, DW_AT_name("XAR7")
	.dwattr $C$DW$559, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


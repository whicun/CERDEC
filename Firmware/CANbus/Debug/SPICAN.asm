;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.4.LTS *
;* Date/Time created: Wed Dec 04 15:56:24 2019                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/SPICAN.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.4.LTS Copyright (c) 1996-2015 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\ebenton\Documents\CERDEC TS\Firmware\CANbus\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$1, DW_AT_name("spi_xmit")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_spi_xmit")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$19)

	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$3, DW_AT_name("spi_recv")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_spi_recv")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwendtag $C$DW$3

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("GpioDataRegs")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_GpioDataRegs")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$70)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\240242 C:\\Users\\ebenton\\AppData\\Local\\Temp\\240244 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.4.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\2402412 
	.sect	".text"
	.clink
	.global	_SPICANWrite

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("SPICANWrite")
	.dwattr $C$DW$5, DW_AT_low_pc(_SPICANWrite)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_SPICANWrite")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x18)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-6)
	.dwpsn	file "../Source/SPICAN.c",line 25,column 1,is_stmt,address _SPICANWrite,isa 0

	.dwfde $C$DW$CIE, _SPICANWrite
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("ADDR")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]

$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_name("Input")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
;  24 | void SPICANWrite (Uint16 ADDR, Uint16 Input)                           
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
$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("ADDR")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("_ADDR")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg8]

;* AR1   assigned to _Input
$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("Input")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$9, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVZ      AR1,AH                ; [CPU_] |25| 
	.dwpsn	file "../Source/SPICAN.c",line 26,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  26 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |26| 
        MOVL      *SP++,XAR2            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 9, 4
	.dwcfi	cfa_offset, -6
	.dwpsn	file "../Source/SPICAN.c",line 25,column 1,is_stmt,isa 0
        MOVZ      AR2,AL                ; [CPU_] |25| 
	.dwpsn	file "../Source/SPICAN.c",line 27,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  27 | spi_xmit(SPICAN_WRITE);                                         //Write
;     |  command                                                               
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |27| 
$C$DW$10	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$10, DW_AT_low_pc(0x00)
	.dwattr $C$DW$10, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$10, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |27| 
        ; call occurs [#_spi_xmit] ; [] |27| 
	.dwpsn	file "../Source/SPICAN.c",line 28,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  28 | spi_xmit(ADDR);
;     |  //Write location                                                      
;----------------------------------------------------------------------
        MOV       AL,AR2                ; [CPU_] |28| 
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$11, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |28| 
        ; call occurs [#_spi_xmit] ; [] |28| 
	.dwpsn	file "../Source/SPICAN.c",line 29,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  29 | spi_xmit(Input);
;     |  //Write Info                                                          
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |29| 
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$12, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |29| 
        ; call occurs [#_spi_xmit] ; [] |29| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 30,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  30 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;                                   
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |30| 
        MOVL      XAR2,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -4
	.dwcfi	restore_reg, 9
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x1f)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.global	_SPICANSetNorm

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("SPICANSetNorm")
	.dwattr $C$DW$14, DW_AT_low_pc(_SPICANSetNorm)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_SPICANSetNorm")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x2c)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 45,column 1,is_stmt,address _SPICANSetNorm,isa 0

	.dwfde $C$DW$CIE, _SPICANSetNorm
;----------------------------------------------------------------------
;  44 | void SPICANSetNorm (void)                                              
;  46 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  47 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |47| 
	.dwpsn	file "../Source/SPICAN.c",line 46,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |46| 
	.dwpsn	file "../Source/SPICAN.c",line 47,column 2,is_stmt,isa 0
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$15, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |47| 
        ; call occurs [#_spi_xmit] ; [] |47| 
	.dwpsn	file "../Source/SPICAN.c",line 48,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  48 | spi_xmit(SPICAN_CANCTRL);                                              
;----------------------------------------------------------------------
        MOVB      AL,#15                ; [CPU_] |48| 
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$16, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |48| 
        ; call occurs [#_spi_xmit] ; [] |48| 
	.dwpsn	file "../Source/SPICAN.c",line 49,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  49 | spi_xmit(0x00);
;     |  //Normal Mode, No Abort, No One Shot, No CLK En, No Clock Pre         
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |49| 
$C$DW$17	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$17, DW_AT_low_pc(0x00)
	.dwattr $C$DW$17, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$17, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |49| 
        ; call occurs [#_spi_xmit] ; [] |49| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 50,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  50 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |50| 
$C$DW$18	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$18, DW_AT_low_pc(0x00)
	.dwattr $C$DW$18, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x33)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"
	.clink
	.global	_SPICANReset

$C$DW$19	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$19, DW_AT_name("SPICANReset")
	.dwattr $C$DW$19, DW_AT_low_pc(_SPICANReset)
	.dwattr $C$DW$19, DW_AT_high_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("_SPICANReset")
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$19, DW_AT_TI_begin_line(0x06)
	.dwattr $C$DW$19, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$19, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 7,column 1,is_stmt,address _SPICANReset,isa 0

	.dwfde $C$DW$CIE, _SPICANReset
;----------------------------------------------------------------------
;   6 | void SPICANReset (void)                                                
;   8 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 9,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;   9 | spi_xmit(SPICAN_RESET);                                         //Trans
;     | mit Reset command                                                      
;----------------------------------------------------------------------
        MOVB      AL,#192               ; [CPU_] |9| 
	.dwpsn	file "../Source/SPICAN.c",line 8,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |8| 
	.dwpsn	file "../Source/SPICAN.c",line 9,column 2,is_stmt,isa 0
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$20, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |9| 
        ; call occurs [#_spi_xmit] ; [] |9| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 10,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  10 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |10| 
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$19, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$19, DW_AT_TI_end_line(0x0b)
	.dwattr $C$DW$19, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$19

	.sect	".text"
	.clink
	.global	_SPICANReadStat

$C$DW$22	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$22, DW_AT_name("SPICANReadStat")
	.dwattr $C$DW$22, DW_AT_low_pc(_SPICANReadStat)
	.dwattr $C$DW$22, DW_AT_high_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("_SPICANReadStat")
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x21)
	.dwattr $C$DW$22, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$22, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 34,column 1,is_stmt,address _SPICANReadStat,isa 0

	.dwfde $C$DW$CIE, _SPICANReadStat
;----------------------------------------------------------------------
;  33 | Uint16 SPICANReadStat (void)                                           
;  35 | Uint16  RetVal;                                                        
;  36 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 37,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  37 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |37| 
	.dwpsn	file "../Source/SPICAN.c",line 36,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |36| 
	.dwpsn	file "../Source/SPICAN.c",line 37,column 2,is_stmt,isa 0
$C$DW$23	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$23, DW_AT_low_pc(0x00)
	.dwattr $C$DW$23, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$23, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |37| 
        ; call occurs [#_spi_xmit] ; [] |37| 
	.dwpsn	file "../Source/SPICAN.c",line 38,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  38 | spi_xmit(SPICAN_CANSTAT);                                              
;----------------------------------------------------------------------
        MOVB      AL,#14                ; [CPU_] |38| 
$C$DW$24	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$24, DW_AT_low_pc(0x00)
	.dwattr $C$DW$24, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$24, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |38| 
        ; call occurs [#_spi_xmit] ; [] |38| 
	.dwpsn	file "../Source/SPICAN.c",line 39,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  39 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$25	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$25, DW_AT_low_pc(0x00)
	.dwattr $C$DW$25, DW_AT_name("_spi_recv")
	.dwattr $C$DW$25, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |39| 
        ; call occurs [#_spi_recv] ; [] |39| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 40,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  40 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  41 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |40| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$22, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x2a)
	.dwattr $C$DW$22, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$22

	.sect	".text"
	.clink
	.global	_SPICANReadInt

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("SPICANReadInt")
	.dwattr $C$DW$27, DW_AT_low_pc(_SPICANReadInt)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_SPICANReadInt")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$27, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x3e)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 63,column 1,is_stmt,address _SPICANReadInt,isa 0

	.dwfde $C$DW$CIE, _SPICANReadInt
;----------------------------------------------------------------------
;  62 | Uint16 SPICANReadInt (void)                                            
;  64 | Uint16 RetVal;                                                         
;  65 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 66,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  66 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |66| 
	.dwpsn	file "../Source/SPICAN.c",line 65,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |65| 
	.dwpsn	file "../Source/SPICAN.c",line 66,column 2,is_stmt,isa 0
$C$DW$28	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$28, DW_AT_low_pc(0x00)
	.dwattr $C$DW$28, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$28, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |66| 
        ; call occurs [#_spi_xmit] ; [] |66| 
	.dwpsn	file "../Source/SPICAN.c",line 67,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  67 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |67| 
$C$DW$29	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$29, DW_AT_low_pc(0x00)
	.dwattr $C$DW$29, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$29, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |67| 
        ; call occurs [#_spi_xmit] ; [] |67| 
	.dwpsn	file "../Source/SPICAN.c",line 68,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  68 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_name("_spi_recv")
	.dwattr $C$DW$30, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |68| 
        ; call occurs [#_spi_recv] ; [] |68| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 69,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  69 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |69| 
$C$DW$31	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$31, DW_AT_low_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x46)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text"
	.clink
	.global	_SPICANReadBuf1

$C$DW$32	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$32, DW_AT_name("SPICANReadBuf1")
	.dwattr $C$DW$32, DW_AT_low_pc(_SPICANReadBuf1)
	.dwattr $C$DW$32, DW_AT_high_pc(0x00)
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_SPICANReadBuf1")
	.dwattr $C$DW$32, DW_AT_external
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$32, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$32, DW_AT_TI_begin_line(0x53)
	.dwattr $C$DW$32, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$32, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 84,column 1,is_stmt,address _SPICANReadBuf1,isa 0

	.dwfde $C$DW$CIE, _SPICANReadBuf1
;----------------------------------------------------------------------
;  83 | Uint32 SPICANReadBuf1 (void)                                           
;  85 | Uint32  RetVal;                                                        
;  86 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("RetVal")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_RetVal")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$87)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  87 | spi_xmit(SPICAN_RXBUF1);                                               
;----------------------------------------------------------------------
        MOVB      AL,#146               ; [CPU_] |87| 
	.dwpsn	file "../Source/SPICAN.c",line 86,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |86| 
	.dwpsn	file "../Source/SPICAN.c",line 87,column 2,is_stmt,isa 0
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$34, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |87| 
        ; call occurs [#_spi_xmit] ; [] |87| 
	.dwpsn	file "../Source/SPICAN.c",line 88,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  88 | RetVal = spi_recv() << 24;                                             
;----------------------------------------------------------------------
$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_spi_recv")
	.dwattr $C$DW$35, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |88| 
        ; call occurs [#_spi_recv] ; [] |88| 
	.dwpsn	file "../Source/SPICAN.c",line 89,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  89 | RetVal |= spi_recv() << 16;                                            
;----------------------------------------------------------------------
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_name("_spi_recv")
	.dwattr $C$DW$36, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |89| 
        ; call occurs [#_spi_recv] ; [] |89| 
	.dwpsn	file "../Source/SPICAN.c",line 90,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  90 | RetVal |= spi_recv() << 8;                                             
;----------------------------------------------------------------------
$C$DW$37	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$37, DW_AT_low_pc(0x00)
	.dwattr $C$DW$37, DW_AT_name("_spi_recv")
	.dwattr $C$DW$37, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |90| 
        ; call occurs [#_spi_recv] ; [] |90| 
        MOV       ACC,AL << #8          ; [CPU_] |90| 
        MOVZ      AR1,AL                ; [CPU_] |90| 
	.dwpsn	file "../Source/SPICAN.c",line 91,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  91 | RetVal |= spi_recv();                                                  
;----------------------------------------------------------------------
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_spi_recv")
	.dwattr $C$DW$38, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |91| 
        ; call occurs [#_spi_recv] ; [] |91| 
        MOVZ      AR6,AL                ; [CPU_] |91| 
        MOVL      ACC,XAR1              ; [CPU_] |91| 
        OR        ACC,AR6               ; [CPU_] |91| 
        MOVL      XAR1,ACC              ; [CPU_] |91| 
	.dwpsn	file "../Source/SPICAN.c",line 92,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  92 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_spi_recv")
	.dwattr $C$DW$39, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |92| 
        ; call occurs [#_spi_recv] ; [] |92| 
	.dwpsn	file "../Source/SPICAN.c",line 93,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  93 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_spi_recv")
	.dwattr $C$DW$40, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |93| 
        ; call occurs [#_spi_recv] ; [] |93| 
	.dwpsn	file "../Source/SPICAN.c",line 94,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  94 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_spi_recv")
	.dwattr $C$DW$41, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |94| 
        ; call occurs [#_spi_recv] ; [] |94| 
	.dwpsn	file "../Source/SPICAN.c",line 95,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  95 | spi_recv();                                                            
;----------------------------------------------------------------------
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_spi_recv")
	.dwattr $C$DW$42, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |95| 
        ; call occurs [#_spi_recv] ; [] |95| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 96,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  96 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |96| 
	.dwpsn	file "../Source/SPICAN.c",line 97,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  97 | return(RetVal);                                                        
;----------------------------------------------------------------------
        MOVL      ACC,XAR1              ; [CPU_] |97| 
        MOVL      XAR1,*--SP            ; [CPU_] |97| 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$32, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$32, DW_AT_TI_end_line(0x62)
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
	.dwattr $C$DW$44, DW_AT_TI_begin_line(0x0d)
	.dwattr $C$DW$44, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$44, DW_AT_TI_max_frame_size(-4)
	.dwpsn	file "../Source/SPICAN.c",line 14,column 1,is_stmt,address _SPICANRead,isa 0

	.dwfde $C$DW$CIE, _SPICANRead
$C$DW$45	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$45, DW_AT_name("Input")
	.dwattr $C$DW$45, DW_AT_TI_symbol_name("_Input")
	.dwattr $C$DW$45, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$45, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  13 | Uint16 SPICANRead (Uint16 Input)                                       
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
	.dwattr $C$DW$46, DW_AT_type(*$C$DW$T$76)
	.dwattr $C$DW$46, DW_AT_location[DW_OP_reg6]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVL      *SP++,XAR1            ; [CPU_] 
	.dwcfi	save_reg_to_mem, 7, 2
	.dwcfi	cfa_offset, -4
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
;----------------------------------------------------------------------
;  15 | Uint16  RetVal;                                                        
;----------------------------------------------------------------------
        MOVZ      AR1,AL                ; [CPU_] |14| 
	.dwpsn	file "../Source/SPICAN.c",line 16,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  16 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |16| 
	.dwpsn	file "../Source/SPICAN.c",line 17,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  17 | spi_xmit(SPICAN_READ);                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |17| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$47, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |17| 
        ; call occurs [#_spi_xmit] ; [] |17| 
	.dwpsn	file "../Source/SPICAN.c",line 18,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  18 | spi_xmit(Input);                                                       
;----------------------------------------------------------------------
        MOV       AL,AR1                ; [CPU_] |18| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$48, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |18| 
        ; call occurs [#_spi_xmit] ; [] |18| 
	.dwpsn	file "../Source/SPICAN.c",line 19,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  19 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_spi_recv")
	.dwattr $C$DW$49, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |19| 
        ; call occurs [#_spi_recv] ; [] |19| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 20,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  20 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  21 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |20| 
        MOVL      XAR1,*--SP            ; [CPU_] 
	.dwcfi	cfa_offset, -2
	.dwcfi	restore_reg, 7
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$44, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$44, DW_AT_TI_end_line(0x16)
	.dwattr $C$DW$44, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$44

	.sect	".text"
	.clink
	.global	_SPICANRXStatus

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("SPICANRXStatus")
	.dwattr $C$DW$51, DW_AT_low_pc(_SPICANRXStatus)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_SPICANRXStatus")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$51, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x48)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 73,column 1,is_stmt,address _SPICANRXStatus,isa 0

	.dwfde $C$DW$CIE, _SPICANRXStatus
;----------------------------------------------------------------------
;  72 | Uint16 SPICANRXStatus (void)                                           
;  74 | Uint16  RetVal;                                                        
;  75 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _SPICANRXStatus               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_SPICANRXStatus:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 76,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | spi_xmit(SPICAN_RXSTAT);                                               
;----------------------------------------------------------------------
        MOVB      AL,#176               ; [CPU_] |76| 
	.dwpsn	file "../Source/SPICAN.c",line 75,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |75| 
	.dwpsn	file "../Source/SPICAN.c",line 76,column 2,is_stmt,isa 0
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$52, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |76| 
        ; call occurs [#_spi_xmit] ; [] |76| 
	.dwpsn	file "../Source/SPICAN.c",line 77,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  77 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_spi_recv")
	.dwattr $C$DW$53, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |77| 
        ; call occurs [#_spi_recv] ; [] |77| 
	.dwpsn	file "../Source/SPICAN.c",line 78,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  78 | RetVal = spi_recv();                                                   
;----------------------------------------------------------------------
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_spi_recv")
	.dwattr $C$DW$54, DW_AT_TI_call

        LCR       #_spi_recv            ; [CPU_] |78| 
        ; call occurs [#_spi_recv] ; [] |78| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 79,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  79 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;  80 | return(RetVal);                                                        
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |79| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x51)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.clink
	.global	_SPICANIntEn

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("SPICANIntEn")
	.dwattr $C$DW$56, DW_AT_low_pc(_SPICANIntEn)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_SPICANIntEn")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("../Source/SPICAN.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0x35)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/SPICAN.c",line 54,column 1,is_stmt,address _SPICANIntEn,isa 0

	.dwfde $C$DW$CIE, _SPICANIntEn
;----------------------------------------------------------------------
;  53 | void SPICANIntEn (void)
;     |  //Enables RX interupts for now                                        
;  55 | GpioDataRegs.GPADAT.bit.GPIOA0  = 0;            //Chip Select Low      
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
	.dwpsn	file "../Source/SPICAN.c",line 56,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  56 | spi_xmit(SPICAN_WRITE);                                                
;----------------------------------------------------------------------
        MOVB      AL,#2                 ; [CPU_] |56| 
	.dwpsn	file "../Source/SPICAN.c",line 55,column 2,is_stmt,isa 0
        AND       @_GpioDataRegs,#0xfffe ; [CPU_] |55| 
	.dwpsn	file "../Source/SPICAN.c",line 56,column 2,is_stmt,isa 0
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$57, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |56| 
        ; call occurs [#_spi_xmit] ; [] |56| 
	.dwpsn	file "../Source/SPICAN.c",line 57,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  57 | spi_xmit(0x2B);                                                        
;----------------------------------------------------------------------
        MOVB      AL,#43                ; [CPU_] |57| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$58, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |57| 
        ; call occurs [#_spi_xmit] ; [] |57| 
	.dwpsn	file "../Source/SPICAN.c",line 58,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  58 | spi_xmit(0x03);
;     |  //Enable RX Interupts                                                 
;----------------------------------------------------------------------
        MOVB      AL,#3                 ; [CPU_] |58| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_spi_xmit")
	.dwattr $C$DW$59, DW_AT_TI_call

        LCR       #_spi_xmit            ; [CPU_] |58| 
        ; call occurs [#_spi_xmit] ; [] |58| 
        MOVW      DP,#_GpioDataRegs     ; [CPU_U] 
	.dwpsn	file "../Source/SPICAN.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | GpioDataRegs.GPADAT.bit.GPIOA0  = 1;            //Release chip select  
;----------------------------------------------------------------------
        OR        @_GpioDataRegs,#0x0001 ; [CPU_] |59| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("../Source/SPICAN.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x3c)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

;**************************************************************
;* UNDEFINED EXTERNAL REFERENCES                              *
;**************************************************************
	.global	_spi_xmit
	.global	_spi_recv
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_name("GPACLEAR_BITS")
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x01)
$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$61, DW_AT_name("GPIOA0")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_name("GPIOA1")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$63	.dwtag  DW_TAG_member
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_name("GPIOA2")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$63, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$63, DW_AT_bit_size(0x01)
	.dwattr $C$DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$63, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$64	.dwtag  DW_TAG_member
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$64, DW_AT_name("GPIOA3")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$64, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$64, DW_AT_bit_size(0x01)
	.dwattr $C$DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$64, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$65	.dwtag  DW_TAG_member
	.dwattr $C$DW$65, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$65, DW_AT_name("GPIOA4")
	.dwattr $C$DW$65, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$65, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$65, DW_AT_bit_size(0x01)
	.dwattr $C$DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$65, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$66	.dwtag  DW_TAG_member
	.dwattr $C$DW$66, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$66, DW_AT_name("GPIOA5")
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$66, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$66, DW_AT_bit_size(0x01)
	.dwattr $C$DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$66, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$67	.dwtag  DW_TAG_member
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_name("GPIOA6")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$67, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$67, DW_AT_bit_size(0x01)
	.dwattr $C$DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$67, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$68	.dwtag  DW_TAG_member
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_name("GPIOA7")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$68, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$68, DW_AT_bit_size(0x01)
	.dwattr $C$DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$68, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$69	.dwtag  DW_TAG_member
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$69, DW_AT_name("GPIOA8")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$69, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$69, DW_AT_bit_size(0x01)
	.dwattr $C$DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$69, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$70	.dwtag  DW_TAG_member
	.dwattr $C$DW$70, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$70, DW_AT_name("GPIOA9")
	.dwattr $C$DW$70, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$70, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$70, DW_AT_bit_size(0x01)
	.dwattr $C$DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$70, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$71	.dwtag  DW_TAG_member
	.dwattr $C$DW$71, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$71, DW_AT_name("GPIOA10")
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$71, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$71, DW_AT_bit_size(0x01)
	.dwattr $C$DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$71, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$72	.dwtag  DW_TAG_member
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_name("GPIOA11")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$72, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$72, DW_AT_bit_size(0x01)
	.dwattr $C$DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$72, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$73	.dwtag  DW_TAG_member
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_name("GPIOA12")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$73, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$73, DW_AT_bit_size(0x01)
	.dwattr $C$DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$73, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$74	.dwtag  DW_TAG_member
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$74, DW_AT_name("GPIOA13")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$74, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$74, DW_AT_bit_size(0x01)
	.dwattr $C$DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$74, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$75	.dwtag  DW_TAG_member
	.dwattr $C$DW$75, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$75, DW_AT_name("GPIOA14")
	.dwattr $C$DW$75, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$75, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$75, DW_AT_bit_size(0x01)
	.dwattr $C$DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$75, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$76	.dwtag  DW_TAG_member
	.dwattr $C$DW$76, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$76, DW_AT_name("GPIOA15")
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$76, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$76, DW_AT_bit_size(0x01)
	.dwattr $C$DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$76, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20


$C$DW$T$21	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$21, DW_AT_name("GPACLEAR_REG")
	.dwattr $C$DW$T$21, DW_AT_byte_size(0x01)
$C$DW$77	.dwtag  DW_TAG_member
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_name("all")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$77, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$78	.dwtag  DW_TAG_member
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$78, DW_AT_name("bit")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$78, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$21


$C$DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x01)
$C$DW$79	.dwtag  DW_TAG_member
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$79, DW_AT_name("GPIOA0")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$79, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$79, DW_AT_bit_size(0x01)
	.dwattr $C$DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$79, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$80	.dwtag  DW_TAG_member
	.dwattr $C$DW$80, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$80, DW_AT_name("GPIOA1")
	.dwattr $C$DW$80, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$80, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$80, DW_AT_bit_size(0x01)
	.dwattr $C$DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$80, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$81	.dwtag  DW_TAG_member
	.dwattr $C$DW$81, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$81, DW_AT_name("GPIOA2")
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$81, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$81, DW_AT_bit_size(0x01)
	.dwattr $C$DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$81, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$82	.dwtag  DW_TAG_member
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_name("GPIOA3")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$82, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$82, DW_AT_bit_size(0x01)
	.dwattr $C$DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$82, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$83	.dwtag  DW_TAG_member
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_name("GPIOA4")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$83, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$83, DW_AT_bit_size(0x01)
	.dwattr $C$DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$83, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$84	.dwtag  DW_TAG_member
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$84, DW_AT_name("GPIOA5")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$84, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$84, DW_AT_bit_size(0x01)
	.dwattr $C$DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$84, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$85	.dwtag  DW_TAG_member
	.dwattr $C$DW$85, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$85, DW_AT_name("GPIOA6")
	.dwattr $C$DW$85, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$85, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$85, DW_AT_bit_size(0x01)
	.dwattr $C$DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$85, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$86	.dwtag  DW_TAG_member
	.dwattr $C$DW$86, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$86, DW_AT_name("GPIOA7")
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$86, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$86, DW_AT_bit_size(0x01)
	.dwattr $C$DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$86, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$87	.dwtag  DW_TAG_member
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_name("GPIOA8")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$87, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$87, DW_AT_bit_size(0x01)
	.dwattr $C$DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$87, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$88	.dwtag  DW_TAG_member
	.dwattr $C$DW$88, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$88, DW_AT_name("GPIOA9")
	.dwattr $C$DW$88, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$88, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$88, DW_AT_bit_size(0x01)
	.dwattr $C$DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$88, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$89	.dwtag  DW_TAG_member
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$89, DW_AT_name("GPIOA10")
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$89, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$89, DW_AT_bit_size(0x01)
	.dwattr $C$DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$89, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$90	.dwtag  DW_TAG_member
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_name("GPIOA11")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$90, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$90, DW_AT_bit_size(0x01)
	.dwattr $C$DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$90, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$91	.dwtag  DW_TAG_member
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_name("GPIOA12")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$91, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$91, DW_AT_bit_size(0x01)
	.dwattr $C$DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$91, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$92	.dwtag  DW_TAG_member
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_name("GPIOA13")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$92, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$92, DW_AT_bit_size(0x01)
	.dwattr $C$DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$92, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$93	.dwtag  DW_TAG_member
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$93, DW_AT_name("GPIOA14")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$93, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$93, DW_AT_bit_size(0x01)
	.dwattr $C$DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$93, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$94	.dwtag  DW_TAG_member
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$94, DW_AT_name("GPIOA15")
	.dwattr $C$DW$94, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$94, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$94, DW_AT_bit_size(0x01)
	.dwattr $C$DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$94, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$23, DW_AT_name("GPADAT_REG")
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x01)
$C$DW$95	.dwtag  DW_TAG_member
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$95, DW_AT_name("all")
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$95, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$96	.dwtag  DW_TAG_member
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$96, DW_AT_name("bit")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$96, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23


$C$DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$24, DW_AT_name("GPASET_BITS")
	.dwattr $C$DW$T$24, DW_AT_byte_size(0x01)
$C$DW$97	.dwtag  DW_TAG_member
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_name("GPIOA0")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$97, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$97, DW_AT_bit_size(0x01)
	.dwattr $C$DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$97, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$98	.dwtag  DW_TAG_member
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_name("GPIOA1")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$98, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$98, DW_AT_bit_size(0x01)
	.dwattr $C$DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$98, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$99	.dwtag  DW_TAG_member
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$99, DW_AT_name("GPIOA2")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$99, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$99, DW_AT_bit_size(0x01)
	.dwattr $C$DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$99, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$100	.dwtag  DW_TAG_member
	.dwattr $C$DW$100, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$100, DW_AT_name("GPIOA3")
	.dwattr $C$DW$100, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$100, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$100, DW_AT_bit_size(0x01)
	.dwattr $C$DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$100, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$101	.dwtag  DW_TAG_member
	.dwattr $C$DW$101, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$101, DW_AT_name("GPIOA4")
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$101, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$101, DW_AT_bit_size(0x01)
	.dwattr $C$DW$101, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$101, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$102	.dwtag  DW_TAG_member
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_name("GPIOA5")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$102, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$102, DW_AT_bit_size(0x01)
	.dwattr $C$DW$102, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$102, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$103	.dwtag  DW_TAG_member
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_name("GPIOA6")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$103, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$103, DW_AT_bit_size(0x01)
	.dwattr $C$DW$103, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$103, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$104	.dwtag  DW_TAG_member
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_name("GPIOA7")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$104, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$104, DW_AT_bit_size(0x01)
	.dwattr $C$DW$104, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$104, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$105	.dwtag  DW_TAG_member
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$105, DW_AT_name("GPIOA8")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$105, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$105, DW_AT_bit_size(0x01)
	.dwattr $C$DW$105, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$105, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$106	.dwtag  DW_TAG_member
	.dwattr $C$DW$106, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$106, DW_AT_name("GPIOA9")
	.dwattr $C$DW$106, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$106, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$106, DW_AT_bit_size(0x01)
	.dwattr $C$DW$106, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$106, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$107	.dwtag  DW_TAG_member
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_name("GPIOA10")
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$107, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$107, DW_AT_bit_size(0x01)
	.dwattr $C$DW$107, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$107, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$108	.dwtag  DW_TAG_member
	.dwattr $C$DW$108, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$108, DW_AT_name("GPIOA11")
	.dwattr $C$DW$108, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$108, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$108, DW_AT_bit_size(0x01)
	.dwattr $C$DW$108, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$108, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$109	.dwtag  DW_TAG_member
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_name("GPIOA12")
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$109, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$109, DW_AT_bit_size(0x01)
	.dwattr $C$DW$109, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$109, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$110	.dwtag  DW_TAG_member
	.dwattr $C$DW$110, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$110, DW_AT_name("GPIOA13")
	.dwattr $C$DW$110, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$110, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$110, DW_AT_bit_size(0x01)
	.dwattr $C$DW$110, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$110, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$111	.dwtag  DW_TAG_member
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_name("GPIOA14")
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$111, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$111, DW_AT_bit_size(0x01)
	.dwattr $C$DW$111, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$111, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$112	.dwtag  DW_TAG_member
	.dwattr $C$DW$112, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$112, DW_AT_name("GPIOA15")
	.dwattr $C$DW$112, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$112, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$112, DW_AT_bit_size(0x01)
	.dwattr $C$DW$112, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$112, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$24


$C$DW$T$25	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$25, DW_AT_name("GPASET_REG")
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x01)
$C$DW$113	.dwtag  DW_TAG_member
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_name("all")
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$113, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$113, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$114	.dwtag  DW_TAG_member
	.dwattr $C$DW$114, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$114, DW_AT_name("bit")
	.dwattr $C$DW$114, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$114, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$114, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_name("GPATOGGLE_BITS")
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x01)
$C$DW$115	.dwtag  DW_TAG_member
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$115, DW_AT_name("GPIOA0")
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_GPIOA0")
	.dwattr $C$DW$115, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$115, DW_AT_bit_size(0x01)
	.dwattr $C$DW$115, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$115, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$116	.dwtag  DW_TAG_member
	.dwattr $C$DW$116, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$116, DW_AT_name("GPIOA1")
	.dwattr $C$DW$116, DW_AT_TI_symbol_name("_GPIOA1")
	.dwattr $C$DW$116, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$116, DW_AT_bit_size(0x01)
	.dwattr $C$DW$116, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$116, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$117	.dwtag  DW_TAG_member
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_name("GPIOA2")
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_GPIOA2")
	.dwattr $C$DW$117, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$117, DW_AT_bit_size(0x01)
	.dwattr $C$DW$117, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$117, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$118	.dwtag  DW_TAG_member
	.dwattr $C$DW$118, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$118, DW_AT_name("GPIOA3")
	.dwattr $C$DW$118, DW_AT_TI_symbol_name("_GPIOA3")
	.dwattr $C$DW$118, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$118, DW_AT_bit_size(0x01)
	.dwattr $C$DW$118, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$118, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$119	.dwtag  DW_TAG_member
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_name("GPIOA4")
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_GPIOA4")
	.dwattr $C$DW$119, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$119, DW_AT_bit_size(0x01)
	.dwattr $C$DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$119, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$120	.dwtag  DW_TAG_member
	.dwattr $C$DW$120, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$120, DW_AT_name("GPIOA5")
	.dwattr $C$DW$120, DW_AT_TI_symbol_name("_GPIOA5")
	.dwattr $C$DW$120, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$120, DW_AT_bit_size(0x01)
	.dwattr $C$DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$120, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$121	.dwtag  DW_TAG_member
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_name("GPIOA6")
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_GPIOA6")
	.dwattr $C$DW$121, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$121, DW_AT_bit_size(0x01)
	.dwattr $C$DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$121, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$122	.dwtag  DW_TAG_member
	.dwattr $C$DW$122, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$122, DW_AT_name("GPIOA7")
	.dwattr $C$DW$122, DW_AT_TI_symbol_name("_GPIOA7")
	.dwattr $C$DW$122, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$122, DW_AT_bit_size(0x01)
	.dwattr $C$DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$122, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$123	.dwtag  DW_TAG_member
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_name("GPIOA8")
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_GPIOA8")
	.dwattr $C$DW$123, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$123, DW_AT_bit_size(0x01)
	.dwattr $C$DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$123, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$124	.dwtag  DW_TAG_member
	.dwattr $C$DW$124, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$124, DW_AT_name("GPIOA9")
	.dwattr $C$DW$124, DW_AT_TI_symbol_name("_GPIOA9")
	.dwattr $C$DW$124, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$124, DW_AT_bit_size(0x01)
	.dwattr $C$DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$124, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$125	.dwtag  DW_TAG_member
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$125, DW_AT_name("GPIOA10")
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_GPIOA10")
	.dwattr $C$DW$125, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$125, DW_AT_bit_size(0x01)
	.dwattr $C$DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$125, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$126	.dwtag  DW_TAG_member
	.dwattr $C$DW$126, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$126, DW_AT_name("GPIOA11")
	.dwattr $C$DW$126, DW_AT_TI_symbol_name("_GPIOA11")
	.dwattr $C$DW$126, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$126, DW_AT_bit_size(0x01)
	.dwattr $C$DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$126, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$127	.dwtag  DW_TAG_member
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_name("GPIOA12")
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_GPIOA12")
	.dwattr $C$DW$127, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$127, DW_AT_bit_size(0x01)
	.dwattr $C$DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$127, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$128	.dwtag  DW_TAG_member
	.dwattr $C$DW$128, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$128, DW_AT_name("GPIOA13")
	.dwattr $C$DW$128, DW_AT_TI_symbol_name("_GPIOA13")
	.dwattr $C$DW$128, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$128, DW_AT_bit_size(0x01)
	.dwattr $C$DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$128, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$129	.dwtag  DW_TAG_member
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_name("GPIOA14")
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_GPIOA14")
	.dwattr $C$DW$129, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$129, DW_AT_bit_size(0x01)
	.dwattr $C$DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$129, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$130	.dwtag  DW_TAG_member
	.dwattr $C$DW$130, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$130, DW_AT_name("GPIOA15")
	.dwattr $C$DW$130, DW_AT_TI_symbol_name("_GPIOA15")
	.dwattr $C$DW$130, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$130, DW_AT_bit_size(0x01)
	.dwattr $C$DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$130, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26


$C$DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$27, DW_AT_name("GPATOGGLE_REG")
	.dwattr $C$DW$T$27, DW_AT_byte_size(0x01)
$C$DW$131	.dwtag  DW_TAG_member
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_name("all")
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$131, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$132	.dwtag  DW_TAG_member
	.dwattr $C$DW$132, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$132, DW_AT_name("bit")
	.dwattr $C$DW$132, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$132, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$27


$C$DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$28, DW_AT_name("GPBCLEAR_BITS")
	.dwattr $C$DW$T$28, DW_AT_byte_size(0x01)
$C$DW$133	.dwtag  DW_TAG_member
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_name("GPIOB0")
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$133, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$133, DW_AT_bit_size(0x01)
	.dwattr $C$DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$133, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$134	.dwtag  DW_TAG_member
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_name("GPIOB1")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$134, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$134, DW_AT_bit_size(0x01)
	.dwattr $C$DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$134, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$135	.dwtag  DW_TAG_member
	.dwattr $C$DW$135, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$135, DW_AT_name("GPIOB2")
	.dwattr $C$DW$135, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$135, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$135, DW_AT_bit_size(0x01)
	.dwattr $C$DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$135, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$136	.dwtag  DW_TAG_member
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_name("GPIOB3")
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$136, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$136, DW_AT_bit_size(0x01)
	.dwattr $C$DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$136, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$137	.dwtag  DW_TAG_member
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_name("GPIOB4")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$137, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$137, DW_AT_bit_size(0x01)
	.dwattr $C$DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$137, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$138	.dwtag  DW_TAG_member
	.dwattr $C$DW$138, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$138, DW_AT_name("GPIOB5")
	.dwattr $C$DW$138, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$138, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$138, DW_AT_bit_size(0x01)
	.dwattr $C$DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$138, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$139	.dwtag  DW_TAG_member
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_name("GPIOB6")
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$139, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$139, DW_AT_bit_size(0x01)
	.dwattr $C$DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$139, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$140	.dwtag  DW_TAG_member
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_name("GPIOB7")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$140, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$140, DW_AT_bit_size(0x01)
	.dwattr $C$DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$140, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$141	.dwtag  DW_TAG_member
	.dwattr $C$DW$141, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$141, DW_AT_name("GPIOB8")
	.dwattr $C$DW$141, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$141, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$141, DW_AT_bit_size(0x01)
	.dwattr $C$DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$141, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$142	.dwtag  DW_TAG_member
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_name("GPIOB9")
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$142, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$142, DW_AT_bit_size(0x01)
	.dwattr $C$DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$142, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$143	.dwtag  DW_TAG_member
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_name("GPIOB10")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$143, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$143, DW_AT_bit_size(0x01)
	.dwattr $C$DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$143, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$144	.dwtag  DW_TAG_member
	.dwattr $C$DW$144, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$144, DW_AT_name("GPIOB11")
	.dwattr $C$DW$144, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$144, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$144, DW_AT_bit_size(0x01)
	.dwattr $C$DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$144, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$145	.dwtag  DW_TAG_member
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_name("GPIOB12")
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$145, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$145, DW_AT_bit_size(0x01)
	.dwattr $C$DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$145, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$146	.dwtag  DW_TAG_member
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_name("GPIOB13")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$146, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$146, DW_AT_bit_size(0x01)
	.dwattr $C$DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$146, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$147	.dwtag  DW_TAG_member
	.dwattr $C$DW$147, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$147, DW_AT_name("GPIOB14")
	.dwattr $C$DW$147, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$147, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$147, DW_AT_bit_size(0x01)
	.dwattr $C$DW$147, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$147, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$148	.dwtag  DW_TAG_member
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_name("GPIOB15")
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$148, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$148, DW_AT_bit_size(0x01)
	.dwattr $C$DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$148, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$28


$C$DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$29, DW_AT_name("GPBCLEAR_REG")
	.dwattr $C$DW$T$29, DW_AT_byte_size(0x01)
$C$DW$149	.dwtag  DW_TAG_member
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_name("all")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$149, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$150	.dwtag  DW_TAG_member
	.dwattr $C$DW$150, DW_AT_type(*$C$DW$T$28)
	.dwattr $C$DW$150, DW_AT_name("bit")
	.dwattr $C$DW$150, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$150, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$29


$C$DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$30, DW_AT_name("GPBDAT_BITS")
	.dwattr $C$DW$T$30, DW_AT_byte_size(0x01)
$C$DW$151	.dwtag  DW_TAG_member
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_name("GPIOB0")
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$151, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$151, DW_AT_bit_size(0x01)
	.dwattr $C$DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$151, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$152	.dwtag  DW_TAG_member
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_name("GPIOB1")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$152, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$152, DW_AT_bit_size(0x01)
	.dwattr $C$DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$152, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$153	.dwtag  DW_TAG_member
	.dwattr $C$DW$153, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$153, DW_AT_name("GPIOB2")
	.dwattr $C$DW$153, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$153, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$153, DW_AT_bit_size(0x01)
	.dwattr $C$DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$153, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$154	.dwtag  DW_TAG_member
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_name("GPIOB3")
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$154, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$154, DW_AT_bit_size(0x01)
	.dwattr $C$DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$154, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$155	.dwtag  DW_TAG_member
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_name("GPIOB4")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$155, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$155, DW_AT_bit_size(0x01)
	.dwattr $C$DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$155, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$156	.dwtag  DW_TAG_member
	.dwattr $C$DW$156, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$156, DW_AT_name("GPIOB5")
	.dwattr $C$DW$156, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$156, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$156, DW_AT_bit_size(0x01)
	.dwattr $C$DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$156, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$157	.dwtag  DW_TAG_member
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_name("GPIOB6")
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$157, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$157, DW_AT_bit_size(0x01)
	.dwattr $C$DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$157, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$158	.dwtag  DW_TAG_member
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_name("GPIOB7")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$158, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$158, DW_AT_bit_size(0x01)
	.dwattr $C$DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$158, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$159	.dwtag  DW_TAG_member
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_name("GPIOB8")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$159, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$159, DW_AT_bit_size(0x01)
	.dwattr $C$DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$159, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$160	.dwtag  DW_TAG_member
	.dwattr $C$DW$160, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$160, DW_AT_name("GPIOB9")
	.dwattr $C$DW$160, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$160, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$160, DW_AT_bit_size(0x01)
	.dwattr $C$DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$160, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$161	.dwtag  DW_TAG_member
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_name("GPIOB10")
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$161, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$161, DW_AT_bit_size(0x01)
	.dwattr $C$DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$161, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$162	.dwtag  DW_TAG_member
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_name("GPIOB11")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$162, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$162, DW_AT_bit_size(0x01)
	.dwattr $C$DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$162, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$163	.dwtag  DW_TAG_member
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_name("GPIOB12")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$163, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$163, DW_AT_bit_size(0x01)
	.dwattr $C$DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$163, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$164	.dwtag  DW_TAG_member
	.dwattr $C$DW$164, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$164, DW_AT_name("GPIOB13")
	.dwattr $C$DW$164, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$164, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$164, DW_AT_bit_size(0x01)
	.dwattr $C$DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$164, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$165	.dwtag  DW_TAG_member
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_name("GPIOB14")
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$165, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$165, DW_AT_bit_size(0x01)
	.dwattr $C$DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$165, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$166	.dwtag  DW_TAG_member
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_name("GPIOB15")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$166, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$166, DW_AT_bit_size(0x01)
	.dwattr $C$DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$166, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$30


$C$DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$31, DW_AT_name("GPBDAT_REG")
	.dwattr $C$DW$T$31, DW_AT_byte_size(0x01)
$C$DW$167	.dwtag  DW_TAG_member
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_name("all")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$167, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$168	.dwtag  DW_TAG_member
	.dwattr $C$DW$168, DW_AT_type(*$C$DW$T$30)
	.dwattr $C$DW$168, DW_AT_name("bit")
	.dwattr $C$DW$168, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$168, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$31


$C$DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$32, DW_AT_name("GPBSET_BITS")
	.dwattr $C$DW$T$32, DW_AT_byte_size(0x01)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("GPIOB0")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$169, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$169, DW_AT_bit_size(0x01)
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("GPIOB1")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$170, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$170, DW_AT_bit_size(0x01)
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("GPIOB2")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$171, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$171, DW_AT_bit_size(0x01)
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$172	.dwtag  DW_TAG_member
	.dwattr $C$DW$172, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$172, DW_AT_name("GPIOB3")
	.dwattr $C$DW$172, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$172, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$172, DW_AT_bit_size(0x01)
	.dwattr $C$DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$172, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("GPIOB4")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$173, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$173, DW_AT_bit_size(0x01)
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("GPIOB5")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$174, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$174, DW_AT_bit_size(0x01)
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("GPIOB6")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$175, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$175, DW_AT_bit_size(0x01)
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("GPIOB7")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$176, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$176, DW_AT_bit_size(0x01)
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("GPIOB8")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$177, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$177, DW_AT_bit_size(0x01)
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("GPIOB9")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$178, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$178, DW_AT_bit_size(0x01)
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("GPIOB10")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$179, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$179, DW_AT_bit_size(0x01)
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("GPIOB11")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$180, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$180, DW_AT_bit_size(0x01)
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$181, DW_AT_name("GPIOB12")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$181, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$181, DW_AT_bit_size(0x01)
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$182	.dwtag  DW_TAG_member
	.dwattr $C$DW$182, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$182, DW_AT_name("GPIOB13")
	.dwattr $C$DW$182, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$182, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$182, DW_AT_bit_size(0x01)
	.dwattr $C$DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$182, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("GPIOB14")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$183, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$183, DW_AT_bit_size(0x01)
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("GPIOB15")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$184, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$184, DW_AT_bit_size(0x01)
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$32


$C$DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$33, DW_AT_name("GPBSET_REG")
	.dwattr $C$DW$T$33, DW_AT_byte_size(0x01)
$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("all")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$186, DW_AT_name("bit")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$33


$C$DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$34, DW_AT_name("GPBTOGGLE_BITS")
	.dwattr $C$DW$T$34, DW_AT_byte_size(0x01)
$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("GPIOB0")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_GPIOB0")
	.dwattr $C$DW$187, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$187, DW_AT_bit_size(0x01)
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$188, DW_AT_name("GPIOB1")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_GPIOB1")
	.dwattr $C$DW$188, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$188, DW_AT_bit_size(0x01)
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$189, DW_AT_name("GPIOB2")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_GPIOB2")
	.dwattr $C$DW$189, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$189, DW_AT_bit_size(0x01)
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("GPIOB3")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_GPIOB3")
	.dwattr $C$DW$190, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$190, DW_AT_bit_size(0x01)
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$191, DW_AT_name("GPIOB4")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_GPIOB4")
	.dwattr $C$DW$191, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$191, DW_AT_bit_size(0x01)
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$192	.dwtag  DW_TAG_member
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$192, DW_AT_name("GPIOB5")
	.dwattr $C$DW$192, DW_AT_TI_symbol_name("_GPIOB5")
	.dwattr $C$DW$192, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$192, DW_AT_bit_size(0x01)
	.dwattr $C$DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$192, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$193	.dwtag  DW_TAG_member
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$193, DW_AT_name("GPIOB6")
	.dwattr $C$DW$193, DW_AT_TI_symbol_name("_GPIOB6")
	.dwattr $C$DW$193, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$193, DW_AT_bit_size(0x01)
	.dwattr $C$DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$193, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$194	.dwtag  DW_TAG_member
	.dwattr $C$DW$194, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$194, DW_AT_name("GPIOB7")
	.dwattr $C$DW$194, DW_AT_TI_symbol_name("_GPIOB7")
	.dwattr $C$DW$194, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$194, DW_AT_bit_size(0x01)
	.dwattr $C$DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$194, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$195	.dwtag  DW_TAG_member
	.dwattr $C$DW$195, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$195, DW_AT_name("GPIOB8")
	.dwattr $C$DW$195, DW_AT_TI_symbol_name("_GPIOB8")
	.dwattr $C$DW$195, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$195, DW_AT_bit_size(0x01)
	.dwattr $C$DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$195, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$196	.dwtag  DW_TAG_member
	.dwattr $C$DW$196, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$196, DW_AT_name("GPIOB9")
	.dwattr $C$DW$196, DW_AT_TI_symbol_name("_GPIOB9")
	.dwattr $C$DW$196, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$196, DW_AT_bit_size(0x01)
	.dwattr $C$DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$196, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$197	.dwtag  DW_TAG_member
	.dwattr $C$DW$197, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$197, DW_AT_name("GPIOB10")
	.dwattr $C$DW$197, DW_AT_TI_symbol_name("_GPIOB10")
	.dwattr $C$DW$197, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$197, DW_AT_bit_size(0x01)
	.dwattr $C$DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$197, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$198	.dwtag  DW_TAG_member
	.dwattr $C$DW$198, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$198, DW_AT_name("GPIOB11")
	.dwattr $C$DW$198, DW_AT_TI_symbol_name("_GPIOB11")
	.dwattr $C$DW$198, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$198, DW_AT_bit_size(0x01)
	.dwattr $C$DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$198, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$199	.dwtag  DW_TAG_member
	.dwattr $C$DW$199, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$199, DW_AT_name("GPIOB12")
	.dwattr $C$DW$199, DW_AT_TI_symbol_name("_GPIOB12")
	.dwattr $C$DW$199, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$199, DW_AT_bit_size(0x01)
	.dwattr $C$DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$199, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$200	.dwtag  DW_TAG_member
	.dwattr $C$DW$200, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$200, DW_AT_name("GPIOB13")
	.dwattr $C$DW$200, DW_AT_TI_symbol_name("_GPIOB13")
	.dwattr $C$DW$200, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$200, DW_AT_bit_size(0x01)
	.dwattr $C$DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$200, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$201	.dwtag  DW_TAG_member
	.dwattr $C$DW$201, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$201, DW_AT_name("GPIOB14")
	.dwattr $C$DW$201, DW_AT_TI_symbol_name("_GPIOB14")
	.dwattr $C$DW$201, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$201, DW_AT_bit_size(0x01)
	.dwattr $C$DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$201, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$202	.dwtag  DW_TAG_member
	.dwattr $C$DW$202, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$202, DW_AT_name("GPIOB15")
	.dwattr $C$DW$202, DW_AT_TI_symbol_name("_GPIOB15")
	.dwattr $C$DW$202, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$202, DW_AT_bit_size(0x01)
	.dwattr $C$DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$202, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$34


$C$DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$35, DW_AT_name("GPBTOGGLE_REG")
	.dwattr $C$DW$T$35, DW_AT_byte_size(0x01)
$C$DW$203	.dwtag  DW_TAG_member
	.dwattr $C$DW$203, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$203, DW_AT_name("all")
	.dwattr $C$DW$203, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$203, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$204	.dwtag  DW_TAG_member
	.dwattr $C$DW$204, DW_AT_type(*$C$DW$T$34)
	.dwattr $C$DW$204, DW_AT_name("bit")
	.dwattr $C$DW$204, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$204, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$35


$C$DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$36, DW_AT_name("GPDCLEAR_BITS")
	.dwattr $C$DW$T$36, DW_AT_byte_size(0x01)
$C$DW$205	.dwtag  DW_TAG_member
	.dwattr $C$DW$205, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$205, DW_AT_name("GPIOD0")
	.dwattr $C$DW$205, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$205, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$205, DW_AT_bit_size(0x01)
	.dwattr $C$DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$205, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$206	.dwtag  DW_TAG_member
	.dwattr $C$DW$206, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$206, DW_AT_name("GPIOD1")
	.dwattr $C$DW$206, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$206, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$206, DW_AT_bit_size(0x01)
	.dwattr $C$DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$206, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$207	.dwtag  DW_TAG_member
	.dwattr $C$DW$207, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$207, DW_AT_name("rsvd1")
	.dwattr $C$DW$207, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$207, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$207, DW_AT_bit_size(0x03)
	.dwattr $C$DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$207, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$208	.dwtag  DW_TAG_member
	.dwattr $C$DW$208, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$208, DW_AT_name("GPIOD5")
	.dwattr $C$DW$208, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$208, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$208, DW_AT_bit_size(0x01)
	.dwattr $C$DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$208, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$209	.dwtag  DW_TAG_member
	.dwattr $C$DW$209, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$209, DW_AT_name("GPIOD6")
	.dwattr $C$DW$209, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$209, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$209, DW_AT_bit_size(0x01)
	.dwattr $C$DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$209, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$210	.dwtag  DW_TAG_member
	.dwattr $C$DW$210, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$210, DW_AT_name("rsvd2")
	.dwattr $C$DW$210, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$210, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$210, DW_AT_bit_size(0x09)
	.dwattr $C$DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$210, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$36


$C$DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$37, DW_AT_name("GPDCLEAR_REG")
	.dwattr $C$DW$T$37, DW_AT_byte_size(0x01)
$C$DW$211	.dwtag  DW_TAG_member
	.dwattr $C$DW$211, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$211, DW_AT_name("all")
	.dwattr $C$DW$211, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$211, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$212	.dwtag  DW_TAG_member
	.dwattr $C$DW$212, DW_AT_type(*$C$DW$T$36)
	.dwattr $C$DW$212, DW_AT_name("bit")
	.dwattr $C$DW$212, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$212, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$37


$C$DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$38, DW_AT_name("GPDDAT_BITS")
	.dwattr $C$DW$T$38, DW_AT_byte_size(0x01)
$C$DW$213	.dwtag  DW_TAG_member
	.dwattr $C$DW$213, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$213, DW_AT_name("GPIOD0")
	.dwattr $C$DW$213, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$213, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$213, DW_AT_bit_size(0x01)
	.dwattr $C$DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$213, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$214	.dwtag  DW_TAG_member
	.dwattr $C$DW$214, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$214, DW_AT_name("GPIOD1")
	.dwattr $C$DW$214, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$214, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$214, DW_AT_bit_size(0x01)
	.dwattr $C$DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$214, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$215	.dwtag  DW_TAG_member
	.dwattr $C$DW$215, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$215, DW_AT_name("rsvd1")
	.dwattr $C$DW$215, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$215, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$215, DW_AT_bit_size(0x03)
	.dwattr $C$DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$215, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$216	.dwtag  DW_TAG_member
	.dwattr $C$DW$216, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$216, DW_AT_name("GPIOD5")
	.dwattr $C$DW$216, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$216, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$216, DW_AT_bit_size(0x01)
	.dwattr $C$DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$216, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$217	.dwtag  DW_TAG_member
	.dwattr $C$DW$217, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$217, DW_AT_name("GPIOD6")
	.dwattr $C$DW$217, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$217, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$217, DW_AT_bit_size(0x01)
	.dwattr $C$DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$217, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$218	.dwtag  DW_TAG_member
	.dwattr $C$DW$218, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$218, DW_AT_name("rsvd2")
	.dwattr $C$DW$218, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$218, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$218, DW_AT_bit_size(0x09)
	.dwattr $C$DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$218, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$38


$C$DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$39, DW_AT_name("GPDDAT_REG")
	.dwattr $C$DW$T$39, DW_AT_byte_size(0x01)
$C$DW$219	.dwtag  DW_TAG_member
	.dwattr $C$DW$219, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$219, DW_AT_name("all")
	.dwattr $C$DW$219, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$219, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$220	.dwtag  DW_TAG_member
	.dwattr $C$DW$220, DW_AT_type(*$C$DW$T$38)
	.dwattr $C$DW$220, DW_AT_name("bit")
	.dwattr $C$DW$220, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$220, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$39


$C$DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$40, DW_AT_name("GPDSET_BITS")
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x01)
$C$DW$221	.dwtag  DW_TAG_member
	.dwattr $C$DW$221, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$221, DW_AT_name("GPIOD0")
	.dwattr $C$DW$221, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$221, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$221, DW_AT_bit_size(0x01)
	.dwattr $C$DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$221, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$222	.dwtag  DW_TAG_member
	.dwattr $C$DW$222, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$222, DW_AT_name("GPIOD1")
	.dwattr $C$DW$222, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$222, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$222, DW_AT_bit_size(0x01)
	.dwattr $C$DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$222, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$223	.dwtag  DW_TAG_member
	.dwattr $C$DW$223, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$223, DW_AT_name("rsvd1")
	.dwattr $C$DW$223, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$223, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$223, DW_AT_bit_size(0x03)
	.dwattr $C$DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$223, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$224	.dwtag  DW_TAG_member
	.dwattr $C$DW$224, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$224, DW_AT_name("GPIOD5")
	.dwattr $C$DW$224, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$224, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$224, DW_AT_bit_size(0x01)
	.dwattr $C$DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$224, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$225	.dwtag  DW_TAG_member
	.dwattr $C$DW$225, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$225, DW_AT_name("GPIOD6")
	.dwattr $C$DW$225, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$225, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$225, DW_AT_bit_size(0x01)
	.dwattr $C$DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$225, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$226	.dwtag  DW_TAG_member
	.dwattr $C$DW$226, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$226, DW_AT_name("rsvd2")
	.dwattr $C$DW$226, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$226, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$226, DW_AT_bit_size(0x09)
	.dwattr $C$DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$226, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$40


$C$DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$41, DW_AT_name("GPDSET_REG")
	.dwattr $C$DW$T$41, DW_AT_byte_size(0x01)
$C$DW$227	.dwtag  DW_TAG_member
	.dwattr $C$DW$227, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$227, DW_AT_name("all")
	.dwattr $C$DW$227, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$227, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$228	.dwtag  DW_TAG_member
	.dwattr $C$DW$228, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$228, DW_AT_name("bit")
	.dwattr $C$DW$228, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$228, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$41


$C$DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$42, DW_AT_name("GPDTOGGLE_BITS")
	.dwattr $C$DW$T$42, DW_AT_byte_size(0x01)
$C$DW$229	.dwtag  DW_TAG_member
	.dwattr $C$DW$229, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$229, DW_AT_name("GPIOD0")
	.dwattr $C$DW$229, DW_AT_TI_symbol_name("_GPIOD0")
	.dwattr $C$DW$229, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$229, DW_AT_bit_size(0x01)
	.dwattr $C$DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$229, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$230	.dwtag  DW_TAG_member
	.dwattr $C$DW$230, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$230, DW_AT_name("GPIOD1")
	.dwattr $C$DW$230, DW_AT_TI_symbol_name("_GPIOD1")
	.dwattr $C$DW$230, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$230, DW_AT_bit_size(0x01)
	.dwattr $C$DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$230, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$231	.dwtag  DW_TAG_member
	.dwattr $C$DW$231, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$231, DW_AT_name("rsvd1")
	.dwattr $C$DW$231, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$231, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$231, DW_AT_bit_size(0x03)
	.dwattr $C$DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$231, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$232	.dwtag  DW_TAG_member
	.dwattr $C$DW$232, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$232, DW_AT_name("GPIOD5")
	.dwattr $C$DW$232, DW_AT_TI_symbol_name("_GPIOD5")
	.dwattr $C$DW$232, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$232, DW_AT_bit_size(0x01)
	.dwattr $C$DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$232, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$233	.dwtag  DW_TAG_member
	.dwattr $C$DW$233, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$233, DW_AT_name("GPIOD6")
	.dwattr $C$DW$233, DW_AT_TI_symbol_name("_GPIOD6")
	.dwattr $C$DW$233, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$233, DW_AT_bit_size(0x01)
	.dwattr $C$DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$233, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$234	.dwtag  DW_TAG_member
	.dwattr $C$DW$234, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$234, DW_AT_name("rsvd2")
	.dwattr $C$DW$234, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$234, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$234, DW_AT_bit_size(0x09)
	.dwattr $C$DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$234, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$42


$C$DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$43, DW_AT_name("GPDTOGGLE_REG")
	.dwattr $C$DW$T$43, DW_AT_byte_size(0x01)
$C$DW$235	.dwtag  DW_TAG_member
	.dwattr $C$DW$235, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$235, DW_AT_name("all")
	.dwattr $C$DW$235, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$235, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$236	.dwtag  DW_TAG_member
	.dwattr $C$DW$236, DW_AT_type(*$C$DW$T$42)
	.dwattr $C$DW$236, DW_AT_name("bit")
	.dwattr $C$DW$236, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$236, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$43


$C$DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$44, DW_AT_name("GPECLEAR_BITS")
	.dwattr $C$DW$T$44, DW_AT_byte_size(0x01)
$C$DW$237	.dwtag  DW_TAG_member
	.dwattr $C$DW$237, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$237, DW_AT_name("GPIOE0")
	.dwattr $C$DW$237, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$237, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$237, DW_AT_bit_size(0x01)
	.dwattr $C$DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$237, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$238	.dwtag  DW_TAG_member
	.dwattr $C$DW$238, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$238, DW_AT_name("GPIOE1")
	.dwattr $C$DW$238, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$238, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$238, DW_AT_bit_size(0x01)
	.dwattr $C$DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$238, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$239	.dwtag  DW_TAG_member
	.dwattr $C$DW$239, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$239, DW_AT_name("GPIOE2")
	.dwattr $C$DW$239, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$239, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$239, DW_AT_bit_size(0x01)
	.dwattr $C$DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$239, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$240	.dwtag  DW_TAG_member
	.dwattr $C$DW$240, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$240, DW_AT_name("rsvd1")
	.dwattr $C$DW$240, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$240, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$240, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$240, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$44


$C$DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$45, DW_AT_name("GPECLEAR_REG")
	.dwattr $C$DW$T$45, DW_AT_byte_size(0x01)
$C$DW$241	.dwtag  DW_TAG_member
	.dwattr $C$DW$241, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$241, DW_AT_name("all")
	.dwattr $C$DW$241, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$241, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$242	.dwtag  DW_TAG_member
	.dwattr $C$DW$242, DW_AT_type(*$C$DW$T$44)
	.dwattr $C$DW$242, DW_AT_name("bit")
	.dwattr $C$DW$242, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$242, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$45


$C$DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$46, DW_AT_name("GPEDAT_BITS")
	.dwattr $C$DW$T$46, DW_AT_byte_size(0x01)
$C$DW$243	.dwtag  DW_TAG_member
	.dwattr $C$DW$243, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$243, DW_AT_name("GPIOE0")
	.dwattr $C$DW$243, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$243, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$243, DW_AT_bit_size(0x01)
	.dwattr $C$DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$243, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$244	.dwtag  DW_TAG_member
	.dwattr $C$DW$244, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$244, DW_AT_name("GPIOE1")
	.dwattr $C$DW$244, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$244, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$244, DW_AT_bit_size(0x01)
	.dwattr $C$DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$244, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$245	.dwtag  DW_TAG_member
	.dwattr $C$DW$245, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$245, DW_AT_name("GPIOE2")
	.dwattr $C$DW$245, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$245, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$245, DW_AT_bit_size(0x01)
	.dwattr $C$DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$245, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$246	.dwtag  DW_TAG_member
	.dwattr $C$DW$246, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$246, DW_AT_name("rsvd1")
	.dwattr $C$DW$246, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$246, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$246, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$246, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$46


$C$DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$47, DW_AT_name("GPEDAT_REG")
	.dwattr $C$DW$T$47, DW_AT_byte_size(0x01)
$C$DW$247	.dwtag  DW_TAG_member
	.dwattr $C$DW$247, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$247, DW_AT_name("all")
	.dwattr $C$DW$247, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$247, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$248	.dwtag  DW_TAG_member
	.dwattr $C$DW$248, DW_AT_type(*$C$DW$T$46)
	.dwattr $C$DW$248, DW_AT_name("bit")
	.dwattr $C$DW$248, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$248, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$47


$C$DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$48, DW_AT_name("GPESET_BITS")
	.dwattr $C$DW$T$48, DW_AT_byte_size(0x01)
$C$DW$249	.dwtag  DW_TAG_member
	.dwattr $C$DW$249, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$249, DW_AT_name("GPIOE0")
	.dwattr $C$DW$249, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$249, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$249, DW_AT_bit_size(0x01)
	.dwattr $C$DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$249, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$250	.dwtag  DW_TAG_member
	.dwattr $C$DW$250, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$250, DW_AT_name("GPIOE1")
	.dwattr $C$DW$250, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$250, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$250, DW_AT_bit_size(0x01)
	.dwattr $C$DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$250, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$251	.dwtag  DW_TAG_member
	.dwattr $C$DW$251, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$251, DW_AT_name("GPIOE2")
	.dwattr $C$DW$251, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$251, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$251, DW_AT_bit_size(0x01)
	.dwattr $C$DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$251, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$252	.dwtag  DW_TAG_member
	.dwattr $C$DW$252, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$252, DW_AT_name("rsvd1")
	.dwattr $C$DW$252, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$252, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$252, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$252, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$48


$C$DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$49, DW_AT_name("GPESET_REG")
	.dwattr $C$DW$T$49, DW_AT_byte_size(0x01)
$C$DW$253	.dwtag  DW_TAG_member
	.dwattr $C$DW$253, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$253, DW_AT_name("all")
	.dwattr $C$DW$253, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$253, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$254	.dwtag  DW_TAG_member
	.dwattr $C$DW$254, DW_AT_type(*$C$DW$T$48)
	.dwattr $C$DW$254, DW_AT_name("bit")
	.dwattr $C$DW$254, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$254, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$49


$C$DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$50, DW_AT_name("GPETOGGLE_BITS")
	.dwattr $C$DW$T$50, DW_AT_byte_size(0x01)
$C$DW$255	.dwtag  DW_TAG_member
	.dwattr $C$DW$255, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$255, DW_AT_name("GPIOE0")
	.dwattr $C$DW$255, DW_AT_TI_symbol_name("_GPIOE0")
	.dwattr $C$DW$255, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$255, DW_AT_bit_size(0x01)
	.dwattr $C$DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$255, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$256	.dwtag  DW_TAG_member
	.dwattr $C$DW$256, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$256, DW_AT_name("GPIOE1")
	.dwattr $C$DW$256, DW_AT_TI_symbol_name("_GPIOE1")
	.dwattr $C$DW$256, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$256, DW_AT_bit_size(0x01)
	.dwattr $C$DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$256, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$257	.dwtag  DW_TAG_member
	.dwattr $C$DW$257, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$257, DW_AT_name("GPIOE2")
	.dwattr $C$DW$257, DW_AT_TI_symbol_name("_GPIOE2")
	.dwattr $C$DW$257, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$257, DW_AT_bit_size(0x01)
	.dwattr $C$DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$257, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$258	.dwtag  DW_TAG_member
	.dwattr $C$DW$258, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$258, DW_AT_name("rsvd1")
	.dwattr $C$DW$258, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$258, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$258, DW_AT_bit_size(0x0c)
	.dwattr $C$DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$258, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$50


$C$DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$51, DW_AT_name("GPETOGGLE_REG")
	.dwattr $C$DW$T$51, DW_AT_byte_size(0x01)
$C$DW$259	.dwtag  DW_TAG_member
	.dwattr $C$DW$259, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$259, DW_AT_name("all")
	.dwattr $C$DW$259, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$259, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$260	.dwtag  DW_TAG_member
	.dwattr $C$DW$260, DW_AT_type(*$C$DW$T$50)
	.dwattr $C$DW$260, DW_AT_name("bit")
	.dwattr $C$DW$260, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$260, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$51


$C$DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$52, DW_AT_name("GPFCLEAR_BITS")
	.dwattr $C$DW$T$52, DW_AT_byte_size(0x01)
$C$DW$261	.dwtag  DW_TAG_member
	.dwattr $C$DW$261, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$261, DW_AT_name("GPIOF0")
	.dwattr $C$DW$261, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$261, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$261, DW_AT_bit_size(0x01)
	.dwattr $C$DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$261, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$262	.dwtag  DW_TAG_member
	.dwattr $C$DW$262, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$262, DW_AT_name("GPIOF1")
	.dwattr $C$DW$262, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$262, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$262, DW_AT_bit_size(0x01)
	.dwattr $C$DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$262, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$263	.dwtag  DW_TAG_member
	.dwattr $C$DW$263, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$263, DW_AT_name("GPIOF2")
	.dwattr $C$DW$263, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$263, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$263, DW_AT_bit_size(0x01)
	.dwattr $C$DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$263, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$264	.dwtag  DW_TAG_member
	.dwattr $C$DW$264, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$264, DW_AT_name("GPIOF3")
	.dwattr $C$DW$264, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$264, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$264, DW_AT_bit_size(0x01)
	.dwattr $C$DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$264, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$265	.dwtag  DW_TAG_member
	.dwattr $C$DW$265, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$265, DW_AT_name("GPIOF4")
	.dwattr $C$DW$265, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$265, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$265, DW_AT_bit_size(0x01)
	.dwattr $C$DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$265, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$266	.dwtag  DW_TAG_member
	.dwattr $C$DW$266, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$266, DW_AT_name("GPIOF5")
	.dwattr $C$DW$266, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$266, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$266, DW_AT_bit_size(0x01)
	.dwattr $C$DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$266, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$267	.dwtag  DW_TAG_member
	.dwattr $C$DW$267, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$267, DW_AT_name("GPIOF6")
	.dwattr $C$DW$267, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$267, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$267, DW_AT_bit_size(0x01)
	.dwattr $C$DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$267, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$268	.dwtag  DW_TAG_member
	.dwattr $C$DW$268, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$268, DW_AT_name("GPIOF7")
	.dwattr $C$DW$268, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$268, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$268, DW_AT_bit_size(0x01)
	.dwattr $C$DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$268, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$269	.dwtag  DW_TAG_member
	.dwattr $C$DW$269, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$269, DW_AT_name("GPIOF8")
	.dwattr $C$DW$269, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$269, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$269, DW_AT_bit_size(0x01)
	.dwattr $C$DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$269, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$270	.dwtag  DW_TAG_member
	.dwattr $C$DW$270, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$270, DW_AT_name("GPIOF9")
	.dwattr $C$DW$270, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$270, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$270, DW_AT_bit_size(0x01)
	.dwattr $C$DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$270, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$271	.dwtag  DW_TAG_member
	.dwattr $C$DW$271, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$271, DW_AT_name("GPIOF10")
	.dwattr $C$DW$271, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$271, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$271, DW_AT_bit_size(0x01)
	.dwattr $C$DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$271, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$272	.dwtag  DW_TAG_member
	.dwattr $C$DW$272, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$272, DW_AT_name("GPIOF11")
	.dwattr $C$DW$272, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$272, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$272, DW_AT_bit_size(0x01)
	.dwattr $C$DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$272, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$273	.dwtag  DW_TAG_member
	.dwattr $C$DW$273, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$273, DW_AT_name("GPIOF12")
	.dwattr $C$DW$273, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$273, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$273, DW_AT_bit_size(0x01)
	.dwattr $C$DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$273, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$274	.dwtag  DW_TAG_member
	.dwattr $C$DW$274, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$274, DW_AT_name("GPIOF13")
	.dwattr $C$DW$274, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$274, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$274, DW_AT_bit_size(0x01)
	.dwattr $C$DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$274, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$275	.dwtag  DW_TAG_member
	.dwattr $C$DW$275, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$275, DW_AT_name("GPIOF14")
	.dwattr $C$DW$275, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$275, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$275, DW_AT_bit_size(0x01)
	.dwattr $C$DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$275, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$276	.dwtag  DW_TAG_member
	.dwattr $C$DW$276, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$276, DW_AT_name("GPIOF15")
	.dwattr $C$DW$276, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$276, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$276, DW_AT_bit_size(0x01)
	.dwattr $C$DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$276, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$53, DW_AT_name("GPFCLEAR_REG")
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x01)
$C$DW$277	.dwtag  DW_TAG_member
	.dwattr $C$DW$277, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$277, DW_AT_name("all")
	.dwattr $C$DW$277, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$277, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$278	.dwtag  DW_TAG_member
	.dwattr $C$DW$278, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$278, DW_AT_name("bit")
	.dwattr $C$DW$278, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$278, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$53


$C$DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$54, DW_AT_name("GPFDAT_BITS")
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x01)
$C$DW$279	.dwtag  DW_TAG_member
	.dwattr $C$DW$279, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$279, DW_AT_name("GPIOF0")
	.dwattr $C$DW$279, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$279, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$279, DW_AT_bit_size(0x01)
	.dwattr $C$DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$279, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$280	.dwtag  DW_TAG_member
	.dwattr $C$DW$280, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$280, DW_AT_name("GPIOF1")
	.dwattr $C$DW$280, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$280, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$280, DW_AT_bit_size(0x01)
	.dwattr $C$DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$280, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$281	.dwtag  DW_TAG_member
	.dwattr $C$DW$281, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$281, DW_AT_name("GPIOF2")
	.dwattr $C$DW$281, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$281, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$281, DW_AT_bit_size(0x01)
	.dwattr $C$DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$281, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$282	.dwtag  DW_TAG_member
	.dwattr $C$DW$282, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$282, DW_AT_name("GPIOF3")
	.dwattr $C$DW$282, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$282, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$282, DW_AT_bit_size(0x01)
	.dwattr $C$DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$282, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$283	.dwtag  DW_TAG_member
	.dwattr $C$DW$283, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$283, DW_AT_name("GPIOF4")
	.dwattr $C$DW$283, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$283, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$283, DW_AT_bit_size(0x01)
	.dwattr $C$DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$283, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$284	.dwtag  DW_TAG_member
	.dwattr $C$DW$284, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$284, DW_AT_name("GPIOF5")
	.dwattr $C$DW$284, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$284, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$284, DW_AT_bit_size(0x01)
	.dwattr $C$DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$284, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$285	.dwtag  DW_TAG_member
	.dwattr $C$DW$285, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$285, DW_AT_name("GPIOF6")
	.dwattr $C$DW$285, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$285, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$285, DW_AT_bit_size(0x01)
	.dwattr $C$DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$285, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$286	.dwtag  DW_TAG_member
	.dwattr $C$DW$286, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$286, DW_AT_name("GPIOF7")
	.dwattr $C$DW$286, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$286, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$286, DW_AT_bit_size(0x01)
	.dwattr $C$DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$286, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$287	.dwtag  DW_TAG_member
	.dwattr $C$DW$287, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$287, DW_AT_name("GPIOF8")
	.dwattr $C$DW$287, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$287, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$287, DW_AT_bit_size(0x01)
	.dwattr $C$DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$287, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$288	.dwtag  DW_TAG_member
	.dwattr $C$DW$288, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$288, DW_AT_name("GPIOF9")
	.dwattr $C$DW$288, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$288, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$288, DW_AT_bit_size(0x01)
	.dwattr $C$DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$288, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$289	.dwtag  DW_TAG_member
	.dwattr $C$DW$289, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$289, DW_AT_name("GPIOF10")
	.dwattr $C$DW$289, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$289, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$289, DW_AT_bit_size(0x01)
	.dwattr $C$DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$289, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$290	.dwtag  DW_TAG_member
	.dwattr $C$DW$290, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$290, DW_AT_name("GPIOF11")
	.dwattr $C$DW$290, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$290, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$290, DW_AT_bit_size(0x01)
	.dwattr $C$DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$290, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$291	.dwtag  DW_TAG_member
	.dwattr $C$DW$291, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$291, DW_AT_name("GPIOF12")
	.dwattr $C$DW$291, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$291, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$291, DW_AT_bit_size(0x01)
	.dwattr $C$DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$291, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$292	.dwtag  DW_TAG_member
	.dwattr $C$DW$292, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$292, DW_AT_name("GPIOF13")
	.dwattr $C$DW$292, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$292, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$292, DW_AT_bit_size(0x01)
	.dwattr $C$DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$292, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$293	.dwtag  DW_TAG_member
	.dwattr $C$DW$293, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$293, DW_AT_name("GPIOF14")
	.dwattr $C$DW$293, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$293, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$293, DW_AT_bit_size(0x01)
	.dwattr $C$DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$293, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$294	.dwtag  DW_TAG_member
	.dwattr $C$DW$294, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$294, DW_AT_name("GPIOF15")
	.dwattr $C$DW$294, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$294, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$294, DW_AT_bit_size(0x01)
	.dwattr $C$DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$294, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$55, DW_AT_name("GPFDAT_REG")
	.dwattr $C$DW$T$55, DW_AT_byte_size(0x01)
$C$DW$295	.dwtag  DW_TAG_member
	.dwattr $C$DW$295, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$295, DW_AT_name("all")
	.dwattr $C$DW$295, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$295, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$296	.dwtag  DW_TAG_member
	.dwattr $C$DW$296, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$296, DW_AT_name("bit")
	.dwattr $C$DW$296, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$296, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$55


$C$DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$56, DW_AT_name("GPFSET_BITS")
	.dwattr $C$DW$T$56, DW_AT_byte_size(0x01)
$C$DW$297	.dwtag  DW_TAG_member
	.dwattr $C$DW$297, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$297, DW_AT_name("GPIOF0")
	.dwattr $C$DW$297, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$297, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$297, DW_AT_bit_size(0x01)
	.dwattr $C$DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$297, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$298	.dwtag  DW_TAG_member
	.dwattr $C$DW$298, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$298, DW_AT_name("GPIOF1")
	.dwattr $C$DW$298, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$298, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$298, DW_AT_bit_size(0x01)
	.dwattr $C$DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$298, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$299	.dwtag  DW_TAG_member
	.dwattr $C$DW$299, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$299, DW_AT_name("GPIOF2")
	.dwattr $C$DW$299, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$299, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$299, DW_AT_bit_size(0x01)
	.dwattr $C$DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$299, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$300	.dwtag  DW_TAG_member
	.dwattr $C$DW$300, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$300, DW_AT_name("GPIOF3")
	.dwattr $C$DW$300, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$300, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$300, DW_AT_bit_size(0x01)
	.dwattr $C$DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$300, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$301	.dwtag  DW_TAG_member
	.dwattr $C$DW$301, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$301, DW_AT_name("GPIOF4")
	.dwattr $C$DW$301, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$301, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$301, DW_AT_bit_size(0x01)
	.dwattr $C$DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$301, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$302	.dwtag  DW_TAG_member
	.dwattr $C$DW$302, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$302, DW_AT_name("GPIOF5")
	.dwattr $C$DW$302, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$302, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$302, DW_AT_bit_size(0x01)
	.dwattr $C$DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$302, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$303	.dwtag  DW_TAG_member
	.dwattr $C$DW$303, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$303, DW_AT_name("GPIOF6")
	.dwattr $C$DW$303, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$303, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$303, DW_AT_bit_size(0x01)
	.dwattr $C$DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$303, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$304	.dwtag  DW_TAG_member
	.dwattr $C$DW$304, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$304, DW_AT_name("GPIOF7")
	.dwattr $C$DW$304, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$304, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$304, DW_AT_bit_size(0x01)
	.dwattr $C$DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$304, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$305	.dwtag  DW_TAG_member
	.dwattr $C$DW$305, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$305, DW_AT_name("GPIOF8")
	.dwattr $C$DW$305, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$305, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$305, DW_AT_bit_size(0x01)
	.dwattr $C$DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$305, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$306	.dwtag  DW_TAG_member
	.dwattr $C$DW$306, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$306, DW_AT_name("GPIOF9")
	.dwattr $C$DW$306, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$306, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$306, DW_AT_bit_size(0x01)
	.dwattr $C$DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$306, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$307	.dwtag  DW_TAG_member
	.dwattr $C$DW$307, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$307, DW_AT_name("GPIOF10")
	.dwattr $C$DW$307, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$307, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$307, DW_AT_bit_size(0x01)
	.dwattr $C$DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$307, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$308	.dwtag  DW_TAG_member
	.dwattr $C$DW$308, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$308, DW_AT_name("GPIOF11")
	.dwattr $C$DW$308, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$308, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$308, DW_AT_bit_size(0x01)
	.dwattr $C$DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$308, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$309	.dwtag  DW_TAG_member
	.dwattr $C$DW$309, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$309, DW_AT_name("GPIOF12")
	.dwattr $C$DW$309, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$309, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$309, DW_AT_bit_size(0x01)
	.dwattr $C$DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$309, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$310	.dwtag  DW_TAG_member
	.dwattr $C$DW$310, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$310, DW_AT_name("GPIOF13")
	.dwattr $C$DW$310, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$310, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$310, DW_AT_bit_size(0x01)
	.dwattr $C$DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$310, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$311	.dwtag  DW_TAG_member
	.dwattr $C$DW$311, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$311, DW_AT_name("GPIOF14")
	.dwattr $C$DW$311, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$311, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$311, DW_AT_bit_size(0x01)
	.dwattr $C$DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$311, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$312	.dwtag  DW_TAG_member
	.dwattr $C$DW$312, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$312, DW_AT_name("GPIOF15")
	.dwattr $C$DW$312, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$312, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$312, DW_AT_bit_size(0x01)
	.dwattr $C$DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$312, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$56


$C$DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$57, DW_AT_name("GPFSET_REG")
	.dwattr $C$DW$T$57, DW_AT_byte_size(0x01)
$C$DW$313	.dwtag  DW_TAG_member
	.dwattr $C$DW$313, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$313, DW_AT_name("all")
	.dwattr $C$DW$313, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$313, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$314	.dwtag  DW_TAG_member
	.dwattr $C$DW$314, DW_AT_type(*$C$DW$T$56)
	.dwattr $C$DW$314, DW_AT_name("bit")
	.dwattr $C$DW$314, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$314, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$57


$C$DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$58, DW_AT_name("GPFTOGGLE_BITS")
	.dwattr $C$DW$T$58, DW_AT_byte_size(0x01)
$C$DW$315	.dwtag  DW_TAG_member
	.dwattr $C$DW$315, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$315, DW_AT_name("GPIOF0")
	.dwattr $C$DW$315, DW_AT_TI_symbol_name("_GPIOF0")
	.dwattr $C$DW$315, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$315, DW_AT_bit_size(0x01)
	.dwattr $C$DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$315, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$316	.dwtag  DW_TAG_member
	.dwattr $C$DW$316, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$316, DW_AT_name("GPIOF1")
	.dwattr $C$DW$316, DW_AT_TI_symbol_name("_GPIOF1")
	.dwattr $C$DW$316, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$316, DW_AT_bit_size(0x01)
	.dwattr $C$DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$316, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$317	.dwtag  DW_TAG_member
	.dwattr $C$DW$317, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$317, DW_AT_name("GPIOF2")
	.dwattr $C$DW$317, DW_AT_TI_symbol_name("_GPIOF2")
	.dwattr $C$DW$317, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$317, DW_AT_bit_size(0x01)
	.dwattr $C$DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$317, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$318	.dwtag  DW_TAG_member
	.dwattr $C$DW$318, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$318, DW_AT_name("GPIOF3")
	.dwattr $C$DW$318, DW_AT_TI_symbol_name("_GPIOF3")
	.dwattr $C$DW$318, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$318, DW_AT_bit_size(0x01)
	.dwattr $C$DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$318, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$319	.dwtag  DW_TAG_member
	.dwattr $C$DW$319, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$319, DW_AT_name("GPIOF4")
	.dwattr $C$DW$319, DW_AT_TI_symbol_name("_GPIOF4")
	.dwattr $C$DW$319, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$319, DW_AT_bit_size(0x01)
	.dwattr $C$DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$319, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$320	.dwtag  DW_TAG_member
	.dwattr $C$DW$320, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$320, DW_AT_name("GPIOF5")
	.dwattr $C$DW$320, DW_AT_TI_symbol_name("_GPIOF5")
	.dwattr $C$DW$320, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$320, DW_AT_bit_size(0x01)
	.dwattr $C$DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$320, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$321	.dwtag  DW_TAG_member
	.dwattr $C$DW$321, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$321, DW_AT_name("GPIOF6")
	.dwattr $C$DW$321, DW_AT_TI_symbol_name("_GPIOF6")
	.dwattr $C$DW$321, DW_AT_bit_offset(0x09)
	.dwattr $C$DW$321, DW_AT_bit_size(0x01)
	.dwattr $C$DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$321, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$322	.dwtag  DW_TAG_member
	.dwattr $C$DW$322, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$322, DW_AT_name("GPIOF7")
	.dwattr $C$DW$322, DW_AT_TI_symbol_name("_GPIOF7")
	.dwattr $C$DW$322, DW_AT_bit_offset(0x08)
	.dwattr $C$DW$322, DW_AT_bit_size(0x01)
	.dwattr $C$DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$322, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$323	.dwtag  DW_TAG_member
	.dwattr $C$DW$323, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$323, DW_AT_name("GPIOF8")
	.dwattr $C$DW$323, DW_AT_TI_symbol_name("_GPIOF8")
	.dwattr $C$DW$323, DW_AT_bit_offset(0x07)
	.dwattr $C$DW$323, DW_AT_bit_size(0x01)
	.dwattr $C$DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$323, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$324	.dwtag  DW_TAG_member
	.dwattr $C$DW$324, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$324, DW_AT_name("GPIOF9")
	.dwattr $C$DW$324, DW_AT_TI_symbol_name("_GPIOF9")
	.dwattr $C$DW$324, DW_AT_bit_offset(0x06)
	.dwattr $C$DW$324, DW_AT_bit_size(0x01)
	.dwattr $C$DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$324, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$325	.dwtag  DW_TAG_member
	.dwattr $C$DW$325, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$325, DW_AT_name("GPIOF10")
	.dwattr $C$DW$325, DW_AT_TI_symbol_name("_GPIOF10")
	.dwattr $C$DW$325, DW_AT_bit_offset(0x05)
	.dwattr $C$DW$325, DW_AT_bit_size(0x01)
	.dwattr $C$DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$325, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$326	.dwtag  DW_TAG_member
	.dwattr $C$DW$326, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$326, DW_AT_name("GPIOF11")
	.dwattr $C$DW$326, DW_AT_TI_symbol_name("_GPIOF11")
	.dwattr $C$DW$326, DW_AT_bit_offset(0x04)
	.dwattr $C$DW$326, DW_AT_bit_size(0x01)
	.dwattr $C$DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$326, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$327	.dwtag  DW_TAG_member
	.dwattr $C$DW$327, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$327, DW_AT_name("GPIOF12")
	.dwattr $C$DW$327, DW_AT_TI_symbol_name("_GPIOF12")
	.dwattr $C$DW$327, DW_AT_bit_offset(0x03)
	.dwattr $C$DW$327, DW_AT_bit_size(0x01)
	.dwattr $C$DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$327, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$328	.dwtag  DW_TAG_member
	.dwattr $C$DW$328, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$328, DW_AT_name("GPIOF13")
	.dwattr $C$DW$328, DW_AT_TI_symbol_name("_GPIOF13")
	.dwattr $C$DW$328, DW_AT_bit_offset(0x02)
	.dwattr $C$DW$328, DW_AT_bit_size(0x01)
	.dwattr $C$DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$328, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$329	.dwtag  DW_TAG_member
	.dwattr $C$DW$329, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$329, DW_AT_name("GPIOF14")
	.dwattr $C$DW$329, DW_AT_TI_symbol_name("_GPIOF14")
	.dwattr $C$DW$329, DW_AT_bit_offset(0x01)
	.dwattr $C$DW$329, DW_AT_bit_size(0x01)
	.dwattr $C$DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$329, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$330	.dwtag  DW_TAG_member
	.dwattr $C$DW$330, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$330, DW_AT_name("GPIOF15")
	.dwattr $C$DW$330, DW_AT_TI_symbol_name("_GPIOF15")
	.dwattr $C$DW$330, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$330, DW_AT_bit_size(0x01)
	.dwattr $C$DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$330, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$58


$C$DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$59, DW_AT_name("GPFTOGGLE_REG")
	.dwattr $C$DW$T$59, DW_AT_byte_size(0x01)
$C$DW$331	.dwtag  DW_TAG_member
	.dwattr $C$DW$331, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$331, DW_AT_name("all")
	.dwattr $C$DW$331, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$331, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$332	.dwtag  DW_TAG_member
	.dwattr $C$DW$332, DW_AT_type(*$C$DW$T$58)
	.dwattr $C$DW$332, DW_AT_name("bit")
	.dwattr $C$DW$332, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$332, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$59


$C$DW$T$60	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$60, DW_AT_name("GPGCLEAR_BITS")
	.dwattr $C$DW$T$60, DW_AT_byte_size(0x01)
$C$DW$333	.dwtag  DW_TAG_member
	.dwattr $C$DW$333, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$333, DW_AT_name("rsvd1")
	.dwattr $C$DW$333, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$333, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$333, DW_AT_bit_size(0x04)
	.dwattr $C$DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$333, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$334	.dwtag  DW_TAG_member
	.dwattr $C$DW$334, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$334, DW_AT_name("GPIOG4")
	.dwattr $C$DW$334, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$334, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$334, DW_AT_bit_size(0x01)
	.dwattr $C$DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$334, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$335	.dwtag  DW_TAG_member
	.dwattr $C$DW$335, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$335, DW_AT_name("GPIOG5")
	.dwattr $C$DW$335, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$335, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$335, DW_AT_bit_size(0x01)
	.dwattr $C$DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$335, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$336	.dwtag  DW_TAG_member
	.dwattr $C$DW$336, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$336, DW_AT_name("rsvd2")
	.dwattr $C$DW$336, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$336, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$336, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$336, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$60


$C$DW$T$61	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$61, DW_AT_name("GPGCLEAR_REG")
	.dwattr $C$DW$T$61, DW_AT_byte_size(0x01)
$C$DW$337	.dwtag  DW_TAG_member
	.dwattr $C$DW$337, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$337, DW_AT_name("all")
	.dwattr $C$DW$337, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$337, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$338	.dwtag  DW_TAG_member
	.dwattr $C$DW$338, DW_AT_type(*$C$DW$T$60)
	.dwattr $C$DW$338, DW_AT_name("bit")
	.dwattr $C$DW$338, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$338, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$61


$C$DW$T$62	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$62, DW_AT_name("GPGDAT_BITS")
	.dwattr $C$DW$T$62, DW_AT_byte_size(0x01)
$C$DW$339	.dwtag  DW_TAG_member
	.dwattr $C$DW$339, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$339, DW_AT_name("rsvd1")
	.dwattr $C$DW$339, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$339, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$339, DW_AT_bit_size(0x04)
	.dwattr $C$DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$339, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$340	.dwtag  DW_TAG_member
	.dwattr $C$DW$340, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$340, DW_AT_name("GPIOG4")
	.dwattr $C$DW$340, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$340, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$340, DW_AT_bit_size(0x01)
	.dwattr $C$DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$340, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$341	.dwtag  DW_TAG_member
	.dwattr $C$DW$341, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$341, DW_AT_name("GPIOG5")
	.dwattr $C$DW$341, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$341, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$341, DW_AT_bit_size(0x01)
	.dwattr $C$DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$341, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$342	.dwtag  DW_TAG_member
	.dwattr $C$DW$342, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$342, DW_AT_name("rsvd2")
	.dwattr $C$DW$342, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$342, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$342, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$342, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$62


$C$DW$T$63	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$63, DW_AT_name("GPGDAT_REG")
	.dwattr $C$DW$T$63, DW_AT_byte_size(0x01)
$C$DW$343	.dwtag  DW_TAG_member
	.dwattr $C$DW$343, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$343, DW_AT_name("all")
	.dwattr $C$DW$343, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$343, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$344	.dwtag  DW_TAG_member
	.dwattr $C$DW$344, DW_AT_type(*$C$DW$T$62)
	.dwattr $C$DW$344, DW_AT_name("bit")
	.dwattr $C$DW$344, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$344, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$63


$C$DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$64, DW_AT_name("GPGSET_BITS")
	.dwattr $C$DW$T$64, DW_AT_byte_size(0x01)
$C$DW$345	.dwtag  DW_TAG_member
	.dwattr $C$DW$345, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$345, DW_AT_name("rsvd1")
	.dwattr $C$DW$345, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$345, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$345, DW_AT_bit_size(0x04)
	.dwattr $C$DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$345, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$346	.dwtag  DW_TAG_member
	.dwattr $C$DW$346, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$346, DW_AT_name("GPIOG4")
	.dwattr $C$DW$346, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$346, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$346, DW_AT_bit_size(0x01)
	.dwattr $C$DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$346, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$347	.dwtag  DW_TAG_member
	.dwattr $C$DW$347, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$347, DW_AT_name("GPIOG5")
	.dwattr $C$DW$347, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$347, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$347, DW_AT_bit_size(0x01)
	.dwattr $C$DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$347, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$348	.dwtag  DW_TAG_member
	.dwattr $C$DW$348, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$348, DW_AT_name("rsvd2")
	.dwattr $C$DW$348, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$348, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$348, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$348, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$64


$C$DW$T$65	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$65, DW_AT_name("GPGSET_REG")
	.dwattr $C$DW$T$65, DW_AT_byte_size(0x01)
$C$DW$349	.dwtag  DW_TAG_member
	.dwattr $C$DW$349, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$349, DW_AT_name("all")
	.dwattr $C$DW$349, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$349, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$350	.dwtag  DW_TAG_member
	.dwattr $C$DW$350, DW_AT_type(*$C$DW$T$64)
	.dwattr $C$DW$350, DW_AT_name("bit")
	.dwattr $C$DW$350, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$350, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$65


$C$DW$T$66	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$66, DW_AT_name("GPGTOGGLE_BITS")
	.dwattr $C$DW$T$66, DW_AT_byte_size(0x01)
$C$DW$351	.dwtag  DW_TAG_member
	.dwattr $C$DW$351, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$351, DW_AT_name("rsvd1")
	.dwattr $C$DW$351, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$351, DW_AT_bit_offset(0x0c)
	.dwattr $C$DW$351, DW_AT_bit_size(0x04)
	.dwattr $C$DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$351, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$352	.dwtag  DW_TAG_member
	.dwattr $C$DW$352, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$352, DW_AT_name("GPIOG4")
	.dwattr $C$DW$352, DW_AT_TI_symbol_name("_GPIOG4")
	.dwattr $C$DW$352, DW_AT_bit_offset(0x0b)
	.dwattr $C$DW$352, DW_AT_bit_size(0x01)
	.dwattr $C$DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$352, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$353	.dwtag  DW_TAG_member
	.dwattr $C$DW$353, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$353, DW_AT_name("GPIOG5")
	.dwattr $C$DW$353, DW_AT_TI_symbol_name("_GPIOG5")
	.dwattr $C$DW$353, DW_AT_bit_offset(0x0a)
	.dwattr $C$DW$353, DW_AT_bit_size(0x01)
	.dwattr $C$DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$353, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$354	.dwtag  DW_TAG_member
	.dwattr $C$DW$354, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$354, DW_AT_name("rsvd2")
	.dwattr $C$DW$354, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$354, DW_AT_bit_offset(0x00)
	.dwattr $C$DW$354, DW_AT_bit_size(0x0a)
	.dwattr $C$DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$354, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$66


$C$DW$T$67	.dwtag  DW_TAG_union_type
	.dwattr $C$DW$T$67, DW_AT_name("GPGTOGGLE_REG")
	.dwattr $C$DW$T$67, DW_AT_byte_size(0x01)
$C$DW$355	.dwtag  DW_TAG_member
	.dwattr $C$DW$355, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$355, DW_AT_name("all")
	.dwattr $C$DW$355, DW_AT_TI_symbol_name("_all")
	.dwattr $C$DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$355, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$356	.dwtag  DW_TAG_member
	.dwattr $C$DW$356, DW_AT_type(*$C$DW$T$66)
	.dwattr $C$DW$356, DW_AT_name("bit")
	.dwattr $C$DW$356, DW_AT_TI_symbol_name("_bit")
	.dwattr $C$DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$356, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$67


$C$DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$69, DW_AT_name("GPIO_DATA_REGS")
	.dwattr $C$DW$T$69, DW_AT_byte_size(0x20)
$C$DW$357	.dwtag  DW_TAG_member
	.dwattr $C$DW$357, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$357, DW_AT_name("GPADAT")
	.dwattr $C$DW$357, DW_AT_TI_symbol_name("_GPADAT")
	.dwattr $C$DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$357, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$358	.dwtag  DW_TAG_member
	.dwattr $C$DW$358, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$358, DW_AT_name("GPASET")
	.dwattr $C$DW$358, DW_AT_TI_symbol_name("_GPASET")
	.dwattr $C$DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$358, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$359	.dwtag  DW_TAG_member
	.dwattr $C$DW$359, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$359, DW_AT_name("GPACLEAR")
	.dwattr $C$DW$359, DW_AT_TI_symbol_name("_GPACLEAR")
	.dwattr $C$DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$359, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$360	.dwtag  DW_TAG_member
	.dwattr $C$DW$360, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$360, DW_AT_name("GPATOGGLE")
	.dwattr $C$DW$360, DW_AT_TI_symbol_name("_GPATOGGLE")
	.dwattr $C$DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$360, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$361	.dwtag  DW_TAG_member
	.dwattr $C$DW$361, DW_AT_type(*$C$DW$T$31)
	.dwattr $C$DW$361, DW_AT_name("GPBDAT")
	.dwattr $C$DW$361, DW_AT_TI_symbol_name("_GPBDAT")
	.dwattr $C$DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$361, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$362	.dwtag  DW_TAG_member
	.dwattr $C$DW$362, DW_AT_type(*$C$DW$T$33)
	.dwattr $C$DW$362, DW_AT_name("GPBSET")
	.dwattr $C$DW$362, DW_AT_TI_symbol_name("_GPBSET")
	.dwattr $C$DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$362, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$363	.dwtag  DW_TAG_member
	.dwattr $C$DW$363, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$363, DW_AT_name("GPBCLEAR")
	.dwattr $C$DW$363, DW_AT_TI_symbol_name("_GPBCLEAR")
	.dwattr $C$DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$363, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$364	.dwtag  DW_TAG_member
	.dwattr $C$DW$364, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$364, DW_AT_name("GPBTOGGLE")
	.dwattr $C$DW$364, DW_AT_TI_symbol_name("_GPBTOGGLE")
	.dwattr $C$DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$364, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$365	.dwtag  DW_TAG_member
	.dwattr $C$DW$365, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$365, DW_AT_name("rsvd1")
	.dwattr $C$DW$365, DW_AT_TI_symbol_name("_rsvd1")
	.dwattr $C$DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$365, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$366	.dwtag  DW_TAG_member
	.dwattr $C$DW$366, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$366, DW_AT_name("GPDDAT")
	.dwattr $C$DW$366, DW_AT_TI_symbol_name("_GPDDAT")
	.dwattr $C$DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr $C$DW$366, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$367	.dwtag  DW_TAG_member
	.dwattr $C$DW$367, DW_AT_type(*$C$DW$T$41)
	.dwattr $C$DW$367, DW_AT_name("GPDSET")
	.dwattr $C$DW$367, DW_AT_TI_symbol_name("_GPDSET")
	.dwattr $C$DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr $C$DW$367, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$368	.dwtag  DW_TAG_member
	.dwattr $C$DW$368, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$368, DW_AT_name("GPDCLEAR")
	.dwattr $C$DW$368, DW_AT_TI_symbol_name("_GPDCLEAR")
	.dwattr $C$DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr $C$DW$368, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$369	.dwtag  DW_TAG_member
	.dwattr $C$DW$369, DW_AT_type(*$C$DW$T$43)
	.dwattr $C$DW$369, DW_AT_name("GPDTOGGLE")
	.dwattr $C$DW$369, DW_AT_TI_symbol_name("_GPDTOGGLE")
	.dwattr $C$DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr $C$DW$369, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$370	.dwtag  DW_TAG_member
	.dwattr $C$DW$370, DW_AT_type(*$C$DW$T$47)
	.dwattr $C$DW$370, DW_AT_name("GPEDAT")
	.dwattr $C$DW$370, DW_AT_TI_symbol_name("_GPEDAT")
	.dwattr $C$DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr $C$DW$370, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$371	.dwtag  DW_TAG_member
	.dwattr $C$DW$371, DW_AT_type(*$C$DW$T$49)
	.dwattr $C$DW$371, DW_AT_name("GPESET")
	.dwattr $C$DW$371, DW_AT_TI_symbol_name("_GPESET")
	.dwattr $C$DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr $C$DW$371, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$372	.dwtag  DW_TAG_member
	.dwattr $C$DW$372, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$372, DW_AT_name("GPECLEAR")
	.dwattr $C$DW$372, DW_AT_TI_symbol_name("_GPECLEAR")
	.dwattr $C$DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr $C$DW$372, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$373	.dwtag  DW_TAG_member
	.dwattr $C$DW$373, DW_AT_type(*$C$DW$T$51)
	.dwattr $C$DW$373, DW_AT_name("GPETOGGLE")
	.dwattr $C$DW$373, DW_AT_TI_symbol_name("_GPETOGGLE")
	.dwattr $C$DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr $C$DW$373, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$374	.dwtag  DW_TAG_member
	.dwattr $C$DW$374, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$374, DW_AT_name("GPFDAT")
	.dwattr $C$DW$374, DW_AT_TI_symbol_name("_GPFDAT")
	.dwattr $C$DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr $C$DW$374, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$375	.dwtag  DW_TAG_member
	.dwattr $C$DW$375, DW_AT_type(*$C$DW$T$57)
	.dwattr $C$DW$375, DW_AT_name("GPFSET")
	.dwattr $C$DW$375, DW_AT_TI_symbol_name("_GPFSET")
	.dwattr $C$DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr $C$DW$375, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$376	.dwtag  DW_TAG_member
	.dwattr $C$DW$376, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$376, DW_AT_name("GPFCLEAR")
	.dwattr $C$DW$376, DW_AT_TI_symbol_name("_GPFCLEAR")
	.dwattr $C$DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr $C$DW$376, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$377	.dwtag  DW_TAG_member
	.dwattr $C$DW$377, DW_AT_type(*$C$DW$T$59)
	.dwattr $C$DW$377, DW_AT_name("GPFTOGGLE")
	.dwattr $C$DW$377, DW_AT_TI_symbol_name("_GPFTOGGLE")
	.dwattr $C$DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr $C$DW$377, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$378	.dwtag  DW_TAG_member
	.dwattr $C$DW$378, DW_AT_type(*$C$DW$T$63)
	.dwattr $C$DW$378, DW_AT_name("GPGDAT")
	.dwattr $C$DW$378, DW_AT_TI_symbol_name("_GPGDAT")
	.dwattr $C$DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr $C$DW$378, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$379	.dwtag  DW_TAG_member
	.dwattr $C$DW$379, DW_AT_type(*$C$DW$T$65)
	.dwattr $C$DW$379, DW_AT_name("GPGSET")
	.dwattr $C$DW$379, DW_AT_TI_symbol_name("_GPGSET")
	.dwattr $C$DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr $C$DW$379, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$380	.dwtag  DW_TAG_member
	.dwattr $C$DW$380, DW_AT_type(*$C$DW$T$61)
	.dwattr $C$DW$380, DW_AT_name("GPGCLEAR")
	.dwattr $C$DW$380, DW_AT_TI_symbol_name("_GPGCLEAR")
	.dwattr $C$DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr $C$DW$380, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$381	.dwtag  DW_TAG_member
	.dwattr $C$DW$381, DW_AT_type(*$C$DW$T$67)
	.dwattr $C$DW$381, DW_AT_name("GPGTOGGLE")
	.dwattr $C$DW$381, DW_AT_TI_symbol_name("_GPGTOGGLE")
	.dwattr $C$DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr $C$DW$381, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$382	.dwtag  DW_TAG_member
	.dwattr $C$DW$382, DW_AT_type(*$C$DW$T$68)
	.dwattr $C$DW$382, DW_AT_name("rsvd2")
	.dwattr $C$DW$382, DW_AT_TI_symbol_name("_rsvd2")
	.dwattr $C$DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr $C$DW$382, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$69

$C$DW$383	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$383, DW_AT_type(*$C$DW$T$69)

$C$DW$T$70	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$70, DW_AT_type(*$C$DW$383)

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

$C$DW$384	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$384, DW_AT_type(*$C$DW$T$19)

$C$DW$T$76	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$76, DW_AT_type(*$C$DW$384)


$C$DW$T$68	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$T$68, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$68, DW_AT_byte_size(0x04)
$C$DW$385	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$385, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$68

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)

$C$DW$T$87	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$87, DW_AT_name("Uint32")
	.dwattr $C$DW$T$87, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$87, DW_AT_language(DW_LANG_C)

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

$C$DW$386	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$386, DW_AT_name("AL")
	.dwattr $C$DW$386, DW_AT_location[DW_OP_reg0]

$C$DW$387	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$387, DW_AT_name("AH")
	.dwattr $C$DW$387, DW_AT_location[DW_OP_reg1]

$C$DW$388	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$388, DW_AT_name("PL")
	.dwattr $C$DW$388, DW_AT_location[DW_OP_reg2]

$C$DW$389	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$389, DW_AT_name("PH")
	.dwattr $C$DW$389, DW_AT_location[DW_OP_reg3]

$C$DW$390	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$390, DW_AT_name("SP")
	.dwattr $C$DW$390, DW_AT_location[DW_OP_reg20]

$C$DW$391	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$391, DW_AT_name("XT")
	.dwattr $C$DW$391, DW_AT_location[DW_OP_reg21]

$C$DW$392	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$392, DW_AT_name("T")
	.dwattr $C$DW$392, DW_AT_location[DW_OP_reg22]

$C$DW$393	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$393, DW_AT_name("ST0")
	.dwattr $C$DW$393, DW_AT_location[DW_OP_reg23]

$C$DW$394	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$394, DW_AT_name("ST1")
	.dwattr $C$DW$394, DW_AT_location[DW_OP_reg24]

$C$DW$395	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$395, DW_AT_name("PC")
	.dwattr $C$DW$395, DW_AT_location[DW_OP_reg25]

$C$DW$396	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$396, DW_AT_name("RPC")
	.dwattr $C$DW$396, DW_AT_location[DW_OP_reg26]

$C$DW$397	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$397, DW_AT_name("FP")
	.dwattr $C$DW$397, DW_AT_location[DW_OP_reg28]

$C$DW$398	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$398, DW_AT_name("DP")
	.dwattr $C$DW$398, DW_AT_location[DW_OP_reg29]

$C$DW$399	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$399, DW_AT_name("SXM")
	.dwattr $C$DW$399, DW_AT_location[DW_OP_reg30]

$C$DW$400	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$400, DW_AT_name("PM")
	.dwattr $C$DW$400, DW_AT_location[DW_OP_reg31]

$C$DW$401	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$401, DW_AT_name("OVM")
	.dwattr $C$DW$401, DW_AT_location[DW_OP_regx 0x20]

$C$DW$402	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$402, DW_AT_name("PAGE0")
	.dwattr $C$DW$402, DW_AT_location[DW_OP_regx 0x21]

$C$DW$403	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$403, DW_AT_name("AMODE")
	.dwattr $C$DW$403, DW_AT_location[DW_OP_regx 0x22]

$C$DW$404	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$404, DW_AT_name("INTM")
	.dwattr $C$DW$404, DW_AT_location[DW_OP_regx 0x23]

$C$DW$405	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$405, DW_AT_name("IFR")
	.dwattr $C$DW$405, DW_AT_location[DW_OP_regx 0x24]

$C$DW$406	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$406, DW_AT_name("IER")
	.dwattr $C$DW$406, DW_AT_location[DW_OP_regx 0x25]

$C$DW$407	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$407, DW_AT_name("V")
	.dwattr $C$DW$407, DW_AT_location[DW_OP_regx 0x26]

$C$DW$408	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$408, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$408, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$409	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$409, DW_AT_name("VOL")
	.dwattr $C$DW$409, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$410	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$410, DW_AT_name("AR0")
	.dwattr $C$DW$410, DW_AT_location[DW_OP_reg4]

$C$DW$411	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$411, DW_AT_name("XAR0")
	.dwattr $C$DW$411, DW_AT_location[DW_OP_reg5]

$C$DW$412	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$412, DW_AT_name("AR1")
	.dwattr $C$DW$412, DW_AT_location[DW_OP_reg6]

$C$DW$413	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$413, DW_AT_name("XAR1")
	.dwattr $C$DW$413, DW_AT_location[DW_OP_reg7]

$C$DW$414	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$414, DW_AT_name("AR2")
	.dwattr $C$DW$414, DW_AT_location[DW_OP_reg8]

$C$DW$415	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$415, DW_AT_name("XAR2")
	.dwattr $C$DW$415, DW_AT_location[DW_OP_reg9]

$C$DW$416	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$416, DW_AT_name("AR3")
	.dwattr $C$DW$416, DW_AT_location[DW_OP_reg10]

$C$DW$417	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$417, DW_AT_name("XAR3")
	.dwattr $C$DW$417, DW_AT_location[DW_OP_reg11]

$C$DW$418	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$418, DW_AT_name("AR4")
	.dwattr $C$DW$418, DW_AT_location[DW_OP_reg12]

$C$DW$419	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$419, DW_AT_name("XAR4")
	.dwattr $C$DW$419, DW_AT_location[DW_OP_reg13]

$C$DW$420	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$420, DW_AT_name("AR5")
	.dwattr $C$DW$420, DW_AT_location[DW_OP_reg14]

$C$DW$421	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$421, DW_AT_name("XAR5")
	.dwattr $C$DW$421, DW_AT_location[DW_OP_reg15]

$C$DW$422	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$422, DW_AT_name("AR6")
	.dwattr $C$DW$422, DW_AT_location[DW_OP_reg16]

$C$DW$423	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$423, DW_AT_name("XAR6")
	.dwattr $C$DW$423, DW_AT_location[DW_OP_reg17]

$C$DW$424	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$424, DW_AT_name("AR7")
	.dwattr $C$DW$424, DW_AT_location[DW_OP_reg18]

$C$DW$425	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$425, DW_AT_name("XAR7")
	.dwattr $C$DW$425, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


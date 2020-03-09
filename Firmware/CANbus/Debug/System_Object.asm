;***************************************************************
;* TMS320C2000 C/C++ Codegen                   PC v15.12.7.LTS *
;* Date/Time created: Thu Feb 06 15:25:46 2020                 *
;***************************************************************
	.compiler_opts --abi=coffabi --float_support=softlib --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --quiet --silicon_version=28 --symdebug:dwarf --symdebug:dwarf_version=3 
FP	.set	XAR2

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../Source/System_Object.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI TMS320C2000 C/C++ Codegen PC v15.12.7.LTS Copyright (c) 1996-2017 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\Users\ebenton\Documents\CERDEC TS\Firmware\CANbus\Debug")
	.global	_System
_System:	.usect	".ebss",152,1,1
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("System")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_System")
	.dwattr $C$DW$1, DW_AT_location[DW_OP_addr _System]
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$29)
	.dwattr $C$DW$1, DW_AT_external

;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\opt2000.exe C:\\Users\\ebenton\\AppData\\Local\\Temp\\{E91C916F-540C-48FB-82C2-6ECB2F1B415F} C:\\Users\\ebenton\\AppData\\Local\\Temp\\{D83E5564-D16D-4638-A4CC-81A672B43AD6} 
;	C:\ti\ccsv6\tools\compiler\ti-cgt-c2000_15.12.7.LTS\bin\ac2000.exe -@C:\\Users\\ebenton\\AppData\\Local\\Temp\\{6B37622C-5983-4C3D-891E-CECD29AB564F} 
	.sect	".text"
	.clink
	.global	_setSytemRuntimeEst

$C$DW$2	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$2, DW_AT_name("setSytemRuntimeEst")
	.dwattr $C$DW$2, DW_AT_low_pc(_setSytemRuntimeEst)
	.dwattr $C$DW$2, DW_AT_high_pc(0x00)
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("_setSytemRuntimeEst")
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$2, DW_AT_TI_begin_line(0xb8)
	.dwattr $C$DW$2, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$2, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 185,column 1,is_stmt,address _setSytemRuntimeEst,isa 0

	.dwfde $C$DW$CIE, _setSytemRuntimeEst
$C$DW$3	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$3, DW_AT_name("runtimeEst")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_runtimeEst")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$3, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 184 | void setSytemRuntimeEst(Uint16 runtimeEst)                             
; 186 | //System.runtimeEst = runtimeEst;                                      
; 187 | return;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSytemRuntimeEst           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSytemRuntimeEst:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$4	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$4, DW_AT_low_pc(0x00)
	.dwattr $C$DW$4, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$2, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$2, DW_AT_TI_end_line(0xbc)
	.dwattr $C$DW$2, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$2

	.sect	".text"
	.clink
	.global	_setSystemStatus

$C$DW$5	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$5, DW_AT_name("setSystemStatus")
	.dwattr $C$DW$5, DW_AT_low_pc(_setSystemStatus)
	.dwattr $C$DW$5, DW_AT_high_pc(0x00)
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("_setSystemStatus")
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$5, DW_AT_TI_begin_line(0x39)
	.dwattr $C$DW$5, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$5, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 58,column 1,is_stmt,address _setSystemStatus,isa 0

	.dwfde $C$DW$CIE, _setSystemStatus
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_name("status")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$6, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  57 | void setSystemStatus(Uint16 status)                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemStatus              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemStatus:
;* AL    assigned to _status
$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("status")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$7, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System           ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 59,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  59 | System.status = status;                                                
;  60 | return;                                                                
;----------------------------------------------------------------------
        MOV       @_System,AL           ; [CPU_] |59| 
$C$DW$8	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$8, DW_AT_low_pc(0x00)
	.dwattr $C$DW$8, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$5, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$5, DW_AT_TI_end_line(0x3d)
	.dwattr $C$DW$5, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$5

	.sect	".text"
	.clink
	.global	_setSystemRuntimeFL

$C$DW$9	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$9, DW_AT_name("setSystemRuntimeFL")
	.dwattr $C$DW$9, DW_AT_low_pc(_setSystemRuntimeFL)
	.dwattr $C$DW$9, DW_AT_high_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("_setSystemRuntimeFL")
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$9, DW_AT_TI_begin_line(0xac)
	.dwattr $C$DW$9, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$9, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 173,column 1,is_stmt,address _setSystemRuntimeFL,isa 0

	.dwfde $C$DW$CIE, _setSystemRuntimeFL
$C$DW$10	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$10, DW_AT_name("runtimeFL")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_runtimeFL")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$10, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 172 | void setSystemRuntimeFL(Uint16 runtimeFL)                              
; 174 | ///System.runtimeFL = runtimeFL;                                       
; 175 | return;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemRuntimeFL           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemRuntimeFL:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$11	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$11, DW_AT_low_pc(0x00)
	.dwattr $C$DW$11, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$9, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$9, DW_AT_TI_end_line(0xb0)
	.dwattr $C$DW$9, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$9

	.sect	".text"
	.clink
	.global	_setSystemOutCurrentF

$C$DW$12	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$12, DW_AT_name("setSystemOutCurrentF")
	.dwattr $C$DW$12, DW_AT_low_pc(_setSystemOutCurrentF)
	.dwattr $C$DW$12, DW_AT_high_pc(0x00)
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_setSystemOutCurrentF")
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$12, DW_AT_TI_begin_line(0x9b)
	.dwattr $C$DW$12, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$12, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 156,column 1,is_stmt,address _setSystemOutCurrentF,isa 0

	.dwfde $C$DW$CIE, _setSystemOutCurrentF
$C$DW$13	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$13, DW_AT_name("outCurrent")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_outCurrent")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$13, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 155 | void setSystemOutCurrentF(float outCurrent)                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemOutCurrentF         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemOutCurrentF:
;* AL    assigned to _outCurrent
$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("outCurrent")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_outCurrent")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$14, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+8         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 157,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 157 | System.outCurrentF = outCurrent;                                       
; 158 | return;                                                                
;----------------------------------------------------------------------
        MOVL      @_System+8,ACC        ; [CPU_] |157| 
$C$DW$15	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$15, DW_AT_low_pc(0x00)
	.dwattr $C$DW$15, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$12, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$12, DW_AT_TI_end_line(0x9f)
	.dwattr $C$DW$12, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$12

	.sect	".text"
	.clink
	.global	_setSystemOutCurrent

$C$DW$16	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$16, DW_AT_name("setSystemOutCurrent")
	.dwattr $C$DW$16, DW_AT_low_pc(_setSystemOutCurrent)
	.dwattr $C$DW$16, DW_AT_high_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_setSystemOutCurrent")
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$16, DW_AT_TI_begin_line(0x7a)
	.dwattr $C$DW$16, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$16, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 123,column 1,is_stmt,address _setSystemOutCurrent,isa 0

	.dwfde $C$DW$CIE, _setSystemOutCurrent
$C$DW$17	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$17, DW_AT_name("outCurrent")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_outCurrent")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 122 | void setSystemOutCurrent(Uint16 outCurrent)                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemOutCurrent          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemOutCurrent:
;* AL    assigned to _outCurrent
$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("outCurrent")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_outCurrent")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+3         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 124,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 124 | System.outCurrent = outCurrent;                                        
; 125 | return;                                                                
;----------------------------------------------------------------------
        MOV       @_System+3,AL         ; [CPU_] |124| 
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$16, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$16, DW_AT_TI_end_line(0x7e)
	.dwattr $C$DW$16, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$16

	.sect	".text"
	.clink
	.global	_setSystemNumDischarges

$C$DW$20	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$20, DW_AT_name("setSystemNumDischarges")
	.dwattr $C$DW$20, DW_AT_low_pc(_setSystemNumDischarges)
	.dwattr $C$DW$20, DW_AT_high_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("_setSystemNumDischarges")
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$20, DW_AT_TI_begin_line(0x65)
	.dwattr $C$DW$20, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$20, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 102,column 1,is_stmt,address _setSystemNumDischarges,isa 0

	.dwfde $C$DW$CIE, _setSystemNumDischarges
$C$DW$21	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$21, DW_AT_name("numDischarges")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("_numDischarges")
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 101 | void setSystemNumDischarges(Uint16 numDischarges)                      
; 103 | //System.numDischarges = numDischarges;                                
; 104 | return;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemNumDischarges       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemNumDischarges:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$22	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$22, DW_AT_low_pc(0x00)
	.dwattr $C$DW$22, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$20, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$20, DW_AT_TI_end_line(0x69)
	.dwattr $C$DW$20, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$20

	.sect	".text"
	.clink
	.global	_setSystemMode

$C$DW$23	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$23, DW_AT_name("setSystemMode")
	.dwattr $C$DW$23, DW_AT_low_pc(_setSystemMode)
	.dwattr $C$DW$23, DW_AT_high_pc(0x00)
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("_setSystemMode")
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$23, DW_AT_TI_begin_line(0x44)
	.dwattr $C$DW$23, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$23, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 69,column 1,is_stmt,address _setSystemMode,isa 0

	.dwfde $C$DW$CIE, _setSystemMode
$C$DW$24	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$24, DW_AT_name("mode")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  68 | void setSystemMode(Uint16 mode)                                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemMode                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemMode:
;* AL    assigned to _mode
$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("mode")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+1         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 70,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  70 | System.mode = mode;                                                    
;  71 | return;                                                                
;----------------------------------------------------------------------
        MOV       @_System+1,AL         ; [CPU_] |70| 
$C$DW$26	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$26, DW_AT_low_pc(0x00)
	.dwattr $C$DW$26, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$23, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$23, DW_AT_TI_end_line(0x48)
	.dwattr $C$DW$23, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$23

	.sect	".text"
	.clink
	.global	_setSystemIsoRelay

$C$DW$27	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$27, DW_AT_name("setSystemIsoRelay")
	.dwattr $C$DW$27, DW_AT_low_pc(_setSystemIsoRelay)
	.dwattr $C$DW$27, DW_AT_high_pc(0x00)
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("_setSystemIsoRelay")
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$27, DW_AT_TI_begin_line(0x4f)
	.dwattr $C$DW$27, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$27, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 80,column 1,is_stmt,address _setSystemIsoRelay,isa 0

	.dwfde $C$DW$CIE, _setSystemIsoRelay
$C$DW$28	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$28, DW_AT_name("isoRelay")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_isoRelay")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  79 | void setSystemIsoRelay(Uint16 isoRelay)                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemIsoRelay            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemIsoRelay:
;* AL    assigned to _isoRelay
$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("isoRelay")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_isoRelay")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+2         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 81,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  81 | System.isoRelay = isoRelay;                                            
;  82 | return;                                                                
;----------------------------------------------------------------------
        MOV       @_System+2,AL         ; [CPU_] |81| 
$C$DW$30	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$30, DW_AT_low_pc(0x00)
	.dwattr $C$DW$30, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$27, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$27, DW_AT_TI_end_line(0x53)
	.dwattr $C$DW$27, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$27

	.sect	".text"
	.clink
	.global	_setSystemCapVoltageF

$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("setSystemCapVoltageF")
	.dwattr $C$DW$31, DW_AT_low_pc(_setSystemCapVoltageF)
	.dwattr $C$DW$31, DW_AT_high_pc(0x00)
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_setSystemCapVoltageF")
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$31, DW_AT_TI_begin_line(0x91)
	.dwattr $C$DW$31, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$31, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 146,column 1,is_stmt,address _setSystemCapVoltageF,isa 0

	.dwfde $C$DW$CIE, _setSystemCapVoltageF
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_name("capVoltage")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_capVoltage")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 145 | void setSystemCapVoltageF(float capVoltage)                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemCapVoltageF         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemCapVoltageF:
;* AL    assigned to _capVoltage
$C$DW$33	.dwtag  DW_TAG_variable
	.dwattr $C$DW$33, DW_AT_name("capVoltage")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_capVoltage")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$45)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+6         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 147,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 147 | System.capVoltageF = capVoltage;                                       
; 148 | return;                                                                
;----------------------------------------------------------------------
        MOVL      @_System+6,ACC        ; [CPU_] |147| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$31, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$31, DW_AT_TI_end_line(0x95)
	.dwattr $C$DW$31, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$31

	.sect	".text"
	.clink
	.global	_setSystemCapVoltage

$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("setSystemCapVoltage")
	.dwattr $C$DW$35, DW_AT_low_pc(_setSystemCapVoltage)
	.dwattr $C$DW$35, DW_AT_high_pc(0x00)
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("_setSystemCapVoltage")
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$35, DW_AT_TI_begin_line(0x85)
	.dwattr $C$DW$35, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$35, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 134,column 1,is_stmt,address _setSystemCapVoltage,isa 0

	.dwfde $C$DW$CIE, _setSystemCapVoltage
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_name("capVoltage")
	.dwattr $C$DW$36, DW_AT_TI_symbol_name("_capVoltage")
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 133 | void setSystemCapVoltage(Uint16 capVoltage)                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemCapVoltage          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemCapVoltage:
;* AL    assigned to _capVoltage
$C$DW$37	.dwtag  DW_TAG_variable
	.dwattr $C$DW$37, DW_AT_name("capVoltage")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_capVoltage")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+4         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 135,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 135 | System.capVoltage = capVoltage;                                        
; 136 | return;                                                                
;----------------------------------------------------------------------
        MOV       @_System+4,AL         ; [CPU_] |135| 
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$35, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$35, DW_AT_TI_end_line(0x89)
	.dwattr $C$DW$35, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$35

	.sect	".text"
	.clink
	.global	_setSystemBusVoltage

$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("setSystemBusVoltage")
	.dwattr $C$DW$39, DW_AT_low_pc(_setSystemBusVoltage)
	.dwattr $C$DW$39, DW_AT_high_pc(0x00)
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("_setSystemBusVoltage")
	.dwattr $C$DW$39, DW_AT_external
	.dwattr $C$DW$39, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$39, DW_AT_TI_begin_line(0x70)
	.dwattr $C$DW$39, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$39, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 113,column 1,is_stmt,address _setSystemBusVoltage,isa 0

	.dwfde $C$DW$CIE, _setSystemBusVoltage
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_name("busVoltage")
	.dwattr $C$DW$40, DW_AT_TI_symbol_name("_busVoltage")
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$40, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 112 | void setSystemBusVoltage(Uint16 busVoltage)                            
; 114 | //System.busVoltage = busVoltage;                                      
; 115 | return;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemBusVoltage          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemBusVoltage:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$39, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$39, DW_AT_TI_end_line(0x74)
	.dwattr $C$DW$39, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$39

	.sect	".text"
	.clink
	.global	_setSystemAvailEnergy

$C$DW$42	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$42, DW_AT_name("setSystemAvailEnergy")
	.dwattr $C$DW$42, DW_AT_low_pc(_setSystemAvailEnergy)
	.dwattr $C$DW$42, DW_AT_high_pc(0x00)
	.dwattr $C$DW$42, DW_AT_TI_symbol_name("_setSystemAvailEnergy")
	.dwattr $C$DW$42, DW_AT_external
	.dwattr $C$DW$42, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$42, DW_AT_TI_begin_line(0xc3)
	.dwattr $C$DW$42, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$42, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 196,column 1,is_stmt,address _setSystemAvailEnergy,isa 0

	.dwfde $C$DW$CIE, _setSystemAvailEnergy
$C$DW$43	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$43, DW_AT_name("availEnergy")
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("_availEnergy")
	.dwattr $C$DW$43, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$43, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 195 | void setSystemAvailEnergy(Uint16 availEnergy)                          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSystemAvailEnergy         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSystemAvailEnergy:
;* AL    assigned to _availEnergy
$C$DW$44	.dwtag  DW_TAG_variable
	.dwattr $C$DW$44, DW_AT_name("availEnergy")
	.dwattr $C$DW$44, DW_AT_TI_symbol_name("_availEnergy")
	.dwattr $C$DW$44, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$44, DW_AT_location[DW_OP_reg0]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+10        ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 197,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 197 | System.availEnergy = availEnergy;                                      
; 198 | return;                                                                
;----------------------------------------------------------------------
        MOV       @_System+10,AL        ; [CPU_] |197| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$42, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$42, DW_AT_TI_end_line(0xc7)
	.dwattr $C$DW$42, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$42

	.sect	".text"
	.clink
	.global	_setShelfVoltage

$C$DW$46	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$46, DW_AT_name("setShelfVoltage")
	.dwattr $C$DW$46, DW_AT_low_pc(_setShelfVoltage)
	.dwattr $C$DW$46, DW_AT_high_pc(0x00)
	.dwattr $C$DW$46, DW_AT_TI_symbol_name("_setShelfVoltage")
	.dwattr $C$DW$46, DW_AT_external
	.dwattr $C$DW$46, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$46, DW_AT_TI_begin_line(0xcf)
	.dwattr $C$DW$46, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$46, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 208,column 1,is_stmt,address _setShelfVoltage,isa 0

	.dwfde $C$DW$CIE, _setShelfVoltage
$C$DW$47	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$47, DW_AT_name("shelf")
	.dwattr $C$DW$47, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$47, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$47, DW_AT_location[DW_OP_reg0]

$C$DW$48	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$48, DW_AT_name("voltage")
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$48, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 207 | void setShelfVoltage(Uint16 shelf, Uint16 voltage)                     
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfVoltage              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfVoltage:
;* AR6   assigned to _voltage
$C$DW$49	.dwtag  DW_TAG_variable
	.dwattr $C$DW$49, DW_AT_name("voltage")
	.dwattr $C$DW$49, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$49, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$49, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |208| 
	.dwpsn	file "../Source/System_Object.c",line 209,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 209 | System.shelves[shelf-1].totalVoltage = voltage;                        
; 210 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |209| 
        MOV       T,#35                 ; [CPU_] |209| 
        MOVL      XAR4,#_System+11      ; [CPU_U] |209| 
        MPYXU     ACC,T,AL              ; [CPU_] |209| 
        ADDL      XAR4,ACC              ; [CPU_] |209| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |209| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$46, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$46, DW_AT_TI_end_line(0xd3)
	.dwattr $C$DW$46, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$46

	.sect	".text"
	.clink
	.global	_setShelfMinTempID

$C$DW$51	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$51, DW_AT_name("setShelfMinTempID")
	.dwattr $C$DW$51, DW_AT_low_pc(_setShelfMinTempID)
	.dwattr $C$DW$51, DW_AT_high_pc(0x00)
	.dwattr $C$DW$51, DW_AT_TI_symbol_name("_setShelfMinTempID")
	.dwattr $C$DW$51, DW_AT_external
	.dwattr $C$DW$51, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$51, DW_AT_TI_begin_line(0x10a)
	.dwattr $C$DW$51, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$51, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 267,column 1,is_stmt,address _setShelfMinTempID,isa 0

	.dwfde $C$DW$CIE, _setShelfMinTempID
$C$DW$52	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$52, DW_AT_name("shelf")
	.dwattr $C$DW$52, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$52, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$52, DW_AT_location[DW_OP_reg0]

$C$DW$53	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$53, DW_AT_name("ID")
	.dwattr $C$DW$53, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$53, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$53, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 266 | void setShelfMinTempID(Uint16 shelf, Uint16 ID)                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfMinTempID            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfMinTempID:
;* AR6   assigned to _ID
$C$DW$54	.dwtag  DW_TAG_variable
	.dwattr $C$DW$54, DW_AT_name("ID")
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$54, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$54, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |267| 
	.dwpsn	file "../Source/System_Object.c",line 268,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 268 | System.shelves[shelf-1].minTempID = ID;                                
; 269 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |268| 
        MOV       T,#35                 ; [CPU_] |268| 
        MOVL      XAR4,#_System+16      ; [CPU_U] |268| 
        MPYXU     ACC,T,AL              ; [CPU_] |268| 
        ADDL      XAR4,ACC              ; [CPU_] |268| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |268| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$51, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$51, DW_AT_TI_end_line(0x10e)
	.dwattr $C$DW$51, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$51

	.sect	".text"
	.clink
	.global	_setShelfMinTemp

$C$DW$56	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$56, DW_AT_name("setShelfMinTemp")
	.dwattr $C$DW$56, DW_AT_low_pc(_setShelfMinTemp)
	.dwattr $C$DW$56, DW_AT_high_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_symbol_name("_setShelfMinTemp")
	.dwattr $C$DW$56, DW_AT_external
	.dwattr $C$DW$56, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$56, DW_AT_TI_begin_line(0xff)
	.dwattr $C$DW$56, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$56, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 256,column 1,is_stmt,address _setShelfMinTemp,isa 0

	.dwfde $C$DW$CIE, _setShelfMinTemp
$C$DW$57	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$57, DW_AT_name("shelf")
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$57, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$57, DW_AT_location[DW_OP_reg0]

$C$DW$58	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$58, DW_AT_name("temperature")
	.dwattr $C$DW$58, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$58, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$58, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 255 | void setShelfMinTemp(Uint16 shelf, Uint16 temperature)                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfMinTemp              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfMinTemp:
;* AR6   assigned to _temperature
$C$DW$59	.dwtag  DW_TAG_variable
	.dwattr $C$DW$59, DW_AT_name("temperature")
	.dwattr $C$DW$59, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$59, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$59, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |256| 
	.dwpsn	file "../Source/System_Object.c",line 257,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 257 | System.shelves[shelf-1].minTemp = temperature;                         
; 258 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |257| 
        MOV       T,#35                 ; [CPU_] |257| 
        MOVL      XAR4,#_System+14      ; [CPU_U] |257| 
        MPYXU     ACC,T,AL              ; [CPU_] |257| 
        ADDL      XAR4,ACC              ; [CPU_] |257| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |257| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$56, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$56, DW_AT_TI_end_line(0x103)
	.dwattr $C$DW$56, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$56

	.sect	".text"
	.clink
	.global	_setShelfMaxTempID

$C$DW$61	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$61, DW_AT_name("setShelfMaxTempID")
	.dwattr $C$DW$61, DW_AT_low_pc(_setShelfMaxTempID)
	.dwattr $C$DW$61, DW_AT_high_pc(0x00)
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("_setShelfMaxTempID")
	.dwattr $C$DW$61, DW_AT_external
	.dwattr $C$DW$61, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$61, DW_AT_TI_begin_line(0xf3)
	.dwattr $C$DW$61, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$61, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 244,column 1,is_stmt,address _setShelfMaxTempID,isa 0

	.dwfde $C$DW$CIE, _setShelfMaxTempID
$C$DW$62	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$62, DW_AT_name("shelf")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$62, DW_AT_location[DW_OP_reg0]

$C$DW$63	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$63, DW_AT_name("ID")
	.dwattr $C$DW$63, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$63, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 243 | void setShelfMaxTempID(Uint16 shelf, Uint16 ID)                        
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfMaxTempID            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfMaxTempID:
;* AR6   assigned to _ID
$C$DW$64	.dwtag  DW_TAG_variable
	.dwattr $C$DW$64, DW_AT_name("ID")
	.dwattr $C$DW$64, DW_AT_TI_symbol_name("_ID")
	.dwattr $C$DW$64, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |244| 
	.dwpsn	file "../Source/System_Object.c",line 245,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 245 | System.shelves[shelf-1].maxTempID = ID;                                
; 246 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |245| 
        MOV       T,#35                 ; [CPU_] |245| 
        MOVL      XAR4,#_System+15      ; [CPU_U] |245| 
        MPYXU     ACC,T,AL              ; [CPU_] |245| 
        ADDL      XAR4,ACC              ; [CPU_] |245| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |245| 
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$61, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$61, DW_AT_TI_end_line(0xf7)
	.dwattr $C$DW$61, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$61

	.sect	".text"
	.clink
	.global	_setShelfMaxTemp

$C$DW$66	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$66, DW_AT_name("setShelfMaxTemp")
	.dwattr $C$DW$66, DW_AT_low_pc(_setShelfMaxTemp)
	.dwattr $C$DW$66, DW_AT_high_pc(0x00)
	.dwattr $C$DW$66, DW_AT_TI_symbol_name("_setShelfMaxTemp")
	.dwattr $C$DW$66, DW_AT_external
	.dwattr $C$DW$66, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$66, DW_AT_TI_begin_line(0xe7)
	.dwattr $C$DW$66, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$66, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 232,column 1,is_stmt,address _setShelfMaxTemp,isa 0

	.dwfde $C$DW$CIE, _setShelfMaxTemp
$C$DW$67	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$67, DW_AT_name("shelf")
	.dwattr $C$DW$67, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$67, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg0]

$C$DW$68	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$68, DW_AT_name("temperature")
	.dwattr $C$DW$68, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$68, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 231 | void setShelfMaxTemp(Uint16 shelf, Uint16 temperature)                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfMaxTemp              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfMaxTemp:
;* AR6   assigned to _temperature
$C$DW$69	.dwtag  DW_TAG_variable
	.dwattr $C$DW$69, DW_AT_name("temperature")
	.dwattr $C$DW$69, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$69, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |232| 
	.dwpsn	file "../Source/System_Object.c",line 233,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 233 | System.shelves[shelf-1].maxTemp = temperature;                         
; 234 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |233| 
        MOV       T,#35                 ; [CPU_] |233| 
        MOVL      XAR4,#_System+13      ; [CPU_U] |233| 
        MPYXU     ACC,T,AL              ; [CPU_] |233| 
        ADDL      XAR4,ACC              ; [CPU_] |233| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |233| 
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$66, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$66, DW_AT_TI_end_line(0xeb)
	.dwattr $C$DW$66, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$66

	.sect	".text"
	.clink
	.global	_setShelfErrors

$C$DW$71	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$71, DW_AT_name("setShelfErrors")
	.dwattr $C$DW$71, DW_AT_low_pc(_setShelfErrors)
	.dwattr $C$DW$71, DW_AT_high_pc(0x00)
	.dwattr $C$DW$71, DW_AT_TI_symbol_name("_setShelfErrors")
	.dwattr $C$DW$71, DW_AT_external
	.dwattr $C$DW$71, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$71, DW_AT_TI_begin_line(0x121)
	.dwattr $C$DW$71, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$71, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 290,column 1,is_stmt,address _setShelfErrors,isa 0

	.dwfde $C$DW$CIE, _setShelfErrors
$C$DW$72	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$72, DW_AT_name("shelf")
	.dwattr $C$DW$72, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$72, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg0]

$C$DW$73	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$73, DW_AT_name("errors")
	.dwattr $C$DW$73, DW_AT_TI_symbol_name("_errors")
	.dwattr $C$DW$73, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 289 | void setShelfErrors(Uint16 shelf, Uint16 errors)                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfErrors               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfErrors:
;* AR6   assigned to _errors
$C$DW$74	.dwtag  DW_TAG_variable
	.dwattr $C$DW$74, DW_AT_name("errors")
	.dwattr $C$DW$74, DW_AT_TI_symbol_name("_errors")
	.dwattr $C$DW$74, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |290| 
	.dwpsn	file "../Source/System_Object.c",line 291,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 291 | System.shelves[shelf-1].errors = errors;                               
; 292 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |291| 
        MOV       T,#35                 ; [CPU_] |291| 
        MOVL      XAR4,#_System+18      ; [CPU_U] |291| 
        MPYXU     ACC,T,AL              ; [CPU_] |291| 
        ADDL      XAR4,ACC              ; [CPU_] |291| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |291| 
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$71, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$71, DW_AT_TI_end_line(0x125)
	.dwattr $C$DW$71, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$71

	.sect	".text"
	.clink
	.global	_setShelfAvgTemp

$C$DW$76	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$76, DW_AT_name("setShelfAvgTemp")
	.dwattr $C$DW$76, DW_AT_low_pc(_setShelfAvgTemp)
	.dwattr $C$DW$76, DW_AT_high_pc(0x00)
	.dwattr $C$DW$76, DW_AT_TI_symbol_name("_setShelfAvgTemp")
	.dwattr $C$DW$76, DW_AT_external
	.dwattr $C$DW$76, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$76, DW_AT_TI_begin_line(0xdb)
	.dwattr $C$DW$76, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$76, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 220,column 1,is_stmt,address _setShelfAvgTemp,isa 0

	.dwfde $C$DW$CIE, _setShelfAvgTemp
$C$DW$77	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$77, DW_AT_name("shelf")
	.dwattr $C$DW$77, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$77, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg0]

$C$DW$78	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$78, DW_AT_name("temperature")
	.dwattr $C$DW$78, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$78, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 219 | void setShelfAvgTemp(Uint16 shelf, Uint16 temperature)                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfAvgTemp              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfAvgTemp:
;* AR6   assigned to _temperature
$C$DW$79	.dwtag  DW_TAG_variable
	.dwattr $C$DW$79, DW_AT_name("temperature")
	.dwattr $C$DW$79, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$79, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |220| 
	.dwpsn	file "../Source/System_Object.c",line 221,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 221 | System.shelves[shelf-1].avgTemperature = temperature;                  
; 222 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |221| 
        MOV       T,#35                 ; [CPU_] |221| 
        MOVL      XAR4,#_System+12      ; [CPU_U] |221| 
        MPYXU     ACC,T,AL              ; [CPU_] |221| 
        ADDL      XAR4,ACC              ; [CPU_] |221| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |221| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$76, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$76, DW_AT_TI_end_line(0xdf)
	.dwattr $C$DW$76, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$76

	.sect	".text"
	.clink
	.global	_setShelfAlarms

$C$DW$81	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$81, DW_AT_name("setShelfAlarms")
	.dwattr $C$DW$81, DW_AT_low_pc(_setShelfAlarms)
	.dwattr $C$DW$81, DW_AT_high_pc(0x00)
	.dwattr $C$DW$81, DW_AT_TI_symbol_name("_setShelfAlarms")
	.dwattr $C$DW$81, DW_AT_external
	.dwattr $C$DW$81, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$81, DW_AT_TI_begin_line(0x116)
	.dwattr $C$DW$81, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$81, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 279,column 1,is_stmt,address _setShelfAlarms,isa 0

	.dwfde $C$DW$CIE, _setShelfAlarms
$C$DW$82	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$82, DW_AT_name("shelf")
	.dwattr $C$DW$82, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$82, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$82, DW_AT_location[DW_OP_reg0]

$C$DW$83	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$83, DW_AT_name("alarms")
	.dwattr $C$DW$83, DW_AT_TI_symbol_name("_alarms")
	.dwattr $C$DW$83, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$83, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 278 | void setShelfAlarms(Uint16 shelf, Uint16 alarms)                       
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setShelfAlarms               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setShelfAlarms:
;* AR6   assigned to _alarms
$C$DW$84	.dwtag  DW_TAG_variable
	.dwattr $C$DW$84, DW_AT_name("alarms")
	.dwattr $C$DW$84, DW_AT_TI_symbol_name("_alarms")
	.dwattr $C$DW$84, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$84, DW_AT_location[DW_OP_reg16]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVZ      AR6,AH                ; [CPU_] |279| 
	.dwpsn	file "../Source/System_Object.c",line 280,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 280 | System.shelves[shelf-1].alarms = alarms;                               
; 281 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |280| 
        MOV       T,#35                 ; [CPU_] |280| 
        MOVL      XAR4,#_System+17      ; [CPU_U] |280| 
        MPYXU     ACC,T,AL              ; [CPU_] |280| 
        ADDL      XAR4,ACC              ; [CPU_] |280| 
        MOV       *+XAR4[0],AR6         ; [CPU_] |280| 
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$81, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$81, DW_AT_TI_end_line(0x11a)
	.dwattr $C$DW$81, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$81

	.sect	".text"
	.clink
	.global	_setSSRelay

$C$DW$86	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$86, DW_AT_name("setSSRelay")
	.dwattr $C$DW$86, DW_AT_low_pc(_setSSRelay)
	.dwattr $C$DW$86, DW_AT_high_pc(0x00)
	.dwattr $C$DW$86, DW_AT_TI_symbol_name("_setSSRelay")
	.dwattr $C$DW$86, DW_AT_external
	.dwattr $C$DW$86, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$86, DW_AT_TI_begin_line(0x5a)
	.dwattr $C$DW$86, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$86, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 91,column 1,is_stmt,address _setSSRelay,isa 0

	.dwfde $C$DW$CIE, _setSSRelay
$C$DW$87	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$87, DW_AT_name("ssRelay")
	.dwattr $C$DW$87, DW_AT_TI_symbol_name("_ssRelay")
	.dwattr $C$DW$87, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$87, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
;  90 | void setSSRelay(Uint16 ssRelay)                                        
;  92 | //System.ssRelay = ssRelay;                                            
;  93 | return;                                                                
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setSSRelay                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setSSRelay:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$86, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$86, DW_AT_TI_end_line(0x5e)
	.dwattr $C$DW$86, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$86

	.sect	".text"
	.clink
	.global	_setModVoltage

$C$DW$89	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$89, DW_AT_name("setModVoltage")
	.dwattr $C$DW$89, DW_AT_low_pc(_setModVoltage)
	.dwattr $C$DW$89, DW_AT_high_pc(0x00)
	.dwattr $C$DW$89, DW_AT_TI_symbol_name("_setModVoltage")
	.dwattr $C$DW$89, DW_AT_external
	.dwattr $C$DW$89, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$89, DW_AT_TI_begin_line(0x12d)
	.dwattr $C$DW$89, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$89, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 302,column 1,is_stmt,address _setModVoltage,isa 0

	.dwfde $C$DW$CIE, _setModVoltage
$C$DW$90	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$90, DW_AT_name("shelf")
	.dwattr $C$DW$90, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$90, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$90, DW_AT_location[DW_OP_reg0]

$C$DW$91	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$91, DW_AT_name("mod")
	.dwattr $C$DW$91, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$91, DW_AT_location[DW_OP_reg1]

$C$DW$92	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$92, DW_AT_name("voltage")
	.dwattr $C$DW$92, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$92, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$92, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 301 | void setModVoltage(Uint16 shelf, Uint16 mod, Uint16 voltage)           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setModVoltage                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setModVoltage:
;* AR4   assigned to _voltage
$C$DW$93	.dwtag  DW_TAG_variable
	.dwattr $C$DW$93, DW_AT_name("voltage")
	.dwattr $C$DW$93, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$93, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$93, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 303,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 303 | System.shelves[shelf-1].modules[mod-1].voltage = voltage;              
; 304 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |303| 
        MOV       T,#35                 ; [CPU_] |303| 
        ADDB      AH,#-1                ; [CPU_] |303| 
        MOVL      XAR5,#_System+19      ; [CPU_U] |303| 
        MPYXU     P,T,AL                ; [CPU_] |303| 
        MOV       T,#3                  ; [CPU_] |303| 
        MPYXU     ACC,T,AH              ; [CPU_] |303| 
        ADDL      ACC,P                 ; [CPU_] |303| 
        ADDL      XAR5,ACC              ; [CPU_] |303| 
        MOV       *+XAR5[0],AR4         ; [CPU_] |303| 
$C$DW$94	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$94, DW_AT_low_pc(0x00)
	.dwattr $C$DW$94, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$89, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$89, DW_AT_TI_end_line(0x131)
	.dwattr $C$DW$89, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$89

	.sect	".text"
	.clink
	.global	_setModTemp

$C$DW$95	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$95, DW_AT_name("setModTemp")
	.dwattr $C$DW$95, DW_AT_low_pc(_setModTemp)
	.dwattr $C$DW$95, DW_AT_high_pc(0x00)
	.dwattr $C$DW$95, DW_AT_TI_symbol_name("_setModTemp")
	.dwattr $C$DW$95, DW_AT_external
	.dwattr $C$DW$95, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$95, DW_AT_TI_begin_line(0x139)
	.dwattr $C$DW$95, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$95, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 314,column 1,is_stmt,address _setModTemp,isa 0

	.dwfde $C$DW$CIE, _setModTemp
$C$DW$96	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$96, DW_AT_name("shelf")
	.dwattr $C$DW$96, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$96, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$96, DW_AT_location[DW_OP_reg0]

$C$DW$97	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$97, DW_AT_name("mod")
	.dwattr $C$DW$97, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$97, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$97, DW_AT_location[DW_OP_reg1]

$C$DW$98	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$98, DW_AT_name("temperature")
	.dwattr $C$DW$98, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$98, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 313 | void setModTemp(Uint16 shelf, Uint16 mod, Uint16 temperature)          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setModTemp                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setModTemp:
;* AR4   assigned to _temperature
$C$DW$99	.dwtag  DW_TAG_variable
	.dwattr $C$DW$99, DW_AT_name("temperature")
	.dwattr $C$DW$99, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$99, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 315,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 315 | System.shelves[shelf-1].modules[mod-1].temperature = temperature;      
; 316 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |315| 
        MOV       T,#35                 ; [CPU_] |315| 
        ADDB      AH,#-1                ; [CPU_] |315| 
        MOVL      XAR5,#_System+20      ; [CPU_U] |315| 
        MPYXU     P,T,AL                ; [CPU_] |315| 
        MOV       T,#3                  ; [CPU_] |315| 
        MPYXU     ACC,T,AH              ; [CPU_] |315| 
        ADDL      ACC,P                 ; [CPU_] |315| 
        ADDL      XAR5,ACC              ; [CPU_] |315| 
        MOV       *+XAR5[0],AR4         ; [CPU_] |315| 
$C$DW$100	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$100, DW_AT_low_pc(0x00)
	.dwattr $C$DW$100, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$95, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$95, DW_AT_TI_end_line(0x13d)
	.dwattr $C$DW$95, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$95

	.sect	".text"
	.clink
	.global	_setModAlarms

$C$DW$101	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$101, DW_AT_name("setModAlarms")
	.dwattr $C$DW$101, DW_AT_low_pc(_setModAlarms)
	.dwattr $C$DW$101, DW_AT_high_pc(0x00)
	.dwattr $C$DW$101, DW_AT_TI_symbol_name("_setModAlarms")
	.dwattr $C$DW$101, DW_AT_external
	.dwattr $C$DW$101, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$101, DW_AT_TI_begin_line(0x145)
	.dwattr $C$DW$101, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$101, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 326,column 1,is_stmt,address _setModAlarms,isa 0

	.dwfde $C$DW$CIE, _setModAlarms
$C$DW$102	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$102, DW_AT_name("shelf")
	.dwattr $C$DW$102, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$102, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg0]

$C$DW$103	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$103, DW_AT_name("mod")
	.dwattr $C$DW$103, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$103, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg1]

$C$DW$104	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$104, DW_AT_name("alarms")
	.dwattr $C$DW$104, DW_AT_TI_symbol_name("_alarms")
	.dwattr $C$DW$104, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg12]

;----------------------------------------------------------------------
; 325 | void setModAlarms(Uint16 shelf, Uint16 mod, Uint16 alarms)             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _setModAlarms                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_setModAlarms:
;* AR4   assigned to _alarms
$C$DW$105	.dwtag  DW_TAG_variable
	.dwattr $C$DW$105, DW_AT_name("alarms")
	.dwattr $C$DW$105, DW_AT_TI_symbol_name("_alarms")
	.dwattr $C$DW$105, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg12]

	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 327,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 327 | System.shelves[shelf-1].modules[mod-1].alarms = alarms;                
; 328 | return;                                                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |327| 
        MOV       T,#35                 ; [CPU_] |327| 
        ADDB      AH,#-1                ; [CPU_] |327| 
        MOVL      XAR5,#_System+21      ; [CPU_U] |327| 
        MPYXU     P,T,AL                ; [CPU_] |327| 
        MOV       T,#3                  ; [CPU_] |327| 
        MPYXU     ACC,T,AH              ; [CPU_] |327| 
        ADDL      ACC,P                 ; [CPU_] |327| 
        ADDL      XAR5,ACC              ; [CPU_] |327| 
        MOV       *+XAR5[0],AR4         ; [CPU_] |327| 
$C$DW$106	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$106, DW_AT_low_pc(0x00)
	.dwattr $C$DW$106, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$101, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$101, DW_AT_TI_end_line(0x149)
	.dwattr $C$DW$101, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$101

	.sect	".text"
	.clink
	.global	_getSystemStatus

$C$DW$107	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$107, DW_AT_name("getSystemStatus")
	.dwattr $C$DW$107, DW_AT_low_pc(_getSystemStatus)
	.dwattr $C$DW$107, DW_AT_high_pc(0x00)
	.dwattr $C$DW$107, DW_AT_TI_symbol_name("_getSystemStatus")
	.dwattr $C$DW$107, DW_AT_external
	.dwattr $C$DW$107, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$107, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$107, DW_AT_TI_begin_line(0x34)
	.dwattr $C$DW$107, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$107, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 53,column 1,is_stmt,address _getSystemStatus,isa 0

	.dwfde $C$DW$CIE, _getSystemStatus
;----------------------------------------------------------------------
;  52 | Uint16 getSystemStatus()                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemStatus              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemStatus:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System           ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 54,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  54 | return System.status;                                                  
;----------------------------------------------------------------------
        MOV       AL,@_System           ; [CPU_] |54| 
$C$DW$108	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$108, DW_AT_low_pc(0x00)
	.dwattr $C$DW$108, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$107, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$107, DW_AT_TI_end_line(0x37)
	.dwattr $C$DW$107, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$107

	.sect	".text"
	.clink
	.global	_getSystemSSRelay

$C$DW$109	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$109, DW_AT_name("getSystemSSRelay")
	.dwattr $C$DW$109, DW_AT_low_pc(_getSystemSSRelay)
	.dwattr $C$DW$109, DW_AT_high_pc(0x00)
	.dwattr $C$DW$109, DW_AT_TI_symbol_name("_getSystemSSRelay")
	.dwattr $C$DW$109, DW_AT_external
	.dwattr $C$DW$109, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$109, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$109, DW_AT_TI_begin_line(0x55)
	.dwattr $C$DW$109, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$109, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 86,column 1,is_stmt,address _getSystemSSRelay,isa 0

	.dwfde $C$DW$CIE, _getSystemSSRelay
;----------------------------------------------------------------------
;  85 | Uint16 getSystemSSRelay()                                              
;  87 | //return System.ssRelay;                                               
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemSSRelay             FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemSSRelay:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$110	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$110, DW_AT_low_pc(0x00)
	.dwattr $C$DW$110, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$109, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$109, DW_AT_TI_end_line(0x58)
	.dwattr $C$DW$109, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$109

	.sect	".text"
	.clink
	.global	_getSystemRuntimeFL

$C$DW$111	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$111, DW_AT_name("getSystemRuntimeFL")
	.dwattr $C$DW$111, DW_AT_low_pc(_getSystemRuntimeFL)
	.dwattr $C$DW$111, DW_AT_high_pc(0x00)
	.dwattr $C$DW$111, DW_AT_TI_symbol_name("_getSystemRuntimeFL")
	.dwattr $C$DW$111, DW_AT_external
	.dwattr $C$DW$111, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$111, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$111, DW_AT_TI_begin_line(0xa7)
	.dwattr $C$DW$111, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$111, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 168,column 1,is_stmt,address _getSystemRuntimeFL,isa 0

	.dwfde $C$DW$CIE, _getSystemRuntimeFL
;----------------------------------------------------------------------
; 167 | Uint16 getSystemRuntimeFL()                                            
; 169 | //return System.runtimeFL;                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemRuntimeFL           FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemRuntimeFL:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$112	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$112, DW_AT_low_pc(0x00)
	.dwattr $C$DW$112, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$111, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$111, DW_AT_TI_end_line(0xaa)
	.dwattr $C$DW$111, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$111

	.sect	".text"
	.clink
	.global	_getSystemRuntimeEst

$C$DW$113	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$113, DW_AT_name("getSystemRuntimeEst")
	.dwattr $C$DW$113, DW_AT_low_pc(_getSystemRuntimeEst)
	.dwattr $C$DW$113, DW_AT_high_pc(0x00)
	.dwattr $C$DW$113, DW_AT_TI_symbol_name("_getSystemRuntimeEst")
	.dwattr $C$DW$113, DW_AT_external
	.dwattr $C$DW$113, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$113, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$113, DW_AT_TI_begin_line(0xb3)
	.dwattr $C$DW$113, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$113, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 180,column 1,is_stmt,address _getSystemRuntimeEst,isa 0

	.dwfde $C$DW$CIE, _getSystemRuntimeEst
;----------------------------------------------------------------------
; 179 | Uint16 getSystemRuntimeEst()                                           
; 181 | //return System.runtimeEst;                                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemRuntimeEst          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemRuntimeEst:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$114	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$114, DW_AT_low_pc(0x00)
	.dwattr $C$DW$114, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$113, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$113, DW_AT_TI_end_line(0xb6)
	.dwattr $C$DW$113, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$113

	.sect	".text"
	.clink
	.global	_getSystemOutCurrentF

$C$DW$115	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$115, DW_AT_name("getSystemOutCurrentF")
	.dwattr $C$DW$115, DW_AT_low_pc(_getSystemOutCurrentF)
	.dwattr $C$DW$115, DW_AT_high_pc(0x00)
	.dwattr $C$DW$115, DW_AT_TI_symbol_name("_getSystemOutCurrentF")
	.dwattr $C$DW$115, DW_AT_external
	.dwattr $C$DW$115, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$115, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$115, DW_AT_TI_begin_line(0x97)
	.dwattr $C$DW$115, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$115, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 152,column 1,is_stmt,address _getSystemOutCurrentF,isa 0

	.dwfde $C$DW$CIE, _getSystemOutCurrentF
;----------------------------------------------------------------------
; 151 | float getSystemOutCurrentF()                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemOutCurrentF         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemOutCurrentF:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+8         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 153,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 153 | return System.outCurrentF;                                             
;----------------------------------------------------------------------
        MOVL      ACC,@_System+8        ; [CPU_] |153| 
$C$DW$116	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$116, DW_AT_low_pc(0x00)
	.dwattr $C$DW$116, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$115, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$115, DW_AT_TI_end_line(0x9a)
	.dwattr $C$DW$115, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$115

	.sect	".text"
	.clink
	.global	_getSystemOutCurrent

$C$DW$117	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$117, DW_AT_name("getSystemOutCurrent")
	.dwattr $C$DW$117, DW_AT_low_pc(_getSystemOutCurrent)
	.dwattr $C$DW$117, DW_AT_high_pc(0x00)
	.dwattr $C$DW$117, DW_AT_TI_symbol_name("_getSystemOutCurrent")
	.dwattr $C$DW$117, DW_AT_external
	.dwattr $C$DW$117, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$117, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$117, DW_AT_TI_begin_line(0x76)
	.dwattr $C$DW$117, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$117, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 119,column 1,is_stmt,address _getSystemOutCurrent,isa 0

	.dwfde $C$DW$CIE, _getSystemOutCurrent
;----------------------------------------------------------------------
; 118 | Uint16 getSystemOutCurrent()                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemOutCurrent          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemOutCurrent:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+3         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 120,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 120 | return System.outCurrent;                                              
;----------------------------------------------------------------------
        MOV       AL,@_System+3         ; [CPU_] |120| 
$C$DW$118	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$118, DW_AT_low_pc(0x00)
	.dwattr $C$DW$118, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$117, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$117, DW_AT_TI_end_line(0x79)
	.dwattr $C$DW$117, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$117

	.sect	".text"
	.clink
	.global	_getSystemNumDischarges

$C$DW$119	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$119, DW_AT_name("getSystemNumDischarges")
	.dwattr $C$DW$119, DW_AT_low_pc(_getSystemNumDischarges)
	.dwattr $C$DW$119, DW_AT_high_pc(0x00)
	.dwattr $C$DW$119, DW_AT_TI_symbol_name("_getSystemNumDischarges")
	.dwattr $C$DW$119, DW_AT_external
	.dwattr $C$DW$119, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$119, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$119, DW_AT_TI_begin_line(0x60)
	.dwattr $C$DW$119, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$119, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 97,column 1,is_stmt,address _getSystemNumDischarges,isa 0

	.dwfde $C$DW$CIE, _getSystemNumDischarges
;----------------------------------------------------------------------
;  96 | Uint16 getSystemNumDischarges()                                        
;  98 | //return System.numDischarges;                                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemNumDischarges       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemNumDischarges:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
$C$DW$120	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$120, DW_AT_low_pc(0x00)
	.dwattr $C$DW$120, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$119, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$119, DW_AT_TI_end_line(0x63)
	.dwattr $C$DW$119, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$119

	.sect	".text"
	.clink
	.global	_getSystemMode

$C$DW$121	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$121, DW_AT_name("getSystemMode")
	.dwattr $C$DW$121, DW_AT_low_pc(_getSystemMode)
	.dwattr $C$DW$121, DW_AT_high_pc(0x00)
	.dwattr $C$DW$121, DW_AT_TI_symbol_name("_getSystemMode")
	.dwattr $C$DW$121, DW_AT_external
	.dwattr $C$DW$121, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$121, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$121, DW_AT_TI_begin_line(0x3f)
	.dwattr $C$DW$121, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$121, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 64,column 1,is_stmt,address _getSystemMode,isa 0

	.dwfde $C$DW$CIE, _getSystemMode
;----------------------------------------------------------------------
;  63 | Uint16 getSystemMode()                                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemMode                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemMode:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+1         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 65,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  65 | return System.mode;                                                    
;----------------------------------------------------------------------
        MOV       AL,@_System+1         ; [CPU_] |65| 
$C$DW$122	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$122, DW_AT_low_pc(0x00)
	.dwattr $C$DW$122, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$121, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$121, DW_AT_TI_end_line(0x42)
	.dwattr $C$DW$121, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$121

	.sect	".text"
	.clink
	.global	_getSystemIsoRelay

$C$DW$123	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$123, DW_AT_name("getSystemIsoRelay")
	.dwattr $C$DW$123, DW_AT_low_pc(_getSystemIsoRelay)
	.dwattr $C$DW$123, DW_AT_high_pc(0x00)
	.dwattr $C$DW$123, DW_AT_TI_symbol_name("_getSystemIsoRelay")
	.dwattr $C$DW$123, DW_AT_external
	.dwattr $C$DW$123, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$123, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$123, DW_AT_TI_begin_line(0x4a)
	.dwattr $C$DW$123, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$123, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 75,column 1,is_stmt,address _getSystemIsoRelay,isa 0

	.dwfde $C$DW$CIE, _getSystemIsoRelay
;----------------------------------------------------------------------
;  74 | Uint16 getSystemIsoRelay()                                             
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemIsoRelay            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemIsoRelay:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+2         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 76,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
;  76 | return System.isoRelay;                                                
;----------------------------------------------------------------------
        MOV       AL,@_System+2         ; [CPU_] |76| 
$C$DW$124	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$124, DW_AT_low_pc(0x00)
	.dwattr $C$DW$124, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$123, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$123, DW_AT_TI_end_line(0x4d)
	.dwattr $C$DW$123, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$123

	.sect	".text"
	.clink
	.global	_getSystemCapVoltageF

$C$DW$125	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$125, DW_AT_name("getSystemCapVoltageF")
	.dwattr $C$DW$125, DW_AT_low_pc(_getSystemCapVoltageF)
	.dwattr $C$DW$125, DW_AT_high_pc(0x00)
	.dwattr $C$DW$125, DW_AT_TI_symbol_name("_getSystemCapVoltageF")
	.dwattr $C$DW$125, DW_AT_external
	.dwattr $C$DW$125, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$125, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$125, DW_AT_TI_begin_line(0x8c)
	.dwattr $C$DW$125, DW_AT_TI_begin_column(0x07)
	.dwattr $C$DW$125, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 141,column 1,is_stmt,address _getSystemCapVoltageF,isa 0

	.dwfde $C$DW$CIE, _getSystemCapVoltageF
;----------------------------------------------------------------------
; 140 | float getSystemCapVoltageF()                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemCapVoltageF         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemCapVoltageF:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+6         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 142,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 142 | return System.capVoltageF;                                             
;----------------------------------------------------------------------
        MOVL      ACC,@_System+6        ; [CPU_] |142| 
$C$DW$126	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$126, DW_AT_low_pc(0x00)
	.dwattr $C$DW$126, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$125, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$125, DW_AT_TI_end_line(0x8f)
	.dwattr $C$DW$125, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$125

	.sect	".text"
	.clink
	.global	_getSystemCapVoltage

$C$DW$127	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$127, DW_AT_name("getSystemCapVoltage")
	.dwattr $C$DW$127, DW_AT_low_pc(_getSystemCapVoltage)
	.dwattr $C$DW$127, DW_AT_high_pc(0x00)
	.dwattr $C$DW$127, DW_AT_TI_symbol_name("_getSystemCapVoltage")
	.dwattr $C$DW$127, DW_AT_external
	.dwattr $C$DW$127, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$127, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$127, DW_AT_TI_begin_line(0x80)
	.dwattr $C$DW$127, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$127, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 129,column 1,is_stmt,address _getSystemCapVoltage,isa 0

	.dwfde $C$DW$CIE, _getSystemCapVoltage
;----------------------------------------------------------------------
; 128 | Uint16 getSystemCapVoltage()                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemCapVoltage          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemCapVoltage:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+4         ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 130,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 130 | return System.capVoltage;                                              
;----------------------------------------------------------------------
        MOV       AL,@_System+4         ; [CPU_] |130| 
$C$DW$128	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$128, DW_AT_low_pc(0x00)
	.dwattr $C$DW$128, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$127, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$127, DW_AT_TI_end_line(0x83)
	.dwattr $C$DW$127, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$127

	.sect	".text"
	.clink
	.global	_getSystemBusVoltage

$C$DW$129	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$129, DW_AT_name("getSystemBusVoltage")
	.dwattr $C$DW$129, DW_AT_low_pc(_getSystemBusVoltage)
	.dwattr $C$DW$129, DW_AT_high_pc(0x00)
	.dwattr $C$DW$129, DW_AT_TI_symbol_name("_getSystemBusVoltage")
	.dwattr $C$DW$129, DW_AT_external
	.dwattr $C$DW$129, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$129, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$129, DW_AT_TI_begin_line(0x6b)
	.dwattr $C$DW$129, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$129, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 108,column 1,is_stmt,address _getSystemBusVoltage,isa 0

	.dwfde $C$DW$CIE, _getSystemBusVoltage
;----------------------------------------------------------------------
; 107 | Uint16 getSystemBusVoltage()                                           
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemBusVoltage          FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemBusVoltage:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 109,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 109 | return 0;//System.busVoltage;                                          
;----------------------------------------------------------------------
        MOVB      AL,#0                 ; [CPU_] |109| 
$C$DW$130	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$130, DW_AT_low_pc(0x00)
	.dwattr $C$DW$130, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$129, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$129, DW_AT_TI_end_line(0x6e)
	.dwattr $C$DW$129, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$129

	.sect	".text"
	.clink
	.global	_getSystemAvailEnergy

$C$DW$131	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$131, DW_AT_name("getSystemAvailEnergy")
	.dwattr $C$DW$131, DW_AT_low_pc(_getSystemAvailEnergy)
	.dwattr $C$DW$131, DW_AT_high_pc(0x00)
	.dwattr $C$DW$131, DW_AT_TI_symbol_name("_getSystemAvailEnergy")
	.dwattr $C$DW$131, DW_AT_external
	.dwattr $C$DW$131, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$131, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$131, DW_AT_TI_begin_line(0xbe)
	.dwattr $C$DW$131, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$131, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 191,column 1,is_stmt,address _getSystemAvailEnergy,isa 0

	.dwfde $C$DW$CIE, _getSystemAvailEnergy
;----------------------------------------------------------------------
; 190 | Uint16 getSystemAvailEnergy()                                          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getSystemAvailEnergy         FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getSystemAvailEnergy:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
        MOVW      DP,#_System+10        ; [CPU_U] 
	.dwpsn	file "../Source/System_Object.c",line 192,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 192 | return System.availEnergy;                                             
;----------------------------------------------------------------------
        MOV       AL,@_System+10        ; [CPU_] |192| 
$C$DW$132	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$132, DW_AT_low_pc(0x00)
	.dwattr $C$DW$132, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$131, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$131, DW_AT_TI_end_line(0xc1)
	.dwattr $C$DW$131, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$131

	.sect	".text"
	.clink
	.global	_getShelfVoltage

$C$DW$133	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$133, DW_AT_name("getShelfVoltage")
	.dwattr $C$DW$133, DW_AT_low_pc(_getShelfVoltage)
	.dwattr $C$DW$133, DW_AT_high_pc(0x00)
	.dwattr $C$DW$133, DW_AT_TI_symbol_name("_getShelfVoltage")
	.dwattr $C$DW$133, DW_AT_external
	.dwattr $C$DW$133, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$133, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$133, DW_AT_TI_begin_line(0xca)
	.dwattr $C$DW$133, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$133, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 203,column 1,is_stmt,address _getShelfVoltage,isa 0

	.dwfde $C$DW$CIE, _getShelfVoltage
$C$DW$134	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$134, DW_AT_name("shelf")
	.dwattr $C$DW$134, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$134, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$134, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 202 | Uint16 getShelfVoltage(Uint16 shelf)                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfVoltage              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfVoltage:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 204,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 204 | return System.shelves[shelf-1].totalVoltage;                           
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |204| 
        MOV       T,#35                 ; [CPU_] |204| 
        MOVL      XAR4,#_System+11      ; [CPU_U] |204| 
        MPYXU     ACC,T,AL              ; [CPU_] |204| 
        ADDL      XAR4,ACC              ; [CPU_] |204| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |204| 
$C$DW$135	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$135, DW_AT_low_pc(0x00)
	.dwattr $C$DW$135, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$133, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$133, DW_AT_TI_end_line(0xcd)
	.dwattr $C$DW$133, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$133

	.sect	".text"
	.clink
	.global	_getShelfMinTempID

$C$DW$136	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$136, DW_AT_name("getShelfMinTempID")
	.dwattr $C$DW$136, DW_AT_low_pc(_getShelfMinTempID)
	.dwattr $C$DW$136, DW_AT_high_pc(0x00)
	.dwattr $C$DW$136, DW_AT_TI_symbol_name("_getShelfMinTempID")
	.dwattr $C$DW$136, DW_AT_external
	.dwattr $C$DW$136, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$136, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$136, DW_AT_TI_begin_line(0x105)
	.dwattr $C$DW$136, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$136, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 262,column 1,is_stmt,address _getShelfMinTempID,isa 0

	.dwfde $C$DW$CIE, _getShelfMinTempID
$C$DW$137	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$137, DW_AT_name("shelf")
	.dwattr $C$DW$137, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$137, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$137, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 261 | Uint16 getShelfMinTempID(Uint16 shelf)                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfMinTempID            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfMinTempID:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 263,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 263 | return System.shelves[shelf-1].minTempID;                              
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |263| 
        MOV       T,#35                 ; [CPU_] |263| 
        MOVL      XAR4,#_System+16      ; [CPU_U] |263| 
        MPYXU     ACC,T,AL              ; [CPU_] |263| 
        ADDL      XAR4,ACC              ; [CPU_] |263| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |263| 
$C$DW$138	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$138, DW_AT_low_pc(0x00)
	.dwattr $C$DW$138, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$136, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$136, DW_AT_TI_end_line(0x108)
	.dwattr $C$DW$136, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$136

	.sect	".text"
	.clink
	.global	_getShelfMinTemp

$C$DW$139	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$139, DW_AT_name("getShelfMinTemp")
	.dwattr $C$DW$139, DW_AT_low_pc(_getShelfMinTemp)
	.dwattr $C$DW$139, DW_AT_high_pc(0x00)
	.dwattr $C$DW$139, DW_AT_TI_symbol_name("_getShelfMinTemp")
	.dwattr $C$DW$139, DW_AT_external
	.dwattr $C$DW$139, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$139, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$139, DW_AT_TI_begin_line(0xfa)
	.dwattr $C$DW$139, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$139, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 251,column 1,is_stmt,address _getShelfMinTemp,isa 0

	.dwfde $C$DW$CIE, _getShelfMinTemp
$C$DW$140	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$140, DW_AT_name("shelf")
	.dwattr $C$DW$140, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$140, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$140, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 250 | Uint16 getShelfMinTemp(Uint16 shelf)                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfMinTemp              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfMinTemp:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 252,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 252 | return System.shelves[shelf-1].minTemp;                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |252| 
        MOV       T,#35                 ; [CPU_] |252| 
        MOVL      XAR4,#_System+14      ; [CPU_U] |252| 
        MPYXU     ACC,T,AL              ; [CPU_] |252| 
        ADDL      XAR4,ACC              ; [CPU_] |252| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |252| 
$C$DW$141	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$141, DW_AT_low_pc(0x00)
	.dwattr $C$DW$141, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$139, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$139, DW_AT_TI_end_line(0xfd)
	.dwattr $C$DW$139, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$139

	.sect	".text"
	.clink
	.global	_getShelfMaxTempID

$C$DW$142	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$142, DW_AT_name("getShelfMaxTempID")
	.dwattr $C$DW$142, DW_AT_low_pc(_getShelfMaxTempID)
	.dwattr $C$DW$142, DW_AT_high_pc(0x00)
	.dwattr $C$DW$142, DW_AT_TI_symbol_name("_getShelfMaxTempID")
	.dwattr $C$DW$142, DW_AT_external
	.dwattr $C$DW$142, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$142, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$142, DW_AT_TI_begin_line(0xee)
	.dwattr $C$DW$142, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$142, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 239,column 1,is_stmt,address _getShelfMaxTempID,isa 0

	.dwfde $C$DW$CIE, _getShelfMaxTempID
$C$DW$143	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$143, DW_AT_name("shelf")
	.dwattr $C$DW$143, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$143, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$143, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 238 | Uint16 getShelfMaxTempID(Uint16 shelf)                                 
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfMaxTempID            FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfMaxTempID:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 240,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 240 | return System.shelves[shelf-1].maxTempID;                              
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |240| 
        MOV       T,#35                 ; [CPU_] |240| 
        MOVL      XAR4,#_System+15      ; [CPU_U] |240| 
        MPYXU     ACC,T,AL              ; [CPU_] |240| 
        ADDL      XAR4,ACC              ; [CPU_] |240| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |240| 
$C$DW$144	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$144, DW_AT_low_pc(0x00)
	.dwattr $C$DW$144, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$142, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$142, DW_AT_TI_end_line(0xf1)
	.dwattr $C$DW$142, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$142

	.sect	".text"
	.clink
	.global	_getShelfMaxTemp

$C$DW$145	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$145, DW_AT_name("getShelfMaxTemp")
	.dwattr $C$DW$145, DW_AT_low_pc(_getShelfMaxTemp)
	.dwattr $C$DW$145, DW_AT_high_pc(0x00)
	.dwattr $C$DW$145, DW_AT_TI_symbol_name("_getShelfMaxTemp")
	.dwattr $C$DW$145, DW_AT_external
	.dwattr $C$DW$145, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$145, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$145, DW_AT_TI_begin_line(0xe2)
	.dwattr $C$DW$145, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$145, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 227,column 1,is_stmt,address _getShelfMaxTemp,isa 0

	.dwfde $C$DW$CIE, _getShelfMaxTemp
$C$DW$146	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$146, DW_AT_name("shelf")
	.dwattr $C$DW$146, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$146, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$146, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 226 | Uint16 getShelfMaxTemp(Uint16 shelf)                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfMaxTemp              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfMaxTemp:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 228,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 228 | return System.shelves[shelf-1].maxTemp;                                
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |228| 
        MOV       T,#35                 ; [CPU_] |228| 
        MOVL      XAR4,#_System+13      ; [CPU_U] |228| 
        MPYXU     ACC,T,AL              ; [CPU_] |228| 
        ADDL      XAR4,ACC              ; [CPU_] |228| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |228| 
$C$DW$147	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$147, DW_AT_low_pc(0x00)
	.dwattr $C$DW$147, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$145, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$145, DW_AT_TI_end_line(0xe5)
	.dwattr $C$DW$145, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$145

	.sect	".text"
	.clink
	.global	_getShelfErrors

$C$DW$148	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$148, DW_AT_name("getShelfErrors")
	.dwattr $C$DW$148, DW_AT_low_pc(_getShelfErrors)
	.dwattr $C$DW$148, DW_AT_high_pc(0x00)
	.dwattr $C$DW$148, DW_AT_TI_symbol_name("_getShelfErrors")
	.dwattr $C$DW$148, DW_AT_external
	.dwattr $C$DW$148, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$148, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$148, DW_AT_TI_begin_line(0x11c)
	.dwattr $C$DW$148, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$148, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 285,column 1,is_stmt,address _getShelfErrors,isa 0

	.dwfde $C$DW$CIE, _getShelfErrors
$C$DW$149	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$149, DW_AT_name("shelf")
	.dwattr $C$DW$149, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$149, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$149, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 284 | Uint16 getShelfErrors(Uint16 shelf)                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfErrors               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfErrors:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 286,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 286 | return System.shelves[shelf-1].errors;                                 
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |286| 
        MOV       T,#35                 ; [CPU_] |286| 
        MOVL      XAR4,#_System+18      ; [CPU_U] |286| 
        MPYXU     ACC,T,AL              ; [CPU_] |286| 
        ADDL      XAR4,ACC              ; [CPU_] |286| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |286| 
$C$DW$150	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$150, DW_AT_low_pc(0x00)
	.dwattr $C$DW$150, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$148, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$148, DW_AT_TI_end_line(0x11f)
	.dwattr $C$DW$148, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$148

	.sect	".text"
	.clink
	.global	_getShelfAvgTemp

$C$DW$151	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$151, DW_AT_name("getShelfAvgTemp")
	.dwattr $C$DW$151, DW_AT_low_pc(_getShelfAvgTemp)
	.dwattr $C$DW$151, DW_AT_high_pc(0x00)
	.dwattr $C$DW$151, DW_AT_TI_symbol_name("_getShelfAvgTemp")
	.dwattr $C$DW$151, DW_AT_external
	.dwattr $C$DW$151, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$151, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$151, DW_AT_TI_begin_line(0xd6)
	.dwattr $C$DW$151, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$151, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 215,column 1,is_stmt,address _getShelfAvgTemp,isa 0

	.dwfde $C$DW$CIE, _getShelfAvgTemp
$C$DW$152	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$152, DW_AT_name("shelf")
	.dwattr $C$DW$152, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$152, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$152, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 214 | Uint16 getShelfAvgTemp(Uint16 shelf)                                   
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfAvgTemp              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfAvgTemp:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 216,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 216 | return System.shelves[shelf-1].avgTemperature;                         
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |216| 
        MOV       T,#35                 ; [CPU_] |216| 
        MOVL      XAR4,#_System+12      ; [CPU_U] |216| 
        MPYXU     ACC,T,AL              ; [CPU_] |216| 
        ADDL      XAR4,ACC              ; [CPU_] |216| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |216| 
$C$DW$153	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$153, DW_AT_low_pc(0x00)
	.dwattr $C$DW$153, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$151, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$151, DW_AT_TI_end_line(0xd9)
	.dwattr $C$DW$151, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$151

	.sect	".text"
	.clink
	.global	_getShelfAlarms

$C$DW$154	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$154, DW_AT_name("getShelfAlarms")
	.dwattr $C$DW$154, DW_AT_low_pc(_getShelfAlarms)
	.dwattr $C$DW$154, DW_AT_high_pc(0x00)
	.dwattr $C$DW$154, DW_AT_TI_symbol_name("_getShelfAlarms")
	.dwattr $C$DW$154, DW_AT_external
	.dwattr $C$DW$154, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$154, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$154, DW_AT_TI_begin_line(0x111)
	.dwattr $C$DW$154, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$154, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 274,column 1,is_stmt,address _getShelfAlarms,isa 0

	.dwfde $C$DW$CIE, _getShelfAlarms
$C$DW$155	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$155, DW_AT_name("shelf")
	.dwattr $C$DW$155, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$155, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$155, DW_AT_location[DW_OP_reg0]

;----------------------------------------------------------------------
; 273 | Uint16 getShelfAlarms(Uint16 shelf)                                    
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getShelfAlarms               FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getShelfAlarms:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 275,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 275 | return System.shelves[shelf-1].alarms;                                 
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |275| 
        MOV       T,#35                 ; [CPU_] |275| 
        MOVL      XAR4,#_System+17      ; [CPU_U] |275| 
        MPYXU     ACC,T,AL              ; [CPU_] |275| 
        ADDL      XAR4,ACC              ; [CPU_] |275| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |275| 
$C$DW$156	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$156, DW_AT_low_pc(0x00)
	.dwattr $C$DW$156, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$154, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$154, DW_AT_TI_end_line(0x114)
	.dwattr $C$DW$154, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$154

	.sect	".text"
	.clink
	.global	_getModVoltage

$C$DW$157	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$157, DW_AT_name("getModVoltage")
	.dwattr $C$DW$157, DW_AT_low_pc(_getModVoltage)
	.dwattr $C$DW$157, DW_AT_high_pc(0x00)
	.dwattr $C$DW$157, DW_AT_TI_symbol_name("_getModVoltage")
	.dwattr $C$DW$157, DW_AT_external
	.dwattr $C$DW$157, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$157, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$157, DW_AT_TI_begin_line(0x128)
	.dwattr $C$DW$157, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$157, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 297,column 1,is_stmt,address _getModVoltage,isa 0

	.dwfde $C$DW$CIE, _getModVoltage
$C$DW$158	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$158, DW_AT_name("shelf")
	.dwattr $C$DW$158, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$158, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$158, DW_AT_location[DW_OP_reg0]

$C$DW$159	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$159, DW_AT_name("mod")
	.dwattr $C$DW$159, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$159, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$159, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 296 | Uint16 getModVoltage(Uint16 shelf, Uint16 mod)                         
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getModVoltage                FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getModVoltage:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 298,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 298 | return System.shelves[shelf-1].modules[mod-1].voltage;                 
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |298| 
        MOV       T,#35                 ; [CPU_] |298| 
        ADDB      AH,#-1                ; [CPU_] |298| 
        MOVL      XAR4,#_System+19      ; [CPU_U] |298| 
        MPYXU     P,T,AL                ; [CPU_] |298| 
        MOV       T,#3                  ; [CPU_] |298| 
        MPYXU     ACC,T,AH              ; [CPU_] |298| 
        ADDL      ACC,P                 ; [CPU_] |298| 
        ADDL      XAR4,ACC              ; [CPU_] |298| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |298| 
$C$DW$160	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$160, DW_AT_low_pc(0x00)
	.dwattr $C$DW$160, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$157, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$157, DW_AT_TI_end_line(0x12b)
	.dwattr $C$DW$157, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$157

	.sect	".text"
	.clink
	.global	_getModTemp

$C$DW$161	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$161, DW_AT_name("getModTemp")
	.dwattr $C$DW$161, DW_AT_low_pc(_getModTemp)
	.dwattr $C$DW$161, DW_AT_high_pc(0x00)
	.dwattr $C$DW$161, DW_AT_TI_symbol_name("_getModTemp")
	.dwattr $C$DW$161, DW_AT_external
	.dwattr $C$DW$161, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$161, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$161, DW_AT_TI_begin_line(0x134)
	.dwattr $C$DW$161, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$161, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 309,column 1,is_stmt,address _getModTemp,isa 0

	.dwfde $C$DW$CIE, _getModTemp
$C$DW$162	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$162, DW_AT_name("shelf")
	.dwattr $C$DW$162, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$162, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$162, DW_AT_location[DW_OP_reg0]

$C$DW$163	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$163, DW_AT_name("mod")
	.dwattr $C$DW$163, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$163, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$163, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 308 | Uint16 getModTemp(Uint16 shelf, Uint16 mod)                            
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getModTemp                   FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getModTemp:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 310,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 310 | return System.shelves[shelf-1].modules[mod-1].temperature;             
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |310| 
        MOV       T,#35                 ; [CPU_] |310| 
        ADDB      AH,#-1                ; [CPU_] |310| 
        MOVL      XAR4,#_System+20      ; [CPU_U] |310| 
        MPYXU     P,T,AL                ; [CPU_] |310| 
        MOV       T,#3                  ; [CPU_] |310| 
        MPYXU     ACC,T,AH              ; [CPU_] |310| 
        ADDL      ACC,P                 ; [CPU_] |310| 
        ADDL      XAR4,ACC              ; [CPU_] |310| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |310| 
$C$DW$164	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$164, DW_AT_low_pc(0x00)
	.dwattr $C$DW$164, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$161, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$161, DW_AT_TI_end_line(0x137)
	.dwattr $C$DW$161, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$161

	.sect	".text"
	.clink
	.global	_getModAlarms

$C$DW$165	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$165, DW_AT_name("getModAlarms")
	.dwattr $C$DW$165, DW_AT_low_pc(_getModAlarms)
	.dwattr $C$DW$165, DW_AT_high_pc(0x00)
	.dwattr $C$DW$165, DW_AT_TI_symbol_name("_getModAlarms")
	.dwattr $C$DW$165, DW_AT_external
	.dwattr $C$DW$165, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$165, DW_AT_TI_begin_file("../Source/System_Object.c")
	.dwattr $C$DW$165, DW_AT_TI_begin_line(0x140)
	.dwattr $C$DW$165, DW_AT_TI_begin_column(0x08)
	.dwattr $C$DW$165, DW_AT_TI_max_frame_size(-2)
	.dwpsn	file "../Source/System_Object.c",line 321,column 1,is_stmt,address _getModAlarms,isa 0

	.dwfde $C$DW$CIE, _getModAlarms
$C$DW$166	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$166, DW_AT_name("shelf")
	.dwattr $C$DW$166, DW_AT_TI_symbol_name("_shelf")
	.dwattr $C$DW$166, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$166, DW_AT_location[DW_OP_reg0]

$C$DW$167	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$167, DW_AT_name("mod")
	.dwattr $C$DW$167, DW_AT_TI_symbol_name("_mod")
	.dwattr $C$DW$167, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$167, DW_AT_location[DW_OP_reg1]

;----------------------------------------------------------------------
; 320 | Uint16 getModAlarms(Uint16 shelf, Uint16 mod)                          
;----------------------------------------------------------------------

;***************************************************************
;* FNAME: _getModAlarms                 FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************

_getModAlarms:
	.dwcfi	cfa_offset, -2
	.dwcfi	save_reg_to_mem, 26, 0
	.dwpsn	file "../Source/System_Object.c",line 322,column 2,is_stmt,isa 0
;----------------------------------------------------------------------
; 322 | return System.shelves[shelf-1].modules[mod-1].alarms;                  
;----------------------------------------------------------------------
        ADDB      AL,#-1                ; [CPU_] |322| 
        MOV       T,#35                 ; [CPU_] |322| 
        ADDB      AH,#-1                ; [CPU_] |322| 
        MOVL      XAR4,#_System+21      ; [CPU_U] |322| 
        MPYXU     P,T,AL                ; [CPU_] |322| 
        MOV       T,#3                  ; [CPU_] |322| 
        MPYXU     ACC,T,AH              ; [CPU_] |322| 
        ADDL      ACC,P                 ; [CPU_] |322| 
        ADDL      XAR4,ACC              ; [CPU_] |322| 
        MOV       AL,*+XAR4[0]          ; [CPU_] |322| 
$C$DW$168	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$168, DW_AT_low_pc(0x00)
	.dwattr $C$DW$168, DW_AT_TI_return

        LRETR     ; [CPU_] 
        ; return occurs ; [] 
	.dwattr $C$DW$165, DW_AT_TI_end_file("../Source/System_Object.c")
	.dwattr $C$DW$165, DW_AT_TI_end_line(0x143)
	.dwattr $C$DW$165, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$165


;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

$C$DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$20, DW_AT_byte_size(0x03)
$C$DW$169	.dwtag  DW_TAG_member
	.dwattr $C$DW$169, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$169, DW_AT_name("voltage")
	.dwattr $C$DW$169, DW_AT_TI_symbol_name("_voltage")
	.dwattr $C$DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$169, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$170	.dwtag  DW_TAG_member
	.dwattr $C$DW$170, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$170, DW_AT_name("temperature")
	.dwattr $C$DW$170, DW_AT_TI_symbol_name("_temperature")
	.dwattr $C$DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$170, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$171	.dwtag  DW_TAG_member
	.dwattr $C$DW$171, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$171, DW_AT_name("alarms")
	.dwattr $C$DW$171, DW_AT_TI_symbol_name("_alarms")
	.dwattr $C$DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$171, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$20

$C$DW$T$21	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$21, DW_AT_name("MODULE")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)


$C$DW$T$22	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$22, DW_AT_type(*$C$DW$T$21)
	.dwattr $C$DW$T$22, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$22, DW_AT_byte_size(0x1b)
$C$DW$172	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$172, DW_AT_upper_bound(0x08)

	.dwendtag $C$DW$T$22


$C$DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$23, DW_AT_byte_size(0x23)
$C$DW$173	.dwtag  DW_TAG_member
	.dwattr $C$DW$173, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$173, DW_AT_name("totalVoltage")
	.dwattr $C$DW$173, DW_AT_TI_symbol_name("_totalVoltage")
	.dwattr $C$DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$173, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$174	.dwtag  DW_TAG_member
	.dwattr $C$DW$174, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$174, DW_AT_name("avgTemperature")
	.dwattr $C$DW$174, DW_AT_TI_symbol_name("_avgTemperature")
	.dwattr $C$DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$174, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$175	.dwtag  DW_TAG_member
	.dwattr $C$DW$175, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$175, DW_AT_name("maxTemp")
	.dwattr $C$DW$175, DW_AT_TI_symbol_name("_maxTemp")
	.dwattr $C$DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$175, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$176	.dwtag  DW_TAG_member
	.dwattr $C$DW$176, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$176, DW_AT_name("minTemp")
	.dwattr $C$DW$176, DW_AT_TI_symbol_name("_minTemp")
	.dwattr $C$DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$176, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$177	.dwtag  DW_TAG_member
	.dwattr $C$DW$177, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$177, DW_AT_name("maxTempID")
	.dwattr $C$DW$177, DW_AT_TI_symbol_name("_maxTempID")
	.dwattr $C$DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$177, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$178	.dwtag  DW_TAG_member
	.dwattr $C$DW$178, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$178, DW_AT_name("minTempID")
	.dwattr $C$DW$178, DW_AT_TI_symbol_name("_minTempID")
	.dwattr $C$DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr $C$DW$178, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$179	.dwtag  DW_TAG_member
	.dwattr $C$DW$179, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$179, DW_AT_name("alarms")
	.dwattr $C$DW$179, DW_AT_TI_symbol_name("_alarms")
	.dwattr $C$DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$179, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$180	.dwtag  DW_TAG_member
	.dwattr $C$DW$180, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$180, DW_AT_name("errors")
	.dwattr $C$DW$180, DW_AT_TI_symbol_name("_errors")
	.dwattr $C$DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr $C$DW$180, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$181	.dwtag  DW_TAG_member
	.dwattr $C$DW$181, DW_AT_type(*$C$DW$T$22)
	.dwattr $C$DW$181, DW_AT_name("modules")
	.dwattr $C$DW$181, DW_AT_TI_symbol_name("_modules")
	.dwattr $C$DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$181, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$23

$C$DW$T$24	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$24, DW_AT_name("SHELF")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$23)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)


$C$DW$T$25	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$25, DW_AT_byte_size(0x8c)
$C$DW$182	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$182, DW_AT_upper_bound(0x03)

	.dwendtag $C$DW$T$25


$C$DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$26, DW_AT_byte_size(0x98)
$C$DW$183	.dwtag  DW_TAG_member
	.dwattr $C$DW$183, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$183, DW_AT_name("status")
	.dwattr $C$DW$183, DW_AT_TI_symbol_name("_status")
	.dwattr $C$DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$183, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$184	.dwtag  DW_TAG_member
	.dwattr $C$DW$184, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$184, DW_AT_name("mode")
	.dwattr $C$DW$184, DW_AT_TI_symbol_name("_mode")
	.dwattr $C$DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr $C$DW$184, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$185	.dwtag  DW_TAG_member
	.dwattr $C$DW$185, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$185, DW_AT_name("isoRelay")
	.dwattr $C$DW$185, DW_AT_TI_symbol_name("_isoRelay")
	.dwattr $C$DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr $C$DW$185, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$186	.dwtag  DW_TAG_member
	.dwattr $C$DW$186, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$186, DW_AT_name("outCurrent")
	.dwattr $C$DW$186, DW_AT_TI_symbol_name("_outCurrent")
	.dwattr $C$DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr $C$DW$186, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$187	.dwtag  DW_TAG_member
	.dwattr $C$DW$187, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$187, DW_AT_name("capVoltage")
	.dwattr $C$DW$187, DW_AT_TI_symbol_name("_capVoltage")
	.dwattr $C$DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr $C$DW$187, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$188	.dwtag  DW_TAG_member
	.dwattr $C$DW$188, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$188, DW_AT_name("capVoltageF")
	.dwattr $C$DW$188, DW_AT_TI_symbol_name("_capVoltageF")
	.dwattr $C$DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr $C$DW$188, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$189	.dwtag  DW_TAG_member
	.dwattr $C$DW$189, DW_AT_type(*$C$DW$T$16)
	.dwattr $C$DW$189, DW_AT_name("outCurrentF")
	.dwattr $C$DW$189, DW_AT_TI_symbol_name("_outCurrentF")
	.dwattr $C$DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr $C$DW$189, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$190	.dwtag  DW_TAG_member
	.dwattr $C$DW$190, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$190, DW_AT_name("availEnergy")
	.dwattr $C$DW$190, DW_AT_TI_symbol_name("_availEnergy")
	.dwattr $C$DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr $C$DW$190, DW_AT_accessibility(DW_ACCESS_public)

$C$DW$191	.dwtag  DW_TAG_member
	.dwattr $C$DW$191, DW_AT_type(*$C$DW$T$25)
	.dwattr $C$DW$191, DW_AT_name("shelves")
	.dwattr $C$DW$191, DW_AT_TI_symbol_name("_shelves")
	.dwattr $C$DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr $C$DW$191, DW_AT_accessibility(DW_ACCESS_public)

	.dwendtag $C$DW$T$26

$C$DW$T$29	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$29, DW_AT_name("SYSTEM")
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$T$26)
	.dwattr $C$DW$T$29, DW_AT_language(DW_LANG_C)

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

$C$DW$192	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$192, DW_AT_type(*$C$DW$T$19)

$C$DW$T$35	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$192)

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

$C$DW$193	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$193, DW_AT_type(*$C$DW$T$16)

$C$DW$T$45	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$45, DW_AT_type(*$C$DW$193)

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

$C$DW$194	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$194, DW_AT_name("AL")
	.dwattr $C$DW$194, DW_AT_location[DW_OP_reg0]

$C$DW$195	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$195, DW_AT_name("AH")
	.dwattr $C$DW$195, DW_AT_location[DW_OP_reg1]

$C$DW$196	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$196, DW_AT_name("PL")
	.dwattr $C$DW$196, DW_AT_location[DW_OP_reg2]

$C$DW$197	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$197, DW_AT_name("PH")
	.dwattr $C$DW$197, DW_AT_location[DW_OP_reg3]

$C$DW$198	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$198, DW_AT_name("SP")
	.dwattr $C$DW$198, DW_AT_location[DW_OP_reg20]

$C$DW$199	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$199, DW_AT_name("XT")
	.dwattr $C$DW$199, DW_AT_location[DW_OP_reg21]

$C$DW$200	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$200, DW_AT_name("T")
	.dwattr $C$DW$200, DW_AT_location[DW_OP_reg22]

$C$DW$201	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$201, DW_AT_name("ST0")
	.dwattr $C$DW$201, DW_AT_location[DW_OP_reg23]

$C$DW$202	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$202, DW_AT_name("ST1")
	.dwattr $C$DW$202, DW_AT_location[DW_OP_reg24]

$C$DW$203	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$203, DW_AT_name("PC")
	.dwattr $C$DW$203, DW_AT_location[DW_OP_reg25]

$C$DW$204	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$204, DW_AT_name("RPC")
	.dwattr $C$DW$204, DW_AT_location[DW_OP_reg26]

$C$DW$205	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$205, DW_AT_name("FP")
	.dwattr $C$DW$205, DW_AT_location[DW_OP_reg28]

$C$DW$206	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$206, DW_AT_name("DP")
	.dwattr $C$DW$206, DW_AT_location[DW_OP_reg29]

$C$DW$207	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$207, DW_AT_name("SXM")
	.dwattr $C$DW$207, DW_AT_location[DW_OP_reg30]

$C$DW$208	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$208, DW_AT_name("PM")
	.dwattr $C$DW$208, DW_AT_location[DW_OP_reg31]

$C$DW$209	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$209, DW_AT_name("OVM")
	.dwattr $C$DW$209, DW_AT_location[DW_OP_regx 0x20]

$C$DW$210	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$210, DW_AT_name("PAGE0")
	.dwattr $C$DW$210, DW_AT_location[DW_OP_regx 0x21]

$C$DW$211	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$211, DW_AT_name("AMODE")
	.dwattr $C$DW$211, DW_AT_location[DW_OP_regx 0x22]

$C$DW$212	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$212, DW_AT_name("INTM")
	.dwattr $C$DW$212, DW_AT_location[DW_OP_regx 0x23]

$C$DW$213	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$213, DW_AT_name("IFR")
	.dwattr $C$DW$213, DW_AT_location[DW_OP_regx 0x24]

$C$DW$214	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$214, DW_AT_name("IER")
	.dwattr $C$DW$214, DW_AT_location[DW_OP_regx 0x25]

$C$DW$215	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$215, DW_AT_name("V")
	.dwattr $C$DW$215, DW_AT_location[DW_OP_regx 0x26]

$C$DW$216	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$216, DW_AT_name("PSEUDOH")
	.dwattr $C$DW$216, DW_AT_location[DW_OP_regx 0x4c]

$C$DW$217	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$217, DW_AT_name("VOL")
	.dwattr $C$DW$217, DW_AT_location[DW_OP_regx 0x4d]

$C$DW$218	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$218, DW_AT_name("AR0")
	.dwattr $C$DW$218, DW_AT_location[DW_OP_reg4]

$C$DW$219	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$219, DW_AT_name("XAR0")
	.dwattr $C$DW$219, DW_AT_location[DW_OP_reg5]

$C$DW$220	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$220, DW_AT_name("AR1")
	.dwattr $C$DW$220, DW_AT_location[DW_OP_reg6]

$C$DW$221	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$221, DW_AT_name("XAR1")
	.dwattr $C$DW$221, DW_AT_location[DW_OP_reg7]

$C$DW$222	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$222, DW_AT_name("AR2")
	.dwattr $C$DW$222, DW_AT_location[DW_OP_reg8]

$C$DW$223	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$223, DW_AT_name("XAR2")
	.dwattr $C$DW$223, DW_AT_location[DW_OP_reg9]

$C$DW$224	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$224, DW_AT_name("AR3")
	.dwattr $C$DW$224, DW_AT_location[DW_OP_reg10]

$C$DW$225	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$225, DW_AT_name("XAR3")
	.dwattr $C$DW$225, DW_AT_location[DW_OP_reg11]

$C$DW$226	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$226, DW_AT_name("AR4")
	.dwattr $C$DW$226, DW_AT_location[DW_OP_reg12]

$C$DW$227	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$227, DW_AT_name("XAR4")
	.dwattr $C$DW$227, DW_AT_location[DW_OP_reg13]

$C$DW$228	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$228, DW_AT_name("AR5")
	.dwattr $C$DW$228, DW_AT_location[DW_OP_reg14]

$C$DW$229	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$229, DW_AT_name("XAR5")
	.dwattr $C$DW$229, DW_AT_location[DW_OP_reg15]

$C$DW$230	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$230, DW_AT_name("AR6")
	.dwattr $C$DW$230, DW_AT_location[DW_OP_reg16]

$C$DW$231	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$231, DW_AT_name("XAR6")
	.dwattr $C$DW$231, DW_AT_location[DW_OP_reg17]

$C$DW$232	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$232, DW_AT_name("AR7")
	.dwattr $C$DW$232, DW_AT_location[DW_OP_reg18]

$C$DW$233	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$233, DW_AT_name("XAR7")
	.dwattr $C$DW$233, DW_AT_location[DW_OP_reg19]

	.dwendtag $C$DW$CU


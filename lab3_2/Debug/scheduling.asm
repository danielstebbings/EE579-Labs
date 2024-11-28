;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                          Unix v21.6.1.LTS *
;* Date/Time created: Thu Nov 28 19:50:21 2024                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../scheduling.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen Unix v21.6.1.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/daniel/Github/EE579-Labs/lab3_2/Debug")
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("TA0CTL")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("TA0CTL")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0x1f7)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("TA0CCTL0")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("TA0CCTL0")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0x1f8)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("TA0CCTL1")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("TA0CCTL1")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1f9)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("TA0CCTL2")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("TA0CCTL2")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1fa)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("TA0CCR0")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("TA0CCR0")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1fc)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("CurrentTime")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("CurrentTime")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("../scheduling.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x18)
	.dwattr $C$DW$6, DW_AT_decl_column(0x0d)

;	/home/daniel/ti/ccs1281/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/opt430 /tmp/TI4OwNr5loL /tmp/TI4OwEsKgmW 
	.sect	".text:setup_schedule_timerA0"
	.clink
	.global	setup_schedule_timerA0

$C$DW$7	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$7, DW_AT_name("setup_schedule_timerA0")
	.dwattr $C$DW$7, DW_AT_low_pc(setup_schedule_timerA0)
	.dwattr $C$DW$7, DW_AT_high_pc(0x00)
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("setup_schedule_timerA0")
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_TI_begin_file("../scheduling.c")
	.dwattr $C$DW$7, DW_AT_TI_begin_line(0x19)
	.dwattr $C$DW$7, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$7, DW_AT_decl_file("../scheduling.c")
	.dwattr $C$DW$7, DW_AT_decl_line(0x19)
	.dwattr $C$DW$7, DW_AT_decl_column(0x06)
	.dwattr $C$DW$7, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../scheduling.c",line 25,column 42,is_stmt,address setup_schedule_timerA0,isa 0

	.dwfde $C$DW$CIE, setup_schedule_timerA0
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_name("period")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("period")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$8, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: setup_schedule_timerA0                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
setup_schedule_timerA0:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../scheduling.c",line 31,column 5,is_stmt,isa 0
        MOV.W     #0,&TA0CTL+0          ; [] |31| 
	.dwpsn	file "../scheduling.c",line 32,column 5,is_stmt,isa 0
        RLA.W     r12                   ; [] |32| 
        RLA.W     r12                   ; [] |32| 
        MOV.W     r12,&TA0CCR0+0        ; [] |32| 
	.dwpsn	file "../scheduling.c",line 33,column 5,is_stmt,isa 0
        MOV.W     #16,&TA0CCTL0+0       ; [] |33| 
	.dwpsn	file "../scheduling.c",line 34,column 5,is_stmt,isa 0
        MOV.W     #0,&TA0CCTL1+0        ; [] |34| 
	.dwpsn	file "../scheduling.c",line 35,column 5,is_stmt,isa 0
        MOV.W     #0,&TA0CCTL2+0        ; [] |35| 
	.dwpsn	file "../scheduling.c",line 36,column 5,is_stmt,isa 0
        MOV.W     #464,&TA0CTL+0        ; [] |36| 
	.dwpsn	file "../scheduling.c",line 41,column 1,is_stmt,isa 0
$C$DW$9	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$9, DW_AT_low_pc(0x00)
	.dwattr $C$DW$9, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$7, DW_AT_TI_end_file("../scheduling.c")
	.dwattr $C$DW$7, DW_AT_TI_end_line(0x29)
	.dwattr $C$DW$7, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$7

	.sect	".text:sec2ms"
	.clink
	.global	sec2ms

$C$DW$10	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$10, DW_AT_name("sec2ms")
	.dwattr $C$DW$10, DW_AT_low_pc(sec2ms)
	.dwattr $C$DW$10, DW_AT_high_pc(0x00)
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("sec2ms")
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$10, DW_AT_TI_begin_file("../scheduling.c")
	.dwattr $C$DW$10, DW_AT_TI_begin_line(0x12)
	.dwattr $C$DW$10, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$10, DW_AT_decl_file("../scheduling.c")
	.dwattr $C$DW$10, DW_AT_decl_line(0x12)
	.dwattr $C$DW$10, DW_AT_decl_column(0x06)
	.dwattr $C$DW$10, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../scheduling.c",line 18,column 27,is_stmt,address sec2ms,isa 0

	.dwfde $C$DW$CIE, sec2ms
$C$DW$11	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$11, DW_AT_name("seconds")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("seconds")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: sec2ms                                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
sec2ms:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../scheduling.c",line 19,column 5,is_stmt,isa 0
$C$DW$12	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$12, DW_AT_low_pc(0x00)
	.dwattr $C$DW$12, DW_AT_name("__mspabi_slli_10")
	.dwattr $C$DW$12, DW_AT_TI_call

        CALL      #__mspabi_slli_10     ; [] |19| 
                                          ; [] |19| 
	.dwpsn	file "../scheduling.c",line 20,column 1,is_stmt,isa 0
$C$DW$13	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$13, DW_AT_low_pc(0x00)
	.dwattr $C$DW$13, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$10, DW_AT_TI_end_file("../scheduling.c")
	.dwattr $C$DW$10, DW_AT_TI_end_line(0x14)
	.dwattr $C$DW$10, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$10

	.sect	".text:schedule"
	.clink
	.global	schedule

$C$DW$14	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$14, DW_AT_name("schedule")
	.dwattr $C$DW$14, DW_AT_low_pc(schedule)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("schedule")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../scheduling.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x2b)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_decl_file("../scheduling.c")
	.dwattr $C$DW$14, DW_AT_decl_line(0x2b)
	.dwattr $C$DW$14, DW_AT_decl_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../scheduling.c",line 43,column 27,is_stmt,address schedule,isa 0

	.dwfde $C$DW$CIE, schedule
$C$DW$15	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$15, DW_AT_name("delay")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("delay")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: schedule                                                   *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12                                           *
;*   Regs Used         : SP,SR,r12                                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
schedule:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../scheduling.c",line 44,column 5,is_stmt,isa 0
        ADD.W     &CurrentTime+0,r12    ; [] |44| 
	.dwpsn	file "../scheduling.c",line 45,column 1,is_stmt,isa 0
$C$DW$16	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$16, DW_AT_low_pc(0x00)
	.dwattr $C$DW$16, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$14, DW_AT_TI_end_file("../scheduling.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x2d)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text:isTime"
	.clink
	.global	isTime

$C$DW$17	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$17, DW_AT_name("isTime")
	.dwattr $C$DW$17, DW_AT_low_pc(isTime)
	.dwattr $C$DW$17, DW_AT_high_pc(0x00)
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("isTime")
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$17, DW_AT_TI_begin_file("../scheduling.c")
	.dwattr $C$DW$17, DW_AT_TI_begin_line(0x2f)
	.dwattr $C$DW$17, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$17, DW_AT_decl_file("../scheduling.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x2f)
	.dwattr $C$DW$17, DW_AT_decl_column(0x06)
	.dwattr $C$DW$17, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../scheduling.c",line 47,column 25,is_stmt,address isTime,isa 0

	.dwfde $C$DW$CIE, isTime
$C$DW$18	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$18, DW_AT_name("event")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("event")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_reg12]


;*****************************************************************************
;* FUNCTION NAME: isTime                                                     *
;*                                                                           *
;*   Regs Modified     : SP,SR,r12,r15                                       *
;*   Regs Used         : SP,SR,r12,r15                                       *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
isTime:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
;* r12   assigned to event
$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("event")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("event")
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$19, DW_AT_location[DW_OP_reg12]

	.dwpsn	file "../scheduling.c",line 48,column 5,is_stmt,isa 0
        MOV.B     #0,r15                ; [] |48| 
        CMP.W     r12,&CurrentTime+0    ; [] |48| 
        JNE       $C$L1                 ; [] |48| 
                                          ; [] |48| 
;* --------------------------------------------------------------------------*
        MOV.B     #1,r15                ; [] |48| 
;* --------------------------------------------------------------------------*
$C$L1:    
        MOV.W     r15,r12               ; [] |48| 
	.dwpsn	file "../scheduling.c",line 49,column 1,is_stmt,isa 0
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_TI_return

        RET       ; [] 
        ; [] 
	.dwattr $C$DW$17, DW_AT_TI_end_file("../scheduling.c")
	.dwattr $C$DW$17, DW_AT_TI_end_line(0x31)
	.dwattr $C$DW$17, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$17

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	TA0CTL
	.global	TA0CCTL0
	.global	TA0CCTL1
	.global	TA0CCTL2
	.global	TA0CCR0
	.global	CurrentTime
	.global	__mspabi_slli_10

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(1)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ01110000000000000000000000000000000000000000")
	.battr "TI", Tag_File, 1, Tag_LEA_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY32_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_ISR_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_INLINE_INFO(1)
	.battr "mspabi", Tag_File, 1, Tag_enum_size(3)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************
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
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x02)

$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x02)

$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x02)

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x02)

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x02)

$C$DW$T$19	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$19, DW_AT_name("Time")
	.dwattr $C$DW$T$19, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$19, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$19, DW_AT_decl_file("../scheduling.h")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x17)

$C$DW$T$24	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$11)

$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x04)

$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x04)

$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x08)

$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x08)

$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x04)

$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x08)

$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x08)

	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 16
	.dwcfi	cfa_register, 1
	.dwcfi	cfa_offset, 0
	.dwcfi	same_value, 0
	.dwcfi	same_value, 1
	.dwcfi	same_value, 3
	.dwcfi	same_value, 4
	.dwcfi	same_value, 5
	.dwcfi	same_value, 6
	.dwcfi	same_value, 7
	.dwcfi	same_value, 8
	.dwcfi	same_value, 9
	.dwcfi	same_value, 10
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$21	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$21, DW_AT_name("PC")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_reg0]

$C$DW$22	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$22, DW_AT_name("SP")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_reg1]

$C$DW$23	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$23, DW_AT_name("SR")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_reg2]

$C$DW$24	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$24, DW_AT_name("CG")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_reg3]

$C$DW$25	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$25, DW_AT_name("r4")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_reg4]

$C$DW$26	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$26, DW_AT_name("r5")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_reg5]

$C$DW$27	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$27, DW_AT_name("r6")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_reg6]

$C$DW$28	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$28, DW_AT_name("r7")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_reg7]

$C$DW$29	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$29, DW_AT_name("r8")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg8]

$C$DW$30	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$30, DW_AT_name("r9")
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg9]

$C$DW$31	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$31, DW_AT_name("r10")
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg10]

$C$DW$32	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$32, DW_AT_name("r11")
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg11]

$C$DW$33	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$33, DW_AT_name("r12")
	.dwattr $C$DW$33, DW_AT_location[DW_OP_reg12]

$C$DW$34	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$34, DW_AT_name("r13")
	.dwattr $C$DW$34, DW_AT_location[DW_OP_reg13]

$C$DW$35	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$35, DW_AT_name("r14")
	.dwattr $C$DW$35, DW_AT_location[DW_OP_reg14]

$C$DW$36	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$36, DW_AT_name("r15")
	.dwattr $C$DW$36, DW_AT_location[DW_OP_reg15]

$C$DW$37	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$37, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$37, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


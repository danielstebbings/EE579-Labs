;******************************************************************************
;* MSP430 G3 C/C++ Codegen                                          Unix v21.6.1.LTS *
;* Date/Time created: Tue Nov 26 21:31:57 2024                                *
;******************************************************************************
	.compiler_opts --abi=eabi --diag_wrap=off --hll_source=on --mem_model:code=small --mem_model:data=small --object_format=elf --silicon_version=msp --symdebug:dwarf --symdebug:dwarf_version=3 

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../main.c")
	.dwattr $C$DW$CU, DW_AT_producer("TI MSP430 G3 C/C++ Codegen Unix v21.6.1.LTS Copyright (c) 2003-2018 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("/home/daniel/Github/EE579-Labs/lab3_2/Debug")
;	Interrupt vector table mappings
	.intvec	".int09",	scheduler_isr
	.intvec	".int05",	adc_conversion_isr
	.intvec	".int02",	button_isr
$C$DW$1	.dwtag  DW_TAG_variable
	.dwattr $C$DW$1, DW_AT_name("ADC10CTL0")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("ADC10CTL0")
	.dwattr $C$DW$1, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
	.dwattr $C$DW$1, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$1, DW_AT_decl_line(0xb4)
	.dwattr $C$DW$1, DW_AT_decl_column(0x01)

$C$DW$2	.dwtag  DW_TAG_variable
	.dwattr $C$DW$2, DW_AT_name("ADC10MEM")
	.dwattr $C$DW$2, DW_AT_TI_symbol_name("ADC10MEM")
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$2, DW_AT_declaration
	.dwattr $C$DW$2, DW_AT_external
	.dwattr $C$DW$2, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$2, DW_AT_decl_line(0xb6)
	.dwattr $C$DW$2, DW_AT_decl_column(0x01)

$C$DW$3	.dwtag  DW_TAG_variable
	.dwattr $C$DW$3, DW_AT_name("P1IN")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("P1IN")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external
	.dwattr $C$DW$3, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$3, DW_AT_decl_line(0x1ce)
	.dwattr $C$DW$3, DW_AT_decl_column(0x01)

$C$DW$4	.dwtag  DW_TAG_variable
	.dwattr $C$DW$4, DW_AT_name("P1OUT")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("P1OUT")
	.dwattr $C$DW$4, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
	.dwattr $C$DW$4, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$4, DW_AT_decl_line(0x1cf)
	.dwattr $C$DW$4, DW_AT_decl_column(0x01)

$C$DW$5	.dwtag  DW_TAG_variable
	.dwattr $C$DW$5, DW_AT_name("P1DIR")
	.dwattr $C$DW$5, DW_AT_TI_symbol_name("P1DIR")
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$5, DW_AT_declaration
	.dwattr $C$DW$5, DW_AT_external
	.dwattr $C$DW$5, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$5, DW_AT_decl_line(0x1d0)
	.dwattr $C$DW$5, DW_AT_decl_column(0x01)

$C$DW$6	.dwtag  DW_TAG_variable
	.dwattr $C$DW$6, DW_AT_name("P1IFG")
	.dwattr $C$DW$6, DW_AT_TI_symbol_name("P1IFG")
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$6, DW_AT_declaration
	.dwattr $C$DW$6, DW_AT_external
	.dwattr $C$DW$6, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$6, DW_AT_decl_line(0x1d1)
	.dwattr $C$DW$6, DW_AT_decl_column(0x01)

$C$DW$7	.dwtag  DW_TAG_variable
	.dwattr $C$DW$7, DW_AT_name("P1IES")
	.dwattr $C$DW$7, DW_AT_TI_symbol_name("P1IES")
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$7, DW_AT_declaration
	.dwattr $C$DW$7, DW_AT_external
	.dwattr $C$DW$7, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$7, DW_AT_decl_line(0x1d2)
	.dwattr $C$DW$7, DW_AT_decl_column(0x01)

$C$DW$8	.dwtag  DW_TAG_variable
	.dwattr $C$DW$8, DW_AT_name("P1IE")
	.dwattr $C$DW$8, DW_AT_TI_symbol_name("P1IE")
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$8, DW_AT_declaration
	.dwattr $C$DW$8, DW_AT_external
	.dwattr $C$DW$8, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$8, DW_AT_decl_line(0x1d3)
	.dwattr $C$DW$8, DW_AT_decl_column(0x01)

$C$DW$9	.dwtag  DW_TAG_variable
	.dwattr $C$DW$9, DW_AT_name("P1REN")
	.dwattr $C$DW$9, DW_AT_TI_symbol_name("P1REN")
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$9, DW_AT_declaration
	.dwattr $C$DW$9, DW_AT_external
	.dwattr $C$DW$9, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$9, DW_AT_decl_line(0x1d6)
	.dwattr $C$DW$9, DW_AT_decl_column(0x01)

$C$DW$10	.dwtag  DW_TAG_variable
	.dwattr $C$DW$10, DW_AT_name("P2OUT")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("P2OUT")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.dwattr $C$DW$10, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$10, DW_AT_decl_line(0x1d9)
	.dwattr $C$DW$10, DW_AT_decl_column(0x01)

$C$DW$11	.dwtag  DW_TAG_variable
	.dwattr $C$DW$11, DW_AT_name("P2DIR")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("P2DIR")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$11, DW_AT_declaration
	.dwattr $C$DW$11, DW_AT_external
	.dwattr $C$DW$11, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$11, DW_AT_decl_line(0x1da)
	.dwattr $C$DW$11, DW_AT_decl_column(0x01)

$C$DW$12	.dwtag  DW_TAG_variable
	.dwattr $C$DW$12, DW_AT_name("P2SEL")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("P2SEL")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$12, DW_AT_declaration
	.dwattr $C$DW$12, DW_AT_external
	.dwattr $C$DW$12, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$12, DW_AT_decl_line(0x1de)
	.dwattr $C$DW$12, DW_AT_decl_column(0x01)

$C$DW$13	.dwtag  DW_TAG_variable
	.dwattr $C$DW$13, DW_AT_name("P2SEL2")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("P2SEL2")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
	.dwattr $C$DW$13, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$13, DW_AT_decl_line(0x1df)
	.dwattr $C$DW$13, DW_AT_decl_column(0x01)

$C$DW$14	.dwtag  DW_TAG_variable
	.dwattr $C$DW$14, DW_AT_name("OUT *")
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("P3OUT")
	.dwattr $C$DW$14, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$14, DW_AT_declaration
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$14, DW_AT_decl_line(0x1eb)
	.dwattr $C$DW$14, DW_AT_decl_column(0x01)

$C$DW$15	.dwtag  DW_TAG_variable
	.dwattr $C$DW$15, DW_AT_name("DIR *")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("P3DIR")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$15, DW_AT_declaration
	.dwattr $C$DW$15, DW_AT_external
	.dwattr $C$DW$15, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$15, DW_AT_decl_line(0x1ec)
	.dwattr $C$DW$15, DW_AT_decl_column(0x01)

$C$DW$16	.dwtag  DW_TAG_variable
	.dwattr $C$DW$16, DW_AT_name("WDTCTL")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("WDTCTL")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$32)
	.dwattr $C$DW$16, DW_AT_declaration
	.dwattr $C$DW$16, DW_AT_external
	.dwattr $C$DW$16, DW_AT_decl_file("/home/daniel/ti/ccs1281/ccs/ccs_base/msp430/include/msp430g2553.h")
	.dwattr $C$DW$16, DW_AT_decl_line(0x343)
	.dwattr $C$DW$16, DW_AT_decl_column(0x01)

	.global	conversion_flag
	.data
	.align	1
	.elfsym	conversion_flag,SYM_SIZE(1)
conversion_flag:
	.bits		0,8
			; conversion_flag @ 0

$C$DW$17	.dwtag  DW_TAG_variable
	.dwattr $C$DW$17, DW_AT_name("conversion_flag")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("conversion_flag")
	.dwattr $C$DW$17, DW_AT_location[DW_OP_addr conversion_flag]
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$17, DW_AT_external
	.dwattr $C$DW$17, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$17, DW_AT_decl_line(0x3e)
	.dwattr $C$DW$17, DW_AT_decl_column(0x06)

	.global	button_flag
	.data
	.align	1
	.elfsym	button_flag,SYM_SIZE(1)
button_flag:
	.bits		0,8
			; button_flag @ 0

$C$DW$18	.dwtag  DW_TAG_variable
	.dwattr $C$DW$18, DW_AT_name("button_flag")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("button_flag")
	.dwattr $C$DW$18, DW_AT_location[DW_OP_addr button_flag]
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$18, DW_AT_external
	.dwattr $C$DW$18, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$18, DW_AT_decl_line(0x3f)
	.dwattr $C$DW$18, DW_AT_decl_column(0x06)

	.global	CurrentTime
	.data
	.align	2
	.elfsym	CurrentTime,SYM_SIZE(2)
CurrentTime:
	.bits		0,16
			; CurrentTime @ 0

$C$DW$19	.dwtag  DW_TAG_variable
	.dwattr $C$DW$19, DW_AT_name("CurrentTime")
	.dwattr $C$DW$19, DW_AT_TI_symbol_name("CurrentTime")
	.dwattr $C$DW$19, DW_AT_location[DW_OP_addr CurrentTime]
	.dwattr $C$DW$19, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$19, DW_AT_external
	.dwattr $C$DW$19, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$19, DW_AT_decl_line(0x42)
	.dwattr $C$DW$19, DW_AT_decl_column(0x06)

	.global	job_vector
	.sect	".data:job_vector", RW
	.align	2
	.elfsym	job_vector,SYM_SIZE(2)
job_vector:
	.bits		0x1,1
			; job_vector.button @ 0
	.bits		0x1,1
			; job_vector.ADC @ 1
	.bits		0x1,1
			; job_vector.Buzzer @ 2
	.bits		0,13


$C$DW$20	.dwtag  DW_TAG_variable
	.dwattr $C$DW$20, DW_AT_name("job_vector")
	.dwattr $C$DW$20, DW_AT_TI_symbol_name("job_vector")
	.dwattr $C$DW$20, DW_AT_location[DW_OP_addr job_vector]
	.dwattr $C$DW$20, DW_AT_type(*$C$DW$T$19)
	.dwattr $C$DW$20, DW_AT_external
	.dwattr $C$DW$20, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$20, DW_AT_decl_line(0x43)
	.dwattr $C$DW$20, DW_AT_decl_column(0x0d)

	.global	Tperiod
	.data
	.align	2
	.elfsym	Tperiod,SYM_SIZE(2)
Tperiod:
	.bits		0x64,16
			; Tperiod @ 0

$C$DW$21	.dwtag  DW_TAG_variable
	.dwattr $C$DW$21, DW_AT_name("Tperiod")
	.dwattr $C$DW$21, DW_AT_TI_symbol_name("Tperiod")
	.dwattr $C$DW$21, DW_AT_location[DW_OP_addr Tperiod]
	.dwattr $C$DW$21, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$21, DW_AT_external
	.dwattr $C$DW$21, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$21, DW_AT_decl_line(0x45)
	.dwattr $C$DW$21, DW_AT_decl_column(0x06)

	.global	Tdebounce
	.data
	.align	2
	.elfsym	Tdebounce,SYM_SIZE(2)
Tdebounce:
	.bits		0,16
			; Tdebounce @ 0

$C$DW$22	.dwtag  DW_TAG_variable
	.dwattr $C$DW$22, DW_AT_name("Tdebounce")
	.dwattr $C$DW$22, DW_AT_TI_symbol_name("Tdebounce")
	.dwattr $C$DW$22, DW_AT_location[DW_OP_addr Tdebounce]
	.dwattr $C$DW$22, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$22, DW_AT_external
	.dwattr $C$DW$22, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$22, DW_AT_decl_line(0x46)
	.dwattr $C$DW$22, DW_AT_decl_column(0x06)

	.global	Tbuzzer
	.data
	.align	2
	.elfsym	Tbuzzer,SYM_SIZE(2)
Tbuzzer:
	.bits		0x258,16
			; Tbuzzer @ 0

$C$DW$23	.dwtag  DW_TAG_variable
	.dwattr $C$DW$23, DW_AT_name("Tbuzzer")
	.dwattr $C$DW$23, DW_AT_TI_symbol_name("Tbuzzer")
	.dwattr $C$DW$23, DW_AT_location[DW_OP_addr Tbuzzer]
	.dwattr $C$DW$23, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$23, DW_AT_external
	.dwattr $C$DW$23, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$23, DW_AT_decl_line(0x47)
	.dwattr $C$DW$23, DW_AT_decl_column(0x06)

	.global	TADC
	.data
	.align	2
	.elfsym	TADC,SYM_SIZE(2)
TADC:
	.bits		0x64,16
			; TADC @ 0

$C$DW$24	.dwtag  DW_TAG_variable
	.dwattr $C$DW$24, DW_AT_name("TADC")
	.dwattr $C$DW$24, DW_AT_TI_symbol_name("TADC")
	.dwattr $C$DW$24, DW_AT_location[DW_OP_addr TADC]
	.dwattr $C$DW$24, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$24, DW_AT_external
	.dwattr $C$DW$24, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$24, DW_AT_decl_line(0x48)
	.dwattr $C$DW$24, DW_AT_decl_column(0x06)

	.global	buzzer_state
	.data
	.align	1
	.elfsym	buzzer_state,SYM_SIZE(1)
buzzer_state:
	.bits		0x1,8
			; buzzer_state @ 0

$C$DW$25	.dwtag  DW_TAG_variable
	.dwattr $C$DW$25, DW_AT_name("buzzer_state")
	.dwattr $C$DW$25, DW_AT_TI_symbol_name("buzzer_state")
	.dwattr $C$DW$25, DW_AT_location[DW_OP_addr buzzer_state]
	.dwattr $C$DW$25, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$25, DW_AT_external
	.dwattr $C$DW$25, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$25, DW_AT_decl_line(0x4b)
	.dwattr $C$DW$25, DW_AT_decl_column(0x06)

	.global	buzzer_config
	.data
	.align	1
	.elfsym	buzzer_config,SYM_SIZE(1)
buzzer_config:
	.bits		0x1,8
			; buzzer_config @ 0

$C$DW$26	.dwtag  DW_TAG_variable
	.dwattr $C$DW$26, DW_AT_name("buzzer_config")
	.dwattr $C$DW$26, DW_AT_TI_symbol_name("buzzer_config")
	.dwattr $C$DW$26, DW_AT_location[DW_OP_addr buzzer_config]
	.dwattr $C$DW$26, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$26, DW_AT_external
	.dwattr $C$DW$26, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$26, DW_AT_decl_line(0x4c)
	.dwattr $C$DW$26, DW_AT_decl_column(0x06)

	.global	flow
	.data
	.align	2
	.elfsym	flow,SYM_SIZE(2)
flow:
	.bits		0x3e8,16
			; flow @ 0

$C$DW$27	.dwtag  DW_TAG_variable
	.dwattr $C$DW$27, DW_AT_name("flow")
	.dwattr $C$DW$27, DW_AT_TI_symbol_name("flow")
	.dwattr $C$DW$27, DW_AT_location[DW_OP_addr flow]
	.dwattr $C$DW$27, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$27, DW_AT_external
	.dwattr $C$DW$27, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$27, DW_AT_decl_line(0x4d)
	.dwattr $C$DW$27, DW_AT_decl_column(0x0e)

	.global	fhigh
	.data
	.align	2
	.elfsym	fhigh,SYM_SIZE(2)
fhigh:
	.bits		0x1388,16
			; fhigh @ 0

$C$DW$28	.dwtag  DW_TAG_variable
	.dwattr $C$DW$28, DW_AT_name("fhigh")
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("fhigh")
	.dwattr $C$DW$28, DW_AT_location[DW_OP_addr fhigh]
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$28, DW_AT_external
	.dwattr $C$DW$28, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$28, DW_AT_decl_line(0x4e)
	.dwattr $C$DW$28, DW_AT_decl_column(0x0e)

	.global	fcur
	.data
	.align	2
	.elfsym	fcur,SYM_SIZE(2)
fcur:
	.bits		0x1388,16
			; fcur @ 0

$C$DW$29	.dwtag  DW_TAG_variable
	.dwattr $C$DW$29, DW_AT_name("fcur")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("fcur")
	.dwattr $C$DW$29, DW_AT_location[DW_OP_addr fcur]
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$29, DW_AT_external
	.dwattr $C$DW$29, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$29, DW_AT_decl_line(0x4f)
	.dwattr $C$DW$29, DW_AT_decl_column(0x0e)


$C$DW$30	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$30, DW_AT_name("setup_pot_ADC")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("setup_pot_ADC")
	.dwattr $C$DW$30, DW_AT_declaration
	.dwattr $C$DW$30, DW_AT_external
	.dwattr $C$DW$30, DW_AT_decl_file("../peripherals.h")
	.dwattr $C$DW$30, DW_AT_decl_line(0x10)
	.dwattr $C$DW$30, DW_AT_decl_column(0x06)
	.dwendtag $C$DW$30


$C$DW$31	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$31, DW_AT_name("setup_schedule_timerA0")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("setup_schedule_timerA0")
	.dwattr $C$DW$31, DW_AT_declaration
	.dwattr $C$DW$31, DW_AT_external
	.dwattr $C$DW$31, DW_AT_decl_file("../scheduling.h")
	.dwattr $C$DW$31, DW_AT_decl_line(0x25)
	.dwattr $C$DW$31, DW_AT_decl_column(0x06)
$C$DW$32	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$31


$C$DW$33	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$33, DW_AT_name("setup_buzzer_timer")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("setup_buzzer_timer")
	.dwattr $C$DW$33, DW_AT_declaration
	.dwattr $C$DW$33, DW_AT_external
	.dwattr $C$DW$33, DW_AT_decl_file("../peripherals.h")
	.dwattr $C$DW$33, DW_AT_decl_line(0x18)
	.dwattr $C$DW$33, DW_AT_decl_column(0x06)
$C$DW$34	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$34, DW_AT_type(*$C$DW$T$11)

	.dwendtag $C$DW$33


$C$DW$35	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$35, DW_AT_name("schedule")
	.dwattr $C$DW$35, DW_AT_TI_symbol_name("schedule")
	.dwattr $C$DW$35, DW_AT_type(*$C$DW$T$20)
	.dwattr $C$DW$35, DW_AT_declaration
	.dwattr $C$DW$35, DW_AT_external
	.dwattr $C$DW$35, DW_AT_decl_file("../scheduling.h")
	.dwattr $C$DW$35, DW_AT_decl_line(0x29)
	.dwattr $C$DW$35, DW_AT_decl_column(0x06)
$C$DW$36	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$36, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$35


$C$DW$37	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$37, DW_AT_name("isTime")
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("isTime")
	.dwattr $C$DW$37, DW_AT_type(*$C$DW$T$6)
	.dwattr $C$DW$37, DW_AT_declaration
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_decl_file("../scheduling.h")
	.dwattr $C$DW$37, DW_AT_decl_line(0x2d)
	.dwattr $C$DW$37, DW_AT_decl_column(0x06)
$C$DW$38	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$38, DW_AT_type(*$C$DW$T$20)

	.dwendtag $C$DW$37


$C$DW$39	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$39, DW_AT_name("__bis_SR_register")
	.dwattr $C$DW$39, DW_AT_TI_symbol_name("__bis_SR_register")
	.dwattr $C$DW$39, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$39, DW_AT_declaration
	.dwattr $C$DW$39, DW_AT_external
$C$DW$40	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$40, DW_AT_type(*$C$DW$T$9)

	.dwendtag $C$DW$39


$C$DW$41	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$41, DW_AT_name("__bic_SR_register_on_exit")
	.dwattr $C$DW$41, DW_AT_TI_symbol_name("__bic_SR_register_on_exit")
	.dwattr $C$DW$41, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$41, DW_AT_declaration
	.dwattr $C$DW$41, DW_AT_external
$C$DW$42	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$42, DW_AT_type(*$C$DW$T$9)

	.dwendtag $C$DW$41

;	/home/daniel/ti/ccs1281/ccs/tools/compiler/ti-cgt-msp430_21.6.1.LTS/bin/opt430 /tmp/TI4loUAJmoP /tmp/TI4loFSbg4m 
	.sect	".text:scheduler_isr"
	.clink
	.global	scheduler_isr

$C$DW$43	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$43, DW_AT_name("scheduler_isr")
	.dwattr $C$DW$43, DW_AT_low_pc(scheduler_isr)
	.dwattr $C$DW$43, DW_AT_high_pc(0x00)
	.dwattr $C$DW$43, DW_AT_TI_symbol_name("scheduler_isr")
	.dwattr $C$DW$43, DW_AT_external
	.dwattr $C$DW$43, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$43, DW_AT_TI_begin_line(0xad)
	.dwattr $C$DW$43, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$43, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$43, DW_AT_decl_line(0xad)
	.dwattr $C$DW$43, DW_AT_decl_column(0x12)
	.dwattr $C$DW$43, DW_AT_TI_interrupt
	.dwattr $C$DW$43, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 173,column 38,is_stmt,address scheduler_isr,isa 0

	.dwfde $C$DW$CIE, scheduler_isr

;*****************************************************************************
;* FUNCTION NAME: scheduler_isr                                              *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 10 Save = 10 byte                 *
;*****************************************************************************
scheduler_isr:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        PUSH.W    r15                   ; [] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 15, -4
        PUSH.W    r14                   ; [] 
	.dwcfi	cfa_offset, 6
	.dwcfi	save_reg_to_mem, 14, -6
        PUSH.W    r13                   ; [] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 13, -8
        PUSH.W    r12                   ; [] 
	.dwcfi	cfa_offset, 10
	.dwcfi	save_reg_to_mem, 12, -10
        PUSH.W    r11                   ; [] 
	.dwcfi	cfa_offset, 12
	.dwcfi	save_reg_to_mem, 11, -12
	.dwpsn	file "../main.c",line 174,column 5,is_stmt,isa 0
        ADD.W     &Tperiod+0,&CurrentTime+0 ; [] |174| 
	.dwpsn	file "../main.c",line 176,column 5,is_stmt,isa 0
        XOR.B     #1,&P1OUT+0           ; [] |176| 
	.dwpsn	file "../main.c",line 178,column 5,is_stmt,isa 0
        TST.B     &button_flag+0        ; [] |178| 
        JEQ       $C$L1                 ; [] |178| 
                                          ; [] |178| 
;* --------------------------------------------------------------------------*
        MOV.W     &Tdebounce+0,r12      ; [] |178| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("isTime")
	.dwattr $C$DW$44, DW_AT_TI_call

        CALL      #isTime               ; [] |178| 
                                          ; [] |178| 
        TST.B     r12                   ; [] |178| 
        JEQ       $C$L1                 ; [] |178| 
                                          ; [] |178| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 179,column 9,is_stmt,isa 0
        MOV.B     #0,&button_flag+0     ; [] |179| 
	.dwpsn	file "../main.c",line 180,column 9,is_stmt,isa 0
        BIT.B     #8,&P1IN+0            ; [] |180| 
        JNE       $C$L1                 ; [] |180| 
                                          ; [] |180| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 182,column 13,is_stmt,isa 0
        OR.B      #1,&job_vector+0      ; [] |182| 
;* --------------------------------------------------------------------------*
$C$L1:    
	.dwpsn	file "../main.c",line 185,column 5,is_stmt,isa 0
        TST.B     &conversion_flag+0    ; [] |185| 
        JEQ       $C$L2                 ; [] |185| 
                                          ; [] |185| 
;* --------------------------------------------------------------------------*
        MOV.W     &TADC+0,r12           ; [] |185| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("isTime")
	.dwattr $C$DW$45, DW_AT_TI_call

        CALL      #isTime               ; [] |185| 
                                          ; [] |185| 
        TST.B     r12                   ; [] |185| 
        JEQ       $C$L2                 ; [] |185| 
                                          ; [] |185| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 186,column 9,is_stmt,isa 0
        OR.B      #2,&job_vector+0      ; [] |186| 
;* --------------------------------------------------------------------------*
$C$L2:    
	.dwpsn	file "../main.c",line 188,column 5,is_stmt,isa 0
        MOV.W     &Tbuzzer+0,r12        ; [] |188| 
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("isTime")
	.dwattr $C$DW$46, DW_AT_TI_call

        CALL      #isTime               ; [] |188| 
                                          ; [] |188| 
        TST.B     r12                   ; [] |188| 
        JEQ       $C$L3                 ; [] |188| 
                                          ; [] |188| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 189,column 9,is_stmt,isa 0
        OR.B      #4,&job_vector+0      ; [] |189| 
;* --------------------------------------------------------------------------*
$C$L3:    
	.dwpsn	file "../main.c",line 193,column 5,is_stmt,isa 0
        MOV.B     &job_vector+0,r14     ; [] |193| 
        AND.W     #1,r14                ; [] |193| 
        MOV.B     &job_vector+0,r15     ; [] |193| 
        RRA.W     r15                   ; [] |193| 
        AND.W     #1,r15                ; [] |193| 
        OR.W      r14,r15               ; [] |193| 
        MOV.B     &job_vector+0,r14     ; [] |193| 
        RRA.W     r14                   ; [] |193| 
        RRA.W     r14                   ; [] |193| 
        AND.W     #1,r14                ; [] |193| 
        OR.W      r15,r14               ; [] |193| 
        TST.W     r14                   ; [] |193| 
        JEQ       $C$L4                 ; [] |193| 
                                          ; [] |193| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 194,column 9,is_stmt,isa 0
        BIC.W     #16,10(SP)            ; [] |194| 
;* --------------------------------------------------------------------------*
$C$L4:    
	.dwpsn	file "../main.c",line 197,column 1,is_stmt,isa 0
        POP       r11                   ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	cfa_offset, 10
        POP       r12                   ; [] 
	.dwcfi	restore_reg, 12
	.dwcfi	cfa_offset, 8
        POP       r13                   ; [] 
	.dwcfi	restore_reg, 13
	.dwcfi	cfa_offset, 6
        POP       r14                   ; [] 
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 4
        POP       r15                   ; [] 
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 2
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$43, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$43, DW_AT_TI_end_line(0xc5)
	.dwattr $C$DW$43, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$43

	.sect	".text:main"
	.clink
	.global	main

$C$DW$48	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$48, DW_AT_name("main")
	.dwattr $C$DW$48, DW_AT_low_pc(main)
	.dwattr $C$DW$48, DW_AT_high_pc(0x00)
	.dwattr $C$DW$48, DW_AT_TI_symbol_name("main")
	.dwattr $C$DW$48, DW_AT_external
	.dwattr $C$DW$48, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$48, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$48, DW_AT_TI_begin_line(0x53)
	.dwattr $C$DW$48, DW_AT_TI_begin_column(0x05)
	.dwattr $C$DW$48, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$48, DW_AT_decl_line(0x53)
	.dwattr $C$DW$48, DW_AT_decl_column(0x05)
	.dwattr $C$DW$48, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../main.c",line 84,column 1,is_stmt,address main,isa 0

	.dwfde $C$DW$CIE, main

;*****************************************************************************
;* FUNCTION NAME: main                                                       *
;*                                                                           *
;*   Regs Modified     : SR,r11,r12,r13,r14,r15                              *
;*   Regs Used         : SR,r11,r12,r13,r14,r15                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                   *
;*****************************************************************************
main:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
	.dwpsn	file "../main.c",line 86,column 5,is_stmt,isa 0
        MOV.W     #23168,&WDTCTL+0      ; [] |86| 
	.dwpsn	file "../main.c",line 87,column 5,is_stmt,isa 0
        BIS.W     #8,SR                 ; [] |87| 
	.dwpsn	file "../main.c",line 90,column 5,is_stmt,isa 0
        MOV.B     #0,&P1OUT+0           ; [] |90| 
	.dwpsn	file "../main.c",line 91,column 5,is_stmt,isa 0
        MOV.B     #0,&P2OUT+0           ; [] |91| 
	.dwpsn	file "../main.c",line 92,column 5,is_stmt,isa 0
        MOV.B     #0,&P3OUT+0           ; [] |92| 
	.dwpsn	file "../main.c",line 93,column 5,is_stmt,isa 0
        MOV.B     #0,&P1DIR+0           ; [] |93| 
	.dwpsn	file "../main.c",line 94,column 5,is_stmt,isa 0
        MOV.B     #0,&P2DIR+0           ; [] |94| 
	.dwpsn	file "../main.c",line 95,column 5,is_stmt,isa 0
        MOV.B     #0,&P3DIR+0           ; [] |95| 
	.dwpsn	file "../main.c",line 99,column 5,is_stmt,isa 0
        OR.B      #16,&P1REN+0          ; [] |99| 
	.dwpsn	file "../main.c",line 100,column 5,is_stmt,isa 0
        AND.B     #239,&P1DIR+0         ; [] |100| 
	.dwpsn	file "../main.c",line 101,column 5,is_stmt,isa 0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("setup_pot_ADC")
	.dwattr $C$DW$49, DW_AT_TI_call

        CALL      #setup_pot_ADC        ; [] |101| 
                                          ; [] |101| 
	.dwpsn	file "../main.c",line 104,column 5,is_stmt,isa 0
        MOV.B     #3,&P2DIR+0           ; [] |104| 
	.dwpsn	file "../main.c",line 105,column 5,is_stmt,isa 0
        OR.B      #3,&P2OUT+0           ; [] |105| 
	.dwpsn	file "../main.c",line 106,column 5,is_stmt,isa 0
        OR.B      #3,&P2SEL+0           ; [] |106| 
	.dwpsn	file "../main.c",line 107,column 5,is_stmt,isa 0
        BIC.B     #4,&P2SEL2+0          ; [] |107| 
	.dwpsn	file "../main.c",line 110,column 5,is_stmt,isa 0
        OR.B      #1,&P1DIR+0           ; [] |110| 
	.dwpsn	file "../main.c",line 111,column 5,is_stmt,isa 0
        OR.B      #40,&P2DIR+0          ; [] |111| 
	.dwpsn	file "../main.c",line 114,column 5,is_stmt,isa 0
        BIC.B     #8,&P1DIR+0           ; [] |114| 
	.dwpsn	file "../main.c",line 115,column 5,is_stmt,isa 0
        OR.B      #8,&P1IE+0            ; [] |115| 
	.dwpsn	file "../main.c",line 116,column 5,is_stmt,isa 0
        MOV.B     #8,&P1IES+0           ; [] |116| 
	.dwpsn	file "../main.c",line 119,column 5,is_stmt,isa 0
        MOV.W     &Tperiod+0,r12        ; [] |119| 
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("setup_schedule_timerA0")
	.dwattr $C$DW$50, DW_AT_TI_call

        CALL      #setup_schedule_timerA0 ; [] |119| 
                                          ; [] |119| 
	.dwpsn	file "../main.c",line 122,column 5,is_stmt,isa 0
        OR.W      #3,&ADC10CTL0+0       ; [] |122| 
;* --------------------------------------------------------------------------*
;*   BEGIN LOOP $C$L5
;*
;*   Loop source line                : 124
;*   Loop closing brace source line  : 166
;*   Known Minimum Trip Count        : 1
;*   Known Maximum Trip Count        : 4294967295
;*   Known Max Trip Count Factor     : 1
;* --------------------------------------------------------------------------*
$C$L5:    
	.dwpsn	file "../main.c",line 126,column 9,is_stmt,isa 0
        BIT.B     #1,&job_vector+0      ; [] |126| 
        JEQ       $C$L6                 ; [] |126| 
                                          ; [] |126| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 127,column 13,is_stmt,isa 0
        BIC.B     #1,&job_vector+0      ; [] |127| 
	.dwpsn	file "../main.c",line 128,column 13,is_stmt,isa 0
        XOR.B     #1,&buzzer_config+0   ; [] |128| 
;* --------------------------------------------------------------------------*
$C$L6:    
	.dwpsn	file "../main.c",line 130,column 9,is_stmt,isa 0
        MOV.B     &job_vector+0,r15     ; [] |130| 
        RRA.W     r15                   ; [] |130| 
        BIT.W     #1,r15                ; [] |130| 
        JEQ       $C$L9                 ; [] |130| 
                                          ; [] |130| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 132,column 13,is_stmt,isa 0
        BIC.B     #2,&job_vector+0      ; [] |132| 
	.dwpsn	file "../main.c",line 135,column 13,is_stmt,isa 0
        MOV.W     &ADC10MEM+0,r15       ; [] |135| 
        SUB.W     #800,r15              ; [] |135| 
        RLA.W     r15                   ; [] |135| 
        RLA.W     r15                   ; [] |135| 
        RLA.W     r15                   ; [] |135| 
        MOV.W     r15,&fcur+0           ; [] |135| 
	.dwpsn	file "../main.c",line 138,column 13,is_stmt,isa 0
        AND.B     #215,&P2OUT+0         ; [] |138| 
	.dwpsn	file "../main.c",line 139,column 13,is_stmt,isa 0
        TST.B     &buzzer_config+0      ; [] |139| 
        JNE       $C$L7                 ; [] |139| 
                                          ; [] |139| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 143,column 17,is_stmt,isa 0
        OR.B      #32,&P2OUT+0          ; [] |143| 
	.dwpsn	file "../main.c",line 144,column 17,is_stmt,isa 0
        MOV.W     #1000,r15             ; [] |144| 
        ADD.W     &fcur+0,r15           ; [] |144| 
        MOV.W     r15,&flow+0           ; [] |144| 
        JMP       $C$L8                 ; [] |144| 
                                          ; [] |144| 
;* --------------------------------------------------------------------------*
$C$L7:    
	.dwpsn	file "../main.c",line 140,column 17,is_stmt,isa 0
        OR.B      #8,&P2OUT+0           ; [] |140| 
	.dwpsn	file "../main.c",line 141,column 17,is_stmt,isa 0
        MOV.W     #2000,r15             ; [] |141| 
        ADD.W     &fcur+0,r15           ; [] |141| 
        MOV.W     r15,&fhigh+0          ; [] |141| 
;* --------------------------------------------------------------------------*
$C$L8:    
	.dwpsn	file "../main.c",line 148,column 13,is_stmt,isa 0
        OR.W      #3,&ADC10CTL0+0       ; [] |148| 
;* --------------------------------------------------------------------------*
$C$L9:    
	.dwpsn	file "../main.c",line 150,column 9,is_stmt,isa 0
        MOV.B     &job_vector+0,r15     ; [] |150| 
        RRA.W     r15                   ; [] |150| 
        RRA.W     r15                   ; [] |150| 
        BIT.W     #1,r15                ; [] |150| 
        JEQ       $C$L12                ; [] |150| 
                                          ; [] |150| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 152,column 13,is_stmt,isa 0
        BIC.B     #4,&job_vector+0      ; [] |152| 
	.dwpsn	file "../main.c",line 154,column 13,is_stmt,isa 0
        TST.B     &buzzer_state+0       ; [] |154| 
        JNE       $C$L10                ; [] |154| 
                                          ; [] |154| 
;* --------------------------------------------------------------------------*
	.dwpsn	file "../main.c",line 157,column 17,is_stmt,isa 0
        MOV.W     &flow+0,r12           ; [] |157| 
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("setup_buzzer_timer")
	.dwattr $C$DW$51, DW_AT_TI_call

        CALL      #setup_buzzer_timer   ; [] |157| 
                                          ; [] |157| 
        JMP       $C$L11                ; [] |157| 
                                          ; [] |157| 
;* --------------------------------------------------------------------------*
$C$L10:    
	.dwpsn	file "../main.c",line 155,column 17,is_stmt,isa 0
        MOV.W     &fhigh+0,r12          ; [] |155| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("setup_buzzer_timer")
	.dwattr $C$DW$52, DW_AT_TI_call

        CALL      #setup_buzzer_timer   ; [] |155| 
                                          ; [] |155| 
;* --------------------------------------------------------------------------*
$C$L11:    
	.dwpsn	file "../main.c",line 159,column 13,is_stmt,isa 0
        XOR.B     #1,&buzzer_state+0    ; [] |159| 
	.dwpsn	file "../main.c",line 160,column 13,is_stmt,isa 0
        MOV.W     #600,r12              ; [] |160| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("schedule")
	.dwattr $C$DW$53, DW_AT_TI_call

        CALL      #schedule             ; [] |160| 
                                          ; [] |160| 
        MOV.W     r12,&Tbuzzer+0        ; [] |160| 
;* --------------------------------------------------------------------------*
$C$L12:    
	.dwpsn	file "../main.c",line 164,column 9,is_stmt,isa 0
        BIS.W     #24,SR                ; [] |164| 
	.dwpsn	file "../main.c",line 124,column 11,is_stmt,isa 0
        JMP       $C$L5                 ; [] |124| 
                                          ; [] |124| 
;* --------------------------------------------------------------------------*
	.dwattr $C$DW$48, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$48, DW_AT_TI_end_line(0xa9)
	.dwattr $C$DW$48, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$48

	.sect	".text:button_isr"
	.clink
	.global	button_isr

$C$DW$54	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$54, DW_AT_name("button_isr")
	.dwattr $C$DW$54, DW_AT_low_pc(button_isr)
	.dwattr $C$DW$54, DW_AT_high_pc(0x00)
	.dwattr $C$DW$54, DW_AT_TI_symbol_name("button_isr")
	.dwattr $C$DW$54, DW_AT_external
	.dwattr $C$DW$54, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$54, DW_AT_TI_begin_line(0xd0)
	.dwattr $C$DW$54, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$54, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$54, DW_AT_decl_line(0xd0)
	.dwattr $C$DW$54, DW_AT_decl_column(0x12)
	.dwattr $C$DW$54, DW_AT_TI_interrupt
	.dwattr $C$DW$54, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 208,column 35,is_stmt,address button_isr,isa 0

	.dwfde $C$DW$CIE, button_isr

;*****************************************************************************
;* FUNCTION NAME: button_isr                                                 *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 10 Save = 10 byte                 *
;*****************************************************************************
button_isr:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        PUSH.W    r15                   ; [] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 15, -4
        PUSH.W    r14                   ; [] 
	.dwcfi	cfa_offset, 6
	.dwcfi	save_reg_to_mem, 14, -6
        PUSH.W    r13                   ; [] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 13, -8
        PUSH.W    r12                   ; [] 
	.dwcfi	cfa_offset, 10
	.dwcfi	save_reg_to_mem, 12, -10
        PUSH.W    r11                   ; [] 
	.dwcfi	cfa_offset, 12
	.dwcfi	save_reg_to_mem, 11, -12
	.dwpsn	file "../main.c",line 209,column 5,is_stmt,isa 0
        MOV.B     #1,&button_flag+0     ; [] |209| 
	.dwpsn	file "../main.c",line 210,column 5,is_stmt,isa 0
        MOV.B     #0,&P1IFG+0           ; [] |210| 
	.dwpsn	file "../main.c",line 211,column 5,is_stmt,isa 0
        MOV.W     #100,r12              ; [] |211| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("schedule")
	.dwattr $C$DW$55, DW_AT_TI_call

        CALL      #schedule             ; [] |211| 
                                          ; [] |211| 
        MOV.W     r12,&Tdebounce+0      ; [] |211| 
	.dwpsn	file "../main.c",line 214,column 1,is_stmt,isa 0
        POP       r11                   ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	cfa_offset, 10
        POP       r12                   ; [] 
	.dwcfi	restore_reg, 12
	.dwcfi	cfa_offset, 8
        POP       r13                   ; [] 
	.dwcfi	restore_reg, 13
	.dwcfi	cfa_offset, 6
        POP       r14                   ; [] 
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 4
        POP       r15                   ; [] 
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 2
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$54, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$54, DW_AT_TI_end_line(0xd6)
	.dwattr $C$DW$54, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$54

	.sect	".text:adc_conversion_isr"
	.clink
	.global	adc_conversion_isr

$C$DW$57	.dwtag  DW_TAG_subprogram
	.dwattr $C$DW$57, DW_AT_name("adc_conversion_isr")
	.dwattr $C$DW$57, DW_AT_low_pc(adc_conversion_isr)
	.dwattr $C$DW$57, DW_AT_high_pc(0x00)
	.dwattr $C$DW$57, DW_AT_TI_symbol_name("adc_conversion_isr")
	.dwattr $C$DW$57, DW_AT_external
	.dwattr $C$DW$57, DW_AT_TI_begin_file("../main.c")
	.dwattr $C$DW$57, DW_AT_TI_begin_line(0xc8)
	.dwattr $C$DW$57, DW_AT_TI_begin_column(0x12)
	.dwattr $C$DW$57, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$57, DW_AT_decl_line(0xc8)
	.dwattr $C$DW$57, DW_AT_decl_column(0x12)
	.dwattr $C$DW$57, DW_AT_TI_interrupt
	.dwattr $C$DW$57, DW_AT_TI_max_frame_size(0x0c)
	.dwpsn	file "../main.c",line 200,column 43,is_stmt,address adc_conversion_isr,isa 0

	.dwfde $C$DW$CIE, adc_conversion_isr

;*****************************************************************************
;* FUNCTION NAME: adc_conversion_isr                                         *
;*                                                                           *
;*   Regs Modified     : SP,SR,r11,r12,r13,r14,r15                           *
;*   Regs Used         : SP,SR,r11,r12,r13,r14,r15                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 10 Save = 10 byte                 *
;*****************************************************************************
adc_conversion_isr:
;* --------------------------------------------------------------------------*
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 16, -2
        PUSH.W    r15                   ; [] 
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 15, -4
        PUSH.W    r14                   ; [] 
	.dwcfi	cfa_offset, 6
	.dwcfi	save_reg_to_mem, 14, -6
        PUSH.W    r13                   ; [] 
	.dwcfi	cfa_offset, 8
	.dwcfi	save_reg_to_mem, 13, -8
        PUSH.W    r12                   ; [] 
	.dwcfi	cfa_offset, 10
	.dwcfi	save_reg_to_mem, 12, -10
        PUSH.W    r11                   ; [] 
	.dwcfi	cfa_offset, 12
	.dwcfi	save_reg_to_mem, 11, -12
	.dwpsn	file "../main.c",line 201,column 5,is_stmt,isa 0
        MOV.B     #1,&conversion_flag+0 ; [] |201| 
	.dwpsn	file "../main.c",line 202,column 5,is_stmt,isa 0
        MOV.W     #100,r12              ; [] |202| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("schedule")
	.dwattr $C$DW$58, DW_AT_TI_call

        CALL      #schedule             ; [] |202| 
                                          ; [] |202| 
        MOV.W     r12,&TADC+0           ; [] |202| 
	.dwpsn	file "../main.c",line 204,column 1,is_stmt,isa 0
        POP       r11                   ; [] 
	.dwcfi	restore_reg, 11
	.dwcfi	cfa_offset, 10
        POP       r12                   ; [] 
	.dwcfi	restore_reg, 12
	.dwcfi	cfa_offset, 8
        POP       r13                   ; [] 
	.dwcfi	restore_reg, 13
	.dwcfi	cfa_offset, 6
        POP       r14                   ; [] 
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 4
        POP       r15                   ; [] 
	.dwcfi	restore_reg, 15
	.dwcfi	cfa_offset, 2
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_TI_return

        RETI      ; [] 
        ; [] 
	.dwattr $C$DW$57, DW_AT_TI_end_file("../main.c")
	.dwattr $C$DW$57, DW_AT_TI_end_line(0xcc)
	.dwattr $C$DW$57, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$57

;*****************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                             *
;*****************************************************************************
	.global	ADC10CTL0
	.global	ADC10MEM
	.global	P1IN
	.global	P1OUT
	.global	P1DIR
	.global	P1IFG
	.global	P1IES
	.global	P1IE
	.global	P1REN
	.global	P2OUT
	.global	P2DIR
	.global	P2SEL
	.global	P2SEL2
	.global	P3OUT
	.global	P3DIR
	.global	WDTCTL
	.global	setup_pot_ADC
	.global	setup_schedule_timerA0
	.global	setup_buzzer_timer
	.global	schedule
	.global	isTime

;******************************************************************************
;* BUILD ATTRIBUTES                                                           *
;******************************************************************************
	.battr "TI", Tag_File, 1, Tag_LPM_INFO(2)
	.battr "TI", Tag_File, 1, Tag_PORTS_INIT_INFO("012345678901ABCDEFGHIJ01110000000000000000000111000000000000000000")
	.battr "TI", Tag_File, 1, Tag_LEA_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY32_INFO(1)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_ISR_INFO(3)
	.battr "TI", Tag_File, 1, Tag_HW_MPY_INLINE_INFO(1)
	.battr "mspabi", Tag_File, 1, Tag_enum_size(3)

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

$C$DW$T$19	.dwtag  DW_TAG_structure_type
	.dwattr $C$DW$T$19, DW_AT_name("Jobs")
	.dwattr $C$DW$T$19, DW_AT_byte_size(0x02)
$C$DW$60	.dwtag  DW_TAG_member
	.dwattr $C$DW$60, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$60, DW_AT_name("button")
	.dwattr $C$DW$60, DW_AT_TI_symbol_name("button")
	.dwattr $C$DW$60, DW_AT_bit_offset(0x0f)
	.dwattr $C$DW$60, DW_AT_bit_size(0x01)
	.dwattr $C$DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$60, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$60, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$60, DW_AT_decl_line(0x36)
	.dwattr $C$DW$60, DW_AT_decl_column(0x12)

$C$DW$61	.dwtag  DW_TAG_member
	.dwattr $C$DW$61, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$61, DW_AT_name("ADC")
	.dwattr $C$DW$61, DW_AT_TI_symbol_name("ADC")
	.dwattr $C$DW$61, DW_AT_bit_offset(0x0e)
	.dwattr $C$DW$61, DW_AT_bit_size(0x01)
	.dwattr $C$DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$61, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$61, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$61, DW_AT_decl_line(0x37)
	.dwattr $C$DW$61, DW_AT_decl_column(0x12)

$C$DW$62	.dwtag  DW_TAG_member
	.dwattr $C$DW$62, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$62, DW_AT_name("Buzzer")
	.dwattr $C$DW$62, DW_AT_TI_symbol_name("Buzzer")
	.dwattr $C$DW$62, DW_AT_bit_offset(0x0d)
	.dwattr $C$DW$62, DW_AT_bit_size(0x01)
	.dwattr $C$DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr $C$DW$62, DW_AT_accessibility(DW_ACCESS_public)
	.dwattr $C$DW$62, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$62, DW_AT_decl_line(0x38)
	.dwattr $C$DW$62, DW_AT_decl_column(0x12)

	.dwattr $C$DW$T$19, DW_AT_decl_file("../main.c")
	.dwattr $C$DW$T$19, DW_AT_decl_line(0x35)
	.dwattr $C$DW$T$19, DW_AT_decl_column(0x08)
	.dwendtag $C$DW$T$19

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

$C$DW$T$27	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$T$6)

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

$C$DW$T$20	.dwtag  DW_TAG_typedef
	.dwattr $C$DW$T$20, DW_AT_name("Time")
	.dwattr $C$DW$T$20, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$20, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$20, DW_AT_decl_file("../scheduling.h")
	.dwattr $C$DW$T$20, DW_AT_decl_line(0x12)
	.dwattr $C$DW$T$20, DW_AT_decl_column(0x17)

$C$DW$T$32	.dwtag  DW_TAG_volatile_type
	.dwattr $C$DW$T$32, DW_AT_type(*$C$DW$T$11)

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

$C$DW$63	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$63, DW_AT_name("PC")
	.dwattr $C$DW$63, DW_AT_location[DW_OP_reg0]

$C$DW$64	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$64, DW_AT_name("SP")
	.dwattr $C$DW$64, DW_AT_location[DW_OP_reg1]

$C$DW$65	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$65, DW_AT_name("SR")
	.dwattr $C$DW$65, DW_AT_location[DW_OP_reg2]

$C$DW$66	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$66, DW_AT_name("CG")
	.dwattr $C$DW$66, DW_AT_location[DW_OP_reg3]

$C$DW$67	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$67, DW_AT_name("r4")
	.dwattr $C$DW$67, DW_AT_location[DW_OP_reg4]

$C$DW$68	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$68, DW_AT_name("r5")
	.dwattr $C$DW$68, DW_AT_location[DW_OP_reg5]

$C$DW$69	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$69, DW_AT_name("r6")
	.dwattr $C$DW$69, DW_AT_location[DW_OP_reg6]

$C$DW$70	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$70, DW_AT_name("r7")
	.dwattr $C$DW$70, DW_AT_location[DW_OP_reg7]

$C$DW$71	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$71, DW_AT_name("r8")
	.dwattr $C$DW$71, DW_AT_location[DW_OP_reg8]

$C$DW$72	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$72, DW_AT_name("r9")
	.dwattr $C$DW$72, DW_AT_location[DW_OP_reg9]

$C$DW$73	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$73, DW_AT_name("r10")
	.dwattr $C$DW$73, DW_AT_location[DW_OP_reg10]

$C$DW$74	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$74, DW_AT_name("r11")
	.dwattr $C$DW$74, DW_AT_location[DW_OP_reg11]

$C$DW$75	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$75, DW_AT_name("r12")
	.dwattr $C$DW$75, DW_AT_location[DW_OP_reg12]

$C$DW$76	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$76, DW_AT_name("r13")
	.dwattr $C$DW$76, DW_AT_location[DW_OP_reg13]

$C$DW$77	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$77, DW_AT_name("r14")
	.dwattr $C$DW$77, DW_AT_location[DW_OP_reg14]

$C$DW$78	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$78, DW_AT_name("r15")
	.dwattr $C$DW$78, DW_AT_location[DW_OP_reg15]

$C$DW$79	.dwtag  DW_TAG_TI_assign_register
	.dwattr $C$DW$79, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$79, DW_AT_location[DW_OP_reg16]

	.dwendtag $C$DW$CU


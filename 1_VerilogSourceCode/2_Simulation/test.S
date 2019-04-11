.org 0x0
 	.global _start
_start:
	lui x1,0xf000f 		# x1 	0xf000f000
	nop
	nop
	nop
	nop
	slli x2,x1,4 		# x2 	0x000f0000
	nop
	nop
	nop
	nop
	srli x3,x1,4 		# x3 	0x0f000f00
	nop
	nop
	nop
	nop
	srai x4,x1,8 		# x4 	0xfff000f0
	nop
	nop
	nop
	nop
	andi x5,x4,0x0f0 	# x5 	0x000000f0
	nop
	nop
	nop
	nop
	ori x6,x5,0x0fe 	# x6 	0x000000fe
	nop
	nop
	nop
	nop
	xori x7,x4,0x0f0 	# x7 	0xfff00000
	nop
	nop
	nop
	nop
	and x8,x4,x5 		# x8 	0x000000f0
	nop
	nop
	nop
	nop
	or x9,x8,x7 		# x9 	0xfff000f0
	nop
	nop
	nop
	nop
	xor x10,x8,x9		# x10 	0xfff00000
	nop
	nop
	nop
	nop
	addi x11,x0,4		# x11	0x00000004
	nop
	nop
	nop
	nop
	srl x12,x10,x11		# x12	0x0fff0000
	nop
	nop
	nop
	nop
	sra x13,x10,x11		# x13 	0xffff0000
	nop
	nop
	nop
	nop
	sll x14,x10,x11		# x14	0xff000000
	nop
	nop
	nop
	nop
	add x15,x13,x14		# x15	0xfeff0000
	nop
	nop
	nop
	nop
	sub x16,x13,x14		# x16 	0x00ff0000
	nop
	nop
	nop
	nop
	slt x17,x15,x16		# x17 	0x00000001
	nop
	nop
	nop
	nop
	sltu x18,x15,x16	# x18	0x00000000
	nop
	nop
	nop
	nop
	slti x19,x17,-1 	# x19	0x00000000
	nop
	nop
	nop
	nop
	sltiu x20,x17,-1	# x20	0x00000001
	nop
	nop
	nop
	nop
	auipc x21,0x00001	# x21	0x00001190
	nop
	nop
	nop
	nop
infinity_loop:
    jal    x0, infinity_loop # 测试结束，死循环

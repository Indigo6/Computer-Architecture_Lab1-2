<<<<<<< HEAD
=======
# 1 "3testAll.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "3testAll.S"
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1
# See LICENSE for license details.

#*****************************************************************************
# xor.S
#-----------------------------------------------------------------------------
<<<<<<< HEAD
#
# Test xor instruction.
#

#include "./include/riscv_test.h"
#include "./include/test_macros.h"


RVTEST_CODE_BEGIN


#slti.S
=======

# Test xor instruction.


# 1 "./riscv_test.h" 1





# 1 "././encoding.h" 1
# 7 "./riscv_test.h" 2
# 11 "3testAll.S" 2
# 1 "./test_macros.h" 1






#-----------------------------------------------------------------------
# Helper macros
#-----------------------------------------------------------------------
# 20 "./test_macros.h"
# We use a macro hack to simpify code generation for various numbers
# of bubble cycles.
# 36 "./test_macros.h"
#-----------------------------------------------------------------------
# RV64UI MACROS
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
# Tests for instructions with immediate operand
#-----------------------------------------------------------------------
# 92 "./test_macros.h"
#-----------------------------------------------------------------------
# Tests for an instruction with register operands
#-----------------------------------------------------------------------
# 120 "./test_macros.h"
#-----------------------------------------------------------------------
# Tests for an instruction with register-register operands
#-----------------------------------------------------------------------
# 214 "./test_macros.h"
#-----------------------------------------------------------------------
# Test memory instructions
#-----------------------------------------------------------------------
# 340 "./test_macros.h"
#-----------------------------------------------------------------------
# Test jump instructions
#-----------------------------------------------------------------------
# 369 "./test_macros.h"
#-----------------------------------------------------------------------
# RV64UF MACROS
#-----------------------------------------------------------------------

#-----------------------------------------------------------------------
# Tests floating-point instructions
#-----------------------------------------------------------------------
# 631 "./test_macros.h"
#-----------------------------------------------------------------------
# Pass and fail code (assumes test num is in gp)
#-----------------------------------------------------------------------
# 643 "./test_macros.h"
#-----------------------------------------------------------------------
# Test data section
#-----------------------------------------------------------------------
# 12 "3testAll.S" 2


.section .text; .align 6; .globl _start; _start: addi zero,zero, 0


 #slti.S
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_OP( 524,  slti, 0, 0x0000000000000000, 0x000 );
  TEST_IMM_OP( 525,  slti, 0, 0x0000000000000001, 0x001 );
  TEST_IMM_OP( 526,  slti, 1, 0x0000000000000003, 0x007 );
  TEST_IMM_OP( 527,  slti, 0, 0x0000000000000007, 0x003 );

  TEST_IMM_OP( 528,  slti, 0, 0x0000000000000000, 0x800 );
  TEST_IMM_OP( 529,  slti, 1, 0xffffffff80000000, 0x000 );
  TEST_IMM_OP( 530,  slti, 1, 0xffffffff80000000, 0x800 );

  TEST_IMM_OP( 531,  slti, 1, 0x0000000000000000, 0x7ff );
  TEST_IMM_OP( 532, slti, 0, 0x000000007fffffff, 0x000 );
  TEST_IMM_OP( 533, slti, 0, 0x000000007fffffff, 0x7ff );

  TEST_IMM_OP( 534, slti, 1, 0xffffffff80000000, 0x7ff );
  TEST_IMM_OP( 535, slti, 0, 0x000000007fffffff, 0x800 );

  TEST_IMM_OP( 536, slti, 0, 0x0000000000000000, 0xfff );
  TEST_IMM_OP( 537, slti, 1, 0xffffffffffffffff, 0x001 );
  TEST_IMM_OP( 538, slti, 0, 0xffffffffffffffff, 0xfff );
=======
  test_524: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x000) | (-(((0x000) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 524; bne x30, x29, fail;;
  test_525: li x1, ((0x0000000000000001) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x001) | (-(((0x001) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 525; bne x30, x29, fail;;
  test_526: li x1, ((0x0000000000000003) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x007) | (-(((0x007) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 526; bne x30, x29, fail;;
  test_527: li x1, ((0x0000000000000007) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x003) | (-(((0x003) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 527; bne x30, x29, fail;;

  test_528: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x800) | (-(((0x800) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 528; bne x30, x29, fail;;
  test_529: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x000) | (-(((0x000) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 529; bne x30, x29, fail;;
  test_530: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x800) | (-(((0x800) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 530; bne x30, x29, fail;;

  test_531: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x7ff) | (-(((0x7ff) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 531; bne x30, x29, fail;;
  test_532: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x000) | (-(((0x000) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 532; bne x30, x29, fail;;
  test_533: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x7ff) | (-(((0x7ff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 533; bne x30, x29, fail;;

  test_534: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x7ff) | (-(((0x7ff) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 534; bne x30, x29, fail;;
  test_535: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x800) | (-(((0x800) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 535; bne x30, x29, fail;;

  test_536: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 536; bne x30, x29, fail;;
  test_537: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0x001) | (-(((0x001) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 537; bne x30, x29, fail;;
  test_538: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 538; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_SRC1_EQ_DEST( 539, slti, 1, 11, 13 );
=======
  test_539: li x1, ((11) & ((1 << (32 - 1) << 1) - 1)); slti x1, x1, ((13) | (-(((13) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 539; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_DEST_BYPASS( 540, 0, slti, 0, 15, 10 );
  TEST_IMM_DEST_BYPASS( 541, 1, slti, 1, 10, 16 );
  TEST_IMM_DEST_BYPASS( 542, 2, slti, 0, 16,  9 );

  TEST_IMM_SRC1_BYPASS( 543, 0, slti, 1, 11, 15 );
  TEST_IMM_SRC1_BYPASS( 544, 1, slti, 0, 17,  8 );
  TEST_IMM_SRC1_BYPASS( 545, 2, slti, 1, 12, 14 );

  TEST_IMM_ZEROSRC1( 546, slti, 0, 0xfff );
  TEST_IMM_ZERODEST( 547, slti, 0x00ff00ff, 0xfff );
=======
  test_540: li x4, 0; 1: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((10) | (-(((10) >> 11) & 1) << 11)); addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 540; bne x6, x29, fail;;
  test_541: li x4, 0; 1: li x1, ((10) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((16) | (-(((16) >> 11) & 1) << 11)); nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 541; bne x6, x29, fail;;
  test_542: li x4, 0; 1: li x1, ((16) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((9) | (-(((9) >> 11) & 1) << 11)); nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 542; bne x6, x29, fail;;

  test_543: li x4, 0; 1: li x1, ((11) & ((1 << (32 - 1) << 1) - 1)); slti x30, x1, ((15) | (-(((15) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 543; bne x30, x29, fail;;
  test_544: li x4, 0; 1: li x1, ((17) & ((1 << (32 - 1) << 1) - 1)); nop; slti x30, x1, ((8) | (-(((8) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 544; bne x30, x29, fail;;
  test_545: li x4, 0; 1: li x1, ((12) & ((1 << (32 - 1) << 1) - 1)); nop; nop; slti x30, x1, ((14) | (-(((14) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 545; bne x30, x29, fail;;

  test_546: slti x1, x0, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 546; bne x1, x29, fail;;
  test_547: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); slti x0, x1, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 547; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#sltiu.S
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_OP( 548,  sltiu, 0, 0x0000000000000000, 0x000 );
  TEST_IMM_OP( 549,  sltiu, 0, 0x0000000000000001, 0x001 );
  TEST_IMM_OP( 550,  sltiu, 1, 0x0000000000000003, 0x007 );
  TEST_IMM_OP( 551,  sltiu, 0, 0x0000000000000007, 0x003 );

  TEST_IMM_OP( 552,  sltiu, 1, 0x0000000000000000, 0x800 );
  TEST_IMM_OP( 553,  sltiu, 0, 0xffffffff80000000, 0x000 );
  TEST_IMM_OP( 554,  sltiu, 1, 0xffffffff80000000, 0x800 );

  TEST_IMM_OP( 555,  sltiu, 1, 0x0000000000000000, 0x7ff );
  TEST_IMM_OP( 556, sltiu, 0, 0x000000007fffffff, 0x000 );
  TEST_IMM_OP( 557, sltiu, 0, 0x000000007fffffff, 0x7ff );

  TEST_IMM_OP( 558, sltiu, 0, 0xffffffff80000000, 0x7ff );
  TEST_IMM_OP( 559, sltiu, 1, 0x000000007fffffff, 0x800 );

  TEST_IMM_OP( 560, sltiu, 1, 0x0000000000000000, 0xfff );
  TEST_IMM_OP( 561, sltiu, 0, 0xffffffffffffffff, 0x001 );
  TEST_IMM_OP( 562, sltiu, 0, 0xffffffffffffffff, 0xfff );
=======
  test_548: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x000) | (-(((0x000) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 548; bne x30, x29, fail;;
  test_549: li x1, ((0x0000000000000001) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x001) | (-(((0x001) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 549; bne x30, x29, fail;;
  test_550: li x1, ((0x0000000000000003) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x007) | (-(((0x007) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 550; bne x30, x29, fail;;
  test_551: li x1, ((0x0000000000000007) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x003) | (-(((0x003) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 551; bne x30, x29, fail;;

  test_552: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x800) | (-(((0x800) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 552; bne x30, x29, fail;;
  test_553: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x000) | (-(((0x000) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 553; bne x30, x29, fail;;
  test_554: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x800) | (-(((0x800) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 554; bne x30, x29, fail;;

  test_555: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x7ff) | (-(((0x7ff) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 555; bne x30, x29, fail;;
  test_556: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x000) | (-(((0x000) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 556; bne x30, x29, fail;;
  test_557: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x7ff) | (-(((0x7ff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 557; bne x30, x29, fail;;

  test_558: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x7ff) | (-(((0x7ff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 558; bne x30, x29, fail;;
  test_559: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x800) | (-(((0x800) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 559; bne x30, x29, fail;;

  test_560: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 560; bne x30, x29, fail;;
  test_561: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0x001) | (-(((0x001) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 561; bne x30, x29, fail;;
  test_562: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 562; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_SRC1_EQ_DEST( 563, sltiu, 1, 11, 13 );
=======
  test_563: li x1, ((11) & ((1 << (32 - 1) << 1) - 1)); sltiu x1, x1, ((13) | (-(((13) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 563; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_DEST_BYPASS( 564, 0, sltiu, 0, 15, 10 );
  TEST_IMM_DEST_BYPASS( 565, 1, sltiu, 1, 10, 16 );
  TEST_IMM_DEST_BYPASS( 567, 2, sltiu, 0, 16,  9 );

  TEST_IMM_SRC1_BYPASS( 568, 0, sltiu, 1, 11, 15 );
  TEST_IMM_SRC1_BYPASS( 569, 1, sltiu, 0, 17,  8 );
  TEST_IMM_SRC1_BYPASS( 570, 2, sltiu, 1, 12, 14 );

  TEST_IMM_ZEROSRC1( 571, sltiu, 1, 0xfff );
  TEST_IMM_ZERODEST( 572, sltiu, 0x00ff00ff, 0xfff );
=======
  test_564: li x4, 0; 1: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((10) | (-(((10) >> 11) & 1) << 11)); addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 564; bne x6, x29, fail;;
  test_565: li x4, 0; 1: li x1, ((10) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((16) | (-(((16) >> 11) & 1) << 11)); nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 565; bne x6, x29, fail;;
  test_567: li x4, 0; 1: li x1, ((16) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((9) | (-(((9) >> 11) & 1) << 11)); nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 567; bne x6, x29, fail;;

  test_568: li x4, 0; 1: li x1, ((11) & ((1 << (32 - 1) << 1) - 1)); sltiu x30, x1, ((15) | (-(((15) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 568; bne x30, x29, fail;;
  test_569: li x4, 0; 1: li x1, ((17) & ((1 << (32 - 1) << 1) - 1)); nop; sltiu x30, x1, ((8) | (-(((8) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 569; bne x30, x29, fail;;
  test_570: li x4, 0; 1: li x1, ((12) & ((1 << (32 - 1) << 1) - 1)); nop; nop; sltiu x30, x1, ((14) | (-(((14) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 570; bne x30, x29, fail;;

  test_571: sltiu x1, x0, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 571; bne x1, x29, fail;;
  test_572: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); sltiu x0, x1, ((0xfff) | (-(((0xfff) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 572; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#sltu.S
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_OP( 573,  sltu, 0, 0x00000000, 0x00000000 );
  TEST_RR_OP( 574,  sltu, 0, 0x00000001, 0x00000001 );
  TEST_RR_OP( 575,  sltu, 1, 0x00000003, 0x00000007 );
  TEST_RR_OP( 576,  sltu, 0, 0x00000007, 0x00000003 );

  TEST_RR_OP( 577,  sltu, 1, 0x00000000, 0xffff8000 );
  TEST_RR_OP( 578,  sltu, 0, 0x80000000, 0x00000000 );
  TEST_RR_OP( 579,  sltu, 1, 0x80000000, 0xffff8000 );

  TEST_RR_OP( 580,  sltu, 1, 0x00000000, 0x00007fff );
  TEST_RR_OP( 581, sltu, 0, 0x7fffffff, 0x00000000 );
  TEST_RR_OP( 582, sltu, 0, 0x7fffffff, 0x00007fff );

  TEST_RR_OP( 583, sltu, 0, 0x80000000, 0x00007fff );
  TEST_RR_OP( 584, sltu, 1, 0x7fffffff, 0xffff8000 );

  TEST_RR_OP( 585, sltu, 1, 0x00000000, 0xffffffff );
  TEST_RR_OP( 586, sltu, 0, 0xffffffff, 0x00000001 );
  TEST_RR_OP( 587, sltu, 0, 0xffffffff, 0xffffffff );
=======
  test_573: li x1, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 573; bne x30, x29, fail;;
  test_574: li x1, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 574; bne x30, x29, fail;;
  test_575: li x1, ((0x00000003) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00000007) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 575; bne x30, x29, fail;;
  test_576: li x1, ((0x00000007) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00000003) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 576; bne x30, x29, fail;;

  test_577: li x1, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffff8000) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 577; bne x30, x29, fail;;
  test_578: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 578; bne x30, x29, fail;;
  test_579: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffff8000) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 579; bne x30, x29, fail;;

  test_580: li x1, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00007fff) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 580; bne x30, x29, fail;;
  test_581: li x1, ((0x7fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 581; bne x30, x29, fail;;
  test_582: li x1, ((0x7fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00007fff) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 582; bne x30, x29, fail;;

  test_583: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00007fff) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 583; bne x30, x29, fail;;
  test_584: li x1, ((0x7fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffff8000) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 584; bne x30, x29, fail;;

  test_585: li x1, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffff) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 585; bne x30, x29, fail;;
  test_586: li x1, ((0xffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 586; bne x30, x29, fail;;
  test_587: li x1, ((0xffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffff) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 587; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_SRC1_EQ_DEST( 588, sltu, 0, 14, 13 );
  TEST_RR_SRC2_EQ_DEST( 589, sltu, 1, 11, 13 );
  TEST_RR_SRC12_EQ_DEST( 590, sltu, 0, 13 );
=======
  test_588: li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x1, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 588; bne x1, x29, fail;;
  test_589: li x1, ((11) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x2, x1, x2;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 589; bne x2, x29, fail;;
  test_590: li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x1, x1, x1;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 590; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_DEST_BYPASS( 591, 0, sltu, 1, 11, 13 );
  TEST_RR_DEST_BYPASS( 592, 1, sltu, 0, 14, 13 );
  TEST_RR_DEST_BYPASS( 593, 2, sltu, 1, 12, 13 );

  TEST_RR_SRC12_BYPASS( 594, 0, 0, sltu, 0, 14, 13 );
  TEST_RR_SRC12_BYPASS( 595, 0, 1, sltu, 1, 11, 13 );
  TEST_RR_SRC12_BYPASS( 596, 0, 2, sltu, 0, 15, 13 );
  TEST_RR_SRC12_BYPASS( 597, 1, 0, sltu, 1, 10, 13 );
  TEST_RR_SRC12_BYPASS( 598, 1, 1, sltu, 0, 16, 13 );
  TEST_RR_SRC12_BYPASS( 599, 2, 0, sltu, 1,  9, 13 );

  TEST_RR_SRC21_BYPASS( 601, 0, 0, sltu, 0, 17, 13 );
  TEST_RR_SRC21_BYPASS( 602, 0, 1, sltu, 1,  8, 13 );
  TEST_RR_SRC21_BYPASS( 603, 0, 2, sltu, 0, 18, 13 );
  TEST_RR_SRC21_BYPASS( 604, 1, 0, sltu, 1,  7, 13 );
  TEST_RR_SRC21_BYPASS( 605, 1, 1, sltu, 0, 19, 13 );
  TEST_RR_SRC21_BYPASS( 606, 2, 0, sltu, 1,  6, 13 );

  TEST_RR_ZEROSRC1( 607, sltu, 1, -1 );
  TEST_RR_ZEROSRC2( 608, sltu, 0, -1 );
  TEST_RR_ZEROSRC12( 609, sltu, 0 );
  TEST_RR_ZERODEST( 610, sltu, 16, 30 );
=======
  test_591: li x4, 0; 1: li x1, ((11) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 591; bne x6, x29, fail;;
  test_592: li x4, 0; 1: li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 592; bne x6, x29, fail;;
  test_593: li x4, 0; 1: li x1, ((12) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 593; bne x6, x29, fail;;

  test_594: li x4, 0; 1: li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 594; bne x30, x29, fail;;
  test_595: li x4, 0; 1: li x1, ((11) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); nop; sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 595; bne x30, x29, fail;;
  test_596: li x4, 0; 1: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); nop; nop; sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 596; bne x30, x29, fail;;
  test_597: li x4, 0; 1: li x1, ((10) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 597; bne x30, x29, fail;;
  test_598: li x4, 0; 1: li x1, ((16) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); nop; sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 598; bne x30, x29, fail;;
  test_599: li x4, 0; 1: li x1, ((9) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 599; bne x30, x29, fail;;

  test_601: li x4, 0; 1: li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); li x1, ((17) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 601; bne x30, x29, fail;;
  test_602: li x4, 0; 1: li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); li x1, ((8) & ((1 << (32 - 1) << 1) - 1)); nop; sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 602; bne x30, x29, fail;;
  test_603: li x4, 0; 1: li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); li x1, ((18) & ((1 << (32 - 1) << 1) - 1)); nop; nop; sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 603; bne x30, x29, fail;;
  test_604: li x4, 0; 1: li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((7) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 604; bne x30, x29, fail;;
  test_605: li x4, 0; 1: li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((19) & ((1 << (32 - 1) << 1) - 1)); nop; sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 605; bne x30, x29, fail;;
  test_606: li x4, 0; 1: li x2, ((13) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x1, ((6) & ((1 << (32 - 1) << 1) - 1)); sltu x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 606; bne x30, x29, fail;;

  test_607: li x1, ((-1) & ((1 << (32 - 1) << 1) - 1)); sltu x2, x0, x1;; li x29, ((1) & ((1 << (32 - 1) << 1) - 1)); li gp, 607; bne x2, x29, fail;;
  test_608: li x1, ((-1) & ((1 << (32 - 1) << 1) - 1)); sltu x2, x1, x0;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 608; bne x2, x29, fail;;
  test_609: sltu x1, x0, x0;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 609; bne x1, x29, fail;;
  test_610: li x1, ((16) & ((1 << (32 - 1) << 1) - 1)); li x2, ((30) & ((1 << (32 - 1) << 1) - 1)); sltu x0, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 610; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#sra.S
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_OP( 611,  sra, 0xffffffff80000000, 0xffffffff80000000, 0  );
  TEST_RR_OP( 612,  sra, 0xffffffffc0000000, 0xffffffff80000000, 1  );
  TEST_RR_OP( 613,  sra, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_RR_OP( 614,  sra, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_RR_OP( 615,  sra, 0xffffffffffffffff, 0xffffffff80000001, 31 );

  TEST_RR_OP( 616,  sra, 0x000000007fffffff, 0x000000007fffffff, 0  );
  TEST_RR_OP( 617,  sra, 0x000000003fffffff, 0x000000007fffffff, 1  );
  TEST_RR_OP( 618,  sra, 0x0000000000ffffff, 0x000000007fffffff, 7  );
  TEST_RR_OP( 619, sra, 0x000000000001ffff, 0x000000007fffffff, 14 );
  TEST_RR_OP( 620, sra, 0x0000000000000000, 0x000000007fffffff, 31 );

  TEST_RR_OP( 621, sra, 0xffffffff81818181, 0xffffffff81818181, 0  );
  TEST_RR_OP( 622, sra, 0xffffffffc0c0c0c0, 0xffffffff81818181, 1  );
  TEST_RR_OP( 623, sra, 0xffffffffff030303, 0xffffffff81818181, 7  );
  TEST_RR_OP( 624, sra, 0xfffffffffffe0606, 0xffffffff81818181, 14 );
  TEST_RR_OP( 625, sra, 0xffffffffffffffff, 0xffffffff81818181, 31 );

  # Verify that shifts only use bottom five bits

  TEST_RR_OP( 626, sra, 0xffffffff81818181, 0xffffffff81818181, 0xffffffffffffffc0 );
  TEST_RR_OP( 627, sra, 0xffffffffc0c0c0c0, 0xffffffff81818181, 0xffffffffffffffc1 );
  TEST_RR_OP( 628, sra, 0xffffffffff030303, 0xffffffff81818181, 0xffffffffffffffc7 );
  TEST_RR_OP( 629, sra, 0xfffffffffffe0606, 0xffffffff81818181, 0xffffffffffffffce );
  TEST_RR_OP( 630, sra, 0xffffffffffffffff, 0xffffffff81818181, 0xffffffffffffffff );
=======
  test_611: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 611; bne x30, x29, fail;;
  test_612: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffc0000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 612; bne x30, x29, fail;;
  test_613: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 613; bne x30, x29, fail;;
  test_614: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 614; bne x30, x29, fail;;
  test_615: li x1, ((0xffffffff80000001) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 615; bne x30, x29, fail;;

  test_616: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 616; bne x30, x29, fail;;
  test_617: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0x000000003fffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 617; bne x30, x29, fail;;
  test_618: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0x0000000000ffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 618; bne x30, x29, fail;;
  test_619: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0x000000000001ffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 619; bne x30, x29, fail;;
  test_620: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 620; bne x30, x29, fail;;

  test_621: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li gp, 621; bne x30, x29, fail;;
  test_622: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffc0c0c0c0) & ((1 << (32 - 1) << 1) - 1)); li gp, 622; bne x30, x29, fail;;
  test_623: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffff030303) & ((1 << (32 - 1) << 1) - 1)); li gp, 623; bne x30, x29, fail;;
  test_624: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xfffffffffffe0606) & ((1 << (32 - 1) << 1) - 1)); li gp, 624; bne x30, x29, fail;;
  test_625: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 625; bne x30, x29, fail;;

  # Verify that shifts only use bottom five bits

  test_626: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffc0) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li gp, 626; bne x30, x29, fail;;
  test_627: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffc1) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffc0c0c0c0) & ((1 << (32 - 1) << 1) - 1)); li gp, 627; bne x30, x29, fail;;
  test_628: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffc7) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffff030303) & ((1 << (32 - 1) << 1) - 1)); li gp, 628; bne x30, x29, fail;;
  test_629: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffce) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xfffffffffffe0606) & ((1 << (32 - 1) << 1) - 1)); li gp, 629; bne x30, x29, fail;;
  test_630: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2;; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 630; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_SRC1_EQ_DEST( 631, sra, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_RR_SRC2_EQ_DEST( 632, sra, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_RR_SRC12_EQ_DEST( 633, sra, 0, 7 );
=======
  test_631: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x1, x1, x2;; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 631; bne x1, x29, fail;;
  test_632: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); sra x2, x1, x2;; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 632; bne x2, x29, fail;;
  test_633: li x1, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x1, x1, x1;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 633; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_DEST_BYPASS( 634, 0, sra, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_RR_DEST_BYPASS( 635, 1, sra, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_RR_DEST_BYPASS( 636, 2, sra, 0xffffffffffffffff, 0xffffffff80000000, 31 );

  TEST_RR_SRC12_BYPASS( 637, 0, 0, sra, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_RR_SRC12_BYPASS( 638, 0, 1, sra, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_RR_SRC12_BYPASS( 639, 0, 2, sra, 0xffffffffffffffff, 0xffffffff80000000, 31 );
  TEST_RR_SRC12_BYPASS( 640, 1, 0, sra, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_RR_SRC12_BYPASS( 641, 1, 1, sra, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_RR_SRC12_BYPASS( 642, 2, 0, sra, 0xffffffffffffffff, 0xffffffff80000000, 31 );

  TEST_RR_SRC21_BYPASS( 643, 0, 0, sra, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_RR_SRC21_BYPASS( 644, 0, 1, sra, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_RR_SRC21_BYPASS( 645, 0, 2, sra, 0xffffffffffffffff, 0xffffffff80000000, 31 );
  TEST_RR_SRC21_BYPASS( 646, 1, 0, sra, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_RR_SRC21_BYPASS( 647, 1, 1, sra, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_RR_SRC21_BYPASS( 648, 2, 0, sra, 0xffffffffffffffff, 0xffffffff80000000, 31 );

  TEST_RR_ZEROSRC1( 649, sra, 0, 15 );
  TEST_RR_ZEROSRC2( 650, sra, 32, 32 );
  TEST_RR_ZEROSRC12( 651, sra, 0 );
  TEST_RR_ZERODEST( 652, sra, 1024, 2048 );
=======
  test_634: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 634; bne x6, x29, fail;;
  test_635: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 635; bne x6, x29, fail;;
  test_636: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 636; bne x6, x29, fail;;

  test_637: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 637; bne x30, x29, fail;;
  test_638: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 638; bne x30, x29, fail;;
  test_639: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); nop; nop; sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 639; bne x30, x29, fail;;
  test_640: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 640; bne x30, x29, fail;;
  test_641: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 641; bne x30, x29, fail;;
  test_642: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 642; bne x30, x29, fail;;

  test_643: li x4, 0; 1: li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 643; bne x30, x29, fail;;
  test_644: li x4, 0; 1: li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); nop; sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 644; bne x30, x29, fail;;
  test_645: li x4, 0; 1: li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); nop; nop; sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 645; bne x30, x29, fail;;
  test_646: li x4, 0; 1: li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 646; bne x30, x29, fail;;
  test_647: li x4, 0; 1: li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); nop; sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 647; bne x30, x29, fail;;
  test_648: li x4, 0; 1: li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); sra x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 648; bne x30, x29, fail;;

  test_649: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); sra x2, x0, x1;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 649; bne x2, x29, fail;;
  test_650: li x1, ((32) & ((1 << (32 - 1) << 1) - 1)); sra x2, x1, x0;; li x29, ((32) & ((1 << (32 - 1) << 1) - 1)); li gp, 650; bne x2, x29, fail;;
  test_651: sra x1, x0, x0;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 651; bne x1, x29, fail;;
  test_652: li x1, ((1024) & ((1 << (32 - 1) << 1) - 1)); li x2, ((2048) & ((1 << (32 - 1) << 1) - 1)); sra x0, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 652; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#srai
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_OP( 653,  srai, 0xffffff8000000000, 0xffffff8000000000, 0  );
  TEST_IMM_OP( 654,  srai, 0xffffffffc0000000, 0xffffffff80000000, 1  );
  TEST_IMM_OP( 655,  srai, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_IMM_OP( 656,  srai, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_IMM_OP( 657,  srai, 0xffffffffffffffff, 0xffffffff80000001, 31 );

  #TEST_IMM_OP( 657,  srai, 0x000000007fffffff, 0x000000007fffffff, 0  );
  TEST_IMM_OP( 658,  srai, 0x000000003fffffff, 0x000000007fffffff, 1  );
  TEST_IMM_OP( 659,  srai, 0x0000000000ffffff, 0x000000007fffffff, 7  );
  TEST_IMM_OP( 660, srai, 0x000000000001ffff, 0x000000007fffffff, 14 );
  TEST_IMM_OP( 661, srai, 0x0000000000000000, 0x000000007fffffff, 31 );

  TEST_IMM_OP( 662, srai, 0xffffffff81818181, 0xffffffff81818181, 0  );
  TEST_IMM_OP( 663, srai, 0xffffffffc0c0c0c0, 0xffffffff81818181, 1  );
  TEST_IMM_OP( 664, srai, 0xffffffffff030303, 0xffffffff81818181, 7  );
  TEST_IMM_OP( 665, srai, 0xfffffffffffe0606, 0xffffffff81818181, 14 );
  TEST_IMM_OP( 666, srai, 0xffffffffffffffff, 0xffffffff81818181, 31 );
=======
  test_653: li x1, ((0xffffff8000000000) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((0) | (-(((0) >> 11) & 1) << 11));; li x29, ((0xffffff8000000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 653; bne x30, x29, fail;;
  test_654: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((1) | (-(((1) >> 11) & 1) << 11));; li x29, ((0xffffffffc0000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 654; bne x30, x29, fail;;
  test_655: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((7) | (-(((7) >> 11) & 1) << 11));; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 655; bne x30, x29, fail;;
  test_656: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((14) | (-(((14) >> 11) & 1) << 11));; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 656; bne x30, x29, fail;;
  test_657: li x1, ((0xffffffff80000001) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((31) | (-(((31) >> 11) & 1) << 11));; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 657; bne x30, x29, fail;;

  #test_657: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((0) | (-(((0) >> 11) & 1) << 11));; li x29, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 657; bne x30, x29, fail;;
  test_658: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((1) | (-(((1) >> 11) & 1) << 11));; li x29, ((0x000000003fffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 658; bne x30, x29, fail;;
  test_659: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((7) | (-(((7) >> 11) & 1) << 11));; li x29, ((0x0000000000ffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 659; bne x30, x29, fail;;
  test_660: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((14) | (-(((14) >> 11) & 1) << 11));; li x29, ((0x000000000001ffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 660; bne x30, x29, fail;;
  test_661: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((31) | (-(((31) >> 11) & 1) << 11));; li x29, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 661; bne x30, x29, fail;;

  test_662: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((0) | (-(((0) >> 11) & 1) << 11));; li x29, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); li gp, 662; bne x30, x29, fail;;
  test_663: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((1) | (-(((1) >> 11) & 1) << 11));; li x29, ((0xffffffffc0c0c0c0) & ((1 << (32 - 1) << 1) - 1)); li gp, 663; bne x30, x29, fail;;
  test_664: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((7) | (-(((7) >> 11) & 1) << 11));; li x29, ((0xffffffffff030303) & ((1 << (32 - 1) << 1) - 1)); li gp, 664; bne x30, x29, fail;;
  test_665: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((14) | (-(((14) >> 11) & 1) << 11));; li x29, ((0xfffffffffffe0606) & ((1 << (32 - 1) << 1) - 1)); li gp, 665; bne x30, x29, fail;;
  test_666: li x1, ((0xffffffff81818181) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((31) | (-(((31) >> 11) & 1) << 11));; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 666; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_SRC1_EQ_DEST( 667, srai, 0xffffffffff000000, 0xffffffff80000000, 7 );
=======
  test_667: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); srai x1, x1, ((7) | (-(((7) >> 11) & 1) << 11));; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 667; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_DEST_BYPASS( 668, 0, srai, 0xffffffffff000000, 0xffffffff80000000, 7  );
  TEST_IMM_DEST_BYPASS( 669, 1, srai, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_IMM_DEST_BYPASS( 670, 2, srai, 0xffffffffffffffff, 0xffffffff80000001, 31 );

  TEST_IMM_SRC1_BYPASS( 671, 0, srai, 0xffffffffff000000, 0xffffffff80000000, 7 );
  TEST_IMM_SRC1_BYPASS( 672, 1, srai, 0xfffffffffffe0000, 0xffffffff80000000, 14 );
  TEST_IMM_SRC1_BYPASS( 673, 2, srai, 0xffffffffffffffff, 0xffffffff80000001, 31 );

  TEST_IMM_ZEROSRC1( 674, srai, 0, 4 );
  TEST_IMM_ZERODEST( 675, srai, 33, 10 );
=======
  test_668: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((7) | (-(((7) >> 11) & 1) << 11)); addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 668; bne x6, x29, fail;;
  test_669: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((14) | (-(((14) >> 11) & 1) << 11)); nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 669; bne x6, x29, fail;;
  test_670: li x4, 0; 1: li x1, ((0xffffffff80000001) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((31) | (-(((31) >> 11) & 1) << 11)); nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 670; bne x6, x29, fail;;

  test_671: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); srai x30, x1, ((7) | (-(((7) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffff000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 671; bne x30, x29, fail;;
  test_672: li x4, 0; 1: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); nop; srai x30, x1, ((14) | (-(((14) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffffffe0000) & ((1 << (32 - 1) << 1) - 1)); li gp, 672; bne x30, x29, fail;;
  test_673: li x4, 0; 1: li x1, ((0xffffffff80000001) & ((1 << (32 - 1) << 1) - 1)); nop; nop; srai x30, x1, ((31) | (-(((31) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 673; bne x30, x29, fail;;

  test_674: srai x1, x0, ((4) | (-(((4) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 674; bne x1, x29, fail;;
  test_675: li x1, ((33) & ((1 << (32 - 1) << 1) - 1)); srai x0, x1, ((10) | (-(((10) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 675; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#srl.S
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
#define TEST_SRL(n, v, a) \
  TEST_RR_OP(n, srl, ((v) & ((1 << (__riscv_xlen-1) << 1) - 1)) >> (a), v, a)

  TEST_SRL( 676,  0xffffffff80000000, 0  );
  TEST_SRL( 677,  0xffffffff80000000, 1  );
  TEST_SRL( 678,  0xffffffff80000000, 7  );
  TEST_SRL( 679,  0xffffffff80000000, 14 );
  TEST_SRL( 680,  0xffffffff80000001, 31 );

  TEST_SRL( 681,  0xffffffffffffffff, 0  );
  TEST_SRL( 682,  0xffffffffffffffff, 1  );
  TEST_SRL( 683,  0xffffffffffffffff, 7  );
  TEST_SRL( 684, 0xffffffffffffffff, 14 );
  TEST_SRL( 685, 0xffffffffffffffff, 31 );

  TEST_SRL( 686, 0x0000000021212121, 0  );
  TEST_SRL( 687, 0x0000000021212121, 1  );
  TEST_SRL( 688, 0x0000000021212121, 7  );
  TEST_SRL( 689, 0x0000000021212121, 14 );
  TEST_SRL( 690, 0x0000000021212121, 31 );

  # Verify that shifts only use bottom five bits

  TEST_RR_OP( 691, srl, 0x0000000021212121, 0x0000000021212121, 0xffffffffffffffc0 );
  TEST_RR_OP( 692, srl, 0x0000000010909090, 0x0000000021212121, 0xffffffffffffffc1 );
  TEST_RR_OP( 693, srl, 0x0000000000424242, 0x0000000021212121, 0xffffffffffffffc7 );
  TEST_RR_OP( 694, srl, 0x0000000000008484, 0x0000000021212121, 0xffffffffffffffce );
  TEST_RR_OP( 695, srl, 0x0000000000000000, 0x0000000021212121, 0xffffffffffffffff );
=======



  test_676: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (0)) & ((1 << (32 - 1) << 1) - 1)); li gp, 676; bne x30, x29, fail;;
  test_677: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (1)) & ((1 << (32 - 1) << 1) - 1)); li gp, 677; bne x30, x29, fail;;
  test_678: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (7)) & ((1 << (32 - 1) << 1) - 1)); li gp, 678; bne x30, x29, fail;;
  test_679: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (14)) & ((1 << (32 - 1) << 1) - 1)); li gp, 679; bne x30, x29, fail;;
  test_680: li x1, ((0xffffffff80000001) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000001) & ((1 << (32 -1) << 1) - 1)) >> (31)) & ((1 << (32 - 1) << 1) - 1)); li gp, 680; bne x30, x29, fail;;

  test_681: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (0)) & ((1 << (32 - 1) << 1) - 1)); li gp, 681; bne x30, x29, fail;;
  test_682: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (1)) & ((1 << (32 - 1) << 1) - 1)); li gp, 682; bne x30, x29, fail;;
  test_683: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (7)) & ((1 << (32 - 1) << 1) - 1)); li gp, 683; bne x30, x29, fail;;
  test_684: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (14)) & ((1 << (32 - 1) << 1) - 1)); li gp, 684; bne x30, x29, fail;;
  test_685: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (31)) & ((1 << (32 - 1) << 1) - 1)); li gp, 685; bne x30, x29, fail;;

  test_686: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (0)) & ((1 << (32 - 1) << 1) - 1)); li gp, 686; bne x30, x29, fail;;
  test_687: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (1)) & ((1 << (32 - 1) << 1) - 1)); li gp, 687; bne x30, x29, fail;;
  test_688: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (7)) & ((1 << (32 - 1) << 1) - 1)); li gp, 688; bne x30, x29, fail;;
  test_689: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (14)) & ((1 << (32 - 1) << 1) - 1)); li gp, 689; bne x30, x29, fail;;
  test_690: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (31)) & ((1 << (32 - 1) << 1) - 1)); li gp, 690; bne x30, x29, fail;;

  # Verify that shifts only use bottom five bits

  test_691: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffc0) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li gp, 691; bne x30, x29, fail;;
  test_692: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffc1) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((0x0000000010909090) & ((1 << (32 - 1) << 1) - 1)); li gp, 692; bne x30, x29, fail;;
  test_693: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffc7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((0x0000000000424242) & ((1 << (32 - 1) << 1) - 1)); li gp, 693; bne x30, x29, fail;;
  test_694: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffce) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((0x0000000000008484) & ((1 << (32 - 1) << 1) - 1)); li gp, 694; bne x30, x29, fail;;
  test_695: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 695; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_SRC1_EQ_DEST( 696, srl, 0x01000000, 0x80000000, 7  );
  TEST_RR_SRC2_EQ_DEST( 697, srl, 0x00020000, 0x80000000, 14 );
  TEST_RR_SRC12_EQ_DEST( 698, srl, 0, 7 );
=======
  test_696: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x1, x1, x2;; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 696; bne x1, x29, fail;;
  test_697: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x2, x1, x2;; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 697; bne x2, x29, fail;;
  test_698: li x1, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x1, x1, x1;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 698; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_DEST_BYPASS( 699, 0, srl, 0x01000000, 0x80000000, 7  );
  TEST_RR_DEST_BYPASS( 700, 1, srl, 0x00020000, 0x80000000, 14 );
  TEST_RR_DEST_BYPASS( 701, 2, srl, 0x00000001, 0x80000000, 31 );

  TEST_RR_SRC12_BYPASS( 702, 0, 0, srl, 0x01000000, 0x80000000, 7  );
  TEST_RR_SRC12_BYPASS( 703, 0, 1, srl, 0x00020000, 0x80000000, 14 );
  TEST_RR_SRC12_BYPASS( 704, 0, 2, srl, 0x00000001, 0x80000000, 31 );
  TEST_RR_SRC12_BYPASS( 705, 1, 0, srl, 0x01000000, 0x80000000, 7  );
  TEST_RR_SRC12_BYPASS( 706, 1, 1, srl, 0x00020000, 0x80000000, 14 );
  TEST_RR_SRC12_BYPASS( 707, 2, 0, srl, 0x00000001, 0x80000000, 31 );

  TEST_RR_SRC21_BYPASS( 708, 0, 0, srl, 0x01000000, 0x80000000, 7  );
  TEST_RR_SRC21_BYPASS( 709, 0, 1, srl, 0x00020000, 0x80000000, 14 );
  TEST_RR_SRC21_BYPASS( 710, 0, 2, srl, 0x00000001, 0x80000000, 31 );
  TEST_RR_SRC21_BYPASS( 711, 1, 0, srl, 0x01000000, 0x80000000, 7  );
  TEST_RR_SRC21_BYPASS( 712, 1, 1, srl, 0x00020000, 0x80000000, 14 );
  TEST_RR_SRC21_BYPASS( 713, 2, 0, srl, 0x00000001, 0x80000000, 31 );

  TEST_RR_ZEROSRC1( 714, srl, 0, 15 );
  TEST_RR_ZEROSRC2( 715, srl, 32, 32 );
  TEST_RR_ZEROSRC12( 716, srl, 0 );
  TEST_RR_ZERODEST( 717, srl, 1024, 2048 );
=======
  test_699: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 699; bne x6, x29, fail;;
  test_700: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 700; bne x6, x29, fail;;
  test_701: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 701; bne x6, x29, fail;;

  test_702: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 702; bne x30, x29, fail;;
  test_703: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 703; bne x30, x29, fail;;
  test_704: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); nop; nop; srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 704; bne x30, x29, fail;;
  test_705: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 705; bne x30, x29, fail;;
  test_706: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 706; bne x30, x29, fail;;
  test_707: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 707; bne x30, x29, fail;;

  test_708: li x4, 0; 1: li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 708; bne x30, x29, fail;;
  test_709: li x4, 0; 1: li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); nop; srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 709; bne x30, x29, fail;;
  test_710: li x4, 0; 1: li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); nop; nop; srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 710; bne x30, x29, fail;;
  test_711: li x4, 0; 1: li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 711; bne x30, x29, fail;;
  test_712: li x4, 0; 1: li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); nop; srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 712; bne x30, x29, fail;;
  test_713: li x4, 0; 1: li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 713; bne x30, x29, fail;;

  test_714: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); srl x2, x0, x1;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 714; bne x2, x29, fail;;
  test_715: li x1, ((32) & ((1 << (32 - 1) << 1) - 1)); srl x2, x1, x0;; li x29, ((32) & ((1 << (32 - 1) << 1) - 1)); li gp, 715; bne x2, x29, fail;;
  test_716: srl x1, x0, x0;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 716; bne x1, x29, fail;;
  test_717: li x1, ((1024) & ((1 << (32 - 1) << 1) - 1)); li x2, ((2048) & ((1 << (32 - 1) << 1) - 1)); srl x0, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 717; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#srli.S
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_SRL( 718,  0xffffffff80000000, 0  );
  TEST_SRL( 719,  0xffffffff80000000, 1  );
  TEST_SRL( 720,  0xffffffff80000000, 7  );
  TEST_SRL( 721,  0xffffffff80000000, 14 );
  TEST_SRL( 722,  0xffffffff80000001, 31 );

  TEST_SRL( 723,  0xffffffffffffffff, 0  );
  TEST_SRL( 724,  0xffffffffffffffff, 1  );
  TEST_SRL( 725,  0xffffffffffffffff, 7  );
  TEST_SRL( 726, 0xffffffffffffffff, 14 );
  TEST_SRL( 727, 0xffffffffffffffff, 31 );

  TEST_SRL( 728, 0x0000000021212121, 0  );
  TEST_SRL( 729, 0x0000000021212121, 1  );
  TEST_SRL( 730, 0x0000000021212121, 7  );
  TEST_SRL( 731, 0x0000000021212121, 14 );
  TEST_SRL( 732, 0x0000000021212121, 31 );
=======
  test_718: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (0)) & ((1 << (32 - 1) << 1) - 1)); li gp, 718; bne x30, x29, fail;;
  test_719: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (1)) & ((1 << (32 - 1) << 1) - 1)); li gp, 719; bne x30, x29, fail;;
  test_720: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (7)) & ((1 << (32 - 1) << 1) - 1)); li gp, 720; bne x30, x29, fail;;
  test_721: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000000) & ((1 << (32 -1) << 1) - 1)) >> (14)) & ((1 << (32 - 1) << 1) - 1)); li gp, 721; bne x30, x29, fail;;
  test_722: li x1, ((0xffffffff80000001) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffff80000001) & ((1 << (32 -1) << 1) - 1)) >> (31)) & ((1 << (32 - 1) << 1) - 1)); li gp, 722; bne x30, x29, fail;;

  test_723: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (0)) & ((1 << (32 - 1) << 1) - 1)); li gp, 723; bne x30, x29, fail;;
  test_724: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (1)) & ((1 << (32 - 1) << 1) - 1)); li gp, 724; bne x30, x29, fail;;
  test_725: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (7)) & ((1 << (32 - 1) << 1) - 1)); li gp, 725; bne x30, x29, fail;;
  test_726: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (14)) & ((1 << (32 - 1) << 1) - 1)); li gp, 726; bne x30, x29, fail;;
  test_727: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0xffffffffffffffff) & ((1 << (32 -1) << 1) - 1)) >> (31)) & ((1 << (32 - 1) << 1) - 1)); li gp, 727; bne x30, x29, fail;;

  test_728: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (0)) & ((1 << (32 - 1) << 1) - 1)); li gp, 728; bne x30, x29, fail;;
  test_729: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((1) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (1)) & ((1 << (32 - 1) << 1) - 1)); li gp, 729; bne x30, x29, fail;;
  test_730: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((7) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (7)) & ((1 << (32 - 1) << 1) - 1)); li gp, 730; bne x30, x29, fail;;
  test_731: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((14) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (14)) & ((1 << (32 - 1) << 1) - 1)); li gp, 731; bne x30, x29, fail;;
  test_732: li x1, ((0x0000000021212121) & ((1 << (32 - 1) << 1) - 1)); li x2, ((31) & ((1 << (32 - 1) << 1) - 1)); srl x30, x1, x2;; li x29, ((((0x0000000021212121) & ((1 << (32 -1) << 1) - 1)) >> (31)) & ((1 << (32 - 1) << 1) - 1)); li gp, 732; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_SRC1_EQ_DEST( 733, srli, 0x01000000, 0x80000000, 7 );
=======
  test_733: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); srli x1, x1, ((7) | (-(((7) >> 11) & 1) << 11));; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 733; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_DEST_BYPASS( 734, 0, srli, 0x01000000, 0x80000000, 7  );
  TEST_IMM_DEST_BYPASS( 735, 1, srli, 0x00020000, 0x80000000, 14 );
  TEST_IMM_DEST_BYPASS( 736, 2, srli, 0x00000001, 0x80000001, 31 );

  TEST_IMM_SRC1_BYPASS( 737, 0, srli, 0x01000000, 0x80000000, 7  );
  TEST_IMM_SRC1_BYPASS( 738, 1, srli, 0x00020000, 0x80000000, 14 );
  TEST_IMM_SRC1_BYPASS( 739, 2, srli, 0x00000001, 0x80000001, 31 );

  TEST_IMM_ZEROSRC1( 740, srli, 0, 4 );
  TEST_IMM_ZERODEST( 741, srli, 33, 10 );
=======
  test_734: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); srli x30, x1, ((7) | (-(((7) >> 11) & 1) << 11)); addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 734; bne x6, x29, fail;;
  test_735: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); srli x30, x1, ((14) | (-(((14) >> 11) & 1) << 11)); nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 735; bne x6, x29, fail;;
  test_736: li x4, 0; 1: li x1, ((0x80000001) & ((1 << (32 - 1) << 1) - 1)); srli x30, x1, ((31) | (-(((31) >> 11) & 1) << 11)); nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 736; bne x6, x29, fail;;

  test_737: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); srli x30, x1, ((7) | (-(((7) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x01000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 737; bne x30, x29, fail;;
  test_738: li x4, 0; 1: li x1, ((0x80000000) & ((1 << (32 - 1) << 1) - 1)); nop; srli x30, x1, ((14) | (-(((14) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00020000) & ((1 << (32 - 1) << 1) - 1)); li gp, 738; bne x30, x29, fail;;
  test_739: li x4, 0; 1: li x1, ((0x80000001) & ((1 << (32 - 1) << 1) - 1)); nop; nop; srli x30, x1, ((31) | (-(((31) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x00000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 739; bne x30, x29, fail;;

  test_740: srli x1, x0, ((4) | (-(((4) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 740; bne x1, x29, fail;;
  test_741: li x1, ((33) & ((1 << (32 - 1) << 1) - 1)); srli x0, x1, ((10) | (-(((10) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 741; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#sub.S
  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_OP( 742,  sub, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000 );
  TEST_RR_OP( 743,  sub, 0x0000000000000000, 0x0000000000000001, 0x0000000000000001 );
  TEST_RR_OP( 744,  sub, 0xfffffffffffffffc, 0x0000000000000003, 0x0000000000000007 );

  TEST_RR_OP( 745,  sub, 0x0000000000008000, 0x0000000000000000, 0xffffffffffff8000 );
  TEST_RR_OP( 746,  sub, 0xffffffff80000000, 0xffffffff80000000, 0x0000000000000000 );
  TEST_RR_OP( 747,  sub, 0xffffffff80008000, 0xffffffff80000000, 0xffffffffffff8000 );

  TEST_RR_OP( 748,  sub, 0xffffffffffff8001, 0x0000000000000000, 0x0000000000007fff );
  TEST_RR_OP( 749,  sub, 0x000000007fffffff, 0x000000007fffffff, 0x0000000000000000 );
  TEST_RR_OP( 750, sub, 0x000000007fff8000, 0x000000007fffffff, 0x0000000000007fff );

  TEST_RR_OP( 751, sub, 0xffffffff7fff8001, 0xffffffff80000000, 0x0000000000007fff );
  TEST_RR_OP( 752, sub, 0x0000000080007fff, 0x000000007fffffff, 0xffffffffffff8000 );

  TEST_RR_OP( 753, sub, 0x0000000000000001, 0x0000000000000000, 0xffffffffffffffff );
  TEST_RR_OP( 754, sub, 0xfffffffffffffffe, 0xffffffffffffffff, 0x0000000000000001 );
  TEST_RR_OP( 755, sub, 0x0000000000000000, 0xffffffffffffffff, 0xffffffffffffffff );
=======
  test_742: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 742; bne x30, x29, fail;;
  test_743: li x1, ((0x0000000000000001) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000000001) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 743; bne x30, x29, fail;;
  test_744: li x1, ((0x0000000000000003) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000000007) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0xfffffffffffffffc) & ((1 << (32 - 1) << 1) - 1)); li gp, 744; bne x30, x29, fail;;

  test_745: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffff8000) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x0000000000008000) & ((1 << (32 - 1) << 1) - 1)); li gp, 745; bne x30, x29, fail;;
  test_746: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 746; bne x30, x29, fail;;
  test_747: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffff8000) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0xffffffff80008000) & ((1 << (32 - 1) << 1) - 1)); li gp, 747; bne x30, x29, fail;;

  test_748: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000007fff) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0xffffffffffff8001) & ((1 << (32 - 1) << 1) - 1)); li gp, 748; bne x30, x29, fail;;
  test_749: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li gp, 749; bne x30, x29, fail;;
  test_750: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000007fff) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x000000007fff8000) & ((1 << (32 - 1) << 1) - 1)); li gp, 750; bne x30, x29, fail;;

  test_751: li x1, ((0xffffffff80000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000007fff) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0xffffffff7fff8001) & ((1 << (32 - 1) << 1) - 1)); li gp, 751; bne x30, x29, fail;;
  test_752: li x1, ((0x000000007fffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffff8000) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x0000000080007fff) & ((1 << (32 - 1) << 1) - 1)); li gp, 752; bne x30, x29, fail;;

  test_753: li x1, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x0000000000000001) & ((1 << (32 - 1) << 1) - 1)); li gp, 753; bne x30, x29, fail;;
  test_754: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0000000000000001) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0xfffffffffffffffe) & ((1 << (32 - 1) << 1) - 1)); li gp, 754; bne x30, x29, fail;;
  test_755: li x1, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xffffffffffffffff) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2;; li x29, ((0x0000000000000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 755; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_SRC1_EQ_DEST( 756, sub, 2, 13, 11 );
  TEST_RR_SRC2_EQ_DEST( 757, sub, 3, 14, 11 );
  TEST_RR_SRC12_EQ_DEST( 758, sub, 0, 13 );
=======
  test_756: li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x1, x1, x2;; li x29, ((2) & ((1 << (32 - 1) << 1) - 1)); li gp, 756; bne x1, x29, fail;;
  test_757: li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x2, x1, x2;; li x29, ((3) & ((1 << (32 - 1) << 1) - 1)); li gp, 757; bne x2, x29, fail;;
  test_758: li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); sub x1, x1, x1;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 758; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_DEST_BYPASS( 759, 0, sub, 2, 13, 11 );
  TEST_RR_DEST_BYPASS( 760, 1, sub, 3, 14, 11 );
  TEST_RR_DEST_BYPASS( 761, 2, sub, 4, 15, 11 );

  TEST_RR_SRC12_BYPASS( 762, 0, 0, sub, 2, 13, 11 );
  TEST_RR_SRC12_BYPASS( 763, 0, 1, sub, 3, 14, 11 );
  TEST_RR_SRC12_BYPASS( 764, 0, 2, sub, 4, 15, 11 );
  TEST_RR_SRC12_BYPASS( 765, 1, 0, sub, 2, 13, 11 );
  TEST_RR_SRC12_BYPASS( 766, 1, 1, sub, 3, 14, 11 );
  TEST_RR_SRC12_BYPASS( 767, 2, 0, sub, 4, 15, 11 );

  TEST_RR_SRC21_BYPASS( 768, 0, 0, sub, 2, 13, 11 );
  TEST_RR_SRC21_BYPASS( 769, 0, 1, sub, 3, 14, 11 );
  TEST_RR_SRC21_BYPASS( 770, 0, 2, sub, 4, 15, 11 );
  TEST_RR_SRC21_BYPASS( 771, 1, 0, sub, 2, 13, 11 );
  TEST_RR_SRC21_BYPASS( 772, 1, 1, sub, 3, 14, 11 );
  TEST_RR_SRC21_BYPASS( 773, 2, 0, sub, 4, 15, 11 );

  TEST_RR_ZEROSRC1( 774, sub, 15, -15 );
  TEST_RR_ZEROSRC2( 775, sub, 32, 32 );
  TEST_RR_ZEROSRC12( 776, sub, 0 );
  TEST_RR_ZERODEST( 777, sub, 16, 30 );
=======
  test_759: li x4, 0; 1: li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((2) & ((1 << (32 - 1) << 1) - 1)); li gp, 759; bne x6, x29, fail;;
  test_760: li x4, 0; 1: li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((3) & ((1 << (32 - 1) << 1) - 1)); li gp, 760; bne x6, x29, fail;;
  test_761: li x4, 0; 1: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((4) & ((1 << (32 - 1) << 1) - 1)); li gp, 761; bne x6, x29, fail;;

  test_762: li x4, 0; 1: li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((2) & ((1 << (32 - 1) << 1) - 1)); li gp, 762; bne x30, x29, fail;;
  test_763: li x4, 0; 1: li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); nop; sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((3) & ((1 << (32 - 1) << 1) - 1)); li gp, 763; bne x30, x29, fail;;
  test_764: li x4, 0; 1: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); nop; nop; sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((4) & ((1 << (32 - 1) << 1) - 1)); li gp, 764; bne x30, x29, fail;;
  test_765: li x4, 0; 1: li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((2) & ((1 << (32 - 1) << 1) - 1)); li gp, 765; bne x30, x29, fail;;
  test_766: li x4, 0; 1: li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); nop; sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((3) & ((1 << (32 - 1) << 1) - 1)); li gp, 766; bne x30, x29, fail;;
  test_767: li x4, 0; 1: li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((4) & ((1 << (32 - 1) << 1) - 1)); li gp, 767; bne x30, x29, fail;;

  test_768: li x4, 0; 1: li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((2) & ((1 << (32 - 1) << 1) - 1)); li gp, 768; bne x30, x29, fail;;
  test_769: li x4, 0; 1: li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((3) & ((1 << (32 - 1) << 1) - 1)); li gp, 769; bne x30, x29, fail;;
  test_770: li x4, 0; 1: li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); nop; nop; sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((4) & ((1 << (32 - 1) << 1) - 1)); li gp, 770; bne x30, x29, fail;;
  test_771: li x4, 0; 1: li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((13) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((2) & ((1 << (32 - 1) << 1) - 1)); li gp, 771; bne x30, x29, fail;;
  test_772: li x4, 0; 1: li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((14) & ((1 << (32 - 1) << 1) - 1)); nop; sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((3) & ((1 << (32 - 1) << 1) - 1)); li gp, 772; bne x30, x29, fail;;
  test_773: li x4, 0; 1: li x2, ((11) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x1, ((15) & ((1 << (32 - 1) << 1) - 1)); sub x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((4) & ((1 << (32 - 1) << 1) - 1)); li gp, 773; bne x30, x29, fail;;

  test_774: li x1, ((-15) & ((1 << (32 - 1) << 1) - 1)); sub x2, x0, x1;; li x29, ((15) & ((1 << (32 - 1) << 1) - 1)); li gp, 774; bne x2, x29, fail;;
  test_775: li x1, ((32) & ((1 << (32 - 1) << 1) - 1)); sub x2, x1, x0;; li x29, ((32) & ((1 << (32 - 1) << 1) - 1)); li gp, 775; bne x2, x29, fail;;
  test_776: sub x1, x0, x0;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 776; bne x1, x29, fail;;
  test_777: li x1, ((16) & ((1 << (32 - 1) << 1) - 1)); li x2, ((30) & ((1 << (32 - 1) << 1) - 1)); sub x0, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 777; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#sw.S
  #-------------------------------------------------------------
  # Basic tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_ST_OP( 778, lw, sw, 0x0000000000aa00aa, 0,  sw_tdat );
  TEST_ST_OP( 779, lw, sw, 0xffffffffaa00aa00, 4,  sw_tdat );
  TEST_ST_OP( 780, lw, sw, 0x000000000aa00aa0, 8,  sw_tdat );
  TEST_ST_OP( 781, lw, sw, 0xffffffffa00aa00a, 12, sw_tdat );

  # Test with negative offset

  TEST_ST_OP( 782, lw, sw, 0x0000000000aa00aa, -12, sw_tdat8 );
  TEST_ST_OP( 783, lw, sw, 0xffffffffaa00aa00, -8,  sw_tdat8 );
  TEST_ST_OP( 784, lw, sw, 0x000000000aa00aa0, -4,  sw_tdat8 );
  TEST_ST_OP( 785, lw, sw, 0xffffffffa00aa00a, 0,   sw_tdat8 );

  # Test with a negative base

  TEST_CASE( 786, x5, 0x12345678, \
    la  x1, sw_tdat9; \
    li  x2, 0x12345678; \
    addi x4, x1, -32; \
    sw x2, 32(x4); \
    lw x5, 0(x1); \
  )

  # Test with unaligned base

  TEST_CASE( 787, x5, 0x58213098, \
    la  x1, sw_tdat9; \
    li  x2, 0x58213098; \
    addi x1, x1, -3; \
    sw x2, 7(x1); \
    la  x4, sw_tdat10; \
    lw x5, 0(x4); \
  )

=======
  test_778: la x1, sw_tdat; li x2, 0x0000000000aa00aa; sw x2, 0(x1); lw x30, 0(x1);; li x29, ((0x0000000000aa00aa) & ((1 << (32 - 1) << 1) - 1)); li gp, 778; bne x30, x29, fail;;
  test_779: la x1, sw_tdat; li x2, 0xffffffffaa00aa00; sw x2, 4(x1); lw x30, 4(x1);; li x29, ((0xffffffffaa00aa00) & ((1 << (32 - 1) << 1) - 1)); li gp, 779; bne x30, x29, fail;;
  test_780: la x1, sw_tdat; li x2, 0x000000000aa00aa0; sw x2, 8(x1); lw x30, 8(x1);; li x29, ((0x000000000aa00aa0) & ((1 << (32 - 1) << 1) - 1)); li gp, 780; bne x30, x29, fail;;
  test_781: la x1, sw_tdat; li x2, 0xffffffffa00aa00a; sw x2, 12(x1); lw x30, 12(x1);; li x29, ((0xffffffffa00aa00a) & ((1 << (32 - 1) << 1) - 1)); li gp, 781; bne x30, x29, fail;;

  # Test with negative offset

  test_782: la x1, sw_tdat8; li x2, 0x0000000000aa00aa; sw x2, -12(x1); lw x30, -12(x1);; li x29, ((0x0000000000aa00aa) & ((1 << (32 - 1) << 1) - 1)); li gp, 782; bne x30, x29, fail;;
  test_783: la x1, sw_tdat8; li x2, 0xffffffffaa00aa00; sw x2, -8(x1); lw x30, -8(x1);; li x29, ((0xffffffffaa00aa00) & ((1 << (32 - 1) << 1) - 1)); li gp, 783; bne x30, x29, fail;;
  test_784: la x1, sw_tdat8; li x2, 0x000000000aa00aa0; sw x2, -4(x1); lw x30, -4(x1);; li x29, ((0x000000000aa00aa0) & ((1 << (32 - 1) << 1) - 1)); li gp, 784; bne x30, x29, fail;;
  test_785: la x1, sw_tdat8; li x2, 0xffffffffa00aa00a; sw x2, 0(x1); lw x30, 0(x1);; li x29, ((0xffffffffa00aa00a) & ((1 << (32 - 1) << 1) - 1)); li gp, 785; bne x30, x29, fail;;

  # Test with a negative base

  test_786: la x1, sw_tdat9; li x2, 0x12345678; addi x4, x1, -32; sw x2, 32(x4); lw x5, 0(x1);; li x29, ((0x12345678) & ((1 << (32 - 1) << 1) - 1)); li gp, 786; bne x5, x29, fail;







  # Test with unaligned base

  test_787: la x1, sw_tdat9; li x2, 0x58213098; addi x1, x1, -3; sw x2, 7(x1); la x4, sw_tdat10; lw x5, 0(x4);; li x29, ((0x58213098) & ((1 << (32 - 1) << 1) - 1)); li gp, 787; bne x5, x29, fail;
# 489 "3testAll.S"
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1
  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_ST_SRC12_BYPASS( 788, 0, 0, lw, sw, 0xffffffffaabbccdd, 0,  sw_tdat );
  TEST_ST_SRC12_BYPASS( 789, 0, 1, lw, sw, 0xffffffffdaabbccd, 4,  sw_tdat );
  TEST_ST_SRC12_BYPASS( 790, 0, 2, lw, sw, 0xffffffffddaabbcc, 8,  sw_tdat );
  TEST_ST_SRC12_BYPASS( 791, 1, 0, lw, sw, 0xffffffffcddaabbc, 12, sw_tdat );
  TEST_ST_SRC12_BYPASS( 792, 1, 1, lw, sw, 0xffffffffccddaabb, 16, sw_tdat );
  TEST_ST_SRC12_BYPASS( 793, 2, 0, lw, sw, 0xffffffffbccddaab, 20, sw_tdat );

  TEST_ST_SRC21_BYPASS( 794, 0, 0, lw, sw, 0x00112233, 0,  sw_tdat );
  TEST_ST_SRC21_BYPASS( 795, 0, 1, lw, sw, 0x30011223, 4,  sw_tdat );
  TEST_ST_SRC21_BYPASS( 796, 0, 2, lw, sw, 0x33001122, 8,  sw_tdat );
  TEST_ST_SRC21_BYPASS( 797, 1, 0, lw, sw, 0x23300112, 12, sw_tdat );
  TEST_ST_SRC21_BYPASS( 798, 1, 1, lw, sw, 0x22330011, 16, sw_tdat );
  TEST_ST_SRC21_BYPASS( 799, 2, 0, lw, sw, 0x12233001, 20, sw_tdat );
=======
  test_788: li gp, 788; li x4, 0; 1: li x1, 0xffffffffaabbccdd; la x2, sw_tdat; sw x1, 0(x2); lw x30, 0(x2); li x29, 0xffffffffaabbccdd; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_789: li gp, 789; li x4, 0; 1: li x1, 0xffffffffdaabbccd; la x2, sw_tdat; nop; sw x1, 4(x2); lw x30, 4(x2); li x29, 0xffffffffdaabbccd; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_790: li gp, 790; li x4, 0; 1: li x1, 0xffffffffddaabbcc; la x2, sw_tdat; nop; nop; sw x1, 8(x2); lw x30, 8(x2); li x29, 0xffffffffddaabbcc; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_791: li gp, 791; li x4, 0; 1: li x1, 0xffffffffcddaabbc; nop; la x2, sw_tdat; sw x1, 12(x2); lw x30, 12(x2); li x29, 0xffffffffcddaabbc; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_792: li gp, 792; li x4, 0; 1: li x1, 0xffffffffccddaabb; nop; la x2, sw_tdat; nop; sw x1, 16(x2); lw x30, 16(x2); li x29, 0xffffffffccddaabb; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_793: li gp, 793; li x4, 0; 1: li x1, 0xffffffffbccddaab; nop; nop; la x2, sw_tdat; sw x1, 20(x2); lw x30, 20(x2); li x29, 0xffffffffbccddaab; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;

  test_794: li gp, 794; li x4, 0; 1: la x2, sw_tdat; li x1, 0x00112233; sw x1, 0(x2); lw x30, 0(x2); li x29, 0x00112233; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_795: li gp, 795; li x4, 0; 1: la x2, sw_tdat; li x1, 0x30011223; nop; sw x1, 4(x2); lw x30, 4(x2); li x29, 0x30011223; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_796: li gp, 796; li x4, 0; 1: la x2, sw_tdat; li x1, 0x33001122; nop; nop; sw x1, 8(x2); lw x30, 8(x2); li x29, 0x33001122; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_797: li gp, 797; li x4, 0; 1: la x2, sw_tdat; nop; li x1, 0x23300112; sw x1, 12(x2); lw x30, 12(x2); li x29, 0x23300112; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_798: li gp, 798; li x4, 0; 1: la x2, sw_tdat; nop; li x1, 0x22330011; nop; sw x1, 16(x2); lw x30, 16(x2); li x29, 0x22330011; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
  test_799: li gp, 799; li x4, 0; 1: la x2, sw_tdat; nop; nop; li x1, 0x12233001; sw x1, 20(x2); lw x30, 20(x2); li x29, 0x12233001; bne x30, x29, fail; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#xor.S
  #-------------------------------------------------------------
  # Logical tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_OP( 800, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_OP( 801, xor, 0xff00ff00, 0x0ff00ff0, 0xf0f0f0f0 );
  TEST_RR_OP( 802, xor, 0x0ff00ff0, 0x00ff00ff, 0x0f0f0f0f );
  TEST_RR_OP( 803, xor, 0x00ff00ff, 0xf00ff00f, 0xf0f0f0f0 );
=======
  test_800: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2;; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 800; bne x30, x29, fail;;
  test_801: li x1, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xf0f0f0f0) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2;; li x29, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li gp, 801; bne x30, x29, fail;;
  test_802: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2;; li x29, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 802; bne x30, x29, fail;;
  test_803: li x1, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xf0f0f0f0) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2;; li x29, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); li gp, 803; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_SRC1_EQ_DEST( 804, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_SRC2_EQ_DEST( 805, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_SRC12_EQ_DEST( 806, xor, 0x00000000, 0xff00ff00 );
=======
  test_804: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x1, x1, x2;; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 804; bne x1, x29, fail;;
  test_805: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x2, x1, x2;; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 805; bne x2, x29, fail;;
  test_806: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); xor x1, x1, x1;; li x29, ((0x00000000) & ((1 << (32 - 1) << 1) - 1)); li gp, 806; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_RR_DEST_BYPASS( 807,  0, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_DEST_BYPASS( 808, 1, xor, 0xff00ff00, 0x0ff00ff0, 0xf0f0f0f0 );
  TEST_RR_DEST_BYPASS( 809, 2, xor, 0x0ff00ff0, 0x00ff00ff, 0x0f0f0f0f );

  TEST_RR_SRC12_BYPASS( 810, 0, 0, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_SRC12_BYPASS( 811, 0, 1, xor, 0xff00ff00, 0x0ff00ff0, 0xf0f0f0f0 );
  TEST_RR_SRC12_BYPASS( 812, 0, 2, xor, 0x0ff00ff0, 0x00ff00ff, 0x0f0f0f0f );
  TEST_RR_SRC12_BYPASS( 813, 1, 0, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_SRC12_BYPASS( 814, 1, 1, xor, 0xff00ff00, 0x0ff00ff0, 0xf0f0f0f0 );
  TEST_RR_SRC12_BYPASS( 815, 2, 0, xor, 0x0ff00ff0, 0x00ff00ff, 0x0f0f0f0f );

  TEST_RR_SRC21_BYPASS( 816, 0, 0, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_SRC21_BYPASS( 817, 0, 1, xor, 0xff00ff00, 0x0ff00ff0, 0xf0f0f0f0 );
  TEST_RR_SRC21_BYPASS( 818, 0, 2, xor, 0x0ff00ff0, 0x00ff00ff, 0x0f0f0f0f );
  TEST_RR_SRC21_BYPASS( 819, 1, 0, xor, 0xf00ff00f, 0xff00ff00, 0x0f0f0f0f );
  TEST_RR_SRC21_BYPASS( 820, 1, 1, xor, 0xff00ff00, 0x0ff00ff0, 0xf0f0f0f0 );
  TEST_RR_SRC21_BYPASS( 821, 2, 0, xor, 0x0ff00ff0, 0x00ff00ff, 0x0f0f0f0f );

  TEST_RR_ZEROSRC1( 822, xor, 0xff00ff00, 0xff00ff00 );
  TEST_RR_ZEROSRC2( 823, xor, 0x00ff00ff, 0x00ff00ff );
  TEST_RR_ZEROSRC12( 824, xor, 0 );
  TEST_RR_ZERODEST( 825, xor, 0x11111111, 0x22222222 );
=======
  test_807: li x4, 0; 1: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 807; bne x6, x29, fail;;
  test_808: li x4, 0; 1: li x1, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xf0f0f0f0) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li gp, 808; bne x6, x29, fail;;
  test_809: li x4, 0; 1: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 809; bne x6, x29, fail;;

  test_810: li x4, 0; 1: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 810; bne x30, x29, fail;;
  test_811: li x4, 0; 1: li x1, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0xf0f0f0f0) & ((1 << (32 - 1) << 1) - 1)); nop; xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li gp, 811; bne x30, x29, fail;;
  test_812: li x4, 0; 1: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); nop; nop; xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 812; bne x30, x29, fail;;
  test_813: li x4, 0; 1: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 813; bne x30, x29, fail;;
  test_814: li x4, 0; 1: li x1, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); nop; li x2, ((0xf0f0f0f0) & ((1 << (32 - 1) << 1) - 1)); nop; xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li gp, 814; bne x30, x29, fail;;
  test_815: li x4, 0; 1: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 815; bne x30, x29, fail;;

  test_816: li x4, 0; 1: li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 816; bne x30, x29, fail;;
  test_817: li x4, 0; 1: li x2, ((0xf0f0f0f0) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); nop; xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li gp, 817; bne x30, x29, fail;;
  test_818: li x4, 0; 1: li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); nop; nop; xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 818; bne x30, x29, fail;;
  test_819: li x4, 0; 1: li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xf00ff00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 819; bne x30, x29, fail;;
  test_820: li x4, 0; 1: li x2, ((0xf0f0f0f0) & ((1 << (32 - 1) << 1) - 1)); nop; li x1, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); nop; xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li gp, 820; bne x30, x29, fail;;
  test_821: li x4, 0; 1: li x2, ((0x0f0f0f0f) & ((1 << (32 - 1) << 1) - 1)); nop; nop; li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); xor x30, x1, x2; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x0ff00ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 821; bne x30, x29, fail;;

  test_822: li x1, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); xor x2, x0, x1;; li x29, ((0xff00ff00) & ((1 << (32 - 1) << 1) - 1)); li gp, 822; bne x2, x29, fail;;
  test_823: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); xor x2, x1, x0;; li x29, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); li gp, 823; bne x2, x29, fail;;
  test_824: xor x1, x0, x0;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 824; bne x1, x29, fail;;
  test_825: li x1, ((0x11111111) & ((1 << (32 - 1) << 1) - 1)); li x2, ((0x22222222) & ((1 << (32 - 1) << 1) - 1)); xor x0, x1, x2;; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 825; bne x0, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

#xori.S
  #-------------------------------------------------------------
  # Logical tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_OP( 826, xori, 0xffffffffff00f00f, 0x0000000000ff0f00, 0xf0f );
  TEST_IMM_OP( 827, xori, 0x000000000ff00f00, 0x000000000ff00ff0, 0x0f0 );
  TEST_IMM_OP( 828, xori, 0x0000000000ff0ff0, 0x0000000000ff08ff, 0x70f );
  TEST_IMM_OP( 829, xori, 0xfffffffff00ff0ff, 0xfffffffff00ff00f, 0x0f0 );
=======
  test_826: li x1, ((0x0000000000ff0f00) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0xf0f) | (-(((0xf0f) >> 11) & 1) << 11));; li x29, ((0xffffffffff00f00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 826; bne x30, x29, fail;;
  test_827: li x1, ((0x000000000ff00ff0) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0x0f0) | (-(((0x0f0) >> 11) & 1) << 11));; li x29, ((0x000000000ff00f00) & ((1 << (32 - 1) << 1) - 1)); li gp, 827; bne x30, x29, fail;;
  test_828: li x1, ((0x0000000000ff08ff) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0x70f) | (-(((0x70f) >> 11) & 1) << 11));; li x29, ((0x0000000000ff0ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 828; bne x30, x29, fail;;
  test_829: li x1, ((0xfffffffff00ff00f) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0x0f0) | (-(((0x0f0) >> 11) & 1) << 11));; li x29, ((0xfffffffff00ff0ff) & ((1 << (32 - 1) << 1) - 1)); li gp, 829; bne x30, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_SRC1_EQ_DEST( 830, xori, 0xffffffffff00f00f, 0xffffffffff00f700, 0x70f );
=======
  test_830: li x1, ((0xffffffffff00f700) & ((1 << (32 - 1) << 1) - 1)); xori x1, x1, ((0x70f) | (-(((0x70f) >> 11) & 1) << 11));; li x29, ((0xffffffffff00f00f) & ((1 << (32 - 1) << 1) - 1)); li gp, 830; bne x1, x29, fail;;
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

   #-------------------------------------------------------------
  # Bypassing tests
  #-------------------------------------------------------------

<<<<<<< HEAD
  TEST_IMM_DEST_BYPASS( 831,  0, xori, 0x000000000ff00f00, 0x000000000ff00ff0, 0x0f0 );
  TEST_IMM_DEST_BYPASS( 832,  1, xori, 0x0000000000ff0ff0, 0x0000000000ff08ff, 0x70f );
  TEST_IMM_DEST_BYPASS( 833,  2, xori, 0xfffffffff00ff0ff, 0xfffffffff00ff00f, 0x0f0 );

  TEST_IMM_SRC1_BYPASS( 834, 0, xori, 0x000000000ff00f00, 0x000000000ff00ff0, 0x0f0 );
  TEST_IMM_SRC1_BYPASS( 835, 1, xori, 0x0000000000ff0ff0, 0x0000000000ff0fff, 0x00f );
  TEST_IMM_SRC1_BYPASS( 836, 2, xori, 0xfffffffff00ff0ff, 0xfffffffff00ff00f, 0x0f0 );

  TEST_IMM_ZEROSRC1( 837, xori, 0x0f0, 0x0f0 );
  TEST_IMM_ZERODEST( 838, xori, 0x00ff00ff, 0x70f );

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA
.align 1  
#lb.S lbu.S
  tdat:
  tdat1:  .byte 0xff
  tdat2:  .byte 0x00
  tdat3:  .byte 0xf0
  tdat4:  .byte 0x0f
#sb.S
  sb_tdat:
  sb_tdat1:  .byte 0xef
  sb_tdat2:  .byte 0xef
  sb_tdat3:  .byte 0xef
  sb_tdat4:  .byte 0xef
  sb_tdat5:  .byte 0xef
  sb_tdat6:  .byte 0xef
  sb_tdat7:  .byte 0xef
  sb_tdat8:  .byte 0xef
  sb_tdat9:  .byte 0xef
=======
  test_831: li x4, 0; 1: li x1, ((0x000000000ff00ff0) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0x0f0) | (-(((0x0f0) >> 11) & 1) << 11)); addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x000000000ff00f00) & ((1 << (32 - 1) << 1) - 1)); li gp, 831; bne x6, x29, fail;;
  test_832: li x4, 0; 1: li x1, ((0x0000000000ff08ff) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0x70f) | (-(((0x70f) >> 11) & 1) << 11)); nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x0000000000ff0ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 832; bne x6, x29, fail;;
  test_833: li x4, 0; 1: li x1, ((0xfffffffff00ff00f) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0x0f0) | (-(((0x0f0) >> 11) & 1) << 11)); nop; nop; addi x6, x30, 0; addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffff00ff0ff) & ((1 << (32 - 1) << 1) - 1)); li gp, 833; bne x6, x29, fail;;

  test_834: li x4, 0; 1: li x1, ((0x000000000ff00ff0) & ((1 << (32 - 1) << 1) - 1)); xori x30, x1, ((0x0f0) | (-(((0x0f0) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x000000000ff00f00) & ((1 << (32 - 1) << 1) - 1)); li gp, 834; bne x30, x29, fail;;
  test_835: li x4, 0; 1: li x1, ((0x0000000000ff0fff) & ((1 << (32 - 1) << 1) - 1)); nop; xori x30, x1, ((0x00f) | (-(((0x00f) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0x0000000000ff0ff0) & ((1 << (32 - 1) << 1) - 1)); li gp, 835; bne x30, x29, fail;;
  test_836: li x4, 0; 1: li x1, ((0xfffffffff00ff00f) & ((1 << (32 - 1) << 1) - 1)); nop; nop; xori x30, x1, ((0x0f0) | (-(((0x0f0) >> 11) & 1) << 11)); addi x4, x4, 1; li x5, 2; bne x4, x5, 1b; li x29, ((0xfffffffff00ff0ff) & ((1 << (32 - 1) << 1) - 1)); li gp, 836; bne x30, x29, fail;;

  test_837: xori x1, x0, ((0x0f0) | (-(((0x0f0) >> 11) & 1) << 11));; li x29, ((0x0f0) & ((1 << (32 - 1) << 1) - 1)); li gp, 837; bne x1, x29, fail;;
  test_838: li x1, ((0x00ff00ff) & ((1 << (32 - 1) << 1) - 1)); xori x0, x1, ((0x70f) | (-(((0x70f) >> 11) & 1) << 11));; li x29, ((0) & ((1 << (32 - 1) << 1) - 1)); li gp, 838; bne x0, x29, fail;;

  bne x0, gp, pass; fail: finish2: jal x20,finish2; pass: li gp,1;finish1: jal x20,finish1

unimp

  .data
 .pushsection .tohost,"aw",@progbits; .align 6; .global tohost; tohost: .dword 0; .align 6; .global fromhost; fromhost: .dword 0; .popsection; .align 4; .global begin_signature; begin_signature:

 
.align 1
#lb.S lbu.S
  tdat:
  tdat1: .byte 0xff
  tdat2: .byte 0x00
  tdat3: .byte 0xf0
  tdat4: .byte 0x0f
#sb.S
  sb_tdat:
  sb_tdat1: .byte 0xef
  sb_tdat2: .byte 0xef
  sb_tdat3: .byte 0xef
  sb_tdat4: .byte 0xef
  sb_tdat5: .byte 0xef
  sb_tdat6: .byte 0xef
  sb_tdat7: .byte 0xef
  sb_tdat8: .byte 0xef
  sb_tdat9: .byte 0xef
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1
  sb_tdat10: .byte 0xef
.align 2
#lh.S lhu.S
  lh_tdat:
<<<<<<< HEAD
  lh_tdat1:  .half 0x00ff
  lh_tdat2:  .half 0xff00
  lh_tdat3:  .half 0x0ff0
  lh_tdat4:  .half 0xf00f
#sh.S
  sh_tdat:
  sh_tdat1:  .half 0xbeef
  sh_tdat2:  .half 0xbeef
  sh_tdat3:  .half 0xbeef
  sh_tdat4:  .half 0xbeef
  sh_tdat5:  .half 0xbeef
  sh_tdat6:  .half 0xbeef
  sh_tdat7:  .half 0xbeef
  sh_tdat8:  .half 0xbeef
  sh_tdat9:  .half 0xbeef
=======
  lh_tdat1: .half 0x00ff
  lh_tdat2: .half 0xff00
  lh_tdat3: .half 0x0ff0
  lh_tdat4: .half 0xf00f
#sh.S
  sh_tdat:
  sh_tdat1: .half 0xbeef
  sh_tdat2: .half 0xbeef
  sh_tdat3: .half 0xbeef
  sh_tdat4: .half 0xbeef
  sh_tdat5: .half 0xbeef
  sh_tdat6: .half 0xbeef
  sh_tdat7: .half 0xbeef
  sh_tdat8: .half 0xbeef
  sh_tdat9: .half 0xbeef
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1
  sh_tdat10: .half 0xbeef
.align 4
#lw.S
  lw_tdat:
<<<<<<< HEAD
  lw_tdat1:  .word 0x00ff00ff
  lw_tdat2:  .word 0xff00ff00
  lw_tdat3:  .word 0x0ff00ff0
  lw_tdat4:  .word 0xf00ff00f
#sw.S
  sw_tdat:
  sw_tdat1:  .word 0xdeadbeef
  sw_tdat2:  .word 0xdeadbeef
  sw_tdat3:  .word 0xdeadbeef
  sw_tdat4:  .word 0xdeadbeef
  sw_tdat5:  .word 0xdeadbeef
  sw_tdat6:  .word 0xdeadbeef
  sw_tdat7:  .word 0xdeadbeef
  sw_tdat8:  .word 0xdeadbeef
  sw_tdat9:  .word 0xdeadbeef
  sw_tdat10: .word 0xdeadbeef
.align 4  
#fence_i.S
insn:
  addi a3, a3, 333
  
RVTEST_DATA_END
=======
  lw_tdat1: .word 0x00ff00ff
  lw_tdat2: .word 0xff00ff00
  lw_tdat3: .word 0x0ff00ff0
  lw_tdat4: .word 0xf00ff00f
#sw.S
  sw_tdat:
  sw_tdat1: .word 0xdeadbeef
  sw_tdat2: .word 0xdeadbeef
  sw_tdat3: .word 0xdeadbeef
  sw_tdat4: .word 0xdeadbeef
  sw_tdat5: .word 0xdeadbeef
  sw_tdat6: .word 0xdeadbeef
  sw_tdat7: .word 0xdeadbeef
  sw_tdat8: .word 0xdeadbeef
  sw_tdat9: .word 0xdeadbeef
  sw_tdat10: .word 0xdeadbeef
.align 4
#fence_i.S
insn:
  addi a3, a3, 333

.align 4; .global end_signature; end_signature:
>>>>>>> eb6a9bb3e09cf42ef8beb09a5c9ad229ca47bce1

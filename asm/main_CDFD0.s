.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD3D0
/* CDFD0 800CD3D0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CDFD4 800CD3D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CDFD8 800CD3D8 AFA50034 */  sw         $a1, 0x34($sp)
/* CDFDC 800CD3DC 8C820040 */  lw         $v0, 0x40($a0)
/* CDFE0 800CD3E0 240F0003 */  addiu      $t7, $zero, 3
/* CDFE4 800CD3E4 A7AF0020 */  sh         $t7, 0x20($sp)
/* CDFE8 800CD3E8 8C98003C */  lw         $t8, 0x3c($a0)
/* CDFEC 800CD3EC 00A07025 */  or         $t6, $a1, $zero
/* CDFF0 800CD3F0 A7AE0028 */  sh         $t6, 0x28($sp)
/* CDFF4 800CD3F4 0018C880 */  sll        $t9, $t8, 2
/* CDFF8 800CD3F8 0338C823 */  subu       $t9, $t9, $t8
/* CDFFC 800CD3FC 0019C900 */  sll        $t9, $t9, 4
/* CE000 800CD400 03224821 */  addu       $t1, $t9, $v0
/* CE004 800CD404 AFA90024 */  sw         $t1, 0x24($sp)
/* CE008 800CD408 27A50020 */  addiu      $a1, $sp, 0x20
/* CE00C 800CD40C 24840014 */  addiu      $a0, $a0, 0x14
/* CE010 800CD410 0C03031B */  jal        func_800C0C6C
/* CE014 800CD414 00003025 */   or        $a2, $zero, $zero
/* CE018 800CD418 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE01C 800CD41C 27BD0030 */  addiu      $sp, $sp, 0x30
/* CE020 800CD420 03E00008 */  jr         $ra
/* CE024 800CD424 00000000 */   nop
/* CE028 800CD428 00000000 */  nop
/* CE02C 800CD42C 00000000 */  nop

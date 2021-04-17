.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A4900
/* A5500 800A4900 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* A5504 800A4904 AFBF0014 */  sw         $ra, 0x14($sp)
/* A5508 800A4908 AFA40030 */  sw         $a0, 0x30($sp)
/* A550C 800A490C AFA50034 */  sw         $a1, 0x34($sp)
/* A5510 800A4910 8FAE0030 */  lw         $t6, 0x30($sp)
/* A5514 800A4914 8DCF0040 */  lw         $t7, 0x40($t6)
/* A5518 800A4918 AFAF001C */  sw         $t7, 0x1c($sp)
/* A551C 800A491C 8FB80030 */  lw         $t8, 0x30($sp)
/* A5520 800A4920 8F19003C */  lw         $t9, 0x3c($t8)
/* A5524 800A4924 8F080044 */  lw         $t0, 0x44($t8)
/* A5528 800A4928 0328082A */  slt        $at, $t9, $t0
/* A552C 800A492C 10200003 */  beqz       $at, .L800A493C
/* A5530 800A4930 00000000 */   nop
/* A5534 800A4934 0721000A */  bgez       $t9, .L800A4960
/* A5538 800A4938 00000000 */   nop
.L800A493C:
/* A553C 800A493C 8FA90030 */  lw         $t1, 0x30($sp)
/* A5540 800A4940 24040070 */  addiu      $a0, $zero, 0x70
/* A5544 800A4944 24050002 */  addiu      $a1, $zero, 2
/* A5548 800A4948 8D270044 */  lw         $a3, 0x44($t1)
/* A554C 800A494C 8D26003C */  lw         $a2, 0x3c($t1)
/* A5550 800A4950 0C02B5EC */  jal        func_800AD7B0
/* A5554 800A4954 24E7FFFF */   addiu     $a3, $a3, -1
/* A5558 800A4958 10000014 */  b          .L800A49AC
/* A555C 800A495C 00000000 */   nop
.L800A4960:
/* A5560 800A4960 240A0004 */  addiu      $t2, $zero, 4
/* A5564 800A4964 A7AA0020 */  sh         $t2, 0x20($sp)
/* A5568 800A4968 8FAB0030 */  lw         $t3, 0x30($sp)
/* A556C 800A496C 8FAE001C */  lw         $t6, 0x1c($sp)
/* A5570 800A4970 8D6C003C */  lw         $t4, 0x3c($t3)
/* A5574 800A4974 000C6880 */  sll        $t5, $t4, 2
/* A5578 800A4978 01AC6823 */  subu       $t5, $t5, $t4
/* A557C 800A497C 000D6900 */  sll        $t5, $t5, 4
/* A5580 800A4980 01AE7821 */  addu       $t7, $t5, $t6
/* A5584 800A4984 AFAF0024 */  sw         $t7, 0x24($sp)
/* A5588 800A4988 C7A40034 */  lwc1       $f4, 0x34($sp)
/* A558C 800A498C E7A40028 */  swc1       $f4, 0x28($sp)
/* A5590 800A4990 8FA40030 */  lw         $a0, 0x30($sp)
/* A5594 800A4994 27A50020 */  addiu      $a1, $sp, 0x20
/* A5598 800A4998 00003025 */  or         $a2, $zero, $zero
/* A559C 800A499C 0C026E68 */  jal        func_8009B9A0
/* A55A0 800A49A0 24840014 */   addiu     $a0, $a0, 0x14
/* A55A4 800A49A4 10000001 */  b          .L800A49AC
/* A55A8 800A49A8 00000000 */   nop
.L800A49AC:
/* A55AC 800A49AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* A55B0 800A49B0 27BD0030 */  addiu      $sp, $sp, 0x30
/* A55B4 800A49B4 03E00008 */  jr         $ra
/* A55B8 800A49B8 00000000 */   nop
/* A55BC 800A49BC 00000000 */  nop

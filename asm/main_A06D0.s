.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009FAD0
/* A06D0 8009FAD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A06D4 8009FAD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* A06D8 8009FAD8 AFA40028 */  sw         $a0, 0x28($sp)
/* A06DC 8009FADC AFB00018 */  sw         $s0, 0x18($sp)
/* A06E0 8009FAE0 0C02C0C8 */  jal        func_800B0320
/* A06E4 8009FAE4 00000000 */   nop
/* A06E8 8009FAE8 00408025 */  or         $s0, $v0, $zero
/* A06EC 8009FAEC 93AE002B */  lbu        $t6, 0x2b($sp)
/* A06F0 8009FAF0 11C00007 */  beqz       $t6, .L8009FB10
/* A06F4 8009FAF4 00000000 */   nop
/* A06F8 8009FAF8 3C0F800D */  lui        $t7, %hi(D_800CD444)
/* A06FC 8009FAFC 8DEFD444 */  lw         $t7, %lo(D_800CD444)($t7)
/* A0700 8009FB00 95F80000 */  lhu        $t8, ($t7)
/* A0704 8009FB04 37190020 */  ori        $t9, $t8, 0x20
/* A0708 8009FB08 10000007 */  b          .L8009FB28
/* A070C 8009FB0C A5F90000 */   sh        $t9, ($t7)
.L8009FB10:
/* A0710 8009FB10 3C08800D */  lui        $t0, %hi(D_800CD444)
/* A0714 8009FB14 8D08D444 */  lw         $t0, %lo(D_800CD444)($t0)
/* A0718 8009FB18 2401FFDF */  addiu      $at, $zero, -0x21
/* A071C 8009FB1C 95090000 */  lhu        $t1, ($t0)
/* A0720 8009FB20 01215024 */  and        $t2, $t1, $at
/* A0724 8009FB24 A50A0000 */  sh         $t2, ($t0)
.L8009FB28:
/* A0728 8009FB28 0C02C0D0 */  jal        func_800B0340
/* A072C 8009FB2C 02002025 */   or        $a0, $s0, $zero
/* A0730 8009FB30 10000001 */  b          .L8009FB38
/* A0734 8009FB34 00000000 */   nop
.L8009FB38:
/* A0738 8009FB38 8FBF001C */  lw         $ra, 0x1c($sp)
/* A073C 8009FB3C 8FB00018 */  lw         $s0, 0x18($sp)
/* A0740 8009FB40 27BD0028 */  addiu      $sp, $sp, 0x28
/* A0744 8009FB44 03E00008 */  jr         $ra
/* A0748 8009FB48 00000000 */   nop
/* A074C 8009FB4C 00000000 */  nop

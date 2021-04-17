.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800997F0
/* 9A3F0 800997F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9A3F4 800997F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9A3F8 800997F8 240E0001 */  addiu      $t6, $zero, 1
/* 9A3FC 800997FC 3C01800D */  lui        $at, %hi(D_800CC280)
/* 9A400 80099800 AC2EC280 */  sw         $t6, %lo(D_800CC280)($at)
/* 9A404 80099804 3C04801A */  lui        $a0, %hi(D_801A1BA8)
/* 9A408 80099808 3C05801A */  lui        $a1, %hi(D_801A1BA0)
/* 9A40C 8009980C 24A51BA0 */  addiu      $a1, $a1, %lo(D_801A1BA0)
/* 9A410 80099810 24841BA8 */  addiu      $a0, $a0, %lo(D_801A1BA8)
/* 9A414 80099814 0C02B42C */  jal        func_800AD0B0
/* 9A418 80099818 24060001 */   addiu     $a2, $zero, 1
/* 9A41C 8009981C 3C04801A */  lui        $a0, %hi(D_801A1BA8)
/* 9A420 80099820 24841BA8 */  addiu      $a0, $a0, %lo(D_801A1BA8)
/* 9A424 80099824 00002825 */  or         $a1, $zero, $zero
/* 9A428 80099828 0C025C40 */  jal        func_80097100
/* 9A42C 8009982C 00003025 */   or        $a2, $zero, $zero
/* 9A430 80099830 10000001 */  b          .L80099838
/* 9A434 80099834 00000000 */   nop
.L80099838:
/* 9A438 80099838 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9A43C 8009983C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9A440 80099840 03E00008 */  jr         $ra
/* 9A444 80099844 00000000 */   nop

glabel func_80099848
/* 9A448 80099848 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9A44C 8009984C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9A450 80099850 3C0E800D */  lui        $t6, %hi(D_800CC280)
/* 9A454 80099854 8DCEC280 */  lw         $t6, %lo(D_800CC280)($t6)
/* 9A458 80099858 15C00003 */  bnez       $t6, .L80099868
/* 9A45C 8009985C 00000000 */   nop
/* 9A460 80099860 0C0265FC */  jal        func_800997F0
/* 9A464 80099864 00000000 */   nop
.L80099868:
/* 9A468 80099868 3C04801A */  lui        $a0, %hi(D_801A1BA8)
/* 9A46C 8009986C 24841BA8 */  addiu      $a0, $a0, %lo(D_801A1BA8)
/* 9A470 80099870 27A5001C */  addiu      $a1, $sp, 0x1c
/* 9A474 80099874 0C025D30 */  jal        func_800974C0
/* 9A478 80099878 24060001 */   addiu     $a2, $zero, 1
/* 9A47C 8009987C 10000001 */  b          .L80099884
/* 9A480 80099880 00000000 */   nop
.L80099884:
/* 9A484 80099884 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9A488 80099888 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9A48C 8009988C 03E00008 */  jr         $ra
/* 9A490 80099890 00000000 */   nop

glabel func_80099894
/* 9A494 80099894 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9A498 80099898 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9A49C 8009989C 3C04801A */  lui        $a0, %hi(D_801A1BA8)
/* 9A4A0 800998A0 24841BA8 */  addiu      $a0, $a0, %lo(D_801A1BA8)
/* 9A4A4 800998A4 00002825 */  or         $a1, $zero, $zero
/* 9A4A8 800998A8 0C025C40 */  jal        func_80097100
/* 9A4AC 800998AC 00003025 */   or        $a2, $zero, $zero
/* 9A4B0 800998B0 10000001 */  b          .L800998B8
/* 9A4B4 800998B4 00000000 */   nop
.L800998B8:
/* 9A4B8 800998B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9A4BC 800998BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9A4C0 800998C0 03E00008 */  jr         $ra
/* 9A4C4 800998C4 00000000 */   nop
/* 9A4C8 800998C8 00000000 */  nop
/* 9A4CC 800998CC 00000000 */  nop

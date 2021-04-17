.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C6AC0
/* C76C0 800C6AC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C76C4 800C6AC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C76C8 800C6AC8 0C034BE4 */  jal        func_800D2F90
/* C76CC 800C6ACC 24040400 */   addiu     $a0, $zero, 0x400
/* C76D0 800C6AD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* C76D4 800C6AD4 27BD0018 */  addiu      $sp, $sp, 0x18
/* C76D8 800C6AD8 03E00008 */  jr         $ra
/* C76DC 800C6ADC 00000000 */   nop

glabel func_800C6AE0
/* C76E0 800C6AE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C76E4 800C6AE4 AFBF001C */  sw         $ra, 0x1c($sp)
/* C76E8 800C6AE8 AFA40028 */  sw         $a0, 0x28($sp)
/* C76EC 800C6AEC 0C033DD4 */  jal        func_800CF750
/* C76F0 800C6AF0 AFB00018 */   sw        $s0, 0x18($sp)
/* C76F4 800C6AF4 3C0F800E */  lui        $t7, %hi(D_800DB1F4)
/* C76F8 800C6AF8 8DEFB1F4 */  lw         $t7, %lo(D_800DB1F4)($t7)
/* C76FC 800C6AFC 8FAE0028 */  lw         $t6, 0x28($sp)
/* C7700 800C6B00 3C19800E */  lui        $t9, %hi(D_800DB1F4)
/* C7704 800C6B04 24180001 */  addiu      $t8, $zero, 1
/* C7708 800C6B08 ADEE0008 */  sw         $t6, 8($t7)
/* C770C 800C6B0C 8F39B1F4 */  lw         $t9, %lo(D_800DB1F4)($t9)
/* C7710 800C6B10 3C08800E */  lui        $t0, %hi(D_800DB1F4)
/* C7714 800C6B14 00408025 */  or         $s0, $v0, $zero
/* C7718 800C6B18 A7380000 */  sh         $t8, ($t9)
/* C771C 800C6B1C 8D08B1F4 */  lw         $t0, %lo(D_800DB1F4)($t0)
/* C7720 800C6B20 02002025 */  or         $a0, $s0, $zero
/* C7724 800C6B24 8D090008 */  lw         $t1, 8($t0)
/* C7728 800C6B28 8D2A0004 */  lw         $t2, 4($t1)
/* C772C 800C6B2C 0C033DDC */  jal        func_800CF770
/* C7730 800C6B30 AD0A000C */   sw        $t2, 0xc($t0)
/* C7734 800C6B34 8FBF001C */  lw         $ra, 0x1c($sp)
/* C7738 800C6B38 8FB00018 */  lw         $s0, 0x18($sp)
/* C773C 800C6B3C 27BD0028 */  addiu      $sp, $sp, 0x28
/* C7740 800C6B40 03E00008 */  jr         $ra
/* C7744 800C6B44 00000000 */   nop
/* C7748 800C6B48 00000000 */  nop
/* C774C 800C6B4C 00000000 */  nop

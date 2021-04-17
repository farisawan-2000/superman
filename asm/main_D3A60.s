.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2E60
/* D3A60 800D2E60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D3A64 800D2E64 AFBF0014 */  sw         $ra, 0x14($sp)
/* D3A68 800D2E68 AFA40018 */  sw         $a0, 0x18($sp)
/* D3A6C 800D2E6C 0C0336B4 */  jal        func_800CDAD0
/* D3A70 800D2E70 AFA5001C */   sw        $a1, 0x1c($sp)
/* D3A74 800D2E74 10400003 */  beqz       $v0, .L800D2E84
/* D3A78 800D2E78 00000000 */   nop
/* D3A7C 800D2E7C 10000007 */  b          .L800D2E9C
/* D3A80 800D2E80 2402FFFF */   addiu     $v0, $zero, -1
.L800D2E84:
/* D3A84 800D2E84 8FAF0018 */  lw         $t7, 0x18($sp)
/* D3A88 800D2E88 8FAE001C */  lw         $t6, 0x1c($sp)
/* D3A8C 800D2E8C 3C01A000 */  lui        $at, 0xa000
/* D3A90 800D2E90 01E1C025 */  or         $t8, $t7, $at
/* D3A94 800D2E94 00001025 */  or         $v0, $zero, $zero
/* D3A98 800D2E98 AF0E0000 */  sw         $t6, ($t8)
.L800D2E9C:
/* D3A9C 800D2E9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D3AA0 800D2EA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* D3AA4 800D2EA4 03E00008 */  jr         $ra
/* D3AA8 800D2EA8 00000000 */   nop
/* D3AAC 800D2EAC 00000000 */  nop

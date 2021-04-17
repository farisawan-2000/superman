.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2FE0
/* D3BE0 800D2FE0 8FAE0010 */  lw         $t6, 0x10($sp)
/* D3BE4 800D2FE4 AFA40000 */  sw         $a0, ($sp)
/* D3BE8 800D2FE8 AFA50004 */  sw         $a1, 4($sp)
/* D3BEC 800D2FEC 00EE0019 */  multu      $a3, $t6
/* D3BF0 800D2FF0 8CD90008 */  lw         $t9, 8($a2)
/* D3BF4 800D2FF4 8CD80000 */  lw         $t8, ($a2)
/* D3BF8 800D2FF8 8CC40004 */  lw         $a0, 4($a2)
/* D3BFC 800D2FFC 2401FFF0 */  addiu      $at, $zero, -0x10
/* D3C00 800D3000 03194021 */  addu       $t0, $t8, $t9
/* D3C04 800D3004 00001825 */  or         $v1, $zero, $zero
/* D3C08 800D3008 00001012 */  mflo       $v0
/* D3C0C 800D300C 2442000F */  addiu      $v0, $v0, 0xf
/* D3C10 800D3010 00417824 */  and        $t7, $v0, $at
/* D3C14 800D3014 008F4821 */  addu       $t1, $a0, $t7
/* D3C18 800D3018 0109082B */  sltu       $at, $t0, $t1
/* D3C1C 800D301C 14200003 */  bnez       $at, .L800D302C
/* D3C20 800D3020 008F5021 */   addu      $t2, $a0, $t7
/* D3C24 800D3024 00801825 */  or         $v1, $a0, $zero
/* D3C28 800D3028 ACCA0004 */  sw         $t2, 4($a2)
.L800D302C:
/* D3C2C 800D302C 03E00008 */  jr         $ra
/* D3C30 800D3030 00601025 */   or        $v0, $v1, $zero
/* D3C34 800D3034 00000000 */  nop
/* D3C38 800D3038 00000000 */  nop
/* D3C3C 800D303C 00000000 */  nop

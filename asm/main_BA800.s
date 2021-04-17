.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B9C00
/* BA800 800B9C00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BA804 800B9C04 AFBF001C */  sw         $ra, 0x1c($sp)
/* BA808 800B9C08 AFB00018 */  sw         $s0, 0x18($sp)
/* BA80C 800B9C0C 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* BA810 800B9C10 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* BA814 800B9C14 15C00006 */  bnez       $t6, .L800B9C30
/* BA818 800B9C18 00000000 */   nop
/* BA81C 800B9C1C 24040025 */  addiu      $a0, $zero, 0x25
/* BA820 800B9C20 0C02B5EC */  jal        func_800AD7B0
/* BA824 800B9C24 00002825 */   or        $a1, $zero, $zero
/* BA828 800B9C28 1000000E */  b          .L800B9C64
/* BA82C 800B9C2C 00001025 */   or        $v0, $zero, $zero
.L800B9C30:
/* BA830 800B9C30 0C02C0C8 */  jal        func_800B0320
/* BA834 800B9C34 00000000 */   nop
/* BA838 800B9C38 00408025 */  or         $s0, $v0, $zero
/* BA83C 800B9C3C 3C0F800D */  lui        $t7, %hi(D_800CD440)
/* BA840 800B9C40 8DEFD440 */  lw         $t7, %lo(D_800CD440)($t7)
/* BA844 800B9C44 8DF80004 */  lw         $t8, 4($t7)
/* BA848 800B9C48 AFB80020 */  sw         $t8, 0x20($sp)
/* BA84C 800B9C4C 0C02C0D0 */  jal        func_800B0340
/* BA850 800B9C50 02002025 */   or        $a0, $s0, $zero
/* BA854 800B9C54 10000003 */  b          .L800B9C64
/* BA858 800B9C58 8FA20020 */   lw        $v0, 0x20($sp)
/* BA85C 800B9C5C 10000001 */  b          .L800B9C64
/* BA860 800B9C60 00000000 */   nop
.L800B9C64:
/* BA864 800B9C64 8FBF001C */  lw         $ra, 0x1c($sp)
/* BA868 800B9C68 8FB00018 */  lw         $s0, 0x18($sp)
/* BA86C 800B9C6C 27BD0028 */  addiu      $sp, $sp, 0x28
/* BA870 800B9C70 03E00008 */  jr         $ra
/* BA874 800B9C74 00000000 */   nop
/* BA878 800B9C78 00000000 */  nop
/* BA87C 800B9C7C 00000000 */  nop

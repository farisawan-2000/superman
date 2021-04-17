.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CE970
/* CF570 800CE970 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CF574 800CE974 AFBF001C */  sw         $ra, 0x1c($sp)
/* CF578 800CE978 AFA40028 */  sw         $a0, 0x28($sp)
/* CF57C 800CE97C 0C033DD4 */  jal        func_800CF750
/* CF580 800CE980 AFB00018 */   sw        $s0, 0x18($sp)
/* CF584 800CE984 3C0E800E */  lui        $t6, %hi(D_800DA0C0)
/* CF588 800CE988 8DCEA0C0 */  lw         $t6, %lo(D_800DA0C0)($t6)
/* CF58C 800CE98C 8FAF0028 */  lw         $t7, 0x28($sp)
/* CF590 800CE990 00408025 */  or         $s0, $v0, $zero
/* CF594 800CE994 3C01800E */  lui        $at, %hi(D_800DA0C0)
/* CF598 800CE998 01CFC025 */  or         $t8, $t6, $t7
/* CF59C 800CE99C AC38A0C0 */  sw         $t8, %lo(D_800DA0C0)($at)
/* CF5A0 800CE9A0 0C033DDC */  jal        func_800CF770
/* CF5A4 800CE9A4 02002025 */   or        $a0, $s0, $zero
/* CF5A8 800CE9A8 8FBF001C */  lw         $ra, 0x1c($sp)
/* CF5AC 800CE9AC 8FB00018 */  lw         $s0, 0x18($sp)
/* CF5B0 800CE9B0 27BD0028 */  addiu      $sp, $sp, 0x28
/* CF5B4 800CE9B4 03E00008 */  jr         $ra
/* CF5B8 800CE9B8 00000000 */   nop
/* CF5BC 800CE9BC 00000000 */  nop

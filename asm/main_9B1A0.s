.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009A5A0
/* 9B1A0 8009A5A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9B1A4 8009A5A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B1A8 8009A5A8 AFA40030 */  sw         $a0, 0x30($sp)
/* 9B1AC 8009A5AC 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9B1B0 8009A5B0 8DCF0040 */  lw         $t7, 0x40($t6)
/* 9B1B4 8009A5B4 AFAF001C */  sw         $t7, 0x1c($sp)
/* 9B1B8 8009A5B8 24180001 */  addiu      $t8, $zero, 1
/* 9B1BC 8009A5BC A7B80020 */  sh         $t8, 0x20($sp)
/* 9B1C0 8009A5C0 8FB90030 */  lw         $t9, 0x30($sp)
/* 9B1C4 8009A5C4 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9B1C8 8009A5C8 8F28003C */  lw         $t0, 0x3c($t9)
/* 9B1CC 8009A5CC 00084880 */  sll        $t1, $t0, 2
/* 9B1D0 8009A5D0 01284823 */  subu       $t1, $t1, $t0
/* 9B1D4 8009A5D4 00094900 */  sll        $t1, $t1, 4
/* 9B1D8 8009A5D8 012A5821 */  addu       $t3, $t1, $t2
/* 9B1DC 8009A5DC AFAB0024 */  sw         $t3, 0x24($sp)
/* 9B1E0 8009A5E0 8FA40030 */  lw         $a0, 0x30($sp)
/* 9B1E4 8009A5E4 27A50020 */  addiu      $a1, $sp, 0x20
/* 9B1E8 8009A5E8 00003025 */  or         $a2, $zero, $zero
/* 9B1EC 8009A5EC 0C026E68 */  jal        func_8009B9A0
/* 9B1F0 8009A5F0 24840014 */   addiu     $a0, $a0, 0x14
/* 9B1F4 8009A5F4 10000001 */  b          .L8009A5FC
/* 9B1F8 8009A5F8 00000000 */   nop
.L8009A5FC:
/* 9B1FC 8009A5FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B200 8009A600 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9B204 8009A604 03E00008 */  jr         $ra
/* 9B208 8009A608 00000000 */   nop
/* 9B20C 8009A60C 00000000 */  nop

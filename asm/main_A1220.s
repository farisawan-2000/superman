.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A0620
/* A1220 800A0620 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A1224 800A0624 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1228 800A0628 AFA40028 */  sw         $a0, 0x28($sp)
/* A122C 800A062C AFA5002C */  sw         $a1, 0x2c($sp)
/* A1230 800A0630 240E000D */  addiu      $t6, $zero, 0xd
/* A1234 800A0634 A7AE0018 */  sh         $t6, 0x18($sp)
/* A1238 800A0638 8FAF002C */  lw         $t7, 0x2c($sp)
/* A123C 800A063C AFAF001C */  sw         $t7, 0x1c($sp)
/* A1240 800A0640 8FA40028 */  lw         $a0, 0x28($sp)
/* A1244 800A0644 27A50018 */  addiu      $a1, $sp, 0x18
/* A1248 800A0648 00003025 */  or         $a2, $zero, $zero
/* A124C 800A064C 0C026E68 */  jal        func_8009B9A0
/* A1250 800A0650 24840048 */   addiu     $a0, $a0, 0x48
/* A1254 800A0654 10000001 */  b          .L800A065C
/* A1258 800A0658 00000000 */   nop
.L800A065C:
/* A125C 800A065C 8FBF0014 */  lw         $ra, 0x14($sp)
/* A1260 800A0660 27BD0028 */  addiu      $sp, $sp, 0x28
/* A1264 800A0664 03E00008 */  jr         $ra
/* A1268 800A0668 00000000 */   nop
/* A126C 800A066C 00000000 */  nop

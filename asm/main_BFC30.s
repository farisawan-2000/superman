.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BF030
/* BFC30 800BF030 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BFC34 800BF034 AFBF0014 */  sw         $ra, 0x14($sp)
/* BFC38 800BF038 240E000E */  addiu      $t6, $zero, 0xe
/* BFC3C 800BF03C AFA5001C */  sw         $a1, 0x1c($sp)
/* BFC40 800BF040 A7AE0018 */  sh         $t6, 0x18($sp)
/* BFC44 800BF044 27A50018 */  addiu      $a1, $sp, 0x18
/* BFC48 800BF048 24840048 */  addiu      $a0, $a0, 0x48
/* BFC4C 800BF04C 0C03031B */  jal        func_800C0C6C
/* BFC50 800BF050 00003025 */   or        $a2, $zero, $zero
/* BFC54 800BF054 8FBF0014 */  lw         $ra, 0x14($sp)
/* BFC58 800BF058 27BD0028 */  addiu      $sp, $sp, 0x28
/* BFC5C 800BF05C 03E00008 */  jr         $ra
/* BFC60 800BF060 00000000 */   nop
/* BFC64 800BF064 00000000 */  nop
/* BFC68 800BF068 00000000 */  nop
/* BFC6C 800BF06C 00000000 */  nop

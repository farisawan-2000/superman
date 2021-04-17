.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CFF90
/* D0B90 800CFF90 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D0B94 800CFF94 AFBF001C */  sw         $ra, 0x1c($sp)
/* D0B98 800CFF98 AFA40028 */  sw         $a0, 0x28($sp)
/* D0B9C 800CFF9C AFA5002C */  sw         $a1, 0x2c($sp)
/* D0BA0 800CFFA0 AFA60030 */  sw         $a2, 0x30($sp)
/* D0BA4 800CFFA4 0C033DD4 */  jal        func_800CF750
/* D0BA8 800CFFA8 AFB00018 */   sw        $s0, 0x18($sp)
/* D0BAC 800CFFAC 3C0F800E */  lui        $t7, %hi(D_800DB1F4)
/* D0BB0 800CFFB0 8DEFB1F4 */  lw         $t7, %lo(D_800DB1F4)($t7)
/* D0BB4 800CFFB4 8FAE0028 */  lw         $t6, 0x28($sp)
/* D0BB8 800CFFB8 3C19800E */  lui        $t9, %hi(D_800DB1F4)
/* D0BBC 800CFFBC 3C09800E */  lui        $t1, 0x800e
/* D0BC0 800CFFC0 ADEE0010 */  sw         $t6, 0x10($t7)
/* D0BC4 800CFFC4 8F39B1F4 */  lw         $t9, %lo(D_800DB1F4)($t9)
/* D0BC8 800CFFC8 8FB8002C */  lw         $t8, 0x2c($sp)
/* D0BCC 800CFFCC 00408025 */  or         $s0, $v0, $zero
/* D0BD0 800CFFD0 02002025 */  or         $a0, $s0, $zero
/* D0BD4 800CFFD4 AF380014 */  sw         $t8, 0x14($t9)
/* D0BD8 800CFFD8 8D29B1F4 */  lw         $t1, -0x4e0c($t1)
/* D0BDC 800CFFDC 8FA80030 */  lw         $t0, 0x30($sp)
/* D0BE0 800CFFE0 0C033DDC */  jal        func_800CF770
/* D0BE4 800CFFE4 A5280002 */   sh        $t0, 2($t1)
/* D0BE8 800CFFE8 8FBF001C */  lw         $ra, 0x1c($sp)
/* D0BEC 800CFFEC 8FB00018 */  lw         $s0, 0x18($sp)
/* D0BF0 800CFFF0 27BD0028 */  addiu      $sp, $sp, 0x28
/* D0BF4 800CFFF4 03E00008 */  jr         $ra
/* D0BF8 800CFFF8 00000000 */   nop
/* D0BFC 800CFFFC 00000000 */  nop

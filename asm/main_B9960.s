.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8D60
/* B9960 800B8D60 27BDFFF8 */  addiu      $sp, $sp, -8
/* B9964 800B8D64 3C0EA410 */  lui        $t6, %hi(D_A410000C)
/* B9968 800B8D68 8DC4000C */  lw         $a0, %lo(D_A410000C)($t6)
/* B996C 800B8D6C 308F0100 */  andi       $t7, $a0, 0x100
/* B9970 800B8D70 11E00005 */  beqz       $t7, .L800B8D88
/* B9974 800B8D74 00000000 */   nop
/* B9978 800B8D78 10000007 */  b          .L800B8D98
/* B997C 800B8D7C 24020001 */   addiu     $v0, $zero, 1
/* B9980 800B8D80 10000003 */  b          .L800B8D90
/* B9984 800B8D84 00000000 */   nop
.L800B8D88:
/* B9988 800B8D88 10000003 */  b          .L800B8D98
/* B998C 800B8D8C 00001025 */   or        $v0, $zero, $zero
.L800B8D90:
/* B9990 800B8D90 10000001 */  b          .L800B8D98
/* B9994 800B8D94 00000000 */   nop
.L800B8D98:
/* B9998 800B8D98 03E00008 */  jr         $ra
/* B999C 800B8D9C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800B8DA0
/* B99A0 800B8DA0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* B99A4 800B8DA4 ADC40010 */  sw         $a0, %lo(D_A4040010)($t6)
/* B99A8 800B8DA8 03E00008 */  jr         $ra
/* B99AC 800B8DAC 00000000 */   nop

glabel func_800B8DB0
/* B99B0 800B8DB0 03E00008 */  jr         $ra
/* B99B4 800B8DB4 00000000 */   nop
/* B99B8 800B8DB8 00000000 */  nop
/* B99BC 800B8DBC 00000000 */  nop

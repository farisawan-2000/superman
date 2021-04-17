.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C45F0
/* C51F0 800C45F0 00057400 */  sll        $t6, $a1, 0x10
/* C51F4 800C45F4 000E7C03 */  sra        $t7, $t6, 0x10
/* C51F8 800C45F8 AFA50004 */  sw         $a1, 4($sp)
/* C51FC 800C45FC 03E00008 */  jr         $ra
/* C5200 800C4600 AC8F003C */   sw        $t7, 0x3c($a0)
/* C5204 800C4604 00000000 */  nop
/* C5208 800C4608 00000000 */  nop
/* C520C 800C460C 00000000 */  nop

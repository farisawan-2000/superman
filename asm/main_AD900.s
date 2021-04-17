.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ACD00
/* AD900 800ACD00 27BDFFF8 */  addiu      $sp, $sp, -8
/* AD904 800ACD04 30AE000F */  andi       $t6, $a1, 0xf
/* AD908 800ACD08 240F0010 */  addiu      $t7, $zero, 0x10
/* AD90C 800ACD0C 01EEC023 */  subu       $t8, $t7, $t6
/* AD910 800ACD10 AFB80004 */  sw         $t8, 4($sp)
/* AD914 800ACD14 8FB90004 */  lw         $t9, 4($sp)
/* AD918 800ACD18 24010010 */  addiu      $at, $zero, 0x10
/* AD91C 800ACD1C 13210005 */  beq        $t9, $at, .L800ACD34
/* AD920 800ACD20 00000000 */   nop
/* AD924 800ACD24 8FA80004 */  lw         $t0, 4($sp)
/* AD928 800ACD28 00A84821 */  addu       $t1, $a1, $t0
/* AD92C 800ACD2C 10000002 */  b          .L800ACD38
/* AD930 800ACD30 AC890000 */   sw        $t1, ($a0)
.L800ACD34:
/* AD934 800ACD34 AC850000 */  sw         $a1, ($a0)
.L800ACD38:
/* AD938 800ACD38 AC860008 */  sw         $a2, 8($a0)
/* AD93C 800ACD3C 8C8A0000 */  lw         $t2, ($a0)
/* AD940 800ACD40 AC8A0004 */  sw         $t2, 4($a0)
/* AD944 800ACD44 AC80000C */  sw         $zero, 0xc($a0)
/* AD948 800ACD48 10000001 */  b          .L800ACD50
/* AD94C 800ACD4C 00000000 */   nop
.L800ACD50:
/* AD950 800ACD50 03E00008 */  jr         $ra
/* AD954 800ACD54 27BD0008 */   addiu     $sp, $sp, 8
/* AD958 800ACD58 00000000 */  nop
/* AD95C 800ACD5C 00000000 */  nop

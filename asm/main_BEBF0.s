.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BDFF0
/* BEBF0 800BDFF0 27BDFED0 */  addiu      $sp, $sp, -0x130
/* BEBF4 800BDFF4 AFA40130 */  sw         $a0, 0x130($sp)
/* BEBF8 800BDFF8 8FAE0130 */  lw         $t6, 0x130($sp)
/* BEBFC 800BDFFC AFBF0014 */  sw         $ra, 0x14($sp)
/* BEC00 800BE000 AFA50134 */  sw         $a1, 0x134($sp)
/* BEC04 800BE004 AFA00128 */  sw         $zero, 0x128($sp)
/* BEC08 800BE008 AFA00024 */  sw         $zero, 0x24($sp)
/* BEC0C 800BE00C 8DCF0000 */  lw         $t7, ($t6)
/* BEC10 800BE010 31F80001 */  andi       $t8, $t7, 1
/* BEC14 800BE014 17000003 */  bnez       $t8, .L800BE024
/* BEC18 800BE018 00000000 */   nop
/* BEC1C 800BE01C 10000043 */  b          .L800BE12C
/* BEC20 800BE020 24020005 */   addiu     $v0, $zero, 5
.L800BE024:
/* BEC24 800BE024 0C031D08 */  jal        func_800C7420
/* BEC28 800BE028 8FA40130 */   lw        $a0, 0x130($sp)
/* BEC2C 800BE02C 24010002 */  addiu      $at, $zero, 2
/* BEC30 800BE030 14410003 */  bne        $v0, $at, .L800BE040
/* BEC34 800BE034 00000000 */   nop
/* BEC38 800BE038 1000003C */  b          .L800BE12C
/* BEC3C 800BE03C 24020002 */   addiu     $v0, $zero, 2
.L800BE040:
/* BEC40 800BE040 8FB90130 */  lw         $t9, 0x130($sp)
/* BEC44 800BE044 A3A00023 */  sb         $zero, 0x23($sp)
/* BEC48 800BE048 93280064 */  lbu        $t0, 0x64($t9)
/* BEC4C 800BE04C 19000031 */  blez       $t0, .L800BE114
/* BEC50 800BE050 00000000 */   nop
.L800BE054:
/* BEC54 800BE054 8FA40130 */  lw         $a0, 0x130($sp)
/* BEC58 800BE058 27A50028 */  addiu      $a1, $sp, 0x28
/* BEC5C 800BE05C 00003025 */  or         $a2, $zero, $zero
/* BEC60 800BE060 0C031D47 */  jal        func_800C751C
/* BEC64 800BE064 93A70023 */   lbu       $a3, 0x23($sp)
/* BEC68 800BE068 AFA20024 */  sw         $v0, 0x24($sp)
/* BEC6C 800BE06C 8FA90024 */  lw         $t1, 0x24($sp)
/* BEC70 800BE070 11200003 */  beqz       $t1, .L800BE080
/* BEC74 800BE074 00000000 */   nop
/* BEC78 800BE078 1000002C */  b          .L800BE12C
/* BEC7C 800BE07C 01201025 */   or        $v0, $t1, $zero
.L800BE080:
/* BEC80 800BE080 93AA0023 */  lbu        $t2, 0x23($sp)
/* BEC84 800BE084 19400004 */  blez       $t2, .L800BE098
/* BEC88 800BE088 00000000 */   nop
/* BEC8C 800BE08C 240B0001 */  addiu      $t3, $zero, 1
/* BEC90 800BE090 10000004 */  b          .L800BE0A4
/* BEC94 800BE094 AFAB001C */   sw        $t3, 0x1c($sp)
.L800BE098:
/* BEC98 800BE098 8FAC0130 */  lw         $t4, 0x130($sp)
/* BEC9C 800BE09C 8D8D0060 */  lw         $t5, 0x60($t4)
/* BECA0 800BE0A0 AFAD001C */  sw         $t5, 0x1c($sp)
.L800BE0A4:
/* BECA4 800BE0A4 8FAE001C */  lw         $t6, 0x1c($sp)
/* BECA8 800BE0A8 29C10080 */  slti       $at, $t6, 0x80
/* BECAC 800BE0AC 10200010 */  beqz       $at, .L800BE0F0
/* BECB0 800BE0B0 AFAE012C */   sw        $t6, 0x12c($sp)
.L800BE0B4:
/* BECB4 800BE0B4 8FAF012C */  lw         $t7, 0x12c($sp)
/* BECB8 800BE0B8 24010003 */  addiu      $at, $zero, 3
/* BECBC 800BE0BC 000FC040 */  sll        $t8, $t7, 1
/* BECC0 800BE0C0 03B8C821 */  addu       $t9, $sp, $t8
/* BECC4 800BE0C4 97390028 */  lhu        $t9, 0x28($t9)
/* BECC8 800BE0C8 17210004 */  bne        $t9, $at, .L800BE0DC
/* BECCC 800BE0CC 00000000 */   nop
/* BECD0 800BE0D0 8FA80128 */  lw         $t0, 0x128($sp)
/* BECD4 800BE0D4 25090001 */  addiu      $t1, $t0, 1
/* BECD8 800BE0D8 AFA90128 */  sw         $t1, 0x128($sp)
.L800BE0DC:
/* BECDC 800BE0DC 8FAA012C */  lw         $t2, 0x12c($sp)
/* BECE0 800BE0E0 254B0001 */  addiu      $t3, $t2, 1
/* BECE4 800BE0E4 29610080 */  slti       $at, $t3, 0x80
/* BECE8 800BE0E8 1420FFF2 */  bnez       $at, .L800BE0B4
/* BECEC 800BE0EC AFAB012C */   sw        $t3, 0x12c($sp)
.L800BE0F0:
/* BECF0 800BE0F0 93AC0023 */  lbu        $t4, 0x23($sp)
/* BECF4 800BE0F4 8FAF0130 */  lw         $t7, 0x130($sp)
/* BECF8 800BE0F8 258D0001 */  addiu      $t5, $t4, 1
/* BECFC 800BE0FC A3AD0023 */  sb         $t5, 0x23($sp)
/* BED00 800BE100 91F80064 */  lbu        $t8, 0x64($t7)
/* BED04 800BE104 31AE00FF */  andi       $t6, $t5, 0xff
/* BED08 800BE108 01D8082A */  slt        $at, $t6, $t8
/* BED0C 800BE10C 1420FFD1 */  bnez       $at, .L800BE054
/* BED10 800BE110 00000000 */   nop
.L800BE114:
/* BED14 800BE114 8FB90128 */  lw         $t9, 0x128($sp)
/* BED18 800BE118 8FAA0134 */  lw         $t2, 0x134($sp)
/* BED1C 800BE11C 00001025 */  or         $v0, $zero, $zero
/* BED20 800BE120 001940C0 */  sll        $t0, $t9, 3
/* BED24 800BE124 00084940 */  sll        $t1, $t0, 5
/* BED28 800BE128 AD490000 */  sw         $t1, ($t2)
.L800BE12C:
/* BED2C 800BE12C 8FBF0014 */  lw         $ra, 0x14($sp)
/* BED30 800BE130 27BD0130 */  addiu      $sp, $sp, 0x130
/* BED34 800BE134 03E00008 */  jr         $ra
/* BED38 800BE138 00000000 */   nop
/* BED3C 800BE13C 00000000 */  nop

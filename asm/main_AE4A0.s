.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AD8A0
/* AE4A0 800AD8A0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AE4A4 800AD8A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* AE4A8 800AD8A8 AFA40068 */  sw         $a0, 0x68($sp)
/* AE4AC 800AD8AC 8FAE0068 */  lw         $t6, 0x68($sp)
/* AE4B0 800AD8B0 91CF0065 */  lbu        $t7, 0x65($t6)
/* AE4B4 800AD8B4 11E0000B */  beqz       $t7, .L800AD8E4
/* AE4B8 800AD8B8 00000000 */   nop
/* AE4BC 800AD8BC 8FB80068 */  lw         $t8, 0x68($sp)
/* AE4C0 800AD8C0 A3000065 */  sb         $zero, 0x65($t8)
/* AE4C4 800AD8C4 0C0291D5 */  jal        func_800A4754
/* AE4C8 800AD8C8 8FA40068 */   lw        $a0, 0x68($sp)
/* AE4CC 800AD8CC AFA2001C */  sw         $v0, 0x1c($sp)
/* AE4D0 800AD8D0 8FB9001C */  lw         $t9, 0x1c($sp)
/* AE4D4 800AD8D4 13200003 */  beqz       $t9, .L800AD8E4
/* AE4D8 800AD8D8 00000000 */   nop
/* AE4DC 800AD8DC 10000089 */  b          .L800ADB04
/* AE4E0 800AD8E0 8FA2001C */   lw        $v0, 0x1c($sp)
.L800AD8E4:
/* AE4E4 800AD8E4 8FA80068 */  lw         $t0, 0x68($sp)
/* AE4E8 800AD8E8 24060001 */  addiu      $a2, $zero, 1
/* AE4EC 800AD8EC 27A70040 */  addiu      $a3, $sp, 0x40
/* AE4F0 800AD8F0 8D040004 */  lw         $a0, 4($t0)
/* AE4F4 800AD8F4 0C02E3D8 */  jal        func_800B8F60
/* AE4F8 800AD8F8 8D050008 */   lw        $a1, 8($t0)
/* AE4FC 800AD8FC AFA2001C */  sw         $v0, 0x1c($sp)
/* AE500 800AD900 8FA9001C */  lw         $t1, 0x1c($sp)
/* AE504 800AD904 11200003 */  beqz       $t1, .L800AD914
/* AE508 800AD908 00000000 */   nop
/* AE50C 800AD90C 1000007D */  b          .L800ADB04
/* AE510 800AD910 8FA2001C */   lw        $v0, 0x1c($sp)
.L800AD914:
/* AE514 800AD914 27A40040 */  addiu      $a0, $sp, 0x40
/* AE518 800AD918 27A50062 */  addiu      $a1, $sp, 0x62
/* AE51C 800AD91C 0C028E86 */  jal        func_800A3A18
/* AE520 800AD920 27A60060 */   addiu     $a2, $sp, 0x60
/* AE524 800AD924 27AA0040 */  addiu      $t2, $sp, 0x40
/* AE528 800AD928 AFAA0018 */  sw         $t2, 0x18($sp)
/* AE52C 800AD92C 8FAB0018 */  lw         $t3, 0x18($sp)
/* AE530 800AD930 97AD0062 */  lhu        $t5, 0x62($sp)
/* AE534 800AD934 956C001C */  lhu        $t4, 0x1c($t3)
/* AE538 800AD938 158D0005 */  bne        $t4, $t5, .L800AD950
/* AE53C 800AD93C 00000000 */   nop
/* AE540 800AD940 956E001E */  lhu        $t6, 0x1e($t3)
/* AE544 800AD944 97AF0060 */  lhu        $t7, 0x60($sp)
/* AE548 800AD948 11CF001B */  beq        $t6, $t7, .L800AD9B8
/* AE54C 800AD94C 00000000 */   nop
.L800AD950:
/* AE550 800AD950 8FA40068 */  lw         $a0, 0x68($sp)
/* AE554 800AD954 0C028FB5 */  jal        func_800A3ED4
/* AE558 800AD958 8FA50018 */   lw        $a1, 0x18($sp)
/* AE55C 800AD95C AFA2001C */  sw         $v0, 0x1c($sp)
/* AE560 800AD960 8FB8001C */  lw         $t8, 0x1c($sp)
/* AE564 800AD964 2401000A */  addiu      $at, $zero, 0xa
/* AE568 800AD968 1701000E */  bne        $t8, $at, .L800AD9A4
/* AE56C 800AD96C 00000000 */   nop
/* AE570 800AD970 8FA40068 */  lw         $a0, 0x68($sp)
/* AE574 800AD974 8FA50018 */  lw         $a1, 0x18($sp)
/* AE578 800AD978 0C028EA4 */  jal        func_800A3A90
/* AE57C 800AD97C 27A60020 */   addiu     $a2, $sp, 0x20
/* AE580 800AD980 AFA2001C */  sw         $v0, 0x1c($sp)
/* AE584 800AD984 8FB9001C */  lw         $t9, 0x1c($sp)
/* AE588 800AD988 13200003 */  beqz       $t9, .L800AD998
/* AE58C 800AD98C 00000000 */   nop
/* AE590 800AD990 1000005C */  b          .L800ADB04
/* AE594 800AD994 8FA2001C */   lw        $v0, 0x1c($sp)
.L800AD998:
/* AE598 800AD998 27A80020 */  addiu      $t0, $sp, 0x20
/* AE59C 800AD99C 10000006 */  b          .L800AD9B8
/* AE5A0 800AD9A0 AFA80018 */   sw        $t0, 0x18($sp)
.L800AD9A4:
/* AE5A4 800AD9A4 8FA9001C */  lw         $t1, 0x1c($sp)
/* AE5A8 800AD9A8 11200003 */  beqz       $t1, .L800AD9B8
/* AE5AC 800AD9AC 00000000 */   nop
/* AE5B0 800AD9B0 10000054 */  b          .L800ADB04
/* AE5B4 800AD9B4 8FA2001C */   lw        $v0, 0x1c($sp)
.L800AD9B8:
/* AE5B8 800AD9B8 8FAA0018 */  lw         $t2, 0x18($sp)
/* AE5BC 800AD9BC 954C0018 */  lhu        $t4, 0x18($t2)
/* AE5C0 800AD9C0 318D0001 */  andi       $t5, $t4, 1
/* AE5C4 800AD9C4 15A00014 */  bnez       $t5, .L800ADA18
/* AE5C8 800AD9C8 00000000 */   nop
/* AE5CC 800AD9CC 8FA40068 */  lw         $a0, 0x68($sp)
/* AE5D0 800AD9D0 8FA50018 */  lw         $a1, 0x18($sp)
/* AE5D4 800AD9D4 0C028EA4 */  jal        func_800A3A90
/* AE5D8 800AD9D8 27A60020 */   addiu     $a2, $sp, 0x20
/* AE5DC 800AD9DC AFA2001C */  sw         $v0, 0x1c($sp)
/* AE5E0 800AD9E0 8FAB001C */  lw         $t3, 0x1c($sp)
/* AE5E4 800AD9E4 11600003 */  beqz       $t3, .L800AD9F4
/* AE5E8 800AD9E8 00000000 */   nop
/* AE5EC 800AD9EC 10000045 */  b          .L800ADB04
/* AE5F0 800AD9F0 8FA2001C */   lw        $v0, 0x1c($sp)
.L800AD9F4:
/* AE5F4 800AD9F4 27AE0020 */  addiu      $t6, $sp, 0x20
/* AE5F8 800AD9F8 AFAE0018 */  sw         $t6, 0x18($sp)
/* AE5FC 800AD9FC 8FAF0018 */  lw         $t7, 0x18($sp)
/* AE600 800ADA00 95F80018 */  lhu        $t8, 0x18($t7)
/* AE604 800ADA04 33190001 */  andi       $t9, $t8, 1
/* AE608 800ADA08 17200003 */  bnez       $t9, .L800ADA18
/* AE60C 800ADA0C 00000000 */   nop
/* AE610 800ADA10 1000003C */  b          .L800ADB04
/* AE614 800ADA14 2402000B */   addiu     $v0, $zero, 0xb
.L800ADA18:
/* AE618 800ADA18 AFA00064 */  sw         $zero, 0x64($sp)
.L800ADA1C:
/* AE61C 800ADA1C 8FA80018 */  lw         $t0, 0x18($sp)
/* AE620 800ADA20 8FA90064 */  lw         $t1, 0x64($sp)
/* AE624 800ADA24 8FAD0068 */  lw         $t5, 0x68($sp)
/* AE628 800ADA28 01095021 */  addu       $t2, $t0, $t1
/* AE62C 800ADA2C 914C0000 */  lbu        $t4, ($t2)
/* AE630 800ADA30 01A95821 */  addu       $t3, $t5, $t1
/* AE634 800ADA34 A16C000C */  sb         $t4, 0xc($t3)
/* AE638 800ADA38 8FAE0064 */  lw         $t6, 0x64($sp)
/* AE63C 800ADA3C 25CF0001 */  addiu      $t7, $t6, 1
/* AE640 800ADA40 29E10020 */  slti       $at, $t7, 0x20
/* AE644 800ADA44 1420FFF5 */  bnez       $at, .L800ADA1C
/* AE648 800ADA48 AFAF0064 */   sw        $t7, 0x64($sp)
/* AE64C 800ADA4C 8FB80018 */  lw         $t8, 0x18($sp)
/* AE650 800ADA50 8FA80068 */  lw         $t0, 0x68($sp)
/* AE654 800ADA54 9319001B */  lbu        $t9, 0x1b($t8)
/* AE658 800ADA58 AD19004C */  sw         $t9, 0x4c($t0)
/* AE65C 800ADA5C 8FAA0018 */  lw         $t2, 0x18($sp)
/* AE660 800ADA60 8FA90068 */  lw         $t1, 0x68($sp)
/* AE664 800ADA64 914D001A */  lbu        $t5, 0x1a($t2)
/* AE668 800ADA68 A12D0064 */  sb         $t5, 0x64($t1)
/* AE66C 800ADA6C 8FAC0068 */  lw         $t4, 0x68($sp)
/* AE670 800ADA70 918B0064 */  lbu        $t3, 0x64($t4)
/* AE674 800ADA74 000B7040 */  sll        $t6, $t3, 1
/* AE678 800ADA78 25CF0003 */  addiu      $t7, $t6, 3
/* AE67C 800ADA7C AD8F0060 */  sw         $t7, 0x60($t4)
/* AE680 800ADA80 8FB90068 */  lw         $t9, 0x68($sp)
/* AE684 800ADA84 24180010 */  addiu      $t8, $zero, 0x10
/* AE688 800ADA88 AF380050 */  sw         $t8, 0x50($t9)
/* AE68C 800ADA8C 8FAA0068 */  lw         $t2, 0x68($sp)
/* AE690 800ADA90 24080008 */  addiu      $t0, $zero, 8
/* AE694 800ADA94 AD480054 */  sw         $t0, 0x54($t2)
/* AE698 800ADA98 8FAD0068 */  lw         $t5, 0x68($sp)
/* AE69C 800ADA9C 91A90064 */  lbu        $t1, 0x64($t5)
/* AE6A0 800ADAA0 000958C0 */  sll        $t3, $t1, 3
/* AE6A4 800ADAA4 256E0008 */  addiu      $t6, $t3, 8
/* AE6A8 800ADAA8 ADAE0058 */  sw         $t6, 0x58($t5)
/* AE6AC 800ADAAC 8FAF0068 */  lw         $t7, 0x68($sp)
/* AE6B0 800ADAB0 91F80064 */  lbu        $t8, 0x64($t7)
/* AE6B4 800ADAB4 8DEC0058 */  lw         $t4, 0x58($t7)
/* AE6B8 800ADAB8 0018C8C0 */  sll        $t9, $t8, 3
/* AE6BC 800ADABC 01994021 */  addu       $t0, $t4, $t9
/* AE6C0 800ADAC0 ADE8005C */  sw         $t0, 0x5c($t7)
/* AE6C4 800ADAC4 8FAA0068 */  lw         $t2, 0x68($sp)
/* AE6C8 800ADAC8 24060007 */  addiu      $a2, $zero, 7
/* AE6CC 800ADACC 8D440004 */  lw         $a0, 4($t2)
/* AE6D0 800ADAD0 8D450008 */  lw         $a1, 8($t2)
/* AE6D4 800ADAD4 0C02E3D8 */  jal        func_800B8F60
/* AE6D8 800ADAD8 2547002C */   addiu     $a3, $t2, 0x2c
/* AE6DC 800ADADC AFA2001C */  sw         $v0, 0x1c($sp)
/* AE6E0 800ADAE0 8FA9001C */  lw         $t1, 0x1c($sp)
/* AE6E4 800ADAE4 11200003 */  beqz       $t1, .L800ADAF4
/* AE6E8 800ADAE8 00000000 */   nop
/* AE6EC 800ADAEC 10000005 */  b          .L800ADB04
/* AE6F0 800ADAF0 8FA2001C */   lw        $v0, 0x1c($sp)
.L800ADAF4:
/* AE6F4 800ADAF4 10000003 */  b          .L800ADB04
/* AE6F8 800ADAF8 00001025 */   or        $v0, $zero, $zero
/* AE6FC 800ADAFC 10000001 */  b          .L800ADB04
/* AE700 800ADB00 00000000 */   nop
.L800ADB04:
/* AE704 800ADB04 8FBF0014 */  lw         $ra, 0x14($sp)
/* AE708 800ADB08 27BD0068 */  addiu      $sp, $sp, 0x68
/* AE70C 800ADB0C 03E00008 */  jr         $ra
/* AE710 800ADB10 00000000 */   nop
/* AE714 800ADB14 00000000 */  nop
/* AE718 800ADB18 00000000 */  nop
/* AE71C 800ADB1C 00000000 */  nop

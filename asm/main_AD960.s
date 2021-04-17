.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ACD60
/* AD960 800ACD60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AD964 800ACD64 AFBF0014 */  sw         $ra, 0x14($sp)
/* AD968 800ACD68 240E0002 */  addiu      $t6, $zero, 2
/* AD96C 800ACD6C 3C01801A */  lui        $at, %hi(D_801A39CC)
/* AD970 800ACD70 A02E39CC */  sb         $t6, %lo(D_801A39CC)($at)
/* AD974 800ACD74 3C0FA500 */  lui        $t7, 0xa500
/* AD978 800ACD78 3C01801A */  lui        $at, %hi(D_801A39D4)
/* AD97C 800ACD7C AC2F39D4 */  sw         $t7, %lo(D_801A39D4)($at)
/* AD980 800ACD80 24180003 */  addiu      $t8, $zero, 3
/* AD984 800ACD84 3C01801A */  lui        $at, %hi(D_801A39CD)
/* AD988 800ACD88 A03839CD */  sb         $t8, %lo(D_801A39CD)($at)
/* AD98C 800ACD8C 24190006 */  addiu      $t9, $zero, 6
/* AD990 800ACD90 3C01801A */  lui        $at, %hi(D_801A39D0)
/* AD994 800ACD94 A03939D0 */  sb         $t9, %lo(D_801A39D0)($at)
/* AD998 800ACD98 24080006 */  addiu      $t0, $zero, 6
/* AD99C 800ACD9C 3C01801A */  lui        $at, %hi(D_801A39CE)
/* AD9A0 800ACDA0 A02839CE */  sb         $t0, %lo(D_801A39CE)($at)
/* AD9A4 800ACDA4 24090002 */  addiu      $t1, $zero, 2
/* AD9A8 800ACDA8 3C01801A */  lui        $at, %hi(D_801A39CF)
/* AD9AC 800ACDAC A02939CF */  sb         $t1, %lo(D_801A39CF)($at)
/* AD9B0 800ACDB0 240A0001 */  addiu      $t2, $zero, 1
/* AD9B4 800ACDB4 3C01801A */  lui        $at, %hi(D_801A39D1)
/* AD9B8 800ACDB8 A02A39D1 */  sb         $t2, %lo(D_801A39D1)($at)
/* AD9BC 800ACDBC 3C0B801A */  lui        $t3, %hi(D_801A39CD)
/* AD9C0 800ACDC0 916B39CD */  lbu        $t3, %lo(D_801A39CD)($t3)
/* AD9C4 800ACDC4 3C0CA460 */  lui        $t4, %hi(D_A4600024)
/* AD9C8 800ACDC8 AD8B0024 */  sw         $t3, %lo(D_A4600024)($t4)
/* AD9CC 800ACDCC 3C0D801A */  lui        $t5, %hi(D_801A39D0)
/* AD9D0 800ACDD0 91AD39D0 */  lbu        $t5, %lo(D_801A39D0)($t5)
/* AD9D4 800ACDD4 3C0EA460 */  lui        $t6, %hi(D_A4600028)
/* AD9D8 800ACDD8 ADCD0028 */  sw         $t5, %lo(D_A4600028)($t6)
/* AD9DC 800ACDDC 3C0F801A */  lui        $t7, %hi(D_801A39CE)
/* AD9E0 800ACDE0 91EF39CE */  lbu        $t7, %lo(D_801A39CE)($t7)
/* AD9E4 800ACDE4 3C18A460 */  lui        $t8, %hi(D_A460002C)
/* AD9E8 800ACDE8 AF0F002C */  sw         $t7, %lo(D_A460002C)($t8)
/* AD9EC 800ACDEC 3C19801A */  lui        $t9, %hi(D_801A39CF)
/* AD9F0 800ACDF0 933939CF */  lbu        $t9, %lo(D_801A39CF)($t9)
/* AD9F4 800ACDF4 3C08A460 */  lui        $t0, %hi(D_A4600030)
/* AD9F8 800ACDF8 AD190030 */  sw         $t9, %lo(D_A4600030)($t0)
/* AD9FC 800ACDFC 3C01801A */  lui        $at, %hi(D_801A39D8)
/* ADA00 800ACE00 AC2039D8 */  sw         $zero, %lo(D_801A39D8)($at)
/* ADA04 800ACE04 3C04801A */  lui        $a0, %hi(D_801A39C8)
/* ADA08 800ACE08 248439C8 */  addiu      $a0, $a0, %lo(D_801A39C8)
/* ADA0C 800ACE0C 24840014 */  addiu      $a0, $a0, 0x14
/* ADA10 800ACE10 0C026888 */  jal        func_8009A220
/* ADA14 800ACE14 24050060 */   addiu     $a1, $zero, 0x60
/* ADA18 800ACE18 0C02C0C8 */  jal        func_800B0320
/* ADA1C 800ACE1C 00000000 */   nop
/* ADA20 800ACE20 AFA2001C */  sw         $v0, 0x1c($sp)
/* ADA24 800ACE24 3C09800D */  lui        $t1, %hi(D_800CD31C)
/* ADA28 800ACE28 8D29D31C */  lw         $t1, %lo(D_800CD31C)($t1)
/* ADA2C 800ACE2C 3C01801A */  lui        $at, %hi(D_801A39C8)
/* ADA30 800ACE30 AC2939C8 */  sw         $t1, %lo(D_801A39C8)($at)
/* ADA34 800ACE34 3C0A801A */  lui        $t2, %hi(D_801A39C8)
/* ADA38 800ACE38 254A39C8 */  addiu      $t2, $t2, %lo(D_801A39C8)
/* ADA3C 800ACE3C 3C01800D */  lui        $at, %hi(D_800CD31C)
/* ADA40 800ACE40 AC2AD31C */  sw         $t2, %lo(D_800CD31C)($at)
/* ADA44 800ACE44 3C0B801A */  lui        $t3, %hi(D_801A39C8)
/* ADA48 800ACE48 256B39C8 */  addiu      $t3, $t3, %lo(D_801A39C8)
/* ADA4C 800ACE4C 3C01801A */  lui        $at, %hi(D_801A39C0)
/* ADA50 800ACE50 AC2B39C0 */  sw         $t3, %lo(D_801A39C0)($at)
/* ADA54 800ACE54 0C02C0D0 */  jal        func_800B0340
/* ADA58 800ACE58 8FA4001C */   lw        $a0, 0x1c($sp)
/* ADA5C 800ACE5C 3C02801A */  lui        $v0, %hi(D_801A39C8)
/* ADA60 800ACE60 10000003 */  b          .L800ACE70
/* ADA64 800ACE64 244239C8 */   addiu     $v0, $v0, %lo(D_801A39C8)
/* ADA68 800ACE68 10000001 */  b          .L800ACE70
/* ADA6C 800ACE6C 00000000 */   nop
.L800ACE70:
/* ADA70 800ACE70 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADA74 800ACE74 27BD0020 */  addiu      $sp, $sp, 0x20
/* ADA78 800ACE78 03E00008 */  jr         $ra
/* ADA7C 800ACE7C 00000000 */   nop

glabel func_800ACE80
/* ADA80 800ACE80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* ADA84 800ACE84 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADA88 800ACE88 AFA40030 */  sw         $a0, 0x30($sp)
/* ADA8C 800ACE8C AFA50034 */  sw         $a1, 0x34($sp)
/* ADA90 800ACE90 8FAE0030 */  lw         $t6, 0x30($sp)
/* ADA94 800ACE94 8DCF0040 */  lw         $t7, 0x40($t6)
/* ADA98 800ACE98 AFAF001C */  sw         $t7, 0x1c($sp)
/* ADA9C 800ACE9C 8FB80030 */  lw         $t8, 0x30($sp)
/* ADAA0 800ACEA0 8F19003C */  lw         $t9, 0x3c($t8)
/* ADAA4 800ACEA4 8F080044 */  lw         $t0, 0x44($t8)
/* ADAA8 800ACEA8 0328082A */  slt        $at, $t9, $t0
/* ADAAC 800ACEAC 10200003 */  beqz       $at, .L800ACEBC
/* ADAB0 800ACEB0 00000000 */   nop
/* ADAB4 800ACEB4 0721000A */  bgez       $t9, .L800ACEE0
/* ADAB8 800ACEB8 00000000 */   nop
.L800ACEBC:
/* ADABC 800ACEBC 8FA90030 */  lw         $t1, 0x30($sp)
/* ADAC0 800ACEC0 24040070 */  addiu      $a0, $zero, 0x70
/* ADAC4 800ACEC4 24050002 */  addiu      $a1, $zero, 2
/* ADAC8 800ACEC8 8D270044 */  lw         $a3, 0x44($t1)
/* ADACC 800ACECC 8D26003C */  lw         $a2, 0x3c($t1)
/* ADAD0 800ACED0 0C02B5EC */  jal        func_800AD7B0
/* ADAD4 800ACED4 24E7FFFF */   addiu     $a3, $a3, -1
/* ADAD8 800ACED8 10000014 */  b          .L800ACF2C
/* ADADC 800ACEDC 00000000 */   nop
.L800ACEE0:
/* ADAE0 800ACEE0 240A0003 */  addiu      $t2, $zero, 3
/* ADAE4 800ACEE4 A7AA0020 */  sh         $t2, 0x20($sp)
/* ADAE8 800ACEE8 8FAB0030 */  lw         $t3, 0x30($sp)
/* ADAEC 800ACEEC 8FAE001C */  lw         $t6, 0x1c($sp)
/* ADAF0 800ACEF0 8D6C003C */  lw         $t4, 0x3c($t3)
/* ADAF4 800ACEF4 000C6880 */  sll        $t5, $t4, 2
/* ADAF8 800ACEF8 01AC6823 */  subu       $t5, $t5, $t4
/* ADAFC 800ACEFC 000D6900 */  sll        $t5, $t5, 4
/* ADB00 800ACF00 01AE7821 */  addu       $t7, $t5, $t6
/* ADB04 800ACF04 AFAF0024 */  sw         $t7, 0x24($sp)
/* ADB08 800ACF08 87B80036 */  lh         $t8, 0x36($sp)
/* ADB0C 800ACF0C A7B80028 */  sh         $t8, 0x28($sp)
/* ADB10 800ACF10 8FA40030 */  lw         $a0, 0x30($sp)
/* ADB14 800ACF14 27A50020 */  addiu      $a1, $sp, 0x20
/* ADB18 800ACF18 00003025 */  or         $a2, $zero, $zero
/* ADB1C 800ACF1C 0C026E68 */  jal        func_8009B9A0
/* ADB20 800ACF20 24840014 */   addiu     $a0, $a0, 0x14
/* ADB24 800ACF24 10000001 */  b          .L800ACF2C
/* ADB28 800ACF28 00000000 */   nop
.L800ACF2C:
/* ADB2C 800ACF2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADB30 800ACF30 27BD0030 */  addiu      $sp, $sp, 0x30
/* ADB34 800ACF34 03E00008 */  jr         $ra
/* ADB38 800ACF38 00000000 */   nop
/* ADB3C 800ACF3C 00000000 */  nop

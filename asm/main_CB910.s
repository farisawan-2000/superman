.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CAD10
/* CB910 800CAD10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CB914 800CAD14 24010004 */  addiu      $at, $zero, 4
/* CB918 800CAD18 AFBF0014 */  sw         $ra, 0x14($sp)
/* CB91C 800CAD1C 10A10055 */  beq        $a1, $at, .L800CAE74
/* CB920 800CAD20 00803825 */   or        $a3, $a0, $zero
/* CB924 800CAD24 24010005 */  addiu      $at, $zero, 5
/* CB928 800CAD28 54A1006B */  bnel       $a1, $at, .L800CAED8
/* CB92C 800CAD2C 8FBF0014 */   lw        $ra, 0x14($sp)
/* CB930 800CAD30 AC860028 */  sw         $a2, 0x28($a0)
/* CB934 800CAD34 8CCE0000 */  lw         $t6, ($a2)
/* CB938 800CAD38 AC800038 */  sw         $zero, 0x38($a0)
/* CB93C 800CAD3C 3C0F800D */  lui        $t7, 0x800d
/* CB940 800CAD40 AC8E0044 */  sw         $t6, 0x44($a0)
/* CB944 800CAD44 90C20008 */  lbu        $v0, 8($a2)
/* CB948 800CAD48 50400007 */  beql       $v0, $zero, .L800CAD68
/* CB94C 800CAD4C 8CE20028 */   lw        $v0, 0x28($a3)
/* CB950 800CAD50 24040001 */  addiu      $a0, $zero, 1
/* CB954 800CAD54 10440034 */  beq        $v0, $a0, .L800CAE28
/* CB958 800CAD58 3C08800D */   lui       $t0, 0x800d
/* CB95C 800CAD5C 1000005E */  b          .L800CAED8
/* CB960 800CAD60 8FBF0014 */   lw        $ra, 0x14($sp)
/* CB964 800CAD64 8CE20028 */  lw         $v0, 0x28($a3)
.L800CAD68:
/* CB968 800CAD68 25EFB3BC */  addiu      $t7, $t7, -0x4c44
/* CB96C 800CAD6C ACEF0004 */  sw         $t7, 4($a3)
/* CB970 800CAD70 8C580004 */  lw         $t8, 4($v0)
/* CB974 800CAD74 24050009 */  addiu      $a1, $zero, 9
/* CB978 800CAD78 0305001A */  div        $zero, $t8, $a1
/* CB97C 800CAD7C 0000C812 */  mflo       $t9
/* CB980 800CAD80 14A00002 */  bnez       $a1, .L800CAD8C
/* CB984 800CAD84 00000000 */   nop
/* CB988 800CAD88 0007000D */  break      7
.L800CAD8C:
/* CB98C 800CAD8C 2401FFFF */   addiu     $at, $zero, -1
/* CB990 800CAD90 14A10004 */  bne        $a1, $at, .L800CADA4
/* CB994 800CAD94 3C018000 */   lui       $at, 0x8000
/* CB998 800CAD98 17010002 */  bne        $t8, $at, .L800CADA4
/* CB99C 800CAD9C 00000000 */   nop
/* CB9A0 800CADA0 0006000D */  break      6
.L800CADA4:
/* CB9A4 800CADA4 03250019 */   multu     $t9, $a1
/* CB9A8 800CADA8 00004012 */  mflo       $t0
/* CB9AC 800CADAC AC480004 */  sw         $t0, 4($v0)
/* CB9B0 800CADB0 8CE20028 */  lw         $v0, 0x28($a3)
/* CB9B4 800CADB4 8C440010 */  lw         $a0, 0x10($v0)
/* CB9B8 800CADB8 8C890000 */  lw         $t1, ($a0)
/* CB9BC 800CADBC 8C8B0004 */  lw         $t3, 4($a0)
/* CB9C0 800CADC0 00095100 */  sll        $t2, $t1, 4
/* CB9C4 800CADC4 014B0019 */  multu      $t2, $t3
/* CB9C8 800CADC8 00006012 */  mflo       $t4
/* CB9CC 800CADCC ACEC002C */  sw         $t4, 0x2c($a3)
/* CB9D0 800CADD0 8C43000C */  lw         $v1, 0xc($v0)
/* CB9D4 800CADD4 50600011 */  beql       $v1, $zero, .L800CAE1C
/* CB9D8 800CADD8 ACE00024 */   sw        $zero, 0x24($a3)
/* CB9DC 800CADDC 8C6D0000 */  lw         $t5, ($v1)
/* CB9E0 800CADE0 8CE50018 */  lw         $a1, 0x18($a3)
/* CB9E4 800CADE4 24060020 */  addiu      $a2, $zero, 0x20
/* CB9E8 800CADE8 ACED001C */  sw         $t5, 0x1c($a3)
/* CB9EC 800CADEC 8C4E000C */  lw         $t6, 0xc($v0)
/* CB9F0 800CADF0 8DCF0004 */  lw         $t7, 4($t6)
/* CB9F4 800CADF4 ACEF0020 */  sw         $t7, 0x20($a3)
/* CB9F8 800CADF8 8C58000C */  lw         $t8, 0xc($v0)
/* CB9FC 800CADFC 8F190008 */  lw         $t9, 8($t8)
/* CBA00 800CAE00 ACF90024 */  sw         $t9, 0x24($a3)
/* CBA04 800CAE04 8C44000C */  lw         $a0, 0xc($v0)
/* CBA08 800CAE08 0C033B50 */  jal        func_800CED40
/* CBA0C 800CAE0C 2484000C */   addiu     $a0, $a0, 0xc
/* CBA10 800CAE10 10000031 */  b          .L800CAED8
/* CBA14 800CAE14 8FBF0014 */   lw        $ra, 0x14($sp)
/* CBA18 800CAE18 ACE00024 */  sw         $zero, 0x24($a3)
.L800CAE1C:
/* CBA1C 800CAE1C ACE00020 */  sw         $zero, 0x20($a3)
/* CBA20 800CAE20 1000002C */  b          .L800CAED4
/* CBA24 800CAE24 ACE0001C */   sw        $zero, 0x1c($a3)
.L800CAE28:
/* CBA28 800CAE28 8CE20028 */  lw         $v0, 0x28($a3)
/* CBA2C 800CAE2C 2508AEE4 */  addiu      $t0, $t0, -0x511c
/* CBA30 800CAE30 ACE80004 */  sw         $t0, 4($a3)
/* CBA34 800CAE34 8C43000C */  lw         $v1, 0xc($v0)
/* CBA38 800CAE38 5060000B */  beql       $v1, $zero, .L800CAE68
/* CBA3C 800CAE3C ACE00024 */   sw        $zero, 0x24($a3)
/* CBA40 800CAE40 8C690000 */  lw         $t1, ($v1)
/* CBA44 800CAE44 ACE9001C */  sw         $t1, 0x1c($a3)
/* CBA48 800CAE48 8C4A000C */  lw         $t2, 0xc($v0)
/* CBA4C 800CAE4C 8D4B0004 */  lw         $t3, 4($t2)
/* CBA50 800CAE50 ACEB0020 */  sw         $t3, 0x20($a3)
/* CBA54 800CAE54 8C4C000C */  lw         $t4, 0xc($v0)
/* CBA58 800CAE58 8D8D0008 */  lw         $t5, 8($t4)
/* CBA5C 800CAE5C 1000001D */  b          .L800CAED4
/* CBA60 800CAE60 ACED0024 */   sw        $t5, 0x24($a3)
/* CBA64 800CAE64 ACE00024 */  sw         $zero, 0x24($a3)
.L800CAE68:
/* CBA68 800CAE68 ACE00020 */  sw         $zero, 0x20($a3)
/* CBA6C 800CAE6C 10000019 */  b          .L800CAED4
/* CBA70 800CAE70 ACE0001C */   sw        $zero, 0x1c($a3)
.L800CAE74:
/* CBA74 800CAE74 8CE20028 */  lw         $v0, 0x28($a3)
/* CBA78 800CAE78 24040001 */  addiu      $a0, $zero, 1
/* CBA7C 800CAE7C ACE0003C */  sw         $zero, 0x3c($a3)
/* CBA80 800CAE80 ACE40040 */  sw         $a0, 0x40($a3)
/* CBA84 800CAE84 10400013 */  beqz       $v0, .L800CAED4
/* CBA88 800CAE88 ACE00038 */   sw        $zero, 0x38($a3)
/* CBA8C 800CAE8C 8C4E0000 */  lw         $t6, ($v0)
/* CBA90 800CAE90 ACEE0044 */  sw         $t6, 0x44($a3)
/* CBA94 800CAE94 90430008 */  lbu        $v1, 8($v0)
/* CBA98 800CAE98 14600007 */  bnez       $v1, .L800CAEB8
/* CBA9C 800CAE9C 00000000 */   nop
/* CBAA0 800CAEA0 8C43000C */  lw         $v1, 0xc($v0)
/* CBAA4 800CAEA4 5060000C */  beql       $v1, $zero, .L800CAED8
/* CBAA8 800CAEA8 8FBF0014 */   lw        $ra, 0x14($sp)
/* CBAAC 800CAEAC 8C6F0008 */  lw         $t7, 8($v1)
/* CBAB0 800CAEB0 10000008 */  b          .L800CAED4
/* CBAB4 800CAEB4 ACEF0024 */   sw        $t7, 0x24($a3)
.L800CAEB8:
/* CBAB8 800CAEB8 54830007 */  bnel       $a0, $v1, .L800CAED8
/* CBABC 800CAEBC 8FBF0014 */   lw        $ra, 0x14($sp)
/* CBAC0 800CAEC0 8C43000C */  lw         $v1, 0xc($v0)
/* CBAC4 800CAEC4 50600004 */  beql       $v1, $zero, .L800CAED8
/* CBAC8 800CAEC8 8FBF0014 */   lw        $ra, 0x14($sp)
/* CBACC 800CAECC 8C780008 */  lw         $t8, 8($v1)
/* CBAD0 800CAED0 ACF80024 */  sw         $t8, 0x24($a3)
.L800CAED4:
/* CBAD4 800CAED4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800CAED8:
/* CBAD8 800CAED8 27BD0018 */  addiu      $sp, $sp, 0x18
/* CBADC 800CAEDC 03E00008 */  jr         $ra
/* CBAE0 800CAEE0 00000000 */   nop

glabel func_800CAEE4
/* CBAE4 800CAEE4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* CBAE8 800CAEE8 8FA80060 */  lw         $t0, 0x60($sp)
/* CBAEC 800CAEEC AFB30020 */  sw         $s3, 0x20($sp)
/* CBAF0 800CAEF0 AFB00014 */  sw         $s0, 0x14($sp)
/* CBAF4 800CAEF4 00808025 */  or         $s0, $a0, $zero
/* CBAF8 800CAEF8 00C09825 */  or         $s3, $a2, $zero
/* CBAFC 800CAEFC AFBF0024 */  sw         $ra, 0x24($sp)
/* CBB00 800CAF00 AFB2001C */  sw         $s2, 0x1c($sp)
/* CBB04 800CAF04 AFB10018 */  sw         $s1, 0x18($sp)
/* CBB08 800CAF08 AFA7005C */  sw         $a3, 0x5c($sp)
/* CBB0C 800CAF0C 00A05025 */  or         $t2, $a1, $zero
/* CBB10 800CAF10 14C00003 */  bnez       $a2, .L800CAF20
/* CBB14 800CAF14 01004825 */   or        $t1, $t0, $zero
/* CBB18 800CAF18 100000D6 */  b          .L800CB274
/* CBB1C 800CAF1C 01001025 */   or        $v0, $t0, $zero
.L800CAF20:
/* CBB20 800CAF20 8E020038 */  lw         $v0, 0x38($s0)
/* CBB24 800CAF24 8E030020 */  lw         $v1, 0x20($s0)
/* CBB28 800CAF28 00537021 */  addu       $t6, $v0, $s3
/* CBB2C 800CAF2C 006E082B */  sltu       $at, $v1, $t6
/* CBB30 800CAF30 50200084 */  beql       $at, $zero, .L800CB144
/* CBB34 800CAF34 8E020028 */   lw        $v0, 0x28($s0)
/* CBB38 800CAF38 8E0F0024 */  lw         $t7, 0x24($s0)
/* CBB3C 800CAF3C 00629023 */  subu       $s2, $v1, $v0
/* CBB40 800CAF40 51E00080 */  beql       $t7, $zero, .L800CB144
/* CBB44 800CAF44 8E020028 */   lw        $v0, 0x28($s0)
/* CBB48 800CAF48 1A40001E */  blez       $s2, .L800CAFC4
/* CBB4C 800CAF4C 00128840 */   sll       $s1, $s2, 1
/* CBB50 800CAF50 8E040044 */  lw         $a0, 0x44($s0)
/* CBB54 800CAF54 8E060034 */  lw         $a2, 0x34($s0)
/* CBB58 800CAF58 AFAA0054 */  sw         $t2, 0x54($sp)
/* CBB5C 800CAF5C 8E190030 */  lw         $t9, 0x30($s0)
/* CBB60 800CAF60 02202825 */  or         $a1, $s1, $zero
/* CBB64 800CAF64 0320F809 */  jalr       $t9
/* CBB68 800CAF68 00000000 */   nop
/* CBB6C 800CAF6C 8FAA0054 */  lw         $t2, 0x54($sp)
/* CBB70 800CAF70 30460007 */  andi       $a2, $v0, 7
/* CBB74 800CAF74 8FA80060 */  lw         $t0, 0x60($sp)
/* CBB78 800CAF78 85580000 */  lh         $t8, ($t2)
/* CBB7C 800CAF7C 02263821 */  addu       $a3, $s1, $a2
/* CBB80 800CAF80 30ED0007 */  andi       $t5, $a3, 7
/* CBB84 800CAF84 00ED7023 */  subu       $t6, $a3, $t5
/* CBB88 800CAF88 3C010800 */  lui        $at, 0x800
/* CBB8C 800CAF8C 330BFFFF */  andi       $t3, $t8, 0xffff
/* CBB90 800CAF90 01616025 */  or         $t4, $t3, $at
/* CBB94 800CAF94 25CF0008 */  addiu      $t7, $t6, 8
/* CBB98 800CAF98 25090008 */  addiu      $t1, $t0, 8
/* CBB9C 800CAF9C 31F9FFFF */  andi       $t9, $t7, 0xffff
/* CBBA0 800CAFA0 01202025 */  or         $a0, $t1, $zero
/* CBBA4 800CAFA4 00465823 */  subu       $t3, $v0, $a2
/* CBBA8 800CAFA8 3C180400 */  lui        $t8, 0x400
/* CBBAC 800CAFAC AD190004 */  sw         $t9, 4($t0)
/* CBBB0 800CAFB0 AD0C0000 */  sw         $t4, ($t0)
/* CBBB4 800CAFB4 AC8B0004 */  sw         $t3, 4($a0)
/* CBBB8 800CAFB8 AC980000 */  sw         $t8, ($a0)
/* CBBBC 800CAFBC 10000002 */  b          .L800CAFC8
/* CBBC0 800CAFC0 25290008 */   addiu     $t1, $t1, 8
.L800CAFC4:
/* CBBC4 800CAFC4 00003025 */  or         $a2, $zero, $zero
.L800CAFC8:
/* CBBC8 800CAFC8 854C0000 */  lh         $t4, ($t2)
/* CBBCC 800CAFCC 0253082A */  slt        $at, $s2, $s3
/* CBBD0 800CAFD0 01866821 */  addu       $t5, $t4, $a2
/* CBBD4 800CAFD4 A54D0000 */  sh         $t5, ($t2)
/* CBBD8 800CAFD8 8E0E0028 */  lw         $t6, 0x28($s0)
/* CBBDC 800CAFDC 8E02001C */  lw         $v0, 0x1c($s0)
/* CBBE0 800CAFE0 8DCF0000 */  lw         $t7, ($t6)
/* CBBE4 800CAFE4 0002C840 */  sll        $t9, $v0, 1
/* CBBE8 800CAFE8 AE020038 */  sw         $v0, 0x38($s0)
/* CBBEC 800CAFEC 01F9C021 */  addu       $t8, $t7, $t9
/* CBBF0 800CAFF0 AE180044 */  sw         $t8, 0x44($s0)
/* CBBF4 800CAFF4 10200049 */  beqz       $at, .L800CB11C
/* CBBF8 800CAFF8 85480000 */   lh        $t0, ($t2)
/* CBBFC 800CAFFC 8E020024 */  lw         $v0, 0x24($s0)
.L800CB000:
/* CBC00 800CB000 2401FFFF */  addiu      $at, $zero, -1
/* CBC04 800CB004 01114021 */  addu       $t0, $t0, $s1
/* CBC08 800CB008 10410004 */  beq        $v0, $at, .L800CB01C
/* CBC0C 800CB00C 02729823 */   subu      $s3, $s3, $s2
/* CBC10 800CB010 10400002 */  beqz       $v0, .L800CB01C
/* CBC14 800CB014 244BFFFF */   addiu     $t3, $v0, -1
/* CBC18 800CB018 AE0B0024 */  sw         $t3, 0x24($s0)
.L800CB01C:
/* CBC1C 800CB01C 8E0C0020 */  lw         $t4, 0x20($s0)
/* CBC20 800CB020 8E0D001C */  lw         $t5, 0x1c($s0)
/* CBC24 800CB024 018D1023 */  subu       $v0, $t4, $t5
/* CBC28 800CB028 0262082B */  sltu       $at, $s3, $v0
/* CBC2C 800CB02C 10200003 */  beqz       $at, .L800CB03C
/* CBC30 800CB030 00409025 */   or        $s2, $v0, $zero
/* CBC34 800CB034 10000001 */  b          .L800CB03C
/* CBC38 800CB038 02609025 */   or        $s2, $s3, $zero
.L800CB03C:
/* CBC3C 800CB03C 8E040044 */  lw         $a0, 0x44($s0)
/* CBC40 800CB040 8E060034 */  lw         $a2, 0x34($s0)
/* CBC44 800CB044 AFA9004C */  sw         $t1, 0x4c($sp)
/* CBC48 800CB048 AFA8002C */  sw         $t0, 0x2c($sp)
/* CBC4C 800CB04C 8E190030 */  lw         $t9, 0x30($s0)
/* CBC50 800CB050 00128840 */  sll        $s1, $s2, 1
/* CBC54 800CB054 02202825 */  or         $a1, $s1, $zero
/* CBC58 800CB058 0320F809 */  jalr       $t9
/* CBC5C 800CB05C 00000000 */   nop
/* CBC60 800CB060 8FA8002C */  lw         $t0, 0x2c($sp)
/* CBC64 800CB064 30450007 */  andi       $a1, $v0, 7
/* CBC68 800CB068 8FA9004C */  lw         $t1, 0x4c($sp)
/* CBC6C 800CB06C 31030007 */  andi       $v1, $t0, 7
/* CBC70 800CB070 10600004 */  beqz       $v1, .L800CB084
/* CBC74 800CB074 02253821 */   addu      $a3, $s1, $a1
/* CBC78 800CB078 240E0008 */  addiu      $t6, $zero, 8
/* CBC7C 800CB07C 10000002 */  b          .L800CB088
/* CBC80 800CB080 01C33023 */   subu      $a2, $t6, $v1
.L800CB084:
/* CBC84 800CB084 00003025 */  or         $a2, $zero, $zero
.L800CB088:
/* CBC88 800CB088 01067821 */  addu       $t7, $t0, $a2
/* CBC8C 800CB08C 30EC0007 */  andi       $t4, $a3, 7
/* CBC90 800CB090 00EC6823 */  subu       $t5, $a3, $t4
/* CBC94 800CB094 31F8FFFF */  andi       $t8, $t7, 0xffff
/* CBC98 800CB098 01201825 */  or         $v1, $t1, $zero
/* CBC9C 800CB09C 3C010800 */  lui        $at, 0x800
/* CBCA0 800CB0A0 03015825 */  or         $t3, $t8, $at
/* CBCA4 800CB0A4 25290008 */  addiu      $t1, $t1, 8
/* CBCA8 800CB0A8 25B90008 */  addiu      $t9, $t5, 8
/* CBCAC 800CB0AC 332EFFFF */  andi       $t6, $t9, 0xffff
/* CBCB0 800CB0B0 01202025 */  or         $a0, $t1, $zero
/* CBCB4 800CB0B4 AC6E0004 */  sw         $t6, 4($v1)
/* CBCB8 800CB0B8 AC6B0000 */  sw         $t3, ($v1)
/* CBCBC 800CB0BC 0045C023 */  subu       $t8, $v0, $a1
/* CBCC0 800CB0C0 3C0F0400 */  lui        $t7, 0x400
/* CBCC4 800CB0C4 AC8F0000 */  sw         $t7, ($a0)
/* CBCC8 800CB0C8 AC980004 */  sw         $t8, 4($a0)
/* CBCCC 800CB0CC 14A00002 */  bnez       $a1, .L800CB0D8
/* CBCD0 800CB0D0 25290008 */   addiu     $t1, $t1, 8
/* CBCD4 800CB0D4 10C0000E */  beqz       $a2, .L800CB110
.L800CB0D8:
/* CBCD8 800CB0D8 01055821 */   addu      $t3, $t0, $a1
/* CBCDC 800CB0DC 3C0100FF */  lui        $at, 0xff
/* CBCE0 800CB0E0 3421FFFF */  ori        $at, $at, 0xffff
/* CBCE4 800CB0E4 01666021 */  addu       $t4, $t3, $a2
/* CBCE8 800CB0E8 01816824 */  and        $t5, $t4, $at
/* CBCEC 800CB0EC 01201025 */  or         $v0, $t1, $zero
/* CBCF0 800CB0F0 3C010A00 */  lui        $at, 0xa00
/* CBCF4 800CB0F4 00087C00 */  sll        $t7, $t0, 0x10
/* CBCF8 800CB0F8 3238FFFF */  andi       $t8, $s1, 0xffff
/* CBCFC 800CB0FC 01F85825 */  or         $t3, $t7, $t8
/* CBD00 800CB100 01A1C825 */  or         $t9, $t5, $at
/* CBD04 800CB104 AC590000 */  sw         $t9, ($v0)
/* CBD08 800CB108 AC4B0004 */  sw         $t3, 4($v0)
/* CBD0C 800CB10C 25290008 */  addiu      $t1, $t1, 8
.L800CB110:
/* CBD10 800CB110 0253082A */  slt        $at, $s2, $s3
/* CBD14 800CB114 5420FFBA */  bnezl      $at, .L800CB000
/* CBD18 800CB118 8E020024 */   lw        $v0, 0x24($s0)
.L800CB11C:
/* CBD1C 800CB11C 8E0C0038 */  lw         $t4, 0x38($s0)
/* CBD20 800CB120 8E190044 */  lw         $t9, 0x44($s0)
/* CBD24 800CB124 00137040 */  sll        $t6, $s3, 1
/* CBD28 800CB128 01936821 */  addu       $t5, $t4, $s3
/* CBD2C 800CB12C 032E7821 */  addu       $t7, $t9, $t6
/* CBD30 800CB130 AE0D0038 */  sw         $t5, 0x38($s0)
/* CBD34 800CB134 AE0F0044 */  sw         $t7, 0x44($s0)
/* CBD38 800CB138 1000004E */  b          .L800CB274
/* CBD3C 800CB13C 01201025 */   or        $v0, $t1, $zero
/* CBD40 800CB140 8E020028 */  lw         $v0, 0x28($s0)
.L800CB144:
/* CBD44 800CB144 8E040044 */  lw         $a0, 0x44($s0)
/* CBD48 800CB148 00138840 */  sll        $s1, $s3, 1
/* CBD4C 800CB14C 8C580000 */  lw         $t8, ($v0)
/* CBD50 800CB150 8C4C0004 */  lw         $t4, 4($v0)
/* CBD54 800CB154 00911821 */  addu       $v1, $a0, $s1
/* CBD58 800CB158 00785823 */  subu       $t3, $v1, $t8
/* CBD5C 800CB15C 016C9023 */  subu       $s2, $t3, $t4
/* CBD60 800CB160 06430003 */  bgezl      $s2, .L800CB170
/* CBD64 800CB164 0232082A */   slt       $at, $s1, $s2
/* CBD68 800CB168 00009025 */  or         $s2, $zero, $zero
/* CBD6C 800CB16C 0232082A */  slt        $at, $s1, $s2
.L800CB170:
/* CBD70 800CB170 50200003 */  beql       $at, $zero, .L800CB180
/* CBD74 800CB174 0251082A */   slt       $at, $s2, $s1
/* CBD78 800CB178 02209025 */  or         $s2, $s1, $zero
/* CBD7C 800CB17C 0251082A */  slt        $at, $s2, $s1
.L800CB180:
/* CBD80 800CB180 5020002C */  beql       $at, $zero, .L800CB234
/* CBD84 800CB184 AE030044 */   sw        $v1, 0x44($s0)
/* CBD88 800CB188 1A60001F */  blez       $s3, .L800CB208
/* CBD8C 800CB18C 00003025 */   or        $a2, $zero, $zero
/* CBD90 800CB190 8E060034 */  lw         $a2, 0x34($s0)
/* CBD94 800CB194 02322823 */  subu       $a1, $s1, $s2
/* CBD98 800CB198 AFA50048 */  sw         $a1, 0x48($sp)
/* CBD9C 800CB19C AFAA0054 */  sw         $t2, 0x54($sp)
/* CBDA0 800CB1A0 8E190030 */  lw         $t9, 0x30($s0)
/* CBDA4 800CB1A4 0320F809 */  jalr       $t9
/* CBDA8 800CB1A8 00000000 */   nop
/* CBDAC 800CB1AC 8FAA0054 */  lw         $t2, 0x54($sp)
/* CBDB0 800CB1B0 8FA70048 */  lw         $a3, 0x48($sp)
/* CBDB4 800CB1B4 30460007 */  andi       $a2, $v0, 7
/* CBDB8 800CB1B8 854D0000 */  lh         $t5, ($t2)
/* CBDBC 800CB1BC 8FA80060 */  lw         $t0, 0x60($sp)
/* CBDC0 800CB1C0 00E63821 */  addu       $a3, $a3, $a2
/* CBDC4 800CB1C4 30F80007 */  andi       $t8, $a3, 7
/* CBDC8 800CB1C8 00F85823 */  subu       $t3, $a3, $t8
/* CBDCC 800CB1CC 3C010800 */  lui        $at, 0x800
/* CBDD0 800CB1D0 31AEFFFF */  andi       $t6, $t5, 0xffff
/* CBDD4 800CB1D4 01C17825 */  or         $t7, $t6, $at
/* CBDD8 800CB1D8 256C0008 */  addiu      $t4, $t3, 8
/* CBDDC 800CB1DC 25090008 */  addiu      $t1, $t0, 8
/* CBDE0 800CB1E0 3199FFFF */  andi       $t9, $t4, 0xffff
/* CBDE4 800CB1E4 01202025 */  or         $a0, $t1, $zero
/* CBDE8 800CB1E8 00467023 */  subu       $t6, $v0, $a2
/* CBDEC 800CB1EC 3C0D0400 */  lui        $t5, 0x400
/* CBDF0 800CB1F0 AD190004 */  sw         $t9, 4($t0)
/* CBDF4 800CB1F4 AD0F0000 */  sw         $t7, ($t0)
/* CBDF8 800CB1F8 AC8E0004 */  sw         $t6, 4($a0)
/* CBDFC 800CB1FC AC8D0000 */  sw         $t5, ($a0)
/* CBE00 800CB200 10000001 */  b          .L800CB208
/* CBE04 800CB204 25290008 */   addiu     $t1, $t1, 8
.L800CB208:
/* CBE08 800CB208 854F0000 */  lh         $t7, ($t2)
/* CBE0C 800CB20C 01E6C021 */  addu       $t8, $t7, $a2
/* CBE10 800CB210 A5580000 */  sh         $t8, ($t2)
/* CBE14 800CB214 8E0B0038 */  lw         $t3, 0x38($s0)
/* CBE18 800CB218 8E190044 */  lw         $t9, 0x44($s0)
/* CBE1C 800CB21C 01736021 */  addu       $t4, $t3, $s3
/* CBE20 800CB220 03316821 */  addu       $t5, $t9, $s1
/* CBE24 800CB224 AE0C0038 */  sw         $t4, 0x38($s0)
/* CBE28 800CB228 10000002 */  b          .L800CB234
/* CBE2C 800CB22C AE0D0044 */   sw        $t5, 0x44($s0)
/* CBE30 800CB230 AE030044 */  sw         $v1, 0x44($s0)
.L800CB234:
/* CBE34 800CB234 1240000E */  beqz       $s2, .L800CB270
/* CBE38 800CB238 02321823 */   subu      $v1, $s1, $s2
/* CBE3C 800CB23C 04610002 */  bgez       $v1, .L800CB248
/* CBE40 800CB240 01201025 */   or        $v0, $t1, $zero
/* CBE44 800CB244 00001825 */  or         $v1, $zero, $zero
.L800CB248:
/* CBE48 800CB248 854E0000 */  lh         $t6, ($t2)
/* CBE4C 800CB24C 3C0100FF */  lui        $at, 0xff
/* CBE50 800CB250 3421FFFF */  ori        $at, $at, 0xffff
/* CBE54 800CB254 01C37821 */  addu       $t7, $t6, $v1
/* CBE58 800CB258 01E1C024 */  and        $t8, $t7, $at
/* CBE5C 800CB25C 3C010200 */  lui        $at, 0x200
/* CBE60 800CB260 03015825 */  or         $t3, $t8, $at
/* CBE64 800CB264 AC4B0000 */  sw         $t3, ($v0)
/* CBE68 800CB268 AC520004 */  sw         $s2, 4($v0)
/* CBE6C 800CB26C 25290008 */  addiu      $t1, $t1, 8
.L800CB270:
/* CBE70 800CB270 01201025 */  or         $v0, $t1, $zero
.L800CB274:
/* CBE74 800CB274 8FBF0024 */  lw         $ra, 0x24($sp)
/* CBE78 800CB278 8FB00014 */  lw         $s0, 0x14($sp)
/* CBE7C 800CB27C 8FB10018 */  lw         $s1, 0x18($sp)
/* CBE80 800CB280 8FB2001C */  lw         $s2, 0x1c($sp)
/* CBE84 800CB284 8FB30020 */  lw         $s3, 0x20($sp)
/* CBE88 800CB288 03E00008 */  jr         $ra
/* CBE8C 800CB28C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800CB290
/* CBE90 800CB290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CBE94 800CB294 AFB3002C */  sw         $s3, 0x2c($sp)
/* CBE98 800CB298 AFB50028 */  sw         $s5, 0x28($sp)
/* CBE9C 800CB29C 00137400 */  sll        $t6, $s3, 0x10
/* CBEA0 800CB2A0 0015C400 */  sll        $t8, $s5, 0x10
/* CBEA4 800CB2A4 0018AC03 */  sra        $s5, $t8, 0x10
/* CBEA8 800CB2A8 000E9C03 */  sra        $s3, $t6, 0x10
/* CBEAC 800CB2AC 1A20001A */  blez       $s1, .L800CB318
/* CBEB0 800CB2B0 AFBF0014 */   sw        $ra, 0x14($sp)
/* CBEB4 800CB2B4 8E590030 */  lw         $t9, 0x30($s2)
/* CBEB8 800CB2B8 8E440044 */  lw         $a0, 0x44($s2)
/* CBEBC 800CB2BC 02202825 */  or         $a1, $s1, $zero
/* CBEC0 800CB2C0 0320F809 */  jalr       $t9
/* CBEC4 800CB2C4 8E460034 */   lw        $a2, 0x34($s2)
/* CBEC8 800CB2C8 30460007 */  andi       $a2, $v0, 7
/* CBECC 800CB2CC 02268821 */  addu       $s1, $s1, $a2
/* CBED0 800CB2D0 326EFFFF */  andi       $t6, $s3, 0xffff
/* CBED4 800CB2D4 3C010800 */  lui        $at, 0x800
/* CBED8 800CB2D8 01C17825 */  or         $t7, $t6, $at
/* CBEDC 800CB2DC 32380007 */  andi       $t8, $s1, 7
/* CBEE0 800CB2E0 02002025 */  or         $a0, $s0, $zero
/* CBEE4 800CB2E4 0238C823 */  subu       $t9, $s1, $t8
/* CBEE8 800CB2E8 272E0008 */  addiu      $t6, $t9, 8
/* CBEEC 800CB2EC AC8F0000 */  sw         $t7, ($a0)
/* CBEF0 800CB2F0 26100008 */  addiu      $s0, $s0, 8
/* CBEF4 800CB2F4 31CFFFFF */  andi       $t7, $t6, 0xffff
/* CBEF8 800CB2F8 02002825 */  or         $a1, $s0, $zero
/* CBEFC 800CB2FC AC8F0004 */  sw         $t7, 4($a0)
/* CBF00 800CB300 0046C823 */  subu       $t9, $v0, $a2
/* CBF04 800CB304 3C180400 */  lui        $t8, 0x400
/* CBF08 800CB308 ACB80000 */  sw         $t8, ($a1)
/* CBF0C 800CB30C ACB90004 */  sw         $t9, 4($a1)
/* CBF10 800CB310 10000002 */  b          .L800CB31C
/* CBF14 800CB314 26100008 */   addiu     $s0, $s0, 8
.L800CB318:
/* CBF18 800CB318 00003025 */  or         $a2, $zero, $zero
.L800CB31C:
/* CBF1C 800CB31C 328E0002 */  andi       $t6, $s4, 2
/* CBF20 800CB320 11C00009 */  beqz       $t6, .L800CB348
/* CBF24 800CB324 02001025 */   or        $v0, $s0, $zero
/* CBF28 800CB328 3C0F0F00 */  lui        $t7, 0xf00
/* CBF2C 800CB32C AC4F0000 */  sw         $t7, ($v0)
/* CBF30 800CB330 8E580018 */  lw         $t8, 0x18($s2)
/* CBF34 800CB334 3C011FFF */  lui        $at, 0x1fff
/* CBF38 800CB338 3421FFFF */  ori        $at, $at, 0xffff
/* CBF3C 800CB33C 0301C824 */  and        $t9, $t8, $at
/* CBF40 800CB340 AC590004 */  sw         $t9, 4($v0)
/* CBF44 800CB344 26100008 */  addiu      $s0, $s0, 8
.L800CB348:
/* CBF48 800CB348 02667021 */  addu       $t6, $s3, $a2
/* CBF4C 800CB34C 31CFFFFF */  andi       $t7, $t6, 0xffff
/* CBF50 800CB350 3C010800 */  lui        $at, 0x800
/* CBF54 800CB354 01E1C025 */  or         $t8, $t7, $at
/* CBF58 800CB358 02001825 */  or         $v1, $s0, $zero
/* CBF5C 800CB35C AC780000 */  sw         $t8, ($v1)
/* CBF60 800CB360 00167840 */  sll        $t7, $s6, 1
/* CBF64 800CB364 31F8FFFF */  andi       $t8, $t7, 0xffff
/* CBF68 800CB368 00157400 */  sll        $t6, $s5, 0x10
/* CBF6C 800CB36C 01D8C825 */  or         $t9, $t6, $t8
/* CBF70 800CB370 328F00FF */  andi       $t7, $s4, 0xff
/* CBF74 800CB374 26100008 */  addiu      $s0, $s0, 8
/* CBF78 800CB378 000F7400 */  sll        $t6, $t7, 0x10
/* CBF7C 800CB37C 3C010100 */  lui        $at, 0x100
/* CBF80 800CB380 AC790004 */  sw         $t9, 4($v1)
/* CBF84 800CB384 01C1C025 */  or         $t8, $t6, $at
/* CBF88 800CB388 02002025 */  or         $a0, $s0, $zero
/* CBF8C 800CB38C AC980000 */  sw         $t8, ($a0)
/* CBF90 800CB390 8E590014 */  lw         $t9, 0x14($s2)
/* CBF94 800CB394 3C011FFF */  lui        $at, 0x1fff
/* CBF98 800CB398 3421FFFF */  ori        $at, $at, 0xffff
/* CBF9C 800CB39C 03217824 */  and        $t7, $t9, $at
/* CBFA0 800CB3A0 AC8F0004 */  sw         $t7, 4($a0)
/* CBFA4 800CB3A4 AE400040 */  sw         $zero, 0x40($s2)
/* CBFA8 800CB3A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* CBFAC 800CB3AC 26100008 */  addiu      $s0, $s0, 8
/* CBFB0 800CB3B0 02001025 */  or         $v0, $s0, $zero
/* CBFB4 800CB3B4 03E00008 */  jr         $ra
/* CBFB8 800CB3B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800CB3BC
/* CBFBC 800CB3BC 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* CBFC0 800CB3C0 AFB70044 */  sw         $s7, 0x44($sp)
/* CBFC4 800CB3C4 AFA700BC */  sw         $a3, 0xbc($sp)
/* CBFC8 800CB3C8 00A03825 */  or         $a3, $a1, $zero
/* CBFCC 800CB3CC 0080B825 */  or         $s7, $a0, $zero
/* CBFD0 800CB3D0 AFBF004C */  sw         $ra, 0x4c($sp)
/* CBFD4 800CB3D4 AFBE0048 */  sw         $fp, 0x48($sp)
/* CBFD8 800CB3D8 AFB60040 */  sw         $s6, 0x40($sp)
/* CBFDC 800CB3DC AFB5003C */  sw         $s5, 0x3c($sp)
/* CBFE0 800CB3E0 AFB40038 */  sw         $s4, 0x38($sp)
/* CBFE4 800CB3E4 AFB30034 */  sw         $s3, 0x34($sp)
/* CBFE8 800CB3E8 AFB20030 */  sw         $s2, 0x30($sp)
/* CBFEC 800CB3EC AFB1002C */  sw         $s1, 0x2c($sp)
/* CBFF0 800CB3F0 AFB00028 */  sw         $s0, 0x28($sp)
/* CBFF4 800CB3F4 AFA500B4 */  sw         $a1, 0xb4($sp)
/* CBFF8 800CB3F8 00C04025 */  or         $t0, $a2, $zero
/* CBFFC 800CB3FC 14C00003 */  bnez       $a2, .L800CB40C
/* CC000 800CB400 00006825 */   or        $t5, $zero, $zero
/* CC004 800CB404 10000109 */  b          .L800CB82C
/* CC008 800CB408 8FA200C0 */   lw        $v0, 0xc0($sp)
.L800CB40C:
/* CC00C 800CB40C 8EEE002C */  lw         $t6, 0x2c($s7)
/* CC010 800CB410 3C0100FF */  lui        $at, 0xff
/* CC014 800CB414 3421FFFF */  ori        $at, $at, 0xffff
/* CC018 800CB418 8FA500C0 */  lw         $a1, 0xc0($sp)
/* CC01C 800CB41C 01C17824 */  and        $t7, $t6, $at
/* CC020 800CB420 3C010B00 */  lui        $at, 0xb00
/* CC024 800CB424 01E1C025 */  or         $t8, $t7, $at
/* CC028 800CB428 ACB80000 */  sw         $t8, ($a1)
/* CC02C 800CB42C 8EF90028 */  lw         $t9, 0x28($s7)
/* CC030 800CB430 3C011FFF */  lui        $at, 0x1fff
/* CC034 800CB434 3421FFFF */  ori        $at, $at, 0xffff
/* CC038 800CB438 8F2E0010 */  lw         $t6, 0x10($t9)
/* CC03C 800CB43C 24AA0008 */  addiu      $t2, $a1, 8
/* CC040 800CB440 00003025 */  or         $a2, $zero, $zero
/* CC044 800CB444 25CF0008 */  addiu      $t7, $t6, 8
/* CC048 800CB448 01E1C024 */  and        $t8, $t7, $at
/* CC04C 800CB44C ACB80004 */  sw         $t8, 4($a1)
/* CC050 800CB450 8EE30038 */  lw         $v1, 0x38($s7)
/* CC054 800CB454 8EE40020 */  lw         $a0, 0x20($s7)
/* CC058 800CB458 01002825 */  or         $a1, $t0, $zero
/* CC05C 800CB45C 0068C821 */  addu       $t9, $v1, $t0
/* CC060 800CB460 0099482B */  sltu       $t1, $a0, $t9
/* CC064 800CB464 11200004 */  beqz       $t1, .L800CB478
/* CC068 800CB468 240F0010 */   addiu     $t7, $zero, 0x10
/* CC06C 800CB46C 8EE90024 */  lw         $t1, 0x24($s7)
/* CC070 800CB470 0009702B */  sltu       $t6, $zero, $t1
/* CC074 800CB474 01C04825 */  or         $t1, $t6, $zero
.L800CB478:
/* CC078 800CB478 11200003 */  beqz       $t1, .L800CB488
/* CC07C 800CB47C 24010009 */   addiu     $at, $zero, 9
/* CC080 800CB480 10000001 */  b          .L800CB488
/* CC084 800CB484 00832823 */   subu      $a1, $a0, $v1
.L800CB488:
/* CC088 800CB488 8EE3003C */  lw         $v1, 0x3c($s7)
/* CC08C 800CB48C 01408025 */  or         $s0, $t2, $zero
/* CC090 800CB490 02E09025 */  or         $s2, $s7, $zero
/* CC094 800CB494 10600003 */  beqz       $v1, .L800CB4A4
/* CC098 800CB498 00009825 */   or        $s3, $zero, $zero
/* CC09C 800CB49C 10000001 */  b          .L800CB4A4
/* CC0A0 800CB4A0 01E33023 */   subu      $a2, $t7, $v1
.L800CB4A4:
/* CC0A4 800CB4A4 00A62023 */  subu       $a0, $a1, $a2
/* CC0A8 800CB4A8 04810002 */  bgez       $a0, .L800CB4B4
/* CC0AC 800CB4AC 00000000 */   nop
/* CC0B0 800CB4B0 00002025 */  or         $a0, $zero, $zero
.L800CB4B4:
/* CC0B4 800CB4B4 11200081 */  beqz       $t1, .L800CB6BC
/* CC0B8 800CB4B8 249E000F */   addiu     $fp, $a0, 0xf
/* CC0BC 800CB4BC 249E000F */  addiu      $fp, $a0, 0xf
/* CC0C0 800CB4C0 001EC103 */  sra        $t8, $fp, 4
/* CC0C4 800CB4C4 84F50000 */  lh         $s5, ($a3)
/* CC0C8 800CB4C8 8EF40040 */  lw         $s4, 0x40($s7)
/* CC0CC 800CB4CC 001848C0 */  sll        $t1, $t8, 3
/* CC0D0 800CB4D0 01384821 */  addu       $t1, $t1, $t8
/* CC0D4 800CB4D4 01208825 */  or         $s1, $t1, $zero
/* CC0D8 800CB4D8 AFA9005C */  sw         $t1, 0x5c($sp)
/* CC0DC 800CB4DC AFA800B8 */  sw         $t0, 0xb8($sp)
/* CC0E0 800CB4E0 AFA700B4 */  sw         $a3, 0xb4($sp)
/* CC0E4 800CB4E4 AFA5008C */  sw         $a1, 0x8c($sp)
/* CC0E8 800CB4E8 0300F025 */  or         $fp, $t8, $zero
/* CC0EC 800CB4EC 0C032CA4 */  jal        func_800CB290
/* CC0F0 800CB4F0 0080B025 */   or        $s6, $a0, $zero
/* CC0F4 800CB4F4 8EE3003C */  lw         $v1, 0x3c($s7)
/* CC0F8 800CB4F8 8FA5008C */  lw         $a1, 0x8c($sp)
/* CC0FC 800CB4FC 8FA700B4 */  lw         $a3, 0xb4($sp)
/* CC100 800CB500 8FA800B8 */  lw         $t0, 0xb8($sp)
/* CC104 800CB504 8FA9005C */  lw         $t1, 0x5c($sp)
/* CC108 800CB508 10600006 */  beqz       $v1, .L800CB524
/* CC10C 800CB50C 00405025 */   or        $t2, $v0, $zero
/* CC110 800CB510 84F90000 */  lh         $t9, ($a3)
/* CC114 800CB514 00037040 */  sll        $t6, $v1, 1
/* CC118 800CB518 032E7821 */  addu       $t7, $t9, $t6
/* CC11C 800CB51C 10000004 */  b          .L800CB530
/* CC120 800CB520 A4EF0000 */   sh        $t7, ($a3)
.L800CB524:
/* CC124 800CB524 84F80000 */  lh         $t8, ($a3)
/* CC128 800CB528 27190020 */  addiu      $t9, $t8, 0x20
/* CC12C 800CB52C A4F90000 */  sh         $t9, ($a3)
.L800CB530:
/* CC130 800CB530 8EE2001C */  lw         $v0, 0x1c($s7)
/* CC134 800CB534 8EEF0028 */  lw         $t7, 0x28($s7)
/* CC138 800CB538 00A8082A */  slt        $at, $a1, $t0
/* CC13C 800CB53C 304E000F */  andi       $t6, $v0, 0xf
/* CC140 800CB540 AEEE003C */  sw         $t6, 0x3c($s7)
/* CC144 800CB544 8DF80000 */  lw         $t8, ($t7)
/* CC148 800CB548 0002C902 */  srl        $t9, $v0, 4
/* CC14C 800CB54C 001970C0 */  sll        $t6, $t9, 3
/* CC150 800CB550 01D97021 */  addu       $t6, $t6, $t9
/* CC154 800CB554 030E7821 */  addu       $t7, $t8, $t6
/* CC158 800CB558 25F90009 */  addiu      $t9, $t7, 9
/* CC15C 800CB55C AEF90044 */  sw         $t9, 0x44($s7)
/* CC160 800CB560 AEE20038 */  sw         $v0, 0x38($s7)
/* CC164 800CB564 10200049 */  beqz       $at, .L800CB68C
/* CC168 800CB568 84E60000 */   lh        $a2, ($a3)
/* CC16C 800CB56C 00051840 */  sll        $v1, $a1, 1
.L800CB570:
/* CC170 800CB570 27D80001 */  addiu      $t8, $fp, 1
/* CC174 800CB574 00187140 */  sll        $t6, $t8, 5
/* CC178 800CB578 8EE20024 */  lw         $v0, 0x24($s7)
/* CC17C 800CB57C 01C63821 */  addu       $a3, $t6, $a2
/* CC180 800CB580 2401FFE0 */  addiu      $at, $zero, -0x20
/* CC184 800CB584 00E17824 */  and        $t7, $a3, $at
/* CC188 800CB588 2401FFFF */  addiu      $at, $zero, -1
/* CC18C 800CB58C 01054023 */  subu       $t0, $t0, $a1
/* CC190 800CB590 01E03825 */  or         $a3, $t7, $zero
/* CC194 800CB594 10410004 */  beq        $v0, $at, .L800CB5A8
/* CC198 800CB598 00C33021 */   addu      $a2, $a2, $v1
/* CC19C 800CB59C 10400002 */  beqz       $v0, .L800CB5A8
/* CC1A0 800CB5A0 2459FFFF */   addiu     $t9, $v0, -1
/* CC1A4 800CB5A4 AEF90024 */  sw         $t9, 0x24($s7)
.L800CB5A8:
/* CC1A8 800CB5A8 8EF80020 */  lw         $t8, 0x20($s7)
/* CC1AC 800CB5AC 8EEE001C */  lw         $t6, 0x1c($s7)
/* CC1B0 800CB5B0 01408025 */  or         $s0, $t2, $zero
/* CC1B4 800CB5B4 02E09025 */  or         $s2, $s7, $zero
/* CC1B8 800CB5B8 030E1023 */  subu       $v0, $t8, $t6
/* CC1BC 800CB5BC 0102082B */  sltu       $at, $t0, $v0
/* CC1C0 800CB5C0 10200003 */  beqz       $at, .L800CB5D0
/* CC1C4 800CB5C4 0007AC00 */   sll       $s5, $a3, 0x10
/* CC1C8 800CB5C8 10000002 */  b          .L800CB5D4
/* CC1CC 800CB5CC 01002825 */   or        $a1, $t0, $zero
.L800CB5D0:
/* CC1D0 800CB5D0 00402825 */  or         $a1, $v0, $zero
.L800CB5D4:
/* CC1D4 800CB5D4 8EEF003C */  lw         $t7, 0x3c($s7)
/* CC1D8 800CB5D8 0015C403 */  sra        $t8, $s5, 0x10
/* CC1DC 800CB5DC 0300A825 */  or         $s5, $t8, $zero
/* CC1E0 800CB5E0 00AF2021 */  addu       $a0, $a1, $t7
/* CC1E4 800CB5E4 2484FFF0 */  addiu      $a0, $a0, -0x10
/* CC1E8 800CB5E8 04810002 */  bgez       $a0, .L800CB5F4
/* CC1EC 800CB5EC 00009825 */   or        $s3, $zero, $zero
/* CC1F0 800CB5F0 00002025 */  or         $a0, $zero, $zero
.L800CB5F4:
/* CC1F4 800CB5F4 8EF40040 */  lw         $s4, 0x40($s7)
/* CC1F8 800CB5F8 249E000F */  addiu      $fp, $a0, 0xf
/* CC1FC 800CB5FC 001EC903 */  sra        $t9, $fp, 4
/* CC200 800CB600 001948C0 */  sll        $t1, $t9, 3
/* CC204 800CB604 01394821 */  addu       $t1, $t1, $t9
/* CC208 800CB608 368E0002 */  ori        $t6, $s4, 2
/* CC20C 800CB60C 01C0A025 */  or         $s4, $t6, $zero
/* CC210 800CB610 01208825 */  or         $s1, $t1, $zero
/* CC214 800CB614 AFA9005C */  sw         $t1, 0x5c($sp)
/* CC218 800CB618 0320F025 */  or         $fp, $t9, $zero
/* CC21C 800CB61C AFA800B8 */  sw         $t0, 0xb8($sp)
/* CC220 800CB620 AFA70088 */  sw         $a3, 0x88($sp)
/* CC224 800CB624 AFA60080 */  sw         $a2, 0x80($sp)
/* CC228 800CB628 AFA5008C */  sw         $a1, 0x8c($sp)
/* CC22C 800CB62C 0C032CA4 */  jal        func_800CB290
/* CC230 800CB630 0080B025 */   or        $s6, $a0, $zero
/* CC234 800CB634 8EEF003C */  lw         $t7, 0x3c($s7)
/* CC238 800CB638 8FA70088 */  lw         $a3, 0x88($sp)
/* CC23C 800CB63C 3C0100FF */  lui        $at, 0xff
/* CC240 800CB640 000FC840 */  sll        $t9, $t7, 1
/* CC244 800CB644 3421FFFF */  ori        $at, $at, 0xffff
/* CC248 800CB648 0327C021 */  addu       $t8, $t9, $a3
/* CC24C 800CB64C 03017024 */  and        $t6, $t8, $at
/* CC250 800CB650 8FA5008C */  lw         $a1, 0x8c($sp)
/* CC254 800CB654 3C010A00 */  lui        $at, 0xa00
/* CC258 800CB658 8FA60080 */  lw         $a2, 0x80($sp)
/* CC25C 800CB65C 01C17825 */  or         $t7, $t6, $at
/* CC260 800CB660 8FA800B8 */  lw         $t0, 0xb8($sp)
/* CC264 800CB664 8FA9005C */  lw         $t1, 0x5c($sp)
/* CC268 800CB668 00051840 */  sll        $v1, $a1, 1
/* CC26C 800CB66C 306EFFFF */  andi       $t6, $v1, 0xffff
/* CC270 800CB670 AC4F0000 */  sw         $t7, ($v0)
/* CC274 800CB674 0006C400 */  sll        $t8, $a2, 0x10
/* CC278 800CB678 030E7825 */  or         $t7, $t8, $t6
/* CC27C 800CB67C 00A8082A */  slt        $at, $a1, $t0
/* CC280 800CB680 AC4F0004 */  sw         $t7, 4($v0)
/* CC284 800CB684 1420FFBA */  bnez       $at, .L800CB570
/* CC288 800CB688 244A0008 */   addiu     $t2, $v0, 8
.L800CB68C:
/* CC28C 800CB68C 8EF9003C */  lw         $t9, 0x3c($s7)
/* CC290 800CB690 8EEF0038 */  lw         $t7, 0x38($s7)
/* CC294 800CB694 01401025 */  or         $v0, $t2, $zero
/* CC298 800CB698 0328C021 */  addu       $t8, $t9, $t0
/* CC29C 800CB69C 330E000F */  andi       $t6, $t8, 0xf
/* CC2A0 800CB6A0 8EF80044 */  lw         $t8, 0x44($s7)
/* CC2A4 800CB6A4 AEEE003C */  sw         $t6, 0x3c($s7)
/* CC2A8 800CB6A8 01E8C821 */  addu       $t9, $t7, $t0
/* CC2AC 800CB6AC 03097021 */  addu       $t6, $t8, $t1
/* CC2B0 800CB6B0 AEF90038 */  sw         $t9, 0x38($s7)
/* CC2B4 800CB6B4 1000005D */  b          .L800CB82C
/* CC2B8 800CB6B8 AEEE0044 */   sw        $t6, 0x44($s7)
.L800CB6BC:
/* CC2BC 800CB6BC 8EE20028 */  lw         $v0, 0x28($s7)
/* CC2C0 800CB6C0 001E7903 */  sra        $t7, $fp, 4
/* CC2C4 800CB6C4 8EF90044 */  lw         $t9, 0x44($s7)
/* CC2C8 800CB6C8 000F48C0 */  sll        $t1, $t7, 3
/* CC2CC 800CB6CC 8C580000 */  lw         $t8, ($v0)
/* CC2D0 800CB6D0 012F4821 */  addu       $t1, $t1, $t7
/* CC2D4 800CB6D4 01E0F025 */  or         $fp, $t7, $zero
/* CC2D8 800CB6D8 8C4F0004 */  lw         $t7, 4($v0)
/* CC2DC 800CB6DC 03295821 */  addu       $t3, $t9, $t1
/* CC2E0 800CB6E0 01787023 */  subu       $t6, $t3, $t8
/* CC2E4 800CB6E4 01CF1823 */  subu       $v1, $t6, $t7
/* CC2E8 800CB6E8 04610002 */  bgez       $v1, .L800CB6F4
/* CC2EC 800CB6EC 001E2900 */   sll       $a1, $fp, 4
/* CC2F0 800CB6F0 00001825 */  or         $v1, $zero, $zero
.L800CB6F4:
/* CC2F4 800CB6F4 0061001A */  div        $zero, $v1, $at
/* CC2F8 800CB6F8 00001012 */  mflo       $v0
/* CC2FC 800CB6FC 00022100 */  sll        $a0, $v0, 4
/* CC300 800CB700 00A66021 */  addu       $t4, $a1, $a2
/* CC304 800CB704 0184082A */  slt        $at, $t4, $a0
/* CC308 800CB708 10200002 */  beqz       $at, .L800CB714
/* CC30C 800CB70C 01408025 */   or        $s0, $t2, $zero
/* CC310 800CB710 01802025 */  or         $a0, $t4, $zero
.L800CB714:
/* CC314 800CB714 3098000F */  andi       $t8, $a0, 0xf
/* CC318 800CB718 00987023 */  subu       $t6, $a0, $t8
/* CC31C 800CB71C 01C8082A */  slt        $at, $t6, $t0
/* CC320 800CB720 1020002B */  beqz       $at, .L800CB7D0
/* CC324 800CB724 01233023 */   subu      $a2, $t1, $v1
/* CC328 800CB728 84F50000 */  lh         $s5, ($a3)
/* CC32C 800CB72C 8EF40040 */  lw         $s4, 0x40($s7)
/* CC330 800CB730 240D0001 */  addiu      $t5, $zero, 1
/* CC334 800CB734 AFAD007C */  sw         $t5, 0x7c($sp)
/* CC338 800CB738 AFAC0050 */  sw         $t4, 0x50($sp)
/* CC33C 800CB73C AFA9005C */  sw         $t1, 0x5c($sp)
/* CC340 800CB740 AFA800B8 */  sw         $t0, 0xb8($sp)
/* CC344 800CB744 AFA700B4 */  sw         $a3, 0xb4($sp)
/* CC348 800CB748 AFA40090 */  sw         $a0, 0x90($sp)
/* CC34C 800CB74C 02E09025 */  or         $s2, $s7, $zero
/* CC350 800CB750 00A4B023 */  subu       $s6, $a1, $a0
/* CC354 800CB754 00C08825 */  or         $s1, $a2, $zero
/* CC358 800CB758 0C032CA4 */  jal        func_800CB290
/* CC35C 800CB75C 00009825 */   or        $s3, $zero, $zero
/* CC360 800CB760 8EE3003C */  lw         $v1, 0x3c($s7)
/* CC364 800CB764 8FA40090 */  lw         $a0, 0x90($sp)
/* CC368 800CB768 8FA700B4 */  lw         $a3, 0xb4($sp)
/* CC36C 800CB76C 8FA800B8 */  lw         $t0, 0xb8($sp)
/* CC370 800CB770 8FA9005C */  lw         $t1, 0x5c($sp)
/* CC374 800CB774 8FAC0050 */  lw         $t4, 0x50($sp)
/* CC378 800CB778 8FAD007C */  lw         $t5, 0x7c($sp)
/* CC37C 800CB77C 10600006 */  beqz       $v1, .L800CB798
/* CC380 800CB780 00405025 */   or        $t2, $v0, $zero
/* CC384 800CB784 84EF0000 */  lh         $t7, ($a3)
/* CC388 800CB788 0003C840 */  sll        $t9, $v1, 1
/* CC38C 800CB78C 01F9C021 */  addu       $t8, $t7, $t9
/* CC390 800CB790 10000004 */  b          .L800CB7A4
/* CC394 800CB794 A4F80000 */   sh        $t8, ($a3)
.L800CB798:
/* CC398 800CB798 84EE0000 */  lh         $t6, ($a3)
/* CC39C 800CB79C 25CF0020 */  addiu      $t7, $t6, 0x20
/* CC3A0 800CB7A0 A4EF0000 */  sh         $t7, ($a3)
.L800CB7A4:
/* CC3A4 800CB7A4 8EF9003C */  lw         $t9, 0x3c($s7)
/* CC3A8 800CB7A8 8EEF0038 */  lw         $t7, 0x38($s7)
/* CC3AC 800CB7AC 0328C021 */  addu       $t8, $t9, $t0
/* CC3B0 800CB7B0 330E000F */  andi       $t6, $t8, 0xf
/* CC3B4 800CB7B4 8EF80044 */  lw         $t8, 0x44($s7)
/* CC3B8 800CB7B8 AEEE003C */  sw         $t6, 0x3c($s7)
/* CC3BC 800CB7BC 01E8C821 */  addu       $t9, $t7, $t0
/* CC3C0 800CB7C0 03097021 */  addu       $t6, $t8, $t1
/* CC3C4 800CB7C4 AEF90038 */  sw         $t9, 0x38($s7)
/* CC3C8 800CB7C8 10000003 */  b          .L800CB7D8
/* CC3CC 800CB7CC AEEE0044 */   sw        $t6, 0x44($s7)
.L800CB7D0:
/* CC3D0 800CB7D0 AEE0003C */  sw         $zero, 0x3c($s7)
/* CC3D4 800CB7D4 AEEB0044 */  sw         $t3, 0x44($s7)
.L800CB7D8:
/* CC3D8 800CB7D8 10800013 */  beqz       $a0, .L800CB828
/* CC3DC 800CB7DC 01401025 */   or        $v0, $t2, $zero
/* CC3E0 800CB7E0 11A00005 */  beqz       $t5, .L800CB7F8
/* CC3E4 800CB7E4 AEE0003C */   sw        $zero, 0x3c($s7)
/* CC3E8 800CB7E8 01841823 */  subu       $v1, $t4, $a0
/* CC3EC 800CB7EC 00037840 */  sll        $t7, $v1, 1
/* CC3F0 800CB7F0 10000002 */  b          .L800CB7FC
/* CC3F4 800CB7F4 01E01825 */   or        $v1, $t7, $zero
.L800CB7F8:
/* CC3F8 800CB7F8 00001825 */  or         $v1, $zero, $zero
.L800CB7FC:
/* CC3FC 800CB7FC 84F90000 */  lh         $t9, ($a3)
/* CC400 800CB800 3C0100FF */  lui        $at, 0xff
/* CC404 800CB804 3421FFFF */  ori        $at, $at, 0xffff
/* CC408 800CB808 0323C021 */  addu       $t8, $t9, $v1
/* CC40C 800CB80C 03017024 */  and        $t6, $t8, $at
/* CC410 800CB810 3C010200 */  lui        $at, 0x200
/* CC414 800CB814 01C17825 */  or         $t7, $t6, $at
/* CC418 800CB818 0004C840 */  sll        $t9, $a0, 1
/* CC41C 800CB81C AC590004 */  sw         $t9, 4($v0)
/* CC420 800CB820 AC4F0000 */  sw         $t7, ($v0)
/* CC424 800CB824 254A0008 */  addiu      $t2, $t2, 8
.L800CB828:
/* CC428 800CB828 01401025 */  or         $v0, $t2, $zero
.L800CB82C:
/* CC42C 800CB82C 8FBF004C */  lw         $ra, 0x4c($sp)
/* CC430 800CB830 8FB00028 */  lw         $s0, 0x28($sp)
/* CC434 800CB834 8FB1002C */  lw         $s1, 0x2c($sp)
/* CC438 800CB838 8FB20030 */  lw         $s2, 0x30($sp)
/* CC43C 800CB83C 8FB30034 */  lw         $s3, 0x34($sp)
/* CC440 800CB840 8FB40038 */  lw         $s4, 0x38($sp)
/* CC444 800CB844 8FB5003C */  lw         $s5, 0x3c($sp)
/* CC448 800CB848 8FB60040 */  lw         $s6, 0x40($sp)
/* CC44C 800CB84C 8FB70044 */  lw         $s7, 0x44($sp)
/* CC450 800CB850 8FBE0048 */  lw         $fp, 0x48($sp)
/* CC454 800CB854 03E00008 */  jr         $ra
/* CC458 800CB858 27BD00B0 */   addiu     $sp, $sp, 0xb0
/* CC45C 800CB85C 00000000 */  nop

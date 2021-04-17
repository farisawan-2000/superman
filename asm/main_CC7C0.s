.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CBBC0
/* CC7C0 800CBBC0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* CC7C4 800CBBC4 AFA40048 */  sw         $a0, 0x48($sp)
/* CC7C8 800CBBC8 8FAE0048 */  lw         $t6, 0x48($sp)
/* CC7CC 800CBBCC AFBF001C */  sw         $ra, 0x1c($sp)
/* CC7D0 800CBBD0 AFA00030 */  sw         $zero, 0x30($sp)
/* CC7D4 800CBBD4 AFA00044 */  sw         $zero, 0x44($sp)
/* CC7D8 800CBBD8 AFA00038 */  sw         $zero, 0x38($sp)
/* CC7DC 800CBBDC AFAE0034 */  sw         $t6, 0x34($sp)
.L800CBBE0:
/* CC7E0 800CBBE0 8FAF0034 */  lw         $t7, 0x34($sp)
/* CC7E4 800CBBE4 27A50044 */  addiu      $a1, $sp, 0x44
/* CC7E8 800CBBE8 24060001 */  addiu      $a2, $zero, 1
/* CC7EC 800CBBEC 0C02F85C */  jal        func_800BE170
/* CC7F0 800CBBF0 8DE40008 */   lw        $a0, 8($t7)
/* CC7F4 800CBBF4 8FB80044 */  lw         $t8, 0x44($sp)
/* CC7F8 800CBBF8 8F190014 */  lw         $t9, 0x14($t8)
/* CC7FC 800CBBFC 132000A1 */  beqz       $t9, .L800CBE84
/* CC800 800CBC00 00000000 */   nop
/* CC804 800CBC04 93280004 */  lbu        $t0, 4($t9)
/* CC808 800CBC08 24010002 */  addiu      $at, $zero, 2
/* CC80C 800CBC0C 1501009D */  bne        $t0, $at, .L800CBE84
/* CC810 800CBC10 00000000 */   nop
/* CC814 800CBC14 8F290014 */  lw         $t1, 0x14($t9)
/* CC818 800CBC18 11200003 */  beqz       $t1, .L800CBC28
/* CC81C 800CBC1C 24010001 */   addiu     $at, $zero, 1
/* CC820 800CBC20 15210098 */  bne        $t1, $at, .L800CBE84
/* CC824 800CBC24 00000000 */   nop
.L800CBC28:
/* CC828 800CBC28 8FAA0044 */  lw         $t2, 0x44($sp)
/* CC82C 800CBC2C 2408FFFF */  addiu      $t0, $zero, -1
/* CC830 800CBC30 24010003 */  addiu      $at, $zero, 3
/* CC834 800CBC34 8D4B0014 */  lw         $t3, 0x14($t2)
/* CC838 800CBC38 256C0014 */  addiu      $t4, $t3, 0x14
/* CC83C 800CBC3C AFAC0028 */  sw         $t4, 0x28($sp)
/* CC840 800CBC40 958D0006 */  lhu        $t5, 6($t4)
/* CC844 800CBC44 000D70C0 */  sll        $t6, $t5, 3
/* CC848 800CBC48 01CD7021 */  addu       $t6, $t6, $t5
/* CC84C 800CBC4C 000E7080 */  sll        $t6, $t6, 2
/* CC850 800CBC50 018E7821 */  addu       $t7, $t4, $t6
/* CC854 800CBC54 25F80018 */  addiu      $t8, $t7, 0x18
/* CC858 800CBC58 AFB8002C */  sw         $t8, 0x2c($sp)
/* CC85C 800CBC5C AD880008 */  sw         $t0, 8($t4)
/* CC860 800CBC60 8FB90028 */  lw         $t9, 0x28($sp)
/* CC864 800CBC64 97290004 */  lhu        $t1, 4($t9)
/* CC868 800CBC68 11210006 */  beq        $t1, $at, .L800CBC84
/* CC86C 800CBC6C 00000000 */   nop
/* CC870 800CBC70 8FAA002C */  lw         $t2, 0x2c($sp)
/* CC874 800CBC74 8D4B0004 */  lw         $t3, 4($t2)
/* CC878 800CBC78 8D4D000C */  lw         $t5, 0xc($t2)
/* CC87C 800CBC7C 016D7023 */  subu       $t6, $t3, $t5
/* CC880 800CBC80 AD4E0004 */  sw         $t6, 4($t2)
.L800CBC84:
/* CC884 800CBC84 8FAF0028 */  lw         $t7, 0x28($sp)
/* CC888 800CBC88 24010002 */  addiu      $at, $zero, 2
/* CC88C 800CBC8C 95F80004 */  lhu        $t8, 4($t7)
/* CC890 800CBC90 17010009 */  bne        $t8, $at, .L800CBCB8
/* CC894 800CBC94 00000000 */   nop
/* CC898 800CBC98 8FA80044 */  lw         $t0, 0x44($sp)
/* CC89C 800CBC9C 8D0C0014 */  lw         $t4, 0x14($t0)
/* CC8A0 800CBCA0 8D990014 */  lw         $t9, 0x14($t4)
/* CC8A4 800CBCA4 17200004 */  bnez       $t9, .L800CBCB8
/* CC8A8 800CBCA8 00000000 */   nop
/* CC8AC 800CBCAC 24090001 */  addiu      $t1, $zero, 1
/* CC8B0 800CBCB0 10000002 */  b          .L800CBCBC
/* CC8B4 800CBCB4 AFA90030 */   sw        $t1, 0x30($sp)
.L800CBCB8:
/* CC8B8 800CBCB8 AFA00030 */  sw         $zero, 0x30($sp)
.L800CBCBC:
/* CC8BC 800CBCBC 8FAB0034 */  lw         $t3, 0x34($sp)
/* CC8C0 800CBCC0 27A5003C */  addiu      $a1, $sp, 0x3c
/* CC8C4 800CBCC4 24060001 */  addiu      $a2, $zero, 1
/* CC8C8 800CBCC8 0C02F85C */  jal        func_800BE170
/* CC8CC 800CBCCC 8D640010 */   lw        $a0, 0x10($t3)
/* CC8D0 800CBCD0 3C040010 */  lui        $a0, 0x10
/* CC8D4 800CBCD4 0C033C34 */  jal        func_800CF0D0
/* CC8D8 800CBCD8 34840401 */   ori       $a0, $a0, 0x401
/* CC8DC 800CBCDC 8FAE0028 */  lw         $t6, 0x28($sp)
/* CC8E0 800CBCE0 8FAD0044 */  lw         $t5, 0x44($sp)
/* CC8E4 800CBCE4 3C018000 */  lui        $at, 0x8000
/* CC8E8 800CBCE8 8DC60010 */  lw         $a2, 0x10($t6)
/* CC8EC 800CBCEC 3C050500 */  lui        $a1, 0x500
/* CC8F0 800CBCF0 34A50510 */  ori        $a1, $a1, 0x510
/* CC8F4 800CBCF4 00C15025 */  or         $t2, $a2, $at
/* CC8F8 800CBCF8 01403025 */  or         $a2, $t2, $zero
/* CC8FC 800CBCFC 0C034740 */  jal        func_800D1D00
/* CC900 800CBD00 8DA40014 */   lw        $a0, 0x14($t5)
.L800CBD04:
/* CC904 800CBD04 8FAF0034 */  lw         $t7, 0x34($sp)
/* CC908 800CBD08 27A50040 */  addiu      $a1, $sp, 0x40
/* CC90C 800CBD0C 24060001 */  addiu      $a2, $zero, 1
/* CC910 800CBD10 0C02F85C */  jal        func_800BE170
/* CC914 800CBD14 8DE4000C */   lw        $a0, 0xc($t7)
/* CC918 800CBD18 8FB80044 */  lw         $t8, 0x44($sp)
/* CC91C 800CBD1C 2401001D */  addiu      $at, $zero, 0x1d
/* CC920 800CBD20 8F080014 */  lw         $t0, 0x14($t8)
/* CC924 800CBD24 250C0014 */  addiu      $t4, $t0, 0x14
/* CC928 800CBD28 AFAC0028 */  sw         $t4, 0x28($sp)
/* CC92C 800CBD2C 95990006 */  lhu        $t9, 6($t4)
/* CC930 800CBD30 001948C0 */  sll        $t1, $t9, 3
/* CC934 800CBD34 01394821 */  addu       $t1, $t1, $t9
/* CC938 800CBD38 00094880 */  sll        $t1, $t1, 2
/* CC93C 800CBD3C 01895821 */  addu       $t3, $t4, $t1
/* CC940 800CBD40 256D0018 */  addiu      $t5, $t3, 0x18
/* CC944 800CBD44 AFAD002C */  sw         $t5, 0x2c($sp)
/* CC948 800CBD48 8D6E0018 */  lw         $t6, 0x18($t3)
/* CC94C 800CBD4C 15C1002E */  bne        $t6, $at, .L800CBE08
/* CC950 800CBD50 00000000 */   nop
/* CC954 800CBD54 8D860010 */  lw         $a2, 0x10($t4)
/* CC958 800CBD58 3C011000 */  lui        $at, 0x1000
/* CC95C 800CBD5C 3C050500 */  lui        $a1, 0x500
/* CC960 800CBD60 00C15025 */  or         $t2, $a2, $at
/* CC964 800CBD64 01403025 */  or         $a2, $t2, $zero
/* CC968 800CBD68 34A50510 */  ori        $a1, $a1, 0x510
/* CC96C 800CBD6C 0C034740 */  jal        func_800D1D00
/* CC970 800CBD70 8F040014 */   lw        $a0, 0x14($t8)
/* CC974 800CBD74 8FAF0044 */  lw         $t7, 0x44($sp)
/* CC978 800CBD78 8FA80028 */  lw         $t0, 0x28($sp)
/* CC97C 800CBD7C 3C050500 */  lui        $a1, 0x500
/* CC980 800CBD80 34A50510 */  ori        $a1, $a1, 0x510
/* CC984 800CBD84 8DE40014 */  lw         $a0, 0x14($t7)
/* CC988 800CBD88 0C034740 */  jal        func_800D1D00
/* CC98C 800CBD8C 8D060010 */   lw        $a2, 0x10($t0)
/* CC990 800CBD90 8FB90044 */  lw         $t9, 0x44($sp)
/* CC994 800CBD94 3C050500 */  lui        $a1, 0x500
/* CC998 800CBD98 34A50508 */  ori        $a1, $a1, 0x508
/* CC99C 800CBD9C 27A60024 */  addiu      $a2, $sp, 0x24
/* CC9A0 800CBDA0 0C03455C */  jal        func_800D1570
/* CC9A4 800CBDA4 8F240014 */   lw        $a0, 0x14($t9)
/* CC9A8 800CBDA8 8FA90024 */  lw         $t1, 0x24($sp)
/* CC9AC 800CBDAC 3C010200 */  lui        $at, 0x200
/* CC9B0 800CBDB0 01216824 */  and        $t5, $t1, $at
/* CC9B4 800CBDB4 11A0000B */  beqz       $t5, .L800CBDE4
/* CC9B8 800CBDB8 00000000 */   nop
/* CC9BC 800CBDBC 8FAE0028 */  lw         $t6, 0x28($sp)
/* CC9C0 800CBDC0 8FAB0044 */  lw         $t3, 0x44($sp)
/* CC9C4 800CBDC4 3C010100 */  lui        $at, 0x100
/* CC9C8 800CBDC8 8DC60010 */  lw         $a2, 0x10($t6)
/* CC9CC 800CBDCC 3C050500 */  lui        $a1, 0x500
/* CC9D0 800CBDD0 34A50510 */  ori        $a1, $a1, 0x510
/* CC9D4 800CBDD4 00C1C025 */  or         $t8, $a2, $at
/* CC9D8 800CBDD8 03003025 */  or         $a2, $t8, $zero
/* CC9DC 800CBDDC 0C034740 */  jal        func_800D1D00
/* CC9E0 800CBDE0 8D640014 */   lw        $a0, 0x14($t3)
.L800CBDE4:
/* CC9E4 800CBDE4 8FAA002C */  lw         $t2, 0x2c($sp)
/* CC9E8 800CBDE8 240C0004 */  addiu      $t4, $zero, 4
/* CC9EC 800CBDEC 240F0002 */  addiu      $t7, $zero, 2
/* CC9F0 800CBDF0 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* CC9F4 800CBDF4 3C040010 */  lui        $a0, 0x10
/* CC9F8 800CBDF8 AD4C0000 */  sw         $t4, ($t2)
/* CC9FC 800CBDFC AD0F0010 */  sw         $t7, %lo(D_A4600010)($t0)
/* CCA00 800CBE00 0C033A5C */  jal        func_800CE970
/* CCA04 800CBE04 34840C01 */   ori       $a0, $a0, 0xc01
.L800CBE08:
/* CCA08 800CBE08 8FB90044 */  lw         $t9, 0x44($sp)
/* CCA0C 800CBE0C 00003025 */  or         $a2, $zero, $zero
/* CCA10 800CBE10 8F240004 */  lw         $a0, 4($t9)
/* CCA14 800CBE14 0C02F7A8 */  jal        func_800BDEA0
/* CCA18 800CBE18 03202825 */   or        $a1, $t9, $zero
/* CCA1C 800CBE1C 8FA90030 */  lw         $t1, 0x30($sp)
/* CCA20 800CBE20 24010001 */  addiu      $at, $zero, 1
/* CCA24 800CBE24 15210008 */  bne        $t1, $at, .L800CBE48
/* CCA28 800CBE28 00000000 */   nop
/* CCA2C 800CBE2C 8FAD0044 */  lw         $t5, 0x44($sp)
/* CCA30 800CBE30 8DAB0014 */  lw         $t3, 0x14($t5)
/* CCA34 800CBE34 8D6E002C */  lw         $t6, 0x2c($t3)
/* CCA38 800CBE38 15C00003 */  bnez       $t6, .L800CBE48
/* CCA3C 800CBE3C 00000000 */   nop
/* CCA40 800CBE40 1000FFB0 */  b          .L800CBD04
/* CCA44 800CBE44 AFA00030 */   sw        $zero, 0x30($sp)
.L800CBE48:
/* CCA48 800CBE48 8FB80034 */  lw         $t8, 0x34($sp)
/* CCA4C 800CBE4C 00002825 */  or         $a1, $zero, $zero
/* CCA50 800CBE50 00003025 */  or         $a2, $zero, $zero
/* CCA54 800CBE54 0C02F7A8 */  jal        func_800BDEA0
/* CCA58 800CBE58 8F040010 */   lw        $a0, 0x10($t8)
/* CCA5C 800CBE5C 8FAC0044 */  lw         $t4, 0x44($sp)
/* CCA60 800CBE60 24010001 */  addiu      $at, $zero, 1
/* CCA64 800CBE64 8D8A0014 */  lw         $t2, 0x14($t4)
/* CCA68 800CBE68 954F001A */  lhu        $t7, 0x1a($t2)
/* CCA6C 800CBE6C 15E1FF5C */  bne        $t7, $at, .L800CBBE0
/* CCA70 800CBE70 00000000 */   nop
/* CCA74 800CBE74 0C0345DC */  jal        func_800D1770
/* CCA78 800CBE78 00000000 */   nop
/* CCA7C 800CBE7C 1000FF58 */  b          .L800CBBE0
/* CCA80 800CBE80 00000000 */   nop
.L800CBE84:
/* CCA84 800CBE84 8FA80044 */  lw         $t0, 0x44($sp)
/* CCA88 800CBE88 95190000 */  lhu        $t9, ($t0)
/* CCA8C 800CBE8C 2729FFF6 */  addiu      $t1, $t9, -0xa
/* CCA90 800CBE90 2D210007 */  sltiu      $at, $t1, 7
/* CCA94 800CBE94 10200051 */  beqz       $at, .L800CBFDC
/* CCA98 800CBE98 00000000 */   nop
/* CCA9C 800CBE9C 00094880 */  sll        $t1, $t1, 2
/* CCAA0 800CBEA0 3C01800E */  lui        $at, %hi(D_800DFD10)
/* CCAA4 800CBEA4 00290821 */  addu       $at, $at, $t1
/* CCAA8 800CBEA8 8C29FD10 */  lw         $t1, %lo(D_800DFD10)($at)
/* CCAAC 800CBEAC 01200008 */  jr         $t1
/* CCAB0 800CBEB0 00000000 */   nop
/* CCAB4 800CBEB4 8FAD0034 */  lw         $t5, 0x34($sp)
/* CCAB8 800CBEB8 27A5003C */  addiu      $a1, $sp, 0x3c
/* CCABC 800CBEBC 24060001 */  addiu      $a2, $zero, 1
/* CCAC0 800CBEC0 0C02F85C */  jal        func_800BE170
/* CCAC4 800CBEC4 8DA40010 */   lw        $a0, 0x10($t5)
/* CCAC8 800CBEC8 8FAE0034 */  lw         $t6, 0x34($sp)
/* CCACC 800CBECC 8FAB0044 */  lw         $t3, 0x44($sp)
/* CCAD0 800CBED0 00002025 */  or         $a0, $zero, $zero
/* CCAD4 800CBED4 8DD90014 */  lw         $t9, 0x14($t6)
/* CCAD8 800CBED8 8D65000C */  lw         $a1, 0xc($t3)
/* CCADC 800CBEDC 8D660008 */  lw         $a2, 8($t3)
/* CCAE0 800CBEE0 0320F809 */  jalr       $t9
/* CCAE4 800CBEE4 8D670010 */   lw        $a3, 0x10($t3)
/* CCAE8 800CBEE8 1000003E */  b          .L800CBFE4
/* CCAEC 800CBEEC AFA20038 */   sw        $v0, 0x38($sp)
/* CCAF0 800CBEF0 8FB80034 */  lw         $t8, 0x34($sp)
/* CCAF4 800CBEF4 27A5003C */  addiu      $a1, $sp, 0x3c
/* CCAF8 800CBEF8 24060001 */  addiu      $a2, $zero, 1
/* CCAFC 800CBEFC 0C02F85C */  jal        func_800BE170
/* CCB00 800CBF00 8F040010 */   lw        $a0, 0x10($t8)
/* CCB04 800CBF04 8FAA0034 */  lw         $t2, 0x34($sp)
/* CCB08 800CBF08 8FAC0044 */  lw         $t4, 0x44($sp)
/* CCB0C 800CBF0C 24040001 */  addiu      $a0, $zero, 1
/* CCB10 800CBF10 8D590014 */  lw         $t9, 0x14($t2)
/* CCB14 800CBF14 8D85000C */  lw         $a1, 0xc($t4)
/* CCB18 800CBF18 8D860008 */  lw         $a2, 8($t4)
/* CCB1C 800CBF1C 0320F809 */  jalr       $t9
/* CCB20 800CBF20 8D870010 */   lw        $a3, 0x10($t4)
/* CCB24 800CBF24 1000002F */  b          .L800CBFE4
/* CCB28 800CBF28 AFA20038 */   sw        $v0, 0x38($sp)
/* CCB2C 800CBF2C 8FAF0034 */  lw         $t7, 0x34($sp)
/* CCB30 800CBF30 27A5003C */  addiu      $a1, $sp, 0x3c
/* CCB34 800CBF34 24060001 */  addiu      $a2, $zero, 1
/* CCB38 800CBF38 0C02F85C */  jal        func_800BE170
/* CCB3C 800CBF3C 8DE40010 */   lw        $a0, 0x10($t7)
/* CCB40 800CBF40 8FA80044 */  lw         $t0, 0x44($sp)
/* CCB44 800CBF44 8FAD0034 */  lw         $t5, 0x34($sp)
/* CCB48 800CBF48 00002825 */  or         $a1, $zero, $zero
/* CCB4C 800CBF4C 8D090010 */  lw         $t1, 0x10($t0)
/* CCB50 800CBF50 8D040014 */  lw         $a0, 0x14($t0)
/* CCB54 800CBF54 8D06000C */  lw         $a2, 0xc($t0)
/* CCB58 800CBF58 8D070008 */  lw         $a3, 8($t0)
/* CCB5C 800CBF5C AFA90010 */  sw         $t1, 0x10($sp)
/* CCB60 800CBF60 8DB90018 */  lw         $t9, 0x18($t5)
/* CCB64 800CBF64 0320F809 */  jalr       $t9
/* CCB68 800CBF68 00000000 */   nop
/* CCB6C 800CBF6C 1000001D */  b          .L800CBFE4
/* CCB70 800CBF70 AFA20038 */   sw        $v0, 0x38($sp)
/* CCB74 800CBF74 8FAB0034 */  lw         $t3, 0x34($sp)
/* CCB78 800CBF78 27A5003C */  addiu      $a1, $sp, 0x3c
/* CCB7C 800CBF7C 24060001 */  addiu      $a2, $zero, 1
/* CCB80 800CBF80 0C02F85C */  jal        func_800BE170
/* CCB84 800CBF84 8D640010 */   lw        $a0, 0x10($t3)
/* CCB88 800CBF88 8FAE0044 */  lw         $t6, 0x44($sp)
/* CCB8C 800CBF8C 8FAC0034 */  lw         $t4, 0x34($sp)
/* CCB90 800CBF90 24050001 */  addiu      $a1, $zero, 1
/* CCB94 800CBF94 8DD80010 */  lw         $t8, 0x10($t6)
/* CCB98 800CBF98 8DC40014 */  lw         $a0, 0x14($t6)
/* CCB9C 800CBF9C 8DC6000C */  lw         $a2, 0xc($t6)
/* CCBA0 800CBFA0 8DC70008 */  lw         $a3, 8($t6)
/* CCBA4 800CBFA4 AFB80010 */  sw         $t8, 0x10($sp)
/* CCBA8 800CBFA8 8D990018 */  lw         $t9, 0x18($t4)
/* CCBAC 800CBFAC 0320F809 */  jalr       $t9
/* CCBB0 800CBFB0 00000000 */   nop
/* CCBB4 800CBFB4 1000000B */  b          .L800CBFE4
/* CCBB8 800CBFB8 AFA20038 */   sw        $v0, 0x38($sp)
/* CCBBC 800CBFBC 8FAA0044 */  lw         $t2, 0x44($sp)
/* CCBC0 800CBFC0 00003025 */  or         $a2, $zero, $zero
/* CCBC4 800CBFC4 8D440004 */  lw         $a0, 4($t2)
/* CCBC8 800CBFC8 0C02F7A8 */  jal        func_800BDEA0
/* CCBCC 800CBFCC 01402825 */   or        $a1, $t2, $zero
/* CCBD0 800CBFD0 240FFFFF */  addiu      $t7, $zero, -1
/* CCBD4 800CBFD4 10000003 */  b          .L800CBFE4
/* CCBD8 800CBFD8 AFAF0038 */   sw        $t7, 0x38($sp)
.L800CBFDC:
/* CCBDC 800CBFDC 2408FFFF */  addiu      $t0, $zero, -1
/* CCBE0 800CBFE0 AFA80038 */  sw         $t0, 0x38($sp)
.L800CBFE4:
/* CCBE4 800CBFE4 8FA90038 */  lw         $t1, 0x38($sp)
/* CCBE8 800CBFE8 1520FEFD */  bnez       $t1, .L800CBBE0
/* CCBEC 800CBFEC 00000000 */   nop
/* CCBF0 800CBFF0 8FAD0034 */  lw         $t5, 0x34($sp)
/* CCBF4 800CBFF4 27A50040 */  addiu      $a1, $sp, 0x40
/* CCBF8 800CBFF8 24060001 */  addiu      $a2, $zero, 1
/* CCBFC 800CBFFC 0C02F85C */  jal        func_800BE170
/* CCC00 800CC000 8DA4000C */   lw        $a0, 0xc($t5)
/* CCC04 800CC004 8FAB0044 */  lw         $t3, 0x44($sp)
/* CCC08 800CC008 00003025 */  or         $a2, $zero, $zero
/* CCC0C 800CC00C 8D640004 */  lw         $a0, 4($t3)
/* CCC10 800CC010 0C02F7A8 */  jal        func_800BDEA0
/* CCC14 800CC014 01602825 */   or        $a1, $t3, $zero
/* CCC18 800CC018 8FAE0034 */  lw         $t6, 0x34($sp)
/* CCC1C 800CC01C 00002825 */  or         $a1, $zero, $zero
/* CCC20 800CC020 00003025 */  or         $a2, $zero, $zero
/* CCC24 800CC024 0C02F7A8 */  jal        func_800BDEA0
/* CCC28 800CC028 8DC40010 */   lw        $a0, 0x10($t6)
/* CCC2C 800CC02C 1000FEEC */  b          .L800CBBE0
/* CCC30 800CC030 00000000 */   nop
/* CCC34 800CC034 00000000 */  nop
/* CCC38 800CC038 00000000 */  nop
/* CCC3C 800CC03C 00000000 */  nop
/* CCC40 800CC040 8FBF001C */  lw         $ra, 0x1c($sp)
/* CCC44 800CC044 27BD0048 */  addiu      $sp, $sp, 0x48
/* CCC48 800CC048 03E00008 */  jr         $ra
/* CCC4C 800CC04C 00000000 */   nop

glabel func_800CC050
/* CCC50 800CC050 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CCC54 800CC054 AFBF001C */  sw         $ra, 0x1c($sp)
/* CCC58 800CC058 AFA40028 */  sw         $a0, 0x28($sp)
/* CCC5C 800CC05C AFA5002C */  sw         $a1, 0x2c($sp)
/* CCC60 800CC060 AFA60030 */  sw         $a2, 0x30($sp)
/* CCC64 800CC064 AFA70034 */  sw         $a3, 0x34($sp)
/* CCC68 800CC068 AFB10018 */  sw         $s1, 0x18($sp)
/* CCC6C 800CC06C AFB00014 */  sw         $s0, 0x14($sp)
/* CCC70 800CC070 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* CCC74 800CC074 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* CCC78 800CC078 320F0003 */  andi       $t7, $s0, 3
/* CCC7C 800CC07C 11E00006 */  beqz       $t7, .L800CC098
/* CCC80 800CC080 00000000 */   nop
.L800CC084:
/* CCC84 800CC084 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* CCC88 800CC088 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* CCC8C 800CC08C 32190003 */  andi       $t9, $s0, 3
/* CCC90 800CC090 1720FFFC */  bnez       $t9, .L800CC084
/* CCC94 800CC094 00000000 */   nop
.L800CC098:
/* CCC98 800CC098 0C030C38 */  jal        func_800C30E0
/* CCC9C 800CC09C 8FA40030 */   lw        $a0, 0x30($sp)
/* CCCA0 800CC0A0 3C08A460 */  lui        $t0, 0xa460
/* CCCA4 800CC0A4 AD020000 */  sw         $v0, ($t0)
/* CCCA8 800CC0A8 3C098000 */  lui        $t1, %hi(D_80000308)
/* CCCAC 800CC0AC 8D290308 */  lw         $t1, %lo(D_80000308)($t1)
/* CCCB0 800CC0B0 8FAA002C */  lw         $t2, 0x2c($sp)
/* CCCB4 800CC0B4 3C011FFF */  lui        $at, 0x1fff
/* CCCB8 800CC0B8 3421FFFF */  ori        $at, $at, 0xffff
/* CCCBC 800CC0BC 012A5825 */  or         $t3, $t1, $t2
/* CCCC0 800CC0C0 01616024 */  and        $t4, $t3, $at
/* CCCC4 800CC0C4 3C0DA460 */  lui        $t5, %hi(D_A4600004)
/* CCCC8 800CC0C8 ADAC0004 */  sw         $t4, %lo(D_A4600004)($t5)
/* CCCCC 800CC0CC 8FB10028 */  lw         $s1, 0x28($sp)
/* CCCD0 800CC0D0 12200005 */  beqz       $s1, .L800CC0E8
/* CCCD4 800CC0D4 24010001 */   addiu     $at, $zero, 1
/* CCCD8 800CC0D8 12210008 */  beq        $s1, $at, .L800CC0FC
/* CCCDC 800CC0DC 00000000 */   nop
/* CCCE0 800CC0E0 1000000B */  b          .L800CC110
/* CCCE4 800CC0E4 00000000 */   nop
.L800CC0E8:
/* CCCE8 800CC0E8 8FAE0034 */  lw         $t6, 0x34($sp)
/* CCCEC 800CC0EC 3C18A460 */  lui        $t8, %hi(D_A460000C)
/* CCCF0 800CC0F0 25CFFFFF */  addiu      $t7, $t6, -1
/* CCCF4 800CC0F4 10000008 */  b          .L800CC118
/* CCCF8 800CC0F8 AF0F000C */   sw        $t7, %lo(D_A460000C)($t8)
.L800CC0FC:
/* CCCFC 800CC0FC 8FB90034 */  lw         $t9, 0x34($sp)
/* CCD00 800CC100 3C09A460 */  lui        $t1, %hi(D_A4600008)
/* CCD04 800CC104 2728FFFF */  addiu      $t0, $t9, -1
/* CCD08 800CC108 10000003 */  b          .L800CC118
/* CCD0C 800CC10C AD280008 */   sw        $t0, %lo(D_A4600008)($t1)
.L800CC110:
/* CCD10 800CC110 10000002 */  b          .L800CC11C
/* CCD14 800CC114 2402FFFF */   addiu     $v0, $zero, -1
.L800CC118:
/* CCD18 800CC118 00001025 */  or         $v0, $zero, $zero
.L800CC11C:
/* CCD1C 800CC11C 8FBF001C */  lw         $ra, 0x1c($sp)
/* CCD20 800CC120 8FB00014 */  lw         $s0, 0x14($sp)
/* CCD24 800CC124 8FB10018 */  lw         $s1, 0x18($sp)
/* CCD28 800CC128 03E00008 */  jr         $ra
/* CCD2C 800CC12C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800CC130
/* CCD30 800CC130 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* CCD34 800CC134 AFBF001C */  sw         $ra, 0x1c($sp)
/* CCD38 800CC138 AFA40028 */  sw         $a0, 0x28($sp)
/* CCD3C 800CC13C AFA5002C */  sw         $a1, 0x2c($sp)
/* CCD40 800CC140 AFA60030 */  sw         $a2, 0x30($sp)
/* CCD44 800CC144 0C033DD4 */  jal        func_800CF750
/* CCD48 800CC148 AFB00018 */   sw        $s0, 0x18($sp)
/* CCD4C 800CC14C 8FAE0028 */  lw         $t6, 0x28($sp)
/* CCD50 800CC150 3C188014 */  lui        $t8, %hi(D_80146B80)
/* CCD54 800CC154 8FA8002C */  lw         $t0, 0x2c($sp)
/* CCD58 800CC158 27186B80 */  addiu      $t8, $t8, %lo(D_80146B80)
/* CCD5C 800CC15C 000E78C0 */  sll        $t7, $t6, 3
/* CCD60 800CC160 01F8C821 */  addu       $t9, $t7, $t8
/* CCD64 800CC164 AFB90020 */  sw         $t9, 0x20($sp)
/* CCD68 800CC168 AF280000 */  sw         $t0, ($t9)
/* CCD6C 800CC16C 8FAA0020 */  lw         $t2, 0x20($sp)
/* CCD70 800CC170 8FA90030 */  lw         $t1, 0x30($sp)
/* CCD74 800CC174 00408025 */  or         $s0, $v0, $zero
/* CCD78 800CC178 02002025 */  or         $a0, $s0, $zero
/* CCD7C 800CC17C 0C033DDC */  jal        func_800CF770
/* CCD80 800CC180 AD490004 */   sw        $t1, 4($t2)
/* CCD84 800CC184 8FBF001C */  lw         $ra, 0x1c($sp)
/* CCD88 800CC188 8FB00018 */  lw         $s0, 0x18($sp)
/* CCD8C 800CC18C 27BD0028 */  addiu      $sp, $sp, 0x28
/* CCD90 800CC190 03E00008 */  jr         $ra
/* CCD94 800CC194 00000000 */   nop
/* CCD98 800CC198 00000000 */  nop
/* CCD9C 800CC19C 00000000 */  nop

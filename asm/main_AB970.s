.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AAD70
/* AB970 800AAD70 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* AB974 800AAD74 AFBF001C */  sw         $ra, 0x1c($sp)
/* AB978 800AAD78 AFA40048 */  sw         $a0, 0x48($sp)
/* AB97C 800AAD7C AFA00030 */  sw         $zero, 0x30($sp)
/* AB980 800AAD80 8FAE0048 */  lw         $t6, 0x48($sp)
/* AB984 800AAD84 AFAE0034 */  sw         $t6, 0x34($sp)
/* AB988 800AAD88 AFA00044 */  sw         $zero, 0x44($sp)
/* AB98C 800AAD8C AFA00038 */  sw         $zero, 0x38($sp)
.L800AAD90:
/* AB990 800AAD90 8FAF0034 */  lw         $t7, 0x34($sp)
/* AB994 800AAD94 27A50044 */  addiu      $a1, $sp, 0x44
/* AB998 800AAD98 24060001 */  addiu      $a2, $zero, 1
/* AB99C 800AAD9C 0C025D30 */  jal        func_800974C0
/* AB9A0 800AADA0 8DE40008 */   lw        $a0, 8($t7)
/* AB9A4 800AADA4 8FB80044 */  lw         $t8, 0x44($sp)
/* AB9A8 800AADA8 8F190014 */  lw         $t9, 0x14($t8)
/* AB9AC 800AADAC 132000A9 */  beqz       $t9, .L800AB054
/* AB9B0 800AADB0 00000000 */   nop
/* AB9B4 800AADB4 93280004 */  lbu        $t0, 4($t9)
/* AB9B8 800AADB8 24010002 */  addiu      $at, $zero, 2
/* AB9BC 800AADBC 150100A5 */  bne        $t0, $at, .L800AB054
/* AB9C0 800AADC0 00000000 */   nop
/* AB9C4 800AADC4 8F290014 */  lw         $t1, 0x14($t9)
/* AB9C8 800AADC8 11200004 */  beqz       $t1, .L800AADDC
/* AB9CC 800AADCC 00000000 */   nop
/* AB9D0 800AADD0 24010001 */  addiu      $at, $zero, 1
/* AB9D4 800AADD4 1521009F */  bne        $t1, $at, .L800AB054
/* AB9D8 800AADD8 00000000 */   nop
.L800AADDC:
/* AB9DC 800AADDC 8FAA0044 */  lw         $t2, 0x44($sp)
/* AB9E0 800AADE0 8D4B0014 */  lw         $t3, 0x14($t2)
/* AB9E4 800AADE4 256C0014 */  addiu      $t4, $t3, 0x14
/* AB9E8 800AADE8 AFAC0028 */  sw         $t4, 0x28($sp)
/* AB9EC 800AADEC 8FAD0028 */  lw         $t5, 0x28($sp)
/* AB9F0 800AADF0 95AE0006 */  lhu        $t6, 6($t5)
/* AB9F4 800AADF4 000E78C0 */  sll        $t7, $t6, 3
/* AB9F8 800AADF8 01EE7821 */  addu       $t7, $t7, $t6
/* AB9FC 800AADFC 000F7880 */  sll        $t7, $t7, 2
/* ABA00 800AAE00 01AFC021 */  addu       $t8, $t5, $t7
/* ABA04 800AAE04 27080018 */  addiu      $t0, $t8, 0x18
/* ABA08 800AAE08 AFA8002C */  sw         $t0, 0x2c($sp)
/* ABA0C 800AAE0C 8FA90028 */  lw         $t1, 0x28($sp)
/* ABA10 800AAE10 2419FFFF */  addiu      $t9, $zero, -1
/* ABA14 800AAE14 AD390008 */  sw         $t9, 8($t1)
/* ABA18 800AAE18 8FAA0028 */  lw         $t2, 0x28($sp)
/* ABA1C 800AAE1C 24010003 */  addiu      $at, $zero, 3
/* ABA20 800AAE20 954B0004 */  lhu        $t3, 4($t2)
/* ABA24 800AAE24 11610006 */  beq        $t3, $at, .L800AAE40
/* ABA28 800AAE28 00000000 */   nop
/* ABA2C 800AAE2C 8FAC002C */  lw         $t4, 0x2c($sp)
/* ABA30 800AAE30 8D8E0004 */  lw         $t6, 4($t4)
/* ABA34 800AAE34 8D8D000C */  lw         $t5, 0xc($t4)
/* ABA38 800AAE38 01CD7823 */  subu       $t7, $t6, $t5
/* ABA3C 800AAE3C AD8F0004 */  sw         $t7, 4($t4)
.L800AAE40:
/* ABA40 800AAE40 8FB80028 */  lw         $t8, 0x28($sp)
/* ABA44 800AAE44 24010002 */  addiu      $at, $zero, 2
/* ABA48 800AAE48 97080004 */  lhu        $t0, 4($t8)
/* ABA4C 800AAE4C 15010009 */  bne        $t0, $at, .L800AAE74
/* ABA50 800AAE50 00000000 */   nop
/* ABA54 800AAE54 8FB90044 */  lw         $t9, 0x44($sp)
/* ABA58 800AAE58 8F290014 */  lw         $t1, 0x14($t9)
/* ABA5C 800AAE5C 8D2A0014 */  lw         $t2, 0x14($t1)
/* ABA60 800AAE60 15400004 */  bnez       $t2, .L800AAE74
/* ABA64 800AAE64 00000000 */   nop
/* ABA68 800AAE68 240B0001 */  addiu      $t3, $zero, 1
/* ABA6C 800AAE6C 10000002 */  b          .L800AAE78
/* ABA70 800AAE70 AFAB0030 */   sw        $t3, 0x30($sp)
.L800AAE74:
/* ABA74 800AAE74 AFA00030 */  sw         $zero, 0x30($sp)
.L800AAE78:
/* ABA78 800AAE78 8FAE0034 */  lw         $t6, 0x34($sp)
/* ABA7C 800AAE7C 27A5003C */  addiu      $a1, $sp, 0x3c
/* ABA80 800AAE80 24060001 */  addiu      $a2, $zero, 1
/* ABA84 800AAE84 0C025D30 */  jal        func_800974C0
/* ABA88 800AAE88 8DC40010 */   lw        $a0, 0x10($t6)
/* ABA8C 800AAE8C 3C040010 */  lui        $a0, 0x10
/* ABA90 800AAE90 0C02BF14 */  jal        func_800AFC50
/* ABA94 800AAE94 34840401 */   ori       $a0, $a0, 0x401
/* ABA98 800AAE98 8FAF0028 */  lw         $t7, 0x28($sp)
/* ABA9C 800AAE9C 8FAD0044 */  lw         $t5, 0x44($sp)
/* ABAA0 800AAEA0 3C018000 */  lui        $at, 0x8000
/* ABAA4 800AAEA4 8DE60010 */  lw         $a2, 0x10($t7)
/* ABAA8 800AAEA8 3C050500 */  lui        $a1, 0x500
/* ABAAC 800AAEAC 34A50510 */  ori        $a1, $a1, 0x510
/* ABAB0 800AAEB0 00C16025 */  or         $t4, $a2, $at
/* ABAB4 800AAEB4 01803025 */  or         $a2, $t4, $zero
/* ABAB8 800AAEB8 0C02DCE8 */  jal        func_800B73A0
/* ABABC 800AAEBC 8DA40014 */   lw        $a0, 0x14($t5)
.L800AAEC0:
/* ABAC0 800AAEC0 8FB80034 */  lw         $t8, 0x34($sp)
/* ABAC4 800AAEC4 27A50040 */  addiu      $a1, $sp, 0x40
/* ABAC8 800AAEC8 24060001 */  addiu      $a2, $zero, 1
/* ABACC 800AAECC 0C025D30 */  jal        func_800974C0
/* ABAD0 800AAED0 8F04000C */   lw        $a0, 0xc($t8)
/* ABAD4 800AAED4 8FA80044 */  lw         $t0, 0x44($sp)
/* ABAD8 800AAED8 8D190014 */  lw         $t9, 0x14($t0)
/* ABADC 800AAEDC 27290014 */  addiu      $t1, $t9, 0x14
/* ABAE0 800AAEE0 AFA90028 */  sw         $t1, 0x28($sp)
/* ABAE4 800AAEE4 8FAA0028 */  lw         $t2, 0x28($sp)
/* ABAE8 800AAEE8 954B0006 */  lhu        $t3, 6($t2)
/* ABAEC 800AAEEC 000B70C0 */  sll        $t6, $t3, 3
/* ABAF0 800AAEF0 01CB7021 */  addu       $t6, $t6, $t3
/* ABAF4 800AAEF4 000E7080 */  sll        $t6, $t6, 2
/* ABAF8 800AAEF8 014E6821 */  addu       $t5, $t2, $t6
/* ABAFC 800AAEFC 25AF0018 */  addiu      $t7, $t5, 0x18
/* ABB00 800AAF00 AFAF002C */  sw         $t7, 0x2c($sp)
/* ABB04 800AAF04 8FAC002C */  lw         $t4, 0x2c($sp)
/* ABB08 800AAF08 2401001D */  addiu      $at, $zero, 0x1d
/* ABB0C 800AAF0C 8D980000 */  lw         $t8, ($t4)
/* ABB10 800AAF10 17010030 */  bne        $t8, $at, .L800AAFD4
/* ABB14 800AAF14 00000000 */   nop
/* ABB18 800AAF18 8FB90028 */  lw         $t9, 0x28($sp)
/* ABB1C 800AAF1C 8FA80044 */  lw         $t0, 0x44($sp)
/* ABB20 800AAF20 3C011000 */  lui        $at, 0x1000
/* ABB24 800AAF24 8F260010 */  lw         $a2, 0x10($t9)
/* ABB28 800AAF28 3C050500 */  lui        $a1, 0x500
/* ABB2C 800AAF2C 34A50510 */  ori        $a1, $a1, 0x510
/* ABB30 800AAF30 00C14825 */  or         $t1, $a2, $at
/* ABB34 800AAF34 01203025 */  or         $a2, $t1, $zero
/* ABB38 800AAF38 0C02DCE8 */  jal        func_800B73A0
/* ABB3C 800AAF3C 8D040014 */   lw        $a0, 0x14($t0)
/* ABB40 800AAF40 8FAB0044 */  lw         $t3, 0x44($sp)
/* ABB44 800AAF44 8FAA0028 */  lw         $t2, 0x28($sp)
/* ABB48 800AAF48 3C050500 */  lui        $a1, 0x500
/* ABB4C 800AAF4C 34A50510 */  ori        $a1, $a1, 0x510
/* ABB50 800AAF50 8D640014 */  lw         $a0, 0x14($t3)
/* ABB54 800AAF54 0C02DCE8 */  jal        func_800B73A0
/* ABB58 800AAF58 8D460010 */   lw        $a2, 0x10($t2)
/* ABB5C 800AAF5C 8FAE0044 */  lw         $t6, 0x44($sp)
/* ABB60 800AAF60 3C050500 */  lui        $a1, 0x500
/* ABB64 800AAF64 34A50508 */  ori        $a1, $a1, 0x508
/* ABB68 800AAF68 27A60024 */  addiu      $a2, $sp, 0x24
/* ABB6C 800AAF6C 0C02D95C */  jal        func_800B6570
/* ABB70 800AAF70 8DC40014 */   lw        $a0, 0x14($t6)
/* ABB74 800AAF74 8FAD0024 */  lw         $t5, 0x24($sp)
/* ABB78 800AAF78 3C010200 */  lui        $at, 0x200
/* ABB7C 800AAF7C 01A17824 */  and        $t7, $t5, $at
/* ABB80 800AAF80 11E0000B */  beqz       $t7, .L800AAFB0
/* ABB84 800AAF84 00000000 */   nop
/* ABB88 800AAF88 8FB80028 */  lw         $t8, 0x28($sp)
/* ABB8C 800AAF8C 8FAC0044 */  lw         $t4, 0x44($sp)
/* ABB90 800AAF90 3C010100 */  lui        $at, 0x100
/* ABB94 800AAF94 8F060010 */  lw         $a2, 0x10($t8)
/* ABB98 800AAF98 3C050500 */  lui        $a1, 0x500
/* ABB9C 800AAF9C 34A50510 */  ori        $a1, $a1, 0x510
/* ABBA0 800AAFA0 00C14025 */  or         $t0, $a2, $at
/* ABBA4 800AAFA4 01003025 */  or         $a2, $t0, $zero
/* ABBA8 800AAFA8 0C02DCE8 */  jal        func_800B73A0
/* ABBAC 800AAFAC 8D840014 */   lw        $a0, 0x14($t4)
.L800AAFB0:
/* ABBB0 800AAFB0 8FA9002C */  lw         $t1, 0x2c($sp)
/* ABBB4 800AAFB4 24190004 */  addiu      $t9, $zero, 4
/* ABBB8 800AAFB8 AD390000 */  sw         $t9, ($t1)
/* ABBBC 800AAFBC 240B0002 */  addiu      $t3, $zero, 2
/* ABBC0 800AAFC0 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* ABBC4 800AAFC4 AD4B0010 */  sw         $t3, %lo(D_A4600010)($t2)
/* ABBC8 800AAFC8 3C040010 */  lui        $a0, 0x10
/* ABBCC 800AAFCC 0C02BCC0 */  jal        func_800AF300
/* ABBD0 800AAFD0 34840C01 */   ori       $a0, $a0, 0xc01
.L800AAFD4:
/* ABBD4 800AAFD4 8FAE0044 */  lw         $t6, 0x44($sp)
/* ABBD8 800AAFD8 00003025 */  or         $a2, $zero, $zero
/* ABBDC 800AAFDC 8DC40004 */  lw         $a0, 4($t6)
/* ABBE0 800AAFE0 0C025C40 */  jal        func_80097100
/* ABBE4 800AAFE4 01C02825 */   or        $a1, $t6, $zero
/* ABBE8 800AAFE8 8FAD0030 */  lw         $t5, 0x30($sp)
/* ABBEC 800AAFEC 24010001 */  addiu      $at, $zero, 1
/* ABBF0 800AAFF0 15A10009 */  bne        $t5, $at, .L800AB018
/* ABBF4 800AAFF4 00000000 */   nop
/* ABBF8 800AAFF8 8FAF0044 */  lw         $t7, 0x44($sp)
/* ABBFC 800AAFFC 8DEC0014 */  lw         $t4, 0x14($t7)
/* ABC00 800AB000 8D98002C */  lw         $t8, 0x2c($t4)
/* ABC04 800AB004 17000004 */  bnez       $t8, .L800AB018
/* ABC08 800AB008 00000000 */   nop
/* ABC0C 800AB00C AFA00030 */  sw         $zero, 0x30($sp)
/* ABC10 800AB010 1000FFAB */  b          .L800AAEC0
/* ABC14 800AB014 00000000 */   nop
.L800AB018:
/* ABC18 800AB018 8FA80034 */  lw         $t0, 0x34($sp)
/* ABC1C 800AB01C 00002825 */  or         $a1, $zero, $zero
/* ABC20 800AB020 00003025 */  or         $a2, $zero, $zero
/* ABC24 800AB024 0C025C40 */  jal        func_80097100
/* ABC28 800AB028 8D040010 */   lw        $a0, 0x10($t0)
/* ABC2C 800AB02C 8FB90044 */  lw         $t9, 0x44($sp)
/* ABC30 800AB030 24010001 */  addiu      $at, $zero, 1
/* ABC34 800AB034 8F290014 */  lw         $t1, 0x14($t9)
/* ABC38 800AB038 952B001A */  lhu        $t3, 0x1a($t1)
/* ABC3C 800AB03C 15610003 */  bne        $t3, $at, .L800AB04C
/* ABC40 800AB040 00000000 */   nop
/* ABC44 800AB044 0C02DB14 */  jal        func_800B6C50
/* ABC48 800AB048 00000000 */   nop
.L800AB04C:
/* ABC4C 800AB04C 10000072 */  b          .L800AB218
/* ABC50 800AB050 00000000 */   nop
.L800AB054:
/* ABC54 800AB054 8FAA0044 */  lw         $t2, 0x44($sp)
/* ABC58 800AB058 954E0000 */  lhu        $t6, ($t2)
/* ABC5C 800AB05C 25CDFFF6 */  addiu      $t5, $t6, -0xa
/* ABC60 800AB060 2DA10007 */  sltiu      $at, $t5, 7
/* ABC64 800AB064 10200056 */  beqz       $at, .L800AB1C0
/* ABC68 800AB068 00000000 */   nop
/* ABC6C 800AB06C 000D6880 */  sll        $t5, $t5, 2
/* ABC70 800AB070 3C01800D */  lui        $at, %hi(D_800D34C0)
/* ABC74 800AB074 002D0821 */  addu       $at, $at, $t5
/* ABC78 800AB078 8C2D34C0 */  lw         $t5, %lo(D_800D34C0)($at)
/* ABC7C 800AB07C 01A00008 */  jr         $t5
/* ABC80 800AB080 00000000 */   nop
/* ABC84 800AB084 8FAF0034 */  lw         $t7, 0x34($sp)
/* ABC88 800AB088 27A5003C */  addiu      $a1, $sp, 0x3c
/* ABC8C 800AB08C 24060001 */  addiu      $a2, $zero, 1
/* ABC90 800AB090 0C025D30 */  jal        func_800974C0
/* ABC94 800AB094 8DE40010 */   lw        $a0, 0x10($t7)
/* ABC98 800AB098 8FB80034 */  lw         $t8, 0x34($sp)
/* ABC9C 800AB09C 8FAC0044 */  lw         $t4, 0x44($sp)
/* ABCA0 800AB0A0 00002025 */  or         $a0, $zero, $zero
/* ABCA4 800AB0A4 8F190014 */  lw         $t9, 0x14($t8)
/* ABCA8 800AB0A8 8D85000C */  lw         $a1, 0xc($t4)
/* ABCAC 800AB0AC 8D860008 */  lw         $a2, 8($t4)
/* ABCB0 800AB0B0 0320F809 */  jalr       $t9
/* ABCB4 800AB0B4 8D870010 */   lw        $a3, 0x10($t4)
/* ABCB8 800AB0B8 AFA20038 */  sw         $v0, 0x38($sp)
/* ABCBC 800AB0BC 10000044 */  b          .L800AB1D0
/* ABCC0 800AB0C0 00000000 */   nop
/* ABCC4 800AB0C4 8FA80034 */  lw         $t0, 0x34($sp)
/* ABCC8 800AB0C8 27A5003C */  addiu      $a1, $sp, 0x3c
/* ABCCC 800AB0CC 24060001 */  addiu      $a2, $zero, 1
/* ABCD0 800AB0D0 0C025D30 */  jal        func_800974C0
/* ABCD4 800AB0D4 8D040010 */   lw        $a0, 0x10($t0)
/* ABCD8 800AB0D8 8FAB0034 */  lw         $t3, 0x34($sp)
/* ABCDC 800AB0DC 8FA90044 */  lw         $t1, 0x44($sp)
/* ABCE0 800AB0E0 24040001 */  addiu      $a0, $zero, 1
/* ABCE4 800AB0E4 8D790014 */  lw         $t9, 0x14($t3)
/* ABCE8 800AB0E8 8D25000C */  lw         $a1, 0xc($t1)
/* ABCEC 800AB0EC 8D260008 */  lw         $a2, 8($t1)
/* ABCF0 800AB0F0 0320F809 */  jalr       $t9
/* ABCF4 800AB0F4 8D270010 */   lw        $a3, 0x10($t1)
/* ABCF8 800AB0F8 AFA20038 */  sw         $v0, 0x38($sp)
/* ABCFC 800AB0FC 10000034 */  b          .L800AB1D0
/* ABD00 800AB100 00000000 */   nop
/* ABD04 800AB104 8FAA0034 */  lw         $t2, 0x34($sp)
/* ABD08 800AB108 27A5003C */  addiu      $a1, $sp, 0x3c
/* ABD0C 800AB10C 24060001 */  addiu      $a2, $zero, 1
/* ABD10 800AB110 0C025D30 */  jal        func_800974C0
/* ABD14 800AB114 8D440010 */   lw        $a0, 0x10($t2)
/* ABD18 800AB118 8FAE0044 */  lw         $t6, 0x44($sp)
/* ABD1C 800AB11C 8FAF0034 */  lw         $t7, 0x34($sp)
/* ABD20 800AB120 00002825 */  or         $a1, $zero, $zero
/* ABD24 800AB124 8DCD0010 */  lw         $t5, 0x10($t6)
/* ABD28 800AB128 8DC40014 */  lw         $a0, 0x14($t6)
/* ABD2C 800AB12C 8DC6000C */  lw         $a2, 0xc($t6)
/* ABD30 800AB130 8DC70008 */  lw         $a3, 8($t6)
/* ABD34 800AB134 AFAD0010 */  sw         $t5, 0x10($sp)
/* ABD38 800AB138 8DF90018 */  lw         $t9, 0x18($t7)
/* ABD3C 800AB13C 0320F809 */  jalr       $t9
/* ABD40 800AB140 00000000 */   nop
/* ABD44 800AB144 AFA20038 */  sw         $v0, 0x38($sp)
/* ABD48 800AB148 10000021 */  b          .L800AB1D0
/* ABD4C 800AB14C 00000000 */   nop
/* ABD50 800AB150 8FAC0034 */  lw         $t4, 0x34($sp)
/* ABD54 800AB154 27A5003C */  addiu      $a1, $sp, 0x3c
/* ABD58 800AB158 24060001 */  addiu      $a2, $zero, 1
/* ABD5C 800AB15C 0C025D30 */  jal        func_800974C0
/* ABD60 800AB160 8D840010 */   lw        $a0, 0x10($t4)
/* ABD64 800AB164 8FB80044 */  lw         $t8, 0x44($sp)
/* ABD68 800AB168 8FA90034 */  lw         $t1, 0x34($sp)
/* ABD6C 800AB16C 24050001 */  addiu      $a1, $zero, 1
/* ABD70 800AB170 8F080010 */  lw         $t0, 0x10($t8)
/* ABD74 800AB174 8F040014 */  lw         $a0, 0x14($t8)
/* ABD78 800AB178 8F06000C */  lw         $a2, 0xc($t8)
/* ABD7C 800AB17C 8F070008 */  lw         $a3, 8($t8)
/* ABD80 800AB180 AFA80010 */  sw         $t0, 0x10($sp)
/* ABD84 800AB184 8D390018 */  lw         $t9, 0x18($t1)
/* ABD88 800AB188 0320F809 */  jalr       $t9
/* ABD8C 800AB18C 00000000 */   nop
/* ABD90 800AB190 AFA20038 */  sw         $v0, 0x38($sp)
/* ABD94 800AB194 1000000E */  b          .L800AB1D0
/* ABD98 800AB198 00000000 */   nop
/* ABD9C 800AB19C 8FAB0044 */  lw         $t3, 0x44($sp)
/* ABDA0 800AB1A0 00003025 */  or         $a2, $zero, $zero
/* ABDA4 800AB1A4 8D640004 */  lw         $a0, 4($t3)
/* ABDA8 800AB1A8 0C025C40 */  jal        func_80097100
/* ABDAC 800AB1AC 01602825 */   or        $a1, $t3, $zero
/* ABDB0 800AB1B0 240AFFFF */  addiu      $t2, $zero, -1
/* ABDB4 800AB1B4 AFAA0038 */  sw         $t2, 0x38($sp)
/* ABDB8 800AB1B8 10000005 */  b          .L800AB1D0
/* ABDBC 800AB1BC 00000000 */   nop
.L800AB1C0:
/* ABDC0 800AB1C0 240EFFFF */  addiu      $t6, $zero, -1
/* ABDC4 800AB1C4 AFAE0038 */  sw         $t6, 0x38($sp)
/* ABDC8 800AB1C8 10000001 */  b          .L800AB1D0
/* ABDCC 800AB1CC 00000000 */   nop
.L800AB1D0:
/* ABDD0 800AB1D0 8FAD0038 */  lw         $t5, 0x38($sp)
/* ABDD4 800AB1D4 15A00010 */  bnez       $t5, .L800AB218
/* ABDD8 800AB1D8 00000000 */   nop
/* ABDDC 800AB1DC 8FAF0034 */  lw         $t7, 0x34($sp)
/* ABDE0 800AB1E0 27A50040 */  addiu      $a1, $sp, 0x40
/* ABDE4 800AB1E4 24060001 */  addiu      $a2, $zero, 1
/* ABDE8 800AB1E8 0C025D30 */  jal        func_800974C0
/* ABDEC 800AB1EC 8DE4000C */   lw        $a0, 0xc($t7)
/* ABDF0 800AB1F0 8FAC0044 */  lw         $t4, 0x44($sp)
/* ABDF4 800AB1F4 00003025 */  or         $a2, $zero, $zero
/* ABDF8 800AB1F8 8D840004 */  lw         $a0, 4($t4)
/* ABDFC 800AB1FC 0C025C40 */  jal        func_80097100
/* ABE00 800AB200 01802825 */   or        $a1, $t4, $zero
/* ABE04 800AB204 8FB80034 */  lw         $t8, 0x34($sp)
/* ABE08 800AB208 00002825 */  or         $a1, $zero, $zero
/* ABE0C 800AB20C 00003025 */  or         $a2, $zero, $zero
/* ABE10 800AB210 0C025C40 */  jal        func_80097100
/* ABE14 800AB214 8F040010 */   lw        $a0, 0x10($t8)
.L800AB218:
/* ABE18 800AB218 1000FEDD */  b          .L800AAD90
/* ABE1C 800AB21C 00000000 */   nop
/* ABE20 800AB220 10000001 */  b          .L800AB228
/* ABE24 800AB224 00000000 */   nop
.L800AB228:
/* ABE28 800AB228 8FBF001C */  lw         $ra, 0x1c($sp)
/* ABE2C 800AB22C 27BD0048 */  addiu      $sp, $sp, 0x48
/* ABE30 800AB230 03E00008 */  jr         $ra
/* ABE34 800AB234 00000000 */   nop
/* ABE38 800AB238 00000000 */  nop
/* ABE3C 800AB23C 00000000 */  nop

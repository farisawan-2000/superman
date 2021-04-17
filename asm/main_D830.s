.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000CC30
/* D830 8000CC30 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D834 8000CC34 3C0F800E */  lui        $t7, %hi(D_800DBC60)
/* D838 8000CC38 25EFBC60 */  addiu      $t7, $t7, %lo(D_800DBC60)
/* D83C 8000CC3C 25E8003C */  addiu      $t0, $t7, 0x3c
/* D840 8000CC40 27AE0004 */  addiu      $t6, $sp, 4
.L8000CC44:
/* D844 8000CC44 8DF90000 */  lw         $t9, ($t7)
/* D848 8000CC48 25EF000C */  addiu      $t7, $t7, 0xc
/* D84C 8000CC4C 25CE000C */  addiu      $t6, $t6, 0xc
/* D850 8000CC50 ADD9FFF4 */  sw         $t9, -0xc($t6)
/* D854 8000CC54 8DF8FFF8 */  lw         $t8, -8($t7)
/* D858 8000CC58 ADD8FFF8 */  sw         $t8, -8($t6)
/* D85C 8000CC5C 8DF9FFFC */  lw         $t9, -4($t7)
/* D860 8000CC60 15E8FFF8 */  bne        $t7, $t0, .L8000CC44
/* D864 8000CC64 ADD9FFFC */   sw        $t9, -4($t6)
/* D868 8000CC68 8DF90000 */  lw         $t9, ($t7)
/* D86C 8000CC6C ADD90000 */  sw         $t9, ($t6)
/* D870 8000CC70 91F90004 */  lbu        $t9, 4($t7)
/* D874 8000CC74 A1D90004 */  sb         $t9, 4($t6)
/* D878 8000CC78 A7A00002 */  sh         $zero, 2($sp)
.L8000CC7C:
/* D87C 8000CC7C 87AA0002 */  lh         $t2, 2($sp)
/* D880 8000CC80 87AF0002 */  lh         $t7, 2($sp)
/* D884 8000CC84 87AD0002 */  lh         $t5, 2($sp)
/* D888 8000CC88 3C018014 */  lui        $at, %hi(D_8013D3A0)
/* D88C 8000CC8C 000A5840 */  sll        $t3, $t2, 1
/* D890 8000CC90 002B0821 */  addu       $at, $at, $t3
/* D894 8000CC94 2409FFFF */  addiu      $t1, $zero, -1
/* D898 8000CC98 A429D3A0 */  sh         $t1, %lo(D_8013D3A0)($at)
/* D89C 8000CC9C 3C018014 */  lui        $at, 0x8014
/* D8A0 8000CCA0 25EE0001 */  addiu      $t6, $t7, 1
/* D8A4 8000CCA4 000D4040 */  sll        $t0, $t5, 1
/* D8A8 8000CCA8 000EC400 */  sll        $t8, $t6, 0x10
/* D8AC 8000CCAC 00280821 */  addu       $at, $at, $t0
/* D8B0 8000CCB0 240CFFFF */  addiu      $t4, $zero, -1
/* D8B4 8000CCB4 0018CC03 */  sra        $t9, $t8, 0x10
/* D8B8 8000CCB8 A42CD5A0 */  sh         $t4, -0x2a60($at)
/* D8BC 8000CCBC 2B210100 */  slti       $at, $t9, 0x100
/* D8C0 8000CCC0 1420FFEE */  bnez       $at, .L8000CC7C
/* D8C4 8000CCC4 A7AE0002 */   sh        $t6, 2($sp)
/* D8C8 8000CCC8 A7A00002 */  sh         $zero, 2($sp)
/* D8CC 8000CCCC 27AA0004 */  addiu      $t2, $sp, 4
/* D8D0 8000CCD0 91490000 */  lbu        $t1, ($t2)
/* D8D4 8000CCD4 11200021 */  beqz       $t1, .L8000CD5C
/* D8D8 8000CCD8 00000000 */   nop
.L8000CCDC:
/* D8DC 8000CCDC 87AB0002 */  lh         $t3, 2($sp)
/* D8E0 8000CCE0 87AF0002 */  lh         $t7, 2($sp)
/* D8E4 8000CCE4 3C018014 */  lui        $at, 0x8014
/* D8E8 8000CCE8 03AB6021 */  addu       $t4, $sp, $t3
/* D8EC 8000CCEC 918C0004 */  lbu        $t4, 4($t4)
/* D8F0 8000CCF0 05610004 */  bgez       $t3, .L8000CD04
/* D8F4 8000CCF4 316D0007 */   andi      $t5, $t3, 7
/* D8F8 8000CCF8 11A00002 */  beqz       $t5, .L8000CD04
/* D8FC 8000CCFC 00000000 */   nop
/* D900 8000CD00 25ADFFF8 */  addiu      $t5, $t5, -8
.L8000CD04:
/* D904 8000CD04 000C4040 */  sll        $t0, $t4, 1
/* D908 8000CD08 00280821 */  addu       $at, $at, $t0
/* D90C 8000CD0C 87AA0002 */  lh         $t2, 2($sp)
/* D910 8000CD10 A42DD3A0 */  sh         $t5, -0x2c60($at)
/* D914 8000CD14 03AFC021 */  addu       $t8, $sp, $t7
/* D918 8000CD18 93180004 */  lbu        $t8, 4($t8)
/* D91C 8000CD1C 05E10003 */  bgez       $t7, .L8000CD2C
/* D920 8000CD20 000F70C3 */   sra       $t6, $t7, 3
/* D924 8000CD24 25E10007 */  addiu      $at, $t7, 7
/* D928 8000CD28 000170C3 */  sra        $t6, $at, 3
.L8000CD2C:
/* D92C 8000CD2C 25490001 */  addiu      $t1, $t2, 1
/* D930 8000CD30 00095C00 */  sll        $t3, $t1, 0x10
/* D934 8000CD34 3C018014 */  lui        $at, 0x8014
/* D938 8000CD38 0018C840 */  sll        $t9, $t8, 1
/* D93C 8000CD3C 000B6403 */  sra        $t4, $t3, 0x10
/* D940 8000CD40 00390821 */  addu       $at, $at, $t9
/* D944 8000CD44 03AC6821 */  addu       $t5, $sp, $t4
/* D948 8000CD48 A7A90002 */  sh         $t1, 2($sp)
/* D94C 8000CD4C A42ED5A0 */  sh         $t6, -0x2a60($at)
/* D950 8000CD50 91AD0004 */  lbu        $t5, 4($t5)
/* D954 8000CD54 15A0FFE1 */  bnez       $t5, .L8000CCDC
/* D958 8000CD58 00000000 */   nop
.L8000CD5C:
/* D95C 8000CD5C 03E00008 */  jr         $ra
/* D960 8000CD60 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8000CD64
/* D964 8000CD64 27BDFE78 */  addiu      $sp, $sp, -0x188
/* D968 8000CD68 00052C00 */  sll        $a1, $a1, 0x10
/* D96C 8000CD6C 00063400 */  sll        $a2, $a2, 0x10
/* D970 8000CD70 00063403 */  sra        $a2, $a2, 0x10
/* D974 8000CD74 00052C03 */  sra        $a1, $a1, 0x10
/* D978 8000CD78 AFA70194 */  sw         $a3, 0x194($sp)
/* D97C 8000CD7C AFA40178 */  sw         $a0, 0x178($sp)
/* D980 8000CD80 8FAE0178 */  lw         $t6, 0x178($sp)
/* D984 8000CD84 A7A00186 */  sh         $zero, 0x186($sp)
/* D988 8000CD88 A7A00182 */  sh         $zero, 0x182($sp)
/* D98C 8000CD8C A7A00180 */  sh         $zero, 0x180($sp)
/* D990 8000CD90 A3A00176 */  sb         $zero, 0x176($sp)
/* D994 8000CD94 91CF0000 */  lbu        $t7, ($t6)
/* D998 8000CD98 24010001 */  addiu      $at, $zero, 1
/* D99C 8000CD9C 11E101C7 */  beq        $t7, $at, .L8000D4BC
/* D9A0 8000CDA0 00000000 */   nop
/* D9A4 8000CDA4 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* D9A8 8000CDA8 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* D9AC 8000CDAC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* D9B0 8000CDB0 3C09E700 */  lui        $t1, 0xe700
/* D9B4 8000CDB4 AFB80170 */  sw         $t8, 0x170($sp)
/* D9B8 8000CDB8 8FAA0170 */  lw         $t2, 0x170($sp)
/* D9BC 8000CDBC 27190008 */  addiu      $t9, $t8, 8
/* D9C0 8000CDC0 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* D9C4 8000CDC4 AD490000 */  sw         $t1, ($t2)
/* D9C8 8000CDC8 8FAB0170 */  lw         $t3, 0x170($sp)
/* D9CC 8000CDCC AD600004 */  sw         $zero, 4($t3)
/* D9D0 8000CDD0 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* D9D4 8000CDD4 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* D9D8 8000CDD8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* D9DC 8000CDDC 3C0EBA00 */  lui        $t6, 0xba00
/* D9E0 8000CDE0 AFAC016C */  sw         $t4, 0x16c($sp)
/* D9E4 8000CDE4 8FAF016C */  lw         $t7, 0x16c($sp)
/* D9E8 8000CDE8 258D0008 */  addiu      $t5, $t4, 8
/* D9EC 8000CDEC AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* D9F0 8000CDF0 35CE1402 */  ori        $t6, $t6, 0x1402
/* D9F4 8000CDF4 ADEE0000 */  sw         $t6, ($t7)
/* D9F8 8000CDF8 8FB8016C */  lw         $t8, 0x16c($sp)
/* D9FC 8000CDFC AF000004 */  sw         $zero, 4($t8)
/* DA00 8000CE00 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* DA04 8000CE04 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* DA08 8000CE08 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DA0C 8000CE0C 3C0AB900 */  lui        $t2, 0xb900
/* DA10 8000CE10 AFB90168 */  sw         $t9, 0x168($sp)
/* DA14 8000CE14 8FAB0168 */  lw         $t3, 0x168($sp)
/* DA18 8000CE18 27290008 */  addiu      $t1, $t9, 8
/* DA1C 8000CE1C AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* DA20 8000CE20 354A031D */  ori        $t2, $t2, 0x31d
/* DA24 8000CE24 AD6A0000 */  sw         $t2, ($t3)
/* DA28 8000CE28 8FAD0168 */  lw         $t5, 0x168($sp)
/* DA2C 8000CE2C 3C0C0050 */  lui        $t4, 0x50
/* DA30 8000CE30 358C4240 */  ori        $t4, $t4, 0x4240
/* DA34 8000CE34 ADAC0004 */  sw         $t4, 4($t5)
/* DA38 8000CE38 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* DA3C 8000CE3C 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* DA40 8000CE40 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DA44 8000CE44 3C18E700 */  lui        $t8, 0xe700
/* DA48 8000CE48 AFAE0164 */  sw         $t6, 0x164($sp)
/* DA4C 8000CE4C 8FB90164 */  lw         $t9, 0x164($sp)
/* DA50 8000CE50 25CF0008 */  addiu      $t7, $t6, 8
/* DA54 8000CE54 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* DA58 8000CE58 AF380000 */  sw         $t8, ($t9)
/* DA5C 8000CE5C 8FA90164 */  lw         $t1, 0x164($sp)
/* DA60 8000CE60 AD200004 */  sw         $zero, 4($t1)
/* DA64 8000CE64 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* DA68 8000CE68 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* DA6C 8000CE6C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DA70 8000CE70 3C0CBA00 */  lui        $t4, 0xba00
/* DA74 8000CE74 AFAA0160 */  sw         $t2, 0x160($sp)
/* DA78 8000CE78 8FAD0160 */  lw         $t5, 0x160($sp)
/* DA7C 8000CE7C 254B0008 */  addiu      $t3, $t2, 8
/* DA80 8000CE80 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* DA84 8000CE84 358C1301 */  ori        $t4, $t4, 0x1301
/* DA88 8000CE88 ADAC0000 */  sw         $t4, ($t5)
/* DA8C 8000CE8C 8FAE0160 */  lw         $t6, 0x160($sp)
/* DA90 8000CE90 ADC00004 */  sw         $zero, 4($t6)
/* DA94 8000CE94 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* DA98 8000CE98 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* DA9C 8000CE9C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DAA0 8000CEA0 3C19BB00 */  lui        $t9, 0xbb00
/* DAA4 8000CEA4 AFAF015C */  sw         $t7, 0x15c($sp)
/* DAA8 8000CEA8 8FA9015C */  lw         $t1, 0x15c($sp)
/* DAAC 8000CEAC 25F80008 */  addiu      $t8, $t7, 8
/* DAB0 8000CEB0 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* DAB4 8000CEB4 37390001 */  ori        $t9, $t9, 1
/* DAB8 8000CEB8 AD390000 */  sw         $t9, ($t1)
/* DABC 8000CEBC 8FAB015C */  lw         $t3, 0x15c($sp)
/* DAC0 8000CEC0 240AFFFF */  addiu      $t2, $zero, -1
/* DAC4 8000CEC4 AD6A0004 */  sw         $t2, 4($t3)
/* DAC8 8000CEC8 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* DACC 8000CECC 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* DAD0 8000CED0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DAD4 8000CED4 3C0EE700 */  lui        $t6, 0xe700
/* DAD8 8000CED8 AFAC0158 */  sw         $t4, 0x158($sp)
/* DADC 8000CEDC 8FAF0158 */  lw         $t7, 0x158($sp)
/* DAE0 8000CEE0 258D0008 */  addiu      $t5, $t4, 8
/* DAE4 8000CEE4 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* DAE8 8000CEE8 ADEE0000 */  sw         $t6, ($t7)
/* DAEC 8000CEEC 8FB80158 */  lw         $t8, 0x158($sp)
/* DAF0 8000CEF0 AF000004 */  sw         $zero, 4($t8)
/* DAF4 8000CEF4 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* DAF8 8000CEF8 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* DAFC 8000CEFC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DB00 8000CF00 3C0AEE00 */  lui        $t2, 0xee00
/* DB04 8000CF04 AFB90154 */  sw         $t9, 0x154($sp)
/* DB08 8000CF08 8FAB0154 */  lw         $t3, 0x154($sp)
/* DB0C 8000CF0C 27290008 */  addiu      $t1, $t9, 8
/* DB10 8000CF10 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* DB14 8000CF14 AD6A0000 */  sw         $t2, ($t3)
/* DB18 8000CF18 8FAC0154 */  lw         $t4, 0x154($sp)
/* DB1C 8000CF1C AD800004 */  sw         $zero, 4($t4)
/* DB20 8000CF20 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* DB24 8000CF24 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* DB28 8000CF28 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DB2C 8000CF2C 3C0FFCFF */  lui        $t7, 0xfcff
/* DB30 8000CF30 AFAD0150 */  sw         $t5, 0x150($sp)
/* DB34 8000CF34 8FB80150 */  lw         $t8, 0x150($sp)
/* DB38 8000CF38 25AE0008 */  addiu      $t6, $t5, 8
/* DB3C 8000CF3C AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* DB40 8000CF40 35EFFFFF */  ori        $t7, $t7, 0xffff
/* DB44 8000CF44 AF0F0000 */  sw         $t7, ($t8)
/* DB48 8000CF48 8FA90150 */  lw         $t1, 0x150($sp)
/* DB4C 8000CF4C 3C19FFFC */  lui        $t9, 0xfffc
/* DB50 8000CF50 3739F279 */  ori        $t9, $t9, 0xf279
/* DB54 8000CF54 AD390004 */  sw         $t9, 4($t1)
/* DB58 8000CF58 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* DB5C 8000CF5C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* DB60 8000CF60 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DB64 8000CF64 3C0CBA00 */  lui        $t4, 0xba00
/* DB68 8000CF68 AFAA014C */  sw         $t2, 0x14c($sp)
/* DB6C 8000CF6C 8FAD014C */  lw         $t5, 0x14c($sp)
/* DB70 8000CF70 254B0008 */  addiu      $t3, $t2, 8
/* DB74 8000CF74 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* DB78 8000CF78 358C0C02 */  ori        $t4, $t4, 0xc02
/* DB7C 8000CF7C ADAC0000 */  sw         $t4, ($t5)
/* DB80 8000CF80 8FAF014C */  lw         $t7, 0x14c($sp)
/* DB84 8000CF84 240E2000 */  addiu      $t6, $zero, 0x2000
/* DB88 8000CF88 ADEE0004 */  sw         $t6, 4($t7)
/* DB8C 8000CF8C 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* DB90 8000CF90 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* DB94 8000CF94 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DB98 8000CF98 3C09BA00 */  lui        $t1, 0xba00
/* DB9C 8000CF9C AFB80148 */  sw         $t8, 0x148($sp)
/* DBA0 8000CFA0 8FAA0148 */  lw         $t2, 0x148($sp)
/* DBA4 8000CFA4 27190008 */  addiu      $t9, $t8, 8
/* DBA8 8000CFA8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* DBAC 8000CFAC 35290E02 */  ori        $t1, $t1, 0xe02
/* DBB0 8000CFB0 AD490000 */  sw         $t1, ($t2)
/* DBB4 8000CFB4 8FAC0148 */  lw         $t4, 0x148($sp)
/* DBB8 8000CFB8 340B8000 */  ori        $t3, $zero, 0x8000
/* DBBC 8000CFBC AD8B0004 */  sw         $t3, 4($t4)
/* DBC0 8000CFC0 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* DBC4 8000CFC4 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* DBC8 8000CFC8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DBCC 8000CFCC 3C0FFD50 */  lui        $t7, 0xfd50
/* DBD0 8000CFD0 AFAD0144 */  sw         $t5, 0x144($sp)
/* DBD4 8000CFD4 8FB80144 */  lw         $t8, 0x144($sp)
/* DBD8 8000CFD8 25AE0008 */  addiu      $t6, $t5, 8
/* DBDC 8000CFDC AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* DBE0 8000CFE0 AF0F0000 */  sw         $t7, ($t8)
/* DBE4 8000CFE4 8FA90144 */  lw         $t1, 0x144($sp)
/* DBE8 8000CFE8 3C198017 */  lui        $t9, %hi(D_801771B8)
/* DBEC 8000CFEC 273971B8 */  addiu      $t9, $t9, %lo(D_801771B8)
/* DBF0 8000CFF0 AD390004 */  sw         $t9, 4($t1)
/* DBF4 8000CFF4 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* DBF8 8000CFF8 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* DBFC 8000CFFC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DC00 8000D000 3C0CF550 */  lui        $t4, 0xf550
/* DC04 8000D004 AFAA0140 */  sw         $t2, 0x140($sp)
/* DC08 8000D008 8FAD0140 */  lw         $t5, 0x140($sp)
/* DC0C 8000D00C 254B0008 */  addiu      $t3, $t2, 8
/* DC10 8000D010 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* DC14 8000D014 ADAC0000 */  sw         $t4, ($t5)
/* DC18 8000D018 8FAF0140 */  lw         $t7, 0x140($sp)
/* DC1C 8000D01C 3C0E0701 */  lui        $t6, 0x701
/* DC20 8000D020 35CE8060 */  ori        $t6, $t6, 0x8060
/* DC24 8000D024 ADEE0004 */  sw         $t6, 4($t7)
/* DC28 8000D028 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* DC2C 8000D02C 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* DC30 8000D030 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DC34 8000D034 3C09E600 */  lui        $t1, 0xe600
/* DC38 8000D038 AFB8013C */  sw         $t8, 0x13c($sp)
/* DC3C 8000D03C 8FAA013C */  lw         $t2, 0x13c($sp)
/* DC40 8000D040 27190008 */  addiu      $t9, $t8, 8
/* DC44 8000D044 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* DC48 8000D048 AD490000 */  sw         $t1, ($t2)
/* DC4C 8000D04C 8FAB013C */  lw         $t3, 0x13c($sp)
/* DC50 8000D050 AD600004 */  sw         $zero, 4($t3)
/* DC54 8000D054 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* DC58 8000D058 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* DC5C 8000D05C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DC60 8000D060 3C0EF300 */  lui        $t6, 0xf300
/* DC64 8000D064 AFAC0138 */  sw         $t4, 0x138($sp)
/* DC68 8000D068 8FAF0138 */  lw         $t7, 0x138($sp)
/* DC6C 8000D06C 258D0008 */  addiu      $t5, $t4, 8
/* DC70 8000D070 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* DC74 8000D074 ADEE0000 */  sw         $t6, ($t7)
/* DC78 8000D078 8FB90138 */  lw         $t9, 0x138($sp)
/* DC7C 8000D07C 3C18073F */  lui        $t8, 0x73f
/* DC80 8000D080 3718F200 */  ori        $t8, $t8, 0xf200
/* DC84 8000D084 AF380004 */  sw         $t8, 4($t9)
/* DC88 8000D088 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* DC8C 8000D08C 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* DC90 8000D090 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DC94 8000D094 3C0BE700 */  lui        $t3, 0xe700
/* DC98 8000D098 AFA90134 */  sw         $t1, 0x134($sp)
/* DC9C 8000D09C 8FAC0134 */  lw         $t4, 0x134($sp)
/* DCA0 8000D0A0 252A0008 */  addiu      $t2, $t1, 8
/* DCA4 8000D0A4 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* DCA8 8000D0A8 AD8B0000 */  sw         $t3, ($t4)
/* DCAC 8000D0AC 8FAD0134 */  lw         $t5, 0x134($sp)
/* DCB0 8000D0B0 ADA00004 */  sw         $zero, 4($t5)
/* DCB4 8000D0B4 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* DCB8 8000D0B8 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* DCBC 8000D0BC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DCC0 8000D0C0 3C18F540 */  lui        $t8, 0xf540
/* DCC4 8000D0C4 AFAE0130 */  sw         $t6, 0x130($sp)
/* DCC8 8000D0C8 8FB90130 */  lw         $t9, 0x130($sp)
/* DCCC 8000D0CC 25CF0008 */  addiu      $t7, $t6, 8
/* DCD0 8000D0D0 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* DCD4 8000D0D4 37180800 */  ori        $t8, $t8, 0x800
/* DCD8 8000D0D8 AF380000 */  sw         $t8, ($t9)
/* DCDC 8000D0DC 8FAA0130 */  lw         $t2, 0x130($sp)
/* DCE0 8000D0E0 3C090001 */  lui        $t1, 1
/* DCE4 8000D0E4 35298060 */  ori        $t1, $t1, 0x8060
/* DCE8 8000D0E8 AD490004 */  sw         $t1, 4($t2)
/* DCEC 8000D0EC 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* DCF0 8000D0F0 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* DCF4 8000D0F4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DCF8 8000D0F8 3C0DF200 */  lui        $t5, 0xf200
/* DCFC 8000D0FC AFAB012C */  sw         $t3, 0x12c($sp)
/* DD00 8000D100 8FAE012C */  lw         $t6, 0x12c($sp)
/* DD04 8000D104 256C0008 */  addiu      $t4, $t3, 8
/* DD08 8000D108 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* DD0C 8000D10C ADCD0000 */  sw         $t5, ($t6)
/* DD10 8000D110 8FB8012C */  lw         $t8, 0x12c($sp)
/* DD14 8000D114 3C0F000F */  lui        $t7, 0xf
/* DD18 8000D118 35EFC0FC */  ori        $t7, $t7, 0xc0fc
/* DD1C 8000D11C AF0F0004 */  sw         $t7, 4($t8)
/* DD20 8000D120 93A801A3 */  lbu        $t0, 0x1a3($sp)
/* DD24 8000D124 11000007 */  beqz       $t0, .L8000D144
/* DD28 8000D128 24010001 */   addiu     $at, $zero, 1
/* DD2C 8000D12C 1101004F */  beq        $t0, $at, .L8000D26C
/* DD30 8000D130 24010002 */   addiu     $at, $zero, 2
/* DD34 8000D134 11010097 */  beq        $t0, $at, .L8000D394
/* DD38 8000D138 00000000 */   nop
/* DD3C 8000D13C 100000E2 */  b          .L8000D4C8
/* DD40 8000D140 00000000 */   nop
.L8000D144:
/* DD44 8000D144 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* DD48 8000D148 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* DD4C 8000D14C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DD50 8000D150 3C0AFD10 */  lui        $t2, 0xfd10
/* DD54 8000D154 AFB90128 */  sw         $t9, 0x128($sp)
/* DD58 8000D158 8FAB0128 */  lw         $t3, 0x128($sp)
/* DD5C 8000D15C 27290008 */  addiu      $t1, $t9, 8
/* DD60 8000D160 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* DD64 8000D164 AD6A0000 */  sw         $t2, ($t3)
/* DD68 8000D168 8FAD0128 */  lw         $t5, 0x128($sp)
/* DD6C 8000D16C 3C0C8017 */  lui        $t4, %hi(D_801779C0)
/* DD70 8000D170 258C79C0 */  addiu      $t4, $t4, %lo(D_801779C0)
/* DD74 8000D174 ADAC0004 */  sw         $t4, 4($t5)
/* DD78 8000D178 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* DD7C 8000D17C 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* DD80 8000D180 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DD84 8000D184 3C18E800 */  lui        $t8, 0xe800
/* DD88 8000D188 AFAE0124 */  sw         $t6, 0x124($sp)
/* DD8C 8000D18C 8FB90124 */  lw         $t9, 0x124($sp)
/* DD90 8000D190 25CF0008 */  addiu      $t7, $t6, 8
/* DD94 8000D194 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* DD98 8000D198 AF380000 */  sw         $t8, ($t9)
/* DD9C 8000D19C 8FA90124 */  lw         $t1, 0x124($sp)
/* DDA0 8000D1A0 AD200004 */  sw         $zero, 4($t1)
/* DDA4 8000D1A4 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* DDA8 8000D1A8 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* DDAC 8000D1AC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DDB0 8000D1B0 3C0CF500 */  lui        $t4, 0xf500
/* DDB4 8000D1B4 AFAA0120 */  sw         $t2, 0x120($sp)
/* DDB8 8000D1B8 8FAD0120 */  lw         $t5, 0x120($sp)
/* DDBC 8000D1BC 254B0008 */  addiu      $t3, $t2, 8
/* DDC0 8000D1C0 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* DDC4 8000D1C4 358C0100 */  ori        $t4, $t4, 0x100
/* DDC8 8000D1C8 ADAC0000 */  sw         $t4, ($t5)
/* DDCC 8000D1CC 8FAF0120 */  lw         $t7, 0x120($sp)
/* DDD0 8000D1D0 3C0E0700 */  lui        $t6, 0x700
/* DDD4 8000D1D4 ADEE0004 */  sw         $t6, 4($t7)
/* DDD8 8000D1D8 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* DDDC 8000D1DC 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* DDE0 8000D1E0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DDE4 8000D1E4 3C09E600 */  lui        $t1, 0xe600
/* DDE8 8000D1E8 AFB8011C */  sw         $t8, 0x11c($sp)
/* DDEC 8000D1EC 8FAA011C */  lw         $t2, 0x11c($sp)
/* DDF0 8000D1F0 27190008 */  addiu      $t9, $t8, 8
/* DDF4 8000D1F4 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* DDF8 8000D1F8 AD490000 */  sw         $t1, ($t2)
/* DDFC 8000D1FC 8FAB011C */  lw         $t3, 0x11c($sp)
/* DE00 8000D200 AD600004 */  sw         $zero, 4($t3)
/* DE04 8000D204 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* DE08 8000D208 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* DE0C 8000D20C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DE10 8000D210 3C0EF000 */  lui        $t6, 0xf000
/* DE14 8000D214 AFAC0118 */  sw         $t4, 0x118($sp)
/* DE18 8000D218 8FAF0118 */  lw         $t7, 0x118($sp)
/* DE1C 8000D21C 258D0008 */  addiu      $t5, $t4, 8
/* DE20 8000D220 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* DE24 8000D224 ADEE0000 */  sw         $t6, ($t7)
/* DE28 8000D228 8FB90118 */  lw         $t9, 0x118($sp)
/* DE2C 8000D22C 3C180703 */  lui        $t8, 0x703
/* DE30 8000D230 3718C000 */  ori        $t8, $t8, 0xc000
/* DE34 8000D234 AF380004 */  sw         $t8, 4($t9)
/* DE38 8000D238 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* DE3C 8000D23C 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* DE40 8000D240 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DE44 8000D244 3C0BE700 */  lui        $t3, 0xe700
/* DE48 8000D248 AFA90114 */  sw         $t1, 0x114($sp)
/* DE4C 8000D24C 8FAC0114 */  lw         $t4, 0x114($sp)
/* DE50 8000D250 252A0008 */  addiu      $t2, $t1, 8
/* DE54 8000D254 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* DE58 8000D258 AD8B0000 */  sw         $t3, ($t4)
/* DE5C 8000D25C 8FAD0114 */  lw         $t5, 0x114($sp)
/* DE60 8000D260 ADA00004 */  sw         $zero, 4($t5)
/* DE64 8000D264 10000098 */  b          .L8000D4C8
/* DE68 8000D268 00000000 */   nop
.L8000D26C:
/* DE6C 8000D26C 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* DE70 8000D270 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* DE74 8000D274 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DE78 8000D278 3C18FD10 */  lui        $t8, 0xfd10
/* DE7C 8000D27C AFAE0110 */  sw         $t6, 0x110($sp)
/* DE80 8000D280 8FB90110 */  lw         $t9, 0x110($sp)
/* DE84 8000D284 25CF0008 */  addiu      $t7, $t6, 8
/* DE88 8000D288 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* DE8C 8000D28C AF380000 */  sw         $t8, ($t9)
/* DE90 8000D290 8FAA0110 */  lw         $t2, 0x110($sp)
/* DE94 8000D294 3C098017 */  lui        $t1, %hi(D_801779C8)
/* DE98 8000D298 252979C8 */  addiu      $t1, $t1, %lo(D_801779C8)
/* DE9C 8000D29C AD490004 */  sw         $t1, 4($t2)
/* DEA0 8000D2A0 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* DEA4 8000D2A4 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* DEA8 8000D2A8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DEAC 8000D2AC 3C0DE800 */  lui        $t5, 0xe800
/* DEB0 8000D2B0 AFAB010C */  sw         $t3, 0x10c($sp)
/* DEB4 8000D2B4 8FAE010C */  lw         $t6, 0x10c($sp)
/* DEB8 8000D2B8 256C0008 */  addiu      $t4, $t3, 8
/* DEBC 8000D2BC AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* DEC0 8000D2C0 ADCD0000 */  sw         $t5, ($t6)
/* DEC4 8000D2C4 8FAF010C */  lw         $t7, 0x10c($sp)
/* DEC8 8000D2C8 ADE00004 */  sw         $zero, 4($t7)
/* DECC 8000D2CC 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* DED0 8000D2D0 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* DED4 8000D2D4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DED8 8000D2D8 3C09F500 */  lui        $t1, 0xf500
/* DEDC 8000D2DC AFB80108 */  sw         $t8, 0x108($sp)
/* DEE0 8000D2E0 8FAA0108 */  lw         $t2, 0x108($sp)
/* DEE4 8000D2E4 27190008 */  addiu      $t9, $t8, 8
/* DEE8 8000D2E8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* DEEC 8000D2EC 35290100 */  ori        $t1, $t1, 0x100
/* DEF0 8000D2F0 AD490000 */  sw         $t1, ($t2)
/* DEF4 8000D2F4 8FAC0108 */  lw         $t4, 0x108($sp)
/* DEF8 8000D2F8 3C0B0700 */  lui        $t3, 0x700
/* DEFC 8000D2FC AD8B0004 */  sw         $t3, 4($t4)
/* DF00 8000D300 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* DF04 8000D304 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* DF08 8000D308 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DF0C 8000D30C 3C0FE600 */  lui        $t7, 0xe600
/* DF10 8000D310 AFAD0104 */  sw         $t5, 0x104($sp)
/* DF14 8000D314 8FB80104 */  lw         $t8, 0x104($sp)
/* DF18 8000D318 25AE0008 */  addiu      $t6, $t5, 8
/* DF1C 8000D31C AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* DF20 8000D320 AF0F0000 */  sw         $t7, ($t8)
/* DF24 8000D324 8FB90104 */  lw         $t9, 0x104($sp)
/* DF28 8000D328 AF200004 */  sw         $zero, 4($t9)
/* DF2C 8000D32C 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* DF30 8000D330 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* DF34 8000D334 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DF38 8000D338 3C0BF000 */  lui        $t3, 0xf000
/* DF3C 8000D33C AFA90100 */  sw         $t1, 0x100($sp)
/* DF40 8000D340 8FAC0100 */  lw         $t4, 0x100($sp)
/* DF44 8000D344 252A0008 */  addiu      $t2, $t1, 8
/* DF48 8000D348 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* DF4C 8000D34C AD8B0000 */  sw         $t3, ($t4)
/* DF50 8000D350 8FAE0100 */  lw         $t6, 0x100($sp)
/* DF54 8000D354 3C0D0703 */  lui        $t5, 0x703
/* DF58 8000D358 35ADC000 */  ori        $t5, $t5, 0xc000
/* DF5C 8000D35C ADCD0004 */  sw         $t5, 4($t6)
/* DF60 8000D360 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* DF64 8000D364 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* DF68 8000D368 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DF6C 8000D36C 3C19E700 */  lui        $t9, 0xe700
/* DF70 8000D370 AFAF00FC */  sw         $t7, 0xfc($sp)
/* DF74 8000D374 8FA900FC */  lw         $t1, 0xfc($sp)
/* DF78 8000D378 25F80008 */  addiu      $t8, $t7, 8
/* DF7C 8000D37C AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* DF80 8000D380 AD390000 */  sw         $t9, ($t1)
/* DF84 8000D384 8FAA00FC */  lw         $t2, 0xfc($sp)
/* DF88 8000D388 AD400004 */  sw         $zero, 4($t2)
/* DF8C 8000D38C 1000004E */  b          .L8000D4C8
/* DF90 8000D390 00000000 */   nop
.L8000D394:
/* DF94 8000D394 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* DF98 8000D398 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* DF9C 8000D39C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DFA0 8000D3A0 3C0DFD10 */  lui        $t5, 0xfd10
/* DFA4 8000D3A4 AFAB00F8 */  sw         $t3, 0xf8($sp)
/* DFA8 8000D3A8 8FAE00F8 */  lw         $t6, 0xf8($sp)
/* DFAC 8000D3AC 256C0008 */  addiu      $t4, $t3, 8
/* DFB0 8000D3B0 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* DFB4 8000D3B4 ADCD0000 */  sw         $t5, ($t6)
/* DFB8 8000D3B8 8FB800F8 */  lw         $t8, 0xf8($sp)
/* DFBC 8000D3BC 3C0F8017 */  lui        $t7, %hi(D_801779D0)
/* DFC0 8000D3C0 25EF79D0 */  addiu      $t7, $t7, %lo(D_801779D0)
/* DFC4 8000D3C4 AF0F0004 */  sw         $t7, 4($t8)
/* DFC8 8000D3C8 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* DFCC 8000D3CC 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* DFD0 8000D3D0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* DFD4 8000D3D4 3C0AE800 */  lui        $t2, 0xe800
/* DFD8 8000D3D8 AFB900F4 */  sw         $t9, 0xf4($sp)
/* DFDC 8000D3DC 8FAB00F4 */  lw         $t3, 0xf4($sp)
/* DFE0 8000D3E0 27290008 */  addiu      $t1, $t9, 8
/* DFE4 8000D3E4 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* DFE8 8000D3E8 AD6A0000 */  sw         $t2, ($t3)
/* DFEC 8000D3EC 8FAC00F4 */  lw         $t4, 0xf4($sp)
/* DFF0 8000D3F0 AD800004 */  sw         $zero, 4($t4)
/* DFF4 8000D3F4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* DFF8 8000D3F8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* DFFC 8000D3FC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E000 8000D400 3C0FF500 */  lui        $t7, 0xf500
/* E004 8000D404 AFAD00F0 */  sw         $t5, 0xf0($sp)
/* E008 8000D408 8FB800F0 */  lw         $t8, 0xf0($sp)
/* E00C 8000D40C 25AE0008 */  addiu      $t6, $t5, 8
/* E010 8000D410 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* E014 8000D414 35EF0100 */  ori        $t7, $t7, 0x100
/* E018 8000D418 AF0F0000 */  sw         $t7, ($t8)
/* E01C 8000D41C 8FA900F0 */  lw         $t1, 0xf0($sp)
/* E020 8000D420 3C190700 */  lui        $t9, 0x700
/* E024 8000D424 AD390004 */  sw         $t9, 4($t1)
/* E028 8000D428 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* E02C 8000D42C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* E030 8000D430 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E034 8000D434 3C0CE600 */  lui        $t4, 0xe600
/* E038 8000D438 AFAA00EC */  sw         $t2, 0xec($sp)
/* E03C 8000D43C 8FAD00EC */  lw         $t5, 0xec($sp)
/* E040 8000D440 254B0008 */  addiu      $t3, $t2, 8
/* E044 8000D444 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* E048 8000D448 ADAC0000 */  sw         $t4, ($t5)
/* E04C 8000D44C 8FAE00EC */  lw         $t6, 0xec($sp)
/* E050 8000D450 ADC00004 */  sw         $zero, 4($t6)
/* E054 8000D454 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* E058 8000D458 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* E05C 8000D45C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E060 8000D460 3C19F000 */  lui        $t9, 0xf000
/* E064 8000D464 AFAF00E8 */  sw         $t7, 0xe8($sp)
/* E068 8000D468 8FA900E8 */  lw         $t1, 0xe8($sp)
/* E06C 8000D46C 25F80008 */  addiu      $t8, $t7, 8
/* E070 8000D470 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* E074 8000D474 AD390000 */  sw         $t9, ($t1)
/* E078 8000D478 8FAB00E8 */  lw         $t3, 0xe8($sp)
/* E07C 8000D47C 3C0A0703 */  lui        $t2, 0x703
/* E080 8000D480 354AC000 */  ori        $t2, $t2, 0xc000
/* E084 8000D484 AD6A0004 */  sw         $t2, 4($t3)
/* E088 8000D488 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* E08C 8000D48C 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* E090 8000D490 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E094 8000D494 3C0EE700 */  lui        $t6, 0xe700
/* E098 8000D498 AFAC00E4 */  sw         $t4, 0xe4($sp)
/* E09C 8000D49C 8FAF00E4 */  lw         $t7, 0xe4($sp)
/* E0A0 8000D4A0 258D0008 */  addiu      $t5, $t4, 8
/* E0A4 8000D4A4 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* E0A8 8000D4A8 ADEE0000 */  sw         $t6, ($t7)
/* E0AC 8000D4AC 8FB800E4 */  lw         $t8, 0xe4($sp)
/* E0B0 8000D4B0 AF000004 */  sw         $zero, 4($t8)
/* E0B4 8000D4B4 10000004 */  b          .L8000D4C8
/* E0B8 8000D4B8 00000000 */   nop
.L8000D4BC:
/* E0BC 8000D4BC 8FB90178 */  lw         $t9, 0x178($sp)
/* E0C0 8000D4C0 27290001 */  addiu      $t1, $t9, 1
/* E0C4 8000D4C4 AFA90178 */  sw         $t1, 0x178($sp)
.L8000D4C8:
/* E0C8 8000D4C8 8FAA0178 */  lw         $t2, 0x178($sp)
/* E0CC 8000D4CC A7A50186 */  sh         $a1, 0x186($sp)
/* E0D0 8000D4D0 A7A60184 */  sh         $a2, 0x184($sp)
/* E0D4 8000D4D4 A7A0017E */  sh         $zero, 0x17e($sp)
/* E0D8 8000D4D8 914B0000 */  lbu        $t3, ($t2)
/* E0DC 8000D4DC 116004BD */  beqz       $t3, .L8000E7D4
/* E0E0 8000D4E0 00000000 */   nop
.L8000D4E4:
/* E0E4 8000D4E4 87AC017E */  lh         $t4, 0x17e($sp)
/* E0E8 8000D4E8 8FAD0178 */  lw         $t5, 0x178($sp)
/* E0EC 8000D4EC 2401000A */  addiu      $at, $zero, 0xa
/* E0F0 8000D4F0 018D7021 */  addu       $t6, $t4, $t5
/* E0F4 8000D4F4 91CF0000 */  lbu        $t7, ($t6)
/* E0F8 8000D4F8 11E1049F */  beq        $t7, $at, .L8000E778
/* E0FC 8000D4FC 00000000 */   nop
/* E100 8000D500 3C18800D */  lui        $t8, %hi(D_800D6520)
/* E104 8000D504 87186520 */  lh         $t8, %lo(D_800D6520)($t8)
/* E108 8000D508 A3AF0177 */  sb         $t7, 0x177($sp)
/* E10C 8000D50C A3A00175 */  sb         $zero, 0x175($sp)
/* E110 8000D510 17000013 */  bnez       $t8, .L8000D560
/* E114 8000D514 29E10080 */   slti      $at, $t7, 0x80
/* E118 8000D518 14200006 */  bnez       $at, .L8000D534
/* E11C 8000D51C 00000000 */   nop
/* E120 8000D520 000FC840 */  sll        $t9, $t7, 1
/* E124 8000D524 3C09801C */  lui        $t1, %hi(D_801C5EC8)
/* E128 8000D528 01394821 */  addu       $t1, $t1, $t9
/* E12C 8000D52C 91295EC8 */  lbu        $t1, %lo(D_801C5EC8)($t1)
/* E130 8000D530 A3A90177 */  sb         $t1, 0x177($sp)
.L8000D534:
/* E134 8000D534 93AA0177 */  lbu        $t2, 0x177($sp)
/* E138 8000D538 3C0C8014 */  lui        $t4, %hi(D_8013D3A0)
/* E13C 8000D53C 2401FFFF */  addiu      $at, $zero, -1
/* E140 8000D540 000A5840 */  sll        $t3, $t2, 1
/* E144 8000D544 018B6021 */  addu       $t4, $t4, $t3
/* E148 8000D548 858CD3A0 */  lh         $t4, %lo(D_8013D3A0)($t4)
/* E14C 8000D54C 11810010 */  beq        $t4, $at, .L8000D590
/* E150 8000D550 00000000 */   nop
/* E154 8000D554 240D0001 */  addiu      $t5, $zero, 1
/* E158 8000D558 1000000D */  b          .L8000D590
/* E15C 8000D55C A3AD0175 */   sb        $t5, 0x175($sp)
.L8000D560:
/* E160 8000D560 93AE0177 */  lbu        $t6, 0x177($sp)
/* E164 8000D564 3C0F8014 */  lui        $t7, %hi(D_8013D3A0)
/* E168 8000D568 2401FFFF */  addiu      $at, $zero, -1
/* E16C 8000D56C 000EC040 */  sll        $t8, $t6, 1
/* E170 8000D570 01F87821 */  addu       $t7, $t7, $t8
/* E174 8000D574 85EFD3A0 */  lh         $t7, %lo(D_8013D3A0)($t7)
/* E178 8000D578 11E10005 */  beq        $t7, $at, .L8000D590
/* E17C 8000D57C 29C100A6 */   slti      $at, $t6, 0xa6
/* E180 8000D580 10200003 */  beqz       $at, .L8000D590
/* E184 8000D584 00000000 */   nop
/* E188 8000D588 24190001 */  addiu      $t9, $zero, 1
/* E18C 8000D58C A3B90175 */  sb         $t9, 0x175($sp)
.L8000D590:
/* E190 8000D590 83A90175 */  lb         $t1, 0x175($sp)
/* E194 8000D594 1120022C */  beqz       $t1, .L8000DE48
/* E198 8000D598 00000000 */   nop
/* E19C 8000D59C 83AA0176 */  lb         $t2, 0x176($sp)
/* E1A0 8000D5A0 1140013F */  beqz       $t2, .L8000DAA0
/* E1A4 8000D5A4 00000000 */   nop
/* E1A8 8000D5A8 93A801A3 */  lbu        $t0, 0x1a3($sp)
/* E1AC 8000D5AC A3A00176 */  sb         $zero, 0x176($sp)
/* E1B0 8000D5B0 11000007 */  beqz       $t0, .L8000D5D0
/* E1B4 8000D5B4 24010001 */   addiu     $at, $zero, 1
/* E1B8 8000D5B8 1101004F */  beq        $t0, $at, .L8000D6F8
/* E1BC 8000D5BC 24010002 */   addiu     $at, $zero, 2
/* E1C0 8000D5C0 11010097 */  beq        $t0, $at, .L8000D820
/* E1C4 8000D5C4 00000000 */   nop
/* E1C8 8000D5C8 100000DD */  b          .L8000D940
/* E1CC 8000D5CC 00000000 */   nop
.L8000D5D0:
/* E1D0 8000D5D0 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* E1D4 8000D5D4 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* E1D8 8000D5D8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E1DC 8000D5DC 3C0DFD10 */  lui        $t5, 0xfd10
/* E1E0 8000D5E0 AFAB00E0 */  sw         $t3, 0xe0($sp)
/* E1E4 8000D5E4 8FB800E0 */  lw         $t8, 0xe0($sp)
/* E1E8 8000D5E8 256C0008 */  addiu      $t4, $t3, 8
/* E1EC 8000D5EC AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* E1F0 8000D5F0 AF0D0000 */  sw         $t5, ($t8)
/* E1F4 8000D5F4 8FAE00E0 */  lw         $t6, 0xe0($sp)
/* E1F8 8000D5F8 3C0F8017 */  lui        $t7, %hi(D_801779C0)
/* E1FC 8000D5FC 25EF79C0 */  addiu      $t7, $t7, %lo(D_801779C0)
/* E200 8000D600 ADCF0004 */  sw         $t7, 4($t6)
/* E204 8000D604 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* E208 8000D608 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* E20C 8000D60C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E210 8000D610 3C0AE800 */  lui        $t2, 0xe800
/* E214 8000D614 AFB900DC */  sw         $t9, 0xdc($sp)
/* E218 8000D618 8FAB00DC */  lw         $t3, 0xdc($sp)
/* E21C 8000D61C 27290008 */  addiu      $t1, $t9, 8
/* E220 8000D620 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* E224 8000D624 AD6A0000 */  sw         $t2, ($t3)
/* E228 8000D628 8FAC00DC */  lw         $t4, 0xdc($sp)
/* E22C 8000D62C AD800004 */  sw         $zero, 4($t4)
/* E230 8000D630 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* E234 8000D634 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* E238 8000D638 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E23C 8000D63C 3C0FF500 */  lui        $t7, 0xf500
/* E240 8000D640 AFAD00D8 */  sw         $t5, 0xd8($sp)
/* E244 8000D644 8FAE00D8 */  lw         $t6, 0xd8($sp)
/* E248 8000D648 25B80008 */  addiu      $t8, $t5, 8
/* E24C 8000D64C AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* E250 8000D650 35EF0100 */  ori        $t7, $t7, 0x100
/* E254 8000D654 ADCF0000 */  sw         $t7, ($t6)
/* E258 8000D658 8FA900D8 */  lw         $t1, 0xd8($sp)
/* E25C 8000D65C 3C190700 */  lui        $t9, 0x700
/* E260 8000D660 AD390004 */  sw         $t9, 4($t1)
/* E264 8000D664 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* E268 8000D668 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* E26C 8000D66C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E270 8000D670 3C0CE600 */  lui        $t4, 0xe600
/* E274 8000D674 AFAA00D4 */  sw         $t2, 0xd4($sp)
/* E278 8000D678 8FAD00D4 */  lw         $t5, 0xd4($sp)
/* E27C 8000D67C 254B0008 */  addiu      $t3, $t2, 8
/* E280 8000D680 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* E284 8000D684 ADAC0000 */  sw         $t4, ($t5)
/* E288 8000D688 8FB800D4 */  lw         $t8, 0xd4($sp)
/* E28C 8000D68C AF000004 */  sw         $zero, 4($t8)
/* E290 8000D690 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* E294 8000D694 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* E298 8000D698 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E29C 8000D69C 3C19F000 */  lui        $t9, 0xf000
/* E2A0 8000D6A0 AFAF00D0 */  sw         $t7, 0xd0($sp)
/* E2A4 8000D6A4 8FA900D0 */  lw         $t1, 0xd0($sp)
/* E2A8 8000D6A8 25EE0008 */  addiu      $t6, $t7, 8
/* E2AC 8000D6AC AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* E2B0 8000D6B0 AD390000 */  sw         $t9, ($t1)
/* E2B4 8000D6B4 8FAB00D0 */  lw         $t3, 0xd0($sp)
/* E2B8 8000D6B8 3C0A0703 */  lui        $t2, 0x703
/* E2BC 8000D6BC 354AC000 */  ori        $t2, $t2, 0xc000
/* E2C0 8000D6C0 AD6A0004 */  sw         $t2, 4($t3)
/* E2C4 8000D6C4 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* E2C8 8000D6C8 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* E2CC 8000D6CC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E2D0 8000D6D0 3C18E700 */  lui        $t8, 0xe700
/* E2D4 8000D6D4 AFAC00CC */  sw         $t4, 0xcc($sp)
/* E2D8 8000D6D8 8FAF00CC */  lw         $t7, 0xcc($sp)
/* E2DC 8000D6DC 258D0008 */  addiu      $t5, $t4, 8
/* E2E0 8000D6E0 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* E2E4 8000D6E4 ADF80000 */  sw         $t8, ($t7)
/* E2E8 8000D6E8 8FAE00CC */  lw         $t6, 0xcc($sp)
/* E2EC 8000D6EC ADC00004 */  sw         $zero, 4($t6)
/* E2F0 8000D6F0 10000093 */  b          .L8000D940
/* E2F4 8000D6F4 00000000 */   nop
.L8000D6F8:
/* E2F8 8000D6F8 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* E2FC 8000D6FC 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* E300 8000D700 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E304 8000D704 3C0AFD10 */  lui        $t2, 0xfd10
/* E308 8000D708 AFB900C8 */  sw         $t9, 0xc8($sp)
/* E30C 8000D70C 8FAB00C8 */  lw         $t3, 0xc8($sp)
/* E310 8000D710 27290008 */  addiu      $t1, $t9, 8
/* E314 8000D714 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* E318 8000D718 AD6A0000 */  sw         $t2, ($t3)
/* E31C 8000D71C 8FAD00C8 */  lw         $t5, 0xc8($sp)
/* E320 8000D720 3C0C8017 */  lui        $t4, %hi(D_801779C8)
/* E324 8000D724 258C79C8 */  addiu      $t4, $t4, %lo(D_801779C8)
/* E328 8000D728 ADAC0004 */  sw         $t4, 4($t5)
/* E32C 8000D72C 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* E330 8000D730 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* E334 8000D734 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E338 8000D738 3C0EE800 */  lui        $t6, 0xe800
/* E33C 8000D73C AFB800C4 */  sw         $t8, 0xc4($sp)
/* E340 8000D740 8FB900C4 */  lw         $t9, 0xc4($sp)
/* E344 8000D744 270F0008 */  addiu      $t7, $t8, 8
/* E348 8000D748 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* E34C 8000D74C AF2E0000 */  sw         $t6, ($t9)
/* E350 8000D750 8FA900C4 */  lw         $t1, 0xc4($sp)
/* E354 8000D754 AD200004 */  sw         $zero, 4($t1)
/* E358 8000D758 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* E35C 8000D75C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* E360 8000D760 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E364 8000D764 3C0CF500 */  lui        $t4, 0xf500
/* E368 8000D768 AFAA00C0 */  sw         $t2, 0xc0($sp)
/* E36C 8000D76C 8FAD00C0 */  lw         $t5, 0xc0($sp)
/* E370 8000D770 254B0008 */  addiu      $t3, $t2, 8
/* E374 8000D774 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* E378 8000D778 358C0100 */  ori        $t4, $t4, 0x100
/* E37C 8000D77C ADAC0000 */  sw         $t4, ($t5)
/* E380 8000D780 8FAF00C0 */  lw         $t7, 0xc0($sp)
/* E384 8000D784 3C180700 */  lui        $t8, 0x700
/* E388 8000D788 ADF80004 */  sw         $t8, 4($t7)
/* E38C 8000D78C 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* E390 8000D790 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* E394 8000D794 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E398 8000D798 3C09E600 */  lui        $t1, 0xe600
/* E39C 8000D79C AFAE00BC */  sw         $t6, 0xbc($sp)
/* E3A0 8000D7A0 8FAA00BC */  lw         $t2, 0xbc($sp)
/* E3A4 8000D7A4 25D90008 */  addiu      $t9, $t6, 8
/* E3A8 8000D7A8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* E3AC 8000D7AC AD490000 */  sw         $t1, ($t2)
/* E3B0 8000D7B0 8FAB00BC */  lw         $t3, 0xbc($sp)
/* E3B4 8000D7B4 AD600004 */  sw         $zero, 4($t3)
/* E3B8 8000D7B8 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* E3BC 8000D7BC 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* E3C0 8000D7C0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E3C4 8000D7C4 3C18F000 */  lui        $t8, 0xf000
/* E3C8 8000D7C8 AFAC00B8 */  sw         $t4, 0xb8($sp)
/* E3CC 8000D7CC 8FAF00B8 */  lw         $t7, 0xb8($sp)
/* E3D0 8000D7D0 258D0008 */  addiu      $t5, $t4, 8
/* E3D4 8000D7D4 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* E3D8 8000D7D8 ADF80000 */  sw         $t8, ($t7)
/* E3DC 8000D7DC 8FB900B8 */  lw         $t9, 0xb8($sp)
/* E3E0 8000D7E0 3C0E0703 */  lui        $t6, 0x703
/* E3E4 8000D7E4 35CEC000 */  ori        $t6, $t6, 0xc000
/* E3E8 8000D7E8 AF2E0004 */  sw         $t6, 4($t9)
/* E3EC 8000D7EC 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* E3F0 8000D7F0 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* E3F4 8000D7F4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E3F8 8000D7F8 3C0BE700 */  lui        $t3, 0xe700
/* E3FC 8000D7FC AFA900B4 */  sw         $t1, 0xb4($sp)
/* E400 8000D800 8FAC00B4 */  lw         $t4, 0xb4($sp)
/* E404 8000D804 252A0008 */  addiu      $t2, $t1, 8
/* E408 8000D808 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* E40C 8000D80C AD8B0000 */  sw         $t3, ($t4)
/* E410 8000D810 8FAD00B4 */  lw         $t5, 0xb4($sp)
/* E414 8000D814 ADA00004 */  sw         $zero, 4($t5)
/* E418 8000D818 10000049 */  b          .L8000D940
/* E41C 8000D81C 00000000 */   nop
.L8000D820:
/* E420 8000D820 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* E424 8000D824 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* E428 8000D828 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E42C 8000D82C 3C0EFD10 */  lui        $t6, 0xfd10
/* E430 8000D830 AFB800B0 */  sw         $t8, 0xb0($sp)
/* E434 8000D834 8FB900B0 */  lw         $t9, 0xb0($sp)
/* E438 8000D838 270F0008 */  addiu      $t7, $t8, 8
/* E43C 8000D83C AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* E440 8000D840 AF2E0000 */  sw         $t6, ($t9)
/* E444 8000D844 8FAA00B0 */  lw         $t2, 0xb0($sp)
/* E448 8000D848 3C098017 */  lui        $t1, %hi(D_801779D0)
/* E44C 8000D84C 252979D0 */  addiu      $t1, $t1, %lo(D_801779D0)
/* E450 8000D850 AD490004 */  sw         $t1, 4($t2)
/* E454 8000D854 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* E458 8000D858 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* E45C 8000D85C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E460 8000D860 3C0DE800 */  lui        $t5, 0xe800
/* E464 8000D864 AFAB00AC */  sw         $t3, 0xac($sp)
/* E468 8000D868 8FB800AC */  lw         $t8, 0xac($sp)
/* E46C 8000D86C 256C0008 */  addiu      $t4, $t3, 8
/* E470 8000D870 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* E474 8000D874 AF0D0000 */  sw         $t5, ($t8)
/* E478 8000D878 8FAF00AC */  lw         $t7, 0xac($sp)
/* E47C 8000D87C ADE00004 */  sw         $zero, 4($t7)
/* E480 8000D880 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* E484 8000D884 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* E488 8000D888 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E48C 8000D88C 3C09F500 */  lui        $t1, 0xf500
/* E490 8000D890 AFAE00A8 */  sw         $t6, 0xa8($sp)
/* E494 8000D894 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* E498 8000D898 25D90008 */  addiu      $t9, $t6, 8
/* E49C 8000D89C AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* E4A0 8000D8A0 35290100 */  ori        $t1, $t1, 0x100
/* E4A4 8000D8A4 AD490000 */  sw         $t1, ($t2)
/* E4A8 8000D8A8 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* E4AC 8000D8AC 3C0B0700 */  lui        $t3, 0x700
/* E4B0 8000D8B0 AD8B0004 */  sw         $t3, 4($t4)
/* E4B4 8000D8B4 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* E4B8 8000D8B8 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* E4BC 8000D8BC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E4C0 8000D8C0 3C0FE600 */  lui        $t7, 0xe600
/* E4C4 8000D8C4 AFAD00A4 */  sw         $t5, 0xa4($sp)
/* E4C8 8000D8C8 8FAE00A4 */  lw         $t6, 0xa4($sp)
/* E4CC 8000D8CC 25B80008 */  addiu      $t8, $t5, 8
/* E4D0 8000D8D0 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* E4D4 8000D8D4 ADCF0000 */  sw         $t7, ($t6)
/* E4D8 8000D8D8 8FB900A4 */  lw         $t9, 0xa4($sp)
/* E4DC 8000D8DC AF200004 */  sw         $zero, 4($t9)
/* E4E0 8000D8E0 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* E4E4 8000D8E4 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* E4E8 8000D8E8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E4EC 8000D8EC 3C0BF000 */  lui        $t3, 0xf000
/* E4F0 8000D8F0 AFA900A0 */  sw         $t1, 0xa0($sp)
/* E4F4 8000D8F4 8FAC00A0 */  lw         $t4, 0xa0($sp)
/* E4F8 8000D8F8 252A0008 */  addiu      $t2, $t1, 8
/* E4FC 8000D8FC AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* E500 8000D900 AD8B0000 */  sw         $t3, ($t4)
/* E504 8000D904 8FB800A0 */  lw         $t8, 0xa0($sp)
/* E508 8000D908 3C0D0703 */  lui        $t5, 0x703
/* E50C 8000D90C 35ADC000 */  ori        $t5, $t5, 0xc000
/* E510 8000D910 AF0D0004 */  sw         $t5, 4($t8)
/* E514 8000D914 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* E518 8000D918 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* E51C 8000D91C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E520 8000D920 3C19E700 */  lui        $t9, 0xe700
/* E524 8000D924 AFAF009C */  sw         $t7, 0x9c($sp)
/* E528 8000D928 8FA9009C */  lw         $t1, 0x9c($sp)
/* E52C 8000D92C 25EE0008 */  addiu      $t6, $t7, 8
/* E530 8000D930 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* E534 8000D934 AD390000 */  sw         $t9, ($t1)
/* E538 8000D938 8FAA009C */  lw         $t2, 0x9c($sp)
/* E53C 8000D93C AD400004 */  sw         $zero, 4($t2)
.L8000D940:
/* E540 8000D940 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* E544 8000D944 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* E548 8000D948 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E54C 8000D94C 3C0DFD50 */  lui        $t5, 0xfd50
/* E550 8000D950 AFAB0098 */  sw         $t3, 0x98($sp)
/* E554 8000D954 8FB80098 */  lw         $t8, 0x98($sp)
/* E558 8000D958 256C0008 */  addiu      $t4, $t3, 8
/* E55C 8000D95C AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* E560 8000D960 AF0D0000 */  sw         $t5, ($t8)
/* E564 8000D964 8FAE0098 */  lw         $t6, 0x98($sp)
/* E568 8000D968 3C0F8017 */  lui        $t7, %hi(D_801771B8)
/* E56C 8000D96C 25EF71B8 */  addiu      $t7, $t7, %lo(D_801771B8)
/* E570 8000D970 ADCF0004 */  sw         $t7, 4($t6)
/* E574 8000D974 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* E578 8000D978 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* E57C 8000D97C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E580 8000D980 3C0AF550 */  lui        $t2, 0xf550
/* E584 8000D984 AFB90094 */  sw         $t9, 0x94($sp)
/* E588 8000D988 8FAB0094 */  lw         $t3, 0x94($sp)
/* E58C 8000D98C 27290008 */  addiu      $t1, $t9, 8
/* E590 8000D990 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* E594 8000D994 AD6A0000 */  sw         $t2, ($t3)
/* E598 8000D998 8FAD0094 */  lw         $t5, 0x94($sp)
/* E59C 8000D99C 3C0C0701 */  lui        $t4, 0x701
/* E5A0 8000D9A0 358C8060 */  ori        $t4, $t4, 0x8060
/* E5A4 8000D9A4 ADAC0004 */  sw         $t4, 4($t5)
/* E5A8 8000D9A8 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* E5AC 8000D9AC 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* E5B0 8000D9B0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E5B4 8000D9B4 3C0EE600 */  lui        $t6, 0xe600
/* E5B8 8000D9B8 AFB80090 */  sw         $t8, 0x90($sp)
/* E5BC 8000D9BC 8FB90090 */  lw         $t9, 0x90($sp)
/* E5C0 8000D9C0 270F0008 */  addiu      $t7, $t8, 8
/* E5C4 8000D9C4 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* E5C8 8000D9C8 AF2E0000 */  sw         $t6, ($t9)
/* E5CC 8000D9CC 8FA90090 */  lw         $t1, 0x90($sp)
/* E5D0 8000D9D0 AD200004 */  sw         $zero, 4($t1)
/* E5D4 8000D9D4 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* E5D8 8000D9D8 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* E5DC 8000D9DC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E5E0 8000D9E0 3C0CF300 */  lui        $t4, 0xf300
/* E5E4 8000D9E4 AFAA008C */  sw         $t2, 0x8c($sp)
/* E5E8 8000D9E8 8FAD008C */  lw         $t5, 0x8c($sp)
/* E5EC 8000D9EC 254B0008 */  addiu      $t3, $t2, 8
/* E5F0 8000D9F0 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* E5F4 8000D9F4 ADAC0000 */  sw         $t4, ($t5)
/* E5F8 8000D9F8 8FAF008C */  lw         $t7, 0x8c($sp)
/* E5FC 8000D9FC 3C18073F */  lui        $t8, 0x73f
/* E600 8000DA00 3718F200 */  ori        $t8, $t8, 0xf200
/* E604 8000DA04 ADF80004 */  sw         $t8, 4($t7)
/* E608 8000DA08 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* E60C 8000DA0C 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* E610 8000DA10 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E614 8000DA14 3C09E700 */  lui        $t1, 0xe700
/* E618 8000DA18 AFAE0088 */  sw         $t6, 0x88($sp)
/* E61C 8000DA1C 8FAA0088 */  lw         $t2, 0x88($sp)
/* E620 8000DA20 25D90008 */  addiu      $t9, $t6, 8
/* E624 8000DA24 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* E628 8000DA28 AD490000 */  sw         $t1, ($t2)
/* E62C 8000DA2C 8FAB0088 */  lw         $t3, 0x88($sp)
/* E630 8000DA30 AD600004 */  sw         $zero, 4($t3)
/* E634 8000DA34 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* E638 8000DA38 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* E63C 8000DA3C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E640 8000DA40 3C18F540 */  lui        $t8, 0xf540
/* E644 8000DA44 AFAC0084 */  sw         $t4, 0x84($sp)
/* E648 8000DA48 8FAF0084 */  lw         $t7, 0x84($sp)
/* E64C 8000DA4C 258D0008 */  addiu      $t5, $t4, 8
/* E650 8000DA50 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* E654 8000DA54 37180800 */  ori        $t8, $t8, 0x800
/* E658 8000DA58 ADF80000 */  sw         $t8, ($t7)
/* E65C 8000DA5C 8FB90084 */  lw         $t9, 0x84($sp)
/* E660 8000DA60 3C0E0001 */  lui        $t6, 1
/* E664 8000DA64 35CE8060 */  ori        $t6, $t6, 0x8060
/* E668 8000DA68 AF2E0004 */  sw         $t6, 4($t9)
/* E66C 8000DA6C 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* E670 8000DA70 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* E674 8000DA74 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E678 8000DA78 3C0BF200 */  lui        $t3, 0xf200
/* E67C 8000DA7C AFA90080 */  sw         $t1, 0x80($sp)
/* E680 8000DA80 8FAC0080 */  lw         $t4, 0x80($sp)
/* E684 8000DA84 252A0008 */  addiu      $t2, $t1, 8
/* E688 8000DA88 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* E68C 8000DA8C AD8B0000 */  sw         $t3, ($t4)
/* E690 8000DA90 8FB80080 */  lw         $t8, 0x80($sp)
/* E694 8000DA94 3C0D000F */  lui        $t5, 0xf
/* E698 8000DA98 35ADC0FC */  ori        $t5, $t5, 0xc0fc
/* E69C 8000DA9C AF0D0004 */  sw         $t5, 4($t8)
.L8000DAA0:
/* E6A0 8000DAA0 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* E6A4 8000DAA4 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* E6A8 8000DAA8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E6AC 8000DAAC 87B90186 */  lh         $t9, 0x186($sp)
/* E6B0 8000DAB0 25EE0008 */  addiu      $t6, $t7, 8
/* E6B4 8000DAB4 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* E6B8 8000DAB8 3C0140E0 */  lui        $at, 0x40e0
/* E6BC 8000DABC 44812000 */  mtc1       $at, $f4
/* E6C0 8000DAC0 C7A60194 */  lwc1       $f6, 0x194($sp)
/* E6C4 8000DAC4 44995000 */  mtc1       $t9, $f10
/* E6C8 8000DAC8 3C014080 */  lui        $at, 0x4080
/* E6CC 8000DACC 46062202 */  mul.s      $f8, $f4, $f6
/* E6D0 8000DAD0 44812000 */  mtc1       $at, $f4
/* E6D4 8000DAD4 240A0001 */  addiu      $t2, $zero, 1
/* E6D8 8000DAD8 AFAF007C */  sw         $t7, 0x7c($sp)
/* E6DC 8000DADC 46805420 */  cvt.s.w    $f16, $f10
/* E6E0 8000DAE0 46088480 */  add.s      $f18, $f16, $f8
/* E6E4 8000DAE4 46049182 */  mul.s      $f6, $f18, $f4
/* E6E8 8000DAE8 4449F800 */  cfc1       $t1, $31
/* E6EC 8000DAEC 44CAF800 */  ctc1       $t2, $31
/* E6F0 8000DAF0 00000000 */  nop
/* E6F4 8000DAF4 460032A4 */  cvt.w.s    $f10, $f6
/* E6F8 8000DAF8 444AF800 */  cfc1       $t2, $31
/* E6FC 8000DAFC 00000000 */  nop
/* E700 8000DB00 31410004 */  andi       $at, $t2, 4
/* E704 8000DB04 314A0078 */  andi       $t2, $t2, 0x78
/* E708 8000DB08 11400013 */  beqz       $t2, .L8000DB58
/* E70C 8000DB0C 3C014F00 */   lui       $at, 0x4f00
/* E710 8000DB10 44815000 */  mtc1       $at, $f10
/* E714 8000DB14 240A0001 */  addiu      $t2, $zero, 1
/* E718 8000DB18 460A3281 */  sub.s      $f10, $f6, $f10
/* E71C 8000DB1C 44CAF800 */  ctc1       $t2, $31
/* E720 8000DB20 00000000 */  nop
/* E724 8000DB24 460052A4 */  cvt.w.s    $f10, $f10
/* E728 8000DB28 444AF800 */  cfc1       $t2, $31
/* E72C 8000DB2C 00000000 */  nop
/* E730 8000DB30 31410004 */  andi       $at, $t2, 4
/* E734 8000DB34 314A0078 */  andi       $t2, $t2, 0x78
/* E738 8000DB38 15400005 */  bnez       $t2, .L8000DB50
/* E73C 8000DB3C 00000000 */   nop
/* E740 8000DB40 440A5000 */  mfc1       $t2, $f10
/* E744 8000DB44 3C018000 */  lui        $at, 0x8000
/* E748 8000DB48 10000007 */  b          .L8000DB68
/* E74C 8000DB4C 01415025 */   or        $t2, $t2, $at
.L8000DB50:
/* E750 8000DB50 10000005 */  b          .L8000DB68
/* E754 8000DB54 240AFFFF */   addiu     $t2, $zero, -1
.L8000DB58:
/* E758 8000DB58 440A5000 */  mfc1       $t2, $f10
/* E75C 8000DB5C 00000000 */  nop
/* E760 8000DB60 0540FFFB */  bltz       $t2, .L8000DB50
/* E764 8000DB64 00000000 */   nop
.L8000DB68:
/* E768 8000DB68 314B0FFF */  andi       $t3, $t2, 0xfff
/* E76C 8000DB6C 000B6300 */  sll        $t4, $t3, 0xc
/* E770 8000DB70 3C01E400 */  lui        $at, 0xe400
/* E774 8000DB74 87B80184 */  lh         $t8, 0x184($sp)
/* E778 8000DB78 01816825 */  or         $t5, $t4, $at
/* E77C 8000DB7C 3C0140E0 */  lui        $at, 0x40e0
/* E780 8000DB80 44C9F800 */  ctc1       $t1, $31
/* E784 8000DB84 44818000 */  mtc1       $at, $f16
/* E788 8000DB88 C7A80198 */  lwc1       $f8, 0x198($sp)
/* E78C 8000DB8C 44982000 */  mtc1       $t8, $f4
/* E790 8000DB90 3C014080 */  lui        $at, 0x4080
/* E794 8000DB94 46088482 */  mul.s      $f18, $f16, $f8
/* E798 8000DB98 44818000 */  mtc1       $at, $f16
/* E79C 8000DB9C 240E0001 */  addiu      $t6, $zero, 1
/* E7A0 8000DBA0 468021A0 */  cvt.s.w    $f6, $f4
/* E7A4 8000DBA4 46123280 */  add.s      $f10, $f6, $f18
/* E7A8 8000DBA8 46105202 */  mul.s      $f8, $f10, $f16
/* E7AC 8000DBAC 444FF800 */  cfc1       $t7, $31
/* E7B0 8000DBB0 44CEF800 */  ctc1       $t6, $31
/* E7B4 8000DBB4 00000000 */  nop
/* E7B8 8000DBB8 46004124 */  cvt.w.s    $f4, $f8
/* E7BC 8000DBBC 444EF800 */  cfc1       $t6, $31
/* E7C0 8000DBC0 00000000 */  nop
/* E7C4 8000DBC4 31C10004 */  andi       $at, $t6, 4
/* E7C8 8000DBC8 31CE0078 */  andi       $t6, $t6, 0x78
/* E7CC 8000DBCC 11C00013 */  beqz       $t6, .L8000DC1C
/* E7D0 8000DBD0 3C014F00 */   lui       $at, 0x4f00
/* E7D4 8000DBD4 44812000 */  mtc1       $at, $f4
/* E7D8 8000DBD8 240E0001 */  addiu      $t6, $zero, 1
/* E7DC 8000DBDC 46044101 */  sub.s      $f4, $f8, $f4
/* E7E0 8000DBE0 44CEF800 */  ctc1       $t6, $31
/* E7E4 8000DBE4 00000000 */  nop
/* E7E8 8000DBE8 46002124 */  cvt.w.s    $f4, $f4
/* E7EC 8000DBEC 444EF800 */  cfc1       $t6, $31
/* E7F0 8000DBF0 00000000 */  nop
/* E7F4 8000DBF4 31C10004 */  andi       $at, $t6, 4
/* E7F8 8000DBF8 31CE0078 */  andi       $t6, $t6, 0x78
/* E7FC 8000DBFC 15C00005 */  bnez       $t6, .L8000DC14
/* E800 8000DC00 00000000 */   nop
/* E804 8000DC04 440E2000 */  mfc1       $t6, $f4
/* E808 8000DC08 3C018000 */  lui        $at, 0x8000
/* E80C 8000DC0C 10000007 */  b          .L8000DC2C
/* E810 8000DC10 01C17025 */   or        $t6, $t6, $at
.L8000DC14:
/* E814 8000DC14 10000005 */  b          .L8000DC2C
/* E818 8000DC18 240EFFFF */   addiu     $t6, $zero, -1
.L8000DC1C:
/* E81C 8000DC1C 440E2000 */  mfc1       $t6, $f4
/* E820 8000DC20 00000000 */  nop
/* E824 8000DC24 05C0FFFB */  bltz       $t6, .L8000DC14
/* E828 8000DC28 00000000 */   nop
.L8000DC2C:
/* E82C 8000DC2C 8FAA007C */  lw         $t2, 0x7c($sp)
/* E830 8000DC30 31D90FFF */  andi       $t9, $t6, 0xfff
/* E834 8000DC34 01B94825 */  or         $t1, $t5, $t9
/* E838 8000DC38 AD490000 */  sw         $t1, ($t2)
/* E83C 8000DC3C 87AB0186 */  lh         $t3, 0x186($sp)
/* E840 8000DC40 87AE0184 */  lh         $t6, 0x184($sp)
/* E844 8000DC44 8FAA007C */  lw         $t2, 0x7c($sp)
/* E848 8000DC48 000B6080 */  sll        $t4, $t3, 2
/* E84C 8000DC4C 31980FFF */  andi       $t8, $t4, 0xfff
/* E850 8000DC50 44CFF800 */  ctc1       $t7, $31
/* E854 8000DC54 000E6880 */  sll        $t5, $t6, 2
/* E858 8000DC58 31B90FFF */  andi       $t9, $t5, 0xfff
/* E85C 8000DC5C 00187B00 */  sll        $t7, $t8, 0xc
/* E860 8000DC60 01F94825 */  or         $t1, $t7, $t9
/* E864 8000DC64 AD490004 */  sw         $t1, 4($t2)
/* E868 8000DC68 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* E86C 8000DC6C 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* E870 8000DC70 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E874 8000DC74 3C18B400 */  lui        $t8, 0xb400
/* E878 8000DC78 AFAB0078 */  sw         $t3, 0x78($sp)
/* E87C 8000DC7C 8FAE0078 */  lw         $t6, 0x78($sp)
/* E880 8000DC80 256C0008 */  addiu      $t4, $t3, 8
/* E884 8000DC84 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* E888 8000DC88 ADD80000 */  sw         $t8, ($t6)
/* E88C 8000DC8C 93AD0177 */  lbu        $t5, 0x177($sp)
/* E890 8000DC90 3C198014 */  lui        $t9, %hi(D_8013D5A0)
/* E894 8000DC94 3C0C8014 */  lui        $t4, %hi(D_8013D3A0)
/* E898 8000DC98 000D7840 */  sll        $t7, $t5, 1
/* E89C 8000DC9C 032FC821 */  addu       $t9, $t9, $t7
/* E8A0 8000DCA0 8739D5A0 */  lh         $t9, %lo(D_8013D5A0)($t9)
/* E8A4 8000DCA4 018F6021 */  addu       $t4, $t4, $t7
/* E8A8 8000DCA8 858CD3A0 */  lh         $t4, %lo(D_8013D3A0)($t4)
/* E8AC 8000DCAC 001948C0 */  sll        $t1, $t9, 3
/* E8B0 8000DCB0 00095140 */  sll        $t2, $t1, 5
/* E8B4 8000DCB4 000CC0C0 */  sll        $t8, $t4, 3
/* E8B8 8000DCB8 00187140 */  sll        $t6, $t8, 5
/* E8BC 8000DCBC 314BFFFF */  andi       $t3, $t2, 0xffff
/* E8C0 8000DCC0 8FAA0078 */  lw         $t2, 0x78($sp)
/* E8C4 8000DCC4 31CDFFFF */  andi       $t5, $t6, 0xffff
/* E8C8 8000DCC8 000DCC00 */  sll        $t9, $t5, 0x10
/* E8CC 8000DCCC 01794825 */  or         $t1, $t3, $t9
/* E8D0 8000DCD0 AD490004 */  sw         $t1, 4($t2)
/* E8D4 8000DCD4 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* E8D8 8000DCD8 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* E8DC 8000DCDC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* E8E0 8000DCE0 3C18B300 */  lui        $t8, 0xb300
/* E8E4 8000DCE4 AFAF0074 */  sw         $t7, 0x74($sp)
/* E8E8 8000DCE8 8FAE0074 */  lw         $t6, 0x74($sp)
/* E8EC 8000DCEC 25EC0008 */  addiu      $t4, $t7, 8
/* E8F0 8000DCF0 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* E8F4 8000DCF4 3C014480 */  lui        $at, 0x4480
/* E8F8 8000DCF8 ADD80000 */  sw         $t8, ($t6)
/* E8FC 8000DCFC C7B20194 */  lwc1       $f18, 0x194($sp)
/* E900 8000DD00 44813000 */  mtc1       $at, $f6
/* E904 8000DD04 240B0001 */  addiu      $t3, $zero, 1
/* E908 8000DD08 46123283 */  div.s      $f10, $f6, $f18
/* E90C 8000DD0C 444DF800 */  cfc1       $t5, $31
/* E910 8000DD10 44CBF800 */  ctc1       $t3, $31
/* E914 8000DD14 00000000 */  nop
/* E918 8000DD18 46005424 */  cvt.w.s    $f16, $f10
/* E91C 8000DD1C 444BF800 */  cfc1       $t3, $31
/* E920 8000DD20 00000000 */  nop
/* E924 8000DD24 31610004 */  andi       $at, $t3, 4
/* E928 8000DD28 316B0078 */  andi       $t3, $t3, 0x78
/* E92C 8000DD2C 11600013 */  beqz       $t3, .L8000DD7C
/* E930 8000DD30 3C014F00 */   lui       $at, 0x4f00
/* E934 8000DD34 44818000 */  mtc1       $at, $f16
/* E938 8000DD38 240B0001 */  addiu      $t3, $zero, 1
/* E93C 8000DD3C 46105401 */  sub.s      $f16, $f10, $f16
/* E940 8000DD40 44CBF800 */  ctc1       $t3, $31
/* E944 8000DD44 00000000 */  nop
/* E948 8000DD48 46008424 */  cvt.w.s    $f16, $f16
/* E94C 8000DD4C 444BF800 */  cfc1       $t3, $31
/* E950 8000DD50 00000000 */  nop
/* E954 8000DD54 31610004 */  andi       $at, $t3, 4
/* E958 8000DD58 316B0078 */  andi       $t3, $t3, 0x78
/* E95C 8000DD5C 15600005 */  bnez       $t3, .L8000DD74
/* E960 8000DD60 00000000 */   nop
/* E964 8000DD64 440B8000 */  mfc1       $t3, $f16
/* E968 8000DD68 3C018000 */  lui        $at, 0x8000
/* E96C 8000DD6C 10000007 */  b          .L8000DD8C
/* E970 8000DD70 01615825 */   or        $t3, $t3, $at
.L8000DD74:
/* E974 8000DD74 10000005 */  b          .L8000DD8C
/* E978 8000DD78 240BFFFF */   addiu     $t3, $zero, -1
.L8000DD7C:
/* E97C 8000DD7C 440B8000 */  mfc1       $t3, $f16
/* E980 8000DD80 00000000 */  nop
/* E984 8000DD84 0560FFFB */  bltz       $t3, .L8000DD74
/* E988 8000DD88 00000000 */   nop
.L8000DD8C:
/* E98C 8000DD8C 3C014480 */  lui        $at, 0x4480
/* E990 8000DD90 44CDF800 */  ctc1       $t5, $31
/* E994 8000DD94 44814000 */  mtc1       $at, $f8
/* E998 8000DD98 C7A40198 */  lwc1       $f4, 0x198($sp)
/* E99C 8000DD9C 240F0001 */  addiu      $t7, $zero, 1
/* E9A0 8000DDA0 3179FFFF */  andi       $t9, $t3, 0xffff
/* E9A4 8000DDA4 46044183 */  div.s      $f6, $f8, $f4
/* E9A8 8000DDA8 00194C00 */  sll        $t1, $t9, 0x10
/* E9AC 8000DDAC 444AF800 */  cfc1       $t2, $31
/* E9B0 8000DDB0 44CFF800 */  ctc1       $t7, $31
/* E9B4 8000DDB4 00000000 */  nop
/* E9B8 8000DDB8 460034A4 */  cvt.w.s    $f18, $f6
/* E9BC 8000DDBC 444FF800 */  cfc1       $t7, $31
/* E9C0 8000DDC0 00000000 */  nop
/* E9C4 8000DDC4 31E10004 */  andi       $at, $t7, 4
/* E9C8 8000DDC8 31EF0078 */  andi       $t7, $t7, 0x78
/* E9CC 8000DDCC 11E00013 */  beqz       $t7, .L8000DE1C
/* E9D0 8000DDD0 3C014F00 */   lui       $at, 0x4f00
/* E9D4 8000DDD4 44819000 */  mtc1       $at, $f18
/* E9D8 8000DDD8 240F0001 */  addiu      $t7, $zero, 1
/* E9DC 8000DDDC 46123481 */  sub.s      $f18, $f6, $f18
/* E9E0 8000DDE0 44CFF800 */  ctc1       $t7, $31
/* E9E4 8000DDE4 00000000 */  nop
/* E9E8 8000DDE8 460094A4 */  cvt.w.s    $f18, $f18
/* E9EC 8000DDEC 444FF800 */  cfc1       $t7, $31
/* E9F0 8000DDF0 00000000 */  nop
/* E9F4 8000DDF4 31E10004 */  andi       $at, $t7, 4
/* E9F8 8000DDF8 31EF0078 */  andi       $t7, $t7, 0x78
/* E9FC 8000DDFC 15E00005 */  bnez       $t7, .L8000DE14
/* EA00 8000DE00 00000000 */   nop
/* EA04 8000DE04 440F9000 */  mfc1       $t7, $f18
/* EA08 8000DE08 3C018000 */  lui        $at, 0x8000
/* EA0C 8000DE0C 10000007 */  b          .L8000DE2C
/* EA10 8000DE10 01E17825 */   or        $t7, $t7, $at
.L8000DE14:
/* EA14 8000DE14 10000005 */  b          .L8000DE2C
/* EA18 8000DE18 240FFFFF */   addiu     $t7, $zero, -1
.L8000DE1C:
/* EA1C 8000DE1C 440F9000 */  mfc1       $t7, $f18
/* EA20 8000DE20 00000000 */  nop
/* EA24 8000DE24 05E0FFFB */  bltz       $t7, .L8000DE14
/* EA28 8000DE28 00000000 */   nop
.L8000DE2C:
/* EA2C 8000DE2C 8FAE0074 */  lw         $t6, 0x74($sp)
/* EA30 8000DE30 31ECFFFF */  andi       $t4, $t7, 0xffff
/* EA34 8000DE34 44CAF800 */  ctc1       $t2, $31
/* EA38 8000DE38 012CC025 */  or         $t8, $t1, $t4
/* EA3C 8000DE3C ADD80004 */  sw         $t8, 4($t6)
/* EA40 8000DE40 10000241 */  b          .L8000E748
/* EA44 8000DE44 00000000 */   nop
.L8000DE48:
/* EA48 8000DE48 93AD0177 */  lbu        $t5, 0x177($sp)
/* EA4C 8000DE4C 24010020 */  addiu      $at, $zero, 0x20
/* EA50 8000DE50 11A1023D */  beq        $t5, $at, .L8000E748
/* EA54 8000DE54 00000000 */   nop
/* EA58 8000DE58 3C0B800D */  lui        $t3, %hi(D_800D6520)
/* EA5C 8000DE5C 856B6520 */  lh         $t3, %lo(D_800D6520)($t3)
/* EA60 8000DE60 11600239 */  beqz       $t3, .L8000E748
/* EA64 8000DE64 00000000 */   nop
/* EA68 8000DE68 25B9FF5A */  addiu      $t9, $t5, -0xa6
/* EA6C 8000DE6C 332A00FF */  andi       $t2, $t9, 0xff
/* EA70 8000DE70 83A90176 */  lb         $t1, 0x176($sp)
/* EA74 8000DE74 A3B90177 */  sb         $t9, 0x177($sp)
/* EA78 8000DE78 05410003 */  bgez       $t2, .L8000DE88
/* EA7C 8000DE7C 000A7903 */   sra       $t7, $t2, 4
/* EA80 8000DE80 2541000F */  addiu      $at, $t2, 0xf
/* EA84 8000DE84 00017903 */  sra        $t7, $at, 4
.L8000DE88:
/* EA88 8000DE88 000F6400 */  sll        $t4, $t7, 0x10
/* EA8C 8000DE8C 000CC403 */  sra        $t8, $t4, 0x10
/* EA90 8000DE90 270E0001 */  addiu      $t6, $t8, 1
/* EA94 8000DE94 112E014A */  beq        $t1, $t6, .L8000E3C0
/* EA98 8000DE98 A7AF017C */   sh        $t7, 0x17c($sp)
/* EA9C 8000DE9C 152000E6 */  bnez       $t1, .L8000E238
/* EAA0 8000DEA0 00000000 */   nop
/* EAA4 8000DEA4 93A801A3 */  lbu        $t0, 0x1a3($sp)
/* EAA8 8000DEA8 11000007 */  beqz       $t0, .L8000DEC8
/* EAAC 8000DEAC 24010001 */   addiu     $at, $zero, 1
/* EAB0 8000DEB0 1101004F */  beq        $t0, $at, .L8000DFF0
/* EAB4 8000DEB4 24010002 */   addiu     $at, $zero, 2
/* EAB8 8000DEB8 11010097 */  beq        $t0, $at, .L8000E118
/* EABC 8000DEBC 00000000 */   nop
/* EAC0 8000DEC0 100000DD */  b          .L8000E238
/* EAC4 8000DEC4 00000000 */   nop
.L8000DEC8:
/* EAC8 8000DEC8 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* EACC 8000DECC 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* EAD0 8000DED0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EAD4 8000DED4 3C19FD10 */  lui        $t9, 0xfd10
/* EAD8 8000DED8 AFAB0070 */  sw         $t3, 0x70($sp)
/* EADC 8000DEDC 8FAA0070 */  lw         $t2, 0x70($sp)
/* EAE0 8000DEE0 256D0008 */  addiu      $t5, $t3, 8
/* EAE4 8000DEE4 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* EAE8 8000DEE8 AD590000 */  sw         $t9, ($t2)
/* EAEC 8000DEEC 8FAC0070 */  lw         $t4, 0x70($sp)
/* EAF0 8000DEF0 3C0F8018 */  lui        $t7, %hi(D_80178EA8)
/* EAF4 8000DEF4 25EF8EA8 */  addiu      $t7, $t7, %lo(D_80178EA8)
/* EAF8 8000DEF8 AD8F0004 */  sw         $t7, 4($t4)
/* EAFC 8000DEFC 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* EB00 8000DF00 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* EB04 8000DF04 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EB08 8000DF08 3C09E800 */  lui        $t1, 0xe800
/* EB0C 8000DF0C AFB8006C */  sw         $t8, 0x6c($sp)
/* EB10 8000DF10 8FAB006C */  lw         $t3, 0x6c($sp)
/* EB14 8000DF14 270E0008 */  addiu      $t6, $t8, 8
/* EB18 8000DF18 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* EB1C 8000DF1C AD690000 */  sw         $t1, ($t3)
/* EB20 8000DF20 8FAD006C */  lw         $t5, 0x6c($sp)
/* EB24 8000DF24 ADA00004 */  sw         $zero, 4($t5)
/* EB28 8000DF28 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* EB2C 8000DF2C 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* EB30 8000DF30 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EB34 8000DF34 3C0FF500 */  lui        $t7, 0xf500
/* EB38 8000DF38 AFB90068 */  sw         $t9, 0x68($sp)
/* EB3C 8000DF3C 8FAC0068 */  lw         $t4, 0x68($sp)
/* EB40 8000DF40 272A0008 */  addiu      $t2, $t9, 8
/* EB44 8000DF44 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* EB48 8000DF48 35EF0100 */  ori        $t7, $t7, 0x100
/* EB4C 8000DF4C AD8F0000 */  sw         $t7, ($t4)
/* EB50 8000DF50 8FAE0068 */  lw         $t6, 0x68($sp)
/* EB54 8000DF54 3C180700 */  lui        $t8, 0x700
/* EB58 8000DF58 ADD80004 */  sw         $t8, 4($t6)
/* EB5C 8000DF5C 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* EB60 8000DF60 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* EB64 8000DF64 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EB68 8000DF68 3C0DE600 */  lui        $t5, 0xe600
/* EB6C 8000DF6C AFA90064 */  sw         $t1, 0x64($sp)
/* EB70 8000DF70 8FB90064 */  lw         $t9, 0x64($sp)
/* EB74 8000DF74 252B0008 */  addiu      $t3, $t1, 8
/* EB78 8000DF78 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* EB7C 8000DF7C AF2D0000 */  sw         $t5, ($t9)
/* EB80 8000DF80 8FAA0064 */  lw         $t2, 0x64($sp)
/* EB84 8000DF84 AD400004 */  sw         $zero, 4($t2)
/* EB88 8000DF88 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* EB8C 8000DF8C 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* EB90 8000DF90 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EB94 8000DF94 3C18F000 */  lui        $t8, 0xf000
/* EB98 8000DF98 AFAF0060 */  sw         $t7, 0x60($sp)
/* EB9C 8000DF9C 8FAE0060 */  lw         $t6, 0x60($sp)
/* EBA0 8000DFA0 25EC0008 */  addiu      $t4, $t7, 8
/* EBA4 8000DFA4 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* EBA8 8000DFA8 ADD80000 */  sw         $t8, ($t6)
/* EBAC 8000DFAC 8FAB0060 */  lw         $t3, 0x60($sp)
/* EBB0 8000DFB0 3C090703 */  lui        $t1, 0x703
/* EBB4 8000DFB4 3529C000 */  ori        $t1, $t1, 0xc000
/* EBB8 8000DFB8 AD690004 */  sw         $t1, 4($t3)
/* EBBC 8000DFBC 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* EBC0 8000DFC0 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* EBC4 8000DFC4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EBC8 8000DFC8 3C0AE700 */  lui        $t2, 0xe700
/* EBCC 8000DFCC AFAD005C */  sw         $t5, 0x5c($sp)
/* EBD0 8000DFD0 8FAF005C */  lw         $t7, 0x5c($sp)
/* EBD4 8000DFD4 25B90008 */  addiu      $t9, $t5, 8
/* EBD8 8000DFD8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* EBDC 8000DFDC ADEA0000 */  sw         $t2, ($t7)
/* EBE0 8000DFE0 8FAC005C */  lw         $t4, 0x5c($sp)
/* EBE4 8000DFE4 AD800004 */  sw         $zero, 4($t4)
/* EBE8 8000DFE8 10000093 */  b          .L8000E238
/* EBEC 8000DFEC 00000000 */   nop
.L8000DFF0:
/* EBF0 8000DFF0 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* EBF4 8000DFF4 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* EBF8 8000DFF8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EBFC 8000DFFC 3C09FD10 */  lui        $t1, 0xfd10
/* EC00 8000E000 AFB80058 */  sw         $t8, 0x58($sp)
/* EC04 8000E004 8FAB0058 */  lw         $t3, 0x58($sp)
/* EC08 8000E008 270E0008 */  addiu      $t6, $t8, 8
/* EC0C 8000E00C AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* EC10 8000E010 AD690000 */  sw         $t1, ($t3)
/* EC14 8000E014 8FB90058 */  lw         $t9, 0x58($sp)
/* EC18 8000E018 3C0D8018 */  lui        $t5, %hi(D_80178EC0)
/* EC1C 8000E01C 25AD8EC0 */  addiu      $t5, $t5, %lo(D_80178EC0)
/* EC20 8000E020 AF2D0004 */  sw         $t5, 4($t9)
/* EC24 8000E024 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* EC28 8000E028 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* EC2C 8000E02C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EC30 8000E030 3C0CE800 */  lui        $t4, 0xe800
/* EC34 8000E034 AFAA0054 */  sw         $t2, 0x54($sp)
/* EC38 8000E038 8FB80054 */  lw         $t8, 0x54($sp)
/* EC3C 8000E03C 254F0008 */  addiu      $t7, $t2, 8
/* EC40 8000E040 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* EC44 8000E044 AF0C0000 */  sw         $t4, ($t8)
/* EC48 8000E048 8FAE0054 */  lw         $t6, 0x54($sp)
/* EC4C 8000E04C ADC00004 */  sw         $zero, 4($t6)
/* EC50 8000E050 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* EC54 8000E054 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* EC58 8000E058 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EC5C 8000E05C 3C0DF500 */  lui        $t5, 0xf500
/* EC60 8000E060 AFA90050 */  sw         $t1, 0x50($sp)
/* EC64 8000E064 8FB90050 */  lw         $t9, 0x50($sp)
/* EC68 8000E068 252B0008 */  addiu      $t3, $t1, 8
/* EC6C 8000E06C AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* EC70 8000E070 35AD0100 */  ori        $t5, $t5, 0x100
/* EC74 8000E074 AF2D0000 */  sw         $t5, ($t9)
/* EC78 8000E078 8FAF0050 */  lw         $t7, 0x50($sp)
/* EC7C 8000E07C 3C0A0700 */  lui        $t2, 0x700
/* EC80 8000E080 ADEA0004 */  sw         $t2, 4($t7)
/* EC84 8000E084 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* EC88 8000E088 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* EC8C 8000E08C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EC90 8000E090 3C0EE600 */  lui        $t6, 0xe600
/* EC94 8000E094 AFAC004C */  sw         $t4, 0x4c($sp)
/* EC98 8000E098 8FA9004C */  lw         $t1, 0x4c($sp)
/* EC9C 8000E09C 25980008 */  addiu      $t8, $t4, 8
/* ECA0 8000E0A0 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* ECA4 8000E0A4 AD2E0000 */  sw         $t6, ($t1)
/* ECA8 8000E0A8 8FAB004C */  lw         $t3, 0x4c($sp)
/* ECAC 8000E0AC AD600004 */  sw         $zero, 4($t3)
/* ECB0 8000E0B0 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* ECB4 8000E0B4 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* ECB8 8000E0B8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* ECBC 8000E0BC 3C0AF000 */  lui        $t2, 0xf000
/* ECC0 8000E0C0 AFAD0048 */  sw         $t5, 0x48($sp)
/* ECC4 8000E0C4 8FAF0048 */  lw         $t7, 0x48($sp)
/* ECC8 8000E0C8 25B90008 */  addiu      $t9, $t5, 8
/* ECCC 8000E0CC AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* ECD0 8000E0D0 ADEA0000 */  sw         $t2, ($t7)
/* ECD4 8000E0D4 8FB80048 */  lw         $t8, 0x48($sp)
/* ECD8 8000E0D8 3C0C0703 */  lui        $t4, 0x703
/* ECDC 8000E0DC 358CC000 */  ori        $t4, $t4, 0xc000
/* ECE0 8000E0E0 AF0C0004 */  sw         $t4, 4($t8)
/* ECE4 8000E0E4 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* ECE8 8000E0E8 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* ECEC 8000E0EC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* ECF0 8000E0F0 3C0BE700 */  lui        $t3, 0xe700
/* ECF4 8000E0F4 AFAE0044 */  sw         $t6, 0x44($sp)
/* ECF8 8000E0F8 8FAD0044 */  lw         $t5, 0x44($sp)
/* ECFC 8000E0FC 25C90008 */  addiu      $t1, $t6, 8
/* ED00 8000E100 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* ED04 8000E104 ADAB0000 */  sw         $t3, ($t5)
/* ED08 8000E108 8FB90044 */  lw         $t9, 0x44($sp)
/* ED0C 8000E10C AF200004 */  sw         $zero, 4($t9)
/* ED10 8000E110 10000049 */  b          .L8000E238
/* ED14 8000E114 00000000 */   nop
.L8000E118:
/* ED18 8000E118 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* ED1C 8000E11C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* ED20 8000E120 3C01800F */  lui        $at, %hi(D_800F2A64)
/* ED24 8000E124 3C0CFD10 */  lui        $t4, 0xfd10
/* ED28 8000E128 AFAA0040 */  sw         $t2, 0x40($sp)
/* ED2C 8000E12C 8FB80040 */  lw         $t8, 0x40($sp)
/* ED30 8000E130 254F0008 */  addiu      $t7, $t2, 8
/* ED34 8000E134 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* ED38 8000E138 AF0C0000 */  sw         $t4, ($t8)
/* ED3C 8000E13C 8FA90040 */  lw         $t1, 0x40($sp)
/* ED40 8000E140 3C0E8018 */  lui        $t6, %hi(D_80178ED8)
/* ED44 8000E144 25CE8ED8 */  addiu      $t6, $t6, %lo(D_80178ED8)
/* ED48 8000E148 AD2E0004 */  sw         $t6, 4($t1)
/* ED4C 8000E14C 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* ED50 8000E150 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* ED54 8000E154 3C01800F */  lui        $at, %hi(D_800F2A64)
/* ED58 8000E158 3C19E800 */  lui        $t9, 0xe800
/* ED5C 8000E15C AFAB003C */  sw         $t3, 0x3c($sp)
/* ED60 8000E160 8FAA003C */  lw         $t2, 0x3c($sp)
/* ED64 8000E164 256D0008 */  addiu      $t5, $t3, 8
/* ED68 8000E168 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* ED6C 8000E16C AD590000 */  sw         $t9, ($t2)
/* ED70 8000E170 8FAF003C */  lw         $t7, 0x3c($sp)
/* ED74 8000E174 ADE00004 */  sw         $zero, 4($t7)
/* ED78 8000E178 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* ED7C 8000E17C 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* ED80 8000E180 3C01800F */  lui        $at, %hi(D_800F2A64)
/* ED84 8000E184 3C0EF500 */  lui        $t6, 0xf500
/* ED88 8000E188 AFAC0038 */  sw         $t4, 0x38($sp)
/* ED8C 8000E18C 8FA90038 */  lw         $t1, 0x38($sp)
/* ED90 8000E190 25980008 */  addiu      $t8, $t4, 8
/* ED94 8000E194 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* ED98 8000E198 35CE0100 */  ori        $t6, $t6, 0x100
/* ED9C 8000E19C AD2E0000 */  sw         $t6, ($t1)
/* EDA0 8000E1A0 8FAD0038 */  lw         $t5, 0x38($sp)
/* EDA4 8000E1A4 3C0B0700 */  lui        $t3, 0x700
/* EDA8 8000E1A8 ADAB0004 */  sw         $t3, 4($t5)
/* EDAC 8000E1AC 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* EDB0 8000E1B0 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* EDB4 8000E1B4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EDB8 8000E1B8 3C0FE600 */  lui        $t7, 0xe600
/* EDBC 8000E1BC AFB90034 */  sw         $t9, 0x34($sp)
/* EDC0 8000E1C0 8FAC0034 */  lw         $t4, 0x34($sp)
/* EDC4 8000E1C4 272A0008 */  addiu      $t2, $t9, 8
/* EDC8 8000E1C8 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* EDCC 8000E1CC AD8F0000 */  sw         $t7, ($t4)
/* EDD0 8000E1D0 8FB80034 */  lw         $t8, 0x34($sp)
/* EDD4 8000E1D4 AF000004 */  sw         $zero, 4($t8)
/* EDD8 8000E1D8 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* EDDC 8000E1DC 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* EDE0 8000E1E0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EDE4 8000E1E4 3C0BF000 */  lui        $t3, 0xf000
/* EDE8 8000E1E8 AFAE0030 */  sw         $t6, 0x30($sp)
/* EDEC 8000E1EC 8FAD0030 */  lw         $t5, 0x30($sp)
/* EDF0 8000E1F0 25C90008 */  addiu      $t1, $t6, 8
/* EDF4 8000E1F4 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* EDF8 8000E1F8 ADAB0000 */  sw         $t3, ($t5)
/* EDFC 8000E1FC 8FAA0030 */  lw         $t2, 0x30($sp)
/* EE00 8000E200 3C190703 */  lui        $t9, 0x703
/* EE04 8000E204 3739C000 */  ori        $t9, $t9, 0xc000
/* EE08 8000E208 AD590004 */  sw         $t9, 4($t2)
/* EE0C 8000E20C 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* EE10 8000E210 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* EE14 8000E214 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EE18 8000E218 3C18E700 */  lui        $t8, 0xe700
/* EE1C 8000E21C AFAF002C */  sw         $t7, 0x2c($sp)
/* EE20 8000E220 8FAE002C */  lw         $t6, 0x2c($sp)
/* EE24 8000E224 25EC0008 */  addiu      $t4, $t7, 8
/* EE28 8000E228 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* EE2C 8000E22C ADD80000 */  sw         $t8, ($t6)
/* EE30 8000E230 8FA9002C */  lw         $t1, 0x2c($sp)
/* EE34 8000E234 AD200004 */  sw         $zero, 4($t1)
.L8000E238:
/* EE38 8000E238 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* EE3C 8000E23C 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* EE40 8000E240 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EE44 8000E244 3C19FD50 */  lui        $t9, 0xfd50
/* EE48 8000E248 AFAB0028 */  sw         $t3, 0x28($sp)
/* EE4C 8000E24C 8FAA0028 */  lw         $t2, 0x28($sp)
/* EE50 8000E250 256D0008 */  addiu      $t5, $t3, 8
/* EE54 8000E254 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* EE58 8000E258 AD590000 */  sw         $t9, ($t2)
/* EE5C 8000E25C 87AF017C */  lh         $t7, 0x17c($sp)
/* EE60 8000E260 8FAB0028 */  lw         $t3, 0x28($sp)
/* EE64 8000E264 3C0E8017 */  lui        $t6, 0x8017
/* EE68 8000E268 000F62C0 */  sll        $t4, $t7, 0xb
/* EE6C 8000E26C 05810003 */  bgez       $t4, .L8000E27C
/* EE70 8000E270 000CC043 */   sra       $t8, $t4, 1
/* EE74 8000E274 25810001 */  addiu      $at, $t4, 1
/* EE78 8000E278 0001C043 */  sra        $t8, $at, 1
.L8000E27C:
/* EE7C 8000E27C 25CE79E0 */  addiu      $t6, $t6, 0x79e0
/* EE80 8000E280 030E4821 */  addu       $t1, $t8, $t6
/* EE84 8000E284 AD690004 */  sw         $t1, 4($t3)
/* EE88 8000E288 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* EE8C 8000E28C 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* EE90 8000E290 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EE94 8000E294 3C0AF550 */  lui        $t2, 0xf550
/* EE98 8000E298 AFAD0024 */  sw         $t5, 0x24($sp)
/* EE9C 8000E29C 8FAF0024 */  lw         $t7, 0x24($sp)
/* EEA0 8000E2A0 25B90008 */  addiu      $t9, $t5, 8
/* EEA4 8000E2A4 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* EEA8 8000E2A8 ADEA0000 */  sw         $t2, ($t7)
/* EEAC 8000E2AC 8FB80024 */  lw         $t8, 0x24($sp)
/* EEB0 8000E2B0 3C0C0701 */  lui        $t4, 0x701
/* EEB4 8000E2B4 358CC040 */  ori        $t4, $t4, 0xc040
/* EEB8 8000E2B8 AF0C0004 */  sw         $t4, 4($t8)
/* EEBC 8000E2BC 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* EEC0 8000E2C0 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* EEC4 8000E2C4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EEC8 8000E2C8 3C0BE600 */  lui        $t3, 0xe600
/* EECC 8000E2CC AFAE0020 */  sw         $t6, 0x20($sp)
/* EED0 8000E2D0 8FAD0020 */  lw         $t5, 0x20($sp)
/* EED4 8000E2D4 25C90008 */  addiu      $t1, $t6, 8
/* EED8 8000E2D8 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* EEDC 8000E2DC ADAB0000 */  sw         $t3, ($t5)
/* EEE0 8000E2E0 8FB90020 */  lw         $t9, 0x20($sp)
/* EEE4 8000E2E4 AF200004 */  sw         $zero, 4($t9)
/* EEE8 8000E2E8 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* EEEC 8000E2EC 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* EEF0 8000E2F0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EEF4 8000E2F4 3C0CF300 */  lui        $t4, 0xf300
/* EEF8 8000E2F8 AFAA001C */  sw         $t2, 0x1c($sp)
/* EEFC 8000E2FC 8FB8001C */  lw         $t8, 0x1c($sp)
/* EF00 8000E300 254F0008 */  addiu      $t7, $t2, 8
/* EF04 8000E304 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* EF08 8000E308 AF0C0000 */  sw         $t4, ($t8)
/* EF0C 8000E30C 8FA9001C */  lw         $t1, 0x1c($sp)
/* EF10 8000E310 3C0E071F */  lui        $t6, 0x71f
/* EF14 8000E314 35CEF800 */  ori        $t6, $t6, 0xf800
/* EF18 8000E318 AD2E0004 */  sw         $t6, 4($t1)
/* EF1C 8000E31C 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* EF20 8000E320 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* EF24 8000E324 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EF28 8000E328 3C19E700 */  lui        $t9, 0xe700
/* EF2C 8000E32C AFAB0018 */  sw         $t3, 0x18($sp)
/* EF30 8000E330 8FAA0018 */  lw         $t2, 0x18($sp)
/* EF34 8000E334 256D0008 */  addiu      $t5, $t3, 8
/* EF38 8000E338 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* EF3C 8000E33C AD590000 */  sw         $t9, ($t2)
/* EF40 8000E340 8FAF0018 */  lw         $t7, 0x18($sp)
/* EF44 8000E344 ADE00004 */  sw         $zero, 4($t7)
/* EF48 8000E348 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* EF4C 8000E34C 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* EF50 8000E350 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EF54 8000E354 3C0EF540 */  lui        $t6, 0xf540
/* EF58 8000E358 AFAC0014 */  sw         $t4, 0x14($sp)
/* EF5C 8000E35C 8FA90014 */  lw         $t1, 0x14($sp)
/* EF60 8000E360 25980008 */  addiu      $t8, $t4, 8
/* EF64 8000E364 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* EF68 8000E368 35CE0200 */  ori        $t6, $t6, 0x200
/* EF6C 8000E36C AD2E0000 */  sw         $t6, ($t1)
/* EF70 8000E370 8FAD0014 */  lw         $t5, 0x14($sp)
/* EF74 8000E374 3C0B0001 */  lui        $t3, 1
/* EF78 8000E378 356BC040 */  ori        $t3, $t3, 0xc040
/* EF7C 8000E37C ADAB0004 */  sw         $t3, 4($t5)
/* EF80 8000E380 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* EF84 8000E384 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* EF88 8000E388 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EF8C 8000E38C 3C0FF200 */  lui        $t7, 0xf200
/* EF90 8000E390 AFB90010 */  sw         $t9, 0x10($sp)
/* EF94 8000E394 8FAC0010 */  lw         $t4, 0x10($sp)
/* EF98 8000E398 272A0008 */  addiu      $t2, $t9, 8
/* EF9C 8000E39C AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* EFA0 8000E3A0 AD8F0000 */  sw         $t7, ($t4)
/* EFA4 8000E3A4 8FAE0010 */  lw         $t6, 0x10($sp)
/* EFA8 8000E3A8 3C180003 */  lui        $t8, 3
/* EFAC 8000E3AC 3718C1FC */  ori        $t8, $t8, 0xc1fc
/* EFB0 8000E3B0 ADD80004 */  sw         $t8, 4($t6)
/* EFB4 8000E3B4 87A9017C */  lh         $t1, 0x17c($sp)
/* EFB8 8000E3B8 252B0001 */  addiu      $t3, $t1, 1
/* EFBC 8000E3BC A3AB0176 */  sb         $t3, 0x176($sp)
.L8000E3C0:
/* EFC0 8000E3C0 83B90176 */  lb         $t9, 0x176($sp)
/* EFC4 8000E3C4 93AD0177 */  lbu        $t5, 0x177($sp)
/* EFC8 8000E3C8 00195100 */  sll        $t2, $t9, 4
/* EFCC 8000E3CC 01AA7823 */  subu       $t7, $t5, $t2
/* EFD0 8000E3D0 25EC0010 */  addiu      $t4, $t7, 0x10
/* EFD4 8000E3D4 A3AC0177 */  sb         $t4, 0x177($sp)
/* EFD8 8000E3D8 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* EFDC 8000E3DC 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* EFE0 8000E3E0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* EFE4 8000E3E4 87A90186 */  lh         $t1, 0x186($sp)
/* EFE8 8000E3E8 270E0008 */  addiu      $t6, $t8, 8
/* EFEC 8000E3EC AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* EFF0 8000E3F0 3C0140E0 */  lui        $at, 0x40e0
/* EFF4 8000E3F4 44815000 */  mtc1       $at, $f10
/* EFF8 8000E3F8 C7B00194 */  lwc1       $f16, 0x194($sp)
/* EFFC 8000E3FC 44892000 */  mtc1       $t1, $f4
/* F000 8000E400 3C014080 */  lui        $at, 0x4080
/* F004 8000E404 46105202 */  mul.s      $f8, $f10, $f16
/* F008 8000E408 44815000 */  mtc1       $at, $f10
/* F00C 8000E40C 24190001 */  addiu      $t9, $zero, 1
/* F010 8000E410 AFB8000C */  sw         $t8, 0xc($sp)
/* F014 8000E414 468021A0 */  cvt.s.w    $f6, $f4
/* F018 8000E418 46083480 */  add.s      $f18, $f6, $f8
/* F01C 8000E41C 460A9402 */  mul.s      $f16, $f18, $f10
/* F020 8000E420 444BF800 */  cfc1       $t3, $31
/* F024 8000E424 44D9F800 */  ctc1       $t9, $31
/* F028 8000E428 00000000 */  nop
/* F02C 8000E42C 46008124 */  cvt.w.s    $f4, $f16
/* F030 8000E430 4459F800 */  cfc1       $t9, $31
/* F034 8000E434 00000000 */  nop
/* F038 8000E438 33210004 */  andi       $at, $t9, 4
/* F03C 8000E43C 33390078 */  andi       $t9, $t9, 0x78
/* F040 8000E440 13200013 */  beqz       $t9, .L8000E490
/* F044 8000E444 3C014F00 */   lui       $at, 0x4f00
/* F048 8000E448 44812000 */  mtc1       $at, $f4
/* F04C 8000E44C 24190001 */  addiu      $t9, $zero, 1
/* F050 8000E450 46048101 */  sub.s      $f4, $f16, $f4
/* F054 8000E454 44D9F800 */  ctc1       $t9, $31
/* F058 8000E458 00000000 */  nop
/* F05C 8000E45C 46002124 */  cvt.w.s    $f4, $f4
/* F060 8000E460 4459F800 */  cfc1       $t9, $31
/* F064 8000E464 00000000 */  nop
/* F068 8000E468 33210004 */  andi       $at, $t9, 4
/* F06C 8000E46C 33390078 */  andi       $t9, $t9, 0x78
/* F070 8000E470 17200005 */  bnez       $t9, .L8000E488
/* F074 8000E474 00000000 */   nop
/* F078 8000E478 44192000 */  mfc1       $t9, $f4
/* F07C 8000E47C 3C018000 */  lui        $at, 0x8000
/* F080 8000E480 10000007 */  b          .L8000E4A0
/* F084 8000E484 0321C825 */   or        $t9, $t9, $at
.L8000E488:
/* F088 8000E488 10000005 */  b          .L8000E4A0
/* F08C 8000E48C 2419FFFF */   addiu     $t9, $zero, -1
.L8000E490:
/* F090 8000E490 44192000 */  mfc1       $t9, $f4
/* F094 8000E494 00000000 */  nop
/* F098 8000E498 0720FFFB */  bltz       $t9, .L8000E488
/* F09C 8000E49C 00000000 */   nop
.L8000E4A0:
/* F0A0 8000E4A0 332D0FFF */  andi       $t5, $t9, 0xfff
/* F0A4 8000E4A4 000D5300 */  sll        $t2, $t5, 0xc
/* F0A8 8000E4A8 3C01E400 */  lui        $at, 0xe400
/* F0AC 8000E4AC 87AC0184 */  lh         $t4, 0x184($sp)
/* F0B0 8000E4B0 01417825 */  or         $t7, $t2, $at
/* F0B4 8000E4B4 3C0140E0 */  lui        $at, 0x40e0
/* F0B8 8000E4B8 44CBF800 */  ctc1       $t3, $31
/* F0BC 8000E4BC 44813000 */  mtc1       $at, $f6
/* F0C0 8000E4C0 C7A80198 */  lwc1       $f8, 0x198($sp)
/* F0C4 8000E4C4 448C5000 */  mtc1       $t4, $f10
/* F0C8 8000E4C8 3C014080 */  lui        $at, 0x4080
/* F0CC 8000E4CC 46083482 */  mul.s      $f18, $f6, $f8
/* F0D0 8000E4D0 44813000 */  mtc1       $at, $f6
/* F0D4 8000E4D4 240E0001 */  addiu      $t6, $zero, 1
/* F0D8 8000E4D8 46805420 */  cvt.s.w    $f16, $f10
/* F0DC 8000E4DC 46128100 */  add.s      $f4, $f16, $f18
/* F0E0 8000E4E0 46062202 */  mul.s      $f8, $f4, $f6
/* F0E4 8000E4E4 4458F800 */  cfc1       $t8, $31
/* F0E8 8000E4E8 44CEF800 */  ctc1       $t6, $31
/* F0EC 8000E4EC 00000000 */  nop
/* F0F0 8000E4F0 460042A4 */  cvt.w.s    $f10, $f8
/* F0F4 8000E4F4 444EF800 */  cfc1       $t6, $31
/* F0F8 8000E4F8 00000000 */  nop
/* F0FC 8000E4FC 31C10004 */  andi       $at, $t6, 4
/* F100 8000E500 31CE0078 */  andi       $t6, $t6, 0x78
/* F104 8000E504 11C00013 */  beqz       $t6, .L8000E554
/* F108 8000E508 3C014F00 */   lui       $at, 0x4f00
/* F10C 8000E50C 44815000 */  mtc1       $at, $f10
/* F110 8000E510 240E0001 */  addiu      $t6, $zero, 1
/* F114 8000E514 460A4281 */  sub.s      $f10, $f8, $f10
/* F118 8000E518 44CEF800 */  ctc1       $t6, $31
/* F11C 8000E51C 00000000 */  nop
/* F120 8000E520 460052A4 */  cvt.w.s    $f10, $f10
/* F124 8000E524 444EF800 */  cfc1       $t6, $31
/* F128 8000E528 00000000 */  nop
/* F12C 8000E52C 31C10004 */  andi       $at, $t6, 4
/* F130 8000E530 31CE0078 */  andi       $t6, $t6, 0x78
/* F134 8000E534 15C00005 */  bnez       $t6, .L8000E54C
/* F138 8000E538 00000000 */   nop
/* F13C 8000E53C 440E5000 */  mfc1       $t6, $f10
/* F140 8000E540 3C018000 */  lui        $at, 0x8000
/* F144 8000E544 10000007 */  b          .L8000E564
/* F148 8000E548 01C17025 */   or        $t6, $t6, $at
.L8000E54C:
/* F14C 8000E54C 10000005 */  b          .L8000E564
/* F150 8000E550 240EFFFF */   addiu     $t6, $zero, -1
.L8000E554:
/* F154 8000E554 440E5000 */  mfc1       $t6, $f10
/* F158 8000E558 00000000 */  nop
/* F15C 8000E55C 05C0FFFB */  bltz       $t6, .L8000E54C
/* F160 8000E560 00000000 */   nop
.L8000E564:
/* F164 8000E564 8FB9000C */  lw         $t9, 0xc($sp)
/* F168 8000E568 31C90FFF */  andi       $t1, $t6, 0xfff
/* F16C 8000E56C 01E95825 */  or         $t3, $t7, $t1
/* F170 8000E570 AF2B0000 */  sw         $t3, ($t9)
/* F174 8000E574 87AD0186 */  lh         $t5, 0x186($sp)
/* F178 8000E578 87AE0184 */  lh         $t6, 0x184($sp)
/* F17C 8000E57C 8FB9000C */  lw         $t9, 0xc($sp)
/* F180 8000E580 000D5080 */  sll        $t2, $t5, 2
/* F184 8000E584 314C0FFF */  andi       $t4, $t2, 0xfff
/* F188 8000E588 44D8F800 */  ctc1       $t8, $31
/* F18C 8000E58C 000E7880 */  sll        $t7, $t6, 2
/* F190 8000E590 31E90FFF */  andi       $t1, $t7, 0xfff
/* F194 8000E594 000CC300 */  sll        $t8, $t4, 0xc
/* F198 8000E598 03095825 */  or         $t3, $t8, $t1
/* F19C 8000E59C AF2B0004 */  sw         $t3, 4($t9)
/* F1A0 8000E5A0 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* F1A4 8000E5A4 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* F1A8 8000E5A8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F1AC 8000E5AC 3C0CB400 */  lui        $t4, 0xb400
/* F1B0 8000E5B0 AFAD0008 */  sw         $t5, 8($sp)
/* F1B4 8000E5B4 8FAE0008 */  lw         $t6, 8($sp)
/* F1B8 8000E5B8 25AA0008 */  addiu      $t2, $t5, 8
/* F1BC 8000E5BC AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* F1C0 8000E5C0 ADCC0000 */  sw         $t4, ($t6)
/* F1C4 8000E5C4 93AF0177 */  lbu        $t7, 0x177($sp)
/* F1C8 8000E5C8 8FB90008 */  lw         $t9, 8($sp)
/* F1CC 8000E5CC 000FC0C0 */  sll        $t8, $t7, 3
/* F1D0 8000E5D0 00184940 */  sll        $t1, $t8, 5
/* F1D4 8000E5D4 312BFFFF */  andi       $t3, $t1, 0xffff
/* F1D8 8000E5D8 AF2B0004 */  sw         $t3, 4($t9)
/* F1DC 8000E5DC 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* F1E0 8000E5E0 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* F1E4 8000E5E4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F1E8 8000E5E8 3C0CB300 */  lui        $t4, 0xb300
/* F1EC 8000E5EC AFAD0004 */  sw         $t5, 4($sp)
/* F1F0 8000E5F0 8FAE0004 */  lw         $t6, 4($sp)
/* F1F4 8000E5F4 25AA0008 */  addiu      $t2, $t5, 8
/* F1F8 8000E5F8 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* F1FC 8000E5FC 3C014480 */  lui        $at, 0x4480
/* F200 8000E600 ADCC0000 */  sw         $t4, ($t6)
/* F204 8000E604 C7B20194 */  lwc1       $f18, 0x194($sp)
/* F208 8000E608 44818000 */  mtc1       $at, $f16
/* F20C 8000E60C 24180001 */  addiu      $t8, $zero, 1
/* F210 8000E610 46128103 */  div.s      $f4, $f16, $f18
/* F214 8000E614 444FF800 */  cfc1       $t7, $31
/* F218 8000E618 44D8F800 */  ctc1       $t8, $31
/* F21C 8000E61C 00000000 */  nop
/* F220 8000E620 460021A4 */  cvt.w.s    $f6, $f4
/* F224 8000E624 4458F800 */  cfc1       $t8, $31
/* F228 8000E628 00000000 */  nop
/* F22C 8000E62C 33010004 */  andi       $at, $t8, 4
/* F230 8000E630 33180078 */  andi       $t8, $t8, 0x78
/* F234 8000E634 13000013 */  beqz       $t8, .L8000E684
/* F238 8000E638 3C014F00 */   lui       $at, 0x4f00
/* F23C 8000E63C 44813000 */  mtc1       $at, $f6
/* F240 8000E640 24180001 */  addiu      $t8, $zero, 1
/* F244 8000E644 46062181 */  sub.s      $f6, $f4, $f6
/* F248 8000E648 44D8F800 */  ctc1       $t8, $31
/* F24C 8000E64C 00000000 */  nop
/* F250 8000E650 460031A4 */  cvt.w.s    $f6, $f6
/* F254 8000E654 4458F800 */  cfc1       $t8, $31
/* F258 8000E658 00000000 */  nop
/* F25C 8000E65C 33010004 */  andi       $at, $t8, 4
/* F260 8000E660 33180078 */  andi       $t8, $t8, 0x78
/* F264 8000E664 17000005 */  bnez       $t8, .L8000E67C
/* F268 8000E668 00000000 */   nop
/* F26C 8000E66C 44183000 */  mfc1       $t8, $f6
/* F270 8000E670 3C018000 */  lui        $at, 0x8000
/* F274 8000E674 10000007 */  b          .L8000E694
/* F278 8000E678 0301C025 */   or        $t8, $t8, $at
.L8000E67C:
/* F27C 8000E67C 10000005 */  b          .L8000E694
/* F280 8000E680 2418FFFF */   addiu     $t8, $zero, -1
.L8000E684:
/* F284 8000E684 44183000 */  mfc1       $t8, $f6
/* F288 8000E688 00000000 */  nop
/* F28C 8000E68C 0700FFFB */  bltz       $t8, .L8000E67C
/* F290 8000E690 00000000 */   nop
.L8000E694:
/* F294 8000E694 3C014480 */  lui        $at, 0x4480
/* F298 8000E698 44CFF800 */  ctc1       $t7, $31
/* F29C 8000E69C 44814000 */  mtc1       $at, $f8
/* F2A0 8000E6A0 C7AA0198 */  lwc1       $f10, 0x198($sp)
/* F2A4 8000E6A4 240D0001 */  addiu      $t5, $zero, 1
/* F2A8 8000E6A8 3309FFFF */  andi       $t1, $t8, 0xffff
/* F2AC 8000E6AC 460A4403 */  div.s      $f16, $f8, $f10
/* F2B0 8000E6B0 00095C00 */  sll        $t3, $t1, 0x10
/* F2B4 8000E6B4 4459F800 */  cfc1       $t9, $31
/* F2B8 8000E6B8 44CDF800 */  ctc1       $t5, $31
/* F2BC 8000E6BC 00000000 */  nop
/* F2C0 8000E6C0 460084A4 */  cvt.w.s    $f18, $f16
/* F2C4 8000E6C4 444DF800 */  cfc1       $t5, $31
/* F2C8 8000E6C8 00000000 */  nop
/* F2CC 8000E6CC 31A10004 */  andi       $at, $t5, 4
/* F2D0 8000E6D0 31AD0078 */  andi       $t5, $t5, 0x78
/* F2D4 8000E6D4 11A00013 */  beqz       $t5, .L8000E724
/* F2D8 8000E6D8 3C014F00 */   lui       $at, 0x4f00
/* F2DC 8000E6DC 44819000 */  mtc1       $at, $f18
/* F2E0 8000E6E0 240D0001 */  addiu      $t5, $zero, 1
/* F2E4 8000E6E4 46128481 */  sub.s      $f18, $f16, $f18
/* F2E8 8000E6E8 44CDF800 */  ctc1       $t5, $31
/* F2EC 8000E6EC 00000000 */  nop
/* F2F0 8000E6F0 460094A4 */  cvt.w.s    $f18, $f18
/* F2F4 8000E6F4 444DF800 */  cfc1       $t5, $31
/* F2F8 8000E6F8 00000000 */  nop
/* F2FC 8000E6FC 31A10004 */  andi       $at, $t5, 4
/* F300 8000E700 31AD0078 */  andi       $t5, $t5, 0x78
/* F304 8000E704 15A00005 */  bnez       $t5, .L8000E71C
/* F308 8000E708 00000000 */   nop
/* F30C 8000E70C 440D9000 */  mfc1       $t5, $f18
/* F310 8000E710 3C018000 */  lui        $at, 0x8000
/* F314 8000E714 10000007 */  b          .L8000E734
/* F318 8000E718 01A16825 */   or        $t5, $t5, $at
.L8000E71C:
/* F31C 8000E71C 10000005 */  b          .L8000E734
/* F320 8000E720 240DFFFF */   addiu     $t5, $zero, -1
.L8000E724:
/* F324 8000E724 440D9000 */  mfc1       $t5, $f18
/* F328 8000E728 00000000 */  nop
/* F32C 8000E72C 05A0FFFB */  bltz       $t5, .L8000E71C
/* F330 8000E730 00000000 */   nop
.L8000E734:
/* F334 8000E734 8FAE0004 */  lw         $t6, 4($sp)
/* F338 8000E738 31AAFFFF */  andi       $t2, $t5, 0xffff
/* F33C 8000E73C 44D9F800 */  ctc1       $t9, $31
/* F340 8000E740 016A6025 */  or         $t4, $t3, $t2
/* F344 8000E744 ADCC0004 */  sw         $t4, 4($t6)
.L8000E748:
/* F348 8000E748 87AF0186 */  lh         $t7, 0x186($sp)
/* F34C 8000E74C 3C014100 */  lui        $at, 0x4100
/* F350 8000E750 44812000 */  mtc1       $at, $f4
/* F354 8000E754 C7A60194 */  lwc1       $f6, 0x194($sp)
/* F358 8000E758 448F5000 */  mtc1       $t7, $f10
/* F35C 8000E75C 46062202 */  mul.s      $f8, $f4, $f6
/* F360 8000E760 46805420 */  cvt.s.w    $f16, $f10
/* F364 8000E764 46088480 */  add.s      $f18, $f16, $f8
/* F368 8000E768 4600910D */  trunc.w.s  $f4, $f18
/* F36C 8000E76C 44092000 */  mfc1       $t1, $f4
/* F370 8000E770 1000000E */  b          .L8000E7AC
/* F374 8000E774 A7A90186 */   sh        $t1, 0x186($sp)
.L8000E778:
/* F378 8000E778 87B90184 */  lh         $t9, 0x184($sp)
/* F37C 8000E77C 3C014100 */  lui        $at, 0x4100
/* F380 8000E780 44813000 */  mtc1       $at, $f6
/* F384 8000E784 C7AA0198 */  lwc1       $f10, 0x198($sp)
/* F388 8000E788 44994000 */  mtc1       $t9, $f8
/* F38C 8000E78C A7A50186 */  sh         $a1, 0x186($sp)
/* F390 8000E790 460A3402 */  mul.s      $f16, $f6, $f10
/* F394 8000E794 468044A0 */  cvt.s.w    $f18, $f8
/* F398 8000E798 46109100 */  add.s      $f4, $f18, $f16
/* F39C 8000E79C 4600218D */  trunc.w.s  $f6, $f4
/* F3A0 8000E7A0 440B3000 */  mfc1       $t3, $f6
/* F3A4 8000E7A4 00000000 */  nop
/* F3A8 8000E7A8 A7AB0184 */  sh         $t3, 0x184($sp)
.L8000E7AC:
/* F3AC 8000E7AC 87AA017E */  lh         $t2, 0x17e($sp)
/* F3B0 8000E7B0 8FAE0178 */  lw         $t6, 0x178($sp)
/* F3B4 8000E7B4 254C0001 */  addiu      $t4, $t2, 1
/* F3B8 8000E7B8 000C7C00 */  sll        $t7, $t4, 0x10
/* F3BC 8000E7BC 000FC403 */  sra        $t8, $t7, 0x10
/* F3C0 8000E7C0 A7AC017E */  sh         $t4, 0x17e($sp)
/* F3C4 8000E7C4 030E4821 */  addu       $t1, $t8, $t6
/* F3C8 8000E7C8 91390000 */  lbu        $t9, ($t1)
/* F3CC 8000E7CC 1720FB45 */  bnez       $t9, .L8000D4E4
/* F3D0 8000E7D0 00000000 */   nop
.L8000E7D4:
/* F3D4 8000E7D4 03E00008 */  jr         $ra
/* F3D8 8000E7D8 27BD0188 */   addiu     $sp, $sp, 0x188

glabel func_8000E7DC
/* F3DC 8000E7DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F3E0 8000E7E0 AFBF0024 */  sw         $ra, 0x24($sp)
/* F3E4 8000E7E4 AFA40028 */  sw         $a0, 0x28($sp)
/* F3E8 8000E7E8 AFA5002C */  sw         $a1, 0x2c($sp)
/* F3EC 8000E7EC AFA60030 */  sw         $a2, 0x30($sp)
/* F3F0 8000E7F0 AFA70034 */  sw         $a3, 0x34($sp)
/* F3F4 8000E7F4 240E00FF */  addiu      $t6, $zero, 0xff
/* F3F8 8000E7F8 240F007F */  addiu      $t7, $zero, 0x7f
/* F3FC 8000E7FC AFAF001C */  sw         $t7, 0x1c($sp)
/* F400 8000E800 AFAE0018 */  sw         $t6, 0x18($sp)
/* F404 8000E804 87A4002A */  lh         $a0, 0x2a($sp)
/* F408 8000E808 87A5002E */  lh         $a1, 0x2e($sp)
/* F40C 8000E80C 87A60032 */  lh         $a2, 0x32($sp)
/* F410 8000E810 87A70036 */  lh         $a3, 0x36($sp)
/* F414 8000E814 AFA00010 */  sw         $zero, 0x10($sp)
/* F418 8000E818 0C003A0C */  jal        func_8000E830
/* F41C 8000E81C AFA00014 */   sw        $zero, 0x14($sp)
/* F420 8000E820 8FBF0024 */  lw         $ra, 0x24($sp)
/* F424 8000E824 27BD0028 */  addiu      $sp, $sp, 0x28
/* F428 8000E828 03E00008 */  jr         $ra
/* F42C 8000E82C 00000000 */   nop

glabel func_8000E830
/* F430 8000E830 00042400 */  sll        $a0, $a0, 0x10
/* F434 8000E834 00052C00 */  sll        $a1, $a1, 0x10
/* F438 8000E838 00063400 */  sll        $a2, $a2, 0x10
/* F43C 8000E83C 00073C00 */  sll        $a3, $a3, 0x10
/* F440 8000E840 00073C03 */  sra        $a3, $a3, 0x10
/* F444 8000E844 00063403 */  sra        $a2, $a2, 0x10
/* F448 8000E848 00052C03 */  sra        $a1, $a1, 0x10
/* F44C 8000E84C 00042403 */  sra        $a0, $a0, 0x10
/* F450 8000E850 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F454 8000E854 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* F458 8000E858 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* F45C 8000E85C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F460 8000E860 3C18E700 */  lui        $t8, 0xe700
/* F464 8000E864 AFAE0014 */  sw         $t6, 0x14($sp)
/* F468 8000E868 8FB90014 */  lw         $t9, 0x14($sp)
/* F46C 8000E86C 25CF0008 */  addiu      $t7, $t6, 8
/* F470 8000E870 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* F474 8000E874 AF380000 */  sw         $t8, ($t9)
/* F478 8000E878 8FA80014 */  lw         $t0, 0x14($sp)
/* F47C 8000E87C AD000004 */  sw         $zero, 4($t0)
/* F480 8000E880 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* F484 8000E884 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* F488 8000E888 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F48C 8000E88C 3C0BBA00 */  lui        $t3, 0xba00
/* F490 8000E890 AFA90010 */  sw         $t1, 0x10($sp)
/* F494 8000E894 8FAC0010 */  lw         $t4, 0x10($sp)
/* F498 8000E898 252A0008 */  addiu      $t2, $t1, 8
/* F49C 8000E89C AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* F4A0 8000E8A0 356B1402 */  ori        $t3, $t3, 0x1402
/* F4A4 8000E8A4 AD8B0000 */  sw         $t3, ($t4)
/* F4A8 8000E8A8 8FAD0010 */  lw         $t5, 0x10($sp)
/* F4AC 8000E8AC ADA00004 */  sw         $zero, 4($t5)
/* F4B0 8000E8B0 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* F4B4 8000E8B4 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* F4B8 8000E8B8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F4BC 8000E8BC 3C18B900 */  lui        $t8, 0xb900
/* F4C0 8000E8C0 AFAE000C */  sw         $t6, 0xc($sp)
/* F4C4 8000E8C4 8FB9000C */  lw         $t9, 0xc($sp)
/* F4C8 8000E8C8 25CF0008 */  addiu      $t7, $t6, 8
/* F4CC 8000E8CC AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* F4D0 8000E8D0 3718031D */  ori        $t8, $t8, 0x31d
/* F4D4 8000E8D4 AF380000 */  sw         $t8, ($t9)
/* F4D8 8000E8D8 8FA9000C */  lw         $t1, 0xc($sp)
/* F4DC 8000E8DC 3C080050 */  lui        $t0, 0x50
/* F4E0 8000E8E0 35084240 */  ori        $t0, $t0, 0x4240
/* F4E4 8000E8E4 AD280004 */  sw         $t0, 4($t1)
/* F4E8 8000E8E8 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* F4EC 8000E8EC 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* F4F0 8000E8F0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F4F4 8000E8F4 3C0CFA00 */  lui        $t4, 0xfa00
/* F4F8 8000E8F8 AFAA0008 */  sw         $t2, 8($sp)
/* F4FC 8000E8FC 8FAD0008 */  lw         $t5, 8($sp)
/* F500 8000E900 254B0008 */  addiu      $t3, $t2, 8
/* F504 8000E904 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* F508 8000E908 ADAC0000 */  sw         $t4, ($t5)
/* F50C 8000E90C 93AE002B */  lbu        $t6, 0x2b($sp)
/* F510 8000E910 93B9002F */  lbu        $t9, 0x2f($sp)
/* F514 8000E914 93AB0033 */  lbu        $t3, 0x33($sp)
/* F518 8000E918 31CF00FF */  andi       $t7, $t6, 0xff
/* F51C 8000E91C 000FC600 */  sll        $t8, $t7, 0x18
/* F520 8000E920 332800FF */  andi       $t0, $t9, 0xff
/* F524 8000E924 93AF0037 */  lbu        $t7, 0x37($sp)
/* F528 8000E928 00084C00 */  sll        $t1, $t0, 0x10
/* F52C 8000E92C 03095025 */  or         $t2, $t8, $t1
/* F530 8000E930 316C00FF */  andi       $t4, $t3, 0xff
/* F534 8000E934 8FB80008 */  lw         $t8, 8($sp)
/* F538 8000E938 000C6A00 */  sll        $t5, $t4, 8
/* F53C 8000E93C 014D7025 */  or         $t6, $t2, $t5
/* F540 8000E940 31F900FF */  andi       $t9, $t7, 0xff
/* F544 8000E944 01D94025 */  or         $t0, $t6, $t9
/* F548 8000E948 AF080004 */  sw         $t0, 4($t8)
/* F54C 8000E94C 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* F550 8000E950 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* F554 8000E954 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F558 8000E958 3C0CFCFF */  lui        $t4, 0xfcff
/* F55C 8000E95C AFA90004 */  sw         $t1, 4($sp)
/* F560 8000E960 8FAA0004 */  lw         $t2, 4($sp)
/* F564 8000E964 252B0008 */  addiu      $t3, $t1, 8
/* F568 8000E968 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* F56C 8000E96C 358CFFFF */  ori        $t4, $t4, 0xffff
/* F570 8000E970 AD4C0000 */  sw         $t4, ($t2)
/* F574 8000E974 8FAF0004 */  lw         $t7, 4($sp)
/* F578 8000E978 3C0DFFFD */  lui        $t5, 0xfffd
/* F57C 8000E97C 35ADF6FB */  ori        $t5, $t5, 0xf6fb
/* F580 8000E980 ADED0004 */  sw         $t5, 4($t7)
/* F584 8000E984 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* F588 8000E988 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* F58C 8000E98C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F590 8000E990 00864021 */  addu       $t0, $a0, $a2
/* F594 8000E994 25D90008 */  addiu      $t9, $t6, 8
/* F598 8000E998 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* F59C 8000E99C 311803FF */  andi       $t8, $t0, 0x3ff
/* F5A0 8000E9A0 00A76021 */  addu       $t4, $a1, $a3
/* F5A4 8000E9A4 AFAE0000 */  sw         $t6, ($sp)
/* F5A8 8000E9A8 8FAE0000 */  lw         $t6, ($sp)
/* F5AC 8000E9AC 318A03FF */  andi       $t2, $t4, 0x3ff
/* F5B0 8000E9B0 00184B80 */  sll        $t1, $t8, 0xe
/* F5B4 8000E9B4 3C01F600 */  lui        $at, 0xf600
/* F5B8 8000E9B8 01215825 */  or         $t3, $t1, $at
/* F5BC 8000E9BC 000A6880 */  sll        $t5, $t2, 2
/* F5C0 8000E9C0 016D7825 */  or         $t7, $t3, $t5
/* F5C4 8000E9C4 ADCF0000 */  sw         $t7, ($t6)
/* F5C8 8000E9C8 8FAA0000 */  lw         $t2, ($sp)
/* F5CC 8000E9CC 30B803FF */  andi       $t8, $a1, 0x3ff
/* F5D0 8000E9D0 309903FF */  andi       $t9, $a0, 0x3ff
/* F5D4 8000E9D4 00194380 */  sll        $t0, $t9, 0xe
/* F5D8 8000E9D8 00184880 */  sll        $t1, $t8, 2
/* F5DC 8000E9DC 01096025 */  or         $t4, $t0, $t1
/* F5E0 8000E9E0 AD4C0004 */  sw         $t4, 4($t2)
/* F5E4 8000E9E4 03E00008 */  jr         $ra
/* F5E8 8000E9E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000E9EC
/* F5EC 8000E9EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F5F0 8000E9F0 AFBF002C */  sw         $ra, 0x2c($sp)
/* F5F4 8000E9F4 AFA40038 */  sw         $a0, 0x38($sp)
/* F5F8 8000E9F8 AFA5003C */  sw         $a1, 0x3c($sp)
/* F5FC 8000E9FC AFA60040 */  sw         $a2, 0x40($sp)
/* F600 8000EA00 AFA70044 */  sw         $a3, 0x44($sp)
/* F604 8000EA04 AFB00028 */  sw         $s0, 0x28($sp)
/* F608 8000EA08 8FAE0044 */  lw         $t6, 0x44($sp)
/* F60C 8000EA0C 31CF0001 */  andi       $t7, $t6, 1
/* F610 8000EA10 11E0000A */  beqz       $t7, .L8000EA3C
/* F614 8000EA14 00000000 */   nop
/* F618 8000EA18 0C033527 */  jal        func_800CD49C
/* F61C 8000EA1C 8FA40038 */   lw        $a0, 0x38($sp)
/* F620 8000EA20 00408025 */  or         $s0, $v0, $zero
/* F624 8000EA24 8FB8003C */  lw         $t8, 0x3c($sp)
/* F628 8000EA28 0010C8C0 */  sll        $t9, $s0, 3
/* F62C 8000EA2C 0330C823 */  subu       $t9, $t9, $s0
/* F630 8000EA30 00194042 */  srl        $t0, $t9, 1
/* F634 8000EA34 03084823 */  subu       $t1, $t8, $t0
/* F638 8000EA38 AFA9003C */  sw         $t1, 0x3c($sp)
.L8000EA3C:
/* F63C 8000EA3C 3C01800E */  lui        $at, %hi(D_800DBCA4)
/* F640 8000EA40 C424BCA4 */  lwc1       $f4, %lo(D_800DBCA4)($at)
/* F644 8000EA44 3C073F66 */  lui        $a3, 0x3f66
/* F648 8000EA48 34E76666 */  ori        $a3, $a3, 0x6666
/* F64C 8000EA4C 8FA40038 */  lw         $a0, 0x38($sp)
/* F650 8000EA50 8FA5003C */  lw         $a1, 0x3c($sp)
/* F654 8000EA54 8FA60040 */  lw         $a2, 0x40($sp)
/* F658 8000EA58 AFA00014 */  sw         $zero, 0x14($sp)
/* F65C 8000EA5C AFA00018 */  sw         $zero, 0x18($sp)
/* F660 8000EA60 0C003359 */  jal        func_8000CD64
/* F664 8000EA64 E7A40010 */   swc1      $f4, 0x10($sp)
/* F668 8000EA68 8FBF002C */  lw         $ra, 0x2c($sp)
/* F66C 8000EA6C 8FB00028 */  lw         $s0, 0x28($sp)
/* F670 8000EA70 27BD0038 */  addiu      $sp, $sp, 0x38
/* F674 8000EA74 03E00008 */  jr         $ra
/* F678 8000EA78 00000000 */   nop

glabel func_8000EA7C
/* F67C 8000EA7C 00052C00 */  sll        $a1, $a1, 0x10
/* F680 8000EA80 00063400 */  sll        $a2, $a2, 0x10
/* F684 8000EA84 00063403 */  sra        $a2, $a2, 0x10
/* F688 8000EA88 00052C03 */  sra        $a1, $a1, 0x10
/* F68C 8000EA8C 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* F690 8000EA90 240E00FF */  addiu      $t6, $zero, 0xff
/* F694 8000EA94 AFA40104 */  sw         $a0, 0x104($sp)
/* F698 8000EA98 A3AE0103 */  sb         $t6, 0x103($sp)
/* F69C 8000EA9C AFA000F4 */  sw         $zero, 0xf4($sp)
/* F6A0 8000EAA0 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* F6A4 8000EAA4 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* F6A8 8000EAA8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F6AC 8000EAAC 3C19E700 */  lui        $t9, 0xe700
/* F6B0 8000EAB0 AFAF00EC */  sw         $t7, 0xec($sp)
/* F6B4 8000EAB4 8FA800EC */  lw         $t0, 0xec($sp)
/* F6B8 8000EAB8 25F80008 */  addiu      $t8, $t7, 8
/* F6BC 8000EABC AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* F6C0 8000EAC0 AD190000 */  sw         $t9, ($t0)
/* F6C4 8000EAC4 8FA900EC */  lw         $t1, 0xec($sp)
/* F6C8 8000EAC8 AD200004 */  sw         $zero, 4($t1)
/* F6CC 8000EACC 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* F6D0 8000EAD0 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* F6D4 8000EAD4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F6D8 8000EAD8 3C0CBA00 */  lui        $t4, 0xba00
/* F6DC 8000EADC AFAA00E8 */  sw         $t2, 0xe8($sp)
/* F6E0 8000EAE0 8FAD00E8 */  lw         $t5, 0xe8($sp)
/* F6E4 8000EAE4 254B0008 */  addiu      $t3, $t2, 8
/* F6E8 8000EAE8 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* F6EC 8000EAEC 358C1402 */  ori        $t4, $t4, 0x1402
/* F6F0 8000EAF0 ADAC0000 */  sw         $t4, ($t5)
/* F6F4 8000EAF4 8FAE00E8 */  lw         $t6, 0xe8($sp)
/* F6F8 8000EAF8 ADC00004 */  sw         $zero, 4($t6)
/* F6FC 8000EAFC 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* F700 8000EB00 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* F704 8000EB04 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F708 8000EB08 3C19B900 */  lui        $t9, 0xb900
/* F70C 8000EB0C AFAF00E4 */  sw         $t7, 0xe4($sp)
/* F710 8000EB10 8FA800E4 */  lw         $t0, 0xe4($sp)
/* F714 8000EB14 25F80008 */  addiu      $t8, $t7, 8
/* F718 8000EB18 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* F71C 8000EB1C 3739031D */  ori        $t9, $t9, 0x31d
/* F720 8000EB20 AD190000 */  sw         $t9, ($t0)
/* F724 8000EB24 8FAA00E4 */  lw         $t2, 0xe4($sp)
/* F728 8000EB28 3C090050 */  lui        $t1, 0x50
/* F72C 8000EB2C 35294240 */  ori        $t1, $t1, 0x4240
/* F730 8000EB30 AD490004 */  sw         $t1, 4($t2)
/* F734 8000EB34 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* F738 8000EB38 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* F73C 8000EB3C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F740 8000EB40 3C0DE700 */  lui        $t5, 0xe700
/* F744 8000EB44 AFAB00E0 */  sw         $t3, 0xe0($sp)
/* F748 8000EB48 8FAE00E0 */  lw         $t6, 0xe0($sp)
/* F74C 8000EB4C 256C0008 */  addiu      $t4, $t3, 8
/* F750 8000EB50 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* F754 8000EB54 ADCD0000 */  sw         $t5, ($t6)
/* F758 8000EB58 8FAF00E0 */  lw         $t7, 0xe0($sp)
/* F75C 8000EB5C ADE00004 */  sw         $zero, 4($t7)
/* F760 8000EB60 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* F764 8000EB64 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* F768 8000EB68 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F76C 8000EB6C 3C08BA00 */  lui        $t0, 0xba00
/* F770 8000EB70 AFB800DC */  sw         $t8, 0xdc($sp)
/* F774 8000EB74 8FA900DC */  lw         $t1, 0xdc($sp)
/* F778 8000EB78 27190008 */  addiu      $t9, $t8, 8
/* F77C 8000EB7C AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* F780 8000EB80 35081301 */  ori        $t0, $t0, 0x1301
/* F784 8000EB84 AD280000 */  sw         $t0, ($t1)
/* F788 8000EB88 8FAA00DC */  lw         $t2, 0xdc($sp)
/* F78C 8000EB8C AD400004 */  sw         $zero, 4($t2)
/* F790 8000EB90 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* F794 8000EB94 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* F798 8000EB98 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F79C 8000EB9C 3C0DBB00 */  lui        $t5, 0xbb00
/* F7A0 8000EBA0 AFAB00D8 */  sw         $t3, 0xd8($sp)
/* F7A4 8000EBA4 8FAE00D8 */  lw         $t6, 0xd8($sp)
/* F7A8 8000EBA8 256C0008 */  addiu      $t4, $t3, 8
/* F7AC 8000EBAC AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* F7B0 8000EBB0 35AD0001 */  ori        $t5, $t5, 1
/* F7B4 8000EBB4 ADCD0000 */  sw         $t5, ($t6)
/* F7B8 8000EBB8 8FB800D8 */  lw         $t8, 0xd8($sp)
/* F7BC 8000EBBC 240FFFFF */  addiu      $t7, $zero, -1
/* F7C0 8000EBC0 AF0F0004 */  sw         $t7, 4($t8)
/* F7C4 8000EBC4 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* F7C8 8000EBC8 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* F7CC 8000EBCC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F7D0 8000EBD0 3C09E700 */  lui        $t1, 0xe700
/* F7D4 8000EBD4 AFB900D4 */  sw         $t9, 0xd4($sp)
/* F7D8 8000EBD8 8FAA00D4 */  lw         $t2, 0xd4($sp)
/* F7DC 8000EBDC 27280008 */  addiu      $t0, $t9, 8
/* F7E0 8000EBE0 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* F7E4 8000EBE4 AD490000 */  sw         $t1, ($t2)
/* F7E8 8000EBE8 8FAB00D4 */  lw         $t3, 0xd4($sp)
/* F7EC 8000EBEC AD600004 */  sw         $zero, 4($t3)
/* F7F0 8000EBF0 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* F7F4 8000EBF4 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* F7F8 8000EBF8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F7FC 8000EBFC 3C0EEE00 */  lui        $t6, 0xee00
/* F800 8000EC00 AFAC00D0 */  sw         $t4, 0xd0($sp)
/* F804 8000EC04 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* F808 8000EC08 258D0008 */  addiu      $t5, $t4, 8
/* F80C 8000EC0C AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* F810 8000EC10 ADEE0000 */  sw         $t6, ($t7)
/* F814 8000EC14 8FB800D0 */  lw         $t8, 0xd0($sp)
/* F818 8000EC18 AF000004 */  sw         $zero, 4($t8)
/* F81C 8000EC1C 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* F820 8000EC20 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* F824 8000EC24 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F828 8000EC28 3C09FCFF */  lui        $t1, 0xfcff
/* F82C 8000EC2C AFB900CC */  sw         $t9, 0xcc($sp)
/* F830 8000EC30 8FAA00CC */  lw         $t2, 0xcc($sp)
/* F834 8000EC34 27280008 */  addiu      $t0, $t9, 8
/* F838 8000EC38 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* F83C 8000EC3C 3529FFFF */  ori        $t1, $t1, 0xffff
/* F840 8000EC40 AD490000 */  sw         $t1, ($t2)
/* F844 8000EC44 8FAC00CC */  lw         $t4, 0xcc($sp)
/* F848 8000EC48 3C0BFFFC */  lui        $t3, 0xfffc
/* F84C 8000EC4C 356BF279 */  ori        $t3, $t3, 0xf279
/* F850 8000EC50 AD8B0004 */  sw         $t3, 4($t4)
/* F854 8000EC54 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* F858 8000EC58 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* F85C 8000EC5C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F860 8000EC60 3C0FBA00 */  lui        $t7, 0xba00
/* F864 8000EC64 AFAD00C8 */  sw         $t5, 0xc8($sp)
/* F868 8000EC68 8FB800C8 */  lw         $t8, 0xc8($sp)
/* F86C 8000EC6C 25AE0008 */  addiu      $t6, $t5, 8
/* F870 8000EC70 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* F874 8000EC74 35EF0C02 */  ori        $t7, $t7, 0xc02
/* F878 8000EC78 AF0F0000 */  sw         $t7, ($t8)
/* F87C 8000EC7C 8FA800C8 */  lw         $t0, 0xc8($sp)
/* F880 8000EC80 24192000 */  addiu      $t9, $zero, 0x2000
/* F884 8000EC84 AD190004 */  sw         $t9, 4($t0)
/* F888 8000EC88 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* F88C 8000EC8C 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* F890 8000EC90 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F894 8000EC94 3C0BBA00 */  lui        $t3, 0xba00
/* F898 8000EC98 AFA900C4 */  sw         $t1, 0xc4($sp)
/* F89C 8000EC9C 8FAC00C4 */  lw         $t4, 0xc4($sp)
/* F8A0 8000ECA0 252A0008 */  addiu      $t2, $t1, 8
/* F8A4 8000ECA4 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* F8A8 8000ECA8 356B0E02 */  ori        $t3, $t3, 0xe02
/* F8AC 8000ECAC AD8B0000 */  sw         $t3, ($t4)
/* F8B0 8000ECB0 8FAE00C4 */  lw         $t6, 0xc4($sp)
/* F8B4 8000ECB4 340D8000 */  ori        $t5, $zero, 0x8000
/* F8B8 8000ECB8 ADCD0004 */  sw         $t5, 4($t6)
/* F8BC 8000ECBC 14E0004B */  bnez       $a3, .L8000EDEC
/* F8C0 8000ECC0 00000000 */   nop
/* F8C4 8000ECC4 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* F8C8 8000ECC8 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* F8CC 8000ECCC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F8D0 8000ECD0 3C19FD10 */  lui        $t9, 0xfd10
/* F8D4 8000ECD4 AFAF00C0 */  sw         $t7, 0xc0($sp)
/* F8D8 8000ECD8 8FA800C0 */  lw         $t0, 0xc0($sp)
/* F8DC 8000ECDC 25F80008 */  addiu      $t8, $t7, 8
/* F8E0 8000ECE0 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* F8E4 8000ECE4 AD190000 */  sw         $t9, ($t0)
/* F8E8 8000ECE8 8FAA00C0 */  lw         $t2, 0xc0($sp)
/* F8EC 8000ECEC 3C098022 */  lui        $t1, %hi(D_802267F8)
/* F8F0 8000ECF0 252967F8 */  addiu      $t1, $t1, %lo(D_802267F8)
/* F8F4 8000ECF4 AD490004 */  sw         $t1, 4($t2)
/* F8F8 8000ECF8 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* F8FC 8000ECFC 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* F900 8000ED00 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F904 8000ED04 3C0DE800 */  lui        $t5, 0xe800
/* F908 8000ED08 AFAB00BC */  sw         $t3, 0xbc($sp)
/* F90C 8000ED0C 8FAE00BC */  lw         $t6, 0xbc($sp)
/* F910 8000ED10 256C0008 */  addiu      $t4, $t3, 8
/* F914 8000ED14 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* F918 8000ED18 ADCD0000 */  sw         $t5, ($t6)
/* F91C 8000ED1C 8FAF00BC */  lw         $t7, 0xbc($sp)
/* F920 8000ED20 ADE00004 */  sw         $zero, 4($t7)
/* F924 8000ED24 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* F928 8000ED28 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* F92C 8000ED2C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F930 8000ED30 3C08F500 */  lui        $t0, 0xf500
/* F934 8000ED34 AFB800B8 */  sw         $t8, 0xb8($sp)
/* F938 8000ED38 8FA900B8 */  lw         $t1, 0xb8($sp)
/* F93C 8000ED3C 27190008 */  addiu      $t9, $t8, 8
/* F940 8000ED40 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* F944 8000ED44 35080100 */  ori        $t0, $t0, 0x100
/* F948 8000ED48 AD280000 */  sw         $t0, ($t1)
/* F94C 8000ED4C 8FAB00B8 */  lw         $t3, 0xb8($sp)
/* F950 8000ED50 3C0A0700 */  lui        $t2, 0x700
/* F954 8000ED54 AD6A0004 */  sw         $t2, 4($t3)
/* F958 8000ED58 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* F95C 8000ED5C 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* F960 8000ED60 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F964 8000ED64 3C0EE600 */  lui        $t6, 0xe600
/* F968 8000ED68 AFAC00B4 */  sw         $t4, 0xb4($sp)
/* F96C 8000ED6C 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* F970 8000ED70 258D0008 */  addiu      $t5, $t4, 8
/* F974 8000ED74 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* F978 8000ED78 ADEE0000 */  sw         $t6, ($t7)
/* F97C 8000ED7C 8FB800B4 */  lw         $t8, 0xb4($sp)
/* F980 8000ED80 AF000004 */  sw         $zero, 4($t8)
/* F984 8000ED84 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* F988 8000ED88 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* F98C 8000ED8C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F990 8000ED90 3C09F000 */  lui        $t1, 0xf000
/* F994 8000ED94 AFB900B0 */  sw         $t9, 0xb0($sp)
/* F998 8000ED98 8FAA00B0 */  lw         $t2, 0xb0($sp)
/* F99C 8000ED9C 27280008 */  addiu      $t0, $t9, 8
/* F9A0 8000EDA0 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* F9A4 8000EDA4 AD490000 */  sw         $t1, ($t2)
/* F9A8 8000EDA8 8FAC00B0 */  lw         $t4, 0xb0($sp)
/* F9AC 8000EDAC 3C0B0703 */  lui        $t3, 0x703
/* F9B0 8000EDB0 356BC000 */  ori        $t3, $t3, 0xc000
/* F9B4 8000EDB4 AD8B0004 */  sw         $t3, 4($t4)
/* F9B8 8000EDB8 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* F9BC 8000EDBC 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* F9C0 8000EDC0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F9C4 8000EDC4 3C0FE700 */  lui        $t7, 0xe700
/* F9C8 8000EDC8 AFAD00AC */  sw         $t5, 0xac($sp)
/* F9CC 8000EDCC 8FB800AC */  lw         $t8, 0xac($sp)
/* F9D0 8000EDD0 25AE0008 */  addiu      $t6, $t5, 8
/* F9D4 8000EDD4 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* F9D8 8000EDD8 AF0F0000 */  sw         $t7, ($t8)
/* F9DC 8000EDDC 8FB900AC */  lw         $t9, 0xac($sp)
/* F9E0 8000EDE0 AF200004 */  sw         $zero, 4($t9)
/* F9E4 8000EDE4 10000049 */  b          .L8000EF0C
/* F9E8 8000EDE8 00000000 */   nop
.L8000EDEC:
/* F9EC 8000EDEC 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* F9F0 8000EDF0 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* F9F4 8000EDF4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* F9F8 8000EDF8 3C0AFD10 */  lui        $t2, 0xfd10
/* F9FC 8000EDFC AFA800A8 */  sw         $t0, 0xa8($sp)
/* FA00 8000EE00 8FAB00A8 */  lw         $t3, 0xa8($sp)
/* FA04 8000EE04 25090008 */  addiu      $t1, $t0, 8
/* FA08 8000EE08 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* FA0C 8000EE0C AD6A0000 */  sw         $t2, ($t3)
/* FA10 8000EE10 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* FA14 8000EE14 3C0C8022 */  lui        $t4, %hi(D_80226820)
/* FA18 8000EE18 258C6820 */  addiu      $t4, $t4, %lo(D_80226820)
/* FA1C 8000EE1C ADAC0004 */  sw         $t4, 4($t5)
/* FA20 8000EE20 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* FA24 8000EE24 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* FA28 8000EE28 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FA2C 8000EE2C 3C18E800 */  lui        $t8, 0xe800
/* FA30 8000EE30 AFAE00A4 */  sw         $t6, 0xa4($sp)
/* FA34 8000EE34 8FB900A4 */  lw         $t9, 0xa4($sp)
/* FA38 8000EE38 25CF0008 */  addiu      $t7, $t6, 8
/* FA3C 8000EE3C AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* FA40 8000EE40 AF380000 */  sw         $t8, ($t9)
/* FA44 8000EE44 8FA800A4 */  lw         $t0, 0xa4($sp)
/* FA48 8000EE48 AD000004 */  sw         $zero, 4($t0)
/* FA4C 8000EE4C 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* FA50 8000EE50 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* FA54 8000EE54 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FA58 8000EE58 3C0BF500 */  lui        $t3, 0xf500
/* FA5C 8000EE5C AFA900A0 */  sw         $t1, 0xa0($sp)
/* FA60 8000EE60 8FAC00A0 */  lw         $t4, 0xa0($sp)
/* FA64 8000EE64 252A0008 */  addiu      $t2, $t1, 8
/* FA68 8000EE68 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* FA6C 8000EE6C 356B0100 */  ori        $t3, $t3, 0x100
/* FA70 8000EE70 AD8B0000 */  sw         $t3, ($t4)
/* FA74 8000EE74 8FAE00A0 */  lw         $t6, 0xa0($sp)
/* FA78 8000EE78 3C0D0700 */  lui        $t5, 0x700
/* FA7C 8000EE7C ADCD0004 */  sw         $t5, 4($t6)
/* FA80 8000EE80 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* FA84 8000EE84 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* FA88 8000EE88 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FA8C 8000EE8C 3C19E600 */  lui        $t9, 0xe600
/* FA90 8000EE90 AFAF009C */  sw         $t7, 0x9c($sp)
/* FA94 8000EE94 8FA8009C */  lw         $t0, 0x9c($sp)
/* FA98 8000EE98 25F80008 */  addiu      $t8, $t7, 8
/* FA9C 8000EE9C AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* FAA0 8000EEA0 AD190000 */  sw         $t9, ($t0)
/* FAA4 8000EEA4 8FA9009C */  lw         $t1, 0x9c($sp)
/* FAA8 8000EEA8 AD200004 */  sw         $zero, 4($t1)
/* FAAC 8000EEAC 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* FAB0 8000EEB0 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* FAB4 8000EEB4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FAB8 8000EEB8 3C0CF000 */  lui        $t4, 0xf000
/* FABC 8000EEBC AFAA0098 */  sw         $t2, 0x98($sp)
/* FAC0 8000EEC0 8FAD0098 */  lw         $t5, 0x98($sp)
/* FAC4 8000EEC4 254B0008 */  addiu      $t3, $t2, 8
/* FAC8 8000EEC8 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* FACC 8000EECC ADAC0000 */  sw         $t4, ($t5)
/* FAD0 8000EED0 8FAF0098 */  lw         $t7, 0x98($sp)
/* FAD4 8000EED4 3C0E0703 */  lui        $t6, 0x703
/* FAD8 8000EED8 35CEC000 */  ori        $t6, $t6, 0xc000
/* FADC 8000EEDC ADEE0004 */  sw         $t6, 4($t7)
/* FAE0 8000EEE0 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* FAE4 8000EEE4 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* FAE8 8000EEE8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FAEC 8000EEEC 3C08E700 */  lui        $t0, 0xe700
/* FAF0 8000EEF0 AFB80094 */  sw         $t8, 0x94($sp)
/* FAF4 8000EEF4 8FA90094 */  lw         $t1, 0x94($sp)
/* FAF8 8000EEF8 27190008 */  addiu      $t9, $t8, 8
/* FAFC 8000EEFC AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* FB00 8000EF00 AD280000 */  sw         $t0, ($t1)
/* FB04 8000EF04 8FAA0094 */  lw         $t2, 0x94($sp)
/* FB08 8000EF08 AD400004 */  sw         $zero, 4($t2)
.L8000EF0C:
/* FB0C 8000EF0C 8FAB0104 */  lw         $t3, 0x104($sp)
/* FB10 8000EF10 A7A00100 */  sh         $zero, 0x100($sp)
/* FB14 8000EF14 916C0000 */  lbu        $t4, ($t3)
/* FB18 8000EF18 11800225 */  beqz       $t4, .L8000F7B0
/* FB1C 8000EF1C 00000000 */   nop
.L8000EF20:
/* FB20 8000EF20 87AE0100 */  lh         $t6, 0x100($sp)
/* FB24 8000EF24 8FAF0104 */  lw         $t7, 0x104($sp)
/* FB28 8000EF28 240D0008 */  addiu      $t5, $zero, 8
/* FB2C 8000EF2C A7AD00FA */  sh         $t5, 0xfa($sp)
/* FB30 8000EF30 01CFC021 */  addu       $t8, $t6, $t7
/* FB34 8000EF34 93190000 */  lbu        $t9, ($t8)
/* FB38 8000EF38 2B210080 */  slti       $at, $t9, 0x80
/* FB3C 8000EF3C 14200009 */  bnez       $at, .L8000EF64
/* FB40 8000EF40 A3B900F3 */   sb        $t9, 0xf3($sp)
/* FB44 8000EF44 3C09801C */  lui        $t1, %hi(D_801C5FC8)
/* FB48 8000EF48 25295FC8 */  addiu      $t1, $t1, %lo(D_801C5FC8)
/* FB4C 8000EF4C 00194040 */  sll        $t0, $t9, 1
/* FB50 8000EF50 01095021 */  addu       $t2, $t0, $t1
/* FB54 8000EF54 814BFF01 */  lb         $t3, -0xff($t2)
/* FB58 8000EF58 AFAB00F4 */  sw         $t3, 0xf4($sp)
/* FB5C 8000EF5C 914CFF00 */  lbu        $t4, -0x100($t2)
/* FB60 8000EF60 A3AC00F3 */  sb         $t4, 0xf3($sp)
.L8000EF64:
/* FB64 8000EF64 93AD00F3 */  lbu        $t5, 0xf3($sp)
/* FB68 8000EF68 29A10021 */  slti       $at, $t5, 0x21
/* FB6C 8000EF6C 14200203 */  bnez       $at, .L8000F77C
/* FB70 8000EF70 29A1005B */   slti      $at, $t5, 0x5b
/* FB74 8000EF74 10200201 */  beqz       $at, .L8000F77C
/* FB78 8000EF78 00000000 */   nop
/* FB7C 8000EF7C 000D7040 */  sll        $t6, $t5, 1
/* FB80 8000EF80 25CFFFBE */  addiu      $t7, $t6, -0x42
/* FB84 8000EF84 000FC400 */  sll        $t8, $t7, 0x10
/* FB88 8000EF88 3C08800D */  lui        $t0, %hi(D_800D6524)
/* FB8C 8000EF8C 25086524 */  addiu      $t0, $t0, %lo(D_800D6524)
/* FB90 8000EF90 0018CC03 */  sra        $t9, $t8, 0x10
/* FB94 8000EF94 A7AF00FC */  sh         $t7, 0xfc($sp)
/* FB98 8000EF98 03284821 */  addu       $t1, $t9, $t0
/* FB9C 8000EF9C 912B0000 */  lbu        $t3, ($t1)
/* FBA0 8000EFA0 2401FFFF */  addiu      $at, $zero, -1
/* FBA4 8000EFA4 116101F5 */  beq        $t3, $at, .L8000F77C
/* FBA8 8000EFA8 A7AB00FE */   sh        $t3, 0xfe($sp)
/* FBAC 8000EFAC 000F5400 */  sll        $t2, $t7, 0x10
/* FBB0 8000EFB0 000A6403 */  sra        $t4, $t2, 0x10
/* FBB4 8000EFB4 01887021 */  addu       $t6, $t4, $t0
/* FBB8 8000EFB8 91D80001 */  lbu        $t8, 1($t6)
/* FBBC 8000EFBC 93A90103 */  lbu        $t1, 0x103($sp)
/* FBC0 8000EFC0 27190001 */  addiu      $t9, $t8, 1
/* FBC4 8000EFC4 112D005F */  beq        $t1, $t5, .L8000F144
/* FBC8 8000EFC8 A7B900FA */   sh        $t9, 0xfa($sp)
/* FBCC 8000EFCC A3AD0103 */  sb         $t5, 0x103($sp)
/* FBD0 8000EFD0 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* FBD4 8000EFD4 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* FBD8 8000EFD8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FBDC 8000EFDC 3C0AFD50 */  lui        $t2, 0xfd50
/* FBE0 8000EFE0 AFAB0090 */  sw         $t3, 0x90($sp)
/* FBE4 8000EFE4 8FAC0090 */  lw         $t4, 0x90($sp)
/* FBE8 8000EFE8 256F0008 */  addiu      $t7, $t3, 8
/* FBEC 8000EFEC AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* FBF0 8000EFF0 AD8A0000 */  sw         $t2, ($t4)
/* FBF4 8000EFF4 87A800FE */  lh         $t0, 0xfe($sp)
/* FBF8 8000EFF8 8FA90090 */  lw         $t1, 0x90($sp)
/* FBFC 8000EFFC 3C188022 */  lui        $t8, %hi(D_80224F30)
/* FC00 8000F000 000870C0 */  sll        $t6, $t0, 3
/* FC04 8000F004 01C87021 */  addu       $t6, $t6, $t0
/* FC08 8000F008 000E7100 */  sll        $t6, $t6, 4
/* FC0C 8000F00C 27184F30 */  addiu      $t8, $t8, %lo(D_80224F30)
/* FC10 8000F010 01D8C821 */  addu       $t9, $t6, $t8
/* FC14 8000F014 AD390004 */  sw         $t9, 4($t1)
/* FC18 8000F018 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* FC1C 8000F01C 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* FC20 8000F020 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FC24 8000F024 3C0FF550 */  lui        $t7, 0xf550
/* FC28 8000F028 AFAD008C */  sw         $t5, 0x8c($sp)
/* FC2C 8000F02C 8FAA008C */  lw         $t2, 0x8c($sp)
/* FC30 8000F030 25AB0008 */  addiu      $t3, $t5, 8
/* FC34 8000F034 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* FC38 8000F038 AD4F0000 */  sw         $t7, ($t2)
/* FC3C 8000F03C 8FA8008C */  lw         $t0, 0x8c($sp)
/* FC40 8000F040 3C0C0701 */  lui        $t4, 0x701
/* FC44 8000F044 358C4040 */  ori        $t4, $t4, 0x4040
/* FC48 8000F048 AD0C0004 */  sw         $t4, 4($t0)
/* FC4C 8000F04C 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* FC50 8000F050 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* FC54 8000F054 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FC58 8000F058 3C19E600 */  lui        $t9, 0xe600
/* FC5C 8000F05C AFAE0088 */  sw         $t6, 0x88($sp)
/* FC60 8000F060 8FA90088 */  lw         $t1, 0x88($sp)
/* FC64 8000F064 25D80008 */  addiu      $t8, $t6, 8
/* FC68 8000F068 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* FC6C 8000F06C AD390000 */  sw         $t9, ($t1)
/* FC70 8000F070 8FAD0088 */  lw         $t5, 0x88($sp)
/* FC74 8000F074 ADA00004 */  sw         $zero, 4($t5)
/* FC78 8000F078 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* FC7C 8000F07C 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* FC80 8000F080 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FC84 8000F084 3C0AF300 */  lui        $t2, 0xf300
/* FC88 8000F088 AFAB0084 */  sw         $t3, 0x84($sp)
/* FC8C 8000F08C 8FAC0084 */  lw         $t4, 0x84($sp)
/* FC90 8000F090 256F0008 */  addiu      $t7, $t3, 8
/* FC94 8000F094 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* FC98 8000F098 AD8A0000 */  sw         $t2, ($t4)
/* FC9C 8000F09C 8FAE0084 */  lw         $t6, 0x84($sp)
/* FCA0 8000F0A0 3C080704 */  lui        $t0, 0x704
/* FCA4 8000F0A4 35087800 */  ori        $t0, $t0, 0x7800
/* FCA8 8000F0A8 ADC80004 */  sw         $t0, 4($t6)
/* FCAC 8000F0AC 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* FCB0 8000F0B0 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* FCB4 8000F0B4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FCB8 8000F0B8 3C09E700 */  lui        $t1, 0xe700
/* FCBC 8000F0BC AFB80080 */  sw         $t8, 0x80($sp)
/* FCC0 8000F0C0 8FAD0080 */  lw         $t5, 0x80($sp)
/* FCC4 8000F0C4 27190008 */  addiu      $t9, $t8, 8
/* FCC8 8000F0C8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* FCCC 8000F0CC ADA90000 */  sw         $t1, ($t5)
/* FCD0 8000F0D0 8FAB0080 */  lw         $t3, 0x80($sp)
/* FCD4 8000F0D4 AD600004 */  sw         $zero, 4($t3)
/* FCD8 8000F0D8 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* FCDC 8000F0DC 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* FCE0 8000F0E0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FCE4 8000F0E4 3C0CF540 */  lui        $t4, 0xf540
/* FCE8 8000F0E8 AFAF007C */  sw         $t7, 0x7c($sp)
/* FCEC 8000F0EC 8FA8007C */  lw         $t0, 0x7c($sp)
/* FCF0 8000F0F0 25EA0008 */  addiu      $t2, $t7, 8
/* FCF4 8000F0F4 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* FCF8 8000F0F8 358C0200 */  ori        $t4, $t4, 0x200
/* FCFC 8000F0FC AD0C0000 */  sw         $t4, ($t0)
/* FD00 8000F100 8FB8007C */  lw         $t8, 0x7c($sp)
/* FD04 8000F104 3C0E0001 */  lui        $t6, 1
/* FD08 8000F108 35CE4040 */  ori        $t6, $t6, 0x4040
/* FD0C 8000F10C AF0E0004 */  sw         $t6, 4($t8)
/* FD10 8000F110 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* FD14 8000F114 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* FD18 8000F118 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FD1C 8000F11C 3C0DF200 */  lui        $t5, 0xf200
/* FD20 8000F120 AFB90078 */  sw         $t9, 0x78($sp)
/* FD24 8000F124 8FAB0078 */  lw         $t3, 0x78($sp)
/* FD28 8000F128 27290008 */  addiu      $t1, $t9, 8
/* FD2C 8000F12C AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* FD30 8000F130 AD6D0000 */  sw         $t5, ($t3)
/* FD34 8000F134 8FAA0078 */  lw         $t2, 0x78($sp)
/* FD38 8000F138 3C0F0003 */  lui        $t7, 3
/* FD3C 8000F13C 35EFC044 */  ori        $t7, $t7, 0xc044
/* FD40 8000F140 AD4F0004 */  sw         $t7, 4($t2)
.L8000F144:
/* FD44 8000F144 87AE00FA */  lh         $t6, 0xfa($sp)
/* FD48 8000F148 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* FD4C 8000F14C 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* FD50 8000F150 00AEC021 */  addu       $t8, $a1, $t6
/* FD54 8000F154 0018C880 */  sll        $t9, $t8, 2
/* FD58 8000F158 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FD5C 8000F15C 25880008 */  addiu      $t0, $t4, 8
/* FD60 8000F160 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* FD64 8000F164 33290FFF */  andi       $t1, $t9, 0xfff
/* FD68 8000F168 24CF0012 */  addiu      $t7, $a2, 0x12
/* FD6C 8000F16C AFAC0074 */  sw         $t4, 0x74($sp)
/* FD70 8000F170 8FAE0074 */  lw         $t6, 0x74($sp)
/* FD74 8000F174 000F5080 */  sll        $t2, $t7, 2
/* FD78 8000F178 00096B00 */  sll        $t5, $t1, 0xc
/* FD7C 8000F17C 3C01E400 */  lui        $at, 0xe400
/* FD80 8000F180 01A15825 */  or         $t3, $t5, $at
/* FD84 8000F184 314C0FFF */  andi       $t4, $t2, 0xfff
/* FD88 8000F188 016C4025 */  or         $t0, $t3, $t4
/* FD8C 8000F18C 0005C080 */  sll        $t8, $a1, 2
/* FD90 8000F190 ADC80000 */  sw         $t0, ($t6)
/* FD94 8000F194 8FAB0074 */  lw         $t3, 0x74($sp)
/* FD98 8000F198 33190FFF */  andi       $t9, $t8, 0xfff
/* FD9C 8000F19C 00066880 */  sll        $t5, $a2, 2
/* FDA0 8000F1A0 31AF0FFF */  andi       $t7, $t5, 0xfff
/* FDA4 8000F1A4 00194B00 */  sll        $t1, $t9, 0xc
/* FDA8 8000F1A8 012F5025 */  or         $t2, $t1, $t7
/* FDAC 8000F1AC AD6A0004 */  sw         $t2, 4($t3)
/* FDB0 8000F1B0 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* FDB4 8000F1B4 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* FDB8 8000F1B8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FDBC 8000F1BC 3C0EB400 */  lui        $t6, 0xb400
/* FDC0 8000F1C0 AFAC0070 */  sw         $t4, 0x70($sp)
/* FDC4 8000F1C4 8FB80070 */  lw         $t8, 0x70($sp)
/* FDC8 8000F1C8 25880008 */  addiu      $t0, $t4, 8
/* FDCC 8000F1CC AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* FDD0 8000F1D0 AF0E0000 */  sw         $t6, ($t8)
/* FDD4 8000F1D4 8FB90070 */  lw         $t9, 0x70($sp)
/* FDD8 8000F1D8 AF200004 */  sw         $zero, 4($t9)
/* FDDC 8000F1DC 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* FDE0 8000F1E0 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* FDE4 8000F1E4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FDE8 8000F1E8 3C0FB300 */  lui        $t7, 0xb300
/* FDEC 8000F1EC AFAD006C */  sw         $t5, 0x6c($sp)
/* FDF0 8000F1F0 8FAA006C */  lw         $t2, 0x6c($sp)
/* FDF4 8000F1F4 25A90008 */  addiu      $t1, $t5, 8
/* FDF8 8000F1F8 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* FDFC 8000F1FC AD4F0000 */  sw         $t7, ($t2)
/* FE00 8000F200 8FAC006C */  lw         $t4, 0x6c($sp)
/* FE04 8000F204 3C0B0400 */  lui        $t3, 0x400
/* FE08 8000F208 356B0400 */  ori        $t3, $t3, 0x400
/* FE0C 8000F20C AD8B0004 */  sw         $t3, 4($t4)
/* FE10 8000F210 8FA800F4 */  lw         $t0, 0xf4($sp)
/* FE14 8000F214 11000159 */  beqz       $t0, .L8000F77C
/* FE18 8000F218 00000000 */   nop
/* FE1C 8000F21C 240E007F */  addiu      $t6, $zero, 0x7f
/* FE20 8000F220 A3AE0103 */  sb         $t6, 0x103($sp)
/* FE24 8000F224 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* FE28 8000F228 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* FE2C 8000F22C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FE30 8000F230 3C0DE700 */  lui        $t5, 0xe700
/* FE34 8000F234 AFB80068 */  sw         $t8, 0x68($sp)
/* FE38 8000F238 8FA90068 */  lw         $t1, 0x68($sp)
/* FE3C 8000F23C 27190008 */  addiu      $t9, $t8, 8
/* FE40 8000F240 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* FE44 8000F244 AD2D0000 */  sw         $t5, ($t1)
/* FE48 8000F248 8FAF0068 */  lw         $t7, 0x68($sp)
/* FE4C 8000F24C ADE00004 */  sw         $zero, 4($t7)
/* FE50 8000F250 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* FE54 8000F254 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* FE58 8000F258 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FE5C 8000F25C 3C0CBA00 */  lui        $t4, 0xba00
/* FE60 8000F260 AFAA0064 */  sw         $t2, 0x64($sp)
/* FE64 8000F264 8FA80064 */  lw         $t0, 0x64($sp)
/* FE68 8000F268 254B0008 */  addiu      $t3, $t2, 8
/* FE6C 8000F26C AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* FE70 8000F270 358C0E02 */  ori        $t4, $t4, 0xe02
/* FE74 8000F274 AD0C0000 */  sw         $t4, ($t0)
/* FE78 8000F278 8FAE0064 */  lw         $t6, 0x64($sp)
/* FE7C 8000F27C ADC00004 */  sw         $zero, 4($t6)
/* FE80 8000F280 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* FE84 8000F284 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* FE88 8000F288 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FE8C 8000F28C 3C0DFD18 */  lui        $t5, 0xfd18
/* FE90 8000F290 AFB80060 */  sw         $t8, 0x60($sp)
/* FE94 8000F294 8FA90060 */  lw         $t1, 0x60($sp)
/* FE98 8000F298 27190008 */  addiu      $t9, $t8, 8
/* FE9C 8000F29C AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* FEA0 8000F2A0 AD2D0000 */  sw         $t5, ($t1)
/* FEA4 8000F2A4 8FAF00F4 */  lw         $t7, 0xf4($sp)
/* FEA8 8000F2A8 8FAE0060 */  lw         $t6, 0x60($sp)
/* FEAC 8000F2AC 3C0C8018 */  lui        $t4, %hi(D_80178EF8)
/* FEB0 8000F2B0 000F5080 */  sll        $t2, $t7, 2
/* FEB4 8000F2B4 014F5023 */  subu       $t2, $t2, $t7
/* FEB8 8000F2B8 000A51C0 */  sll        $t2, $t2, 7
/* FEBC 8000F2BC 254BFE80 */  addiu      $t3, $t2, -0x180
/* FEC0 8000F2C0 258C8EF8 */  addiu      $t4, $t4, %lo(D_80178EF8)
/* FEC4 8000F2C4 016C4021 */  addu       $t0, $t3, $t4
/* FEC8 8000F2C8 ADC80004 */  sw         $t0, 4($t6)
/* FECC 8000F2CC 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* FED0 8000F2D0 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* FED4 8000F2D4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FED8 8000F2D8 3C0DF518 */  lui        $t5, 0xf518
/* FEDC 8000F2DC AFB8005C */  sw         $t8, 0x5c($sp)
/* FEE0 8000F2E0 8FA9005C */  lw         $t1, 0x5c($sp)
/* FEE4 8000F2E4 27190008 */  addiu      $t9, $t8, 8
/* FEE8 8000F2E8 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* FEEC 8000F2EC AD2D0000 */  sw         $t5, ($t1)
/* FEF0 8000F2F0 8FAA005C */  lw         $t2, 0x5c($sp)
/* FEF4 8000F2F4 3C0F0701 */  lui        $t7, 0x701
/* FEF8 8000F2F8 35EF8040 */  ori        $t7, $t7, 0x8040
/* FEFC 8000F2FC AD4F0004 */  sw         $t7, 4($t2)
/* FF00 8000F300 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* FF04 8000F304 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* FF08 8000F308 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FF0C 8000F30C 3C08E600 */  lui        $t0, 0xe600
/* FF10 8000F310 AFAB0058 */  sw         $t3, 0x58($sp)
/* FF14 8000F314 8FAE0058 */  lw         $t6, 0x58($sp)
/* FF18 8000F318 256C0008 */  addiu      $t4, $t3, 8
/* FF1C 8000F31C AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* FF20 8000F320 ADC80000 */  sw         $t0, ($t6)
/* FF24 8000F324 8FB80058 */  lw         $t8, 0x58($sp)
/* FF28 8000F328 AF000004 */  sw         $zero, 4($t8)
/* FF2C 8000F32C 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* FF30 8000F330 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* FF34 8000F334 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FF38 8000F338 3C09F300 */  lui        $t1, 0xf300
/* FF3C 8000F33C AFB90054 */  sw         $t9, 0x54($sp)
/* FF40 8000F340 8FAF0054 */  lw         $t7, 0x54($sp)
/* FF44 8000F344 272D0008 */  addiu      $t5, $t9, 8
/* FF48 8000F348 AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* FF4C 8000F34C ADE90000 */  sw         $t1, ($t7)
/* FF50 8000F350 8FAB0054 */  lw         $t3, 0x54($sp)
/* FF54 8000F354 3C0A073F */  lui        $t2, 0x73f
/* FF58 8000F358 354AF100 */  ori        $t2, $t2, 0xf100
/* FF5C 8000F35C AD6A0004 */  sw         $t2, 4($t3)
/* FF60 8000F360 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* FF64 8000F364 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* FF68 8000F368 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FF6C 8000F36C 3C0EE700 */  lui        $t6, 0xe700
/* FF70 8000F370 AFAC0050 */  sw         $t4, 0x50($sp)
/* FF74 8000F374 8FB80050 */  lw         $t8, 0x50($sp)
/* FF78 8000F378 25880008 */  addiu      $t0, $t4, 8
/* FF7C 8000F37C AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* FF80 8000F380 AF0E0000 */  sw         $t6, ($t8)
/* FF84 8000F384 8FB90050 */  lw         $t9, 0x50($sp)
/* FF88 8000F388 AF200004 */  sw         $zero, 4($t9)
/* FF8C 8000F38C 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* FF90 8000F390 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* FF94 8000F394 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FF98 8000F398 3C0FF518 */  lui        $t7, 0xf518
/* FF9C 8000F39C AFAD004C */  sw         $t5, 0x4c($sp)
/* FFA0 8000F3A0 8FAA004C */  lw         $t2, 0x4c($sp)
/* FFA4 8000F3A4 25A90008 */  addiu      $t1, $t5, 8
/* FFA8 8000F3A8 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* FFAC 8000F3AC 35EF0800 */  ori        $t7, $t7, 0x800
/* FFB0 8000F3B0 AD4F0000 */  sw         $t7, ($t2)
/* FFB4 8000F3B4 8FAC004C */  lw         $t4, 0x4c($sp)
/* FFB8 8000F3B8 3C0B0001 */  lui        $t3, 1
/* FFBC 8000F3BC 356B8040 */  ori        $t3, $t3, 0x8040
/* FFC0 8000F3C0 AD8B0004 */  sw         $t3, 4($t4)
/* FFC4 8000F3C4 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* FFC8 8000F3C8 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* FFCC 8000F3CC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* FFD0 8000F3D0 3C18F200 */  lui        $t8, 0xf200
/* FFD4 8000F3D4 AFA80048 */  sw         $t0, 0x48($sp)
/* FFD8 8000F3D8 8FB90048 */  lw         $t9, 0x48($sp)
/* FFDC 8000F3DC 250E0008 */  addiu      $t6, $t0, 8
/* FFE0 8000F3E0 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* FFE4 8000F3E4 AF380000 */  sw         $t8, ($t9)
/* FFE8 8000F3E8 8FA90048 */  lw         $t1, 0x48($sp)
/* FFEC 8000F3EC 3C0D0003 */  lui        $t5, 3
/* FFF0 8000F3F0 35ADC0FC */  ori        $t5, $t5, 0xc0fc
/* FFF4 8000F3F4 AD2D0004 */  sw         $t5, 4($t1)
/* FFF8 8000F3F8 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* FFFC 8000F3FC 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* 10000 8000F400 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10004 8000F404 24AB000B */  addiu      $t3, $a1, 0xb
/* 10008 8000F408 25EA0008 */  addiu      $t2, $t7, 8
/* 1000C 8000F40C AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* 10010 8000F410 000B6080 */  sll        $t4, $t3, 2
/* 10014 8000F414 31880FFF */  andi       $t0, $t4, 0xfff
/* 10018 8000F418 24D90002 */  addiu      $t9, $a2, 2
/* 1001C 8000F41C AFAF0044 */  sw         $t7, 0x44($sp)
/* 10020 8000F420 8FAA0044 */  lw         $t2, 0x44($sp)
/* 10024 8000F424 00196880 */  sll        $t5, $t9, 2
/* 10028 8000F428 00087300 */  sll        $t6, $t0, 0xc
/* 1002C 8000F42C 3C01E400 */  lui        $at, 0xe400
/* 10030 8000F430 01C1C025 */  or         $t8, $t6, $at
/* 10034 8000F434 31A90FFF */  andi       $t1, $t5, 0xfff
/* 10038 8000F438 03097825 */  or         $t7, $t8, $t1
/* 1003C 8000F43C 24ABFFFB */  addiu      $t3, $a1, -5
/* 10040 8000F440 000B6080 */  sll        $t4, $t3, 2
/* 10044 8000F444 24D9FFFC */  addiu      $t9, $a2, -4
/* 10048 8000F448 AD4F0000 */  sw         $t7, ($t2)
/* 1004C 8000F44C 8FAF0044 */  lw         $t7, 0x44($sp)
/* 10050 8000F450 00196880 */  sll        $t5, $t9, 2
/* 10054 8000F454 31880FFF */  andi       $t0, $t4, 0xfff
/* 10058 8000F458 00087300 */  sll        $t6, $t0, 0xc
/* 1005C 8000F45C 31B80FFF */  andi       $t8, $t5, 0xfff
/* 10060 8000F460 01D84825 */  or         $t1, $t6, $t8
/* 10064 8000F464 ADE90004 */  sw         $t1, 4($t7)
/* 10068 8000F468 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* 1006C 8000F46C 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* 10070 8000F470 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10074 8000F474 3C0CB400 */  lui        $t4, 0xb400
/* 10078 8000F478 AFAA0040 */  sw         $t2, 0x40($sp)
/* 1007C 8000F47C 8FA80040 */  lw         $t0, 0x40($sp)
/* 10080 8000F480 254B0008 */  addiu      $t3, $t2, 8
/* 10084 8000F484 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* 10088 8000F488 AD0C0000 */  sw         $t4, ($t0)
/* 1008C 8000F48C 8FB90040 */  lw         $t9, 0x40($sp)
/* 10090 8000F490 AF200004 */  sw         $zero, 4($t9)
/* 10094 8000F494 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* 10098 8000F498 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* 1009C 8000F49C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 100A0 8000F4A0 3C18B300 */  lui        $t8, 0xb300
/* 100A4 8000F4A4 AFAD003C */  sw         $t5, 0x3c($sp)
/* 100A8 8000F4A8 8FA9003C */  lw         $t1, 0x3c($sp)
/* 100AC 8000F4AC 25AE0008 */  addiu      $t6, $t5, 8
/* 100B0 8000F4B0 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* 100B4 8000F4B4 AD380000 */  sw         $t8, ($t1)
/* 100B8 8000F4B8 8FAA003C */  lw         $t2, 0x3c($sp)
/* 100BC 8000F4BC 3C0F0400 */  lui        $t7, 0x400
/* 100C0 8000F4C0 35EF0400 */  ori        $t7, $t7, 0x400
/* 100C4 8000F4C4 AD4F0004 */  sw         $t7, 4($t2)
/* 100C8 8000F4C8 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* 100CC 8000F4CC 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* 100D0 8000F4D0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 100D4 8000F4D4 3C08E700 */  lui        $t0, 0xe700
/* 100D8 8000F4D8 AFAB0038 */  sw         $t3, 0x38($sp)
/* 100DC 8000F4DC 8FB90038 */  lw         $t9, 0x38($sp)
/* 100E0 8000F4E0 256C0008 */  addiu      $t4, $t3, 8
/* 100E4 8000F4E4 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* 100E8 8000F4E8 AF280000 */  sw         $t0, ($t9)
/* 100EC 8000F4EC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 100F0 8000F4F0 ADA00004 */  sw         $zero, 4($t5)
/* 100F4 8000F4F4 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* 100F8 8000F4F8 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* 100FC 8000F4FC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10100 8000F500 3C09BA00 */  lui        $t1, 0xba00
/* 10104 8000F504 AFAE0034 */  sw         $t6, 0x34($sp)
/* 10108 8000F508 8FAF0034 */  lw         $t7, 0x34($sp)
/* 1010C 8000F50C 25D80008 */  addiu      $t8, $t6, 8
/* 10110 8000F510 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* 10114 8000F514 35290E02 */  ori        $t1, $t1, 0xe02
/* 10118 8000F518 ADE90000 */  sw         $t1, ($t7)
/* 1011C 8000F51C 8FAB0034 */  lw         $t3, 0x34($sp)
/* 10120 8000F520 340A8000 */  ori        $t2, $zero, 0x8000
/* 10124 8000F524 AD6A0004 */  sw         $t2, 4($t3)
/* 10128 8000F528 14E0004B */  bnez       $a3, .L8000F658
/* 1012C 8000F52C 00000000 */   nop
/* 10130 8000F530 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* 10134 8000F534 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* 10138 8000F538 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 1013C 8000F53C 3C19FD10 */  lui        $t9, 0xfd10
/* 10140 8000F540 AFAC0030 */  sw         $t4, 0x30($sp)
/* 10144 8000F544 8FAD0030 */  lw         $t5, 0x30($sp)
/* 10148 8000F548 25880008 */  addiu      $t0, $t4, 8
/* 1014C 8000F54C AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* 10150 8000F550 ADB90000 */  sw         $t9, ($t5)
/* 10154 8000F554 8FB80030 */  lw         $t8, 0x30($sp)
/* 10158 8000F558 3C0E8022 */  lui        $t6, %hi(D_802267F8)
/* 1015C 8000F55C 25CE67F8 */  addiu      $t6, $t6, %lo(D_802267F8)
/* 10160 8000F560 AF0E0004 */  sw         $t6, 4($t8)
/* 10164 8000F564 3C09800F */  lui        $t1, %hi(D_800F2A64)
/* 10168 8000F568 8D292A64 */  lw         $t1, %lo(D_800F2A64)($t1)
/* 1016C 8000F56C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10170 8000F570 3C0AE800 */  lui        $t2, 0xe800
/* 10174 8000F574 AFA9002C */  sw         $t1, 0x2c($sp)
/* 10178 8000F578 8FAB002C */  lw         $t3, 0x2c($sp)
/* 1017C 8000F57C 252F0008 */  addiu      $t7, $t1, 8
/* 10180 8000F580 AC2F2A64 */  sw         $t7, %lo(D_800F2A64)($at)
/* 10184 8000F584 AD6A0000 */  sw         $t2, ($t3)
/* 10188 8000F588 8FAC002C */  lw         $t4, 0x2c($sp)
/* 1018C 8000F58C AD800004 */  sw         $zero, 4($t4)
/* 10190 8000F590 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* 10194 8000F594 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* 10198 8000F598 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 1019C 8000F59C 3C0DF500 */  lui        $t5, 0xf500
/* 101A0 8000F5A0 AFA80028 */  sw         $t0, 0x28($sp)
/* 101A4 8000F5A4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 101A8 8000F5A8 25190008 */  addiu      $t9, $t0, 8
/* 101AC 8000F5AC AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* 101B0 8000F5B0 35AD0100 */  ori        $t5, $t5, 0x100
/* 101B4 8000F5B4 ADCD0000 */  sw         $t5, ($t6)
/* 101B8 8000F5B8 8FA90028 */  lw         $t1, 0x28($sp)
/* 101BC 8000F5BC 3C180700 */  lui        $t8, 0x700
/* 101C0 8000F5C0 AD380004 */  sw         $t8, 4($t1)
/* 101C4 8000F5C4 3C0F800F */  lui        $t7, %hi(D_800F2A64)
/* 101C8 8000F5C8 8DEF2A64 */  lw         $t7, %lo(D_800F2A64)($t7)
/* 101CC 8000F5CC 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 101D0 8000F5D0 3C0BE600 */  lui        $t3, 0xe600
/* 101D4 8000F5D4 AFAF0024 */  sw         $t7, 0x24($sp)
/* 101D8 8000F5D8 8FAC0024 */  lw         $t4, 0x24($sp)
/* 101DC 8000F5DC 25EA0008 */  addiu      $t2, $t7, 8
/* 101E0 8000F5E0 AC2A2A64 */  sw         $t2, %lo(D_800F2A64)($at)
/* 101E4 8000F5E4 AD8B0000 */  sw         $t3, ($t4)
/* 101E8 8000F5E8 8FA80024 */  lw         $t0, 0x24($sp)
/* 101EC 8000F5EC AD000004 */  sw         $zero, 4($t0)
/* 101F0 8000F5F0 3C19800F */  lui        $t9, %hi(D_800F2A64)
/* 101F4 8000F5F4 8F392A64 */  lw         $t9, %lo(D_800F2A64)($t9)
/* 101F8 8000F5F8 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 101FC 8000F5FC 3C0EF000 */  lui        $t6, 0xf000
/* 10200 8000F600 AFB90020 */  sw         $t9, 0x20($sp)
/* 10204 8000F604 8FB80020 */  lw         $t8, 0x20($sp)
/* 10208 8000F608 272D0008 */  addiu      $t5, $t9, 8
/* 1020C 8000F60C AC2D2A64 */  sw         $t5, %lo(D_800F2A64)($at)
/* 10210 8000F610 AF0E0000 */  sw         $t6, ($t8)
/* 10214 8000F614 8FAF0020 */  lw         $t7, 0x20($sp)
/* 10218 8000F618 3C090703 */  lui        $t1, 0x703
/* 1021C 8000F61C 3529C000 */  ori        $t1, $t1, 0xc000
/* 10220 8000F620 ADE90004 */  sw         $t1, 4($t7)
/* 10224 8000F624 3C0A800F */  lui        $t2, %hi(D_800F2A64)
/* 10228 8000F628 8D4A2A64 */  lw         $t2, %lo(D_800F2A64)($t2)
/* 1022C 8000F62C 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10230 8000F630 3C0CE700 */  lui        $t4, 0xe700
/* 10234 8000F634 AFAA001C */  sw         $t2, 0x1c($sp)
/* 10238 8000F638 8FA8001C */  lw         $t0, 0x1c($sp)
/* 1023C 8000F63C 254B0008 */  addiu      $t3, $t2, 8
/* 10240 8000F640 AC2B2A64 */  sw         $t3, %lo(D_800F2A64)($at)
/* 10244 8000F644 AD0C0000 */  sw         $t4, ($t0)
/* 10248 8000F648 8FB9001C */  lw         $t9, 0x1c($sp)
/* 1024C 8000F64C AF200004 */  sw         $zero, 4($t9)
/* 10250 8000F650 10000049 */  b          .L8000F778
/* 10254 8000F654 00000000 */   nop
.L8000F658:
/* 10258 8000F658 3C0D800F */  lui        $t5, %hi(D_800F2A64)
/* 1025C 8000F65C 8DAD2A64 */  lw         $t5, %lo(D_800F2A64)($t5)
/* 10260 8000F660 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10264 8000F664 3C18FD10 */  lui        $t8, 0xfd10
/* 10268 8000F668 AFAD0018 */  sw         $t5, 0x18($sp)
/* 1026C 8000F66C 8FA90018 */  lw         $t1, 0x18($sp)
/* 10270 8000F670 25AE0008 */  addiu      $t6, $t5, 8
/* 10274 8000F674 AC2E2A64 */  sw         $t6, %lo(D_800F2A64)($at)
/* 10278 8000F678 AD380000 */  sw         $t8, ($t1)
/* 1027C 8000F67C 8FAA0018 */  lw         $t2, 0x18($sp)
/* 10280 8000F680 3C0F8022 */  lui        $t7, %hi(D_80226820)
/* 10284 8000F684 25EF6820 */  addiu      $t7, $t7, %lo(D_80226820)
/* 10288 8000F688 AD4F0004 */  sw         $t7, 4($t2)
/* 1028C 8000F68C 3C0B800F */  lui        $t3, %hi(D_800F2A64)
/* 10290 8000F690 8D6B2A64 */  lw         $t3, %lo(D_800F2A64)($t3)
/* 10294 8000F694 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10298 8000F698 3C08E800 */  lui        $t0, 0xe800
/* 1029C 8000F69C AFAB0014 */  sw         $t3, 0x14($sp)
/* 102A0 8000F6A0 8FB90014 */  lw         $t9, 0x14($sp)
/* 102A4 8000F6A4 256C0008 */  addiu      $t4, $t3, 8
/* 102A8 8000F6A8 AC2C2A64 */  sw         $t4, %lo(D_800F2A64)($at)
/* 102AC 8000F6AC AF280000 */  sw         $t0, ($t9)
/* 102B0 8000F6B0 8FAD0014 */  lw         $t5, 0x14($sp)
/* 102B4 8000F6B4 ADA00004 */  sw         $zero, 4($t5)
/* 102B8 8000F6B8 3C0E800F */  lui        $t6, %hi(D_800F2A64)
/* 102BC 8000F6BC 8DCE2A64 */  lw         $t6, %lo(D_800F2A64)($t6)
/* 102C0 8000F6C0 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 102C4 8000F6C4 3C09F500 */  lui        $t1, 0xf500
/* 102C8 8000F6C8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 102CC 8000F6CC 8FAF0010 */  lw         $t7, 0x10($sp)
/* 102D0 8000F6D0 25D80008 */  addiu      $t8, $t6, 8
/* 102D4 8000F6D4 AC382A64 */  sw         $t8, %lo(D_800F2A64)($at)
/* 102D8 8000F6D8 35290100 */  ori        $t1, $t1, 0x100
/* 102DC 8000F6DC ADE90000 */  sw         $t1, ($t7)
/* 102E0 8000F6E0 8FAB0010 */  lw         $t3, 0x10($sp)
/* 102E4 8000F6E4 3C0A0700 */  lui        $t2, 0x700
/* 102E8 8000F6E8 AD6A0004 */  sw         $t2, 4($t3)
/* 102EC 8000F6EC 3C0C800F */  lui        $t4, %hi(D_800F2A64)
/* 102F0 8000F6F0 8D8C2A64 */  lw         $t4, %lo(D_800F2A64)($t4)
/* 102F4 8000F6F4 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 102F8 8000F6F8 3C19E600 */  lui        $t9, 0xe600
/* 102FC 8000F6FC AFAC000C */  sw         $t4, 0xc($sp)
/* 10300 8000F700 8FAD000C */  lw         $t5, 0xc($sp)
/* 10304 8000F704 25880008 */  addiu      $t0, $t4, 8
/* 10308 8000F708 AC282A64 */  sw         $t0, %lo(D_800F2A64)($at)
/* 1030C 8000F70C ADB90000 */  sw         $t9, ($t5)
/* 10310 8000F710 8FAE000C */  lw         $t6, 0xc($sp)
/* 10314 8000F714 ADC00004 */  sw         $zero, 4($t6)
/* 10318 8000F718 3C18800F */  lui        $t8, %hi(D_800F2A64)
/* 1031C 8000F71C 8F182A64 */  lw         $t8, %lo(D_800F2A64)($t8)
/* 10320 8000F720 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10324 8000F724 3C0FF000 */  lui        $t7, 0xf000
/* 10328 8000F728 AFB80008 */  sw         $t8, 8($sp)
/* 1032C 8000F72C 8FAA0008 */  lw         $t2, 8($sp)
/* 10330 8000F730 27090008 */  addiu      $t1, $t8, 8
/* 10334 8000F734 AC292A64 */  sw         $t1, %lo(D_800F2A64)($at)
/* 10338 8000F738 AD4F0000 */  sw         $t7, ($t2)
/* 1033C 8000F73C 8FAC0008 */  lw         $t4, 8($sp)
/* 10340 8000F740 3C0B0703 */  lui        $t3, 0x703
/* 10344 8000F744 356BC000 */  ori        $t3, $t3, 0xc000
/* 10348 8000F748 AD8B0004 */  sw         $t3, 4($t4)
/* 1034C 8000F74C 3C08800F */  lui        $t0, %hi(D_800F2A64)
/* 10350 8000F750 8D082A64 */  lw         $t0, %lo(D_800F2A64)($t0)
/* 10354 8000F754 3C01800F */  lui        $at, %hi(D_800F2A64)
/* 10358 8000F758 3C0DE700 */  lui        $t5, 0xe700
/* 1035C 8000F75C AFA80004 */  sw         $t0, 4($sp)
/* 10360 8000F760 8FAE0004 */  lw         $t6, 4($sp)
/* 10364 8000F764 25190008 */  addiu      $t9, $t0, 8
/* 10368 8000F768 AC392A64 */  sw         $t9, %lo(D_800F2A64)($at)
/* 1036C 8000F76C ADCD0000 */  sw         $t5, ($t6)
/* 10370 8000F770 8FB80004 */  lw         $t8, 4($sp)
/* 10374 8000F774 AF000004 */  sw         $zero, 4($t8)
.L8000F778:
/* 10378 8000F778 AFA000F4 */  sw         $zero, 0xf4($sp)
.L8000F77C:
/* 1037C 8000F77C 87AF0100 */  lh         $t7, 0x100($sp)
/* 10380 8000F780 8FAB0104 */  lw         $t3, 0x104($sp)
/* 10384 8000F784 87A900FA */  lh         $t1, 0xfa($sp)
/* 10388 8000F788 25EA0001 */  addiu      $t2, $t7, 1
/* 1038C 8000F78C 000A6400 */  sll        $t4, $t2, 0x10
/* 10390 8000F790 000C4403 */  sra        $t0, $t4, 0x10
/* 10394 8000F794 A7AA0100 */  sh         $t2, 0x100($sp)
/* 10398 8000F798 010BC821 */  addu       $t9, $t0, $t3
/* 1039C 8000F79C 932D0000 */  lbu        $t5, ($t9)
/* 103A0 8000F7A0 00A92821 */  addu       $a1, $a1, $t1
/* 103A4 8000F7A4 00052C00 */  sll        $a1, $a1, 0x10
/* 103A8 8000F7A8 15A0FDDD */  bnez       $t5, .L8000EF20
/* 103AC 8000F7AC 00052C03 */   sra       $a1, $a1, 0x10
.L8000F7B0:
/* 103B0 8000F7B0 03E00008 */  jr         $ra
/* 103B4 8000F7B4 27BD0108 */   addiu     $sp, $sp, 0x108

glabel func_8000F7B8
/* 103B8 8000F7B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103BC 8000F7BC AFA40014 */  sw         $a0, 0x14($sp)
/* 103C0 8000F7C0 8FAF0014 */  lw         $t7, 0x14($sp)
/* 103C4 8000F7C4 240E00FF */  addiu      $t6, $zero, 0xff
/* 103C8 8000F7C8 A3AE0013 */  sb         $t6, 0x13($sp)
/* 103CC 8000F7CC AFA00004 */  sw         $zero, 4($sp)
/* 103D0 8000F7D0 A7A00010 */  sh         $zero, 0x10($sp)
/* 103D4 8000F7D4 91F80000 */  lbu        $t8, ($t7)
/* 103D8 8000F7D8 13000038 */  beqz       $t8, .L8000F8BC
/* 103DC 8000F7DC 00000000 */   nop
.L8000F7E0:
/* 103E0 8000F7E0 87B90010 */  lh         $t9, 0x10($sp)
/* 103E4 8000F7E4 8FA80014 */  lw         $t0, 0x14($sp)
/* 103E8 8000F7E8 03284821 */  addu       $t1, $t9, $t0
/* 103EC 8000F7EC 912A0000 */  lbu        $t2, ($t1)
/* 103F0 8000F7F0 29410080 */  slti       $at, $t2, 0x80
/* 103F4 8000F7F4 14200006 */  bnez       $at, .L8000F810
/* 103F8 8000F7F8 A3AA0003 */   sb        $t2, 3($sp)
/* 103FC 8000F7FC 000A5840 */  sll        $t3, $t2, 1
/* 10400 8000F800 3C0C801C */  lui        $t4, %hi(D_801C5EC8)
/* 10404 8000F804 018B6021 */  addu       $t4, $t4, $t3
/* 10408 8000F808 918C5EC8 */  lbu        $t4, %lo(D_801C5EC8)($t4)
/* 1040C 8000F80C A3AC0003 */  sb         $t4, 3($sp)
.L8000F810:
/* 10410 8000F810 93AE0003 */  lbu        $t6, 3($sp)
/* 10414 8000F814 240D0008 */  addiu      $t5, $zero, 8
/* 10418 8000F818 A7AD000A */  sh         $t5, 0xa($sp)
/* 1041C 8000F81C 29C10021 */  slti       $at, $t6, 0x21
/* 10420 8000F820 14200018 */  bnez       $at, .L8000F884
/* 10424 8000F824 29C1005B */   slti      $at, $t6, 0x5b
/* 10428 8000F828 10200016 */  beqz       $at, .L8000F884
/* 1042C 8000F82C 00000000 */   nop
/* 10430 8000F830 000E7840 */  sll        $t7, $t6, 1
/* 10434 8000F834 25F8FFBE */  addiu      $t8, $t7, -0x42
/* 10438 8000F838 0018CC00 */  sll        $t9, $t8, 0x10
/* 1043C 8000F83C 3C09800D */  lui        $t1, %hi(D_800D6524)
/* 10440 8000F840 25296524 */  addiu      $t1, $t1, %lo(D_800D6524)
/* 10444 8000F844 00194403 */  sra        $t0, $t9, 0x10
/* 10448 8000F848 A7B8000C */  sh         $t8, 0xc($sp)
/* 1044C 8000F84C 01095021 */  addu       $t2, $t0, $t1
/* 10450 8000F850 914B0000 */  lbu        $t3, ($t2)
/* 10454 8000F854 2401FFFF */  addiu      $at, $zero, -1
/* 10458 8000F858 1161000A */  beq        $t3, $at, .L8000F884
/* 1045C 8000F85C A7AB000E */   sh        $t3, 0xe($sp)
/* 10460 8000F860 00186400 */  sll        $t4, $t8, 0x10
/* 10464 8000F864 000C6C03 */  sra        $t5, $t4, 0x10
/* 10468 8000F868 01A97821 */  addu       $t7, $t5, $t1
/* 1046C 8000F86C 91F90001 */  lbu        $t9, 1($t7)
/* 10470 8000F870 93AA0013 */  lbu        $t2, 0x13($sp)
/* 10474 8000F874 27280001 */  addiu      $t0, $t9, 1
/* 10478 8000F878 114E0002 */  beq        $t2, $t6, .L8000F884
/* 1047C 8000F87C A7A8000A */   sh        $t0, 0xa($sp)
/* 10480 8000F880 A3AE0013 */  sb         $t6, 0x13($sp)
.L8000F884:
/* 10484 8000F884 87AD0010 */  lh         $t5, 0x10($sp)
/* 10488 8000F888 8FAB0004 */  lw         $t3, 4($sp)
/* 1048C 8000F88C 87B8000A */  lh         $t8, 0xa($sp)
/* 10490 8000F890 8FAF0014 */  lw         $t7, 0x14($sp)
/* 10494 8000F894 25A90001 */  addiu      $t1, $t5, 1
/* 10498 8000F898 0009CC00 */  sll        $t9, $t1, 0x10
/* 1049C 8000F89C 00194403 */  sra        $t0, $t9, 0x10
/* 104A0 8000F8A0 01786021 */  addu       $t4, $t3, $t8
/* 104A4 8000F8A4 A7A90010 */  sh         $t1, 0x10($sp)
/* 104A8 8000F8A8 AFAC0004 */  sw         $t4, 4($sp)
/* 104AC 8000F8AC 010F5021 */  addu       $t2, $t0, $t7
/* 104B0 8000F8B0 914E0000 */  lbu        $t6, ($t2)
/* 104B4 8000F8B4 15C0FFCA */  bnez       $t6, .L8000F7E0
/* 104B8 8000F8B8 00000000 */   nop
.L8000F8BC:
/* 104BC 8000F8BC 8FA20004 */  lw         $v0, 4($sp)
/* 104C0 8000F8C0 03E00008 */  jr         $ra
/* 104C4 8000F8C4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 104C8 8000F8C8 00000000 */  nop
/* 104CC 8000F8CC 00000000 */  nop

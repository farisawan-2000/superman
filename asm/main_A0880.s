.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009FC80
/* A0880 8009FC80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A0884 8009FC84 AFBF0014 */  sw         $ra, 0x14($sp)
/* A0888 8009FC88 AFA40020 */  sw         $a0, 0x20($sp)
/* A088C 8009FC8C AFA50024 */  sw         $a1, 0x24($sp)
/* A0890 8009FC90 AFA60028 */  sw         $a2, 0x28($sp)
/* A0894 8009FC94 AFA7002C */  sw         $a3, 0x2c($sp)
/* A0898 8009FC98 8FAE0024 */  lw         $t6, 0x24($sp)
/* A089C 8009FC9C 8FB8002C */  lw         $t8, 0x2c($sp)
/* A08A0 8009FCA0 91CF0000 */  lbu        $t7, ($t6)
/* A08A4 8009FCA4 93190000 */  lbu        $t9, ($t8)
/* A08A8 8009FCA8 11F90011 */  beq        $t7, $t9, .L8009FCF0
/* A08AC 8009FCAC 00000000 */   nop
/* A08B0 8009FCB0 8FA8002C */  lw         $t0, 0x2c($sp)
/* A08B4 8009FCB4 8FAA0024 */  lw         $t2, 0x24($sp)
/* A08B8 8009FCB8 91090000 */  lbu        $t1, ($t0)
/* A08BC 8009FCBC A1490000 */  sb         $t1, ($t2)
/* A08C0 8009FCC0 8FAB0024 */  lw         $t3, 0x24($sp)
/* A08C4 8009FCC4 8FA40020 */  lw         $a0, 0x20($sp)
/* A08C8 8009FCC8 8FA50028 */  lw         $a1, 0x28($sp)
/* A08CC 8009FCCC 00003025 */  or         $a2, $zero, $zero
/* A08D0 8009FCD0 0C029104 */  jal        func_800A4410
/* A08D4 8009FCD4 91670000 */   lbu       $a3, ($t3)
/* A08D8 8009FCD8 AFA2001C */  sw         $v0, 0x1c($sp)
/* A08DC 8009FCDC 8FAC001C */  lw         $t4, 0x1c($sp)
/* A08E0 8009FCE0 11800003 */  beqz       $t4, .L8009FCF0
/* A08E4 8009FCE4 00000000 */   nop
/* A08E8 8009FCE8 10000027 */  b          .L8009FD88
/* A08EC 8009FCEC 8FA2001C */   lw        $v0, 0x1c($sp)
.L8009FCF0:
/* A08F0 8009FCF0 8FAD002C */  lw         $t5, 0x2c($sp)
/* A08F4 8009FCF4 8FAE0028 */  lw         $t6, 0x28($sp)
/* A08F8 8009FCF8 91B80001 */  lbu        $t8, 1($t5)
/* A08FC 8009FCFC 00187840 */  sll        $t7, $t8, 1
/* A0900 8009FD00 01CFC821 */  addu       $t9, $t6, $t7
/* A0904 8009FD04 97210000 */  lhu        $at, ($t9)
/* A0908 8009FD08 A5A10000 */  sh         $at, ($t5)
/* A090C 8009FD0C 8FAA002C */  lw         $t2, 0x2c($sp)
/* A0910 8009FD10 8FAC0020 */  lw         $t4, 0x20($sp)
/* A0914 8009FD14 954B0000 */  lhu        $t3, ($t2)
/* A0918 8009FD18 8D980060 */  lw         $t8, 0x60($t4)
/* A091C 8009FD1C 0178082A */  slt        $at, $t3, $t8
/* A0920 8009FD20 1420000C */  bnez       $at, .L8009FD54
/* A0924 8009FD24 00000000 */   nop
/* A0928 8009FD28 914E0000 */  lbu        $t6, ($t2)
/* A092C 8009FD2C 918F0064 */  lbu        $t7, 0x64($t4)
/* A0930 8009FD30 01CF082A */  slt        $at, $t6, $t7
/* A0934 8009FD34 10200007 */  beqz       $at, .L8009FD54
/* A0938 8009FD38 00000000 */   nop
/* A093C 8009FD3C 91480001 */  lbu        $t0, 1($t2)
/* A0940 8009FD40 19000004 */  blez       $t0, .L8009FD54
/* A0944 8009FD44 00000000 */   nop
/* A0948 8009FD48 29010080 */  slti       $at, $t0, 0x80
/* A094C 8009FD4C 1420000A */  bnez       $at, .L8009FD78
/* A0950 8009FD50 00000000 */   nop
.L8009FD54:
/* A0954 8009FD54 8FAD002C */  lw         $t5, 0x2c($sp)
/* A0958 8009FD58 24010001 */  addiu      $at, $zero, 1
/* A095C 8009FD5C 95B90000 */  lhu        $t9, ($t5)
/* A0960 8009FD60 17210003 */  bne        $t9, $at, .L8009FD70
/* A0964 8009FD64 00000000 */   nop
/* A0968 8009FD68 10000007 */  b          .L8009FD88
/* A096C 8009FD6C 24020005 */   addiu     $v0, $zero, 5
.L8009FD70:
/* A0970 8009FD70 10000005 */  b          .L8009FD88
/* A0974 8009FD74 24020003 */   addiu     $v0, $zero, 3
.L8009FD78:
/* A0978 8009FD78 10000003 */  b          .L8009FD88
/* A097C 8009FD7C 00001025 */   or        $v0, $zero, $zero
/* A0980 8009FD80 10000001 */  b          .L8009FD88
/* A0984 8009FD84 00000000 */   nop
.L8009FD88:
/* A0988 8009FD88 8FBF0014 */  lw         $ra, 0x14($sp)
/* A098C 8009FD8C 27BD0020 */  addiu      $sp, $sp, 0x20
/* A0990 8009FD90 03E00008 */  jr         $ra
/* A0994 8009FD94 00000000 */   nop

glabel func_8009FD98
/* A0998 8009FD98 27BDFEA8 */  addiu      $sp, $sp, -0x158
/* A099C 8009FD9C AFBF001C */  sw         $ra, 0x1c($sp)
/* A09A0 8009FDA0 AFA40158 */  sw         $a0, 0x158($sp)
/* A09A4 8009FDA4 AFA5015C */  sw         $a1, 0x15c($sp)
/* A09A8 8009FDA8 AFA60160 */  sw         $a2, 0x160($sp)
/* A09AC 8009FDAC AFA70164 */  sw         $a3, 0x164($sp)
/* A09B0 8009FDB0 8FAF0158 */  lw         $t7, 0x158($sp)
/* A09B4 8009FDB4 8FAE015C */  lw         $t6, 0x15c($sp)
/* A09B8 8009FDB8 8DF80050 */  lw         $t8, 0x50($t7)
/* A09BC 8009FDBC 01D8082A */  slt        $at, $t6, $t8
/* A09C0 8009FDC0 10200003 */  beqz       $at, .L8009FDD0
/* A09C4 8009FDC4 00000000 */   nop
/* A09C8 8009FDC8 05C10003 */  bgez       $t6, .L8009FDD8
/* A09CC 8009FDCC 00000000 */   nop
.L8009FDD0:
/* A09D0 8009FDD0 10000101 */  b          .L800A01D8
/* A09D4 8009FDD4 24020005 */   addiu     $v0, $zero, 5
.L8009FDD8:
/* A09D8 8009FDD8 8FB90168 */  lw         $t9, 0x168($sp)
/* A09DC 8009FDDC 1B200004 */  blez       $t9, .L8009FDF0
/* A09E0 8009FDE0 00000000 */   nop
/* A09E4 8009FDE4 3328001F */  andi       $t0, $t9, 0x1f
/* A09E8 8009FDE8 11000003 */  beqz       $t0, .L8009FDF8
/* A09EC 8009FDEC 00000000 */   nop
.L8009FDF0:
/* A09F0 8009FDF0 100000F9 */  b          .L800A01D8
/* A09F4 8009FDF4 24020005 */   addiu     $v0, $zero, 5
.L8009FDF8:
/* A09F8 8009FDF8 8FA90164 */  lw         $t1, 0x164($sp)
/* A09FC 8009FDFC 05200004 */  bltz       $t1, .L8009FE10
/* A0A00 8009FE00 00000000 */   nop
/* A0A04 8009FE04 312A001F */  andi       $t2, $t1, 0x1f
/* A0A08 8009FE08 11400003 */  beqz       $t2, .L8009FE18
/* A0A0C 8009FE0C 00000000 */   nop
.L8009FE10:
/* A0A10 8009FE10 100000F1 */  b          .L800A01D8
/* A0A14 8009FE14 24020005 */   addiu     $v0, $zero, 5
.L8009FE18:
/* A0A18 8009FE18 8FAB0158 */  lw         $t3, 0x158($sp)
/* A0A1C 8009FE1C 8D6C0000 */  lw         $t4, ($t3)
/* A0A20 8009FE20 318D0001 */  andi       $t5, $t4, 1
/* A0A24 8009FE24 15A00003 */  bnez       $t5, .L8009FE34
/* A0A28 8009FE28 00000000 */   nop
/* A0A2C 8009FE2C 100000EA */  b          .L800A01D8
/* A0A30 8009FE30 24020005 */   addiu     $v0, $zero, 5
.L8009FE34:
/* A0A34 8009FE34 0C0290BF */  jal        func_800A42FC
/* A0A38 8009FE38 8FA40158 */   lw        $a0, 0x158($sp)
/* A0A3C 8009FE3C 24010002 */  addiu      $at, $zero, 2
/* A0A40 8009FE40 14410003 */  bne        $v0, $at, .L8009FE50
/* A0A44 8009FE44 00000000 */   nop
/* A0A48 8009FE48 100000E3 */  b          .L800A01D8
/* A0A4C 8009FE4C 24020002 */   addiu     $v0, $zero, 2
.L8009FE50:
/* A0A50 8009FE50 8FAF0158 */  lw         $t7, 0x158($sp)
/* A0A54 8009FE54 91F80065 */  lbu        $t8, 0x65($t7)
/* A0A58 8009FE58 1300000B */  beqz       $t8, .L8009FE88
/* A0A5C 8009FE5C 00000000 */   nop
/* A0A60 8009FE60 8FAE0158 */  lw         $t6, 0x158($sp)
/* A0A64 8009FE64 A1C00065 */  sb         $zero, 0x65($t6)
/* A0A68 8009FE68 0C0291D5 */  jal        func_800A4754
/* A0A6C 8009FE6C 8FA40158 */   lw        $a0, 0x158($sp)
/* A0A70 8009FE70 AFA20154 */  sw         $v0, 0x154($sp)
/* A0A74 8009FE74 8FB90154 */  lw         $t9, 0x154($sp)
/* A0A78 8009FE78 13200003 */  beqz       $t9, .L8009FE88
/* A0A7C 8009FE7C 00000000 */   nop
/* A0A80 8009FE80 100000D5 */  b          .L800A01D8
/* A0A84 8009FE84 8FA20154 */   lw        $v0, 0x154($sp)
.L8009FE88:
/* A0A88 8009FE88 8FA80158 */  lw         $t0, 0x158($sp)
/* A0A8C 8009FE8C 8FAA015C */  lw         $t2, 0x15c($sp)
/* A0A90 8009FE90 27A70134 */  addiu      $a3, $sp, 0x134
/* A0A94 8009FE94 8D09005C */  lw         $t1, 0x5c($t0)
/* A0A98 8009FE98 8D040004 */  lw         $a0, 4($t0)
/* A0A9C 8009FE9C 8D050008 */  lw         $a1, 8($t0)
/* A0AA0 8009FEA0 0C02E3D8 */  jal        func_800B8F60
/* A0AA4 8009FEA4 012A3021 */   addu      $a2, $t1, $t2
/* A0AA8 8009FEA8 AFA20154 */  sw         $v0, 0x154($sp)
/* A0AAC 8009FEAC 8FAB0154 */  lw         $t3, 0x154($sp)
/* A0AB0 8009FEB0 11600003 */  beqz       $t3, .L8009FEC0
/* A0AB4 8009FEB4 00000000 */   nop
/* A0AB8 8009FEB8 100000C7 */  b          .L800A01D8
/* A0ABC 8009FEBC 8FA20154 */   lw        $v0, 0x154($sp)
.L8009FEC0:
/* A0AC0 8009FEC0 97AC0138 */  lhu        $t4, 0x138($sp)
/* A0AC4 8009FEC4 11800004 */  beqz       $t4, .L8009FED8
/* A0AC8 8009FEC8 00000000 */   nop
/* A0ACC 8009FECC 8FAD0134 */  lw         $t5, 0x134($sp)
/* A0AD0 8009FED0 15A00003 */  bnez       $t5, .L8009FEE0
/* A0AD4 8009FED4 00000000 */   nop
.L8009FED8:
/* A0AD8 8009FED8 100000BF */  b          .L800A01D8
/* A0ADC 8009FEDC 24020005 */   addiu     $v0, $zero, 5
.L8009FEE0:
/* A0AE0 8009FEE0 8FB80158 */  lw         $t8, 0x158($sp)
/* A0AE4 8009FEE4 97AF013A */  lhu        $t7, 0x13a($sp)
/* A0AE8 8009FEE8 8F0E0060 */  lw         $t6, 0x60($t8)
/* A0AEC 8009FEEC 01EE082A */  slt        $at, $t7, $t6
/* A0AF0 8009FEF0 1420000C */  bnez       $at, .L8009FF24
/* A0AF4 8009FEF4 00000000 */   nop
/* A0AF8 8009FEF8 93B9013A */  lbu        $t9, 0x13a($sp)
/* A0AFC 8009FEFC 93080064 */  lbu        $t0, 0x64($t8)
/* A0B00 8009FF00 0328082A */  slt        $at, $t9, $t0
/* A0B04 8009FF04 10200007 */  beqz       $at, .L8009FF24
/* A0B08 8009FF08 00000000 */   nop
/* A0B0C 8009FF0C 93A9013B */  lbu        $t1, 0x13b($sp)
/* A0B10 8009FF10 19200004 */  blez       $t1, .L8009FF24
/* A0B14 8009FF14 00000000 */   nop
/* A0B18 8009FF18 29210080 */  slti       $at, $t1, 0x80
/* A0B1C 8009FF1C 14200009 */  bnez       $at, .L8009FF44
/* A0B20 8009FF20 00000000 */   nop
.L8009FF24:
/* A0B24 8009FF24 97AA013A */  lhu        $t2, 0x13a($sp)
/* A0B28 8009FF28 24010001 */  addiu      $at, $zero, 1
/* A0B2C 8009FF2C 15410003 */  bne        $t2, $at, .L8009FF3C
/* A0B30 8009FF30 00000000 */   nop
/* A0B34 8009FF34 100000A8 */  b          .L800A01D8
/* A0B38 8009FF38 24020005 */   addiu     $v0, $zero, 5
.L8009FF3C:
/* A0B3C 8009FF3C 100000A6 */  b          .L800A01D8
/* A0B40 8009FF40 24020003 */   addiu     $v0, $zero, 3
.L8009FF44:
/* A0B44 8009FF44 93AB0163 */  lbu        $t3, 0x163($sp)
/* A0B48 8009FF48 15600007 */  bnez       $t3, .L8009FF68
/* A0B4C 8009FF4C 00000000 */   nop
/* A0B50 8009FF50 93AC013C */  lbu        $t4, 0x13c($sp)
/* A0B54 8009FF54 318D0002 */  andi       $t5, $t4, 2
/* A0B58 8009FF58 15A00003 */  bnez       $t5, .L8009FF68
/* A0B5C 8009FF5C 00000000 */   nop
/* A0B60 8009FF60 1000009D */  b          .L800A01D8
/* A0B64 8009FF64 24020006 */   addiu     $v0, $zero, 6
.L8009FF68:
/* A0B68 8009FF68 240F00FF */  addiu      $t7, $zero, 0xff
/* A0B6C 8009FF6C A3AF0023 */  sb         $t7, 0x23($sp)
/* A0B70 8009FF70 8FAE0164 */  lw         $t6, 0x164($sp)
/* A0B74 8009FF74 05C10003 */  bgez       $t6, .L8009FF84
/* A0B78 8009FF78 000EC143 */   sra       $t8, $t6, 5
/* A0B7C 8009FF7C 25C1001F */  addiu      $at, $t6, 0x1f
/* A0B80 8009FF80 0001C143 */  sra        $t8, $at, 5
.L8009FF84:
/* A0B84 8009FF84 AFB8002C */  sw         $t8, 0x2c($sp)
/* A0B88 8009FF88 97B9013A */  lhu        $t9, 0x13a($sp)
/* A0B8C 8009FF8C A7B90030 */  sh         $t9, 0x30($sp)
/* A0B90 8009FF90 8FA8002C */  lw         $t0, 0x2c($sp)
/* A0B94 8009FF94 29010008 */  slti       $at, $t0, 8
/* A0B98 8009FF98 14200013 */  bnez       $at, .L8009FFE8
/* A0B9C 8009FF9C 00000000 */   nop
.L8009FFA0:
/* A0BA0 8009FFA0 8FA40158 */  lw         $a0, 0x158($sp)
/* A0BA4 8009FFA4 27A50023 */  addiu      $a1, $sp, 0x23
/* A0BA8 8009FFA8 27A60034 */  addiu      $a2, $sp, 0x34
/* A0BAC 8009FFAC 0C027F20 */  jal        func_8009FC80
/* A0BB0 8009FFB0 27A70030 */   addiu     $a3, $sp, 0x30
/* A0BB4 8009FFB4 AFA20154 */  sw         $v0, 0x154($sp)
/* A0BB8 8009FFB8 8FA90154 */  lw         $t1, 0x154($sp)
/* A0BBC 8009FFBC 11200003 */  beqz       $t1, .L8009FFCC
/* A0BC0 8009FFC0 00000000 */   nop
/* A0BC4 8009FFC4 10000084 */  b          .L800A01D8
/* A0BC8 8009FFC8 8FA20154 */   lw        $v0, 0x154($sp)
.L8009FFCC:
/* A0BCC 8009FFCC 8FAA002C */  lw         $t2, 0x2c($sp)
/* A0BD0 8009FFD0 254BFFF8 */  addiu      $t3, $t2, -8
/* A0BD4 8009FFD4 AFAB002C */  sw         $t3, 0x2c($sp)
/* A0BD8 8009FFD8 8FAC002C */  lw         $t4, 0x2c($sp)
/* A0BDC 8009FFDC 29810008 */  slti       $at, $t4, 8
/* A0BE0 8009FFE0 1020FFEF */  beqz       $at, .L8009FFA0
/* A0BE4 8009FFE4 00000000 */   nop
.L8009FFE8:
/* A0BE8 8009FFE8 8FAD0168 */  lw         $t5, 0x168($sp)
/* A0BEC 8009FFEC 05A10003 */  bgez       $t5, .L8009FFFC
/* A0BF0 8009FFF0 000D7943 */   sra       $t7, $t5, 5
/* A0BF4 8009FFF4 25A1001F */  addiu      $at, $t5, 0x1f
/* A0BF8 8009FFF8 00017943 */  sra        $t7, $at, 5
.L8009FFFC:
/* A0BFC 8009FFFC AFAF0028 */  sw         $t7, 0x28($sp)
/* A0C00 800A0000 8FAE016C */  lw         $t6, 0x16c($sp)
/* A0C04 800A0004 AFAE0024 */  sw         $t6, 0x24($sp)
/* A0C08 800A0008 8FB80028 */  lw         $t8, 0x28($sp)
/* A0C0C 800A000C 1B00004A */  blez       $t8, .L800A0138
/* A0C10 800A0010 00000000 */   nop
.L800A0014:
/* A0C14 800A0014 8FB9002C */  lw         $t9, 0x2c($sp)
/* A0C18 800A0018 24010008 */  addiu      $at, $zero, 8
/* A0C1C 800A001C 1721000D */  bne        $t9, $at, .L800A0054
/* A0C20 800A0020 00000000 */   nop
/* A0C24 800A0024 8FA40158 */  lw         $a0, 0x158($sp)
/* A0C28 800A0028 27A50023 */  addiu      $a1, $sp, 0x23
/* A0C2C 800A002C 27A60034 */  addiu      $a2, $sp, 0x34
/* A0C30 800A0030 0C027F20 */  jal        func_8009FC80
/* A0C34 800A0034 27A70030 */   addiu     $a3, $sp, 0x30
/* A0C38 800A0038 AFA20154 */  sw         $v0, 0x154($sp)
/* A0C3C 800A003C 8FA80154 */  lw         $t0, 0x154($sp)
/* A0C40 800A0040 11000003 */  beqz       $t0, .L800A0050
/* A0C44 800A0044 00000000 */   nop
/* A0C48 800A0048 10000063 */  b          .L800A01D8
/* A0C4C 800A004C 8FA20154 */   lw        $v0, 0x154($sp)
.L800A0050:
/* A0C50 800A0050 AFA0002C */  sw         $zero, 0x2c($sp)
.L800A0054:
/* A0C54 800A0054 8FA90158 */  lw         $t1, 0x158($sp)
/* A0C58 800A0058 93AB0030 */  lbu        $t3, 0x30($sp)
/* A0C5C 800A005C 912A0065 */  lbu        $t2, 0x65($t1)
/* A0C60 800A0060 114B000C */  beq        $t2, $t3, .L800A0094
/* A0C64 800A0064 00000000 */   nop
/* A0C68 800A0068 93AC0030 */  lbu        $t4, 0x30($sp)
/* A0C6C 800A006C 8FAD0158 */  lw         $t5, 0x158($sp)
/* A0C70 800A0070 A1AC0065 */  sb         $t4, 0x65($t5)
/* A0C74 800A0074 0C0291D5 */  jal        func_800A4754
/* A0C78 800A0078 8FA40158 */   lw        $a0, 0x158($sp)
/* A0C7C 800A007C AFA20154 */  sw         $v0, 0x154($sp)
/* A0C80 800A0080 8FAF0154 */  lw         $t7, 0x154($sp)
/* A0C84 800A0084 11E00003 */  beqz       $t7, .L800A0094
/* A0C88 800A0088 00000000 */   nop
/* A0C8C 800A008C 10000052 */  b          .L800A01D8
/* A0C90 800A0090 8FA20154 */   lw        $v0, 0x154($sp)
.L800A0094:
/* A0C94 800A0094 93AE0031 */  lbu        $t6, 0x31($sp)
/* A0C98 800A0098 8FB9002C */  lw         $t9, 0x2c($sp)
/* A0C9C 800A009C 000EC0C0 */  sll        $t8, $t6, 3
/* A0CA0 800A00A0 03194021 */  addu       $t0, $t8, $t9
/* A0CA4 800A00A4 A7A80020 */  sh         $t0, 0x20($sp)
/* A0CA8 800A00A8 93A90163 */  lbu        $t1, 0x163($sp)
/* A0CAC 800A00AC 15200009 */  bnez       $t1, .L800A00D4
/* A0CB0 800A00B0 00000000 */   nop
/* A0CB4 800A00B4 8FAA0158 */  lw         $t2, 0x158($sp)
/* A0CB8 800A00B8 97A60020 */  lhu        $a2, 0x20($sp)
/* A0CBC 800A00BC 8FA70024 */  lw         $a3, 0x24($sp)
/* A0CC0 800A00C0 8D440004 */  lw         $a0, 4($t2)
/* A0CC4 800A00C4 0C02E3D8 */  jal        func_800B8F60
/* A0CC8 800A00C8 8D450008 */   lw        $a1, 8($t2)
/* A0CCC 800A00CC 10000009 */  b          .L800A00F4
/* A0CD0 800A00D0 AFA20154 */   sw        $v0, 0x154($sp)
.L800A00D4:
/* A0CD4 800A00D4 8FAB0158 */  lw         $t3, 0x158($sp)
/* A0CD8 800A00D8 97A60020 */  lhu        $a2, 0x20($sp)
/* A0CDC 800A00DC 8FA70024 */  lw         $a3, 0x24($sp)
/* A0CE0 800A00E0 8D640004 */  lw         $a0, 4($t3)
/* A0CE4 800A00E4 8D650008 */  lw         $a1, 8($t3)
/* A0CE8 800A00E8 0C02DC04 */  jal        func_800B7010
/* A0CEC 800A00EC AFA00010 */   sw        $zero, 0x10($sp)
/* A0CF0 800A00F0 AFA20154 */  sw         $v0, 0x154($sp)
.L800A00F4:
/* A0CF4 800A00F4 8FAC0154 */  lw         $t4, 0x154($sp)
/* A0CF8 800A00F8 11800003 */  beqz       $t4, .L800A0108
/* A0CFC 800A00FC 00000000 */   nop
/* A0D00 800A0100 10000035 */  b          .L800A01D8
/* A0D04 800A0104 8FA20154 */   lw        $v0, 0x154($sp)
.L800A0108:
/* A0D08 800A0108 8FAD0024 */  lw         $t5, 0x24($sp)
/* A0D0C 800A010C 25AF0020 */  addiu      $t7, $t5, 0x20
/* A0D10 800A0110 AFAF0024 */  sw         $t7, 0x24($sp)
/* A0D14 800A0114 8FAE002C */  lw         $t6, 0x2c($sp)
/* A0D18 800A0118 25D80001 */  addiu      $t8, $t6, 1
/* A0D1C 800A011C AFB8002C */  sw         $t8, 0x2c($sp)
/* A0D20 800A0120 8FB90028 */  lw         $t9, 0x28($sp)
/* A0D24 800A0124 2728FFFF */  addiu      $t0, $t9, -1
/* A0D28 800A0128 AFA80028 */  sw         $t0, 0x28($sp)
/* A0D2C 800A012C 8FA90028 */  lw         $t1, 0x28($sp)
/* A0D30 800A0130 1D20FFB8 */  bgtz       $t1, .L800A0014
/* A0D34 800A0134 00000000 */   nop
.L800A0138:
/* A0D38 800A0138 93AA0163 */  lbu        $t2, 0x163($sp)
/* A0D3C 800A013C 24010001 */  addiu      $at, $zero, 1
/* A0D40 800A0140 15410021 */  bne        $t2, $at, .L800A01C8
/* A0D44 800A0144 00000000 */   nop
/* A0D48 800A0148 93AB013C */  lbu        $t3, 0x13c($sp)
/* A0D4C 800A014C 316C0002 */  andi       $t4, $t3, 2
/* A0D50 800A0150 1580001D */  bnez       $t4, .L800A01C8
/* A0D54 800A0154 00000000 */   nop
/* A0D58 800A0158 93AD013C */  lbu        $t5, 0x13c($sp)
/* A0D5C 800A015C 35AF0002 */  ori        $t7, $t5, 2
/* A0D60 800A0160 A3AF013C */  sb         $t7, 0x13c($sp)
/* A0D64 800A0164 8FAE0158 */  lw         $t6, 0x158($sp)
/* A0D68 800A0168 A1C00065 */  sb         $zero, 0x65($t6)
/* A0D6C 800A016C 0C0291D5 */  jal        func_800A4754
/* A0D70 800A0170 8FA40158 */   lw        $a0, 0x158($sp)
/* A0D74 800A0174 AFA20154 */  sw         $v0, 0x154($sp)
/* A0D78 800A0178 8FB80154 */  lw         $t8, 0x154($sp)
/* A0D7C 800A017C 13000003 */  beqz       $t8, .L800A018C
/* A0D80 800A0180 00000000 */   nop
/* A0D84 800A0184 10000014 */  b          .L800A01D8
/* A0D88 800A0188 8FA20154 */   lw        $v0, 0x154($sp)
.L800A018C:
/* A0D8C 800A018C 8FB90158 */  lw         $t9, 0x158($sp)
/* A0D90 800A0190 8FA9015C */  lw         $t1, 0x15c($sp)
/* A0D94 800A0194 27A70134 */  addiu      $a3, $sp, 0x134
/* A0D98 800A0198 8F28005C */  lw         $t0, 0x5c($t9)
/* A0D9C 800A019C 8F240004 */  lw         $a0, 4($t9)
/* A0DA0 800A01A0 8F250008 */  lw         $a1, 8($t9)
/* A0DA4 800A01A4 AFA00010 */  sw         $zero, 0x10($sp)
/* A0DA8 800A01A8 0C02DC04 */  jal        func_800B7010
/* A0DAC 800A01AC 01093021 */   addu      $a2, $t0, $t1
/* A0DB0 800A01B0 AFA20154 */  sw         $v0, 0x154($sp)
/* A0DB4 800A01B4 8FAA0154 */  lw         $t2, 0x154($sp)
/* A0DB8 800A01B8 11400003 */  beqz       $t2, .L800A01C8
/* A0DBC 800A01BC 00000000 */   nop
/* A0DC0 800A01C0 10000005 */  b          .L800A01D8
/* A0DC4 800A01C4 8FA20154 */   lw        $v0, 0x154($sp)
.L800A01C8:
/* A0DC8 800A01C8 10000003 */  b          .L800A01D8
/* A0DCC 800A01CC 00001025 */   or        $v0, $zero, $zero
/* A0DD0 800A01D0 10000001 */  b          .L800A01D8
/* A0DD4 800A01D4 00000000 */   nop
.L800A01D8:
/* A0DD8 800A01D8 8FBF001C */  lw         $ra, 0x1c($sp)
/* A0DDC 800A01DC 27BD0158 */  addiu      $sp, $sp, 0x158
/* A0DE0 800A01E0 03E00008 */  jr         $ra
/* A0DE4 800A01E4 00000000 */   nop
/* A0DE8 800A01E8 00000000 */  nop
/* A0DEC 800A01EC 00000000 */  nop

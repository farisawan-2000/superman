.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AFCC0
/* B08C0 800AFCC0 27BDFEA0 */  addiu      $sp, $sp, -0x160
/* B08C4 800AFCC4 AFBF0024 */  sw         $ra, 0x24($sp)
/* B08C8 800AFCC8 AFA40160 */  sw         $a0, 0x160($sp)
/* B08CC 800AFCCC AFA50164 */  sw         $a1, 0x164($sp)
/* B08D0 800AFCD0 AFA60168 */  sw         $a2, 0x168($sp)
/* B08D4 800AFCD4 AFA7016C */  sw         $a3, 0x16c($sp)
/* B08D8 800AFCD8 A7A00032 */  sh         $zero, 0x32($sp)
/* B08DC 800AFCDC 97AE0166 */  lhu        $t6, 0x166($sp)
/* B08E0 800AFCE0 11C00004 */  beqz       $t6, .L800AFCF4
/* B08E4 800AFCE4 00000000 */   nop
/* B08E8 800AFCE8 8FAF0168 */  lw         $t7, 0x168($sp)
/* B08EC 800AFCEC 15E00003 */  bnez       $t7, .L800AFCFC
/* B08F0 800AFCF0 00000000 */   nop
.L800AFCF4:
/* B08F4 800AFCF4 100000AD */  b          .L800AFFAC
/* B08F8 800AFCF8 24020005 */   addiu     $v0, $zero, 5
.L800AFCFC:
/* B08FC 800AFCFC 8FB80160 */  lw         $t8, 0x160($sp)
/* B0900 800AFD00 8F190000 */  lw         $t9, ($t8)
/* B0904 800AFD04 33280001 */  andi       $t0, $t9, 1
/* B0908 800AFD08 15000003 */  bnez       $t0, .L800AFD18
/* B090C 800AFD0C 00000000 */   nop
/* B0910 800AFD10 100000A6 */  b          .L800AFFAC
/* B0914 800AFD14 24020005 */   addiu     $v0, $zero, 5
.L800AFD18:
/* B0918 800AFD18 0C0290BF */  jal        func_800A42FC
/* B091C 800AFD1C 8FA40160 */   lw        $a0, 0x160($sp)
/* B0920 800AFD20 24010002 */  addiu      $at, $zero, 2
/* B0924 800AFD24 14410003 */  bne        $v0, $at, .L800AFD34
/* B0928 800AFD28 00000000 */   nop
/* B092C 800AFD2C 1000009F */  b          .L800AFFAC
/* B0930 800AFD30 24020002 */   addiu     $v0, $zero, 2
.L800AFD34:
/* B0934 800AFD34 8FA90160 */  lw         $t1, 0x160($sp)
/* B0938 800AFD38 912A0065 */  lbu        $t2, 0x65($t1)
/* B093C 800AFD3C 1140000B */  beqz       $t2, .L800AFD6C
/* B0940 800AFD40 00000000 */   nop
/* B0944 800AFD44 8FAB0160 */  lw         $t3, 0x160($sp)
/* B0948 800AFD48 A1600065 */  sb         $zero, 0x65($t3)
/* B094C 800AFD4C 0C0291D5 */  jal        func_800A4754
/* B0950 800AFD50 8FA40160 */   lw        $a0, 0x160($sp)
/* B0954 800AFD54 AFA20154 */  sw         $v0, 0x154($sp)
/* B0958 800AFD58 8FAC0154 */  lw         $t4, 0x154($sp)
/* B095C 800AFD5C 11800003 */  beqz       $t4, .L800AFD6C
/* B0960 800AFD60 00000000 */   nop
/* B0964 800AFD64 10000091 */  b          .L800AFFAC
/* B0968 800AFD68 8FA20154 */   lw        $v0, 0x154($sp)
.L800AFD6C:
/* B096C 800AFD6C 8FAD0170 */  lw         $t5, 0x170($sp)
/* B0970 800AFD70 27AE015C */  addiu      $t6, $sp, 0x15c
/* B0974 800AFD74 AFAE0014 */  sw         $t6, 0x14($sp)
/* B0978 800AFD78 8FA40160 */  lw         $a0, 0x160($sp)
/* B097C 800AFD7C 97A50166 */  lhu        $a1, 0x166($sp)
/* B0980 800AFD80 8FA60168 */  lw         $a2, 0x168($sp)
/* B0984 800AFD84 8FA7016C */  lw         $a3, 0x16c($sp)
/* B0988 800AFD88 0C02A524 */  jal        func_800A9490
/* B098C 800AFD8C AFAD0010 */   sw        $t5, 0x10($sp)
/* B0990 800AFD90 AFA20154 */  sw         $v0, 0x154($sp)
/* B0994 800AFD94 8FAF0154 */  lw         $t7, 0x154($sp)
/* B0998 800AFD98 11E00003 */  beqz       $t7, .L800AFDA8
/* B099C 800AFD9C 00000000 */   nop
/* B09A0 800AFDA0 10000082 */  b          .L800AFFAC
/* B09A4 800AFDA4 8FA20154 */   lw        $v0, 0x154($sp)
.L800AFDA8:
/* B09A8 800AFDA8 8FB8015C */  lw         $t8, 0x15c($sp)
/* B09AC 800AFDAC 2401FFFF */  addiu      $at, $zero, -1
/* B09B0 800AFDB0 17010003 */  bne        $t8, $at, .L800AFDC0
/* B09B4 800AFDB4 00000000 */   nop
/* B09B8 800AFDB8 1000007C */  b          .L800AFFAC
/* B09BC 800AFDBC 24020005 */   addiu     $v0, $zero, 5
.L800AFDC0:
/* B09C0 800AFDC0 8FB90160 */  lw         $t9, 0x160($sp)
/* B09C4 800AFDC4 8FA9015C */  lw         $t1, 0x15c($sp)
/* B09C8 800AFDC8 27A70034 */  addiu      $a3, $sp, 0x34
/* B09CC 800AFDCC 8F28005C */  lw         $t0, 0x5c($t9)
/* B09D0 800AFDD0 8F240004 */  lw         $a0, 4($t9)
/* B09D4 800AFDD4 8F250008 */  lw         $a1, 8($t9)
/* B09D8 800AFDD8 0C02E3D8 */  jal        func_800B8F60
/* B09DC 800AFDDC 01093021 */   addu      $a2, $t0, $t1
/* B09E0 800AFDE0 AFA20154 */  sw         $v0, 0x154($sp)
/* B09E4 800AFDE4 8FAA0154 */  lw         $t2, 0x154($sp)
/* B09E8 800AFDE8 11400003 */  beqz       $t2, .L800AFDF8
/* B09EC 800AFDEC 00000000 */   nop
/* B09F0 800AFDF0 1000006E */  b          .L800AFFAC
/* B09F4 800AFDF4 8FA20154 */   lw        $v0, 0x154($sp)
.L800AFDF8:
/* B09F8 800AFDF8 93AB003B */  lbu        $t3, 0x3b($sp)
/* B09FC 800AFDFC A3AB002F */  sb         $t3, 0x2f($sp)
/* B0A00 800AFE00 93AC003A */  lbu        $t4, 0x3a($sp)
/* B0A04 800AFE04 8FAD0160 */  lw         $t5, 0x160($sp)
/* B0A08 800AFE08 A3AC002E */  sb         $t4, 0x2e($sp)
/* B0A0C 800AFE0C 91AE0064 */  lbu        $t6, 0x64($t5)
/* B0A10 800AFE10 018E082A */  slt        $at, $t4, $t6
/* B0A14 800AFE14 10200038 */  beqz       $at, .L800AFEF8
/* B0A18 800AFE18 00000000 */   nop
.L800AFE1C:
/* B0A1C 800AFE1C 8FA40160 */  lw         $a0, 0x160($sp)
/* B0A20 800AFE20 27A50054 */  addiu      $a1, $sp, 0x54
/* B0A24 800AFE24 00003025 */  or         $a2, $zero, $zero
/* B0A28 800AFE28 0C029104 */  jal        func_800A4410
/* B0A2C 800AFE2C 93A7002E */   lbu       $a3, 0x2e($sp)
/* B0A30 800AFE30 AFA20154 */  sw         $v0, 0x154($sp)
/* B0A34 800AFE34 8FAF0154 */  lw         $t7, 0x154($sp)
/* B0A38 800AFE38 11E00003 */  beqz       $t7, .L800AFE48
/* B0A3C 800AFE3C 00000000 */   nop
/* B0A40 800AFE40 1000005A */  b          .L800AFFAC
/* B0A44 800AFE44 8FA20154 */   lw        $v0, 0x154($sp)
.L800AFE48:
/* B0A48 800AFE48 93B8002E */  lbu        $t8, 0x2e($sp)
/* B0A4C 800AFE4C 27B90030 */  addiu      $t9, $sp, 0x30
/* B0A50 800AFE50 24080001 */  addiu      $t0, $zero, 1
/* B0A54 800AFE54 AFA80018 */  sw         $t0, 0x18($sp)
/* B0A58 800AFE58 AFB90014 */  sw         $t9, 0x14($sp)
/* B0A5C 800AFE5C 8FA40160 */  lw         $a0, 0x160($sp)
/* B0A60 800AFE60 27A50054 */  addiu      $a1, $sp, 0x54
/* B0A64 800AFE64 93A6002F */  lbu        $a2, 0x2f($sp)
/* B0A68 800AFE68 27A70032 */  addiu      $a3, $sp, 0x32
/* B0A6C 800AFE6C 0C02BFEF */  jal        func_800AFFBC
/* B0A70 800AFE70 AFB80010 */   sw        $t8, 0x10($sp)
/* B0A74 800AFE74 AFA20154 */  sw         $v0, 0x154($sp)
/* B0A78 800AFE78 8FA90154 */  lw         $t1, 0x154($sp)
/* B0A7C 800AFE7C 11200003 */  beqz       $t1, .L800AFE8C
/* B0A80 800AFE80 00000000 */   nop
/* B0A84 800AFE84 10000049 */  b          .L800AFFAC
/* B0A88 800AFE88 8FA20154 */   lw        $v0, 0x154($sp)
.L800AFE8C:
/* B0A8C 800AFE8C 8FA40160 */  lw         $a0, 0x160($sp)
/* B0A90 800AFE90 27A50054 */  addiu      $a1, $sp, 0x54
/* B0A94 800AFE94 24060001 */  addiu      $a2, $zero, 1
/* B0A98 800AFE98 0C029104 */  jal        func_800A4410
/* B0A9C 800AFE9C 93A7002E */   lbu       $a3, 0x2e($sp)
/* B0AA0 800AFEA0 AFA20154 */  sw         $v0, 0x154($sp)
/* B0AA4 800AFEA4 8FAA0154 */  lw         $t2, 0x154($sp)
/* B0AA8 800AFEA8 11400003 */  beqz       $t2, .L800AFEB8
/* B0AAC 800AFEAC 00000000 */   nop
/* B0AB0 800AFEB0 1000003E */  b          .L800AFFAC
/* B0AB4 800AFEB4 8FA20154 */   lw        $v0, 0x154($sp)
.L800AFEB8:
/* B0AB8 800AFEB8 97AB0030 */  lhu        $t3, 0x30($sp)
/* B0ABC 800AFEBC 24010001 */  addiu      $at, $zero, 1
/* B0AC0 800AFEC0 15610003 */  bne        $t3, $at, .L800AFED0
/* B0AC4 800AFEC4 00000000 */   nop
/* B0AC8 800AFEC8 1000000B */  b          .L800AFEF8
/* B0ACC 800AFECC 00000000 */   nop
.L800AFED0:
/* B0AD0 800AFED0 93AD0030 */  lbu        $t5, 0x30($sp)
/* B0AD4 800AFED4 A3AD002E */  sb         $t5, 0x2e($sp)
/* B0AD8 800AFED8 93AC0031 */  lbu        $t4, 0x31($sp)
/* B0ADC 800AFEDC A3AC002F */  sb         $t4, 0x2f($sp)
/* B0AE0 800AFEE0 8FAF0160 */  lw         $t7, 0x160($sp)
/* B0AE4 800AFEE4 93AE002E */  lbu        $t6, 0x2e($sp)
/* B0AE8 800AFEE8 91F80064 */  lbu        $t8, 0x64($t7)
/* B0AEC 800AFEEC 01D8082A */  slt        $at, $t6, $t8
/* B0AF0 800AFEF0 1420FFCA */  bnez       $at, .L800AFE1C
/* B0AF4 800AFEF4 00000000 */   nop
.L800AFEF8:
/* B0AF8 800AFEF8 8FA80160 */  lw         $t0, 0x160($sp)
/* B0AFC 800AFEFC 93B9002E */  lbu        $t9, 0x2e($sp)
/* B0B00 800AFF00 91090064 */  lbu        $t1, 0x64($t0)
/* B0B04 800AFF04 0329082A */  slt        $at, $t9, $t1
/* B0B08 800AFF08 14200003 */  bnez       $at, .L800AFF18
/* B0B0C 800AFF0C 00000000 */   nop
/* B0B10 800AFF10 10000026 */  b          .L800AFFAC
/* B0B14 800AFF14 24020003 */   addiu     $v0, $zero, 3
.L800AFF18:
/* B0B18 800AFF18 AFA00034 */  sw         $zero, 0x34($sp)
/* B0B1C 800AFF1C A7A00038 */  sh         $zero, 0x38($sp)
/* B0B20 800AFF20 A7A0003A */  sh         $zero, 0x3a($sp)
/* B0B24 800AFF24 A7A0003E */  sh         $zero, 0x3e($sp)
/* B0B28 800AFF28 AFA00158 */  sw         $zero, 0x158($sp)
.L800AFF2C:
/* B0B2C 800AFF2C 8FAA0158 */  lw         $t2, 0x158($sp)
/* B0B30 800AFF30 03AA5821 */  addu       $t3, $sp, $t2
/* B0B34 800AFF34 A1600044 */  sb         $zero, 0x44($t3)
/* B0B38 800AFF38 8FAD0158 */  lw         $t5, 0x158($sp)
/* B0B3C 800AFF3C 25AC0001 */  addiu      $t4, $t5, 1
/* B0B40 800AFF40 29810010 */  slti       $at, $t4, 0x10
/* B0B44 800AFF44 1420FFF9 */  bnez       $at, .L800AFF2C
/* B0B48 800AFF48 AFAC0158 */   sw        $t4, 0x158($sp)
/* B0B4C 800AFF4C AFA00158 */  sw         $zero, 0x158($sp)
.L800AFF50:
/* B0B50 800AFF50 8FAF0158 */  lw         $t7, 0x158($sp)
/* B0B54 800AFF54 03AF7021 */  addu       $t6, $sp, $t7
/* B0B58 800AFF58 A1C00040 */  sb         $zero, 0x40($t6)
/* B0B5C 800AFF5C 8FB80158 */  lw         $t8, 0x158($sp)
/* B0B60 800AFF60 27080001 */  addiu      $t0, $t8, 1
/* B0B64 800AFF64 29010004 */  slti       $at, $t0, 4
/* B0B68 800AFF68 1420FFF9 */  bnez       $at, .L800AFF50
/* B0B6C 800AFF6C AFA80158 */   sw        $t0, 0x158($sp)
/* B0B70 800AFF70 A3A0003C */  sb         $zero, 0x3c($sp)
/* B0B74 800AFF74 8FB90160 */  lw         $t9, 0x160($sp)
/* B0B78 800AFF78 8FAA015C */  lw         $t2, 0x15c($sp)
/* B0B7C 800AFF7C 27A70034 */  addiu      $a3, $sp, 0x34
/* B0B80 800AFF80 8F29005C */  lw         $t1, 0x5c($t9)
/* B0B84 800AFF84 8F240004 */  lw         $a0, 4($t9)
/* B0B88 800AFF88 8F250008 */  lw         $a1, 8($t9)
/* B0B8C 800AFF8C AFA00010 */  sw         $zero, 0x10($sp)
/* B0B90 800AFF90 0C02DC04 */  jal        func_800B7010
/* B0B94 800AFF94 012A3021 */   addu      $a2, $t1, $t2
/* B0B98 800AFF98 AFA20154 */  sw         $v0, 0x154($sp)
/* B0B9C 800AFF9C 10000003 */  b          .L800AFFAC
/* B0BA0 800AFFA0 8FA20154 */   lw        $v0, 0x154($sp)
/* B0BA4 800AFFA4 10000001 */  b          .L800AFFAC
/* B0BA8 800AFFA8 00000000 */   nop
.L800AFFAC:
/* B0BAC 800AFFAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* B0BB0 800AFFB0 27BD0160 */  addiu      $sp, $sp, 0x160
/* B0BB4 800AFFB4 03E00008 */  jr         $ra
/* B0BB8 800AFFB8 00000000 */   nop

glabel func_800AFFBC
/* B0BBC 800AFFBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B0BC0 800AFFC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* B0BC4 800AFFC4 AFA40028 */  sw         $a0, 0x28($sp)
/* B0BC8 800AFFC8 AFA5002C */  sw         $a1, 0x2c($sp)
/* B0BCC 800AFFCC AFA60030 */  sw         $a2, 0x30($sp)
/* B0BD0 800AFFD0 AFA70034 */  sw         $a3, 0x34($sp)
/* B0BD4 800AFFD4 AFA0001C */  sw         $zero, 0x1c($sp)
/* B0BD8 800AFFD8 93B80033 */  lbu        $t8, 0x33($sp)
/* B0BDC 800AFFDC 8FAF002C */  lw         $t7, 0x2c($sp)
/* B0BE0 800AFFE0 27AE0024 */  addiu      $t6, $sp, 0x24
/* B0BE4 800AFFE4 0018C840 */  sll        $t9, $t8, 1
/* B0BE8 800AFFE8 01F94021 */  addu       $t0, $t7, $t9
/* B0BEC 800AFFEC 95010000 */  lhu        $at, ($t0)
/* B0BF0 800AFFF0 A5C10000 */  sh         $at, ($t6)
/* B0BF4 800AFFF4 97AC0024 */  lhu        $t4, 0x24($sp)
/* B0BF8 800AFFF8 24010001 */  addiu      $at, $zero, 1
/* B0BFC 800AFFFC 1181000C */  beq        $t4, $at, .L800B0030
/* B0C00 800B0000 00000000 */   nop
/* B0C04 800B0004 93AD0024 */  lbu        $t5, 0x24($sp)
/* B0C08 800B0008 19A00004 */  blez       $t5, .L800B001C
/* B0C0C 800B000C 00000000 */   nop
/* B0C10 800B0010 24180001 */  addiu      $t8, $zero, 1
/* B0C14 800B0014 10000004 */  b          .L800B0028
/* B0C18 800B0018 AFB80018 */   sw        $t8, 0x18($sp)
.L800B001C:
/* B0C1C 800B001C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B0C20 800B0020 8DF90060 */  lw         $t9, 0x60($t7)
/* B0C24 800B0024 AFB90018 */  sw         $t9, 0x18($sp)
.L800B0028:
/* B0C28 800B0028 1000000A */  b          .L800B0054
/* B0C2C 800B002C 00000000 */   nop
.L800B0030:
/* B0C30 800B0030 93AA003B */  lbu        $t2, 0x3b($sp)
/* B0C34 800B0034 19400004 */  blez       $t2, .L800B0048
/* B0C38 800B0038 00000000 */   nop
/* B0C3C 800B003C 24090001 */  addiu      $t1, $zero, 1
/* B0C40 800B0040 10000004 */  b          .L800B0054
/* B0C44 800B0044 AFA90018 */   sw        $t1, 0x18($sp)
.L800B0048:
/* B0C48 800B0048 8FAE0028 */  lw         $t6, 0x28($sp)
/* B0C4C 800B004C 8DC80060 */  lw         $t0, 0x60($t6)
/* B0C50 800B0050 AFA80018 */  sw         $t0, 0x18($sp)
.L800B0054:
/* B0C54 800B0054 93AB0025 */  lbu        $t3, 0x25($sp)
/* B0C58 800B0058 8FAC0018 */  lw         $t4, 0x18($sp)
/* B0C5C 800B005C 016C082A */  slt        $at, $t3, $t4
/* B0C60 800B0060 10200007 */  beqz       $at, .L800B0080
/* B0C64 800B0064 00000000 */   nop
/* B0C68 800B0068 97AD0024 */  lhu        $t5, 0x24($sp)
/* B0C6C 800B006C 24010001 */  addiu      $at, $zero, 1
/* B0C70 800B0070 11A10003 */  beq        $t5, $at, .L800B0080
/* B0C74 800B0074 00000000 */   nop
/* B0C78 800B0078 10000064 */  b          .L800B020C
/* B0C7C 800B007C 24020003 */   addiu     $v0, $zero, 3
.L800B0080:
/* B0C80 800B0080 27AF0024 */  addiu      $t7, $sp, 0x24
/* B0C84 800B0084 95E10000 */  lhu        $at, ($t7)
/* B0C88 800B0088 8FB8003C */  lw         $t8, 0x3c($sp)
/* B0C8C 800B008C A7010000 */  sh         $at, ($t8)
/* B0C90 800B0090 8FA90040 */  lw         $t1, 0x40($sp)
/* B0C94 800B0094 24010001 */  addiu      $at, $zero, 1
/* B0C98 800B0098 15210007 */  bne        $t1, $at, .L800B00B8
/* B0C9C 800B009C 00000000 */   nop
/* B0CA0 800B00A0 93AB0033 */  lbu        $t3, 0x33($sp)
/* B0CA4 800B00A4 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0CA8 800B00A8 240E0003 */  addiu      $t6, $zero, 3
/* B0CAC 800B00AC 000B6040 */  sll        $t4, $t3, 1
/* B0CB0 800B00B0 010C6821 */  addu       $t5, $t0, $t4
/* B0CB4 800B00B4 A5AE0000 */  sh         $t6, ($t5)
.L800B00B8:
/* B0CB8 800B00B8 8FA40028 */  lw         $a0, 0x28($sp)
/* B0CBC 800B00BC 93A50033 */  lbu        $a1, 0x33($sp)
/* B0CC0 800B00C0 8FA60034 */  lw         $a2, 0x34($sp)
/* B0CC4 800B00C4 0C02C087 */  jal        func_800B021C
/* B0CC8 800B00C8 93A7003B */   lbu       $a3, 0x3b($sp)
/* B0CCC 800B00CC AFA2001C */  sw         $v0, 0x1c($sp)
/* B0CD0 800B00D0 8FB9001C */  lw         $t9, 0x1c($sp)
/* B0CD4 800B00D4 13200003 */  beqz       $t9, .L800B00E4
/* B0CD8 800B00D8 00000000 */   nop
/* B0CDC 800B00DC 1000004B */  b          .L800B020C
/* B0CE0 800B00E0 8FA2001C */   lw        $v0, 0x1c($sp)
.L800B00E4:
/* B0CE4 800B00E4 97B80024 */  lhu        $t8, 0x24($sp)
/* B0CE8 800B00E8 24010001 */  addiu      $at, $zero, 1
/* B0CEC 800B00EC 17010003 */  bne        $t8, $at, .L800B00FC
/* B0CF0 800B00F0 00000000 */   nop
/* B0CF4 800B00F4 10000045 */  b          .L800B020C
/* B0CF8 800B00F8 00001025 */   or        $v0, $zero, $zero
.L800B00FC:
/* B0CFC 800B00FC 8FAA0028 */  lw         $t2, 0x28($sp)
/* B0D00 800B0100 97AF0024 */  lhu        $t7, 0x24($sp)
/* B0D04 800B0104 8D490060 */  lw         $t1, 0x60($t2)
/* B0D08 800B0108 01E9082A */  slt        $at, $t7, $t1
/* B0D0C 800B010C 14200027 */  bnez       $at, .L800B01AC
/* B0D10 800B0110 00000000 */   nop
.L800B0114:
/* B0D14 800B0114 97AB0024 */  lhu        $t3, 0x24($sp)
/* B0D18 800B0118 A7AB0020 */  sh         $t3, 0x20($sp)
/* B0D1C 800B011C 93AE0025 */  lbu        $t6, 0x25($sp)
/* B0D20 800B0120 8FAC002C */  lw         $t4, 0x2c($sp)
/* B0D24 800B0124 27A80024 */  addiu      $t0, $sp, 0x24
/* B0D28 800B0128 000E6840 */  sll        $t5, $t6, 1
/* B0D2C 800B012C 018DC821 */  addu       $t9, $t4, $t5
/* B0D30 800B0130 97210000 */  lhu        $at, ($t9)
/* B0D34 800B0134 A5010000 */  sh         $at, ($t0)
/* B0D38 800B0138 93AB0021 */  lbu        $t3, 0x21($sp)
/* B0D3C 800B013C 8FA9002C */  lw         $t1, 0x2c($sp)
/* B0D40 800B0140 240F0003 */  addiu      $t7, $zero, 3
/* B0D44 800B0144 000B7040 */  sll        $t6, $t3, 1
/* B0D48 800B0148 012E6021 */  addu       $t4, $t1, $t6
/* B0D4C 800B014C A58F0000 */  sh         $t7, ($t4)
/* B0D50 800B0150 8FA40028 */  lw         $a0, 0x28($sp)
/* B0D54 800B0154 93A50021 */  lbu        $a1, 0x21($sp)
/* B0D58 800B0158 8FA60034 */  lw         $a2, 0x34($sp)
/* B0D5C 800B015C 0C02C087 */  jal        func_800B021C
/* B0D60 800B0160 93A7003B */   lbu       $a3, 0x3b($sp)
/* B0D64 800B0164 AFA2001C */  sw         $v0, 0x1c($sp)
/* B0D68 800B0168 8FAD001C */  lw         $t5, 0x1c($sp)
/* B0D6C 800B016C 11A00003 */  beqz       $t5, .L800B017C
/* B0D70 800B0170 00000000 */   nop
/* B0D74 800B0174 10000025 */  b          .L800B020C
/* B0D78 800B0178 8FA2001C */   lw        $v0, 0x1c($sp)
.L800B017C:
/* B0D7C 800B017C 93B80024 */  lbu        $t8, 0x24($sp)
/* B0D80 800B0180 93A8003B */  lbu        $t0, 0x3b($sp)
/* B0D84 800B0184 13080003 */  beq        $t8, $t0, .L800B0194
/* B0D88 800B0188 00000000 */   nop
/* B0D8C 800B018C 10000007 */  b          .L800B01AC
/* B0D90 800B0190 00000000 */   nop
.L800B0194:
/* B0D94 800B0194 8FAA0028 */  lw         $t2, 0x28($sp)
/* B0D98 800B0198 97B90024 */  lhu        $t9, 0x24($sp)
/* B0D9C 800B019C 8D4B0060 */  lw         $t3, 0x60($t2)
/* B0DA0 800B01A0 032B082A */  slt        $at, $t9, $t3
/* B0DA4 800B01A4 1020FFDB */  beqz       $at, .L800B0114
/* B0DA8 800B01A8 00000000 */   nop
.L800B01AC:
/* B0DAC 800B01AC 8FAE0028 */  lw         $t6, 0x28($sp)
/* B0DB0 800B01B0 97A90024 */  lhu        $t1, 0x24($sp)
/* B0DB4 800B01B4 8DCF0060 */  lw         $t7, 0x60($t6)
/* B0DB8 800B01B8 012F082A */  slt        $at, $t1, $t7
/* B0DBC 800B01BC 1420000B */  bnez       $at, .L800B01EC
/* B0DC0 800B01C0 00000000 */   nop
/* B0DC4 800B01C4 93AC0024 */  lbu        $t4, 0x24($sp)
/* B0DC8 800B01C8 93AD003B */  lbu        $t5, 0x3b($sp)
/* B0DCC 800B01CC 158D0007 */  bne        $t4, $t5, .L800B01EC
/* B0DD0 800B01D0 00000000 */   nop
/* B0DD4 800B01D4 93AA0025 */  lbu        $t2, 0x25($sp)
/* B0DD8 800B01D8 8FA8002C */  lw         $t0, 0x2c($sp)
/* B0DDC 800B01DC 24180003 */  addiu      $t8, $zero, 3
/* B0DE0 800B01E0 000AC840 */  sll        $t9, $t2, 1
/* B0DE4 800B01E4 01195821 */  addu       $t3, $t0, $t9
/* B0DE8 800B01E8 A5780000 */  sh         $t8, ($t3)
.L800B01EC:
/* B0DEC 800B01EC 27A90024 */  addiu      $t1, $sp, 0x24
/* B0DF0 800B01F0 95210000 */  lhu        $at, ($t1)
/* B0DF4 800B01F4 8FAE003C */  lw         $t6, 0x3c($sp)
/* B0DF8 800B01F8 A5C10000 */  sh         $at, ($t6)
/* B0DFC 800B01FC 10000003 */  b          .L800B020C
/* B0E00 800B0200 00001025 */   or        $v0, $zero, $zero
/* B0E04 800B0204 10000001 */  b          .L800B020C
/* B0E08 800B0208 00000000 */   nop
.L800B020C:
/* B0E0C 800B020C 8FBF0014 */  lw         $ra, 0x14($sp)
/* B0E10 800B0210 27BD0028 */  addiu      $sp, $sp, 0x28
/* B0E14 800B0214 03E00008 */  jr         $ra
/* B0E18 800B0218 00000000 */   nop

glabel func_800B021C
/* B0E1C 800B021C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B0E20 800B0220 AFBF0014 */  sw         $ra, 0x14($sp)
/* B0E24 800B0224 AFA40040 */  sw         $a0, 0x40($sp)
/* B0E28 800B0228 AFA50044 */  sw         $a1, 0x44($sp)
/* B0E2C 800B022C AFA60048 */  sw         $a2, 0x48($sp)
/* B0E30 800B0230 AFA7004C */  sw         $a3, 0x4c($sp)
/* B0E34 800B0234 AFA00038 */  sw         $zero, 0x38($sp)
/* B0E38 800B0238 93AE004F */  lbu        $t6, 0x4f($sp)
/* B0E3C 800B023C 8FAF0040 */  lw         $t7, 0x40($sp)
/* B0E40 800B0240 A1EE0065 */  sb         $t6, 0x65($t7)
/* B0E44 800B0244 0C0291D5 */  jal        func_800A4754
/* B0E48 800B0248 8FA40040 */   lw        $a0, 0x40($sp)
/* B0E4C 800B024C AFA20038 */  sw         $v0, 0x38($sp)
/* B0E50 800B0250 8FB80038 */  lw         $t8, 0x38($sp)
/* B0E54 800B0254 13000003 */  beqz       $t8, .L800B0264
/* B0E58 800B0258 00000000 */   nop
/* B0E5C 800B025C 1000002A */  b          .L800B0308
/* B0E60 800B0260 8FA20038 */   lw        $v0, 0x38($sp)
.L800B0264:
/* B0E64 800B0264 AFA0003C */  sw         $zero, 0x3c($sp)
.L800B0268:
/* B0E68 800B0268 93A80047 */  lbu        $t0, 0x47($sp)
/* B0E6C 800B026C 8FB90040 */  lw         $t9, 0x40($sp)
/* B0E70 800B0270 8FAA003C */  lw         $t2, 0x3c($sp)
/* B0E74 800B0274 000848C0 */  sll        $t1, $t0, 3
/* B0E78 800B0278 27A70018 */  addiu      $a3, $sp, 0x18
/* B0E7C 800B027C 8F240004 */  lw         $a0, 4($t9)
/* B0E80 800B0280 8F250008 */  lw         $a1, 8($t9)
/* B0E84 800B0284 0C02E3D8 */  jal        func_800B8F60
/* B0E88 800B0288 012A3021 */   addu      $a2, $t1, $t2
/* B0E8C 800B028C AFA20038 */  sw         $v0, 0x38($sp)
/* B0E90 800B0290 8FAB0038 */  lw         $t3, 0x38($sp)
/* B0E94 800B0294 11600007 */  beqz       $t3, .L800B02B4
/* B0E98 800B0298 00000000 */   nop
/* B0E9C 800B029C 8FAC0040 */  lw         $t4, 0x40($sp)
/* B0EA0 800B02A0 A1800065 */  sb         $zero, 0x65($t4)
/* B0EA4 800B02A4 0C0291D5 */  jal        func_800A4754
/* B0EA8 800B02A8 8FA40040 */   lw        $a0, 0x40($sp)
/* B0EAC 800B02AC 10000016 */  b          .L800B0308
/* B0EB0 800B02B0 8FA20038 */   lw        $v0, 0x38($sp)
.L800B02B4:
/* B0EB4 800B02B4 27A40018 */  addiu      $a0, $sp, 0x18
/* B0EB8 800B02B8 0C028E6C */  jal        func_800A39B0
/* B0EBC 800B02BC 24050020 */   addiu     $a1, $zero, 0x20
/* B0EC0 800B02C0 8FAD0048 */  lw         $t5, 0x48($sp)
/* B0EC4 800B02C4 95AE0000 */  lhu        $t6, ($t5)
/* B0EC8 800B02C8 004E7821 */  addu       $t7, $v0, $t6
/* B0ECC 800B02CC A5AF0000 */  sh         $t7, ($t5)
/* B0ED0 800B02D0 8FB8003C */  lw         $t8, 0x3c($sp)
/* B0ED4 800B02D4 27190001 */  addiu      $t9, $t8, 1
/* B0ED8 800B02D8 2B210008 */  slti       $at, $t9, 8
/* B0EDC 800B02DC 1420FFE2 */  bnez       $at, .L800B0268
/* B0EE0 800B02E0 AFB9003C */   sw        $t9, 0x3c($sp)
/* B0EE4 800B02E4 8FA80040 */  lw         $t0, 0x40($sp)
/* B0EE8 800B02E8 A1000065 */  sb         $zero, 0x65($t0)
/* B0EEC 800B02EC 0C0291D5 */  jal        func_800A4754
/* B0EF0 800B02F0 8FA40040 */   lw        $a0, 0x40($sp)
/* B0EF4 800B02F4 AFA20038 */  sw         $v0, 0x38($sp)
/* B0EF8 800B02F8 10000003 */  b          .L800B0308
/* B0EFC 800B02FC 8FA20038 */   lw        $v0, 0x38($sp)
/* B0F00 800B0300 10000001 */  b          .L800B0308
/* B0F04 800B0304 00000000 */   nop
.L800B0308:
/* B0F08 800B0308 8FBF0014 */  lw         $ra, 0x14($sp)
/* B0F0C 800B030C 27BD0040 */  addiu      $sp, $sp, 0x40
/* B0F10 800B0310 03E00008 */  jr         $ra
/* B0F14 800B0314 00000000 */   nop
/* B0F18 800B0318 00000000 */  nop
/* B0F1C 800B031C 00000000 */  nop

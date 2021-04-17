.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009ACE0
/* 9B8E0 8009ACE0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9B8E4 8009ACE4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9B8E8 8009ACE8 AFA40040 */  sw         $a0, 0x40($sp)
/* 9B8EC 8009ACEC AFA50044 */  sw         $a1, 0x44($sp)
/* 9B8F0 8009ACF0 8FAE0044 */  lw         $t6, 0x44($sp)
/* 9B8F4 8009ACF4 8FB80040 */  lw         $t8, 0x40($sp)
/* 9B8F8 8009ACF8 8DCF0000 */  lw         $t7, ($t6)
/* 9B8FC 8009ACFC AF0F0044 */  sw         $t7, 0x44($t8)
/* 9B900 8009AD00 8FA80040 */  lw         $t0, 0x40($sp)
/* 9B904 8009AD04 2419FFFF */  addiu      $t9, $zero, -1
/* 9B908 8009AD08 AD19003C */  sw         $t9, 0x3c($t0)
/* 9B90C 8009AD0C 8FAA0040 */  lw         $t2, 0x40($sp)
/* 9B910 8009AD10 24093E80 */  addiu      $t1, $zero, 0x3e80
/* 9B914 8009AD14 AD490048 */  sw         $t1, 0x48($t2)
/* 9B918 8009AD18 8FAB0044 */  lw         $t3, 0x44($sp)
/* 9B91C 8009AD1C 3C04800D */  lui        $a0, %hi(D_800D28B0)
/* 9B920 8009AD20 248428B0 */  addiu      $a0, $a0, %lo(D_800D28B0)
/* 9B924 8009AD24 8D6C0000 */  lw         $t4, ($t3)
/* 9B928 8009AD28 8D660008 */  lw         $a2, 8($t3)
/* 9B92C 8009AD2C 24050029 */  addiu      $a1, $zero, 0x29
/* 9B930 8009AD30 000C6880 */  sll        $t5, $t4, 2
/* 9B934 8009AD34 01AC6823 */  subu       $t5, $t5, $t4
/* 9B938 8009AD38 000D6900 */  sll        $t5, $t5, 4
/* 9B93C 8009AD3C AFAD0010 */  sw         $t5, 0x10($sp)
/* 9B940 8009AD40 0C02E384 */  jal        func_800B8E10
/* 9B944 8009AD44 24070001 */   addiu     $a3, $zero, 1
/* 9B948 8009AD48 AFA20028 */  sw         $v0, 0x28($sp)
/* 9B94C 8009AD4C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9B950 8009AD50 8FAF0040 */  lw         $t7, 0x40($sp)
/* 9B954 8009AD54 ADEE0040 */  sw         $t6, 0x40($t7)
/* 9B958 8009AD58 8FB80044 */  lw         $t8, 0x44($sp)
/* 9B95C 8009AD5C AFA00024 */  sw         $zero, 0x24($sp)
/* 9B960 8009AD60 8F190000 */  lw         $t9, ($t8)
/* 9B964 8009AD64 13200010 */  beqz       $t9, .L8009ADA8
/* 9B968 8009AD68 00000000 */   nop
.L8009AD6C:
/* 9B96C 8009AD6C 8FA90024 */  lw         $t1, 0x24($sp)
/* 9B970 8009AD70 8FA80028 */  lw         $t0, 0x28($sp)
/* 9B974 8009AD74 00095080 */  sll        $t2, $t1, 2
/* 9B978 8009AD78 01495023 */  subu       $t2, $t2, $t1
/* 9B97C 8009AD7C 000A5100 */  sll        $t2, $t2, 4
/* 9B980 8009AD80 010A5821 */  addu       $t3, $t0, $t2
/* 9B984 8009AD84 AD60001C */  sw         $zero, 0x1c($t3)
/* 9B988 8009AD88 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9B98C 8009AD8C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 9B990 8009AD90 258D0001 */  addiu      $t5, $t4, 1
/* 9B994 8009AD94 AFAD0024 */  sw         $t5, 0x24($sp)
/* 9B998 8009AD98 8DCF0000 */  lw         $t7, ($t6)
/* 9B99C 8009AD9C 01AF082B */  sltu       $at, $t5, $t7
/* 9B9A0 8009ADA0 1420FFF2 */  bnez       $at, .L8009AD6C
/* 9B9A4 8009ADA4 00000000 */   nop
.L8009ADA8:
/* 9B9A8 8009ADA8 8FB80044 */  lw         $t8, 0x44($sp)
/* 9B9AC 8009ADAC 3C04800D */  lui        $a0, %hi(D_800D28C8)
/* 9B9B0 8009ADB0 248428C8 */  addiu      $a0, $a0, %lo(D_800D28C8)
/* 9B9B4 8009ADB4 8F190004 */  lw         $t9, 4($t8)
/* 9B9B8 8009ADB8 8F060008 */  lw         $a2, 8($t8)
/* 9B9BC 8009ADBC 24050032 */  addiu      $a1, $zero, 0x32
/* 9B9C0 8009ADC0 001948C0 */  sll        $t1, $t9, 3
/* 9B9C4 8009ADC4 01394823 */  subu       $t1, $t1, $t9
/* 9B9C8 8009ADC8 00094880 */  sll        $t1, $t1, 2
/* 9B9CC 8009ADCC AFA90010 */  sw         $t1, 0x10($sp)
/* 9B9D0 8009ADD0 0C02E384 */  jal        func_800B8E10
/* 9B9D4 8009ADD4 24070001 */   addiu     $a3, $zero, 1
/* 9B9D8 8009ADD8 AFA2003C */  sw         $v0, 0x3c($sp)
/* 9B9DC 8009ADDC 8FA40040 */  lw         $a0, 0x40($sp)
/* 9B9E0 8009ADE0 8FA80044 */  lw         $t0, 0x44($sp)
/* 9B9E4 8009ADE4 8FA5003C */  lw         $a1, 0x3c($sp)
/* 9B9E8 8009ADE8 24840014 */  addiu      $a0, $a0, 0x14
/* 9B9EC 8009ADEC 0C026E18 */  jal        func_8009B860
/* 9B9F0 8009ADF0 8D060004 */   lw        $a2, 4($t0)
/* 9B9F4 8009ADF4 3C0A800D */  lui        $t2, %hi(D_800CC220)
/* 9B9F8 8009ADF8 8D4AC220 */  lw         $t2, %lo(D_800CC220)($t2)
/* 9B9FC 8009ADFC 8FAB0040 */  lw         $t3, 0x40($sp)
/* 9BA00 8009AE00 AD6A0038 */  sw         $t2, 0x38($t3)
/* 9BA04 8009AE04 8FAC0040 */  lw         $t4, 0x40($sp)
/* 9BA08 8009AE08 AD800000 */  sw         $zero, ($t4)
/* 9BA0C 8009AE0C 8FAD0040 */  lw         $t5, 0x40($sp)
/* 9BA10 8009AE10 3C0E800A */  lui        $t6, %hi(func_8009AE80)
/* 9BA14 8009AE14 25CEAE80 */  addiu      $t6, $t6, %lo(func_8009AE80)
/* 9BA18 8009AE18 ADAE0008 */  sw         $t6, 8($t5)
/* 9BA1C 8009AE1C 8FAF0040 */  lw         $t7, 0x40($sp)
/* 9BA20 8009AE20 ADEF0004 */  sw         $t7, 4($t7)
/* 9BA24 8009AE24 8FB80040 */  lw         $t8, 0x40($sp)
/* 9BA28 8009AE28 8F040038 */  lw         $a0, 0x38($t8)
/* 9BA2C 8009AE2C 0C02C5C0 */  jal        func_800B1700
/* 9BA30 8009AE30 03002825 */   or        $a1, $t8, $zero
/* 9BA34 8009AE34 24190005 */  addiu      $t9, $zero, 5
/* 9BA38 8009AE38 A7B9002C */  sh         $t9, 0x2c($sp)
/* 9BA3C 8009AE3C 8FA90040 */  lw         $t1, 0x40($sp)
/* 9BA40 8009AE40 27A5002C */  addiu      $a1, $sp, 0x2c
/* 9BA44 8009AE44 25240014 */  addiu      $a0, $t1, 0x14
/* 9BA48 8009AE48 0C026E68 */  jal        func_8009B9A0
/* 9BA4C 8009AE4C 8D260048 */   lw        $a2, 0x48($t1)
/* 9BA50 8009AE50 8FA80040 */  lw         $t0, 0x40($sp)
/* 9BA54 8009AE54 25040014 */  addiu      $a0, $t0, 0x14
/* 9BA58 8009AE58 0C026E3F */  jal        func_8009B8FC
/* 9BA5C 8009AE5C 25050028 */   addiu     $a1, $t0, 0x28
/* 9BA60 8009AE60 8FAA0040 */  lw         $t2, 0x40($sp)
/* 9BA64 8009AE64 AD42004C */  sw         $v0, 0x4c($t2)
/* 9BA68 8009AE68 10000001 */  b          .L8009AE70
/* 9BA6C 8009AE6C 00000000 */   nop
.L8009AE70:
/* 9BA70 8009AE70 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9BA74 8009AE74 27BD0040 */  addiu      $sp, $sp, 0x40
/* 9BA78 8009AE78 03E00008 */  jr         $ra
/* 9BA7C 8009AE7C 00000000 */   nop

glabel func_8009AE80
/* 9BA80 8009AE80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9BA84 8009AE84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9BA88 8009AE88 AFA40030 */  sw         $a0, 0x30($sp)
/* 9BA8C 8009AE8C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9BA90 8009AE90 AFAE002C */  sw         $t6, 0x2c($sp)
.L8009AE94:
/* 9BA94 8009AE94 8FAF002C */  lw         $t7, 0x2c($sp)
/* 9BA98 8009AE98 24010005 */  addiu      $at, $zero, 5
/* 9BA9C 8009AE9C 85F80028 */  lh         $t8, 0x28($t7)
/* 9BAA0 8009AEA0 1701000C */  bne        $t8, $at, .L8009AED4
/* 9BAA4 8009AEA4 00000000 */   nop
/* 9BAA8 8009AEA8 10000001 */  b          .L8009AEB0
/* 9BAAC 8009AEAC 00000000 */   nop
.L8009AEB0:
/* 9BAB0 8009AEB0 24190005 */  addiu      $t9, $zero, 5
/* 9BAB4 8009AEB4 A7B9001C */  sh         $t9, 0x1c($sp)
/* 9BAB8 8009AEB8 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9BABC 8009AEBC 27A5001C */  addiu      $a1, $sp, 0x1c
/* 9BAC0 8009AEC0 25040014 */  addiu      $a0, $t0, 0x14
/* 9BAC4 8009AEC4 0C026E68 */  jal        func_8009B9A0
/* 9BAC8 8009AEC8 8D060048 */   lw        $a2, 0x48($t0)
/* 9BACC 8009AECC 10000007 */  b          .L8009AEEC
/* 9BAD0 8009AED0 00000000 */   nop
.L8009AED4:
/* 9BAD4 8009AED4 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9BAD8 8009AED8 01202025 */  or         $a0, $t1, $zero
/* 9BADC 8009AEDC 0C026BD3 */  jal        func_8009AF4C
/* 9BAE0 8009AEE0 25250028 */   addiu     $a1, $t1, 0x28
/* 9BAE4 8009AEE4 10000001 */  b          .L8009AEEC
/* 9BAE8 8009AEE8 00000000 */   nop
.L8009AEEC:
/* 9BAEC 8009AEEC 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9BAF0 8009AEF0 25440014 */  addiu      $a0, $t2, 0x14
/* 9BAF4 8009AEF4 0C026E3F */  jal        func_8009B8FC
/* 9BAF8 8009AEF8 25450028 */   addiu     $a1, $t2, 0x28
/* 9BAFC 8009AEFC 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9BB00 8009AF00 AD62004C */  sw         $v0, 0x4c($t3)
/* 9BB04 8009AF04 8FAC002C */  lw         $t4, 0x2c($sp)
/* 9BB08 8009AF08 8D8D004C */  lw         $t5, 0x4c($t4)
/* 9BB0C 8009AF0C 11A0FFE1 */  beqz       $t5, .L8009AE94
/* 9BB10 8009AF10 00000000 */   nop
/* 9BB14 8009AF14 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9BB18 8009AF18 8DCF0050 */  lw         $t7, 0x50($t6)
/* 9BB1C 8009AF1C 8DD8004C */  lw         $t8, 0x4c($t6)
/* 9BB20 8009AF20 01F8C821 */  addu       $t9, $t7, $t8
/* 9BB24 8009AF24 ADD90050 */  sw         $t9, 0x50($t6)
/* 9BB28 8009AF28 8FA8002C */  lw         $t0, 0x2c($sp)
/* 9BB2C 8009AF2C 10000003 */  b          .L8009AF3C
/* 9BB30 8009AF30 8D02004C */   lw        $v0, 0x4c($t0)
/* 9BB34 8009AF34 10000001 */  b          .L8009AF3C
/* 9BB38 8009AF38 00000000 */   nop
.L8009AF3C:
/* 9BB3C 8009AF3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9BB40 8009AF40 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9BB44 8009AF44 03E00008 */  jr         $ra
/* 9BB48 8009AF48 00000000 */   nop

glabel func_8009AF4C
/* 9BB4C 8009AF4C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 9BB50 8009AF50 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9BB54 8009AF54 AFA40060 */  sw         $a0, 0x60($sp)
/* 9BB58 8009AF58 AFA50064 */  sw         $a1, 0x64($sp)
/* 9BB5C 8009AF5C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 9BB60 8009AF60 8FAE0064 */  lw         $t6, 0x64($sp)
/* 9BB64 8009AF64 8DCF0004 */  lw         $t7, 4($t6)
/* 9BB68 8009AF68 AFAF0028 */  sw         $t7, 0x28($sp)
/* 9BB6C 8009AF6C 8FB80028 */  lw         $t8, 0x28($sp)
/* 9BB70 8009AF70 8F19001C */  lw         $t9, 0x1c($t8)
/* 9BB74 8009AF74 AFB90054 */  sw         $t9, 0x54($sp)
/* 9BB78 8009AF78 8FA80064 */  lw         $t0, 0x64($sp)
/* 9BB7C 8009AF7C 95090000 */  lhu        $t1, ($t0)
/* 9BB80 8009AF80 2D210009 */  sltiu      $at, $t1, 9
/* 9BB84 8009AF84 10200161 */  beqz       $at, .L8009B50C
/* 9BB88 8009AF88 00000000 */   nop
/* 9BB8C 8009AF8C 00094880 */  sll        $t1, $t1, 2
/* 9BB90 8009AF90 3C01800D */  lui        $at, %hi(D_800D2900)
/* 9BB94 8009AF94 00290821 */  addu       $at, $at, $t1
/* 9BB98 8009AF98 8C292900 */  lw         $t1, %lo(D_800D2900)($at)
/* 9BB9C 8009AF9C 01200008 */  jr         $t1
/* 9BBA0 8009AFA0 00000000 */   nop
/* 9BBA4 8009AFA4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9BBA8 8009AFA8 8D4B0028 */  lw         $t3, 0x28($t2)
/* 9BBAC 8009AFAC 15600004 */  bnez       $t3, .L8009AFC0
/* 9BBB0 8009AFB0 00000000 */   nop
/* 9BBB4 8009AFB4 8FAC0054 */  lw         $t4, 0x54($sp)
/* 9BBB8 8009AFB8 15800003 */  bnez       $t4, .L8009AFC8
/* 9BBBC 8009AFBC 00000000 */   nop
.L8009AFC0:
/* 9BBC0 8009AFC0 10000156 */  b          .L8009B51C
/* 9BBC4 8009AFC4 00000000 */   nop
.L8009AFC8:
/* 9BBC8 8009AFC8 A7A0005A */  sh         $zero, 0x5a($sp)
/* 9BBCC 8009AFCC 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9BBD0 8009AFD0 85AE0020 */  lh         $t6, 0x20($t5)
/* 9BBD4 8009AFD4 A7AE0058 */  sh         $t6, 0x58($sp)
/* 9BBD8 8009AFD8 A3A0005C */  sb         $zero, 0x5c($sp)
/* 9BBDC 8009AFDC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9BBE0 8009AFE0 AFAF0050 */  sw         $t7, 0x50($sp)
/* 9BBE4 8009AFE4 8FB80060 */  lw         $t8, 0x60($sp)
/* 9BBE8 8009AFE8 8FA50050 */  lw         $a1, 0x50($sp)
/* 9BBEC 8009AFEC 27A60058 */  addiu      $a2, $sp, 0x58
/* 9BBF0 8009AFF0 0C026F60 */  jal        func_8009BD80
/* 9BBF4 8009AFF4 8F040038 */   lw        $a0, 0x38($t8)
/* 9BBF8 8009AFF8 8FB90054 */  lw         $t9, 0x54($sp)
/* 9BBFC 8009AFFC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9BC00 8009B000 2401007F */  addiu      $at, $zero, 0x7f
/* 9BC04 8009B004 8F280000 */  lw         $t0, ($t9)
/* 9BC08 8009B008 854B002C */  lh         $t3, 0x2c($t2)
/* 9BC0C 8009B00C 9109000C */  lbu        $t1, 0xc($t0)
/* 9BC10 8009B010 012B0019 */  multu      $t1, $t3
/* 9BC14 8009B014 00006012 */  mflo       $t4
/* 9BC18 8009B018 00000000 */  nop
/* 9BC1C 8009B01C 00000000 */  nop
/* 9BC20 8009B020 0181001A */  div        $zero, $t4, $at
/* 9BC24 8009B024 00006812 */  mflo       $t5
/* 9BC28 8009B028 A7AD0032 */  sh         $t5, 0x32($sp)
/* 9BC2C 8009B02C 00000000 */  nop
/* 9BC30 8009B030 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9BC34 8009B034 8FB80054 */  lw         $t8, 0x54($sp)
/* 9BC38 8009B038 91CF002E */  lbu        $t7, 0x2e($t6)
/* 9BC3C 8009B03C 9319000C */  lbu        $t9, 0xc($t8)
/* 9BC40 8009B040 01F94021 */  addu       $t0, $t7, $t9
/* 9BC44 8009B044 250AFFC0 */  addiu      $t2, $t0, -0x40
/* 9BC48 8009B048 A7AA0030 */  sh         $t2, 0x30($sp)
/* 9BC4C 8009B04C 87A90030 */  lh         $t1, 0x30($sp)
/* 9BC50 8009B050 19200003 */  blez       $t1, .L8009B060
/* 9BC54 8009B054 00000000 */   nop
/* 9BC58 8009B058 10000002 */  b          .L8009B064
/* 9BC5C 8009B05C A7A90030 */   sh        $t1, 0x30($sp)
.L8009B060:
/* 9BC60 8009B060 A7A00030 */  sh         $zero, 0x30($sp)
.L8009B064:
/* 9BC64 8009B064 87AB0030 */  lh         $t3, 0x30($sp)
/* 9BC68 8009B068 2961007F */  slti       $at, $t3, 0x7f
/* 9BC6C 8009B06C 10200003 */  beqz       $at, .L8009B07C
/* 9BC70 8009B070 00000000 */   nop
/* 9BC74 8009B074 10000003 */  b          .L8009B084
/* 9BC78 8009B078 A3AB004F */   sb        $t3, 0x4f($sp)
.L8009B07C:
/* 9BC7C 8009B07C 240C007F */  addiu      $t4, $zero, 0x7f
/* 9BC80 8009B080 A3AC004F */  sb         $t4, 0x4f($sp)
.L8009B084:
/* 9BC84 8009B084 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9BC88 8009B088 C5A40024 */  lwc1       $f4, 0x24($t5)
/* 9BC8C 8009B08C E7A40048 */  swc1       $f4, 0x48($sp)
/* 9BC90 8009B090 8FAE0054 */  lw         $t6, 0x54($sp)
/* 9BC94 8009B094 8DD80000 */  lw         $t8, ($t6)
/* 9BC98 8009B098 8F0F0000 */  lw         $t7, ($t8)
/* 9BC9C 8009B09C AFAF0034 */  sw         $t7, 0x34($sp)
/* 9BCA0 8009B0A0 8FB90060 */  lw         $t9, 0x60($sp)
/* 9BCA4 8009B0A4 8FA80054 */  lw         $t0, 0x54($sp)
/* 9BCA8 8009B0A8 8FA50050 */  lw         $a1, 0x50($sp)
/* 9BCAC 8009B0AC 8F240038 */  lw         $a0, 0x38($t9)
/* 9BCB0 8009B0B0 0C027D34 */  jal        func_8009F4D0
/* 9BCB4 8009B0B4 8D060008 */   lw        $a2, 8($t0)
/* 9BCB8 8009B0B8 8FA90028 */  lw         $t1, 0x28($sp)
/* 9BCBC 8009B0BC 240A0001 */  addiu      $t2, $zero, 1
/* 9BCC0 8009B0C0 AD2A0028 */  sw         $t2, 0x28($t1)
/* 9BCC4 8009B0C4 8FAB0060 */  lw         $t3, 0x60($sp)
/* 9BCC8 8009B0C8 8FA50050 */  lw         $a1, 0x50($sp)
/* 9BCCC 8009B0CC 93A6004F */  lbu        $a2, 0x4f($sp)
/* 9BCD0 8009B0D0 0C028880 */  jal        func_800A2200
/* 9BCD4 8009B0D4 8D640038 */   lw        $a0, 0x38($t3)
/* 9BCD8 8009B0D8 8FAC0060 */  lw         $t4, 0x60($sp)
/* 9BCDC 8009B0DC 8FA50050 */  lw         $a1, 0x50($sp)
/* 9BCE0 8009B0E0 87A60032 */  lh         $a2, 0x32($sp)
/* 9BCE4 8009B0E4 8FA70034 */  lw         $a3, 0x34($sp)
/* 9BCE8 8009B0E8 0C026DDC */  jal        func_8009B770
/* 9BCEC 8009B0EC 8D840038 */   lw        $a0, 0x38($t4)
/* 9BCF0 8009B0F0 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9BCF4 8009B0F4 8FA50050 */  lw         $a1, 0x50($sp)
/* 9BCF8 8009B0F8 8FA60048 */  lw         $a2, 0x48($sp)
/* 9BCFC 8009B0FC 0C028818 */  jal        func_800A2060
/* 9BD00 8009B100 8DA40038 */   lw        $a0, 0x38($t5)
/* 9BD04 8009B104 8FAE0060 */  lw         $t6, 0x60($sp)
/* 9BD08 8009B108 8FB80028 */  lw         $t8, 0x28($sp)
/* 9BD0C 8009B10C 8FA50050 */  lw         $a1, 0x50($sp)
/* 9BD10 8009B110 8DC40038 */  lw         $a0, 0x38($t6)
/* 9BD14 8009B114 0C02B534 */  jal        func_800AD4D0
/* 9BD18 8009B118 9306002F */   lbu       $a2, 0x2f($t8)
/* 9BD1C 8009B11C 240F0006 */  addiu      $t7, $zero, 6
/* 9BD20 8009B120 A7AF0038 */  sh         $t7, 0x38($sp)
/* 9BD24 8009B124 8FB90028 */  lw         $t9, 0x28($sp)
/* 9BD28 8009B128 AFB9003C */  sw         $t9, 0x3c($sp)
/* 9BD2C 8009B12C 8FA80054 */  lw         $t0, 0x54($sp)
/* 9BD30 8009B130 8FA90028 */  lw         $t1, 0x28($sp)
/* 9BD34 8009B134 8D0A0000 */  lw         $t2, ($t0)
/* 9BD38 8009B138 8D250024 */  lw         $a1, 0x24($t1)
/* 9BD3C 8009B13C 0C026D83 */  jal        func_8009B60C
/* 9BD40 8009B140 8D440000 */   lw        $a0, ($t2)
/* 9BD44 8009B144 AFA20034 */  sw         $v0, 0x34($sp)
/* 9BD48 8009B148 8FA40060 */  lw         $a0, 0x60($sp)
/* 9BD4C 8009B14C 27A50038 */  addiu      $a1, $sp, 0x38
/* 9BD50 8009B150 8FA60034 */  lw         $a2, 0x34($sp)
/* 9BD54 8009B154 0C026E68 */  jal        func_8009B9A0
/* 9BD58 8009B158 24840014 */   addiu     $a0, $a0, 0x14
/* 9BD5C 8009B15C 100000ED */  b          .L8009B514
/* 9BD60 8009B160 00000000 */   nop
/* 9BD64 8009B164 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9BD68 8009B168 24010001 */  addiu      $at, $zero, 1
/* 9BD6C 8009B16C 8D6C0028 */  lw         $t4, 0x28($t3)
/* 9BD70 8009B170 15810004 */  bne        $t4, $at, .L8009B184
/* 9BD74 8009B174 00000000 */   nop
/* 9BD78 8009B178 8FAD0054 */  lw         $t5, 0x54($sp)
/* 9BD7C 8009B17C 15A00003 */  bnez       $t5, .L8009B18C
/* 9BD80 8009B180 00000000 */   nop
.L8009B184:
/* 9BD84 8009B184 100000E5 */  b          .L8009B51C
/* 9BD88 8009B188 00000000 */   nop
.L8009B18C:
/* 9BD8C 8009B18C 8FAE0054 */  lw         $t6, 0x54($sp)
/* 9BD90 8009B190 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9BD94 8009B194 8DD80000 */  lw         $t8, ($t6)
/* 9BD98 8009B198 8DE50024 */  lw         $a1, 0x24($t7)
/* 9BD9C 8009B19C 0C026D83 */  jal        func_8009B60C
/* 9BDA0 8009B1A0 8F040008 */   lw        $a0, 8($t8)
/* 9BDA4 8009B1A4 AFA20034 */  sw         $v0, 0x34($sp)
/* 9BDA8 8009B1A8 8FB90060 */  lw         $t9, 0x60($sp)
/* 9BDAC 8009B1AC 8FA50028 */  lw         $a1, 0x28($sp)
/* 9BDB0 8009B1B0 00003025 */  or         $a2, $zero, $zero
/* 9BDB4 8009B1B4 8FA70034 */  lw         $a3, 0x34($sp)
/* 9BDB8 8009B1B8 0C026DDC */  jal        func_8009B770
/* 9BDBC 8009B1BC 8F240038 */   lw        $a0, 0x38($t9)
/* 9BDC0 8009B1C0 8FA80034 */  lw         $t0, 0x34($sp)
/* 9BDC4 8009B1C4 1100000E */  beqz       $t0, .L8009B200
/* 9BDC8 8009B1C8 00000000 */   nop
/* 9BDCC 8009B1CC 240A0007 */  addiu      $t2, $zero, 7
/* 9BDD0 8009B1D0 A7AA0038 */  sh         $t2, 0x38($sp)
/* 9BDD4 8009B1D4 8FA90028 */  lw         $t1, 0x28($sp)
/* 9BDD8 8009B1D8 AFA9003C */  sw         $t1, 0x3c($sp)
/* 9BDDC 8009B1DC 8FA40060 */  lw         $a0, 0x60($sp)
/* 9BDE0 8009B1E0 27A50038 */  addiu      $a1, $sp, 0x38
/* 9BDE4 8009B1E4 8FA60034 */  lw         $a2, 0x34($sp)
/* 9BDE8 8009B1E8 0C026E68 */  jal        func_8009B9A0
/* 9BDEC 8009B1EC 24840014 */   addiu     $a0, $a0, 0x14
/* 9BDF0 8009B1F0 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9BDF4 8009B1F4 240B0002 */  addiu      $t3, $zero, 2
/* 9BDF8 8009B1F8 1000000F */  b          .L8009B238
/* 9BDFC 8009B1FC AD8B0028 */   sw        $t3, 0x28($t4)
.L8009B200:
/* 9BE00 8009B200 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9BE04 8009B204 8FA50028 */  lw         $a1, 0x28($sp)
/* 9BE08 8009B208 0C02E5C0 */  jal        func_800B9700
/* 9BE0C 8009B20C 8DA40038 */   lw        $a0, 0x38($t5)
/* 9BE10 8009B210 8FAE0060 */  lw         $t6, 0x60($sp)
/* 9BE14 8009B214 8FA50028 */  lw         $a1, 0x28($sp)
/* 9BE18 8009B218 0C026F20 */  jal        func_8009BC80
/* 9BE1C 8009B21C 8DC40038 */   lw        $a0, 0x38($t6)
/* 9BE20 8009B220 8FA40060 */  lw         $a0, 0x60($sp)
/* 9BE24 8009B224 8FA50028 */  lw         $a1, 0x28($sp)
/* 9BE28 8009B228 0C026D4C */  jal        func_8009B530
/* 9BE2C 8009B22C 24840014 */   addiu     $a0, $a0, 0x14
/* 9BE30 8009B230 8FB80028 */  lw         $t8, 0x28($sp)
/* 9BE34 8009B234 AF000028 */  sw         $zero, 0x28($t8)
.L8009B238:
/* 9BE38 8009B238 100000B6 */  b          .L8009B514
/* 9BE3C 8009B23C 00000000 */   nop
/* 9BE40 8009B240 8FAF0064 */  lw         $t7, 0x64($sp)
/* 9BE44 8009B244 8FA80028 */  lw         $t0, 0x28($sp)
/* 9BE48 8009B248 91F90008 */  lbu        $t9, 8($t7)
/* 9BE4C 8009B24C A119002E */  sb         $t9, 0x2e($t0)
/* 9BE50 8009B250 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9BE54 8009B254 24010001 */  addiu      $at, $zero, 1
/* 9BE58 8009B258 8D490028 */  lw         $t1, 0x28($t2)
/* 9BE5C 8009B25C 1521001E */  bne        $t1, $at, .L8009B2D8
/* 9BE60 8009B260 00000000 */   nop
/* 9BE64 8009B264 8FAB0054 */  lw         $t3, 0x54($sp)
/* 9BE68 8009B268 1160001B */  beqz       $t3, .L8009B2D8
/* 9BE6C 8009B26C 00000000 */   nop
/* 9BE70 8009B270 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9BE74 8009B274 8FAE0054 */  lw         $t6, 0x54($sp)
/* 9BE78 8009B278 918D002E */  lbu        $t5, 0x2e($t4)
/* 9BE7C 8009B27C 91D8000C */  lbu        $t8, 0xc($t6)
/* 9BE80 8009B280 01B87821 */  addu       $t7, $t5, $t8
/* 9BE84 8009B284 25F9FFC0 */  addiu      $t9, $t7, -0x40
/* 9BE88 8009B288 A7B90030 */  sh         $t9, 0x30($sp)
/* 9BE8C 8009B28C 87A80030 */  lh         $t0, 0x30($sp)
/* 9BE90 8009B290 19000003 */  blez       $t0, .L8009B2A0
/* 9BE94 8009B294 00000000 */   nop
/* 9BE98 8009B298 10000002 */  b          .L8009B2A4
/* 9BE9C 8009B29C A7A80030 */   sh        $t0, 0x30($sp)
.L8009B2A0:
/* 9BEA0 8009B2A0 A7A00030 */  sh         $zero, 0x30($sp)
.L8009B2A4:
/* 9BEA4 8009B2A4 87AA0030 */  lh         $t2, 0x30($sp)
/* 9BEA8 8009B2A8 2941007F */  slti       $at, $t2, 0x7f
/* 9BEAC 8009B2AC 10200003 */  beqz       $at, .L8009B2BC
/* 9BEB0 8009B2B0 00000000 */   nop
/* 9BEB4 8009B2B4 10000003 */  b          .L8009B2C4
/* 9BEB8 8009B2B8 A3AA004F */   sb        $t2, 0x4f($sp)
.L8009B2BC:
/* 9BEBC 8009B2BC 2409007F */  addiu      $t1, $zero, 0x7f
/* 9BEC0 8009B2C0 A3A9004F */  sb         $t1, 0x4f($sp)
.L8009B2C4:
/* 9BEC4 8009B2C4 8FAB0060 */  lw         $t3, 0x60($sp)
/* 9BEC8 8009B2C8 8FA50028 */  lw         $a1, 0x28($sp)
/* 9BECC 8009B2CC 93A6004F */  lbu        $a2, 0x4f($sp)
/* 9BED0 8009B2D0 0C028880 */  jal        func_800A2200
/* 9BED4 8009B2D4 8D640038 */   lw        $a0, 0x38($t3)
.L8009B2D8:
/* 9BED8 8009B2D8 1000008E */  b          .L8009B514
/* 9BEDC 8009B2DC 00000000 */   nop
/* 9BEE0 8009B2E0 8FAC0064 */  lw         $t4, 0x64($sp)
/* 9BEE4 8009B2E4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9BEE8 8009B2E8 3C01800D */  lui        $at, %hi(D_800D2928)
/* 9BEEC 8009B2EC C5940008 */  lwc1       $f20, 8($t4)
/* 9BEF0 8009B2F0 E5D40024 */  swc1       $f20, 0x24($t6)
/* 9BEF4 8009B2F4 D4282928 */  ldc1       $f8, %lo(D_800D2928)($at)
/* 9BEF8 8009B2F8 4600A1A1 */  cvt.d.s    $f6, $f20
/* 9BEFC 8009B2FC 4628303C */  c.lt.d     $f6, $f8
/* 9BF00 8009B300 00000000 */  nop
/* 9BF04 8009B304 45000005 */  bc1f       .L8009B31C
/* 9BF08 8009B308 00000000 */   nop
/* 9BF0C 8009B30C 3C01800D */  lui        $at, %hi(D_800D2930)
/* 9BF10 8009B310 C42A2930 */  lwc1       $f10, %lo(D_800D2930)($at)
/* 9BF14 8009B314 8FAD0028 */  lw         $t5, 0x28($sp)
/* 9BF18 8009B318 E5AA0024 */  swc1       $f10, 0x24($t5)
.L8009B31C:
/* 9BF1C 8009B31C 8FB80028 */  lw         $t8, 0x28($sp)
/* 9BF20 8009B320 24010001 */  addiu      $at, $zero, 1
/* 9BF24 8009B324 8F0F0028 */  lw         $t7, 0x28($t8)
/* 9BF28 8009B328 15E10007 */  bne        $t7, $at, .L8009B348
/* 9BF2C 8009B32C 00000000 */   nop
/* 9BF30 8009B330 8FA80028 */  lw         $t0, 0x28($sp)
/* 9BF34 8009B334 8FB90060 */  lw         $t9, 0x60($sp)
/* 9BF38 8009B338 01002825 */  or         $a1, $t0, $zero
/* 9BF3C 8009B33C 8D060024 */  lw         $a2, 0x24($t0)
/* 9BF40 8009B340 0C028818 */  jal        func_800A2060
/* 9BF44 8009B344 8F240038 */   lw        $a0, 0x38($t9)
.L8009B348:
/* 9BF48 8009B348 10000072 */  b          .L8009B514
/* 9BF4C 8009B34C 00000000 */   nop
/* 9BF50 8009B350 8FAA0064 */  lw         $t2, 0x64($sp)
/* 9BF54 8009B354 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9BF58 8009B358 91490008 */  lbu        $t1, 8($t2)
/* 9BF5C 8009B35C A169002F */  sb         $t1, 0x2f($t3)
/* 9BF60 8009B360 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9BF64 8009B364 24010001 */  addiu      $at, $zero, 1
/* 9BF68 8009B368 8D8E0028 */  lw         $t6, 0x28($t4)
/* 9BF6C 8009B36C 15C10007 */  bne        $t6, $at, .L8009B38C
/* 9BF70 8009B370 00000000 */   nop
/* 9BF74 8009B374 8FB80028 */  lw         $t8, 0x28($sp)
/* 9BF78 8009B378 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9BF7C 8009B37C 03002825 */  or         $a1, $t8, $zero
/* 9BF80 8009B380 9306002F */  lbu        $a2, 0x2f($t8)
/* 9BF84 8009B384 0C02B534 */  jal        func_800AD4D0
/* 9BF88 8009B388 8DA40038 */   lw        $a0, 0x38($t5)
.L8009B38C:
/* 9BF8C 8009B38C 10000061 */  b          .L8009B514
/* 9BF90 8009B390 00000000 */   nop
/* 9BF94 8009B394 8FAF0064 */  lw         $t7, 0x64($sp)
/* 9BF98 8009B398 8FA80028 */  lw         $t0, 0x28($sp)
/* 9BF9C 8009B39C 85F90008 */  lh         $t9, 8($t7)
/* 9BFA0 8009B3A0 A519002C */  sh         $t9, 0x2c($t0)
/* 9BFA4 8009B3A4 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9BFA8 8009B3A8 24010001 */  addiu      $at, $zero, 1
/* 9BFAC 8009B3AC 8D490028 */  lw         $t1, 0x28($t2)
/* 9BFB0 8009B3B0 15210018 */  bne        $t1, $at, .L8009B414
/* 9BFB4 8009B3B4 00000000 */   nop
/* 9BFB8 8009B3B8 8FAB0054 */  lw         $t3, 0x54($sp)
/* 9BFBC 8009B3BC 11600015 */  beqz       $t3, .L8009B414
/* 9BFC0 8009B3C0 00000000 */   nop
/* 9BFC4 8009B3C4 8FAC0054 */  lw         $t4, 0x54($sp)
/* 9BFC8 8009B3C8 8FB80028 */  lw         $t8, 0x28($sp)
/* 9BFCC 8009B3CC 2401007F */  addiu      $at, $zero, 0x7f
/* 9BFD0 8009B3D0 8D8E0000 */  lw         $t6, ($t4)
/* 9BFD4 8009B3D4 870F002C */  lh         $t7, 0x2c($t8)
/* 9BFD8 8009B3D8 91CD000D */  lbu        $t5, 0xd($t6)
/* 9BFDC 8009B3DC 01AF0019 */  multu      $t5, $t7
/* 9BFE0 8009B3E0 0000C812 */  mflo       $t9
/* 9BFE4 8009B3E4 00000000 */  nop
/* 9BFE8 8009B3E8 00000000 */  nop
/* 9BFEC 8009B3EC 0321001A */  div        $zero, $t9, $at
/* 9BFF0 8009B3F0 00004012 */  mflo       $t0
/* 9BFF4 8009B3F4 AFA8002C */  sw         $t0, 0x2c($sp)
/* 9BFF8 8009B3F8 00000000 */  nop
/* 9BFFC 8009B3FC 8FAA0060 */  lw         $t2, 0x60($sp)
/* 9C000 8009B400 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C004 8009B404 8FA6002C */  lw         $a2, 0x2c($sp)
/* 9C008 8009B408 240703E8 */  addiu      $a3, $zero, 0x3e8
/* 9C00C 8009B40C 0C026DDC */  jal        func_8009B770
/* 9C010 8009B410 8D440038 */   lw        $a0, 0x38($t2)
.L8009B414:
/* 9C014 8009B414 1000003F */  b          .L8009B514
/* 9C018 8009B418 00000000 */   nop
/* 9C01C 8009B41C 8FA90054 */  lw         $t1, 0x54($sp)
/* 9C020 8009B420 2401FFFF */  addiu      $at, $zero, -1
/* 9C024 8009B424 8D2B0000 */  lw         $t3, ($t1)
/* 9C028 8009B428 8D6C0004 */  lw         $t4, 4($t3)
/* 9C02C 8009B42C 11810025 */  beq        $t4, $at, .L8009B4C4
/* 9C030 8009B430 00000000 */   nop
/* 9C034 8009B434 8FAE0054 */  lw         $t6, 0x54($sp)
/* 9C038 8009B438 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9C03C 8009B43C 2401007F */  addiu      $at, $zero, 0x7f
/* 9C040 8009B440 8DD80000 */  lw         $t8, ($t6)
/* 9C044 8009B444 85F9002C */  lh         $t9, 0x2c($t7)
/* 9C048 8009B448 930D000D */  lbu        $t5, 0xd($t8)
/* 9C04C 8009B44C 01B90019 */  multu      $t5, $t9
/* 9C050 8009B450 00004012 */  mflo       $t0
/* 9C054 8009B454 00000000 */  nop
/* 9C058 8009B458 00000000 */  nop
/* 9C05C 8009B45C 0101001A */  div        $zero, $t0, $at
/* 9C060 8009B460 00005012 */  mflo       $t2
/* 9C064 8009B464 AFAA002C */  sw         $t2, 0x2c($sp)
/* 9C068 8009B468 00000000 */  nop
/* 9C06C 8009B46C 8FA90054 */  lw         $t1, 0x54($sp)
/* 9C070 8009B470 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9C074 8009B474 8D2B0000 */  lw         $t3, ($t1)
/* 9C078 8009B478 8D850024 */  lw         $a1, 0x24($t4)
/* 9C07C 8009B47C 0C026D83 */  jal        func_8009B60C
/* 9C080 8009B480 8D640004 */   lw        $a0, 4($t3)
/* 9C084 8009B484 AFA20034 */  sw         $v0, 0x34($sp)
/* 9C088 8009B488 8FAE0060 */  lw         $t6, 0x60($sp)
/* 9C08C 8009B48C 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C090 8009B490 8FA6002C */  lw         $a2, 0x2c($sp)
/* 9C094 8009B494 8FA70034 */  lw         $a3, 0x34($sp)
/* 9C098 8009B498 0C026DDC */  jal        func_8009B770
/* 9C09C 8009B49C 8DC40038 */   lw        $a0, 0x38($t6)
/* 9C0A0 8009B4A0 24180001 */  addiu      $t8, $zero, 1
/* 9C0A4 8009B4A4 A7B80038 */  sh         $t8, 0x38($sp)
/* 9C0A8 8009B4A8 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9C0AC 8009B4AC AFAF003C */  sw         $t7, 0x3c($sp)
/* 9C0B0 8009B4B0 8FA40060 */  lw         $a0, 0x60($sp)
/* 9C0B4 8009B4B4 27A50038 */  addiu      $a1, $sp, 0x38
/* 9C0B8 8009B4B8 8FA60034 */  lw         $a2, 0x34($sp)
/* 9C0BC 8009B4BC 0C026E68 */  jal        func_8009B9A0
/* 9C0C0 8009B4C0 24840014 */   addiu     $a0, $a0, 0x14
.L8009B4C4:
/* 9C0C4 8009B4C4 10000013 */  b          .L8009B514
/* 9C0C8 8009B4C8 00000000 */   nop
/* 9C0CC 8009B4CC 8FAD0060 */  lw         $t5, 0x60($sp)
/* 9C0D0 8009B4D0 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C0D4 8009B4D4 0C02E5C0 */  jal        func_800B9700
/* 9C0D8 8009B4D8 8DA40038 */   lw        $a0, 0x38($t5)
/* 9C0DC 8009B4DC 8FB90060 */  lw         $t9, 0x60($sp)
/* 9C0E0 8009B4E0 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C0E4 8009B4E4 0C026F20 */  jal        func_8009BC80
/* 9C0E8 8009B4E8 8F240038 */   lw        $a0, 0x38($t9)
/* 9C0EC 8009B4EC 8FA40060 */  lw         $a0, 0x60($sp)
/* 9C0F0 8009B4F0 8FA50028 */  lw         $a1, 0x28($sp)
/* 9C0F4 8009B4F4 0C026D4C */  jal        func_8009B530
/* 9C0F8 8009B4F8 24840014 */   addiu     $a0, $a0, 0x14
/* 9C0FC 8009B4FC 8FA80028 */  lw         $t0, 0x28($sp)
/* 9C100 8009B500 AD000028 */  sw         $zero, 0x28($t0)
/* 9C104 8009B504 10000003 */  b          .L8009B514
/* 9C108 8009B508 00000000 */   nop
.L8009B50C:
/* 9C10C 8009B50C 10000001 */  b          .L8009B514
/* 9C110 8009B510 00000000 */   nop
.L8009B514:
/* 9C114 8009B514 10000001 */  b          .L8009B51C
/* 9C118 8009B518 00000000 */   nop
.L8009B51C:
/* 9C11C 8009B51C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9C120 8009B520 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 9C124 8009B524 27BD0060 */  addiu      $sp, $sp, 0x60
/* 9C128 8009B528 03E00008 */  jr         $ra
/* 9C12C 8009B52C 00000000 */   nop

glabel func_8009B530
/* 9C130 8009B530 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9C134 8009B534 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C138 8009B538 AFA40030 */  sw         $a0, 0x30($sp)
/* 9C13C 8009B53C AFA50034 */  sw         $a1, 0x34($sp)
/* 9C140 8009B540 0C026DB4 */  jal        func_8009B6D0
/* 9C144 8009B544 24040001 */   addiu     $a0, $zero, 1
/* 9C148 8009B548 AFA20018 */  sw         $v0, 0x18($sp)
/* 9C14C 8009B54C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9C150 8009B550 8DCF0008 */  lw         $t7, 8($t6)
/* 9C154 8009B554 AFAF002C */  sw         $t7, 0x2c($sp)
/* 9C158 8009B558 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9C15C 8009B55C 13000023 */  beqz       $t8, .L8009B5EC
/* 9C160 8009B560 00000000 */   nop
.L8009B564:
/* 9C164 8009B564 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9C168 8009B568 8F280000 */  lw         $t0, ($t9)
/* 9C16C 8009B56C AFA80028 */  sw         $t0, 0x28($sp)
/* 9C170 8009B570 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9C174 8009B574 AFA90024 */  sw         $t1, 0x24($sp)
/* 9C178 8009B578 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C17C 8009B57C AFAA0020 */  sw         $t2, 0x20($sp)
/* 9C180 8009B580 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9C184 8009B584 256C000C */  addiu      $t4, $t3, 0xc
/* 9C188 8009B588 AFAC001C */  sw         $t4, 0x1c($sp)
/* 9C18C 8009B58C 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9C190 8009B590 8FAF0034 */  lw         $t7, 0x34($sp)
/* 9C194 8009B594 8DAE0004 */  lw         $t6, 4($t5)
/* 9C198 8009B598 15CF000F */  bne        $t6, $t7, .L8009B5D8
/* 9C19C 8009B59C 00000000 */   nop
/* 9C1A0 8009B5A0 8FB80020 */  lw         $t8, 0x20($sp)
/* 9C1A4 8009B5A4 13000007 */  beqz       $t8, .L8009B5C4
/* 9C1A8 8009B5A8 00000000 */   nop
/* 9C1AC 8009B5AC 8FB90020 */  lw         $t9, 0x20($sp)
/* 9C1B0 8009B5B0 8FA90024 */  lw         $t1, 0x24($sp)
/* 9C1B4 8009B5B4 8F280008 */  lw         $t0, 8($t9)
/* 9C1B8 8009B5B8 8D2A0008 */  lw         $t2, 8($t1)
/* 9C1BC 8009B5BC 010A5821 */  addu       $t3, $t0, $t2
/* 9C1C0 8009B5C0 AF2B0008 */  sw         $t3, 8($t9)
.L8009B5C4:
/* 9C1C4 8009B5C4 0C025DC7 */  jal        func_8009771C
/* 9C1C8 8009B5C8 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9C1CC 8009B5CC 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9C1D0 8009B5D0 0C025DBA */  jal        func_800976E8
/* 9C1D4 8009B5D4 8FA50030 */   lw        $a1, 0x30($sp)
.L8009B5D8:
/* 9C1D8 8009B5D8 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9C1DC 8009B5DC AFAC002C */  sw         $t4, 0x2c($sp)
/* 9C1E0 8009B5E0 8FAD002C */  lw         $t5, 0x2c($sp)
/* 9C1E4 8009B5E4 15A0FFDF */  bnez       $t5, .L8009B564
/* 9C1E8 8009B5E8 00000000 */   nop
.L8009B5EC:
/* 9C1EC 8009B5EC 0C026DB4 */  jal        func_8009B6D0
/* 9C1F0 8009B5F0 8FA40018 */   lw        $a0, 0x18($sp)
/* 9C1F4 8009B5F4 10000001 */  b          .L8009B5FC
/* 9C1F8 8009B5F8 00000000 */   nop
.L8009B5FC:
/* 9C1FC 8009B5FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C200 8009B600 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9C204 8009B604 03E00008 */  jr         $ra
/* 9C208 8009B608 00000000 */   nop

glabel func_8009B60C
/* 9C20C 8009B60C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C210 8009B610 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C214 8009B614 AFA40028 */  sw         $a0, 0x28($sp)
/* 9C218 8009B618 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9C21C 8009B61C C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 9C220 8009B620 44803000 */  mtc1       $zero, $f6
/* 9C224 8009B624 00000000 */  nop
/* 9C228 8009B628 46062032 */  c.eq.s     $f4, $f6
/* 9C22C 8009B62C 00000000 */  nop
/* 9C230 8009B630 45010003 */  bc1t       .L8009B640
/* 9C234 8009B634 00000000 */   nop
/* 9C238 8009B638 10000007 */  b          .L8009B658
/* 9C23C 8009B63C 00000000 */   nop
.L8009B640:
/* 9C240 8009B640 3C04800D */  lui        $a0, %hi(D_800D28E0)
/* 9C244 8009B644 3C05800D */  lui        $a1, %hi(D_800D28E8)
/* 9C248 8009B648 24A528E8 */  addiu      $a1, $a1, %lo(D_800D28E8)
/* 9C24C 8009B64C 248428E0 */  addiu      $a0, $a0, %lo(D_800D28E0)
/* 9C250 8009B650 0C02C480 */  jal        func_800B1200
/* 9C254 8009B654 2406011D */   addiu     $a2, $zero, 0x11d
.L8009B658:
/* 9C258 8009B658 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C25C 8009B65C C7B0002C */  lwc1       $f16, 0x2c($sp)
/* 9C260 8009B660 448E4000 */  mtc1       $t6, $f8
/* 9C264 8009B664 00000000 */  nop
/* 9C268 8009B668 468042A0 */  cvt.s.w    $f10, $f8
/* 9C26C 8009B66C 46105483 */  div.s      $f18, $f10, $f16
/* 9C270 8009B670 46009121 */  cvt.d.s    $f4, $f18
/* 9C274 8009B674 F7A40020 */  sdc1       $f4, 0x20($sp)
/* 9C278 8009B678 3C01800D */  lui        $at, %hi(D_800D2938)
/* 9C27C 8009B67C D4282938 */  ldc1       $f8, %lo(D_800D2938)($at)
/* 9C280 8009B680 D7A60020 */  ldc1       $f6, 0x20($sp)
/* 9C284 8009B684 4626403C */  c.lt.d     $f8, $f6
/* 9C288 8009B688 00000000 */  nop
/* 9C28C 8009B68C 45000005 */  bc1f       .L8009B6A4
/* 9C290 8009B690 00000000 */   nop
/* 9C294 8009B694 3C0F7FFF */  lui        $t7, 0x7fff
/* 9C298 8009B698 35EFFFFF */  ori        $t7, $t7, 0xffff
/* 9C29C 8009B69C 10000004 */  b          .L8009B6B0
/* 9C2A0 8009B6A0 AFAF001C */   sw        $t7, 0x1c($sp)
.L8009B6A4:
/* 9C2A4 8009B6A4 D7AA0020 */  ldc1       $f10, 0x20($sp)
/* 9C2A8 8009B6A8 4620540D */  trunc.w.d  $f16, $f10
/* 9C2AC 8009B6AC E7B0001C */  swc1       $f16, 0x1c($sp)
.L8009B6B0:
/* 9C2B0 8009B6B0 10000003 */  b          .L8009B6C0
/* 9C2B4 8009B6B4 8FA2001C */   lw        $v0, 0x1c($sp)
/* 9C2B8 8009B6B8 10000001 */  b          .L8009B6C0
/* 9C2BC 8009B6BC 00000000 */   nop
.L8009B6C0:
/* 9C2C0 8009B6C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C2C4 8009B6C4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9C2C8 8009B6C8 03E00008 */  jr         $ra
/* 9C2CC 8009B6CC 00000000 */   nop

glabel func_8009B6D0
/* 9C2D0 8009B6D0 400C6000 */  mfc0       $t4, $12
/* 9C2D4 8009B6D4 3182FF01 */  andi       $v0, $t4, 0xff01
/* 9C2D8 8009B6D8 3C08800D */  lui        $t0, %hi(D_800CC2A0)
/* 9C2DC 8009B6DC 2508C2A0 */  addiu      $t0, $t0, %lo(D_800CC2A0)
/* 9C2E0 8009B6E0 8D0B0000 */  lw         $t3, ($t0)
/* 9C2E4 8009B6E4 2401FFFF */  addiu      $at, $zero, -1
/* 9C2E8 8009B6E8 01614026 */  xor        $t0, $t3, $at
/* 9C2EC 8009B6EC 3108FF00 */  andi       $t0, $t0, 0xff00
/* 9C2F0 8009B6F0 00481025 */  or         $v0, $v0, $t0
/* 9C2F4 8009B6F4 3C0AA430 */  lui        $t2, %hi(D_A430000C)
/* 9C2F8 8009B6F8 8D4A000C */  lw         $t2, %lo(D_A430000C)($t2)
/* 9C2FC 8009B6FC 11400005 */  beqz       $t2, .L8009B714
/* 9C300 8009B700 000B4C02 */   srl       $t1, $t3, 0x10
/* 9C304 8009B704 2401FFFF */  addiu      $at, $zero, -1
/* 9C308 8009B708 01214826 */  xor        $t1, $t1, $at
/* 9C30C 8009B70C 3129003F */  andi       $t1, $t1, 0x3f
/* 9C310 8009B710 01495025 */  or         $t2, $t2, $t1
.L8009B714:
/* 9C314 8009B714 000A5400 */  sll        $t2, $t2, 0x10
/* 9C318 8009B718 004A1025 */  or         $v0, $v0, $t2
/* 9C31C 8009B71C 3C01003F */  lui        $at, 0x3f
/* 9C320 8009B720 00814024 */  and        $t0, $a0, $at
/* 9C324 8009B724 010B4024 */  and        $t0, $t0, $t3
/* 9C328 8009B728 000843C2 */  srl        $t0, $t0, 0xf
/* 9C32C 8009B72C 3C0A800D */  lui        $t2, %hi(D_800D2940)
/* 9C330 8009B730 01485021 */  addu       $t2, $t2, $t0
/* 9C334 8009B734 954A2940 */  lhu        $t2, %lo(D_800D2940)($t2)
/* 9C338 8009B738 3C01A430 */  lui        $at, %hi(D_A430000C)
/* 9C33C 8009B73C AC2A000C */  sw         $t2, %lo(D_A430000C)($at)
/* 9C340 8009B740 3088FF01 */  andi       $t0, $a0, 0xff01
/* 9C344 8009B744 3169FF00 */  andi       $t1, $t3, 0xff00
/* 9C348 8009B748 01094024 */  and        $t0, $t0, $t1
/* 9C34C 8009B74C 3C01FFFF */  lui        $at, 0xffff
/* 9C350 8009B750 342100FF */  ori        $at, $at, 0xff
/* 9C354 8009B754 01816024 */  and        $t4, $t4, $at
/* 9C358 8009B758 01886025 */  or         $t4, $t4, $t0
/* 9C35C 8009B75C 408C6000 */  mtc0       $t4, $12
/* 9C360 8009B760 00000000 */  nop
/* 9C364 8009B764 00000000 */  nop
/* 9C368 8009B768 03E00008 */  jr         $ra
/* 9C36C 8009B76C 00000000 */   nop

glabel func_8009B770
/* 9C370 8009B770 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C374 8009B774 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C378 8009B778 AFA40020 */  sw         $a0, 0x20($sp)
/* 9C37C 8009B77C AFA50024 */  sw         $a1, 0x24($sp)
/* 9C380 8009B780 AFA60028 */  sw         $a2, 0x28($sp)
/* 9C384 8009B784 AFA7002C */  sw         $a3, 0x2c($sp)
/* 9C388 8009B788 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9C38C 8009B78C 8DCF0008 */  lw         $t7, 8($t6)
/* 9C390 8009B790 11E0002C */  beqz       $t7, .L8009B844
/* 9C394 8009B794 00000000 */   nop
/* 9C398 8009B798 0C029658 */  jal        func_800A5960
/* 9C39C 8009B79C 00000000 */   nop
/* 9C3A0 8009B7A0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9C3A4 8009B7A4 8FB8001C */  lw         $t8, 0x1c($sp)
/* 9C3A8 8009B7A8 17000006 */  bnez       $t8, .L8009B7C4
/* 9C3AC 8009B7AC 00000000 */   nop
/* 9C3B0 8009B7B0 2404006A */  addiu      $a0, $zero, 0x6a
/* 9C3B4 8009B7B4 0C02B5EC */  jal        func_800AD7B0
/* 9C3B8 8009B7B8 00002825 */   or        $a1, $zero, $zero
/* 9C3BC 8009B7BC 10000023 */  b          .L8009B84C
/* 9C3C0 8009B7C0 00000000 */   nop
.L8009B7C4:
/* 9C3C4 8009B7C4 8FA90024 */  lw         $t1, 0x24($sp)
/* 9C3C8 8009B7C8 8FB90020 */  lw         $t9, 0x20($sp)
/* 9C3CC 8009B7CC 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9C3D0 8009B7D0 8D2A0008 */  lw         $t2, 8($t1)
/* 9C3D4 8009B7D4 8F28001C */  lw         $t0, 0x1c($t9)
/* 9C3D8 8009B7D8 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* 9C3DC 8009B7DC 010B6021 */  addu       $t4, $t0, $t3
/* 9C3E0 8009B7E0 ADAC0004 */  sw         $t4, 4($t5)
/* 9C3E4 8009B7E4 8FAF001C */  lw         $t7, 0x1c($sp)
/* 9C3E8 8009B7E8 240E000B */  addiu      $t6, $zero, 0xb
/* 9C3EC 8009B7EC A5EE0008 */  sh         $t6, 8($t7)
/* 9C3F0 8009B7F0 87B8002A */  lh         $t8, 0x2a($sp)
/* 9C3F4 8009B7F4 8FB9001C */  lw         $t9, 0x1c($sp)
/* 9C3F8 8009B7F8 AF38000C */  sw         $t8, 0xc($t9)
/* 9C3FC 8009B7FC 8FA40020 */  lw         $a0, 0x20($sp)
/* 9C400 8009B800 0C0296C0 */  jal        func_800A5B00
/* 9C404 8009B804 8FA5002C */   lw        $a1, 0x2c($sp)
/* 9C408 8009B808 8FA9001C */  lw         $t1, 0x1c($sp)
/* 9C40C 8009B80C AD220010 */  sw         $v0, 0x10($t1)
/* 9C410 8009B810 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9C414 8009B814 AD400000 */  sw         $zero, ($t2)
/* 9C418 8009B818 8FA80024 */  lw         $t0, 0x24($sp)
/* 9C41C 8009B81C 8D0B0008 */  lw         $t3, 8($t0)
/* 9C420 8009B820 8D6C000C */  lw         $t4, 0xc($t3)
/* 9C424 8009B824 AFAC0018 */  sw         $t4, 0x18($sp)
/* 9C428 8009B828 8FAD0018 */  lw         $t5, 0x18($sp)
/* 9C42C 8009B82C 24050003 */  addiu      $a1, $zero, 3
/* 9C430 8009B830 8FA6001C */  lw         $a2, 0x1c($sp)
/* 9C434 8009B834 8DB90008 */  lw         $t9, 8($t5)
/* 9C438 8009B838 01A02025 */  or         $a0, $t5, $zero
/* 9C43C 8009B83C 0320F809 */  jalr       $t9
/* 9C440 8009B840 00000000 */   nop
.L8009B844:
/* 9C444 8009B844 10000001 */  b          .L8009B84C
/* 9C448 8009B848 00000000 */   nop
.L8009B84C:
/* 9C44C 8009B84C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C450 8009B850 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9C454 8009B854 03E00008 */  jr         $ra
/* 9C458 8009B858 00000000 */   nop
/* 9C45C 8009B85C 00000000 */  nop

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009B860
/* 9C460 8009B860 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C464 8009B864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C468 8009B868 AFA40020 */  sw         $a0, 0x20($sp)
/* 9C46C 8009B86C AFA50024 */  sw         $a1, 0x24($sp)
/* 9C470 8009B870 AFA60028 */  sw         $a2, 0x28($sp)
/* 9C474 8009B874 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9C478 8009B878 ADC00010 */  sw         $zero, 0x10($t6)
/* 9C47C 8009B87C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9C480 8009B880 ADE00008 */  sw         $zero, 8($t7)
/* 9C484 8009B884 8FB80020 */  lw         $t8, 0x20($sp)
/* 9C488 8009B888 AF00000C */  sw         $zero, 0xc($t8)
/* 9C48C 8009B88C 8FB90020 */  lw         $t9, 0x20($sp)
/* 9C490 8009B890 AF200000 */  sw         $zero, ($t9)
/* 9C494 8009B894 8FA80020 */  lw         $t0, 0x20($sp)
/* 9C498 8009B898 AD000004 */  sw         $zero, 4($t0)
/* 9C49C 8009B89C 8FA90028 */  lw         $t1, 0x28($sp)
/* 9C4A0 8009B8A0 AFA0001C */  sw         $zero, 0x1c($sp)
/* 9C4A4 8009B8A4 1920000F */  blez       $t1, .L8009B8E4
/* 9C4A8 8009B8A8 00000000 */   nop
.L8009B8AC:
/* 9C4AC 8009B8AC 8FAA001C */  lw         $t2, 0x1c($sp)
/* 9C4B0 8009B8B0 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9C4B4 8009B8B4 8FA50020 */  lw         $a1, 0x20($sp)
/* 9C4B8 8009B8B8 000A58C0 */  sll        $t3, $t2, 3
/* 9C4BC 8009B8BC 016A5823 */  subu       $t3, $t3, $t2
/* 9C4C0 8009B8C0 000B5880 */  sll        $t3, $t3, 2
/* 9C4C4 8009B8C4 0C025DBA */  jal        func_800976E8
/* 9C4C8 8009B8C8 016C2021 */   addu      $a0, $t3, $t4
/* 9C4CC 8009B8CC 8FAD001C */  lw         $t5, 0x1c($sp)
/* 9C4D0 8009B8D0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 9C4D4 8009B8D4 25AE0001 */  addiu      $t6, $t5, 1
/* 9C4D8 8009B8D8 01CF082A */  slt        $at, $t6, $t7
/* 9C4DC 8009B8DC 1420FFF3 */  bnez       $at, .L8009B8AC
/* 9C4E0 8009B8E0 AFAE001C */   sw        $t6, 0x1c($sp)
.L8009B8E4:
/* 9C4E4 8009B8E4 10000001 */  b          .L8009B8EC
/* 9C4E8 8009B8E8 00000000 */   nop
.L8009B8EC:
/* 9C4EC 8009B8EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C4F0 8009B8F0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9C4F4 8009B8F4 03E00008 */  jr         $ra
/* 9C4F8 8009B8F8 00000000 */   nop

glabel func_8009B8FC
/* 9C4FC 8009B8FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C500 8009B900 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C504 8009B904 AFA40028 */  sw         $a0, 0x28($sp)
/* 9C508 8009B908 AFA5002C */  sw         $a1, 0x2c($sp)
/* 9C50C 8009B90C 0C026DB4 */  jal        func_8009B6D0
/* 9C510 8009B910 24040001 */   addiu     $a0, $zero, 1
/* 9C514 8009B914 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9C518 8009B918 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C51C 8009B91C 8DCF0008 */  lw         $t7, 8($t6)
/* 9C520 8009B920 AFAF0024 */  sw         $t7, 0x24($sp)
/* 9C524 8009B924 8FB80024 */  lw         $t8, 0x24($sp)
/* 9C528 8009B928 1300000F */  beqz       $t8, .L8009B968
/* 9C52C 8009B92C 00000000 */   nop
/* 9C530 8009B930 0C025DC7 */  jal        func_8009771C
/* 9C534 8009B934 8FA40024 */   lw        $a0, 0x24($sp)
/* 9C538 8009B938 8FA40024 */  lw         $a0, 0x24($sp)
/* 9C53C 8009B93C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 9C540 8009B940 24060010 */  addiu      $a2, $zero, 0x10
/* 9C544 8009B944 0C02BE24 */  jal        func_800AF890
/* 9C548 8009B948 2484000C */   addiu     $a0, $a0, 0xc
/* 9C54C 8009B94C 8FA40024 */  lw         $a0, 0x24($sp)
/* 9C550 8009B950 0C025DBA */  jal        func_800976E8
/* 9C554 8009B954 8FA50028 */   lw        $a1, 0x28($sp)
/* 9C558 8009B958 8FB90024 */  lw         $t9, 0x24($sp)
/* 9C55C 8009B95C 8F280008 */  lw         $t0, 8($t9)
/* 9C560 8009B960 10000005 */  b          .L8009B978
/* 9C564 8009B964 AFA80020 */   sw        $t0, 0x20($sp)
.L8009B968:
/* 9C568 8009B968 8FAA002C */  lw         $t2, 0x2c($sp)
/* 9C56C 8009B96C 2409FFFF */  addiu      $t1, $zero, -1
/* 9C570 8009B970 A5490000 */  sh         $t1, ($t2)
/* 9C574 8009B974 AFA00020 */  sw         $zero, 0x20($sp)
.L8009B978:
/* 9C578 8009B978 0C026DB4 */  jal        func_8009B6D0
/* 9C57C 8009B97C 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9C580 8009B980 10000003 */  b          .L8009B990
/* 9C584 8009B984 8FA20020 */   lw        $v0, 0x20($sp)
/* 9C588 8009B988 10000001 */  b          .L8009B990
/* 9C58C 8009B98C 00000000 */   nop
.L8009B990:
/* 9C590 8009B990 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C594 8009B994 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9C598 8009B998 03E00008 */  jr         $ra
/* 9C59C 8009B99C 00000000 */   nop

glabel func_8009B9A0
/* 9C5A0 8009B9A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9C5A4 8009B9A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C5A8 8009B9A8 AFA40030 */  sw         $a0, 0x30($sp)
/* 9C5AC 8009B9AC AFA50034 */  sw         $a1, 0x34($sp)
/* 9C5B0 8009B9B0 AFA60038 */  sw         $a2, 0x38($sp)
/* 9C5B4 8009B9B4 AFA00020 */  sw         $zero, 0x20($sp)
/* 9C5B8 8009B9B8 0C026DB4 */  jal        func_8009B6D0
/* 9C5BC 8009B9BC 24040001 */   addiu     $a0, $zero, 1
/* 9C5C0 8009B9C0 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9C5C4 8009B9C4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9C5C8 8009B9C8 8DCF0000 */  lw         $t7, ($t6)
/* 9C5CC 8009B9CC AFAF002C */  sw         $t7, 0x2c($sp)
/* 9C5D0 8009B9D0 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9C5D4 8009B9D4 17000008 */  bnez       $t8, .L8009B9F8
/* 9C5D8 8009B9D8 00000000 */   nop
/* 9C5DC 8009B9DC 0C026DB4 */  jal        func_8009B6D0
/* 9C5E0 8009B9E0 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9C5E4 8009B9E4 2404007C */  addiu      $a0, $zero, 0x7c
/* 9C5E8 8009B9E8 0C02B5EC */  jal        func_800AD7B0
/* 9C5EC 8009B9EC 00002825 */   or        $a1, $zero, $zero
/* 9C5F0 8009B9F0 1000004A */  b          .L8009BB1C
/* 9C5F4 8009B9F4 00000000 */   nop
.L8009B9F8:
/* 9C5F8 8009B9F8 0C025DC7 */  jal        func_8009771C
/* 9C5FC 8009B9FC 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9C600 8009BA00 8FA5002C */  lw         $a1, 0x2c($sp)
/* 9C604 8009BA04 8FA40034 */  lw         $a0, 0x34($sp)
/* 9C608 8009BA08 24060010 */  addiu      $a2, $zero, 0x10
/* 9C60C 8009BA0C 0C02BE24 */  jal        func_800AF890
/* 9C610 8009BA10 24A5000C */   addiu     $a1, $a1, 0xc
/* 9C614 8009BA14 8FB90038 */  lw         $t9, 0x38($sp)
/* 9C618 8009BA18 3C017FFF */  lui        $at, 0x7fff
/* 9C61C 8009BA1C 3421FFFF */  ori        $at, $at, 0xffff
/* 9C620 8009BA20 17210003 */  bne        $t9, $at, .L8009BA30
/* 9C624 8009BA24 00000000 */   nop
/* 9C628 8009BA28 2408FFFF */  addiu      $t0, $zero, -1
/* 9C62C 8009BA2C AFA80020 */  sw         $t0, 0x20($sp)
.L8009BA30:
/* 9C630 8009BA30 8FA90030 */  lw         $t1, 0x30($sp)
/* 9C634 8009BA34 252A0008 */  addiu      $t2, $t1, 8
/* 9C638 8009BA38 11400034 */  beqz       $t2, .L8009BB0C
/* 9C63C 8009BA3C AFAA0024 */   sw        $t2, 0x24($sp)
.L8009BA40:
/* 9C640 8009BA40 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9C644 8009BA44 8D6C0000 */  lw         $t4, ($t3)
/* 9C648 8009BA48 15800011 */  bnez       $t4, .L8009BA90
/* 9C64C 8009BA4C 00000000 */   nop
/* 9C650 8009BA50 8FAD0020 */  lw         $t5, 0x20($sp)
/* 9C654 8009BA54 11A00004 */  beqz       $t5, .L8009BA68
/* 9C658 8009BA58 00000000 */   nop
/* 9C65C 8009BA5C 8FAE002C */  lw         $t6, 0x2c($sp)
/* 9C660 8009BA60 10000004 */  b          .L8009BA74
/* 9C664 8009BA64 ADC00008 */   sw        $zero, 8($t6)
.L8009BA68:
/* 9C668 8009BA68 8FAF0038 */  lw         $t7, 0x38($sp)
/* 9C66C 8009BA6C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9C670 8009BA70 AF0F0008 */  sw         $t7, 8($t8)
.L8009BA74:
/* 9C674 8009BA74 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9C678 8009BA78 0C025DBA */  jal        func_800976E8
/* 9C67C 8009BA7C 8FA50024 */   lw        $a1, 0x24($sp)
/* 9C680 8009BA80 10000022 */  b          .L8009BB0C
/* 9C684 8009BA84 00000000 */   nop
/* 9C688 8009BA88 1000001C */  b          .L8009BAFC
/* 9C68C 8009BA8C 00000000 */   nop
.L8009BA90:
/* 9C690 8009BA90 8FB90024 */  lw         $t9, 0x24($sp)
/* 9C694 8009BA94 8F280000 */  lw         $t0, ($t9)
/* 9C698 8009BA98 AFA80028 */  sw         $t0, 0x28($sp)
/* 9C69C 8009BA9C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C6A0 8009BAA0 8FA90038 */  lw         $t1, 0x38($sp)
/* 9C6A4 8009BAA4 8D4B0008 */  lw         $t3, 8($t2)
/* 9C6A8 8009BAA8 012B082A */  slt        $at, $t1, $t3
/* 9C6AC 8009BAAC 1020000E */  beqz       $at, .L8009BAE8
/* 9C6B0 8009BAB0 00000000 */   nop
/* 9C6B4 8009BAB4 8FAC0038 */  lw         $t4, 0x38($sp)
/* 9C6B8 8009BAB8 8FAD002C */  lw         $t5, 0x2c($sp)
/* 9C6BC 8009BABC ADAC0008 */  sw         $t4, 8($t5)
/* 9C6C0 8009BAC0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C6C4 8009BAC4 8FB80038 */  lw         $t8, 0x38($sp)
/* 9C6C8 8009BAC8 8DCF0008 */  lw         $t7, 8($t6)
/* 9C6CC 8009BACC 01F8C823 */  subu       $t9, $t7, $t8
/* 9C6D0 8009BAD0 ADD90008 */  sw         $t9, 8($t6)
/* 9C6D4 8009BAD4 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9C6D8 8009BAD8 0C025DBA */  jal        func_800976E8
/* 9C6DC 8009BADC 8FA50024 */   lw        $a1, 0x24($sp)
/* 9C6E0 8009BAE0 1000000A */  b          .L8009BB0C
/* 9C6E4 8009BAE4 00000000 */   nop
.L8009BAE8:
/* 9C6E8 8009BAE8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C6EC 8009BAEC 8FA80038 */  lw         $t0, 0x38($sp)
/* 9C6F0 8009BAF0 8D490008 */  lw         $t1, 8($t2)
/* 9C6F4 8009BAF4 01095823 */  subu       $t3, $t0, $t1
/* 9C6F8 8009BAF8 AFAB0038 */  sw         $t3, 0x38($sp)
.L8009BAFC:
/* 9C6FC 8009BAFC 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9C700 8009BB00 8D8D0000 */  lw         $t5, ($t4)
/* 9C704 8009BB04 15A0FFCE */  bnez       $t5, .L8009BA40
/* 9C708 8009BB08 AFAD0024 */   sw        $t5, 0x24($sp)
.L8009BB0C:
/* 9C70C 8009BB0C 0C026DB4 */  jal        func_8009B6D0
/* 9C710 8009BB10 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9C714 8009BB14 10000001 */  b          .L8009BB1C
/* 9C718 8009BB18 00000000 */   nop
.L8009BB1C:
/* 9C71C 8009BB1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C720 8009BB20 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9C724 8009BB24 03E00008 */  jr         $ra
/* 9C728 8009BB28 00000000 */   nop

glabel func_8009BB2C
/* 9C72C 8009BB2C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9C730 8009BB30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C734 8009BB34 AFA40028 */  sw         $a0, 0x28($sp)
/* 9C738 8009BB38 0C026DB4 */  jal        func_8009B6D0
/* 9C73C 8009BB3C 24040001 */   addiu     $a0, $zero, 1
/* 9C740 8009BB40 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9C744 8009BB44 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9C748 8009BB48 8DCF0008 */  lw         $t7, 8($t6)
/* 9C74C 8009BB4C AFAF0024 */  sw         $t7, 0x24($sp)
/* 9C750 8009BB50 8FB80024 */  lw         $t8, 0x24($sp)
/* 9C754 8009BB54 1300000E */  beqz       $t8, .L8009BB90
/* 9C758 8009BB58 00000000 */   nop
.L8009BB5C:
/* 9C75C 8009BB5C 8FB90024 */  lw         $t9, 0x24($sp)
/* 9C760 8009BB60 8F280000 */  lw         $t0, ($t9)
/* 9C764 8009BB64 AFA80020 */  sw         $t0, 0x20($sp)
/* 9C768 8009BB68 0C025DC7 */  jal        func_8009771C
/* 9C76C 8009BB6C 8FA40024 */   lw        $a0, 0x24($sp)
/* 9C770 8009BB70 8FA40024 */  lw         $a0, 0x24($sp)
/* 9C774 8009BB74 0C025DBA */  jal        func_800976E8
/* 9C778 8009BB78 8FA50028 */   lw        $a1, 0x28($sp)
/* 9C77C 8009BB7C 8FA90020 */  lw         $t1, 0x20($sp)
/* 9C780 8009BB80 AFA90024 */  sw         $t1, 0x24($sp)
/* 9C784 8009BB84 8FAA0024 */  lw         $t2, 0x24($sp)
/* 9C788 8009BB88 1540FFF4 */  bnez       $t2, .L8009BB5C
/* 9C78C 8009BB8C 00000000 */   nop
.L8009BB90:
/* 9C790 8009BB90 0C026DB4 */  jal        func_8009B6D0
/* 9C794 8009BB94 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9C798 8009BB98 10000001 */  b          .L8009BBA0
/* 9C79C 8009BB9C 00000000 */   nop
.L8009BBA0:
/* 9C7A0 8009BBA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C7A4 8009BBA4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9C7A8 8009BBA8 03E00008 */  jr         $ra
/* 9C7AC 8009BBAC 00000000 */   nop

glabel func_8009BBB0
/* 9C7B0 8009BBB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9C7B4 8009BBB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C7B8 8009BBB8 AFA40030 */  sw         $a0, 0x30($sp)
/* 9C7BC 8009BBBC AFA50034 */  sw         $a1, 0x34($sp)
/* 9C7C0 8009BBC0 0C026DB4 */  jal        func_8009B6D0
/* 9C7C4 8009BBC4 24040001 */   addiu     $a0, $zero, 1
/* 9C7C8 8009BBC8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 9C7CC 8009BBCC 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9C7D0 8009BBD0 8DCF0008 */  lw         $t7, 8($t6)
/* 9C7D4 8009BBD4 AFAF002C */  sw         $t7, 0x2c($sp)
/* 9C7D8 8009BBD8 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9C7DC 8009BBDC 13000020 */  beqz       $t8, .L8009BC60
/* 9C7E0 8009BBE0 00000000 */   nop
.L8009BBE4:
/* 9C7E4 8009BBE4 8FB9002C */  lw         $t9, 0x2c($sp)
/* 9C7E8 8009BBE8 8F280000 */  lw         $t0, ($t9)
/* 9C7EC 8009BBEC AFA80028 */  sw         $t0, 0x28($sp)
/* 9C7F0 8009BBF0 8FA9002C */  lw         $t1, 0x2c($sp)
/* 9C7F4 8009BBF4 AFA90024 */  sw         $t1, 0x24($sp)
/* 9C7F8 8009BBF8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C7FC 8009BBFC AFAA0020 */  sw         $t2, 0x20($sp)
/* 9C800 8009BC00 8FAB0024 */  lw         $t3, 0x24($sp)
/* 9C804 8009BC04 87AD0036 */  lh         $t5, 0x36($sp)
/* 9C808 8009BC08 856C000C */  lh         $t4, 0xc($t3)
/* 9C80C 8009BC0C 158D000F */  bne        $t4, $t5, .L8009BC4C
/* 9C810 8009BC10 00000000 */   nop
/* 9C814 8009BC14 8FAE0020 */  lw         $t6, 0x20($sp)
/* 9C818 8009BC18 11C00007 */  beqz       $t6, .L8009BC38
/* 9C81C 8009BC1C 00000000 */   nop
/* 9C820 8009BC20 8FAF0020 */  lw         $t7, 0x20($sp)
/* 9C824 8009BC24 8FB90024 */  lw         $t9, 0x24($sp)
/* 9C828 8009BC28 8DF80008 */  lw         $t8, 8($t7)
/* 9C82C 8009BC2C 8F280008 */  lw         $t0, 8($t9)
/* 9C830 8009BC30 03084821 */  addu       $t1, $t8, $t0
/* 9C834 8009BC34 ADE90008 */  sw         $t1, 8($t7)
.L8009BC38:
/* 9C838 8009BC38 0C025DC7 */  jal        func_8009771C
/* 9C83C 8009BC3C 8FA4002C */   lw        $a0, 0x2c($sp)
/* 9C840 8009BC40 8FA4002C */  lw         $a0, 0x2c($sp)
/* 9C844 8009BC44 0C025DBA */  jal        func_800976E8
/* 9C848 8009BC48 8FA50030 */   lw        $a1, 0x30($sp)
.L8009BC4C:
/* 9C84C 8009BC4C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 9C850 8009BC50 AFAA002C */  sw         $t2, 0x2c($sp)
/* 9C854 8009BC54 8FAB002C */  lw         $t3, 0x2c($sp)
/* 9C858 8009BC58 1560FFE2 */  bnez       $t3, .L8009BBE4
/* 9C85C 8009BC5C 00000000 */   nop
.L8009BC60:
/* 9C860 8009BC60 0C026DB4 */  jal        func_8009B6D0
/* 9C864 8009BC64 8FA4001C */   lw        $a0, 0x1c($sp)
/* 9C868 8009BC68 10000001 */  b          .L8009BC70
/* 9C86C 8009BC6C 00000000 */   nop
.L8009BC70:
/* 9C870 8009BC70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C874 8009BC74 27BD0030 */  addiu      $sp, $sp, 0x30
/* 9C878 8009BC78 03E00008 */  jr         $ra
/* 9C87C 8009BC7C 00000000 */   nop

glabel func_8009BC80
/* 9C880 8009BC80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9C884 8009BC84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9C888 8009BC88 AFA40020 */  sw         $a0, 0x20($sp)
/* 9C88C 8009BC8C AFA50024 */  sw         $a1, 0x24($sp)
/* 9C890 8009BC90 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9C894 8009BC94 8DCF0008 */  lw         $t7, 8($t6)
/* 9C898 8009BC98 11E00032 */  beqz       $t7, .L8009BD64
/* 9C89C 8009BC9C 00000000 */   nop
/* 9C8A0 8009BCA0 8FB80024 */  lw         $t8, 0x24($sp)
/* 9C8A4 8009BCA4 8F190008 */  lw         $t9, 8($t8)
/* 9C8A8 8009BCA8 8F2800D8 */  lw         $t0, 0xd8($t9)
/* 9C8AC 8009BCAC 11000027 */  beqz       $t0, .L8009BD4C
/* 9C8B0 8009BCB0 00000000 */   nop
/* 9C8B4 8009BCB4 0C029658 */  jal        func_800A5960
/* 9C8B8 8009BCB8 00000000 */   nop
/* 9C8BC 8009BCBC AFA20018 */  sw         $v0, 0x18($sp)
/* 9C8C0 8009BCC0 8FA90018 */  lw         $t1, 0x18($sp)
/* 9C8C4 8009BCC4 15200006 */  bnez       $t1, .L8009BCE0
/* 9C8C8 8009BCC8 00000000 */   nop
/* 9C8CC 8009BCCC 2404006A */  addiu      $a0, $zero, 0x6a
/* 9C8D0 8009BCD0 0C02B5EC */  jal        func_800AD7B0
/* 9C8D4 8009BCD4 00002825 */   or        $a1, $zero, $zero
/* 9C8D8 8009BCD8 10000024 */  b          .L8009BD6C
/* 9C8DC 8009BCDC 00000000 */   nop
.L8009BCE0:
/* 9C8E0 8009BCE0 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9C8E4 8009BCE4 8FAA0020 */  lw         $t2, 0x20($sp)
/* 9C8E8 8009BCE8 8FB80018 */  lw         $t8, 0x18($sp)
/* 9C8EC 8009BCEC 8D8D0008 */  lw         $t5, 8($t4)
/* 9C8F0 8009BCF0 8D4B001C */  lw         $t3, 0x1c($t2)
/* 9C8F4 8009BCF4 8DAE00D8 */  lw         $t6, 0xd8($t5)
/* 9C8F8 8009BCF8 016E7821 */  addu       $t7, $t3, $t6
/* 9C8FC 8009BCFC AF0F0004 */  sw         $t7, 4($t8)
/* 9C900 8009BD00 8FB90018 */  lw         $t9, 0x18($sp)
/* 9C904 8009BD04 A7200008 */  sh         $zero, 8($t9)
/* 9C908 8009BD08 8FA80024 */  lw         $t0, 0x24($sp)
/* 9C90C 8009BD0C 8FAA0018 */  lw         $t2, 0x18($sp)
/* 9C910 8009BD10 8D090008 */  lw         $t1, 8($t0)
/* 9C914 8009BD14 AD49000C */  sw         $t1, 0xc($t2)
/* 9C918 8009BD18 8FAC0024 */  lw         $t4, 0x24($sp)
/* 9C91C 8009BD1C 8D8D0008 */  lw         $t5, 8($t4)
/* 9C920 8009BD20 8DAB000C */  lw         $t3, 0xc($t5)
/* 9C924 8009BD24 AFAB001C */  sw         $t3, 0x1c($sp)
/* 9C928 8009BD28 8FAE001C */  lw         $t6, 0x1c($sp)
/* 9C92C 8009BD2C 24050003 */  addiu      $a1, $zero, 3
/* 9C930 8009BD30 8FA60018 */  lw         $a2, 0x18($sp)
/* 9C934 8009BD34 8DD90008 */  lw         $t9, 8($t6)
/* 9C938 8009BD38 01C02025 */  or         $a0, $t6, $zero
/* 9C93C 8009BD3C 0320F809 */  jalr       $t9
/* 9C940 8009BD40 00000000 */   nop
/* 9C944 8009BD44 10000005 */  b          .L8009BD5C
/* 9C948 8009BD48 00000000 */   nop
.L8009BD4C:
/* 9C94C 8009BD4C 8FAF0024 */  lw         $t7, 0x24($sp)
/* 9C950 8009BD50 8FA40020 */  lw         $a0, 0x20($sp)
/* 9C954 8009BD54 0C029696 */  jal        func_800A5A58
/* 9C958 8009BD58 8DE50008 */   lw        $a1, 8($t7)
.L8009BD5C:
/* 9C95C 8009BD5C 8FB80024 */  lw         $t8, 0x24($sp)
/* 9C960 8009BD60 AF000008 */  sw         $zero, 8($t8)
.L8009BD64:
/* 9C964 8009BD64 10000001 */  b          .L8009BD6C
/* 9C968 8009BD68 00000000 */   nop
.L8009BD6C:
/* 9C96C 8009BD6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9C970 8009BD70 27BD0020 */  addiu      $sp, $sp, 0x20
/* 9C974 8009BD74 03E00008 */  jr         $ra
/* 9C978 8009BD78 00000000 */   nop
/* 9C97C 8009BD7C 00000000 */  nop

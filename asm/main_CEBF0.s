.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CDFF0
/* CEBF0 800CDFF0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CEBF4 800CDFF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* CEBF8 800CDFF8 AFA40030 */  sw         $a0, 0x30($sp)
/* CEBFC 800CDFFC AFA50034 */  sw         $a1, 0x34($sp)
/* CEC00 800CE000 AFA60038 */  sw         $a2, 0x38($sp)
/* CEC04 800CE004 AFA7003C */  sw         $a3, 0x3c($sp)
/* CEC08 800CE008 AFB00018 */  sw         $s0, 0x18($sp)
/* CEC0C 800CE00C 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* CEC10 800CE010 8DCF0010 */  lw         $t7, %lo(D_A4600010)($t6)
/* CEC14 800CE014 31F80003 */  andi       $t8, $t7, 3
/* CEC18 800CE018 13000008 */  beqz       $t8, .L800CE03C
/* CEC1C 800CE01C AFAF002C */   sw        $t7, 0x2c($sp)
.L800CE020:
/* CEC20 800CE020 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* CEC24 800CE024 8F280010 */  lw         $t0, %lo(D_A4600010)($t9)
/* CEC28 800CE028 AFA8002C */  sw         $t0, 0x2c($sp)
/* CEC2C 800CE02C 8FA9002C */  lw         $t1, 0x2c($sp)
/* CEC30 800CE030 312A0003 */  andi       $t2, $t1, 3
/* CEC34 800CE034 1540FFFA */  bnez       $t2, .L800CE020
/* CEC38 800CE038 00000000 */   nop
.L800CE03C:
/* CEC3C 800CE03C 8FAB0030 */  lw         $t3, 0x30($sp)
/* CEC40 800CE040 3C0E800E */  lui        $t6, %hi(D_800DB100)
/* CEC44 800CE044 916C0009 */  lbu        $t4, 9($t3)
/* CEC48 800CE048 000C6880 */  sll        $t5, $t4, 2
/* CEC4C 800CE04C 01CD7021 */  addu       $t6, $t6, $t5
/* CEC50 800CE050 8DCEB100 */  lw         $t6, %lo(D_800DB100)($t6)
/* CEC54 800CE054 AFAC0028 */  sw         $t4, 0x28($sp)
/* CEC58 800CE058 11CB0048 */  beq        $t6, $t3, .L800CE17C
/* CEC5C 800CE05C 00000000 */   nop
/* CEC60 800CE060 15800020 */  bnez       $t4, .L800CE0E4
/* CEC64 800CE064 AFAE0024 */   sw        $t6, 0x24($sp)
/* CEC68 800CE068 91CF0005 */  lbu        $t7, 5($t6)
/* CEC6C 800CE06C 91780005 */  lbu        $t8, 5($t3)
/* CEC70 800CE070 11F80003 */  beq        $t7, $t8, .L800CE080
/* CEC74 800CE074 00000000 */   nop
/* CEC78 800CE078 3C19A460 */  lui        $t9, %hi(D_A4600014)
/* CEC7C 800CE07C AF380014 */  sw         $t8, %lo(D_A4600014)($t9)
.L800CE080:
/* CEC80 800CE080 8FA80024 */  lw         $t0, 0x24($sp)
/* CEC84 800CE084 8FAA0030 */  lw         $t2, 0x30($sp)
/* CEC88 800CE088 91090006 */  lbu        $t1, 6($t0)
/* CEC8C 800CE08C 914D0006 */  lbu        $t5, 6($t2)
/* CEC90 800CE090 112D0003 */  beq        $t1, $t5, .L800CE0A0
/* CEC94 800CE094 00000000 */   nop
/* CEC98 800CE098 3C0CA460 */  lui        $t4, %hi(D_A460001C)
/* CEC9C 800CE09C AD8D001C */  sw         $t5, %lo(D_A460001C)($t4)
.L800CE0A0:
/* CECA0 800CE0A0 8FAE0024 */  lw         $t6, 0x24($sp)
/* CECA4 800CE0A4 8FAF0030 */  lw         $t7, 0x30($sp)
/* CECA8 800CE0A8 91CB0007 */  lbu        $t3, 7($t6)
/* CECAC 800CE0AC 91F80007 */  lbu        $t8, 7($t7)
/* CECB0 800CE0B0 11780003 */  beq        $t3, $t8, .L800CE0C0
/* CECB4 800CE0B4 00000000 */   nop
/* CECB8 800CE0B8 3C19A460 */  lui        $t9, %hi(D_A4600020)
/* CECBC 800CE0BC AF380020 */  sw         $t8, %lo(D_A4600020)($t9)
.L800CE0C0:
/* CECC0 800CE0C0 8FA80024 */  lw         $t0, 0x24($sp)
/* CECC4 800CE0C4 8FA90030 */  lw         $t1, 0x30($sp)
/* CECC8 800CE0C8 910A0008 */  lbu        $t2, 8($t0)
/* CECCC 800CE0CC 912D0008 */  lbu        $t5, 8($t1)
/* CECD0 800CE0D0 114D0024 */  beq        $t2, $t5, .L800CE164
/* CECD4 800CE0D4 00000000 */   nop
/* CECD8 800CE0D8 3C0CA460 */  lui        $t4, %hi(D_A4600018)
/* CECDC 800CE0DC 10000021 */  b          .L800CE164
/* CECE0 800CE0E0 AD8D0018 */   sw        $t5, %lo(D_A4600018)($t4)
.L800CE0E4:
/* CECE4 800CE0E4 8FAE0024 */  lw         $t6, 0x24($sp)
/* CECE8 800CE0E8 8FAB0030 */  lw         $t3, 0x30($sp)
/* CECEC 800CE0EC 91CF0005 */  lbu        $t7, 5($t6)
/* CECF0 800CE0F0 91780005 */  lbu        $t8, 5($t3)
/* CECF4 800CE0F4 11F80003 */  beq        $t7, $t8, .L800CE104
/* CECF8 800CE0F8 00000000 */   nop
/* CECFC 800CE0FC 3C19A460 */  lui        $t9, %hi(D_A4600024)
/* CED00 800CE100 AF380024 */  sw         $t8, %lo(D_A4600024)($t9)
.L800CE104:
/* CED04 800CE104 8FA80024 */  lw         $t0, 0x24($sp)
/* CED08 800CE108 8FAA0030 */  lw         $t2, 0x30($sp)
/* CED0C 800CE10C 91090006 */  lbu        $t1, 6($t0)
/* CED10 800CE110 914D0006 */  lbu        $t5, 6($t2)
/* CED14 800CE114 112D0003 */  beq        $t1, $t5, .L800CE124
/* CED18 800CE118 00000000 */   nop
/* CED1C 800CE11C 3C0CA460 */  lui        $t4, %hi(D_A460002C)
/* CED20 800CE120 AD8D002C */  sw         $t5, %lo(D_A460002C)($t4)
.L800CE124:
/* CED24 800CE124 8FAE0024 */  lw         $t6, 0x24($sp)
/* CED28 800CE128 8FAF0030 */  lw         $t7, 0x30($sp)
/* CED2C 800CE12C 91CB0007 */  lbu        $t3, 7($t6)
/* CED30 800CE130 91F80007 */  lbu        $t8, 7($t7)
/* CED34 800CE134 11780003 */  beq        $t3, $t8, .L800CE144
/* CED38 800CE138 00000000 */   nop
/* CED3C 800CE13C 3C19A460 */  lui        $t9, %hi(D_A4600030)
/* CED40 800CE140 AF380030 */  sw         $t8, %lo(D_A4600030)($t9)
.L800CE144:
/* CED44 800CE144 8FA80024 */  lw         $t0, 0x24($sp)
/* CED48 800CE148 8FA90030 */  lw         $t1, 0x30($sp)
/* CED4C 800CE14C 910A0008 */  lbu        $t2, 8($t0)
/* CED50 800CE150 912D0008 */  lbu        $t5, 8($t1)
/* CED54 800CE154 114D0003 */  beq        $t2, $t5, .L800CE164
/* CED58 800CE158 00000000 */   nop
/* CED5C 800CE15C 3C0CA460 */  lui        $t4, %hi(D_A4600028)
/* CED60 800CE160 AD8D0028 */  sw         $t5, %lo(D_A4600028)($t4)
.L800CE164:
/* CED64 800CE164 8FAF0028 */  lw         $t7, 0x28($sp)
/* CED68 800CE168 8FAE0030 */  lw         $t6, 0x30($sp)
/* CED6C 800CE16C 3C01800E */  lui        $at, %hi(D_800DB100)
/* CED70 800CE170 000F5880 */  sll        $t3, $t7, 2
/* CED74 800CE174 002B0821 */  addu       $at, $at, $t3
/* CED78 800CE178 AC2EB100 */  sw         $t6, %lo(D_800DB100)($at)
.L800CE17C:
/* CED7C 800CE17C 0C030C38 */  jal        func_800C30E0
/* CED80 800CE180 8FA4003C */   lw        $a0, 0x3c($sp)
/* CED84 800CE184 3C18A460 */  lui        $t8, 0xa460
/* CED88 800CE188 AF020000 */  sw         $v0, ($t8)
/* CED8C 800CE18C 8FB90030 */  lw         $t9, 0x30($sp)
/* CED90 800CE190 8FA90038 */  lw         $t1, 0x38($sp)
/* CED94 800CE194 3C011FFF */  lui        $at, 0x1fff
/* CED98 800CE198 8F28000C */  lw         $t0, 0xc($t9)
/* CED9C 800CE19C 3421FFFF */  ori        $at, $at, 0xffff
/* CEDA0 800CE1A0 3C0CA460 */  lui        $t4, %hi(D_A4600004)
/* CEDA4 800CE1A4 01095025 */  or         $t2, $t0, $t1
/* CEDA8 800CE1A8 01416824 */  and        $t5, $t2, $at
/* CEDAC 800CE1AC AD8D0004 */  sw         $t5, %lo(D_A4600004)($t4)
/* CEDB0 800CE1B0 8FB00034 */  lw         $s0, 0x34($sp)
/* CEDB4 800CE1B4 12000005 */  beqz       $s0, .L800CE1CC
/* CEDB8 800CE1B8 24010001 */   addiu     $at, $zero, 1
/* CEDBC 800CE1BC 12010008 */  beq        $s0, $at, .L800CE1E0
/* CEDC0 800CE1C0 00000000 */   nop
/* CEDC4 800CE1C4 1000000B */  b          .L800CE1F4
/* CEDC8 800CE1C8 00000000 */   nop
.L800CE1CC:
/* CEDCC 800CE1CC 8FAF0040 */  lw         $t7, 0x40($sp)
/* CEDD0 800CE1D0 3C0BA460 */  lui        $t3, %hi(D_A460000C)
/* CEDD4 800CE1D4 25EEFFFF */  addiu      $t6, $t7, -1
/* CEDD8 800CE1D8 10000008 */  b          .L800CE1FC
/* CEDDC 800CE1DC AD6E000C */   sw        $t6, %lo(D_A460000C)($t3)
.L800CE1E0:
/* CEDE0 800CE1E0 8FB80040 */  lw         $t8, 0x40($sp)
/* CEDE4 800CE1E4 3C08A460 */  lui        $t0, %hi(D_A4600008)
/* CEDE8 800CE1E8 2719FFFF */  addiu      $t9, $t8, -1
/* CEDEC 800CE1EC 10000003 */  b          .L800CE1FC
/* CEDF0 800CE1F0 AD190008 */   sw        $t9, %lo(D_A4600008)($t0)
.L800CE1F4:
/* CEDF4 800CE1F4 10000002 */  b          .L800CE200
/* CEDF8 800CE1F8 2402FFFF */   addiu     $v0, $zero, -1
.L800CE1FC:
/* CEDFC 800CE1FC 00001025 */  or         $v0, $zero, $zero
.L800CE200:
/* CEE00 800CE200 8FBF001C */  lw         $ra, 0x1c($sp)
/* CEE04 800CE204 8FB00018 */  lw         $s0, 0x18($sp)
/* CEE08 800CE208 27BD0030 */  addiu      $sp, $sp, 0x30
/* CEE0C 800CE20C 03E00008 */  jr         $ra
/* CEE10 800CE210 00000000 */   nop
/* CEE14 800CE214 00000000 */  nop
/* CEE18 800CE218 00000000 */  nop
/* CEE1C 800CE21C 00000000 */  nop

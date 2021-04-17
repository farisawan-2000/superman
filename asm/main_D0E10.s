.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D0210
/* D0E10 800D0210 8C8E003C */  lw         $t6, 0x3c($a0)
/* D0E14 800D0214 8C830040 */  lw         $v1, 0x40($a0)
/* D0E18 800D0218 000E7880 */  sll        $t7, $t6, 2
/* D0E1C 800D021C 01EE7823 */  subu       $t7, $t7, $t6
/* D0E20 800D0220 000F7900 */  sll        $t7, $t7, 4
/* D0E24 800D0224 01E3C021 */  addu       $t8, $t7, $v1
/* D0E28 800D0228 03E00008 */  jr         $ra
/* D0E2C 800D022C 8F020028 */   lw        $v0, 0x28($t8)

glabel func_800D0230
/* D0E30 800D0230 4442F800 */  cfc1       $v0, $31
/* D0E34 800D0234 44C4F800 */  ctc1       $a0, $31
/* D0E38 800D0238 03E00008 */  jr         $ra
/* D0E3C 800D023C 00000000 */   nop

glabel func_800D0240
/* D0E40 800D0240 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* D0E44 800D0244 AFA40150 */  sw         $a0, 0x150($sp)
/* D0E48 800D0248 8FAF0150 */  lw         $t7, 0x150($sp)
/* D0E4C 800D024C AFA50154 */  sw         $a1, 0x154($sp)
/* D0E50 800D0250 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0E54 800D0254 AFA60158 */  sw         $a2, 0x158($sp)
/* D0E58 800D0258 8FAE0154 */  lw         $t6, 0x154($sp)
/* D0E5C 800D025C 8DF80050 */  lw         $t8, 0x50($t7)
/* D0E60 800D0260 01D8082A */  slt        $at, $t6, $t8
/* D0E64 800D0264 10200003 */  beqz       $at, .L800D0274
/* D0E68 800D0268 00000000 */   nop
/* D0E6C 800D026C 05C10003 */  bgez       $t6, .L800D027C
/* D0E70 800D0270 00000000 */   nop
.L800D0274:
/* D0E74 800D0274 100000AA */  b          .L800D0520
/* D0E78 800D0278 24020005 */   addiu     $v0, $zero, 5
.L800D027C:
/* D0E7C 800D027C 8FB90150 */  lw         $t9, 0x150($sp)
/* D0E80 800D0280 8F280000 */  lw         $t0, ($t9)
/* D0E84 800D0284 31090001 */  andi       $t1, $t0, 1
/* D0E88 800D0288 15200003 */  bnez       $t1, .L800D0298
/* D0E8C 800D028C 00000000 */   nop
/* D0E90 800D0290 100000A3 */  b          .L800D0520
/* D0E94 800D0294 24020005 */   addiu     $v0, $zero, 5
.L800D0298:
/* D0E98 800D0298 0C031D08 */  jal        func_800C7420
/* D0E9C 800D029C 8FA40150 */   lw        $a0, 0x150($sp)
/* D0EA0 800D02A0 24010002 */  addiu      $at, $zero, 2
/* D0EA4 800D02A4 14410003 */  bne        $v0, $at, .L800D02B4
/* D0EA8 800D02A8 00000000 */   nop
/* D0EAC 800D02AC 1000009C */  b          .L800D0520
/* D0EB0 800D02B0 24020002 */   addiu     $v0, $zero, 2
.L800D02B4:
/* D0EB4 800D02B4 8FAA0150 */  lw         $t2, 0x150($sp)
/* D0EB8 800D02B8 914B0065 */  lbu        $t3, 0x65($t2)
/* D0EBC 800D02BC 1160000A */  beqz       $t3, .L800D02E8
/* D0EC0 800D02C0 00000000 */   nop
/* D0EC4 800D02C4 A1400065 */  sb         $zero, 0x65($t2)
/* D0EC8 800D02C8 0C031E0F */  jal        func_800C783C
/* D0ECC 800D02CC 8FA40150 */   lw        $a0, 0x150($sp)
/* D0ED0 800D02D0 AFA2014C */  sw         $v0, 0x14c($sp)
/* D0ED4 800D02D4 8FAC014C */  lw         $t4, 0x14c($sp)
/* D0ED8 800D02D8 11800003 */  beqz       $t4, .L800D02E8
/* D0EDC 800D02DC 00000000 */   nop
/* D0EE0 800D02E0 1000008F */  b          .L800D0520
/* D0EE4 800D02E4 01801025 */   or        $v0, $t4, $zero
.L800D02E8:
/* D0EE8 800D02E8 8FAD0150 */  lw         $t5, 0x150($sp)
/* D0EEC 800D02EC 8FB80154 */  lw         $t8, 0x154($sp)
/* D0EF0 800D02F0 27A70028 */  addiu      $a3, $sp, 0x28
/* D0EF4 800D02F4 8DAF005C */  lw         $t7, 0x5c($t5)
/* D0EF8 800D02F8 8DA40004 */  lw         $a0, 4($t5)
/* D0EFC 800D02FC 8DA50008 */  lw         $a1, 8($t5)
/* D0F00 800D0300 0C034C10 */  jal        func_800D3040
/* D0F04 800D0304 01F83021 */   addu      $a2, $t7, $t8
/* D0F08 800D0308 AFA2014C */  sw         $v0, 0x14c($sp)
/* D0F0C 800D030C 8FAE014C */  lw         $t6, 0x14c($sp)
/* D0F10 800D0310 11C00003 */  beqz       $t6, .L800D0320
/* D0F14 800D0314 00000000 */   nop
/* D0F18 800D0318 10000081 */  b          .L800D0520
/* D0F1C 800D031C 01C01025 */   or        $v0, $t6, $zero
.L800D0320:
/* D0F20 800D0320 97B9002C */  lhu        $t9, 0x2c($sp)
/* D0F24 800D0324 13200004 */  beqz       $t9, .L800D0338
/* D0F28 800D0328 00000000 */   nop
/* D0F2C 800D032C 8FA80028 */  lw         $t0, 0x28($sp)
/* D0F30 800D0330 15000003 */  bnez       $t0, .L800D0340
/* D0F34 800D0334 00000000 */   nop
.L800D0338:
/* D0F38 800D0338 10000079 */  b          .L800D0520
/* D0F3C 800D033C 24020005 */   addiu     $v0, $zero, 5
.L800D0340:
/* D0F40 800D0340 8FAB0150 */  lw         $t3, 0x150($sp)
/* D0F44 800D0344 97A9002E */  lhu        $t1, 0x2e($sp)
/* D0F48 800D0348 8D6A0060 */  lw         $t2, 0x60($t3)
/* D0F4C 800D034C 012A082A */  slt        $at, $t1, $t2
/* D0F50 800D0350 10200003 */  beqz       $at, .L800D0360
/* D0F54 800D0354 00000000 */   nop
/* D0F58 800D0358 10000071 */  b          .L800D0520
/* D0F5C 800D035C 24020003 */   addiu     $v0, $zero, 3
.L800D0360:
/* D0F60 800D0360 93AC002F */  lbu        $t4, 0x2f($sp)
/* D0F64 800D0364 93AD002E */  lbu        $t5, 0x2e($sp)
/* D0F68 800D0368 8FAF0150 */  lw         $t7, 0x150($sp)
/* D0F6C 800D036C AFA00148 */  sw         $zero, 0x148($sp)
/* D0F70 800D0370 A3AC001E */  sb         $t4, 0x1e($sp)
/* D0F74 800D0374 A3AD001F */  sb         $t5, 0x1f($sp)
/* D0F78 800D0378 91F80064 */  lbu        $t8, 0x64($t7)
/* D0F7C 800D037C 01B8082A */  slt        $at, $t5, $t8
/* D0F80 800D0380 1020003E */  beqz       $at, .L800D047C
/* D0F84 800D0384 00000000 */   nop
.L800D0388:
/* D0F88 800D0388 8FA40150 */  lw         $a0, 0x150($sp)
/* D0F8C 800D038C 27A50048 */  addiu      $a1, $sp, 0x48
/* D0F90 800D0390 00003025 */  or         $a2, $zero, $zero
/* D0F94 800D0394 0C031D47 */  jal        func_800C751C
/* D0F98 800D0398 93A7001F */   lbu       $a3, 0x1f($sp)
/* D0F9C 800D039C AFA2014C */  sw         $v0, 0x14c($sp)
/* D0FA0 800D03A0 8FAE014C */  lw         $t6, 0x14c($sp)
/* D0FA4 800D03A4 11C00003 */  beqz       $t6, .L800D03B4
/* D0FA8 800D03A8 00000000 */   nop
/* D0FAC 800D03AC 1000005C */  b          .L800D0520
/* D0FB0 800D03B0 01C01025 */   or        $v0, $t6, $zero
.L800D03B4:
/* D0FB4 800D03B4 93A8001E */  lbu        $t0, 0x1e($sp)
/* D0FB8 800D03B8 27A90048 */  addiu      $t1, $sp, 0x48
/* D0FBC 800D03BC 27B90024 */  addiu      $t9, $sp, 0x24
/* D0FC0 800D03C0 00085840 */  sll        $t3, $t0, 1
/* D0FC4 800D03C4 01695021 */  addu       $t2, $t3, $t1
/* D0FC8 800D03C8 95410000 */  lhu        $at, ($t2)
/* D0FCC 800D03CC A7210000 */  sh         $at, ($t9)
/* D0FD0 800D03D0 8FAD0148 */  lw         $t5, 0x148($sp)
/* D0FD4 800D03D4 8FA80150 */  lw         $t0, 0x150($sp)
/* D0FD8 800D03D8 97AE0024 */  lhu        $t6, 0x24($sp)
/* D0FDC 800D03DC 25B80001 */  addiu      $t8, $t5, 1
/* D0FE0 800D03E0 AFB80148 */  sw         $t8, 0x148($sp)
/* D0FE4 800D03E4 8D0B0060 */  lw         $t3, 0x60($t0)
/* D0FE8 800D03E8 01CB082A */  slt        $at, $t6, $t3
/* D0FEC 800D03EC 14200019 */  bnez       $at, .L800D0454
/* D0FF0 800D03F0 00000000 */   nop
.L800D03F4:
/* D0FF4 800D03F4 8FA90148 */  lw         $t1, 0x148($sp)
/* D0FF8 800D03F8 93AA0025 */  lbu        $t2, 0x25($sp)
/* D0FFC 800D03FC 27AD0048 */  addiu      $t5, $sp, 0x48
/* D1000 800D0400 252C0001 */  addiu      $t4, $t1, 1
/* D1004 800D0404 000A7840 */  sll        $t7, $t2, 1
/* D1008 800D0408 AFAC0148 */  sw         $t4, 0x148($sp)
/* D100C 800D040C 01EDC021 */  addu       $t8, $t7, $t5
/* D1010 800D0410 97010000 */  lhu        $at, ($t8)
/* D1014 800D0414 27B90024 */  addiu      $t9, $sp, 0x24
/* D1018 800D0418 A7210000 */  sh         $at, ($t9)
/* D101C 800D041C 93AC001F */  lbu        $t4, 0x1f($sp)
/* D1020 800D0420 93A90024 */  lbu        $t1, 0x24($sp)
/* D1024 800D0424 112C0005 */  beq        $t1, $t4, .L800D043C
/* D1028 800D0428 00000000 */   nop
/* D102C 800D042C 93AA0025 */  lbu        $t2, 0x25($sp)
/* D1030 800D0430 A3A9001F */  sb         $t1, 0x1f($sp)
/* D1034 800D0434 10000007 */  b          .L800D0454
/* D1038 800D0438 A3AA001E */   sb        $t2, 0x1e($sp)
.L800D043C:
/* D103C 800D043C 8FAD0150 */  lw         $t5, 0x150($sp)
/* D1040 800D0440 97AF0024 */  lhu        $t7, 0x24($sp)
/* D1044 800D0444 8DAE0060 */  lw         $t6, 0x60($t5)
/* D1048 800D0448 01EE082A */  slt        $at, $t7, $t6
/* D104C 800D044C 1020FFE9 */  beqz       $at, .L800D03F4
/* D1050 800D0450 00000000 */   nop
.L800D0454:
/* D1054 800D0454 97A80024 */  lhu        $t0, 0x24($sp)
/* D1058 800D0458 24010001 */  addiu      $at, $zero, 1
/* D105C 800D045C 11010007 */  beq        $t0, $at, .L800D047C
/* D1060 800D0460 00000000 */   nop
/* D1064 800D0464 8FB80150 */  lw         $t8, 0x150($sp)
/* D1068 800D0468 93B9001F */  lbu        $t9, 0x1f($sp)
/* D106C 800D046C 930B0064 */  lbu        $t3, 0x64($t8)
/* D1070 800D0470 032B082A */  slt        $at, $t9, $t3
/* D1074 800D0474 1420FFC4 */  bnez       $at, .L800D0388
/* D1078 800D0478 00000000 */   nop
.L800D047C:
/* D107C 800D047C 97AC0024 */  lhu        $t4, 0x24($sp)
/* D1080 800D0480 24010001 */  addiu      $at, $zero, 1
/* D1084 800D0484 11810003 */  beq        $t4, $at, .L800D0494
/* D1088 800D0488 00000000 */   nop
/* D108C 800D048C 10000024 */  b          .L800D0520
/* D1090 800D0490 24020003 */   addiu     $v0, $zero, 3
.L800D0494:
/* D1094 800D0494 8FA90148 */  lw         $t1, 0x148($sp)
/* D1098 800D0498 8FAD0158 */  lw         $t5, 0x158($sp)
/* D109C 800D049C 00095200 */  sll        $t2, $t1, 8
/* D10A0 800D04A0 ADAA0000 */  sw         $t2, ($t5)
/* D10A4 800D04A4 8FAE0158 */  lw         $t6, 0x158($sp)
/* D10A8 800D04A8 97AF002C */  lhu        $t7, 0x2c($sp)
/* D10AC 800D04AC A5CF0008 */  sh         $t7, 8($t6)
/* D10B0 800D04B0 8FB80158 */  lw         $t8, 0x158($sp)
/* D10B4 800D04B4 8FA80028 */  lw         $t0, 0x28($sp)
/* D10B8 800D04B8 AF080004 */  sw         $t0, 4($t8)
/* D10BC 800D04BC AFA00020 */  sw         $zero, 0x20($sp)
.L800D04C0:
/* D10C0 800D04C0 8FB90020 */  lw         $t9, 0x20($sp)
/* D10C4 800D04C4 8FAC0158 */  lw         $t4, 0x158($sp)
/* D10C8 800D04C8 03B95821 */  addu       $t3, $sp, $t9
/* D10CC 800D04CC 916B0038 */  lbu        $t3, 0x38($t3)
/* D10D0 800D04D0 01994821 */  addu       $t1, $t4, $t9
/* D10D4 800D04D4 A12B000E */  sb         $t3, 0xe($t1)
/* D10D8 800D04D8 8FAA0020 */  lw         $t2, 0x20($sp)
/* D10DC 800D04DC 254D0001 */  addiu      $t5, $t2, 1
/* D10E0 800D04E0 29A10010 */  slti       $at, $t5, 0x10
/* D10E4 800D04E4 1420FFF6 */  bnez       $at, .L800D04C0
/* D10E8 800D04E8 AFAD0020 */   sw        $t5, 0x20($sp)
/* D10EC 800D04EC AFA00020 */  sw         $zero, 0x20($sp)
.L800D04F0:
/* D10F0 800D04F0 8FAF0020 */  lw         $t7, 0x20($sp)
/* D10F4 800D04F4 8FA80158 */  lw         $t0, 0x158($sp)
/* D10F8 800D04F8 03AF7021 */  addu       $t6, $sp, $t7
/* D10FC 800D04FC 91CE0034 */  lbu        $t6, 0x34($t6)
/* D1100 800D0500 010FC021 */  addu       $t8, $t0, $t7
/* D1104 800D0504 A30E000A */  sb         $t6, 0xa($t8)
/* D1108 800D0508 8FAC0020 */  lw         $t4, 0x20($sp)
/* D110C 800D050C 25990001 */  addiu      $t9, $t4, 1
/* D1110 800D0510 2B210004 */  slti       $at, $t9, 4
/* D1114 800D0514 1420FFF6 */  bnez       $at, .L800D04F0
/* D1118 800D0518 AFB90020 */   sw        $t9, 0x20($sp)
/* D111C 800D051C 00001025 */  or         $v0, $zero, $zero
.L800D0520:
/* D1120 800D0520 8FBF0014 */  lw         $ra, 0x14($sp)
/* D1124 800D0524 27BD0150 */  addiu      $sp, $sp, 0x150
/* D1128 800D0528 03E00008 */  jr         $ra
/* D112C 800D052C 00000000 */   nop

glabel func_800D0530
/* D1130 800D0530 27BDFF98 */  addiu      $sp, $sp, -0x68
/* D1134 800D0534 AFBF0014 */  sw         $ra, 0x14($sp)
/* D1138 800D0538 AFA40068 */  sw         $a0, 0x68($sp)
/* D113C 800D053C AFA5006C */  sw         $a1, 0x6c($sp)
/* D1140 800D0540 AFA60070 */  sw         $a2, 0x70($sp)
/* D1144 800D0544 0C02FF20 */  jal        func_800BFC80
/* D1148 800D0548 AFA00060 */   sw        $zero, 0x60($sp)
/* D114C 800D054C 8FA40068 */  lw         $a0, 0x68($sp)
/* D1150 800D0550 0C0341F4 */  jal        func_800D07D0
/* D1154 800D0554 8FA50070 */   lw        $a1, 0x70($sp)
/* D1158 800D0558 0C02FF31 */  jal        func_800BFCC4
/* D115C 800D055C AFA20060 */   sw        $v0, 0x60($sp)
/* D1160 800D0560 8FAE0060 */  lw         $t6, 0x60($sp)
/* D1164 800D0564 11C00003 */  beqz       $t6, .L800D0574
/* D1168 800D0568 00000000 */   nop
/* D116C 800D056C 10000091 */  b          .L800D07B4
/* D1170 800D0570 01C01025 */   or        $v0, $t6, $zero
.L800D0574:
/* D1174 800D0574 8FAF0068 */  lw         $t7, 0x68($sp)
/* D1178 800D0578 8FB8006C */  lw         $t8, 0x6c($sp)
/* D117C 800D057C AF0F0004 */  sw         $t7, 4($t8)
/* D1180 800D0580 8FA8006C */  lw         $t0, 0x6c($sp)
/* D1184 800D0584 8FB90070 */  lw         $t9, 0x70($sp)
/* D1188 800D0588 AD190008 */  sw         $t9, 8($t0)
/* D118C 800D058C 8FA9006C */  lw         $t1, 0x6c($sp)
/* D1190 800D0590 AD200000 */  sw         $zero, ($t1)
/* D1194 800D0594 8FAA006C */  lw         $t2, 0x6c($sp)
/* D1198 800D0598 A1400065 */  sb         $zero, 0x65($t2)
/* D119C 800D059C 0C031E0F */  jal        func_800C783C
/* D11A0 800D05A0 8FA4006C */   lw        $a0, 0x6c($sp)
/* D11A4 800D05A4 AFA20060 */  sw         $v0, 0x60($sp)
/* D11A8 800D05A8 8FAB0060 */  lw         $t3, 0x60($sp)
/* D11AC 800D05AC 11600003 */  beqz       $t3, .L800D05BC
/* D11B0 800D05B0 00000000 */   nop
/* D11B4 800D05B4 1000007F */  b          .L800D07B4
/* D11B8 800D05B8 01601025 */   or        $v0, $t3, $zero
.L800D05BC:
/* D11BC 800D05BC 8FAC006C */  lw         $t4, 0x6c($sp)
/* D11C0 800D05C0 24060001 */  addiu      $a2, $zero, 1
/* D11C4 800D05C4 27A7003C */  addiu      $a3, $sp, 0x3c
/* D11C8 800D05C8 8D840004 */  lw         $a0, 4($t4)
/* D11CC 800D05CC 0C034C10 */  jal        func_800D3040
/* D11D0 800D05D0 8D850008 */   lw        $a1, 8($t4)
/* D11D4 800D05D4 AFA20060 */  sw         $v0, 0x60($sp)
/* D11D8 800D05D8 8FAD0060 */  lw         $t5, 0x60($sp)
/* D11DC 800D05DC 11A00003 */  beqz       $t5, .L800D05EC
/* D11E0 800D05E0 00000000 */   nop
/* D11E4 800D05E4 10000073 */  b          .L800D07B4
/* D11E8 800D05E8 01A01025 */   or        $v0, $t5, $zero
.L800D05EC:
/* D11EC 800D05EC 27A4003C */  addiu      $a0, $sp, 0x3c
/* D11F0 800D05F0 27A5005E */  addiu      $a1, $sp, 0x5e
/* D11F4 800D05F4 0C031AEB */  jal        func_800C6BAC
/* D11F8 800D05F8 27A6005C */   addiu     $a2, $sp, 0x5c
/* D11FC 800D05FC 27AE003C */  addiu      $t6, $sp, 0x3c
/* D1200 800D0600 AFAE0038 */  sw         $t6, 0x38($sp)
/* D1204 800D0604 95CF001C */  lhu        $t7, 0x1c($t6)
/* D1208 800D0608 97B8005E */  lhu        $t8, 0x5e($sp)
/* D120C 800D060C 15F80005 */  bne        $t7, $t8, .L800D0624
/* D1210 800D0610 00000000 */   nop
/* D1214 800D0614 95D9001E */  lhu        $t9, 0x1e($t6)
/* D1218 800D0618 97A8005C */  lhu        $t0, 0x5c($sp)
/* D121C 800D061C 1328000F */  beq        $t9, $t0, .L800D065C
/* D1220 800D0620 00000000 */   nop
.L800D0624:
/* D1224 800D0624 8FA4006C */  lw         $a0, 0x6c($sp)
/* D1228 800D0628 0C031C0B */  jal        func_800C702C
/* D122C 800D062C 8FA50038 */   lw        $a1, 0x38($sp)
/* D1230 800D0630 AFA20060 */  sw         $v0, 0x60($sp)
/* D1234 800D0634 8FA90060 */  lw         $t1, 0x60($sp)
/* D1238 800D0638 11200003 */  beqz       $t1, .L800D0648
/* D123C 800D063C 00000000 */   nop
/* D1240 800D0640 1000005C */  b          .L800D07B4
/* D1244 800D0644 01201025 */   or        $v0, $t1, $zero
.L800D0648:
/* D1248 800D0648 8FAA0060 */  lw         $t2, 0x60($sp)
/* D124C 800D064C 11400003 */  beqz       $t2, .L800D065C
/* D1250 800D0650 00000000 */   nop
/* D1254 800D0654 10000057 */  b          .L800D07B4
/* D1258 800D0658 01401025 */   or        $v0, $t2, $zero
.L800D065C:
/* D125C 800D065C 8FAB0038 */  lw         $t3, 0x38($sp)
/* D1260 800D0660 956C0018 */  lhu        $t4, 0x18($t3)
/* D1264 800D0664 318D0001 */  andi       $t5, $t4, 1
/* D1268 800D0668 15A00013 */  bnez       $t5, .L800D06B8
/* D126C 800D066C 00000000 */   nop
/* D1270 800D0670 8FA4006C */  lw         $a0, 0x6c($sp)
/* D1274 800D0674 01602825 */  or         $a1, $t3, $zero
/* D1278 800D0678 0C031B05 */  jal        func_800C6C14
/* D127C 800D067C 27A60018 */   addiu     $a2, $sp, 0x18
/* D1280 800D0680 AFA20060 */  sw         $v0, 0x60($sp)
/* D1284 800D0684 8FAF0060 */  lw         $t7, 0x60($sp)
/* D1288 800D0688 11E00003 */  beqz       $t7, .L800D0698
/* D128C 800D068C 00000000 */   nop
/* D1290 800D0690 10000048 */  b          .L800D07B4
/* D1294 800D0694 01E01025 */   or        $v0, $t7, $zero
.L800D0698:
/* D1298 800D0698 27B80018 */  addiu      $t8, $sp, 0x18
/* D129C 800D069C AFB80038 */  sw         $t8, 0x38($sp)
/* D12A0 800D06A0 970E0018 */  lhu        $t6, 0x18($t8)
/* D12A4 800D06A4 31D90001 */  andi       $t9, $t6, 1
/* D12A8 800D06A8 17200003 */  bnez       $t9, .L800D06B8
/* D12AC 800D06AC 00000000 */   nop
/* D12B0 800D06B0 10000040 */  b          .L800D07B4
/* D12B4 800D06B4 2402000B */   addiu     $v0, $zero, 0xb
.L800D06B8:
/* D12B8 800D06B8 AFA00064 */  sw         $zero, 0x64($sp)
.L800D06BC:
/* D12BC 800D06BC 8FA80038 */  lw         $t0, 0x38($sp)
/* D12C0 800D06C0 8FA90064 */  lw         $t1, 0x64($sp)
/* D12C4 800D06C4 8FAD006C */  lw         $t5, 0x6c($sp)
/* D12C8 800D06C8 01095021 */  addu       $t2, $t0, $t1
/* D12CC 800D06CC 914C0000 */  lbu        $t4, ($t2)
/* D12D0 800D06D0 01A95821 */  addu       $t3, $t5, $t1
/* D12D4 800D06D4 A16C000C */  sb         $t4, 0xc($t3)
/* D12D8 800D06D8 8FAF0064 */  lw         $t7, 0x64($sp)
/* D12DC 800D06DC 25F80001 */  addiu      $t8, $t7, 1
/* D12E0 800D06E0 2B010020 */  slti       $at, $t8, 0x20
/* D12E4 800D06E4 1420FFF5 */  bnez       $at, .L800D06BC
/* D12E8 800D06E8 AFB80064 */   sw        $t8, 0x64($sp)
/* D12EC 800D06EC 8FAE0038 */  lw         $t6, 0x38($sp)
/* D12F0 800D06F0 8FA8006C */  lw         $t0, 0x6c($sp)
/* D12F4 800D06F4 24060007 */  addiu      $a2, $zero, 7
/* D12F8 800D06F8 91D9001B */  lbu        $t9, 0x1b($t6)
/* D12FC 800D06FC 240E0010 */  addiu      $t6, $zero, 0x10
/* D1300 800D0700 AD19004C */  sw         $t9, 0x4c($t0)
/* D1304 800D0704 8FAA0038 */  lw         $t2, 0x38($sp)
/* D1308 800D0708 8FA9006C */  lw         $t1, 0x6c($sp)
/* D130C 800D070C 24080008 */  addiu      $t0, $zero, 8
/* D1310 800D0710 914D001A */  lbu        $t5, 0x1a($t2)
/* D1314 800D0714 A12D0064 */  sb         $t5, 0x64($t1)
/* D1318 800D0718 8FAC006C */  lw         $t4, 0x6c($sp)
/* D131C 800D071C 918B0064 */  lbu        $t3, 0x64($t4)
/* D1320 800D0720 000B7840 */  sll        $t7, $t3, 1
/* D1324 800D0724 25F80003 */  addiu      $t8, $t7, 3
/* D1328 800D0728 AD980060 */  sw         $t8, 0x60($t4)
/* D132C 800D072C 8FB9006C */  lw         $t9, 0x6c($sp)
/* D1330 800D0730 AF2E0050 */  sw         $t6, 0x50($t9)
/* D1334 800D0734 8FAA006C */  lw         $t2, 0x6c($sp)
/* D1338 800D0738 AD480054 */  sw         $t0, 0x54($t2)
/* D133C 800D073C 8FAD006C */  lw         $t5, 0x6c($sp)
/* D1340 800D0740 91A90064 */  lbu        $t1, 0x64($t5)
/* D1344 800D0744 000958C0 */  sll        $t3, $t1, 3
/* D1348 800D0748 256F0008 */  addiu      $t7, $t3, 8
/* D134C 800D074C ADAF0058 */  sw         $t7, 0x58($t5)
/* D1350 800D0750 8FB8006C */  lw         $t8, 0x6c($sp)
/* D1354 800D0754 930E0064 */  lbu        $t6, 0x64($t8)
/* D1358 800D0758 8F0C0058 */  lw         $t4, 0x58($t8)
/* D135C 800D075C 000EC8C0 */  sll        $t9, $t6, 3
/* D1360 800D0760 01994021 */  addu       $t0, $t4, $t9
/* D1364 800D0764 AF08005C */  sw         $t0, 0x5c($t8)
/* D1368 800D0768 8FAA006C */  lw         $t2, 0x6c($sp)
/* D136C 800D076C 8D440004 */  lw         $a0, 4($t2)
/* D1370 800D0770 8D450008 */  lw         $a1, 8($t2)
/* D1374 800D0774 0C034C10 */  jal        func_800D3040
/* D1378 800D0778 2547002C */   addiu     $a3, $t2, 0x2c
/* D137C 800D077C AFA20060 */  sw         $v0, 0x60($sp)
/* D1380 800D0780 8FA90060 */  lw         $t1, 0x60($sp)
/* D1384 800D0784 11200003 */  beqz       $t1, .L800D0794
/* D1388 800D0788 00000000 */   nop
/* D138C 800D078C 10000009 */  b          .L800D07B4
/* D1390 800D0790 01201025 */   or        $v0, $t1, $zero
.L800D0794:
/* D1394 800D0794 0C034284 */  jal        func_800D0A10
/* D1398 800D0798 8FA4006C */   lw        $a0, 0x6c($sp)
/* D139C 800D079C 8FAB006C */  lw         $t3, 0x6c($sp)
/* D13A0 800D07A0 AFA20060 */  sw         $v0, 0x60($sp)
/* D13A4 800D07A4 8D6F0000 */  lw         $t7, ($t3)
/* D13A8 800D07A8 35ED0001 */  ori        $t5, $t7, 1
/* D13AC 800D07AC AD6D0000 */  sw         $t5, ($t3)
/* D13B0 800D07B0 8FA20060 */  lw         $v0, 0x60($sp)
.L800D07B4:
/* D13B4 800D07B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D13B8 800D07B8 27BD0068 */  addiu      $sp, $sp, 0x68
/* D13BC 800D07BC 03E00008 */  jr         $ra
/* D13C0 800D07C0 00000000 */   nop
/* D13C4 800D07C4 00000000 */  nop
/* D13C8 800D07C8 00000000 */  nop
/* D13CC 800D07CC 00000000 */  nop

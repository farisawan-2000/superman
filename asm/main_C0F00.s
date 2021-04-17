.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C0300
/* C0F00 800C0300 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C0F04 800C0304 AFBF0014 */  sw         $ra, 0x14($sp)
/* C0F08 800C0308 0C030284 */  jal        func_800C0A10
/* C0F0C 800C030C 24040001 */   addiu     $a0, $zero, 1
/* C0F10 800C0310 8E500008 */  lw         $s0, 8($s2)
/* C0F14 800C0314 0040A025 */  or         $s4, $v0, $zero
/* C0F18 800C0318 12000012 */  beqz       $s0, .L800C0364
/* C0F1C 800C031C 00000000 */   nop
.L800C0320:
/* C0F20 800C0320 8E0E0010 */  lw         $t6, 0x10($s0)
/* C0F24 800C0324 8E110000 */  lw         $s1, ($s0)
/* C0F28 800C0328 166E000C */  bne        $s3, $t6, .L800C035C
/* C0F2C 800C032C 00000000 */   nop
/* C0F30 800C0330 12200005 */  beqz       $s1, .L800C0348
/* C0F34 800C0334 00000000 */   nop
/* C0F38 800C0338 8E2F0008 */  lw         $t7, 8($s1)
/* C0F3C 800C033C 8E180008 */  lw         $t8, 8($s0)
/* C0F40 800C0340 01F8C821 */  addu       $t9, $t7, $t8
/* C0F44 800C0344 AE390008 */  sw         $t9, 8($s1)
.L800C0348:
/* C0F48 800C0348 0C02F8AC */  jal        func_800BE2B0
/* C0F4C 800C034C 02002025 */   or        $a0, $s0, $zero
/* C0F50 800C0350 02002025 */  or         $a0, $s0, $zero
/* C0F54 800C0354 0C02F8B8 */  jal        func_800BE2E0
/* C0F58 800C0358 02402825 */   or        $a1, $s2, $zero
.L800C035C:
/* C0F5C 800C035C 1620FFF0 */  bnez       $s1, .L800C0320
/* C0F60 800C0360 02208025 */   or        $s0, $s1, $zero
.L800C0364:
/* C0F64 800C0364 0C030284 */  jal        func_800C0A10
/* C0F68 800C0368 02802025 */   or        $a0, $s4, $zero
/* C0F6C 800C036C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C0F70 800C0370 27BD0018 */  addiu      $sp, $sp, 0x18
/* C0F74 800C0374 03E00008 */  jr         $ra
/* C0F78 800C0378 00000000 */   nop

glabel func_800C037C
/* C0F7C 800C037C 03E00008 */  jr         $ra
/* C0F80 800C0380 00000000 */   nop

glabel func_800C0384
/* C0F84 800C0384 03E00008 */  jr         $ra
/* C0F88 800C0388 00000000 */   nop

glabel func_800C038C
/* C0F8C 800C038C 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* C0F90 800C0390 AFBE0040 */  sw         $fp, 0x40($sp)
/* C0F94 800C0394 AFB7003C */  sw         $s7, 0x3c($sp)
/* C0F98 800C0398 AFB60038 */  sw         $s6, 0x38($sp)
/* C0F9C 800C039C AFB40030 */  sw         $s4, 0x30($sp)
/* C0FA0 800C03A0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* C0FA4 800C03A4 3C01800E */  lui        $at, 0x800e
/* C0FA8 800C03A8 0080B025 */  or         $s6, $a0, $zero
/* C0FAC 800C03AC AFBF0044 */  sw         $ra, 0x44($sp)
/* C0FB0 800C03B0 AFB50034 */  sw         $s5, 0x34($sp)
/* C0FB4 800C03B4 AFB3002C */  sw         $s3, 0x2c($sp)
/* C0FB8 800C03B8 AFB20028 */  sw         $s2, 0x28($sp)
/* C0FBC 800C03BC AFB10024 */  sw         $s1, 0x24($sp)
/* C0FC0 800C03C0 AFB00020 */  sw         $s0, 0x20($sp)
/* C0FC4 800C03C4 D434F8D0 */  ldc1       $f20, -0x730($at)
/* C0FC8 800C03C8 24940028 */  addiu      $s4, $a0, 0x28
/* C0FCC 800C03CC 24970014 */  addiu      $s7, $a0, 0x14
/* C0FD0 800C03D0 241E0001 */  addiu      $fp, $zero, 1
.L800C03D4:
/* C0FD4 800C03D4 86C20028 */  lh         $v0, 0x28($s6)
/* C0FD8 800C03D8 24010005 */  addiu      $at, $zero, 5
/* C0FDC 800C03DC 240E0005 */  addiu      $t6, $zero, 5
/* C0FE0 800C03E0 14410007 */  bne        $v0, $at, .L800C0400
/* C0FE4 800C03E4 02E02025 */   or        $a0, $s7, $zero
/* C0FE8 800C03E8 A7AE00F4 */  sh         $t6, 0xf4($sp)
/* C0FEC 800C03EC 8EC60048 */  lw         $a2, 0x48($s6)
/* C0FF0 800C03F0 0C03031B */  jal        func_800C0C6C
/* C0FF4 800C03F4 27A500F4 */   addiu     $a1, $sp, 0xf4
/* C0FF8 800C03F8 10000122 */  b          .L800C0884
/* C0FFC 800C03FC 02E02025 */   or        $a0, $s7, $zero
.L800C0400:
/* C1000 800C0400 8ED5002C */  lw         $s5, 0x2c($s6)
/* C1004 800C0404 2C410009 */  sltiu      $at, $v0, 9
/* C1008 800C0408 1020011D */  beqz       $at, .L800C0880
/* C100C 800C040C 8EB1001C */   lw        $s1, 0x1c($s5)
/* C1010 800C0410 00027880 */  sll        $t7, $v0, 2
/* C1014 800C0414 3C01800E */  lui        $at, %hi(D_800DF8D8)
/* C1018 800C0418 002F0821 */  addu       $at, $at, $t7
/* C101C 800C041C 8C2FF8D8 */  lw         $t7, %lo(D_800DF8D8)($at)
/* C1020 800C0420 01E00008 */  jr         $t7
/* C1024 800C0424 00000000 */   nop
/* C1028 800C0428 8EB80028 */  lw         $t8, 0x28($s5)
/* C102C 800C042C 57000115 */  bnezl      $t8, .L800C0884
/* C1030 800C0430 02E02025 */   or        $a0, $s7, $zero
/* C1034 800C0434 12200112 */  beqz       $s1, .L800C0880
/* C1038 800C0438 02A02825 */   or        $a1, $s5, $zero
/* C103C 800C043C A7A000E2 */  sh         $zero, 0xe2($sp)
/* C1040 800C0440 86B90020 */  lh         $t9, 0x20($s5)
/* C1044 800C0444 A3A000E4 */  sb         $zero, 0xe4($sp)
/* C1048 800C0448 27A600E0 */  addiu      $a2, $sp, 0xe0
/* C104C 800C044C A7B900E0 */  sh         $t9, 0xe0($sp)
/* C1050 800C0450 0C03040A */  jal        func_800C1028
/* C1054 800C0454 8EC40038 */   lw        $a0, 0x38($s6)
/* C1058 800C0458 8E270000 */  lw         $a3, ($s1)
/* C105C 800C045C 86AF002C */  lh         $t7, 0x2c($s5)
/* C1060 800C0460 2401007F */  addiu      $at, $zero, 0x7f
/* C1064 800C0464 90EE000C */  lbu        $t6, 0xc($a3)
/* C1068 800C0468 2408007F */  addiu      $t0, $zero, 0x7f
/* C106C 800C046C 01CF0019 */  multu      $t6, $t7
/* C1070 800C0470 0000C012 */  mflo       $t8
/* C1074 800C0474 00000000 */  nop
/* C1078 800C0478 00000000 */  nop
/* C107C 800C047C 0301001A */  div        $zero, $t8, $at
/* C1080 800C0480 0000C812 */  mflo       $t9
/* C1084 800C0484 A7B900BA */  sh         $t9, 0xba($sp)
/* C1088 800C0488 922F000C */  lbu        $t7, 0xc($s1)
/* C108C 800C048C 92AE002E */  lbu        $t6, 0x2e($s5)
/* C1090 800C0490 01CF1821 */  addu       $v1, $t6, $t7
/* C1094 800C0494 2463FFC0 */  addiu      $v1, $v1, -0x40
/* C1098 800C0498 0003C400 */  sll        $t8, $v1, 0x10
/* C109C 800C049C 00181C03 */  sra        $v1, $t8, 0x10
/* C10A0 800C04A0 5C600003 */  bgtzl      $v1, .L800C04B0
/* C10A4 800C04A4 2861007F */   slti      $at, $v1, 0x7f
/* C10A8 800C04A8 00001825 */  or         $v1, $zero, $zero
/* C10AC 800C04AC 2861007F */  slti       $at, $v1, 0x7f
.L800C04B0:
/* C10B0 800C04B0 10200003 */  beqz       $at, .L800C04C0
/* C10B4 800C04B4 00000000 */   nop
/* C10B8 800C04B8 10000001 */  b          .L800C04C0
/* C10BC 800C04BC 306800FF */   andi      $t0, $v1, 0xff
.L800C04C0:
/* C10C0 800C04C0 C6A40024 */  lwc1       $f4, 0x24($s5)
/* C10C4 800C04C4 02A02825 */  or         $a1, $s5, $zero
/* C10C8 800C04C8 E7A400D0 */  swc1       $f4, 0xd0($sp)
/* C10CC 800C04CC 8CF00000 */  lw         $s0, ($a3)
/* C10D0 800C04D0 8E260008 */  lw         $a2, 8($s1)
/* C10D4 800C04D4 8EC40038 */  lw         $a0, 0x38($s6)
/* C10D8 800C04D8 0C030EDC */  jal        func_800C3B70
/* C10DC 800C04DC A3A800D7 */   sb        $t0, 0xd7($sp)
/* C10E0 800C04E0 93A600D7 */  lbu        $a2, 0xd7($sp)
/* C10E4 800C04E4 AEBE0028 */  sw         $fp, 0x28($s5)
/* C10E8 800C04E8 8EC40038 */  lw         $a0, 0x38($s6)
/* C10EC 800C04EC 0C031748 */  jal        func_800C5D20
/* C10F0 800C04F0 02A02825 */   or        $a1, $s5, $zero
/* C10F4 800C04F4 8EC40038 */  lw         $a0, 0x38($s6)
/* C10F8 800C04F8 02A02825 */  or         $a1, $s5, $zero
/* C10FC 800C04FC 87A600BA */  lh         $a2, 0xba($sp)
/* C1100 800C0500 0C0302AC */  jal        func_800C0AB0
/* C1104 800C0504 02003825 */   or        $a3, $s0, $zero
/* C1108 800C0508 8EC40038 */  lw         $a0, 0x38($s6)
/* C110C 800C050C 02A02825 */  or         $a1, $s5, $zero
/* C1110 800C0510 0C0316F4 */  jal        func_800C5BD0
/* C1114 800C0514 8FA600D0 */   lw        $a2, 0xd0($sp)
/* C1118 800C0518 8EC40038 */  lw         $a0, 0x38($s6)
/* C111C 800C051C 02A02825 */  or         $a1, $s5, $zero
/* C1120 800C0520 0C03359C */  jal        func_800CD670
/* C1124 800C0524 92A6002F */   lbu       $a2, 0x2f($s5)
/* C1128 800C0528 240E0006 */  addiu      $t6, $zero, 6
/* C112C 800C052C A7AE00C0 */  sh         $t6, 0xc0($sp)
/* C1130 800C0530 AFB500C4 */  sw         $s5, 0xc4($sp)
/* C1134 800C0534 8E2F0000 */  lw         $t7, ($s1)
/* C1138 800C0538 C6A20024 */  lwc1       $f2, 0x24($s5)
/* C113C 800C053C 3C067FFF */  lui        $a2, 0x7fff
/* C1140 800C0540 8DE20000 */  lw         $v0, ($t7)
/* C1144 800C0544 02E02025 */  or         $a0, $s7, $zero
/* C1148 800C0548 44823000 */  mtc1       $v0, $f6
/* C114C 800C054C 00000000 */  nop
/* C1150 800C0550 46803220 */  cvt.s.w    $f8, $f6
/* C1154 800C0554 46024283 */  div.s      $f10, $f8, $f2
/* C1158 800C0558 46005021 */  cvt.d.s    $f0, $f10
/* C115C 800C055C 4620A03C */  c.lt.d     $f20, $f0
/* C1160 800C0560 00000000 */  nop
/* C1164 800C0564 45020004 */  bc1fl      .L800C0578
/* C1168 800C0568 4620010D */   trunc.w.d $f4, $f0
/* C116C 800C056C 10000004 */  b          .L800C0580
/* C1170 800C0570 34C6FFFF */   ori       $a2, $a2, 0xffff
/* C1174 800C0574 4620010D */  trunc.w.d  $f4, $f0
.L800C0578:
/* C1178 800C0578 44062000 */  mfc1       $a2, $f4
/* C117C 800C057C 00000000 */  nop
.L800C0580:
/* C1180 800C0580 0C03031B */  jal        func_800C0C6C
/* C1184 800C0584 27A500C0 */   addiu     $a1, $sp, 0xc0
/* C1188 800C0588 100000BE */  b          .L800C0884
/* C118C 800C058C 02E02025 */   or        $a0, $s7, $zero
/* C1190 800C0590 8EB90028 */  lw         $t9, 0x28($s5)
/* C1194 800C0594 57D900BB */  bnel       $fp, $t9, .L800C0884
/* C1198 800C0598 02E02025 */   or        $a0, $s7, $zero
/* C119C 800C059C 122000B8 */  beqz       $s1, .L800C0880
/* C11A0 800C05A0 02A02825 */   or        $a1, $s5, $zero
/* C11A4 800C05A4 8E2E0000 */  lw         $t6, ($s1)
/* C11A8 800C05A8 C6A20024 */  lwc1       $f2, 0x24($s5)
/* C11AC 800C05AC 3C077FFF */  lui        $a3, 0x7fff
/* C11B0 800C05B0 8DC20008 */  lw         $v0, 8($t6)
/* C11B4 800C05B4 00003025 */  or         $a2, $zero, $zero
/* C11B8 800C05B8 44823000 */  mtc1       $v0, $f6
/* C11BC 800C05BC 00000000 */  nop
/* C11C0 800C05C0 46803220 */  cvt.s.w    $f8, $f6
/* C11C4 800C05C4 46024283 */  div.s      $f10, $f8, $f2
/* C11C8 800C05C8 46005021 */  cvt.d.s    $f0, $f10
/* C11CC 800C05CC 4620A03C */  c.lt.d     $f20, $f0
/* C11D0 800C05D0 00000000 */  nop
/* C11D4 800C05D4 45020004 */  bc1fl      .L800C05E8
/* C11D8 800C05D8 4620010D */   trunc.w.d $f4, $f0
/* C11DC 800C05DC 10000004 */  b          .L800C05F0
/* C11E0 800C05E0 34E7FFFF */   ori       $a3, $a3, 0xffff
/* C11E4 800C05E4 4620010D */  trunc.w.d  $f4, $f0
.L800C05E8:
/* C11E8 800C05E8 44072000 */  mfc1       $a3, $f4
/* C11EC 800C05EC 00000000 */  nop
.L800C05F0:
/* C11F0 800C05F0 00E08025 */  or         $s0, $a3, $zero
/* C11F4 800C05F4 0C0302AC */  jal        func_800C0AB0
/* C11F8 800C05F8 8EC40038 */   lw        $a0, 0x38($s6)
/* C11FC 800C05FC 1200000B */  beqz       $s0, .L800C062C
/* C1200 800C0600 02A02825 */   or        $a1, $s5, $zero
/* C1204 800C0604 24180007 */  addiu      $t8, $zero, 7
/* C1208 800C0608 A7B800C0 */  sh         $t8, 0xc0($sp)
/* C120C 800C060C AFB500C4 */  sw         $s5, 0xc4($sp)
/* C1210 800C0610 02E02025 */  or         $a0, $s7, $zero
/* C1214 800C0614 27A500C0 */  addiu      $a1, $sp, 0xc0
/* C1218 800C0618 0C03031B */  jal        func_800C0C6C
/* C121C 800C061C 02003025 */   or        $a2, $s0, $zero
/* C1220 800C0620 24190002 */  addiu      $t9, $zero, 2
/* C1224 800C0624 10000096 */  b          .L800C0880
/* C1228 800C0628 AEB90028 */   sw        $t9, 0x28($s5)
.L800C062C:
/* C122C 800C062C 0C034E6C */  jal        func_800D39B0
/* C1230 800C0630 8EC40038 */   lw        $a0, 0x38($s6)
/* C1234 800C0634 8EC40038 */  lw         $a0, 0x38($s6)
/* C1238 800C0638 0C0303A4 */  jal        func_800C0E90
/* C123C 800C063C 02A02825 */   or        $a1, $s5, $zero
/* C1240 800C0640 02E09025 */  or         $s2, $s7, $zero
/* C1244 800C0644 02A09825 */  or         $s3, $s5, $zero
/* C1248 800C0648 0C0300C0 */  jal        func_800C0300
/* C124C 800C064C AFB4004C */   sw        $s4, 0x4c($sp)
/* C1250 800C0650 8FB4004C */  lw         $s4, 0x4c($sp)
/* C1254 800C0654 1000008A */  b          .L800C0880
/* C1258 800C0658 AEA00028 */   sw        $zero, 0x28($s5)
/* C125C 800C065C 8EAF0028 */  lw         $t7, 0x28($s5)
/* C1260 800C0660 928E0008 */  lbu        $t6, 8($s4)
/* C1264 800C0664 17CF0086 */  bne        $fp, $t7, .L800C0880
/* C1268 800C0668 A2AE002E */   sb        $t6, 0x2e($s5)
/* C126C 800C066C 12200084 */  beqz       $s1, .L800C0880
/* C1270 800C0670 02A02825 */   or        $a1, $s5, $zero
/* C1274 800C0674 9239000C */  lbu        $t9, 0xc($s1)
/* C1278 800C0678 31D800FF */  andi       $t8, $t6, 0xff
/* C127C 800C067C 2408007F */  addiu      $t0, $zero, 0x7f
/* C1280 800C0680 03191821 */  addu       $v1, $t8, $t9
/* C1284 800C0684 2463FFC0 */  addiu      $v1, $v1, -0x40
/* C1288 800C0688 00037400 */  sll        $t6, $v1, 0x10
/* C128C 800C068C 000E1C03 */  sra        $v1, $t6, 0x10
/* C1290 800C0690 5C600003 */  bgtzl      $v1, .L800C06A0
/* C1294 800C0694 2861007F */   slti      $at, $v1, 0x7f
/* C1298 800C0698 00001825 */  or         $v1, $zero, $zero
/* C129C 800C069C 2861007F */  slti       $at, $v1, 0x7f
.L800C06A0:
/* C12A0 800C06A0 10200003 */  beqz       $at, .L800C06B0
/* C12A4 800C06A4 00000000 */   nop
/* C12A8 800C06A8 10000001 */  b          .L800C06B0
/* C12AC 800C06AC 306800FF */   andi      $t0, $v1, 0xff
.L800C06B0:
/* C12B0 800C06B0 8EC40038 */  lw         $a0, 0x38($s6)
/* C12B4 800C06B4 0C031748 */  jal        func_800C5D20
/* C12B8 800C06B8 310600FF */   andi      $a2, $t0, 0xff
/* C12BC 800C06BC 10000071 */  b          .L800C0884
/* C12C0 800C06C0 02E02025 */   or        $a0, $s7, $zero
/* C12C4 800C06C4 C6800008 */  lwc1       $f0, 8($s4)
/* C12C8 800C06C8 3C01800E */  lui        $at, %hi(D_800DF900)
/* C12CC 800C06CC 02A02825 */  or         $a1, $s5, $zero
/* C12D0 800C06D0 E6A00024 */  swc1       $f0, 0x24($s5)
/* C12D4 800C06D4 D428F900 */  ldc1       $f8, %lo(D_800DF900)($at)
/* C12D8 800C06D8 460001A1 */  cvt.d.s    $f6, $f0
/* C12DC 800C06DC 3C01800E */  lui        $at, %hi(D_800DF908)
/* C12E0 800C06E0 4628303C */  c.lt.d     $f6, $f8
/* C12E4 800C06E4 00000000 */  nop
/* C12E8 800C06E8 45020004 */  bc1fl      .L800C06FC
/* C12EC 800C06EC 8EB80028 */   lw        $t8, 0x28($s5)
/* C12F0 800C06F0 C42AF908 */  lwc1       $f10, %lo(D_800DF908)($at)
/* C12F4 800C06F4 E6AA0024 */  swc1       $f10, 0x24($s5)
/* C12F8 800C06F8 8EB80028 */  lw         $t8, 0x28($s5)
.L800C06FC:
/* C12FC 800C06FC 57D80061 */  bnel       $fp, $t8, .L800C0884
/* C1300 800C0700 02E02025 */   or        $a0, $s7, $zero
/* C1304 800C0704 8EC40038 */  lw         $a0, 0x38($s6)
/* C1308 800C0708 0C0316F4 */  jal        func_800C5BD0
/* C130C 800C070C 8EA60024 */   lw        $a2, 0x24($s5)
/* C1310 800C0710 1000005C */  b          .L800C0884
/* C1314 800C0714 02E02025 */   or        $a0, $s7, $zero
/* C1318 800C0718 8EAE0028 */  lw         $t6, 0x28($s5)
/* C131C 800C071C 92990008 */  lbu        $t9, 8($s4)
/* C1320 800C0720 02A02825 */  or         $a1, $s5, $zero
/* C1324 800C0724 17CE0056 */  bne        $fp, $t6, .L800C0880
/* C1328 800C0728 A2B9002F */   sb        $t9, 0x2f($s5)
/* C132C 800C072C 8EC40038 */  lw         $a0, 0x38($s6)
/* C1330 800C0730 0C03359C */  jal        func_800CD670
/* C1334 800C0734 332600FF */   andi      $a2, $t9, 0xff
/* C1338 800C0738 10000052 */  b          .L800C0884
/* C133C 800C073C 02E02025 */   or        $a0, $s7, $zero
/* C1340 800C0740 8EB80028 */  lw         $t8, 0x28($s5)
/* C1344 800C0744 868F0008 */  lh         $t7, 8($s4)
/* C1348 800C0748 17D8004D */  bne        $fp, $t8, .L800C0880
/* C134C 800C074C A6AF002C */   sh        $t7, 0x2c($s5)
/* C1350 800C0750 5220004C */  beql       $s1, $zero, .L800C0884
/* C1354 800C0754 02E02025 */   or        $a0, $s7, $zero
/* C1358 800C0758 8E390000 */  lw         $t9, ($s1)
/* C135C 800C075C 86AF002C */  lh         $t7, 0x2c($s5)
/* C1360 800C0760 2401007F */  addiu      $at, $zero, 0x7f
/* C1364 800C0764 932E000D */  lbu        $t6, 0xd($t9)
/* C1368 800C0768 8EC40038 */  lw         $a0, 0x38($s6)
/* C136C 800C076C 02A02825 */  or         $a1, $s5, $zero
/* C1370 800C0770 01CF0019 */  multu      $t6, $t7
/* C1374 800C0774 240703E8 */  addiu      $a3, $zero, 0x3e8
/* C1378 800C0778 00004012 */  mflo       $t0
/* C137C 800C077C 00000000 */  nop
/* C1380 800C0780 00000000 */  nop
/* C1384 800C0784 0101001A */  div        $zero, $t0, $at
/* C1388 800C0788 0000C012 */  mflo       $t8
/* C138C 800C078C 00183400 */  sll        $a2, $t8, 0x10
/* C1390 800C0790 0006CC03 */  sra        $t9, $a2, 0x10
/* C1394 800C0794 0C0302AC */  jal        func_800C0AB0
/* C1398 800C0798 03203025 */   or        $a2, $t9, $zero
/* C139C 800C079C 10000039 */  b          .L800C0884
/* C13A0 800C07A0 02E02025 */   or        $a0, $s7, $zero
/* C13A4 800C07A4 8E270000 */  lw         $a3, ($s1)
/* C13A8 800C07A8 2401FFFF */  addiu      $at, $zero, -1
/* C13AC 800C07AC 02A02825 */  or         $a1, $s5, $zero
/* C13B0 800C07B0 8CE30004 */  lw         $v1, 4($a3)
/* C13B4 800C07B4 50610033 */  beql       $v1, $at, .L800C0884
/* C13B8 800C07B8 02E02025 */   or        $a0, $s7, $zero
/* C13BC 800C07BC 90EE000D */  lbu        $t6, 0xd($a3)
/* C13C0 800C07C0 86AF002C */  lh         $t7, 0x2c($s5)
/* C13C4 800C07C4 2401007F */  addiu      $at, $zero, 0x7f
/* C13C8 800C07C8 44832000 */  mtc1       $v1, $f4
/* C13CC 800C07CC 01CF0019 */  multu      $t6, $t7
/* C13D0 800C07D0 C6A20024 */  lwc1       $f2, 0x24($s5)
/* C13D4 800C07D4 468021A0 */  cvt.s.w    $f6, $f4
/* C13D8 800C07D8 3C077FFF */  lui        $a3, 0x7fff
/* C13DC 800C07DC 46023203 */  div.s      $f8, $f6, $f2
/* C13E0 800C07E0 00004012 */  mflo       $t0
/* C13E4 800C07E4 00000000 */  nop
/* C13E8 800C07E8 00000000 */  nop
/* C13EC 800C07EC 0101001A */  div        $zero, $t0, $at
/* C13F0 800C07F0 46004021 */  cvt.d.s    $f0, $f8
/* C13F4 800C07F4 00004012 */  mflo       $t0
/* C13F8 800C07F8 4620A03C */  c.lt.d     $f20, $f0
/* C13FC 800C07FC 00083400 */  sll        $a2, $t0, 0x10
/* C1400 800C0800 00067403 */  sra        $t6, $a2, 0x10
/* C1404 800C0804 01C03025 */  or         $a2, $t6, $zero
/* C1408 800C0808 45020004 */  bc1fl      .L800C081C
/* C140C 800C080C 4620028D */   trunc.w.d $f10, $f0
/* C1410 800C0810 10000004 */  b          .L800C0824
/* C1414 800C0814 34E7FFFF */   ori       $a3, $a3, 0xffff
/* C1418 800C0818 4620028D */  trunc.w.d  $f10, $f0
.L800C081C:
/* C141C 800C081C 44075000 */  mfc1       $a3, $f10
/* C1420 800C0820 00000000 */  nop
.L800C0824:
/* C1424 800C0824 00E08025 */  or         $s0, $a3, $zero
/* C1428 800C0828 0C0302AC */  jal        func_800C0AB0
/* C142C 800C082C 8EC40038 */   lw        $a0, 0x38($s6)
/* C1430 800C0830 A7BE00C0 */  sh         $fp, 0xc0($sp)
/* C1434 800C0834 AFB500C4 */  sw         $s5, 0xc4($sp)
/* C1438 800C0838 02E02025 */  or         $a0, $s7, $zero
/* C143C 800C083C 27A500C0 */  addiu      $a1, $sp, 0xc0
/* C1440 800C0840 0C03031B */  jal        func_800C0C6C
/* C1444 800C0844 02003025 */   or        $a2, $s0, $zero
/* C1448 800C0848 1000000E */  b          .L800C0884
/* C144C 800C084C 02E02025 */   or        $a0, $s7, $zero
/* C1450 800C0850 8EC40038 */  lw         $a0, 0x38($s6)
/* C1454 800C0854 0C034E6C */  jal        func_800D39B0
/* C1458 800C0858 02A02825 */   or        $a1, $s5, $zero
/* C145C 800C085C 8EC40038 */  lw         $a0, 0x38($s6)
/* C1460 800C0860 0C0303A4 */  jal        func_800C0E90
/* C1464 800C0864 02A02825 */   or        $a1, $s5, $zero
/* C1468 800C0868 02E09025 */  or         $s2, $s7, $zero
/* C146C 800C086C 02A09825 */  or         $s3, $s5, $zero
/* C1470 800C0870 0C0300C0 */  jal        func_800C0300
/* C1474 800C0874 AFB4004C */   sw        $s4, 0x4c($sp)
/* C1478 800C0878 8FB4004C */  lw         $s4, 0x4c($sp)
/* C147C 800C087C AEA00028 */  sw         $zero, 0x28($s5)
.L800C0880:
/* C1480 800C0880 02E02025 */  or         $a0, $s7, $zero
.L800C0884:
/* C1484 800C0884 0C030364 */  jal        func_800C0D90
/* C1488 800C0888 02802825 */   or        $a1, $s4, $zero
/* C148C 800C088C 1040FED1 */  beqz       $v0, .L800C03D4
/* C1490 800C0890 AEC2004C */   sw        $v0, 0x4c($s6)
/* C1494 800C0894 8ECF0050 */  lw         $t7, 0x50($s6)
/* C1498 800C0898 01E2C021 */  addu       $t8, $t7, $v0
/* C149C 800C089C AED80050 */  sw         $t8, 0x50($s6)
/* C14A0 800C08A0 8FBF0044 */  lw         $ra, 0x44($sp)
/* C14A4 800C08A4 8FBE0040 */  lw         $fp, 0x40($sp)
/* C14A8 800C08A8 8FB7003C */  lw         $s7, 0x3c($sp)
/* C14AC 800C08AC 8FB60038 */  lw         $s6, 0x38($sp)
/* C14B0 800C08B0 8FB50034 */  lw         $s5, 0x34($sp)
/* C14B4 800C08B4 8FB40030 */  lw         $s4, 0x30($sp)
/* C14B8 800C08B8 8FB3002C */  lw         $s3, 0x2c($sp)
/* C14BC 800C08BC 8FB20028 */  lw         $s2, 0x28($sp)
/* C14C0 800C08C0 8FB10024 */  lw         $s1, 0x24($sp)
/* C14C4 800C08C4 8FB00020 */  lw         $s0, 0x20($sp)
/* C14C8 800C08C8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* C14CC 800C08CC 03E00008 */  jr         $ra
/* C14D0 800C08D0 27BD0108 */   addiu     $sp, $sp, 0x108

glabel func_800C08D4
/* C14D4 800C08D4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C14D8 800C08D8 AFBF0024 */  sw         $ra, 0x24($sp)
/* C14DC 800C08DC AFB00020 */  sw         $s0, 0x20($sp)
/* C14E0 800C08E0 8CAE0000 */  lw         $t6, ($a1)
/* C14E4 800C08E4 240FFFFF */  addiu      $t7, $zero, -1
/* C14E8 800C08E8 24183E80 */  addiu      $t8, $zero, 0x3e80
/* C14EC 800C08EC 00A04025 */  or         $t0, $a1, $zero
/* C14F0 800C08F0 AC8F003C */  sw         $t7, 0x3c($a0)
/* C14F4 800C08F4 AC980048 */  sw         $t8, 0x48($a0)
/* C14F8 800C08F8 AC8E0044 */  sw         $t6, 0x44($a0)
/* C14FC 800C08FC 8D190000 */  lw         $t9, ($t0)
/* C1500 800C0900 00808025 */  or         $s0, $a0, $zero
/* C1504 800C0904 8D060008 */  lw         $a2, 8($t0)
/* C1508 800C0908 00194880 */  sll        $t1, $t9, 2
/* C150C 800C090C 01394823 */  subu       $t1, $t1, $t9
/* C1510 800C0910 00094900 */  sll        $t1, $t1, 4
/* C1514 800C0914 AFA90010 */  sw         $t1, 0x10($sp)
/* C1518 800C0918 AFA8004C */  sw         $t0, 0x4c($sp)
/* C151C 800C091C 00002025 */  or         $a0, $zero, $zero
/* C1520 800C0920 00002825 */  or         $a1, $zero, $zero
/* C1524 800C0924 0C034BF8 */  jal        func_800D2FE0
/* C1528 800C0928 24070001 */   addiu     $a3, $zero, 1
/* C152C 800C092C 8FA8004C */  lw         $t0, 0x4c($sp)
/* C1530 800C0930 AE020040 */  sw         $v0, 0x40($s0)
/* C1534 800C0934 00001825 */  or         $v1, $zero, $zero
/* C1538 800C0938 8D0A0000 */  lw         $t2, ($t0)
/* C153C 800C093C 00402025 */  or         $a0, $v0, $zero
/* C1540 800C0940 00002825 */  or         $a1, $zero, $zero
/* C1544 800C0944 11400008 */  beqz       $t2, .L800C0968
/* C1548 800C0948 24070001 */   addiu     $a3, $zero, 1
/* C154C 800C094C AC80001C */  sw         $zero, 0x1c($a0)
.L800C0950:
/* C1550 800C0950 8D0B0000 */  lw         $t3, ($t0)
/* C1554 800C0954 24630001 */  addiu      $v1, $v1, 1
/* C1558 800C0958 24840030 */  addiu      $a0, $a0, 0x30
/* C155C 800C095C 006B082B */  sltu       $at, $v1, $t3
/* C1560 800C0960 5420FFFB */  bnezl      $at, .L800C0950
/* C1564 800C0964 AC80001C */   sw        $zero, 0x1c($a0)
.L800C0968:
/* C1568 800C0968 8D0C0004 */  lw         $t4, 4($t0)
/* C156C 800C096C 8D060008 */  lw         $a2, 8($t0)
/* C1570 800C0970 AFA8004C */  sw         $t0, 0x4c($sp)
/* C1574 800C0974 000C68C0 */  sll        $t5, $t4, 3
/* C1578 800C0978 01AC6823 */  subu       $t5, $t5, $t4
/* C157C 800C097C 000D6880 */  sll        $t5, $t5, 2
/* C1580 800C0980 AFAD0010 */  sw         $t5, 0x10($sp)
/* C1584 800C0984 0C034BF8 */  jal        func_800D2FE0
/* C1588 800C0988 00002025 */   or        $a0, $zero, $zero
/* C158C 800C098C 8FA8004C */  lw         $t0, 0x4c($sp)
/* C1590 800C0990 26040014 */  addiu      $a0, $s0, 0x14
/* C1594 800C0994 00402825 */  or         $a1, $v0, $zero
/* C1598 800C0998 8D060004 */  lw         $a2, 4($t0)
/* C159C 800C099C 0C030387 */  jal        func_800C0E1C
/* C15A0 800C09A0 AFA40028 */   sw        $a0, 0x28($sp)
/* C15A4 800C09A4 3C0E800E */  lui        $t6, %hi(D_800DA040)
/* C15A8 800C09A8 8DC4A040 */  lw         $a0, %lo(D_800DA040)($t6)
/* C15AC 800C09AC 3C0F800C */  lui        $t7, %hi(func_800C038C)
/* C15B0 800C09B0 25EF038C */  addiu      $t7, $t7, %lo(func_800C038C)
/* C15B4 800C09B4 AE000000 */  sw         $zero, ($s0)
/* C15B8 800C09B8 AE0F0008 */  sw         $t7, 8($s0)
/* C15BC 800C09BC AE100004 */  sw         $s0, 4($s0)
/* C15C0 800C09C0 02002825 */  or         $a1, $s0, $zero
/* C15C4 800C09C4 0C034018 */  jal        func_800D0060
/* C15C8 800C09C8 AE040038 */   sw        $a0, 0x38($s0)
/* C15CC 800C09CC 24180005 */  addiu      $t8, $zero, 5
/* C15D0 800C09D0 A7B80034 */  sh         $t8, 0x34($sp)
/* C15D4 800C09D4 8E060048 */  lw         $a2, 0x48($s0)
/* C15D8 800C09D8 8FA40028 */  lw         $a0, 0x28($sp)
/* C15DC 800C09DC 0C03031B */  jal        func_800C0C6C
/* C15E0 800C09E0 27A50034 */   addiu     $a1, $sp, 0x34
/* C15E4 800C09E4 8FA40028 */  lw         $a0, 0x28($sp)
/* C15E8 800C09E8 0C030364 */  jal        func_800C0D90
/* C15EC 800C09EC 26050028 */   addiu     $a1, $s0, 0x28
/* C15F0 800C09F0 AE02004C */  sw         $v0, 0x4c($s0)
/* C15F4 800C09F4 8FBF0024 */  lw         $ra, 0x24($sp)
/* C15F8 800C09F8 8FB00020 */  lw         $s0, 0x20($sp)
/* C15FC 800C09FC 27BD0048 */  addiu      $sp, $sp, 0x48
/* C1600 800C0A00 03E00008 */  jr         $ra
/* C1604 800C0A04 00000000 */   nop
/* C1608 800C0A08 00000000 */  nop
/* C160C 800C0A0C 00000000 */  nop

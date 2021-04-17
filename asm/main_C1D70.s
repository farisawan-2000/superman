.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C1170
/* C1D70 800C1170 8C8E0060 */  lw         $t6, 0x60($a0)
/* C1D74 800C1174 00061100 */  sll        $v0, $a2, 4
/* C1D78 800C1178 01C27821 */  addu       $t7, $t6, $v0
/* C1D7C 800C117C ADE50000 */  sw         $a1, ($t7)
/* C1D80 800C1180 8C990060 */  lw         $t9, 0x60($a0)
/* C1D84 800C1184 90B80001 */  lbu        $t8, 1($a1)
/* C1D88 800C1188 03224021 */  addu       $t0, $t9, $v0
/* C1D8C 800C118C A1180007 */  sb         $t8, 7($t0)
/* C1D90 800C1190 8C8A0060 */  lw         $t2, 0x60($a0)
/* C1D94 800C1194 90A90000 */  lbu        $t1, ($a1)
/* C1D98 800C1198 01425821 */  addu       $t3, $t2, $v0
/* C1D9C 800C119C A1690009 */  sb         $t1, 9($t3)
/* C1DA0 800C11A0 8C8D0060 */  lw         $t5, 0x60($a0)
/* C1DA4 800C11A4 90AC0002 */  lbu        $t4, 2($a1)
/* C1DA8 800C11A8 01A27021 */  addu       $t6, $t5, $v0
/* C1DAC 800C11AC A1CC0008 */  sb         $t4, 8($t6)
/* C1DB0 800C11B0 8C990060 */  lw         $t9, 0x60($a0)
/* C1DB4 800C11B4 84AF000C */  lh         $t7, 0xc($a1)
/* C1DB8 800C11B8 0322C021 */  addu       $t8, $t9, $v0
/* C1DBC 800C11BC 03E00008 */  jr         $ra
/* C1DC0 800C11C0 A70F0004 */   sh        $t7, 4($t8)

glabel func_800C11C4
/* C1DC4 800C11C4 8C8E0060 */  lw         $t6, 0x60($a0)
/* C1DC8 800C11C8 00051100 */  sll        $v0, $a1, 4
/* C1DCC 800C11CC 24080040 */  addiu      $t0, $zero, 0x40
/* C1DD0 800C11D0 01C27821 */  addu       $t7, $t6, $v0
/* C1DD4 800C11D4 A1E00006 */  sb         $zero, 6($t7)
/* C1DD8 800C11D8 8C980060 */  lw         $t8, 0x60($a0)
/* C1DDC 800C11DC 240B007F */  addiu      $t3, $zero, 0x7f
/* C1DE0 800C11E0 240E0005 */  addiu      $t6, $zero, 5
/* C1DE4 800C11E4 0302C821 */  addu       $t9, $t8, $v0
/* C1DE8 800C11E8 A320000A */  sb         $zero, 0xa($t9)
/* C1DEC 800C11EC 8C890060 */  lw         $t1, 0x60($a0)
/* C1DF0 800C11F0 3C013F80 */  lui        $at, 0x3f80
/* C1DF4 800C11F4 44812000 */  mtc1       $at, $f4
/* C1DF8 800C11F8 01225021 */  addu       $t2, $t1, $v0
/* C1DFC 800C11FC A1480007 */  sb         $t0, 7($t2)
/* C1E00 800C1200 8C8C0060 */  lw         $t4, 0x60($a0)
/* C1E04 800C1204 240800C8 */  addiu      $t0, $zero, 0xc8
/* C1E08 800C1208 01826821 */  addu       $t5, $t4, $v0
/* C1E0C 800C120C A1AB0009 */  sb         $t3, 9($t5)
/* C1E10 800C1210 8C8F0060 */  lw         $t7, 0x60($a0)
/* C1E14 800C1214 01E2C021 */  addu       $t8, $t7, $v0
/* C1E18 800C1218 A30E0008 */  sb         $t6, 8($t8)
/* C1E1C 800C121C 8C990060 */  lw         $t9, 0x60($a0)
/* C1E20 800C1220 03224821 */  addu       $t1, $t9, $v0
/* C1E24 800C1224 A120000B */  sb         $zero, 0xb($t1)
/* C1E28 800C1228 8C8A0060 */  lw         $t2, 0x60($a0)
/* C1E2C 800C122C 01426021 */  addu       $t4, $t2, $v0
/* C1E30 800C1230 A5880004 */  sh         $t0, 4($t4)
/* C1E34 800C1234 8C8B0060 */  lw         $t3, 0x60($a0)
/* C1E38 800C1238 01626821 */  addu       $t5, $t3, $v0
/* C1E3C 800C123C 03E00008 */  jr         $ra
/* C1E40 800C1240 E5A4000C */   swc1      $f4, 0xc($t5)

glabel func_800C1244
/* C1E44 800C1244 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C1E48 800C1248 AFB20020 */  sw         $s2, 0x20($sp)
/* C1E4C 800C124C 00809025 */  or         $s2, $a0, $zero
/* C1E50 800C1250 AFBF0024 */  sw         $ra, 0x24($sp)
/* C1E54 800C1254 AFB1001C */  sw         $s1, 0x1c($sp)
/* C1E58 800C1258 AFB00018 */  sw         $s0, 0x18($sp)
/* C1E5C 800C125C AFA5002C */  sw         $a1, 0x2c($sp)
/* C1E60 800C1260 00A01025 */  or         $v0, $a1, $zero
/* C1E64 800C1264 8C51000C */  lw         $s1, 0xc($v0)
.L800C1268:
/* C1E68 800C1268 24420004 */  addiu      $v0, $v0, 4
/* C1E6C 800C126C 5220FFFE */  beql       $s1, $zero, .L800C1268
/* C1E70 800C1270 8C51000C */   lw        $s1, 0xc($v0)
/* C1E74 800C1274 924E0034 */  lbu        $t6, 0x34($s2)
/* C1E78 800C1278 00008025 */  or         $s0, $zero, $zero
/* C1E7C 800C127C 19C0000C */  blez       $t6, .L800C12B0
/* C1E80 800C1280 02402025 */   or        $a0, $s2, $zero
.L800C1284:
/* C1E84 800C1284 0C030471 */  jal        func_800C11C4
/* C1E88 800C1288 02002825 */   or        $a1, $s0, $zero
/* C1E8C 800C128C 02402025 */  or         $a0, $s2, $zero
/* C1E90 800C1290 02202825 */  or         $a1, $s1, $zero
/* C1E94 800C1294 0C03045C */  jal        func_800C1170
/* C1E98 800C1298 02003025 */   or        $a2, $s0, $zero
/* C1E9C 800C129C 924F0034 */  lbu        $t7, 0x34($s2)
/* C1EA0 800C12A0 26100001 */  addiu      $s0, $s0, 1
/* C1EA4 800C12A4 020F082A */  slt        $at, $s0, $t7
/* C1EA8 800C12A8 5420FFF6 */  bnezl      $at, .L800C1284
/* C1EAC 800C12AC 02402025 */   or        $a0, $s2, $zero
.L800C12B0:
/* C1EB0 800C12B0 8FB8002C */  lw         $t8, 0x2c($sp)
/* C1EB4 800C12B4 02402025 */  or         $a0, $s2, $zero
/* C1EB8 800C12B8 8F190008 */  lw         $t9, 8($t8)
/* C1EBC 800C12BC 53200009 */  beql       $t9, $zero, .L800C12E4
/* C1EC0 800C12C0 8FBF0024 */   lw        $ra, 0x24($sp)
/* C1EC4 800C12C4 0C030471 */  jal        func_800C11C4
/* C1EC8 800C12C8 02002825 */   or        $a1, $s0, $zero
/* C1ECC 800C12CC 8FA8002C */  lw         $t0, 0x2c($sp)
/* C1ED0 800C12D0 02402025 */  or         $a0, $s2, $zero
/* C1ED4 800C12D4 24060009 */  addiu      $a2, $zero, 9
/* C1ED8 800C12D8 0C03045C */  jal        func_800C1170
/* C1EDC 800C12DC 8D050008 */   lw        $a1, 8($t0)
/* C1EE0 800C12E0 8FBF0024 */  lw         $ra, 0x24($sp)
.L800C12E4:
/* C1EE4 800C12E4 8FB00018 */  lw         $s0, 0x18($sp)
/* C1EE8 800C12E8 8FB1001C */  lw         $s1, 0x1c($sp)
/* C1EEC 800C12EC 8FB20020 */  lw         $s2, 0x20($sp)
/* C1EF0 800C12F0 03E00008 */  jr         $ra
/* C1EF4 800C12F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C12F8
/* C1EF8 800C12F8 03E00008 */  jr         $ra
/* C1EFC 800C12FC 00000000 */   nop

glabel func_800C1300
/* C1F00 800C1300 8C8E0024 */  lw         $t6, 0x24($a0)
/* C1F04 800C1304 240203E8 */  addiu      $v0, $zero, 0x3e8
/* C1F08 800C1308 01C51823 */  subu       $v1, $t6, $a1
/* C1F0C 800C130C 04600003 */  bltz       $v1, .L800C131C
/* C1F10 800C1310 00000000 */   nop
/* C1F14 800C1314 03E00008 */  jr         $ra
/* C1F18 800C1318 00601025 */   or        $v0, $v1, $zero
.L800C131C:
/* C1F1C 800C131C 03E00008 */  jr         $ra
/* C1F20 800C1320 00000000 */   nop

glabel func_800C1324
/* C1F24 800C1324 908E0036 */  lbu        $t6, 0x36($a0)
/* C1F28 800C1328 908F0033 */  lbu        $t7, 0x33($a0)
/* C1F2C 800C132C 90990030 */  lbu        $t9, 0x30($a0)
/* C1F30 800C1330 908A0031 */  lbu        $t2, 0x31($a0)
/* C1F34 800C1334 01CF0019 */  multu      $t6, $t7
/* C1F38 800C1338 8CA90060 */  lw         $t1, 0x60($a1)
/* C1F3C 800C133C 8C8E0020 */  lw         $t6, 0x20($a0)
/* C1F40 800C1340 000A5900 */  sll        $t3, $t2, 4
/* C1F44 800C1344 012B6021 */  addu       $t4, $t1, $t3
/* C1F48 800C1348 918D0009 */  lbu        $t5, 9($t4)
/* C1F4C 800C134C 91CF000D */  lbu        $t7, 0xd($t6)
/* C1F50 800C1350 0000C012 */  mflo       $t8
/* C1F54 800C1354 00000000 */  nop
/* C1F58 800C1358 00000000 */  nop
/* C1F5C 800C135C 03190019 */  multu      $t8, $t9
/* C1F60 800C1360 84B90032 */  lh         $t9, 0x32($a1)
/* C1F64 800C1364 00001812 */  mflo       $v1
/* C1F68 800C1368 00034183 */  sra        $t0, $v1, 6
/* C1F6C 800C136C 01001825 */  or         $v1, $t0, $zero
/* C1F70 800C1370 01AF0019 */  multu      $t5, $t7
/* C1F74 800C1374 0000C012 */  mflo       $t8
/* C1F78 800C1378 00000000 */  nop
/* C1F7C 800C137C 00000000 */  nop
/* C1F80 800C1380 03190019 */  multu      $t8, $t9
/* C1F84 800C1384 00003012 */  mflo       $a2
/* C1F88 800C1388 00064383 */  sra        $t0, $a2, 0xe
/* C1F8C 800C138C 00000000 */  nop
/* C1F90 800C1390 00680019 */  multu      $v1, $t0
/* C1F94 800C1394 00001812 */  mflo       $v1
/* C1F98 800C1398 000353C2 */  srl        $t2, $v1, 0xf
/* C1F9C 800C139C 000A1400 */  sll        $v0, $t2, 0x10
/* C1FA0 800C13A0 00024C03 */  sra        $t1, $v0, 0x10
/* C1FA4 800C13A4 03E00008 */  jr         $ra
/* C1FA8 800C13A8 01201025 */   or        $v0, $t1, $zero

glabel func_800C13AC
/* C1FAC 800C13AC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* C1FB0 800C13B0 AFBF0034 */  sw         $ra, 0x34($sp)
/* C1FB4 800C13B4 AFB60030 */  sw         $s6, 0x30($sp)
/* C1FB8 800C13B8 AFB5002C */  sw         $s5, 0x2c($sp)
/* C1FBC 800C13BC AFB40028 */  sw         $s4, 0x28($sp)
/* C1FC0 800C13C0 AFB30024 */  sw         $s3, 0x24($sp)
/* C1FC4 800C13C4 AFB20020 */  sw         $s2, 0x20($sp)
/* C1FC8 800C13C8 AFB1001C */  sw         $s1, 0x1c($sp)
/* C1FCC 800C13CC AFB00018 */  sw         $s0, 0x18($sp)
/* C1FD0 800C13D0 AFA60068 */  sw         $a2, 0x68($sp)
/* C1FD4 800C13D4 8CB60010 */  lw         $s6, 0x10($a1)
/* C1FD8 800C13D8 0080A025 */  or         $s4, $a0, $zero
/* C1FDC 800C13DC 00A0A825 */  or         $s5, $a1, $zero
/* C1FE0 800C13E0 92CE0034 */  lbu        $t6, 0x34($s6)
/* C1FE4 800C13E4 55C0001A */  bnezl      $t6, .L800C1450
/* C1FE8 800C13E8 240A0003 */   addiu     $t2, $zero, 3
/* C1FEC 800C13EC 8C900050 */  lw         $s0, 0x50($a0)
/* C1FF0 800C13F0 24130006 */  addiu      $s3, $zero, 6
/* C1FF4 800C13F4 52000016 */  beql       $s0, $zero, .L800C1450
/* C1FF8 800C13F8 240A0003 */   addiu     $t2, $zero, 3
.L800C13FC:
/* C1FFC 800C13FC 860F000C */  lh         $t7, 0xc($s0)
/* C2000 800C1400 8E110000 */  lw         $s1, ($s0)
/* C2004 800C1404 166F000F */  bne        $s3, $t7, .L800C1444
/* C2008 800C1408 00000000 */   nop
/* C200C 800C140C 8E180010 */  lw         $t8, 0x10($s0)
/* C2010 800C1410 16B8000C */  bne        $s5, $t8, .L800C1444
/* C2014 800C1414 00000000 */   nop
/* C2018 800C1418 12200005 */  beqz       $s1, .L800C1430
/* C201C 800C141C 26920048 */   addiu     $s2, $s4, 0x48
/* C2020 800C1420 8E390008 */  lw         $t9, 8($s1)
/* C2024 800C1424 8E080008 */  lw         $t0, 8($s0)
/* C2028 800C1428 03284821 */  addu       $t1, $t9, $t0
/* C202C 800C142C AE290008 */  sw         $t1, 8($s1)
.L800C1430:
/* C2030 800C1430 0C02F8AC */  jal        func_800BE2B0
/* C2034 800C1434 02002025 */   or        $a0, $s0, $zero
/* C2038 800C1438 02002025 */  or         $a0, $s0, $zero
/* C203C 800C143C 0C02F8B8 */  jal        func_800BE2E0
/* C2040 800C1440 02402825 */   or        $a1, $s2, $zero
.L800C1444:
/* C2044 800C1444 1620FFED */  bnez       $s1, .L800C13FC
/* C2048 800C1448 02208025 */   or        $s0, $s1, $zero
/* C204C 800C144C 240A0003 */  addiu      $t2, $zero, 3
.L800C1450:
/* C2050 800C1450 A2C00033 */  sb         $zero, 0x33($s6)
/* C2054 800C1454 A2CA0034 */  sb         $t2, 0x34($s6)
/* C2058 800C1458 A2C00030 */  sb         $zero, 0x30($s6)
/* C205C 800C145C 8FAC0068 */  lw         $t4, 0x68($sp)
/* C2060 800C1460 8E8B001C */  lw         $t3, 0x1c($s4)
/* C2064 800C1464 02A02825 */  or         $a1, $s5, $zero
/* C2068 800C1468 00003025 */  or         $a2, $zero, $zero
/* C206C 800C146C 016C6821 */  addu       $t5, $t3, $t4
/* C2070 800C1470 AECD0024 */  sw         $t5, 0x24($s6)
/* C2074 800C1474 8E840014 */  lw         $a0, 0x14($s4)
/* C2078 800C1478 0C030AAC */  jal        func_800C2AB0
/* C207C 800C147C 26920048 */   addiu     $s2, $s4, 0x48
/* C2080 800C1480 8E840014 */  lw         $a0, 0x14($s4)
/* C2084 800C1484 02A02825 */  or         $a1, $s5, $zero
/* C2088 800C1488 00003025 */  or         $a2, $zero, $zero
/* C208C 800C148C 0C0302AC */  jal        func_800C0AB0
/* C2090 800C1490 8FA70068 */   lw        $a3, 0x68($sp)
/* C2094 800C1494 240E0005 */  addiu      $t6, $zero, 5
/* C2098 800C1498 A7AE0050 */  sh         $t6, 0x50($sp)
/* C209C 800C149C AFB50054 */  sw         $s5, 0x54($sp)
/* C20A0 800C14A0 02402025 */  or         $a0, $s2, $zero
/* C20A4 800C14A4 27A50050 */  addiu      $a1, $sp, 0x50
/* C20A8 800C14A8 0C03031B */  jal        func_800C0C6C
/* C20AC 800C14AC 8FA60068 */   lw        $a2, 0x68($sp)
/* C20B0 800C14B0 8FBF0034 */  lw         $ra, 0x34($sp)
/* C20B4 800C14B4 8FB00018 */  lw         $s0, 0x18($sp)
/* C20B8 800C14B8 8FB1001C */  lw         $s1, 0x1c($sp)
/* C20BC 800C14BC 8FB20020 */  lw         $s2, 0x20($sp)
/* C20C0 800C14C0 8FB30024 */  lw         $s3, 0x24($sp)
/* C20C4 800C14C4 8FB40028 */  lw         $s4, 0x28($sp)
/* C20C8 800C14C8 8FB5002C */  lw         $s5, 0x2c($sp)
/* C20CC 800C14CC 8FB60030 */  lw         $s6, 0x30($sp)
/* C20D0 800C14D0 03E00008 */  jr         $ra
/* C20D4 800C14D4 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_800C14D8
/* C20D8 800C14D8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C20DC 800C14DC AFBF0014 */  sw         $ra, 0x14($sp)
/* C20E0 800C14E0 8C870050 */  lw         $a3, 0x50($a0)
/* C20E4 800C14E4 00805025 */  or         $t2, $a0, $zero
/* C20E8 800C14E8 00004025 */  or         $t0, $zero, $zero
/* C20EC 800C14EC 10E0001F */  beqz       $a3, .L800C156C
/* C20F0 800C14F0 24090001 */   addiu     $t1, $zero, 1
/* C20F4 800C14F4 24040005 */  addiu      $a0, $zero, 5
.L800C14F8:
/* C20F8 800C14F8 84EE000C */  lh         $t6, 0xc($a3)
/* C20FC 800C14FC 8CE30008 */  lw         $v1, 8($a3)
/* C2100 800C1500 8CE20000 */  lw         $v0, ($a3)
/* C2104 800C1504 148E0017 */  bne        $a0, $t6, .L800C1564
/* C2108 800C1508 01034021 */   addu      $t0, $t0, $v1
/* C210C 800C150C 8CEF0010 */  lw         $t7, 0x10($a3)
/* C2110 800C1510 14AF0014 */  bne        $a1, $t7, .L800C1564
/* C2114 800C1514 00C8082A */   slt       $at, $a2, $t0
/* C2118 800C1518 10200010 */  beqz       $at, .L800C155C
/* C211C 800C151C 00E02025 */   or        $a0, $a3, $zero
/* C2120 800C1520 50400005 */  beql       $v0, $zero, .L800C1538
/* C2124 800C1524 AFA7002C */   sw        $a3, 0x2c($sp)
/* C2128 800C1528 8C580008 */  lw         $t8, 8($v0)
/* C212C 800C152C 0303C821 */  addu       $t9, $t8, $v1
/* C2130 800C1530 AC590008 */  sw         $t9, 8($v0)
/* C2134 800C1534 AFA7002C */  sw         $a3, 0x2c($sp)
.L800C1538:
/* C2138 800C1538 A3A9001F */  sb         $t1, 0x1f($sp)
/* C213C 800C153C 0C02F8AC */  jal        func_800BE2B0
/* C2140 800C1540 AFAA0030 */   sw        $t2, 0x30($sp)
/* C2144 800C1544 8FAA0030 */  lw         $t2, 0x30($sp)
/* C2148 800C1548 8FA4002C */  lw         $a0, 0x2c($sp)
/* C214C 800C154C 0C02F8B8 */  jal        func_800BE2E0
/* C2150 800C1550 25450048 */   addiu     $a1, $t2, 0x48
/* C2154 800C1554 10000005 */  b          .L800C156C
/* C2158 800C1558 93A9001F */   lbu       $t1, 0x1f($sp)
.L800C155C:
/* C215C 800C155C 10000003 */  b          .L800C156C
/* C2160 800C1560 00004825 */   or        $t1, $zero, $zero
.L800C1564:
/* C2164 800C1564 1440FFE4 */  bnez       $v0, .L800C14F8
/* C2168 800C1568 00403825 */   or        $a3, $v0, $zero
.L800C156C:
/* C216C 800C156C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C2170 800C1570 27BD0030 */  addiu      $sp, $sp, 0x30
/* C2174 800C1574 01201025 */  or         $v0, $t1, $zero
/* C2178 800C1578 03E00008 */  jr         $ra
/* C217C 800C157C 00000000 */   nop

glabel func_800C1580
/* C2180 800C1580 8C830064 */  lw         $v1, 0x64($a0)
/* C2184 800C1584 00001025 */  or         $v0, $zero, $zero
/* C2188 800C1588 24A6FFFC */  addiu      $a2, $a1, -4
/* C218C 800C158C 10600016 */  beqz       $v1, .L800C15E8
/* C2190 800C1590 00000000 */   nop
.L800C1594:
/* C2194 800C1594 54660011 */  bnel       $v1, $a2, .L800C15DC
/* C2198 800C1598 00601025 */   or        $v0, $v1, $zero
/* C219C 800C159C 50400005 */  beql       $v0, $zero, .L800C15B4
/* C21A0 800C15A0 8C6F0000 */   lw        $t7, ($v1)
/* C21A4 800C15A4 8C6E0000 */  lw         $t6, ($v1)
/* C21A8 800C15A8 10000003 */  b          .L800C15B8
/* C21AC 800C15AC AC4E0000 */   sw        $t6, ($v0)
/* C21B0 800C15B0 8C6F0000 */  lw         $t7, ($v1)
.L800C15B4:
/* C21B4 800C15B4 AC8F0064 */  sw         $t7, 0x64($a0)
.L800C15B8:
/* C21B8 800C15B8 8C980068 */  lw         $t8, 0x68($a0)
/* C21BC 800C15BC 54780003 */  bnel       $v1, $t8, .L800C15CC
/* C21C0 800C15C0 8C99006C */   lw        $t9, 0x6c($a0)
/* C21C4 800C15C4 AC820068 */  sw         $v0, 0x68($a0)
/* C21C8 800C15C8 8C99006C */  lw         $t9, 0x6c($a0)
.L800C15CC:
/* C21CC 800C15CC AC790000 */  sw         $t9, ($v1)
/* C21D0 800C15D0 03E00008 */  jr         $ra
/* C21D4 800C15D4 AC83006C */   sw        $v1, 0x6c($a0)
/* C21D8 800C15D8 00601025 */  or         $v0, $v1, $zero
.L800C15DC:
/* C21DC 800C15DC 8C630000 */  lw         $v1, ($v1)
/* C21E0 800C15E0 1460FFEC */  bnez       $v1, .L800C1594
/* C21E4 800C15E4 00000000 */   nop
.L800C15E8:
/* C21E8 800C15E8 03E00008 */  jr         $ra
/* C21EC 800C15EC 00000000 */   nop

glabel func_800C15F0
/* C21F0 800C15F0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C21F4 800C15F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* C21F8 800C15F8 8C8E002C */  lw         $t6, 0x2c($a0)
/* C21FC 800C15FC 24010001 */  addiu      $at, $zero, 1
/* C2200 800C1600 00803825 */  or         $a3, $a0, $zero
/* C2204 800C1604 15C1002D */  bne        $t6, $at, .L800C16BC
/* C2208 800C1608 8C860018 */   lw        $a2, 0x18($a0)
/* C220C 800C160C 10C0002B */  beqz       $a2, .L800C16BC
/* C2210 800C1610 00C02025 */   or        $a0, $a2, $zero
/* C2214 800C1614 27A50024 */  addiu      $a1, $sp, 0x24
/* C2218 800C1618 AFA60020 */  sw         $a2, 0x20($sp)
/* C221C 800C161C 0C030BCC */  jal        func_800C2F30
/* C2220 800C1620 AFA70038 */   sw        $a3, 0x38($sp)
/* C2224 800C1624 8FA60020 */  lw         $a2, 0x20($sp)
/* C2228 800C1628 10400024 */  beqz       $v0, .L800C16BC
/* C222C 800C162C 8FA70038 */   lw        $a3, 0x38($sp)
/* C2230 800C1630 8CEF0084 */  lw         $t7, 0x84($a3)
/* C2234 800C1634 00C02025 */  or         $a0, $a2, $zero
/* C2238 800C1638 51E00018 */  beql       $t7, $zero, .L800C169C
/* C223C 800C163C A7A00028 */   sh        $zero, 0x28($sp)
/* C2240 800C1640 AFA60020 */  sw         $a2, 0x20($sp)
/* C2244 800C1644 0C030ABE */  jal        func_800C2AF8
/* C2248 800C1648 AFA70038 */   sw        $a3, 0x38($sp)
/* C224C 800C164C 8FA70038 */  lw         $a3, 0x38($sp)
/* C2250 800C1650 8FB80024 */  lw         $t8, 0x24($sp)
/* C2254 800C1654 8FA60020 */  lw         $a2, 0x20($sp)
/* C2258 800C1658 8CE80080 */  lw         $t0, 0x80($a3)
/* C225C 800C165C 0058C821 */  addu       $t9, $v0, $t8
/* C2260 800C1660 00C02025 */  or         $a0, $a2, $zero
/* C2264 800C1664 8D090008 */  lw         $t1, 8($t0)
/* C2268 800C1668 0329082A */  slt        $at, $t9, $t1
/* C226C 800C166C 5420000B */  bnezl      $at, .L800C169C
/* C2270 800C1670 A7A00028 */   sh        $zero, 0x28($sp)
/* C2274 800C1674 8CE5007C */  lw         $a1, 0x7c($a3)
/* C2278 800C1678 0C030AB7 */  jal        func_800C2ADC
/* C227C 800C167C AFA70038 */   sw        $a3, 0x38($sp)
/* C2280 800C1680 8FA70038 */  lw         $a3, 0x38($sp)
/* C2284 800C1684 2401FFFF */  addiu      $at, $zero, -1
/* C2288 800C1688 8CE20084 */  lw         $v0, 0x84($a3)
/* C228C 800C168C 10410002 */  beq        $v0, $at, .L800C1698
/* C2290 800C1690 244AFFFF */   addiu     $t2, $v0, -1
/* C2294 800C1694 ACEA0084 */  sw         $t2, 0x84($a3)
.L800C1698:
/* C2298 800C1698 A7A00028 */  sh         $zero, 0x28($sp)
.L800C169C:
/* C229C 800C169C 8CEB0024 */  lw         $t3, 0x24($a3)
/* C22A0 800C16A0 8FAC0024 */  lw         $t4, 0x24($sp)
/* C22A4 800C16A4 24E40048 */  addiu      $a0, $a3, 0x48
/* C22A8 800C16A8 27A50028 */  addiu      $a1, $sp, 0x28
/* C22AC 800C16AC 016C0019 */  multu      $t3, $t4
/* C22B0 800C16B0 00003012 */  mflo       $a2
/* C22B4 800C16B4 0C03031B */  jal        func_800C0C6C
/* C22B8 800C16B8 00000000 */   nop
.L800C16BC:
/* C22BC 800C16BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* C22C0 800C16C0 27BD0038 */  addiu      $sp, $sp, 0x38
/* C22C4 800C16C4 03E00008 */  jr         $ra
/* C22C8 800C16C8 00000000 */   nop

glabel func_800C16CC
/* C22CC 800C16CC 908E0008 */  lbu        $t6, 8($a0)
/* C22D0 800C16D0 240100FF */  addiu      $at, $zero, 0xff
/* C22D4 800C16D4 15C10019 */  bne        $t6, $at, .L800C173C
/* C22D8 800C16D8 00000000 */   nop
/* C22DC 800C16DC 908F0009 */  lbu        $t7, 9($a0)
/* C22E0 800C16E0 24010051 */  addiu      $at, $zero, 0x51
/* C22E4 800C16E4 24820004 */  addiu      $v0, $a0, 4
/* C22E8 800C16E8 15E10014 */  bne        $t7, $at, .L800C173C
/* C22EC 800C16EC 00000000 */   nop
/* C22F0 800C16F0 904E0008 */  lbu        $t6, 8($v0)
/* C22F4 800C16F4 90580007 */  lbu        $t8, 7($v0)
/* C22F8 800C16F8 8CA60018 */  lw         $a2, 0x18($a1)
/* C22FC 800C16FC 000E7A00 */  sll        $t7, $t6, 8
/* C2300 800C1700 904E0009 */  lbu        $t6, 9($v0)
/* C2304 800C1704 0018CC00 */  sll        $t9, $t8, 0x10
/* C2308 800C1708 032FC025 */  or         $t8, $t9, $t7
/* C230C 800C170C 030E1825 */  or         $v1, $t8, $t6
/* C2310 800C1710 44832000 */  mtc1       $v1, $f4
/* C2314 800C1714 241801E8 */  addiu      $t8, $zero, 0x1e8
/* C2318 800C1718 10C00007 */  beqz       $a2, .L800C1738
/* C231C 800C171C 46802020 */   cvt.s.w   $f0, $f4
/* C2320 800C1720 C4C60014 */  lwc1       $f6, 0x14($a2)
/* C2324 800C1724 46060202 */  mul.s      $f8, $f0, $f6
/* C2328 800C1728 4600428D */  trunc.w.s  $f10, $f8
/* C232C 800C172C 440F5000 */  mfc1       $t7, $f10
/* C2330 800C1730 03E00008 */  jr         $ra
/* C2334 800C1734 ACAF0024 */   sw        $t7, 0x24($a1)
.L800C1738:
/* C2338 800C1738 ACB80024 */  sw         $t8, 0x24($a1)
.L800C173C:
/* C233C 800C173C 03E00008 */  jr         $ra
/* C2340 800C1740 00000000 */   nop

glabel func_800C1744
/* C2344 800C1744 908F0031 */  lbu        $t7, 0x31($a0)
/* C2348 800C1748 8CAE0060 */  lw         $t6, 0x60($a1)
/* C234C 800C174C 8C890020 */  lw         $t1, 0x20($a0)
/* C2350 800C1750 000FC100 */  sll        $t8, $t7, 4
/* C2354 800C1754 01D8C821 */  addu       $t9, $t6, $t8
/* C2358 800C1758 93280007 */  lbu        $t0, 7($t9)
/* C235C 800C175C 912A000C */  lbu        $t2, 0xc($t1)
/* C2360 800C1760 010A1821 */  addu       $v1, $t0, $t2
/* C2364 800C1764 2463FFC0 */  addiu      $v1, $v1, -0x40
/* C2368 800C1768 5C600003 */  bgtzl      $v1, .L800C1778
/* C236C 800C176C 2861007F */   slti      $at, $v1, 0x7f
/* C2370 800C1770 00001825 */  or         $v1, $zero, $zero
/* C2374 800C1774 2861007F */  slti       $at, $v1, 0x7f
.L800C1778:
/* C2378 800C1778 14200002 */  bnez       $at, .L800C1784
/* C237C 800C177C 00000000 */   nop
/* C2380 800C1780 2403007F */  addiu      $v1, $zero, 0x7f
.L800C1784:
/* C2384 800C1784 03E00008 */  jr         $ra
/* C2388 800C1788 306200FF */   andi      $v0, $v1, 0xff

glabel func_800C178C
/* C238C 800C178C AFA50004 */  sw         $a1, 4($sp)
/* C2390 800C1790 AFA60008 */  sw         $a2, 8($sp)
/* C2394 800C1794 8C830064 */  lw         $v1, 0x64($a0)
/* C2398 800C1798 30CF00FF */  andi       $t7, $a2, 0xff
/* C239C 800C179C 01E03025 */  or         $a2, $t7, $zero
/* C23A0 800C17A0 10600014 */  beqz       $v1, .L800C17F4
/* C23A4 800C17A4 30AE00FF */   andi      $t6, $a1, 0xff
/* C23A8 800C17A8 01C01025 */  or         $v0, $t6, $zero
/* C23AC 800C17AC 24070004 */  addiu      $a3, $zero, 4
/* C23B0 800C17B0 24050003 */  addiu      $a1, $zero, 3
/* C23B4 800C17B4 90780032 */  lbu        $t8, 0x32($v1)
.L800C17B8:
/* C23B8 800C17B8 5458000C */  bnel       $v0, $t8, .L800C17EC
/* C23BC 800C17BC 8C630000 */   lw        $v1, ($v1)
/* C23C0 800C17C0 90790031 */  lbu        $t9, 0x31($v1)
/* C23C4 800C17C4 54D90009 */  bnel       $a2, $t9, .L800C17EC
/* C23C8 800C17C8 8C630000 */   lw        $v1, ($v1)
/* C23CC 800C17CC 90640035 */  lbu        $a0, 0x35($v1)
/* C23D0 800C17D0 50A40006 */  beql       $a1, $a0, .L800C17EC
/* C23D4 800C17D4 8C630000 */   lw        $v1, ($v1)
/* C23D8 800C17D8 50E40004 */  beql       $a3, $a0, .L800C17EC
/* C23DC 800C17DC 8C630000 */   lw        $v1, ($v1)
/* C23E0 800C17E0 03E00008 */  jr         $ra
/* C23E4 800C17E4 00601025 */   or        $v0, $v1, $zero
/* C23E8 800C17E8 8C630000 */  lw         $v1, ($v1)
.L800C17EC:
/* C23EC 800C17EC 5460FFF2 */  bnezl      $v1, .L800C17B8
/* C23F0 800C17F0 90780032 */   lbu       $t8, 0x32($v1)
.L800C17F4:
/* C23F4 800C17F4 00001025 */  or         $v0, $zero, $zero
/* C23F8 800C17F8 03E00008 */  jr         $ra
/* C23FC 800C17FC 00000000 */   nop

glabel func_800C1800
/* C2400 800C1800 AFA50004 */  sw         $a1, 4($sp)
/* C2404 800C1804 AFA60008 */  sw         $a2, 8($sp)
/* C2408 800C1808 AFA7000C */  sw         $a3, 0xc($sp)
/* C240C 800C180C 8C83006C */  lw         $v1, 0x6c($a0)
/* C2410 800C1810 30AE00FF */  andi       $t6, $a1, 0xff
/* C2414 800C1814 30CF00FF */  andi       $t7, $a2, 0xff
/* C2418 800C1818 30F800FF */  andi       $t8, $a3, 0xff
/* C241C 800C181C 03003825 */  or         $a3, $t8, $zero
/* C2420 800C1820 01E03025 */  or         $a2, $t7, $zero
/* C2424 800C1824 10600010 */  beqz       $v1, .L800C1868
/* C2428 800C1828 01C02825 */   or        $a1, $t6, $zero
/* C242C 800C182C 8C790000 */  lw         $t9, ($v1)
/* C2430 800C1830 AC99006C */  sw         $t9, 0x6c($a0)
/* C2434 800C1834 AC600000 */  sw         $zero, ($v1)
/* C2438 800C1838 8C880064 */  lw         $t0, 0x64($a0)
/* C243C 800C183C 55000004 */  bnezl      $t0, .L800C1850
/* C2440 800C1840 8C890068 */   lw        $t1, 0x68($a0)
/* C2444 800C1844 10000003 */  b          .L800C1854
/* C2448 800C1848 AC830064 */   sw        $v1, 0x64($a0)
/* C244C 800C184C 8C890068 */  lw         $t1, 0x68($a0)
.L800C1850:
/* C2450 800C1850 AD230000 */  sw         $v1, ($t1)
.L800C1854:
/* C2454 800C1854 AC830068 */  sw         $v1, 0x68($a0)
/* C2458 800C1858 A0670031 */  sb         $a3, 0x31($v1)
/* C245C 800C185C A0650032 */  sb         $a1, 0x32($v1)
/* C2460 800C1860 A0660033 */  sb         $a2, 0x33($v1)
/* C2464 800C1864 AC630014 */  sw         $v1, 0x14($v1)
.L800C1868:
/* C2468 800C1868 03E00008 */  jr         $ra
/* C246C 800C186C 00601025 */   or        $v0, $v1, $zero

glabel func_800C1870
/* C2470 800C1870 AFA50004 */  sw         $a1, 4($sp)
/* C2474 800C1874 AFA60008 */  sw         $a2, 8($sp)
/* C2478 800C1878 AFA7000C */  sw         $a3, 0xc($sp)
/* C247C 800C187C 8C980060 */  lw         $t8, 0x60($a0)
/* C2480 800C1880 30EF00FF */  andi       $t7, $a3, 0xff
/* C2484 800C1884 000FC900 */  sll        $t9, $t7, 4
/* C2488 800C1888 03196021 */  addu       $t4, $t8, $t9
/* C248C 800C188C 8D820000 */  lw         $v0, ($t4)
/* C2490 800C1890 30AE00FF */  andi       $t6, $a1, 0xff
/* C2494 800C1894 30CB00FF */  andi       $t3, $a2, 0xff
/* C2498 800C1898 8448000E */  lh         $t0, 0xe($v0)
/* C249C 800C189C 24030001 */  addiu      $v1, $zero, 1
/* C24A0 800C18A0 01C04825 */  or         $t1, $t6, $zero
/* C24A4 800C18A4 1900002E */  blez       $t0, .L800C1960
/* C24A8 800C18A8 00682821 */   addu      $a1, $v1, $t0
.L800C18AC:
/* C24AC 800C18AC 04A10003 */  bgez       $a1, .L800C18BC
/* C24B0 800C18B0 00056843 */   sra       $t5, $a1, 1
/* C24B4 800C18B4 24A10001 */  addiu      $at, $a1, 1
/* C24B8 800C18B8 00016843 */  sra        $t5, $at, 1
.L800C18BC:
/* C24BC 800C18BC 000D7080 */  sll        $t6, $t5, 2
/* C24C0 800C18C0 004E7821 */  addu       $t7, $v0, $t6
/* C24C4 800C18C4 8DE7000C */  lw         $a3, 0xc($t7)
/* C24C8 800C18C8 01A02025 */  or         $a0, $t5, $zero
/* C24CC 800C18CC 8CE60004 */  lw         $a2, 4($a3)
/* C24D0 800C18D0 90CA0002 */  lbu        $t2, 2($a2)
/* C24D4 800C18D4 012A082A */  slt        $at, $t1, $t2
/* C24D8 800C18D8 54200011 */  bnezl      $at, .L800C1920
/* C24DC 800C18DC 012A082A */   slt       $at, $t1, $t2
/* C24E0 800C18E0 90D80003 */  lbu        $t8, 3($a2)
/* C24E4 800C18E4 0309082A */  slt        $at, $t8, $t1
/* C24E8 800C18E8 5420000D */  bnezl      $at, .L800C1920
/* C24EC 800C18EC 012A082A */   slt       $at, $t1, $t2
/* C24F0 800C18F0 90D90000 */  lbu        $t9, ($a2)
/* C24F4 800C18F4 01602825 */  or         $a1, $t3, $zero
/* C24F8 800C18F8 0179082A */  slt        $at, $t3, $t9
/* C24FC 800C18FC 54200008 */  bnezl      $at, .L800C1920
/* C2500 800C1900 012A082A */   slt       $at, $t1, $t2
/* C2504 800C1904 90CC0001 */  lbu        $t4, 1($a2)
/* C2508 800C1908 0185082A */  slt        $at, $t4, $a1
/* C250C 800C190C 54200004 */  bnezl      $at, .L800C1920
/* C2510 800C1910 012A082A */   slt       $at, $t1, $t2
/* C2514 800C1914 03E00008 */  jr         $ra
/* C2518 800C1918 00E01025 */   or        $v0, $a3, $zero
/* C251C 800C191C 012A082A */  slt        $at, $t1, $t2
.L800C1920:
/* C2520 800C1920 14200009 */  bnez       $at, .L800C1948
/* C2524 800C1924 00000000 */   nop
/* C2528 800C1928 90CD0000 */  lbu        $t5, ($a2)
/* C252C 800C192C 016D082A */  slt        $at, $t3, $t5
/* C2530 800C1930 50200008 */  beql       $at, $zero, .L800C1954
/* C2534 800C1934 24830001 */   addiu     $v1, $a0, 1
/* C2538 800C1938 90CE0003 */  lbu        $t6, 3($a2)
/* C253C 800C193C 01C9082A */  slt        $at, $t6, $t1
/* C2540 800C1940 54200004 */  bnezl      $at, .L800C1954
/* C2544 800C1944 24830001 */   addiu     $v1, $a0, 1
.L800C1948:
/* C2548 800C1948 10000002 */  b          .L800C1954
/* C254C 800C194C 2488FFFF */   addiu     $t0, $a0, -1
/* C2550 800C1950 24830001 */  addiu      $v1, $a0, 1
.L800C1954:
/* C2554 800C1954 0103082A */  slt        $at, $t0, $v1
/* C2558 800C1958 5020FFD4 */  beql       $at, $zero, .L800C18AC
/* C255C 800C195C 00682821 */   addu      $a1, $v1, $t0
.L800C1960:
/* C2560 800C1960 00001025 */  or         $v0, $zero, $zero
/* C2564 800C1964 03E00008 */  jr         $ra
/* C2568 800C1968 00000000 */   nop

glabel func_800C196C
/* C256C 800C196C 27BDFF20 */  addiu      $sp, $sp, -0xe0
/* C2570 800C1970 AFBF0024 */  sw         $ra, 0x24($sp)
/* C2574 800C1974 90960008 */  lbu        $s6, 8($a0)
/* C2578 800C1978 90930009 */  lbu        $s3, 9($a0)
/* C257C 800C197C 9094000A */  lbu        $s4, 0xa($a0)
/* C2580 800C1980 32C300F0 */  andi       $v1, $s6, 0xf0
/* C2584 800C1984 246FFF80 */  addiu      $t7, $v1, -0x80
/* C2588 800C1988 2DE10061 */  sltiu      $at, $t7, 0x61
/* C258C 800C198C 32CE000F */  andi       $t6, $s6, 0xf
/* C2590 800C1990 102001F8 */  beqz       $at, .L800C2174
/* C2594 800C1994 01C0B025 */   or        $s6, $t6, $zero
/* C2598 800C1998 000F7880 */  sll        $t7, $t7, 2
/* C259C 800C199C 3C01800E */  lui        $at, %hi(D_800DF990)
/* C25A0 800C19A0 002F0821 */  addu       $at, $at, $t7
/* C25A4 800C19A4 8C2FF990 */  lw         $t7, %lo(D_800DF990)($at)
/* C25A8 800C19A8 01E00008 */  jr         $t7
/* C25AC 800C19AC 00000000 */   nop
/* C25B0 800C19B0 528000D5 */  beql       $s4, $zero, .L800C1D08
/* C25B4 800C19B4 02202025 */   or        $a0, $s1, $zero
/* C25B8 800C19B8 8E38002C */  lw         $t8, 0x2c($s1)
/* C25BC 800C19BC 24010001 */  addiu      $at, $zero, 1
/* C25C0 800C19C0 02202025 */  or         $a0, $s1, $zero
/* C25C4 800C19C4 170101EB */  bne        $t8, $at, .L800C2174
/* C25C8 800C19C8 326500FF */   andi      $a1, $s3, 0xff
/* C25CC 800C19CC 328600FF */  andi       $a2, $s4, 0xff
/* C25D0 800C19D0 0C03061C */  jal        func_800C1870
/* C25D4 800C19D4 32C700FF */   andi      $a3, $s6, 0xff
/* C25D8 800C19D8 104001E6 */  beqz       $v0, .L800C2174
/* C25DC 800C19DC 0040B825 */   or        $s7, $v0, $zero
/* C25E0 800C19E0 8E390060 */  lw         $t9, 0x60($s1)
/* C25E4 800C19E4 0016F100 */  sll        $fp, $s6, 4
/* C25E8 800C19E8 02202025 */  or         $a0, $s1, $zero
/* C25EC 800C19EC 033E7021 */  addu       $t6, $t9, $fp
/* C25F0 800C19F0 91CF0008 */  lbu        $t7, 8($t6)
/* C25F4 800C19F4 A7A0009E */  sh         $zero, 0x9e($sp)
/* C25F8 800C19F8 A3A000A0 */  sb         $zero, 0xa0($sp)
/* C25FC 800C19FC 326500FF */  andi       $a1, $s3, 0xff
/* C2600 800C1A00 328600FF */  andi       $a2, $s4, 0xff
/* C2604 800C1A04 32C700FF */  andi       $a3, $s6, 0xff
/* C2608 800C1A08 0C030600 */  jal        func_800C1800
/* C260C 800C1A0C A7AF009C */   sh        $t7, 0x9c($sp)
/* C2610 800C1A10 104001D8 */  beqz       $v0, .L800C2174
/* C2614 800C1A14 00408025 */   or        $s0, $v0, $zero
/* C2618 800C1A18 8E240014 */  lw         $a0, 0x14($s1)
/* C261C 800C1A1C 24450004 */  addiu      $a1, $v0, 4
/* C2620 800C1A20 AFA50034 */  sw         $a1, 0x34($sp)
/* C2624 800C1A24 0C03040A */  jal        func_800C1028
/* C2628 800C1A28 27A6009C */   addiu     $a2, $sp, 0x9c
/* C262C 800C1A2C AE170020 */  sw         $s7, 0x20($s0)
/* C2630 800C1A30 A2000034 */  sb         $zero, 0x34($s0)
/* C2634 800C1A34 8E380060 */  lw         $t8, 0x60($s1)
/* C2638 800C1A38 24150002 */  addiu      $s5, $zero, 2
/* C263C 800C1A3C 031EC821 */  addu       $t9, $t8, $fp
/* C2640 800C1A40 932E000B */  lbu        $t6, 0xb($t9)
/* C2644 800C1A44 29C10040 */  slti       $at, $t6, 0x40
/* C2648 800C1A48 54200004 */  bnezl      $at, .L800C1A5C
/* C264C 800C1A4C A2000035 */   sb        $zero, 0x35($s0)
/* C2650 800C1A50 10000002 */  b          .L800C1A5C
/* C2654 800C1A54 A2150035 */   sb        $s5, 0x35($s0)
/* C2658 800C1A58 A2000035 */  sb         $zero, 0x35($s0)
.L800C1A5C:
/* C265C 800C1A5C 8EE20004 */  lw         $v0, 4($s7)
/* C2660 800C1A60 904F0004 */  lbu        $t7, 4($v0)
/* C2664 800C1A64 804E0005 */  lb         $t6, 5($v0)
/* C2668 800C1A68 026FC023 */  subu       $t8, $s3, $t7
/* C266C 800C1A6C 0018C880 */  sll        $t9, $t8, 2
/* C2670 800C1A70 0338C823 */  subu       $t9, $t9, $t8
/* C2674 800C1A74 0019C8C0 */  sll        $t9, $t9, 3
/* C2678 800C1A78 0338C821 */  addu       $t9, $t9, $t8
/* C267C 800C1A7C 0019C880 */  sll        $t9, $t9, 2
/* C2680 800C1A80 032E2021 */  addu       $a0, $t9, $t6
/* C2684 800C1A84 00047C00 */  sll        $t7, $a0, 0x10
/* C2688 800C1A88 0C034618 */  jal        func_800D1860
/* C268C 800C1A8C 000F2403 */   sra       $a0, $t7, 0x10
/* C2690 800C1A90 E6000028 */  swc1       $f0, 0x28($s0)
/* C2694 800C1A94 8EF90000 */  lw         $t9, ($s7)
/* C2698 800C1A98 3C0142FE */  lui        $at, 0x42fe
/* C269C 800C1A9C 44812000 */  mtc1       $at, $f4
/* C26A0 800C1AA0 932E000C */  lbu        $t6, 0xc($t9)
/* C26A4 800C1AA4 A20E0030 */  sb         $t6, 0x30($s0)
/* C26A8 800C1AA8 8EF80000 */  lw         $t8, ($s7)
/* C26AC 800C1AAC 8E2F001C */  lw         $t7, 0x1c($s1)
/* C26B0 800C1AB0 8F190000 */  lw         $t9, ($t8)
/* C26B4 800C1AB4 A2000037 */  sb         $zero, 0x37($s0)
/* C26B8 800C1AB8 01F97021 */  addu       $t6, $t7, $t9
/* C26BC 800C1ABC AE0E0024 */  sw         $t6, 0x24($s0)
/* C26C0 800C1AC0 8E380060 */  lw         $t8, 0x60($s1)
/* C26C4 800C1AC4 031E7821 */  addu       $t7, $t8, $fp
/* C26C8 800C1AC8 8DF20000 */  lw         $s2, ($t7)
/* C26CC 800C1ACC E7A4008C */  swc1       $f4, 0x8c($sp)
/* C26D0 800C1AD0 92460004 */  lbu        $a2, 4($s2)
/* C26D4 800C1AD4 50C0001A */  beql       $a2, $zero, .L800C1B40
/* C26D8 800C1AD8 4458F800 */   cfc1      $t8, $31
/* C26DC 800C1ADC 8E220070 */  lw         $v0, 0x70($s1)
/* C26E0 800C1AE0 50400017 */  beql       $v0, $zero, .L800C1B40
/* C26E4 800C1AE4 4458F800 */   cfc1      $t8, $31
/* C26E8 800C1AE8 92590006 */  lbu        $t9, 6($s2)
/* C26EC 800C1AEC 92470005 */  lbu        $a3, 5($s2)
/* C26F0 800C1AF0 27A40084 */  addiu      $a0, $sp, 0x84
/* C26F4 800C1AF4 AFB90010 */  sw         $t9, 0x10($sp)
/* C26F8 800C1AF8 924E0007 */  lbu        $t6, 7($s2)
/* C26FC 800C1AFC 27A5008C */  addiu      $a1, $sp, 0x8c
/* C2700 800C1B00 0040F809 */  jalr       $v0
/* C2704 800C1B04 AFAE0014 */   sw        $t6, 0x14($sp)
/* C2708 800C1B08 1040000C */  beqz       $v0, .L800C1B3C
/* C270C 800C1B0C 24180016 */   addiu     $t8, $zero, 0x16
/* C2710 800C1B10 8FAF0084 */  lw         $t7, 0x84($sp)
/* C2714 800C1B14 A7B800B4 */  sh         $t8, 0xb4($sp)
/* C2718 800C1B18 AFB000B8 */  sw         $s0, 0xb8($sp)
/* C271C 800C1B1C 26240048 */  addiu      $a0, $s1, 0x48
/* C2720 800C1B20 27A500B4 */  addiu      $a1, $sp, 0xb4
/* C2724 800C1B24 00403025 */  or         $a2, $v0, $zero
/* C2728 800C1B28 0C03031B */  jal        func_800C0C6C
/* C272C 800C1B2C AFAF00BC */   sw        $t7, 0xbc($sp)
/* C2730 800C1B30 92190037 */  lbu        $t9, 0x37($s0)
/* C2734 800C1B34 372E0001 */  ori        $t6, $t9, 1
/* C2738 800C1B38 A20E0037 */  sb         $t6, 0x37($s0)
.L800C1B3C:
/* C273C 800C1B3C 4458F800 */  cfc1       $t8, $31
.L800C1B40:
/* C2740 800C1B40 240F0001 */  addiu      $t7, $zero, 1
/* C2744 800C1B44 44CFF800 */  ctc1       $t7, $31
/* C2748 800C1B48 C7A6008C */  lwc1       $f6, 0x8c($sp)
/* C274C 800C1B4C 3C014F00 */  lui        $at, 0x4f00
/* C2750 800C1B50 46003224 */  cvt.w.s    $f8, $f6
/* C2754 800C1B54 444FF800 */  cfc1       $t7, $31
/* C2758 800C1B58 00000000 */  nop
/* C275C 800C1B5C 31EF0078 */  andi       $t7, $t7, 0x78
/* C2760 800C1B60 51E00013 */  beql       $t7, $zero, .L800C1BB0
/* C2764 800C1B64 440F4000 */   mfc1      $t7, $f8
/* C2768 800C1B68 44814000 */  mtc1       $at, $f8
/* C276C 800C1B6C 240F0001 */  addiu      $t7, $zero, 1
/* C2770 800C1B70 46083201 */  sub.s      $f8, $f6, $f8
/* C2774 800C1B74 44CFF800 */  ctc1       $t7, $31
/* C2778 800C1B78 00000000 */  nop
/* C277C 800C1B7C 46004224 */  cvt.w.s    $f8, $f8
/* C2780 800C1B80 444FF800 */  cfc1       $t7, $31
/* C2784 800C1B84 00000000 */  nop
/* C2788 800C1B88 31EF0078 */  andi       $t7, $t7, 0x78
/* C278C 800C1B8C 15E00005 */  bnez       $t7, .L800C1BA4
/* C2790 800C1B90 00000000 */   nop
/* C2794 800C1B94 440F4000 */  mfc1       $t7, $f8
/* C2798 800C1B98 3C018000 */  lui        $at, 0x8000
/* C279C 800C1B9C 10000007 */  b          .L800C1BBC
/* C27A0 800C1BA0 01E17825 */   or        $t7, $t7, $at
.L800C1BA4:
/* C27A4 800C1BA4 10000005 */  b          .L800C1BBC
/* C27A8 800C1BA8 240FFFFF */   addiu     $t7, $zero, -1
/* C27AC 800C1BAC 440F4000 */  mfc1       $t7, $f8
.L800C1BB0:
/* C27B0 800C1BB0 00000000 */  nop
/* C27B4 800C1BB4 05E0FFFB */  bltz       $t7, .L800C1BA4
/* C27B8 800C1BB8 00000000 */   nop
.L800C1BBC:
/* C27BC 800C1BBC 3C013F80 */  lui        $at, 0x3f80
/* C27C0 800C1BC0 44815000 */  mtc1       $at, $f10
/* C27C4 800C1BC4 A20F0036 */  sb         $t7, 0x36($s0)
/* C27C8 800C1BC8 44D8F800 */  ctc1       $t8, $31
/* C27CC 800C1BCC E7AA008C */  swc1       $f10, 0x8c($sp)
/* C27D0 800C1BD0 92460008 */  lbu        $a2, 8($s2)
/* C27D4 800C1BD4 26350048 */  addiu      $s5, $s1, 0x48
/* C27D8 800C1BD8 50C0001B */  beql       $a2, $zero, .L800C1C48
/* C27DC 800C1BDC C7A4008C */   lwc1      $f4, 0x8c($sp)
/* C27E0 800C1BE0 8E220070 */  lw         $v0, 0x70($s1)
/* C27E4 800C1BE4 50400018 */  beql       $v0, $zero, .L800C1C48
/* C27E8 800C1BE8 C7A4008C */   lwc1      $f4, 0x8c($sp)
/* C27EC 800C1BEC 9259000A */  lbu        $t9, 0xa($s2)
/* C27F0 800C1BF0 92470009 */  lbu        $a3, 9($s2)
/* C27F4 800C1BF4 27A40084 */  addiu      $a0, $sp, 0x84
/* C27F8 800C1BF8 AFB90010 */  sw         $t9, 0x10($sp)
/* C27FC 800C1BFC 924E000B */  lbu        $t6, 0xb($s2)
/* C2800 800C1C00 27A5008C */  addiu      $a1, $sp, 0x8c
/* C2804 800C1C04 0040F809 */  jalr       $v0
/* C2808 800C1C08 AFAE0014 */   sw        $t6, 0x14($sp)
/* C280C 800C1C0C 1040000D */  beqz       $v0, .L800C1C44
/* C2810 800C1C10 24180017 */   addiu     $t8, $zero, 0x17
/* C2814 800C1C14 8FAF0084 */  lw         $t7, 0x84($sp)
/* C2818 800C1C18 A7B800B4 */  sh         $t8, 0xb4($sp)
/* C281C 800C1C1C AFB000B8 */  sw         $s0, 0xb8($sp)
/* C2820 800C1C20 A3B600C0 */  sb         $s6, 0xc0($sp)
/* C2824 800C1C24 02A02025 */  or         $a0, $s5, $zero
/* C2828 800C1C28 27A500B4 */  addiu      $a1, $sp, 0xb4
/* C282C 800C1C2C 00403025 */  or         $a2, $v0, $zero
/* C2830 800C1C30 0C03031B */  jal        func_800C0C6C
/* C2834 800C1C34 AFAF00BC */   sw        $t7, 0xbc($sp)
/* C2838 800C1C38 92190037 */  lbu        $t9, 0x37($s0)
/* C283C 800C1C3C 372E0002 */  ori        $t6, $t9, 2
/* C2840 800C1C40 A20E0037 */  sb         $t6, 0x37($s0)
.L800C1C44:
/* C2844 800C1C44 C7A4008C */  lwc1       $f4, 0x8c($sp)
.L800C1C48:
/* C2848 800C1C48 C6080028 */  lwc1       $f8, 0x28($s0)
/* C284C 800C1C4C 02002025 */  or         $a0, $s0, $zero
/* C2850 800C1C50 E604002C */  swc1       $f4, 0x2c($s0)
/* C2854 800C1C54 8E380060 */  lw         $t8, 0x60($s1)
/* C2858 800C1C58 C604002C */  lwc1       $f4, 0x2c($s0)
/* C285C 800C1C5C 02202825 */  or         $a1, $s1, $zero
/* C2860 800C1C60 031E1021 */  addu       $v0, $t8, $fp
/* C2864 800C1C64 C446000C */  lwc1       $f6, 0xc($v0)
/* C2868 800C1C68 9052000A */  lbu        $s2, 0xa($v0)
/* C286C 800C1C6C 46083282 */  mul.s      $f10, $f6, $f8
/* C2870 800C1C70 00000000 */  nop
/* C2874 800C1C74 46045502 */  mul.s      $f20, $f10, $f4
/* C2878 800C1C78 0C0305D1 */  jal        func_800C1744
/* C287C 800C1C7C 00000000 */   nop
/* C2880 800C1C80 305400FF */  andi       $s4, $v0, 0xff
/* C2884 800C1C84 02002025 */  or         $a0, $s0, $zero
/* C2888 800C1C88 0C0304C9 */  jal        func_800C1324
/* C288C 800C1C8C 02202825 */   or        $a1, $s1, $zero
/* C2890 800C1C90 8EEF0000 */  lw         $t7, ($s7)
/* C2894 800C1C94 8E240014 */  lw         $a0, 0x14($s1)
/* C2898 800C1C98 8EE60008 */  lw         $a2, 8($s7)
/* C289C 800C1C9C 8DF30000 */  lw         $s3, ($t7)
/* C28A0 800C1CA0 4407A000 */  mfc1       $a3, $f20
/* C28A4 800C1CA4 AFB20018 */  sw         $s2, 0x18($sp)
/* C28A8 800C1CA8 AFB40014 */  sw         $s4, 0x14($sp)
/* C28AC 800C1CAC AFA20010 */  sw         $v0, 0x10($sp)
/* C28B0 800C1CB0 8FA50034 */  lw         $a1, 0x34($sp)
/* C28B4 800C1CB4 0C03462C */  jal        func_800D18B0
/* C28B8 800C1CB8 AFB3001C */   sw        $s3, 0x1c($sp)
/* C28BC 800C1CBC 8FAE0034 */  lw         $t6, 0x34($sp)
/* C28C0 800C1CC0 24190006 */  addiu      $t9, $zero, 6
/* C28C4 800C1CC4 A7B900B4 */  sh         $t9, 0xb4($sp)
/* C28C8 800C1CC8 AFAE00B8 */  sw         $t6, 0xb8($sp)
/* C28CC 800C1CCC 8EF80000 */  lw         $t8, ($s7)
/* C28D0 800C1CD0 02A02025 */  or         $a0, $s5, $zero
/* C28D4 800C1CD4 27A500B4 */  addiu      $a1, $sp, 0xb4
/* C28D8 800C1CD8 930F000D */  lbu        $t7, 0xd($t8)
/* C28DC 800C1CDC A3AF00C0 */  sb         $t7, 0xc0($sp)
/* C28E0 800C1CE0 8EF90000 */  lw         $t9, ($s7)
/* C28E4 800C1CE4 8F2E0004 */  lw         $t6, 4($t9)
/* C28E8 800C1CE8 AFAE00BC */  sw         $t6, 0xbc($sp)
/* C28EC 800C1CEC 8EF80000 */  lw         $t8, ($s7)
/* C28F0 800C1CF0 8F130000 */  lw         $s3, ($t8)
/* C28F4 800C1CF4 0C03031B */  jal        func_800C0C6C
/* C28F8 800C1CF8 02603025 */   or        $a2, $s3, $zero
/* C28FC 800C1CFC 1000011E */  b          .L800C2178
/* C2900 800C1D00 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2904 800C1D04 02202025 */  or         $a0, $s1, $zero
.L800C1D08:
/* C2908 800C1D08 326500FF */  andi       $a1, $s3, 0xff
/* C290C 800C1D0C 0C0305E3 */  jal        func_800C178C
/* C2910 800C1D10 32C600FF */   andi      $a2, $s6, 0xff
/* C2914 800C1D14 10400117 */  beqz       $v0, .L800C2174
/* C2918 800C1D18 00408025 */   or        $s0, $v0, $zero
/* C291C 800C1D1C 904F0035 */  lbu        $t7, 0x35($v0)
/* C2920 800C1D20 24160002 */  addiu      $s6, $zero, 2
/* C2924 800C1D24 24190004 */  addiu      $t9, $zero, 4
/* C2928 800C1D28 16CF0003 */  bne        $s6, $t7, .L800C1D38
/* C292C 800C1D2C 02202025 */   or        $a0, $s1, $zero
/* C2930 800C1D30 10000110 */  b          .L800C2174
/* C2934 800C1D34 A0590035 */   sb        $t9, 0x35($v0)
.L800C1D38:
/* C2938 800C1D38 8E0E0020 */  lw         $t6, 0x20($s0)
/* C293C 800C1D3C 241E0003 */  addiu      $fp, $zero, 3
/* C2940 800C1D40 A21E0035 */  sb         $fp, 0x35($s0)
/* C2944 800C1D44 8DD80000 */  lw         $t8, ($t6)
/* C2948 800C1D48 26050004 */  addiu      $a1, $s0, 4
/* C294C 800C1D4C 0C0304EB */  jal        func_800C13AC
/* C2950 800C1D50 8F060008 */   lw        $a2, 8($t8)
/* C2954 800C1D54 10000108 */  b          .L800C2178
/* C2958 800C1D58 8FBF0024 */   lw        $ra, 0x24($sp)
/* C295C 800C1D5C 02202025 */  or         $a0, $s1, $zero
/* C2960 800C1D60 326500FF */  andi       $a1, $s3, 0xff
/* C2964 800C1D64 0C0305E3 */  jal        func_800C178C
/* C2968 800C1D68 32C600FF */   andi      $a2, $s6, 0xff
/* C296C 800C1D6C 10400101 */  beqz       $v0, .L800C2174
/* C2970 800C1D70 00408025 */   or        $s0, $v0, $zero
/* C2974 800C1D74 A0540033 */  sb         $s4, 0x33($v0)
/* C2978 800C1D78 00402025 */  or         $a0, $v0, $zero
/* C297C 800C1D7C 0C0304C9 */  jal        func_800C1324
/* C2980 800C1D80 02202825 */   or        $a1, $s1, $zero
/* C2984 800C1D84 8E23001C */  lw         $v1, 0x1c($s1)
/* C2988 800C1D88 8E190024 */  lw         $t9, 0x24($s0)
/* C298C 800C1D8C 00023400 */  sll        $a2, $v0, 0x10
/* C2990 800C1D90 00067C03 */  sra        $t7, $a2, 0x10
/* C2994 800C1D94 03232023 */  subu       $a0, $t9, $v1
/* C2998 800C1D98 04800003 */  bltz       $a0, .L800C1DA8
/* C299C 800C1D9C 01E03025 */   or        $a2, $t7, $zero
/* C29A0 800C1DA0 10000002 */  b          .L800C1DAC
/* C29A4 800C1DA4 00801025 */   or        $v0, $a0, $zero
.L800C1DA8:
/* C29A8 800C1DA8 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800C1DAC:
/* C29AC 800C1DAC 8E240014 */  lw         $a0, 0x14($s1)
/* C29B0 800C1DB0 26050004 */  addiu      $a1, $s0, 4
/* C29B4 800C1DB4 0C0302AC */  jal        func_800C0AB0
/* C29B8 800C1DB8 00403825 */   or        $a3, $v0, $zero
/* C29BC 800C1DBC 100000EE */  b          .L800C2178
/* C29C0 800C1DC0 8FBF0024 */   lw        $ra, 0x24($sp)
/* C29C4 800C1DC4 8E300064 */  lw         $s0, 0x64($s1)
/* C29C8 800C1DC8 520000EB */  beql       $s0, $zero, .L800C2178
/* C29CC 800C1DCC 8FBF0024 */   lw        $ra, 0x24($sp)
/* C29D0 800C1DD0 02C09025 */  or         $s2, $s6, $zero
/* C29D4 800C1DD4 920E0031 */  lbu        $t6, 0x31($s0)
.L800C1DD8:
/* C29D8 800C1DD8 02002025 */  or         $a0, $s0, $zero
/* C29DC 800C1DDC 02202825 */  or         $a1, $s1, $zero
/* C29E0 800C1DE0 564E0012 */  bnel       $s2, $t6, .L800C1E2C
/* C29E4 800C1DE4 8E100000 */   lw        $s0, ($s0)
/* C29E8 800C1DE8 0C0304C9 */  jal        func_800C1324
/* C29EC 800C1DEC A2130033 */   sb        $s3, 0x33($s0)
/* C29F0 800C1DF0 8E23001C */  lw         $v1, 0x1c($s1)
/* C29F4 800C1DF4 8E0F0024 */  lw         $t7, 0x24($s0)
/* C29F8 800C1DF8 00023400 */  sll        $a2, $v0, 0x10
/* C29FC 800C1DFC 0006C403 */  sra        $t8, $a2, 0x10
/* C2A00 800C1E00 01E32023 */  subu       $a0, $t7, $v1
/* C2A04 800C1E04 04800003 */  bltz       $a0, .L800C1E14
/* C2A08 800C1E08 03003025 */   or        $a2, $t8, $zero
/* C2A0C 800C1E0C 10000002 */  b          .L800C1E18
/* C2A10 800C1E10 00801025 */   or        $v0, $a0, $zero
.L800C1E14:
/* C2A14 800C1E14 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800C1E18:
/* C2A18 800C1E18 8E240014 */  lw         $a0, 0x14($s1)
/* C2A1C 800C1E1C 26050004 */  addiu      $a1, $s0, 4
/* C2A20 800C1E20 0C0302AC */  jal        func_800C0AB0
/* C2A24 800C1E24 00403825 */   or        $a3, $v0, $zero
/* C2A28 800C1E28 8E100000 */  lw         $s0, ($s0)
.L800C1E2C:
/* C2A2C 800C1E2C 5600FFEA */  bnezl      $s0, .L800C1DD8
/* C2A30 800C1E30 920E0031 */   lbu       $t6, 0x31($s0)
/* C2A34 800C1E34 100000D0 */  b          .L800C2178
/* C2A38 800C1E38 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2A3C 800C1E3C 2A610041 */  slti       $at, $s3, 0x41
/* C2A40 800C1E40 14200008 */  bnez       $at, .L800C1E64
/* C2A44 800C1E44 02601025 */   or        $v0, $s3, $zero
/* C2A48 800C1E48 2401005B */  addiu      $at, $zero, 0x5b
/* C2A4C 800C1E4C 10410082 */  beq        $v0, $at, .L800C2058
/* C2A50 800C1E50 2401005D */   addiu     $at, $zero, 0x5d
/* C2A54 800C1E54 504100C8 */  beql       $v0, $at, .L800C2178
/* C2A58 800C1E58 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2A5C 800C1E5C 100000C6 */  b          .L800C2178
/* C2A60 800C1E60 8FBF0024 */   lw        $ra, 0x24($sp)
.L800C1E64:
/* C2A64 800C1E64 2841001C */  slti       $at, $v0, 0x1c
/* C2A68 800C1E68 14200006 */  bnez       $at, .L800C1E84
/* C2A6C 800C1E6C 2459FFF9 */   addiu     $t9, $v0, -7
/* C2A70 800C1E70 24010040 */  addiu      $at, $zero, 0x40
/* C2A74 800C1E74 5041004D */  beql       $v0, $at, .L800C1FAC
/* C2A78 800C1E78 8E2F0060 */   lw        $t7, 0x60($s1)
/* C2A7C 800C1E7C 100000BE */  b          .L800C2178
/* C2A80 800C1E80 8FBF0024 */   lw        $ra, 0x24($sp)
.L800C1E84:
/* C2A84 800C1E84 2F210015 */  sltiu      $at, $t9, 0x15
/* C2A88 800C1E88 102000BA */  beqz       $at, .L800C2174
/* C2A8C 800C1E8C 0019C880 */   sll       $t9, $t9, 2
/* C2A90 800C1E90 3C01800E */  lui        $at, %hi(D_800DFB14)
/* C2A94 800C1E94 00390821 */  addu       $at, $at, $t9
/* C2A98 800C1E98 8C39FB14 */  lw         $t9, %lo(D_800DFB14)($at)
/* C2A9C 800C1E9C 03200008 */  jr         $t9
/* C2AA0 800C1EA0 00000000 */   nop
/* C2AA4 800C1EA4 8E2E0060 */  lw         $t6, 0x60($s1)
/* C2AA8 800C1EA8 0016C100 */  sll        $t8, $s6, 4
/* C2AAC 800C1EAC 01D87821 */  addu       $t7, $t6, $t8
/* C2AB0 800C1EB0 A1F40007 */  sb         $s4, 7($t7)
/* C2AB4 800C1EB4 8E300064 */  lw         $s0, 0x64($s1)
/* C2AB8 800C1EB8 520000AF */  beql       $s0, $zero, .L800C2178
/* C2ABC 800C1EBC 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2AC0 800C1EC0 02C09025 */  or         $s2, $s6, $zero
/* C2AC4 800C1EC4 92190031 */  lbu        $t9, 0x31($s0)
.L800C1EC8:
/* C2AC8 800C1EC8 02002025 */  or         $a0, $s0, $zero
/* C2ACC 800C1ECC 56590008 */  bnel       $s2, $t9, .L800C1EF0
/* C2AD0 800C1ED0 8E100000 */   lw        $s0, ($s0)
/* C2AD4 800C1ED4 0C0305D1 */  jal        func_800C1744
/* C2AD8 800C1ED8 02202825 */   or        $a1, $s1, $zero
/* C2ADC 800C1EDC 8E240014 */  lw         $a0, 0x14($s1)
/* C2AE0 800C1EE0 26050004 */  addiu      $a1, $s0, 4
/* C2AE4 800C1EE4 0C031748 */  jal        func_800C5D20
/* C2AE8 800C1EE8 304600FF */   andi      $a2, $v0, 0xff
/* C2AEC 800C1EEC 8E100000 */  lw         $s0, ($s0)
.L800C1EF0:
/* C2AF0 800C1EF0 5600FFF5 */  bnezl      $s0, .L800C1EC8
/* C2AF4 800C1EF4 92190031 */   lbu       $t9, 0x31($s0)
/* C2AF8 800C1EF8 1000009F */  b          .L800C2178
/* C2AFC 800C1EFC 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2B00 800C1F00 8E2E0060 */  lw         $t6, 0x60($s1)
/* C2B04 800C1F04 0016C100 */  sll        $t8, $s6, 4
/* C2B08 800C1F08 01D87821 */  addu       $t7, $t6, $t8
/* C2B0C 800C1F0C A1F40009 */  sb         $s4, 9($t7)
/* C2B10 800C1F10 8E300064 */  lw         $s0, 0x64($s1)
/* C2B14 800C1F14 52000098 */  beql       $s0, $zero, .L800C2178
/* C2B18 800C1F18 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2B1C 800C1F1C 02C09025 */  or         $s2, $s6, $zero
/* C2B20 800C1F20 24130003 */  addiu      $s3, $zero, 3
/* C2B24 800C1F24 92190031 */  lbu        $t9, 0x31($s0)
.L800C1F28:
/* C2B28 800C1F28 56590016 */  bnel       $s2, $t9, .L800C1F84
/* C2B2C 800C1F2C 8E100000 */   lw        $s0, ($s0)
/* C2B30 800C1F30 920E0034 */  lbu        $t6, 0x34($s0)
/* C2B34 800C1F34 02002025 */  or         $a0, $s0, $zero
/* C2B38 800C1F38 526E0012 */  beql       $s3, $t6, .L800C1F84
/* C2B3C 800C1F3C 8E100000 */   lw        $s0, ($s0)
/* C2B40 800C1F40 0C0304C9 */  jal        func_800C1324
/* C2B44 800C1F44 02202825 */   or        $a1, $s1, $zero
/* C2B48 800C1F48 8E23001C */  lw         $v1, 0x1c($s1)
/* C2B4C 800C1F4C 8E0F0024 */  lw         $t7, 0x24($s0)
/* C2B50 800C1F50 00023400 */  sll        $a2, $v0, 0x10
/* C2B54 800C1F54 0006C403 */  sra        $t8, $a2, 0x10
/* C2B58 800C1F58 01E32023 */  subu       $a0, $t7, $v1
/* C2B5C 800C1F5C 04800003 */  bltz       $a0, .L800C1F6C
/* C2B60 800C1F60 03003025 */   or        $a2, $t8, $zero
/* C2B64 800C1F64 10000002 */  b          .L800C1F70
/* C2B68 800C1F68 00801025 */   or        $v0, $a0, $zero
.L800C1F6C:
/* C2B6C 800C1F6C 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800C1F70:
/* C2B70 800C1F70 8E240014 */  lw         $a0, 0x14($s1)
/* C2B74 800C1F74 26050004 */  addiu      $a1, $s0, 4
/* C2B78 800C1F78 0C0302AC */  jal        func_800C0AB0
/* C2B7C 800C1F7C 00403825 */   or        $a3, $v0, $zero
/* C2B80 800C1F80 8E100000 */  lw         $s0, ($s0)
.L800C1F84:
/* C2B84 800C1F84 5600FFE8 */  bnezl      $s0, .L800C1F28
/* C2B88 800C1F88 92190031 */   lbu       $t9, 0x31($s0)
/* C2B8C 800C1F8C 1000007A */  b          .L800C2178
/* C2B90 800C1F90 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2B94 800C1F94 8E390060 */  lw         $t9, 0x60($s1)
/* C2B98 800C1F98 00167100 */  sll        $t6, $s6, 4
/* C2B9C 800C1F9C 032EC021 */  addu       $t8, $t9, $t6
/* C2BA0 800C1FA0 10000074 */  b          .L800C2174
/* C2BA4 800C1FA4 A3140008 */   sb        $s4, 8($t8)
/* C2BA8 800C1FA8 8E2F0060 */  lw         $t7, 0x60($s1)
.L800C1FAC:
/* C2BAC 800C1FAC 0016C900 */  sll        $t9, $s6, 4
/* C2BB0 800C1FB0 01F97021 */  addu       $t6, $t7, $t9
/* C2BB4 800C1FB4 A1D4000B */  sb         $s4, 0xb($t6)
/* C2BB8 800C1FB8 8E300064 */  lw         $s0, 0x64($s1)
/* C2BBC 800C1FBC 5200006E */  beql       $s0, $zero, .L800C2178
/* C2BC0 800C1FC0 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2BC4 800C1FC4 02C09025 */  or         $s2, $s6, $zero
/* C2BC8 800C1FC8 24160002 */  addiu      $s6, $zero, 2
/* C2BCC 800C1FCC 241E0003 */  addiu      $fp, $zero, 3
/* C2BD0 800C1FD0 24170004 */  addiu      $s7, $zero, 4
/* C2BD4 800C1FD4 24150002 */  addiu      $s5, $zero, 2
/* C2BD8 800C1FD8 24130003 */  addiu      $s3, $zero, 3
/* C2BDC 800C1FDC 92180031 */  lbu        $t8, 0x31($s0)
.L800C1FE0:
/* C2BE0 800C1FE0 56580019 */  bnel       $s2, $t8, .L800C2048
/* C2BE4 800C1FE4 8E100000 */   lw        $s0, ($s0)
/* C2BE8 800C1FE8 92020035 */  lbu        $v0, 0x35($s0)
/* C2BEC 800C1FEC 2A810040 */  slti       $at, $s4, 0x40
/* C2BF0 800C1FF0 52620015 */  beql       $s3, $v0, .L800C2048
/* C2BF4 800C1FF4 8E100000 */   lw        $s0, ($s0)
/* C2BF8 800C1FF8 14200005 */  bnez       $at, .L800C2010
/* C2BFC 800C1FFC 00000000 */   nop
/* C2C00 800C2000 54400011 */  bnezl      $v0, .L800C2048
/* C2C04 800C2004 8E100000 */   lw        $s0, ($s0)
/* C2C08 800C2008 1000000E */  b          .L800C2044
/* C2C0C 800C200C A2150035 */   sb        $s5, 0x35($s0)
.L800C2010:
/* C2C10 800C2010 16C20003 */  bne        $s6, $v0, .L800C2020
/* C2C14 800C2014 00000000 */   nop
/* C2C18 800C2018 1000000A */  b          .L800C2044
/* C2C1C 800C201C A2000035 */   sb        $zero, 0x35($s0)
.L800C2020:
/* C2C20 800C2020 56E20009 */  bnel       $s7, $v0, .L800C2048
/* C2C24 800C2024 8E100000 */   lw        $s0, ($s0)
/* C2C28 800C2028 8E0F0020 */  lw         $t7, 0x20($s0)
/* C2C2C 800C202C A21E0035 */  sb         $fp, 0x35($s0)
/* C2C30 800C2030 02202025 */  or         $a0, $s1, $zero
/* C2C34 800C2034 8DF90000 */  lw         $t9, ($t7)
/* C2C38 800C2038 26050004 */  addiu      $a1, $s0, 4
/* C2C3C 800C203C 0C0304EB */  jal        func_800C13AC
/* C2C40 800C2040 8F260008 */   lw        $a2, 8($t9)
.L800C2044:
/* C2C44 800C2044 8E100000 */  lw         $s0, ($s0)
.L800C2048:
/* C2C48 800C2048 5600FFE5 */  bnezl      $s0, .L800C1FE0
/* C2C4C 800C204C 92180031 */   lbu       $t8, 0x31($s0)
/* C2C50 800C2050 10000049 */  b          .L800C2178
/* C2C54 800C2054 8FBF0024 */   lw        $ra, 0x24($sp)
.L800C2058:
/* C2C58 800C2058 8E2E0060 */  lw         $t6, 0x60($s1)
/* C2C5C 800C205C 0016C100 */  sll        $t8, $s6, 4
/* C2C60 800C2060 01D87821 */  addu       $t7, $t6, $t8
/* C2C64 800C2064 A1F4000A */  sb         $s4, 0xa($t7)
/* C2C68 800C2068 8E300064 */  lw         $s0, 0x64($s1)
/* C2C6C 800C206C 52000042 */  beql       $s0, $zero, .L800C2178
/* C2C70 800C2070 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2C74 800C2074 02C09025 */  or         $s2, $s6, $zero
/* C2C78 800C2078 92190031 */  lbu        $t9, 0x31($s0)
.L800C207C:
/* C2C7C 800C207C 26050004 */  addiu      $a1, $s0, 4
/* C2C80 800C2080 328600FF */  andi       $a2, $s4, 0xff
/* C2C84 800C2084 56590004 */  bnel       $s2, $t9, .L800C2098
/* C2C88 800C2088 8E100000 */   lw        $s0, ($s0)
/* C2C8C 800C208C 0C03359C */  jal        func_800CD670
/* C2C90 800C2090 8E240014 */   lw        $a0, 0x14($s1)
/* C2C94 800C2094 8E100000 */  lw         $s0, ($s0)
.L800C2098:
/* C2C98 800C2098 5600FFF8 */  bnezl      $s0, .L800C207C
/* C2C9C 800C209C 92190031 */   lbu       $t9, 0x31($s0)
/* C2CA0 800C20A0 10000035 */  b          .L800C2178
/* C2CA4 800C20A4 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2CA8 800C20A8 8E220020 */  lw         $v0, 0x20($s1)
/* C2CAC 800C20AC 0013C080 */  sll        $t8, $s3, 2
/* C2CB0 800C20B0 02202025 */  or         $a0, $s1, $zero
/* C2CB4 800C20B4 844E0000 */  lh         $t6, ($v0)
/* C2CB8 800C20B8 02C03025 */  or         $a2, $s6, $zero
/* C2CBC 800C20BC 00587821 */  addu       $t7, $v0, $t8
/* C2CC0 800C20C0 026E082A */  slt        $at, $s3, $t6
/* C2CC4 800C20C4 5020002C */  beql       $at, $zero, .L800C2178
/* C2CC8 800C20C8 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2CCC 800C20CC 0C03045C */  jal        func_800C1170
/* C2CD0 800C20D0 8DE5000C */   lw        $a1, 0xc($t7)
/* C2CD4 800C20D4 10000028 */  b          .L800C2178
/* C2CD8 800C20D8 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2CDC 800C20DC 8E390060 */  lw         $t9, 0x60($s1)
/* C2CE0 800C20E0 0016F100 */  sll        $fp, $s6, 4
/* C2CE4 800C20E4 001479C0 */  sll        $t7, $s4, 7
/* C2CE8 800C20E8 033E7021 */  addu       $t6, $t9, $fp
/* C2CEC 800C20EC 85D80004 */  lh         $t8, 4($t6)
/* C2CF0 800C20F0 01F3C821 */  addu       $t9, $t7, $s3
/* C2CF4 800C20F4 272EE000 */  addiu      $t6, $t9, -0x2000
/* C2CF8 800C20F8 030E0019 */  multu      $t8, $t6
/* C2CFC 800C20FC 00002012 */  mflo       $a0
/* C2D00 800C2100 04810003 */  bgez       $a0, .L800C2110
/* C2D04 800C2104 00047B43 */   sra       $t7, $a0, 0xd
/* C2D08 800C2108 24811FFF */  addiu      $at, $a0, 0x1fff
/* C2D0C 800C210C 00017B43 */  sra        $t7, $at, 0xd
.L800C2110:
/* C2D10 800C2110 0C034618 */  jal        func_800D1860
/* C2D14 800C2114 01E02025 */   or        $a0, $t7, $zero
/* C2D18 800C2118 8E390060 */  lw         $t9, 0x60($s1)
/* C2D1C 800C211C 46000506 */  mov.s      $f20, $f0
/* C2D20 800C2120 033EC021 */  addu       $t8, $t9, $fp
/* C2D24 800C2124 E700000C */  swc1       $f0, 0xc($t8)
/* C2D28 800C2128 8E300064 */  lw         $s0, 0x64($s1)
/* C2D2C 800C212C 52000012 */  beql       $s0, $zero, .L800C2178
/* C2D30 800C2130 8FBF0024 */   lw        $ra, 0x24($sp)
/* C2D34 800C2134 02C09025 */  or         $s2, $s6, $zero
/* C2D38 800C2138 920E0031 */  lbu        $t6, 0x31($s0)
.L800C213C:
/* C2D3C 800C213C 564E000B */  bnel       $s2, $t6, .L800C216C
/* C2D40 800C2140 8E100000 */   lw        $s0, ($s0)
/* C2D44 800C2144 C6060028 */  lwc1       $f6, 0x28($s0)
/* C2D48 800C2148 C60A002C */  lwc1       $f10, 0x2c($s0)
/* C2D4C 800C214C 8E240014 */  lw         $a0, 0x14($s1)
/* C2D50 800C2150 46143202 */  mul.s      $f8, $f6, $f20
/* C2D54 800C2154 26050004 */  addiu      $a1, $s0, 4
/* C2D58 800C2158 460A4102 */  mul.s      $f4, $f8, $f10
/* C2D5C 800C215C 44062000 */  mfc1       $a2, $f4
/* C2D60 800C2160 0C0316F4 */  jal        func_800C5BD0
/* C2D64 800C2164 00000000 */   nop
/* C2D68 800C2168 8E100000 */  lw         $s0, ($s0)
.L800C216C:
/* C2D6C 800C216C 5600FFF3 */  bnezl      $s0, .L800C213C
/* C2D70 800C2170 920E0031 */   lbu       $t6, 0x31($s0)
.L800C2174:
/* C2D74 800C2174 8FBF0024 */  lw         $ra, 0x24($sp)
.L800C2178:
/* C2D78 800C2178 27BD00E0 */  addiu      $sp, $sp, 0xe0
/* C2D7C 800C217C 03E00008 */  jr         $ra
/* C2D80 800C2180 00000000 */   nop

glabel func_800C2184
/* C2D84 800C2184 03E00008 */  jr         $ra
/* C2D88 800C2188 00000000 */   nop

glabel func_800C218C
/* C2D8C 800C218C 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* C2D90 800C2190 AFB50034 */  sw         $s5, 0x34($sp)
/* C2D94 800C2194 AFB20028 */  sw         $s2, 0x28($sp)
/* C2D98 800C2198 248E0038 */  addiu      $t6, $a0, 0x38
/* C2D9C 800C219C 00809025 */  or         $s2, $a0, $zero
/* C2DA0 800C21A0 AFBF0044 */  sw         $ra, 0x44($sp)
/* C2DA4 800C21A4 AFBE0040 */  sw         $fp, 0x40($sp)
/* C2DA8 800C21A8 AFB7003C */  sw         $s7, 0x3c($sp)
/* C2DAC 800C21AC AFB60038 */  sw         $s6, 0x38($sp)
/* C2DB0 800C21B0 AFB40030 */  sw         $s4, 0x30($sp)
/* C2DB4 800C21B4 AFB3002C */  sw         $s3, 0x2c($sp)
/* C2DB8 800C21B8 AFB10024 */  sw         $s1, 0x24($sp)
/* C2DBC 800C21BC AFB00020 */  sw         $s0, 0x20($sp)
/* C2DC0 800C21C0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* C2DC4 800C21C4 AFAE0050 */  sw         $t6, 0x50($sp)
/* C2DC8 800C21C8 24950048 */  addiu      $s5, $a0, 0x48
.L800C21CC:
/* C2DCC 800C21CC 964F0038 */  lhu        $t7, 0x38($s2)
/* C2DD0 800C21D0 2DE10018 */  sltiu      $at, $t7, 0x18
/* C2DD4 800C21D4 10200161 */  beqz       $at, .L800C275C
/* C2DD8 800C21D8 000F7880 */   sll       $t7, $t7, 2
/* C2DDC 800C21DC 3C01800E */  lui        $at, %hi(D_800DFB68)
/* C2DE0 800C21E0 002F0821 */  addu       $at, $at, $t7
/* C2DE4 800C21E4 8C2FFB68 */  lw         $t7, %lo(D_800DFB68)($at)
/* C2DE8 800C21E8 01E00008 */  jr         $t7
/* C2DEC 800C21EC 00000000 */   nop
/* C2DF0 800C21F0 8E440018 */  lw         $a0, 0x18($s2)
/* C2DF4 800C21F4 5080015A */  beql       $a0, $zero, .L800C2760
/* C2DF8 800C21F8 02A02025 */   or        $a0, $s5, $zero
/* C2DFC 800C21FC 0C030AD5 */  jal        func_800C2B54
/* C2E00 800C2200 27A50088 */   addiu     $a1, $sp, 0x88
/* C2E04 800C2204 87A20088 */  lh         $v0, 0x88($sp)
/* C2E08 800C2208 24010001 */  addiu      $at, $zero, 1
/* C2E0C 800C220C 02408825 */  or         $s1, $s2, $zero
/* C2E10 800C2210 10410009 */  beq        $v0, $at, .L800C2238
/* C2E14 800C2214 27A40088 */   addiu     $a0, $sp, 0x88
/* C2E18 800C2218 24010003 */  addiu      $at, $zero, 3
/* C2E1C 800C221C 1041000F */  beq        $v0, $at, .L800C225C
/* C2E20 800C2220 02402825 */   or        $a1, $s2, $zero
/* C2E24 800C2224 24010004 */  addiu      $at, $zero, 4
/* C2E28 800C2228 10410012 */  beq        $v0, $at, .L800C2274
/* C2E2C 800C222C 24180002 */   addiu     $t8, $zero, 2
/* C2E30 800C2230 1000014B */  b          .L800C2760
/* C2E34 800C2234 02A02025 */   or        $a0, $s5, $zero
.L800C2238:
/* C2E38 800C2238 AFB200D0 */  sw         $s2, 0xd0($sp)
/* C2E3C 800C223C 0C03065B */  jal        func_800C196C
/* C2E40 800C2240 AFB5004C */   sw        $s5, 0x4c($sp)
/* C2E44 800C2244 8FB200D0 */  lw         $s2, 0xd0($sp)
/* C2E48 800C2248 8FB5004C */  lw         $s5, 0x4c($sp)
/* C2E4C 800C224C 0C03057C */  jal        func_800C15F0
/* C2E50 800C2250 02402025 */   or        $a0, $s2, $zero
/* C2E54 800C2254 10000142 */  b          .L800C2760
/* C2E58 800C2258 02A02025 */   or        $a0, $s5, $zero
.L800C225C:
/* C2E5C 800C225C 0C0305B3 */  jal        func_800C16CC
/* C2E60 800C2260 27A40088 */   addiu     $a0, $sp, 0x88
/* C2E64 800C2264 0C03057C */  jal        func_800C15F0
/* C2E68 800C2268 02402025 */   or        $a0, $s2, $zero
/* C2E6C 800C226C 1000013C */  b          .L800C2760
/* C2E70 800C2270 02A02025 */   or        $a0, $s5, $zero
.L800C2274:
/* C2E74 800C2274 AE58002C */  sw         $t8, 0x2c($s2)
/* C2E78 800C2278 24190010 */  addiu      $t9, $zero, 0x10
/* C2E7C 800C227C 3C067FFF */  lui        $a2, 0x7fff
/* C2E80 800C2280 A7B90088 */  sh         $t9, 0x88($sp)
/* C2E84 800C2284 34C6FFFF */  ori        $a2, $a2, 0xffff
/* C2E88 800C2288 02A02025 */  or         $a0, $s5, $zero
/* C2E8C 800C228C 0C03031B */  jal        func_800C0C6C
/* C2E90 800C2290 27A50088 */   addiu     $a1, $sp, 0x88
/* C2E94 800C2294 10000132 */  b          .L800C2760
/* C2E98 800C2298 02A02025 */   or        $a0, $s5, $zero
/* C2E9C 800C229C 240E0009 */  addiu      $t6, $zero, 9
/* C2EA0 800C22A0 A7AE00BC */  sh         $t6, 0xbc($sp)
/* C2EA4 800C22A4 8E46005C */  lw         $a2, 0x5c($s2)
/* C2EA8 800C22A8 02A02025 */  or         $a0, $s5, $zero
/* C2EAC 800C22AC 0C03031B */  jal        func_800C0C6C
/* C2EB0 800C22B0 27A500BC */   addiu     $a1, $sp, 0xbc
/* C2EB4 800C22B4 1000012A */  b          .L800C2760
/* C2EB8 800C22B8 02A02025 */   or        $a0, $s5, $zero
/* C2EBC 800C22BC 8E50003C */  lw         $s0, 0x3c($s2)
/* C2EC0 800C22C0 8E440014 */  lw         $a0, 0x14($s2)
/* C2EC4 800C22C4 0C034E6C */  jal        func_800D39B0
/* C2EC8 800C22C8 02002825 */   or        $a1, $s0, $zero
/* C2ECC 800C22CC 8E440014 */  lw         $a0, 0x14($s2)
/* C2ED0 800C22D0 0C0303A4 */  jal        func_800C0E90
/* C2ED4 800C22D4 02002825 */   or        $a1, $s0, $zero
/* C2ED8 800C22D8 8E110010 */  lw         $s1, 0x10($s0)
/* C2EDC 800C22DC 02402025 */  or         $a0, $s2, $zero
/* C2EE0 800C22E0 922F0037 */  lbu        $t7, 0x37($s1)
/* C2EE4 800C22E4 51E00004 */  beql       $t7, $zero, .L800C22F8
/* C2EE8 800C22E8 02402025 */   or        $a0, $s2, $zero
/* C2EEC 800C22EC 0C0309EC */  jal        func_800C27B0
/* C2EF0 800C22F0 02202825 */   or        $a1, $s1, $zero
/* C2EF4 800C22F4 02402025 */  or         $a0, $s2, $zero
.L800C22F8:
/* C2EF8 800C22F8 0C030560 */  jal        func_800C1580
/* C2EFC 800C22FC 02002825 */   or        $a1, $s0, $zero
/* C2F00 800C2300 10000117 */  b          .L800C2760
/* C2F04 800C2304 02A02025 */   or        $a0, $s5, $zero
/* C2F08 800C2308 8E50003C */  lw         $s0, 0x3c($s2)
/* C2F0C 800C230C 24190001 */  addiu      $t9, $zero, 1
/* C2F10 800C2310 8E110010 */  lw         $s1, 0x10($s0)
/* C2F14 800C2314 92380034 */  lbu        $t8, 0x34($s1)
/* C2F18 800C2318 57000003 */  bnezl      $t8, .L800C2328
/* C2F1C 800C231C 924E0044 */   lbu       $t6, 0x44($s2)
/* C2F20 800C2320 A2390034 */  sb         $t9, 0x34($s1)
/* C2F24 800C2324 924E0044 */  lbu        $t6, 0x44($s2)
.L800C2328:
/* C2F28 800C2328 8E530040 */  lw         $s3, 0x40($s2)
/* C2F2C 800C232C 02202025 */  or         $a0, $s1, $zero
/* C2F30 800C2330 A22E0030 */  sb         $t6, 0x30($s1)
/* C2F34 800C2334 8E4F001C */  lw         $t7, 0x1c($s2)
/* C2F38 800C2338 02402825 */  or         $a1, $s2, $zero
/* C2F3C 800C233C 01F3C021 */  addu       $t8, $t7, $s3
/* C2F40 800C2340 0C0304C9 */  jal        func_800C1324
/* C2F44 800C2344 AE380024 */   sw        $t8, 0x24($s1)
/* C2F48 800C2348 00023400 */  sll        $a2, $v0, 0x10
/* C2F4C 800C234C 0006CC03 */  sra        $t9, $a2, 0x10
/* C2F50 800C2350 03203025 */  or         $a2, $t9, $zero
/* C2F54 800C2354 8E440014 */  lw         $a0, 0x14($s2)
/* C2F58 800C2358 02002825 */  or         $a1, $s0, $zero
/* C2F5C 800C235C 0C0302AC */  jal        func_800C0AB0
/* C2F60 800C2360 02603825 */   or        $a3, $s3, $zero
/* C2F64 800C2364 100000FE */  b          .L800C2760
/* C2F68 800C2368 02A02025 */   or        $a0, $s5, $zero
/* C2F6C 800C236C 8E590074 */  lw         $t9, 0x74($s2)
/* C2F70 800C2370 8E540040 */  lw         $s4, 0x40($s2)
/* C2F74 800C2374 8E51003C */  lw         $s1, 0x3c($s2)
/* C2F78 800C2378 27A500A8 */  addiu      $a1, $sp, 0xa8
/* C2F7C 800C237C 0320F809 */  jalr       $t9
/* C2F80 800C2380 02802025 */   or        $a0, $s4, $zero
/* C2F84 800C2384 444EF800 */  cfc1       $t6, $31
/* C2F88 800C2388 240F0001 */  addiu      $t7, $zero, 1
/* C2F8C 800C238C 44CFF800 */  ctc1       $t7, $31
/* C2F90 800C2390 C7A400A8 */  lwc1       $f4, 0xa8($sp)
/* C2F94 800C2394 00409825 */  or         $s3, $v0, $zero
/* C2F98 800C2398 3C014F00 */  lui        $at, 0x4f00
/* C2F9C 800C239C 460021A4 */  cvt.w.s    $f6, $f4
/* C2FA0 800C23A0 02202025 */  or         $a0, $s1, $zero
/* C2FA4 800C23A4 02402825 */  or         $a1, $s2, $zero
/* C2FA8 800C23A8 444FF800 */  cfc1       $t7, $31
/* C2FAC 800C23AC 00000000 */  nop
/* C2FB0 800C23B0 31EF0078 */  andi       $t7, $t7, 0x78
/* C2FB4 800C23B4 51E00013 */  beql       $t7, $zero, .L800C2404
/* C2FB8 800C23B8 440F3000 */   mfc1      $t7, $f6
/* C2FBC 800C23BC 44813000 */  mtc1       $at, $f6
/* C2FC0 800C23C0 240F0001 */  addiu      $t7, $zero, 1
/* C2FC4 800C23C4 46062181 */  sub.s      $f6, $f4, $f6
/* C2FC8 800C23C8 44CFF800 */  ctc1       $t7, $31
/* C2FCC 800C23CC 00000000 */  nop
/* C2FD0 800C23D0 460031A4 */  cvt.w.s    $f6, $f6
/* C2FD4 800C23D4 444FF800 */  cfc1       $t7, $31
/* C2FD8 800C23D8 00000000 */  nop
/* C2FDC 800C23DC 31EF0078 */  andi       $t7, $t7, 0x78
/* C2FE0 800C23E0 15E00005 */  bnez       $t7, .L800C23F8
/* C2FE4 800C23E4 00000000 */   nop
/* C2FE8 800C23E8 440F3000 */  mfc1       $t7, $f6
/* C2FEC 800C23EC 3C018000 */  lui        $at, 0x8000
/* C2FF0 800C23F0 10000007 */  b          .L800C2410
/* C2FF4 800C23F4 01E17825 */   or        $t7, $t7, $at
.L800C23F8:
/* C2FF8 800C23F8 10000005 */  b          .L800C2410
/* C2FFC 800C23FC 240FFFFF */   addiu     $t7, $zero, -1
/* C3000 800C2400 440F3000 */  mfc1       $t7, $f6
.L800C2404:
/* C3004 800C2404 00000000 */  nop
/* C3008 800C2408 05E0FFFB */  bltz       $t7, .L800C23F8
/* C300C 800C240C 00000000 */   nop
.L800C2410:
/* C3010 800C2410 44CEF800 */  ctc1       $t6, $31
/* C3014 800C2414 0C0304C9 */  jal        func_800C1324
/* C3018 800C2418 A22F0036 */   sb        $t7, 0x36($s1)
/* C301C 800C241C 8E43001C */  lw         $v1, 0x1c($s2)
/* C3020 800C2420 8E390024 */  lw         $t9, 0x24($s1)
/* C3024 800C2424 00023400 */  sll        $a2, $v0, 0x10
/* C3028 800C2428 0006C403 */  sra        $t8, $a2, 0x10
/* C302C 800C242C 03232023 */  subu       $a0, $t9, $v1
/* C3030 800C2430 04800003 */  bltz       $a0, .L800C2440
/* C3034 800C2434 03003025 */   or        $a2, $t8, $zero
/* C3038 800C2438 10000002 */  b          .L800C2444
/* C303C 800C243C 00801025 */   or        $v0, $a0, $zero
.L800C2440:
/* C3040 800C2440 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800C2444:
/* C3044 800C2444 8E440014 */  lw         $a0, 0x14($s2)
/* C3048 800C2448 26250004 */  addiu      $a1, $s1, 4
/* C304C 800C244C 0C0302AC */  jal        func_800C0AB0
/* C3050 800C2450 00403825 */   or        $a3, $v0, $zero
/* C3054 800C2454 240E0016 */  addiu      $t6, $zero, 0x16
/* C3058 800C2458 A7AE00BC */  sh         $t6, 0xbc($sp)
/* C305C 800C245C AFB100C0 */  sw         $s1, 0xc0($sp)
/* C3060 800C2460 AFB400C4 */  sw         $s4, 0xc4($sp)
/* C3064 800C2464 02A02025 */  or         $a0, $s5, $zero
/* C3068 800C2468 27A500BC */  addiu      $a1, $sp, 0xbc
/* C306C 800C246C 0C03031B */  jal        func_800C0C6C
/* C3070 800C2470 02603025 */   or        $a2, $s3, $zero
/* C3074 800C2474 100000BA */  b          .L800C2760
/* C3078 800C2478 02A02025 */   or        $a0, $s5, $zero
/* C307C 800C247C 8E590074 */  lw         $t9, 0x74($s2)
/* C3080 800C2480 8E540040 */  lw         $s4, 0x40($s2)
/* C3084 800C2484 8E51003C */  lw         $s1, 0x3c($s2)
/* C3088 800C2488 92500044 */  lbu        $s0, 0x44($s2)
/* C308C 800C248C 27A500A8 */  addiu      $a1, $sp, 0xa8
/* C3090 800C2490 0320F809 */  jalr       $t9
/* C3094 800C2494 02802025 */   or        $a0, $s4, $zero
/* C3098 800C2498 C7A800A8 */  lwc1       $f8, 0xa8($sp)
/* C309C 800C249C C6240028 */  lwc1       $f4, 0x28($s1)
/* C30A0 800C24A0 0010C100 */  sll        $t8, $s0, 4
/* C30A4 800C24A4 E628002C */  swc1       $f8, 0x2c($s1)
/* C30A8 800C24A8 C626002C */  lwc1       $f6, 0x2c($s1)
/* C30AC 800C24AC 8E4F0060 */  lw         $t7, 0x60($s2)
/* C30B0 800C24B0 00409825 */  or         $s3, $v0, $zero
/* C30B4 800C24B4 46062202 */  mul.s      $f8, $f4, $f6
/* C30B8 800C24B8 01F87021 */  addu       $t6, $t7, $t8
/* C30BC 800C24BC C5CA000C */  lwc1       $f10, 0xc($t6)
/* C30C0 800C24C0 8E440014 */  lw         $a0, 0x14($s2)
/* C30C4 800C24C4 26250004 */  addiu      $a1, $s1, 4
/* C30C8 800C24C8 46085102 */  mul.s      $f4, $f10, $f8
/* C30CC 800C24CC 44062000 */  mfc1       $a2, $f4
/* C30D0 800C24D0 0C0316F4 */  jal        func_800C5BD0
/* C30D4 800C24D4 00000000 */   nop
/* C30D8 800C24D8 24190017 */  addiu      $t9, $zero, 0x17
/* C30DC 800C24DC A7B900BC */  sh         $t9, 0xbc($sp)
/* C30E0 800C24E0 AFB100C0 */  sw         $s1, 0xc0($sp)
/* C30E4 800C24E4 AFB400C4 */  sw         $s4, 0xc4($sp)
/* C30E8 800C24E8 A3B000C8 */  sb         $s0, 0xc8($sp)
/* C30EC 800C24EC 02A02025 */  or         $a0, $s5, $zero
/* C30F0 800C24F0 27A500BC */  addiu      $a1, $sp, 0xbc
/* C30F4 800C24F4 0C03031B */  jal        func_800C0C6C
/* C30F8 800C24F8 02603025 */   or        $a2, $s3, $zero
/* C30FC 800C24FC 10000098 */  b          .L800C2760
/* C3100 800C2500 02A02025 */   or        $a0, $s5, $zero
/* C3104 800C2504 02408825 */  or         $s1, $s2, $zero
/* C3108 800C2508 8FA40050 */  lw         $a0, 0x50($sp)
/* C310C 800C250C AFB200D0 */  sw         $s2, 0xd0($sp)
/* C3110 800C2510 0C03065B */  jal        func_800C196C
/* C3114 800C2514 AFB5004C */   sw        $s5, 0x4c($sp)
/* C3118 800C2518 8FB200D0 */  lw         $s2, 0xd0($sp)
/* C311C 800C251C 1000008F */  b          .L800C275C
/* C3120 800C2520 8FB5004C */   lw        $s5, 0x4c($sp)
/* C3124 800C2524 02402825 */  or         $a1, $s2, $zero
/* C3128 800C2528 0C0305B3 */  jal        func_800C16CC
/* C312C 800C252C 8FA40050 */   lw        $a0, 0x50($sp)
/* C3130 800C2530 1000008B */  b          .L800C2760
/* C3134 800C2534 02A02025 */   or        $a0, $s5, $zero
/* C3138 800C2538 8E4F002C */  lw         $t7, 0x2c($s2)
/* C313C 800C253C 24010001 */  addiu      $at, $zero, 1
/* C3140 800C2540 24180001 */  addiu      $t8, $zero, 1
/* C3144 800C2544 11E10085 */  beq        $t7, $at, .L800C275C
/* C3148 800C2548 02402025 */   or        $a0, $s2, $zero
/* C314C 800C254C 0C03057C */  jal        func_800C15F0
/* C3150 800C2550 AE58002C */   sw        $t8, 0x2c($s2)
/* C3154 800C2554 10000082 */  b          .L800C2760
/* C3158 800C2558 02A02025 */   or        $a0, $s5, $zero
/* C315C 800C255C 8E4E002C */  lw         $t6, 0x2c($s2)
/* C3160 800C2560 24010002 */  addiu      $at, $zero, 2
/* C3164 800C2564 55C1007E */  bnel       $t6, $at, .L800C2760
/* C3168 800C2568 02A02025 */   or        $a0, $s5, $zero
/* C316C 800C256C 8E510064 */  lw         $s1, 0x64($s2)
/* C3170 800C2570 12200013 */  beqz       $s1, .L800C25C0
/* C3174 800C2574 26300004 */   addiu     $s0, $s1, 4
.L800C2578:
/* C3178 800C2578 02002825 */  or         $a1, $s0, $zero
/* C317C 800C257C 0C034E6C */  jal        func_800D39B0
/* C3180 800C2580 8E440014 */   lw        $a0, 0x14($s2)
/* C3184 800C2584 8E440014 */  lw         $a0, 0x14($s2)
/* C3188 800C2588 0C0303A4 */  jal        func_800C0E90
/* C318C 800C258C 02002825 */   or        $a1, $s0, $zero
/* C3190 800C2590 92390037 */  lbu        $t9, 0x37($s1)
/* C3194 800C2594 02402025 */  or         $a0, $s2, $zero
/* C3198 800C2598 53200004 */  beql       $t9, $zero, .L800C25AC
/* C319C 800C259C 02402025 */   or        $a0, $s2, $zero
/* C31A0 800C25A0 0C0309EC */  jal        func_800C27B0
/* C31A4 800C25A4 02202825 */   or        $a1, $s1, $zero
/* C31A8 800C25A8 02402025 */  or         $a0, $s2, $zero
.L800C25AC:
/* C31AC 800C25AC 0C030560 */  jal        func_800C1580
/* C31B0 800C25B0 02002825 */   or        $a1, $s0, $zero
/* C31B4 800C25B4 8E510064 */  lw         $s1, 0x64($s2)
/* C31B8 800C25B8 5620FFEF */  bnezl      $s1, .L800C2578
/* C31BC 800C25BC 26300004 */   addiu     $s0, $s1, 4
.L800C25C0:
/* C31C0 800C25C0 AE40001C */  sw         $zero, 0x1c($s2)
/* C31C4 800C25C4 10000065 */  b          .L800C275C
/* C31C8 800C25C8 AE40002C */   sw        $zero, 0x2c($s2)
/* C31CC 800C25CC 8E4F002C */  lw         $t7, 0x2c($s2)
/* C31D0 800C25D0 24010001 */  addiu      $at, $zero, 1
/* C31D4 800C25D4 02A02025 */  or         $a0, $s5, $zero
/* C31D8 800C25D8 55E10061 */  bnel       $t7, $at, .L800C2760
/* C31DC 800C25DC 02A02025 */   or        $a0, $s5, $zero
/* C31E0 800C25E0 0C0302D4 */  jal        func_800C0B50
/* C31E4 800C25E4 00002825 */   or        $a1, $zero, $zero
/* C31E8 800C25E8 02A02025 */  or         $a0, $s5, $zero
/* C31EC 800C25EC 0C0302D4 */  jal        func_800C0B50
/* C31F0 800C25F0 24050002 */   addiu     $a1, $zero, 2
/* C31F4 800C25F4 8E510064 */  lw         $s1, 0x64($s2)
/* C31F8 800C25F8 1220000D */  beqz       $s1, .L800C2630
/* C31FC 800C25FC 26300004 */   addiu     $s0, $s1, 4
.L800C2600:
/* C3200 800C2600 02002825 */  or         $a1, $s0, $zero
/* C3204 800C2604 02402025 */  or         $a0, $s2, $zero
/* C3208 800C2608 0C030536 */  jal        func_800C14D8
/* C320C 800C260C 3406C350 */   ori       $a2, $zero, 0xc350
/* C3210 800C2610 10400004 */  beqz       $v0, .L800C2624
/* C3214 800C2614 02402025 */   or        $a0, $s2, $zero
/* C3218 800C2618 02002825 */  or         $a1, $s0, $zero
/* C321C 800C261C 0C0304EB */  jal        func_800C13AC
/* C3220 800C2620 3406C350 */   ori       $a2, $zero, 0xc350
.L800C2624:
/* C3224 800C2624 8E310000 */  lw         $s1, ($s1)
/* C3228 800C2628 5620FFF5 */  bnezl      $s1, .L800C2600
/* C322C 800C262C 26300004 */   addiu     $s0, $s1, 4
.L800C2630:
/* C3230 800C2630 24180002 */  addiu      $t8, $zero, 2
/* C3234 800C2634 AE58002C */  sw         $t8, 0x2c($s2)
/* C3238 800C2638 240E0010 */  addiu      $t6, $zero, 0x10
/* C323C 800C263C 3C067FFF */  lui        $a2, 0x7fff
/* C3240 800C2640 A7AE00BC */  sh         $t6, 0xbc($sp)
/* C3244 800C2644 34C6FFFF */  ori        $a2, $a2, 0xffff
/* C3248 800C2648 02A02025 */  or         $a0, $s5, $zero
/* C324C 800C264C 0C03031B */  jal        func_800C0C6C
/* C3250 800C2650 27A500BC */   addiu     $a1, $sp, 0xbc
/* C3254 800C2654 10000042 */  b          .L800C2760
/* C3258 800C2658 02A02025 */   or        $a0, $s5, $zero
/* C325C 800C265C 8E510064 */  lw         $s1, 0x64($s2)
/* C3260 800C2660 8659003C */  lh         $t9, 0x3c($s2)
/* C3264 800C2664 1220003D */  beqz       $s1, .L800C275C
/* C3268 800C2668 A6590032 */   sh        $t9, 0x32($s2)
/* C326C 800C266C 02202025 */  or         $a0, $s1, $zero
.L800C2670:
/* C3270 800C2670 0C0304C9 */  jal        func_800C1324
/* C3274 800C2674 02402825 */   or        $a1, $s2, $zero
/* C3278 800C2678 8E43001C */  lw         $v1, 0x1c($s2)
/* C327C 800C267C 8E380024 */  lw         $t8, 0x24($s1)
/* C3280 800C2680 00023400 */  sll        $a2, $v0, 0x10
/* C3284 800C2684 00067C03 */  sra        $t7, $a2, 0x10
/* C3288 800C2688 03032023 */  subu       $a0, $t8, $v1
/* C328C 800C268C 04800003 */  bltz       $a0, .L800C269C
/* C3290 800C2690 01E03025 */   or        $a2, $t7, $zero
/* C3294 800C2694 10000002 */  b          .L800C26A0
/* C3298 800C2698 00801025 */   or        $v0, $a0, $zero
.L800C269C:
/* C329C 800C269C 240203E8 */  addiu      $v0, $zero, 0x3e8
.L800C26A0:
/* C32A0 800C26A0 8E440014 */  lw         $a0, 0x14($s2)
/* C32A4 800C26A4 26250004 */  addiu      $a1, $s1, 4
/* C32A8 800C26A8 0C0302AC */  jal        func_800C0AB0
/* C32AC 800C26AC 00403825 */   or        $a3, $v0, $zero
/* C32B0 800C26B0 8E310000 */  lw         $s1, ($s1)
/* C32B4 800C26B4 5620FFEE */  bnezl      $s1, .L800C2670
/* C32B8 800C26B8 02202025 */   or        $a0, $s1, $zero
/* C32BC 800C26BC 10000028 */  b          .L800C2760
/* C32C0 800C26C0 02A02025 */   or        $a0, $s5, $zero
/* C32C4 800C26C4 8E4E003C */  lw         $t6, 0x3c($s2)
/* C32C8 800C26C8 8E590040 */  lw         $t9, 0x40($s2)
/* C32CC 800C26CC 8E4F0044 */  lw         $t7, 0x44($s2)
/* C32D0 800C26D0 AE4E007C */  sw         $t6, 0x7c($s2)
/* C32D4 800C26D4 AE590080 */  sw         $t9, 0x80($s2)
/* C32D8 800C26D8 10000020 */  b          .L800C275C
/* C32DC 800C26DC AE4F0084 */   sw        $t7, 0x84($s2)
/* C32E0 800C26E0 9250003C */  lbu        $s0, 0x3c($s2)
/* C32E4 800C26E4 8E4E0060 */  lw         $t6, 0x60($s2)
/* C32E8 800C26E8 9258003D */  lbu        $t8, 0x3d($s2)
/* C32EC 800C26EC 0010C900 */  sll        $t9, $s0, 4
/* C32F0 800C26F0 01D97821 */  addu       $t7, $t6, $t9
/* C32F4 800C26F4 10000019 */  b          .L800C275C
/* C32F8 800C26F8 A1F80008 */   sb        $t8, 8($t7)
/* C32FC 800C26FC 8E45003C */  lw         $a1, 0x3c($s2)
/* C3300 800C2700 240F01E8 */  addiu      $t7, $zero, 0x1e8
/* C3304 800C2704 3C01800E */  lui        $at, %hi(D_800DFBC8)
/* C3308 800C2708 10A00008 */  beqz       $a1, .L800C272C
/* C330C 800C270C AE450018 */   sw        $a1, 0x18($s2)
/* C3310 800C2710 C426FBC8 */  lwc1       $f6, %lo(D_800DFBC8)($at)
/* C3314 800C2714 C4AA0014 */  lwc1       $f10, 0x14($a1)
/* C3318 800C2718 460A3202 */  mul.s      $f8, $f6, $f10
/* C331C 800C271C 4600410D */  trunc.w.s  $f4, $f8
/* C3320 800C2720 44182000 */  mfc1       $t8, $f4
/* C3324 800C2724 10000002 */  b          .L800C2730
/* C3328 800C2728 AE580024 */   sw        $t8, 0x24($s2)
.L800C272C:
/* C332C 800C272C AE4F0024 */  sw         $t7, 0x24($s2)
.L800C2730:
/* C3330 800C2730 8E450020 */  lw         $a1, 0x20($s2)
/* C3334 800C2734 50A0000A */  beql       $a1, $zero, .L800C2760
/* C3338 800C2738 02A02025 */   or        $a0, $s5, $zero
/* C333C 800C273C 0C030491 */  jal        func_800C1244
/* C3340 800C2740 02402025 */   or        $a0, $s2, $zero
/* C3344 800C2744 10000006 */  b          .L800C2760
/* C3348 800C2748 02A02025 */   or        $a0, $s5, $zero
/* C334C 800C274C 8E45003C */  lw         $a1, 0x3c($s2)
/* C3350 800C2750 02402025 */  or         $a0, $s2, $zero
/* C3354 800C2754 0C030491 */  jal        func_800C1244
/* C3358 800C2758 AE450020 */   sw        $a1, 0x20($s2)
.L800C275C:
/* C335C 800C275C 02A02025 */  or         $a0, $s5, $zero
.L800C2760:
/* C3360 800C2760 0C030364 */  jal        func_800C0D90
/* C3364 800C2764 8FA50050 */   lw        $a1, 0x50($sp)
/* C3368 800C2768 1040FE98 */  beqz       $v0, .L800C21CC
/* C336C 800C276C AE420028 */   sw        $v0, 0x28($s2)
/* C3370 800C2770 8E4E001C */  lw         $t6, 0x1c($s2)
/* C3374 800C2774 01C2C821 */  addu       $t9, $t6, $v0
/* C3378 800C2778 AE59001C */  sw         $t9, 0x1c($s2)
/* C337C 800C277C 8FBF0044 */  lw         $ra, 0x44($sp)
/* C3380 800C2780 8FBE0040 */  lw         $fp, 0x40($sp)
/* C3384 800C2784 8FB7003C */  lw         $s7, 0x3c($sp)
/* C3388 800C2788 8FB60038 */  lw         $s6, 0x38($sp)
/* C338C 800C278C 8FB50034 */  lw         $s5, 0x34($sp)
/* C3390 800C2790 8FB40030 */  lw         $s4, 0x30($sp)
/* C3394 800C2794 8FB3002C */  lw         $s3, 0x2c($sp)
/* C3398 800C2798 8FB20028 */  lw         $s2, 0x28($sp)
/* C339C 800C279C 8FB10024 */  lw         $s1, 0x24($sp)
/* C33A0 800C27A0 8FB00020 */  lw         $s0, 0x20($sp)
/* C33A4 800C27A4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* C33A8 800C27A8 03E00008 */  jr         $ra
/* C33AC 800C27AC 27BD00D0 */   addiu     $sp, $sp, 0xd0

glabel func_800C27B0
/* C33B0 800C27B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* C33B4 800C27B4 AFBF0034 */  sw         $ra, 0x34($sp)
/* C33B8 800C27B8 AFB70030 */  sw         $s7, 0x30($sp)
/* C33BC 800C27BC AFB6002C */  sw         $s6, 0x2c($sp)
/* C33C0 800C27C0 AFB50028 */  sw         $s5, 0x28($sp)
/* C33C4 800C27C4 AFB40024 */  sw         $s4, 0x24($sp)
/* C33C8 800C27C8 AFB30020 */  sw         $s3, 0x20($sp)
/* C33CC 800C27CC AFB2001C */  sw         $s2, 0x1c($sp)
/* C33D0 800C27D0 AFB10018 */  sw         $s1, 0x18($sp)
/* C33D4 800C27D4 AFB00014 */  sw         $s0, 0x14($sp)
/* C33D8 800C27D8 8C900050 */  lw         $s0, 0x50($a0)
/* C33DC 800C27DC 00A09025 */  or         $s2, $a1, $zero
/* C33E0 800C27E0 0080A825 */  or         $s5, $a0, $zero
/* C33E4 800C27E4 12000028 */  beqz       $s0, .L800C2888
/* C33E8 800C27E8 24170017 */   addiu     $s7, $zero, 0x17
/* C33EC 800C27EC 24160016 */  addiu      $s6, $zero, 0x16
.L800C27F0:
/* C33F0 800C27F0 8613000C */  lh         $s3, 0xc($s0)
/* C33F4 800C27F4 8E110000 */  lw         $s1, ($s0)
/* C33F8 800C27F8 52760004 */  beql       $s3, $s6, .L800C280C
/* C33FC 800C27FC 8E0E0010 */   lw        $t6, 0x10($s0)
/* C3400 800C2800 1677001F */  bne        $s3, $s7, .L800C2880
/* C3404 800C2804 00000000 */   nop
/* C3408 800C2808 8E0E0010 */  lw         $t6, 0x10($s0)
.L800C280C:
/* C340C 800C280C 164E001C */  bne        $s2, $t6, .L800C2880
/* C3410 800C2810 00000000 */   nop
/* C3414 800C2814 8EB90078 */  lw         $t9, 0x78($s5)
/* C3418 800C2818 8E040014 */  lw         $a0, 0x14($s0)
/* C341C 800C281C 26B40048 */  addiu      $s4, $s5, 0x48
/* C3420 800C2820 0320F809 */  jalr       $t9
/* C3424 800C2824 00000000 */   nop
/* C3428 800C2828 0C02F8AC */  jal        func_800BE2B0
/* C342C 800C282C 02002025 */   or        $a0, $s0, $zero
/* C3430 800C2830 12200005 */  beqz       $s1, .L800C2848
/* C3434 800C2834 02002025 */   or        $a0, $s0, $zero
/* C3438 800C2838 8E2F0008 */  lw         $t7, 8($s1)
/* C343C 800C283C 8E180008 */  lw         $t8, 8($s0)
/* C3440 800C2840 01F84021 */  addu       $t0, $t7, $t8
/* C3444 800C2844 AE280008 */  sw         $t0, 8($s1)
.L800C2848:
/* C3448 800C2848 0C02F8B8 */  jal        func_800BE2E0
/* C344C 800C284C 02802825 */   or        $a1, $s4, $zero
/* C3450 800C2850 56760006 */  bnel       $s3, $s6, .L800C286C
/* C3454 800C2854 924B0037 */   lbu       $t3, 0x37($s2)
/* C3458 800C2858 92490037 */  lbu        $t1, 0x37($s2)
/* C345C 800C285C 312A00FE */  andi       $t2, $t1, 0xfe
/* C3460 800C2860 10000004 */  b          .L800C2874
/* C3464 800C2864 A24A0037 */   sb        $t2, 0x37($s2)
/* C3468 800C2868 924B0037 */  lbu        $t3, 0x37($s2)
.L800C286C:
/* C346C 800C286C 316C00FD */  andi       $t4, $t3, 0xfd
/* C3470 800C2870 A24C0037 */  sb         $t4, 0x37($s2)
.L800C2874:
/* C3474 800C2874 924D0037 */  lbu        $t5, 0x37($s2)
/* C3478 800C2878 51A00004 */  beql       $t5, $zero, .L800C288C
/* C347C 800C287C 8FBF0034 */   lw        $ra, 0x34($sp)
.L800C2880:
/* C3480 800C2880 1620FFDB */  bnez       $s1, .L800C27F0
/* C3484 800C2884 02208025 */   or        $s0, $s1, $zero
.L800C2888:
/* C3488 800C2888 8FBF0034 */  lw         $ra, 0x34($sp)
.L800C288C:
/* C348C 800C288C 8FB00014 */  lw         $s0, 0x14($sp)
/* C3490 800C2890 8FB10018 */  lw         $s1, 0x18($sp)
/* C3494 800C2894 8FB2001C */  lw         $s2, 0x1c($sp)
/* C3498 800C2898 8FB30020 */  lw         $s3, 0x20($sp)
/* C349C 800C289C 8FB40024 */  lw         $s4, 0x24($sp)
/* C34A0 800C28A0 8FB50028 */  lw         $s5, 0x28($sp)
/* C34A4 800C28A4 8FB6002C */  lw         $s6, 0x2c($sp)
/* C34A8 800C28A8 8FB70030 */  lw         $s7, 0x30($sp)
/* C34AC 800C28AC 03E00008 */  jr         $ra
/* C34B0 800C28B0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800C28B4
/* C34B4 800C28B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C34B8 800C28B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* C34BC 800C28BC AFB20020 */  sw         $s2, 0x20($sp)
/* C34C0 800C28C0 AFB1001C */  sw         $s1, 0x1c($sp)
/* C34C4 800C28C4 AFB00018 */  sw         $s0, 0x18($sp)
/* C34C8 800C28C8 908E0034 */  lbu        $t6, 0x34($a0)
/* C34CC 800C28CC 00808825 */  or         $s1, $a0, $zero
/* C34D0 800C28D0 00008025 */  or         $s0, $zero, $zero
/* C34D4 800C28D4 19C0000D */  blez       $t6, .L800C290C
/* C34D8 800C28D8 00009025 */   or        $s2, $zero, $zero
/* C34DC 800C28DC 8E2F0060 */  lw         $t7, 0x60($s1)
.L800C28E0:
/* C34E0 800C28E0 02202025 */  or         $a0, $s1, $zero
/* C34E4 800C28E4 02002825 */  or         $a1, $s0, $zero
/* C34E8 800C28E8 01F2C021 */  addu       $t8, $t7, $s2
/* C34EC 800C28EC 0C030471 */  jal        func_800C11C4
/* C34F0 800C28F0 AF000000 */   sw        $zero, ($t8)
/* C34F4 800C28F4 92390034 */  lbu        $t9, 0x34($s1)
/* C34F8 800C28F8 26100001 */  addiu      $s0, $s0, 1
/* C34FC 800C28FC 26520010 */  addiu      $s2, $s2, 0x10
/* C3500 800C2900 0219082A */  slt        $at, $s0, $t9
/* C3504 800C2904 5420FFF6 */  bnezl      $at, .L800C28E0
/* C3508 800C2908 8E2F0060 */   lw        $t7, 0x60($s1)
.L800C290C:
/* C350C 800C290C 8FBF0024 */  lw         $ra, 0x24($sp)
/* C3510 800C2910 8FB00018 */  lw         $s0, 0x18($sp)
/* C3514 800C2914 8FB1001C */  lw         $s1, 0x1c($sp)
/* C3518 800C2918 8FB20020 */  lw         $s2, 0x20($sp)
/* C351C 800C291C 03E00008 */  jr         $ra
/* C3520 800C2920 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800C2924
/* C3524 800C2924 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C3528 800C2928 AFBF0024 */  sw         $ra, 0x24($sp)
/* C352C 800C292C AFB10020 */  sw         $s1, 0x20($sp)
/* C3530 800C2930 AFB0001C */  sw         $s0, 0x1c($sp)
/* C3534 800C2934 8CA6000C */  lw         $a2, 0xc($a1)
/* C3538 800C2938 AC800020 */  sw         $zero, 0x20($a0)
/* C353C 800C293C AC800018 */  sw         $zero, 0x18($a0)
/* C3540 800C2940 3C0E800E */  lui        $t6, %hi(D_800DA040)
/* C3544 800C2944 8DCEA040 */  lw         $t6, %lo(D_800DA040)($t6)
/* C3548 800C2948 240F00FF */  addiu      $t7, $zero, 0xff
/* C354C 800C294C 241801E8 */  addiu      $t8, $zero, 0x1e8
/* C3550 800C2950 24197FFF */  addiu      $t9, $zero, 0x7fff
/* C3554 800C2954 A48F0030 */  sh         $t7, 0x30($a0)
/* C3558 800C2958 AC980024 */  sw         $t8, 0x24($a0)
/* C355C 800C295C AC800028 */  sw         $zero, 0x28($a0)
/* C3560 800C2960 AC80002C */  sw         $zero, 0x2c($a0)
/* C3564 800C2964 A4990032 */  sh         $t9, 0x32($a0)
/* C3568 800C2968 AC8E0014 */  sw         $t6, 0x14($a0)
/* C356C 800C296C 90A80009 */  lbu        $t0, 9($a1)
/* C3570 800C2970 24093E80 */  addiu      $t1, $zero, 0x3e80
/* C3574 800C2974 AC89005C */  sw         $t1, 0x5c($a0)
/* C3578 800C2978 AC80001C */  sw         $zero, 0x1c($a0)
/* C357C 800C297C A0880035 */  sb         $t0, 0x35($a0)
/* C3580 800C2980 8CAA0010 */  lw         $t2, 0x10($a1)
/* C3584 800C2984 240D0009 */  addiu      $t5, $zero, 9
/* C3588 800C2988 00A08825 */  or         $s1, $a1, $zero
/* C358C 800C298C AC8A0070 */  sw         $t2, 0x70($a0)
/* C3590 800C2990 8CAB0014 */  lw         $t3, 0x14($a1)
/* C3594 800C2994 00808025 */  or         $s0, $a0, $zero
/* C3598 800C2998 240F0010 */  addiu      $t7, $zero, 0x10
/* C359C 800C299C AC8B0074 */  sw         $t3, 0x74($a0)
/* C35A0 800C29A0 8CAC0018 */  lw         $t4, 0x18($a1)
/* C35A4 800C29A4 AC80007C */  sw         $zero, 0x7c($a0)
/* C35A8 800C29A8 AC800080 */  sw         $zero, 0x80($a0)
/* C35AC 800C29AC AC800084 */  sw         $zero, 0x84($a0)
/* C35B0 800C29B0 A48D0038 */  sh         $t5, 0x38($a0)
/* C35B4 800C29B4 AC8C0078 */  sw         $t4, 0x78($a0)
/* C35B8 800C29B8 90AE0008 */  lbu        $t6, 8($a1)
/* C35BC 800C29BC 00002825 */  or         $a1, $zero, $zero
/* C35C0 800C29C0 A08E0034 */  sb         $t6, 0x34($a0)
/* C35C4 800C29C4 92270008 */  lbu        $a3, 8($s1)
/* C35C8 800C29C8 AFAF0010 */  sw         $t7, 0x10($sp)
/* C35CC 800C29CC 00002025 */  or         $a0, $zero, $zero
/* C35D0 800C29D0 0C034BF8 */  jal        func_800D2FE0
/* C35D4 800C29D4 AFA6002C */   sw        $a2, 0x2c($sp)
/* C35D8 800C29D8 AE020060 */  sw         $v0, 0x60($s0)
/* C35DC 800C29DC 0C030A2D */  jal        func_800C28B4
/* C35E0 800C29E0 02002025 */   or        $a0, $s0, $zero
/* C35E4 800C29E4 8E270000 */  lw         $a3, ($s1)
/* C35E8 800C29E8 24180038 */  addiu      $t8, $zero, 0x38
/* C35EC 800C29EC AFB80010 */  sw         $t8, 0x10($sp)
/* C35F0 800C29F0 00002025 */  or         $a0, $zero, $zero
/* C35F4 800C29F4 00002825 */  or         $a1, $zero, $zero
/* C35F8 800C29F8 0C034BF8 */  jal        func_800D2FE0
/* C35FC 800C29FC 8FA6002C */   lw        $a2, 0x2c($sp)
/* C3600 800C2A00 AE00006C */  sw         $zero, 0x6c($s0)
/* C3604 800C2A04 8E390000 */  lw         $t9, ($s1)
/* C3608 800C2A08 00002025 */  or         $a0, $zero, $zero
/* C360C 800C2A0C 00002825 */  or         $a1, $zero, $zero
/* C3610 800C2A10 1B20000B */  blez       $t9, .L800C2A40
/* C3614 800C2A14 240A001C */   addiu     $t2, $zero, 0x1c
/* C3618 800C2A18 00401825 */  or         $v1, $v0, $zero
/* C361C 800C2A1C 8E08006C */  lw         $t0, 0x6c($s0)
.L800C2A20:
/* C3620 800C2A20 24840001 */  addiu      $a0, $a0, 1
/* C3624 800C2A24 AC680000 */  sw         $t0, ($v1)
/* C3628 800C2A28 AE03006C */  sw         $v1, 0x6c($s0)
/* C362C 800C2A2C 8E290000 */  lw         $t1, ($s1)
/* C3630 800C2A30 24630038 */  addiu      $v1, $v1, 0x38
/* C3634 800C2A34 0089082A */  slt        $at, $a0, $t1
/* C3638 800C2A38 5420FFF9 */  bnezl      $at, .L800C2A20
/* C363C 800C2A3C 8E08006C */   lw        $t0, 0x6c($s0)
.L800C2A40:
/* C3640 800C2A40 AE000064 */  sw         $zero, 0x64($s0)
/* C3644 800C2A44 AE000068 */  sw         $zero, 0x68($s0)
/* C3648 800C2A48 8E270004 */  lw         $a3, 4($s1)
/* C364C 800C2A4C AFAA0010 */  sw         $t2, 0x10($sp)
/* C3650 800C2A50 8FA6002C */  lw         $a2, 0x2c($sp)
/* C3654 800C2A54 0C034BF8 */  jal        func_800D2FE0
/* C3658 800C2A58 00002025 */   or        $a0, $zero, $zero
/* C365C 800C2A5C 26040048 */  addiu      $a0, $s0, 0x48
/* C3660 800C2A60 00402825 */  or         $a1, $v0, $zero
/* C3664 800C2A64 0C030387 */  jal        func_800C0E1C
/* C3668 800C2A68 8E260004 */   lw        $a2, 4($s1)
/* C366C 800C2A6C 3C0B800C */  lui        $t3, %hi(func_800C218C)
/* C3670 800C2A70 256B218C */  addiu      $t3, $t3, %lo(func_800C218C)
/* C3674 800C2A74 AE000000 */  sw         $zero, ($s0)
/* C3678 800C2A78 AE0B0008 */  sw         $t3, 8($s0)
/* C367C 800C2A7C AE100004 */  sw         $s0, 4($s0)
/* C3680 800C2A80 3C04800E */  lui        $a0, %hi(D_800DA040)
/* C3684 800C2A84 8C84A040 */  lw         $a0, %lo(D_800DA040)($a0)
/* C3688 800C2A88 0C034018 */  jal        func_800D0060
/* C368C 800C2A8C 02002825 */   or        $a1, $s0, $zero
/* C3690 800C2A90 8FBF0024 */  lw         $ra, 0x24($sp)
/* C3694 800C2A94 8FB0001C */  lw         $s0, 0x1c($sp)
/* C3698 800C2A98 8FB10020 */  lw         $s1, 0x20($sp)
/* C369C 800C2A9C 03E00008 */  jr         $ra
/* C36A0 800C2AA0 27BD0040 */   addiu     $sp, $sp, 0x40
/* C36A4 800C2AA4 00000000 */  nop
/* C36A8 800C2AA8 00000000 */  nop
/* C36AC 800C2AAC 00000000 */  nop

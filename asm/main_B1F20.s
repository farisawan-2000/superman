.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B1320
/* B1F20 800B1320 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* B1F24 800B1324 AFBF0014 */  sw         $ra, 0x14($sp)
/* B1F28 800B1328 AFA40038 */  sw         $a0, 0x38($sp)
/* B1F2C 800B132C AFA5003C */  sw         $a1, 0x3c($sp)
/* B1F30 800B1330 AFA60040 */  sw         $a2, 0x40($sp)
/* B1F34 800B1334 AFA00024 */  sw         $zero, 0x24($sp)
/* B1F38 800B1338 AFA00020 */  sw         $zero, 0x20($sp)
/* B1F3C 800B133C AFA00018 */  sw         $zero, 0x18($sp)
/* B1F40 800B1340 0C02C0C8 */  jal        func_800B0320
/* B1F44 800B1344 00000000 */   nop
/* B1F48 800B1348 AFA2001C */  sw         $v0, 0x1c($sp)
/* B1F4C 800B134C 3C0E800D */  lui        $t6, %hi(D_800CD570)
/* B1F50 800B1350 8DCED570 */  lw         $t6, %lo(D_800CD570)($t6)
/* B1F54 800B1354 11C0003A */  beqz       $t6, .L800B1440
/* B1F58 800B1358 00000000 */   nop
/* B1F5C 800B135C 3C01800D */  lui        $at, %hi(D_800CD570)
/* B1F60 800B1360 AC20D570 */  sw         $zero, %lo(D_800CD570)($at)
/* B1F64 800B1364 8FAF0040 */  lw         $t7, 0x40($sp)
/* B1F68 800B1368 93A90030 */  lbu        $t1, 0x30($sp)
/* B1F6C 800B136C 31F8003F */  andi       $t8, $t7, 0x3f
/* B1F70 800B1370 0018C880 */  sll        $t9, $t8, 2
/* B1F74 800B1374 332800FC */  andi       $t0, $t9, 0xfc
/* B1F78 800B1378 312AFF03 */  andi       $t2, $t1, 0xff03
/* B1F7C 800B137C 010A5825 */  or         $t3, $t0, $t2
/* B1F80 800B1380 A3AB0030 */  sb         $t3, 0x30($sp)
/* B1F84 800B1384 8FAC003C */  lw         $t4, 0x3c($sp)
/* B1F88 800B1388 2D810003 */  sltiu      $at, $t4, 3
/* B1F8C 800B138C 10200003 */  beqz       $at, .L800B139C
/* B1F90 800B1390 00000000 */   nop
/* B1F94 800B1394 10000003 */  b          .L800B13A4
/* B1F98 800B1398 AFAC002C */   sw        $t4, 0x2c($sp)
.L800B139C:
/* B1F9C 800B139C 240D0003 */  addiu      $t5, $zero, 3
/* B1FA0 800B13A0 AFAD002C */  sw         $t5, 0x2c($sp)
.L800B13A4:
/* B1FA4 800B13A4 8FAE002C */  lw         $t6, 0x2c($sp)
/* B1FA8 800B13A8 93B90030 */  lbu        $t9, 0x30($sp)
/* B1FAC 800B13AC 31CF0003 */  andi       $t7, $t6, 3
/* B1FB0 800B13B0 31F80003 */  andi       $t8, $t7, 3
/* B1FB4 800B13B4 3329FFFC */  andi       $t1, $t9, 0xfffc
/* B1FB8 800B13B8 03094025 */  or         $t0, $t8, $t1
/* B1FBC 800B13BC A3A80030 */  sb         $t0, 0x30($sp)
/* B1FC0 800B13C0 AFA00028 */  sw         $zero, 0x28($sp)
/* B1FC4 800B13C4 8FAA0028 */  lw         $t2, 0x28($sp)
/* B1FC8 800B13C8 8FAB002C */  lw         $t3, 0x2c($sp)
/* B1FCC 800B13CC 014B082B */  sltu       $at, $t2, $t3
/* B1FD0 800B13D0 10200013 */  beqz       $at, .L800B1420
/* B1FD4 800B13D4 00000000 */   nop
.L800B13D8:
/* B1FD8 800B13D8 8FAC0024 */  lw         $t4, 0x24($sp)
/* B1FDC 800B13DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* B1FE0 800B13E0 8FB90028 */  lw         $t9, 0x28($sp)
/* B1FE4 800B13E4 018D7021 */  addu       $t6, $t4, $t5
/* B1FE8 800B13E8 91CF0000 */  lbu        $t7, ($t6)
/* B1FEC 800B13EC 03B9C021 */  addu       $t8, $sp, $t9
/* B1FF0 800B13F0 A30F0031 */  sb         $t7, 0x31($t8)
/* B1FF4 800B13F4 8FAA0024 */  lw         $t2, 0x24($sp)
/* B1FF8 800B13F8 8FA90028 */  lw         $t1, 0x28($sp)
/* B1FFC 800B13FC 254B0001 */  addiu      $t3, $t2, 1
/* B2000 800B1400 25280001 */  addiu      $t0, $t1, 1
/* B2004 800B1404 AFA80028 */  sw         $t0, 0x28($sp)
/* B2008 800B1408 AFAB0024 */  sw         $t3, 0x24($sp)
/* B200C 800B140C 8FAC0028 */  lw         $t4, 0x28($sp)
/* B2010 800B1410 8FAD002C */  lw         $t5, 0x2c($sp)
/* B2014 800B1414 018D082B */  sltu       $at, $t4, $t5
/* B2018 800B1418 1420FFEF */  bnez       $at, .L800B13D8
/* B201C 800B141C 00000000 */   nop
.L800B1420:
/* B2020 800B1420 8FAE003C */  lw         $t6, 0x3c($sp)
/* B2024 800B1424 8FAF002C */  lw         $t7, 0x2c($sp)
/* B2028 800B1428 01CFC823 */  subu       $t9, $t6, $t7
/* B202C 800B142C AFB9003C */  sw         $t9, 0x3c($sp)
/* B2030 800B1430 8FB8002C */  lw         $t8, 0x2c($sp)
/* B2034 800B1434 AFB80018 */  sw         $t8, 0x18($sp)
/* B2038 800B1438 24090001 */  addiu      $t1, $zero, 1
/* B203C 800B143C AFA90020 */  sw         $t1, 0x20($sp)
.L800B1440:
/* B2040 800B1440 8FA8003C */  lw         $t0, 0x3c($sp)
/* B2044 800B1444 11000066 */  beqz       $t0, .L800B15E0
/* B2048 800B1448 00000000 */   nop
/* B204C 800B144C 3C0A801A */  lui        $t2, %hi(D_801A1BD8)
/* B2050 800B1450 3C0B801A */  lui        $t3, %hi(D_801A1BD4)
/* B2054 800B1454 8D6B1BD4 */  lw         $t3, %lo(D_801A1BD4)($t3)
/* B2058 800B1458 8D4A1BD8 */  lw         $t2, %lo(D_801A1BD8)($t2)
/* B205C 800B145C 014B082B */  sltu       $at, $t2, $t3
/* B2060 800B1460 1020005F */  beqz       $at, .L800B15E0
/* B2064 800B1464 00000000 */   nop
.L800B1468:
/* B2068 800B1468 8FAC003C */  lw         $t4, 0x3c($sp)
/* B206C 800B146C 2D810003 */  sltiu      $at, $t4, 3
/* B2070 800B1470 10200003 */  beqz       $at, .L800B1480
/* B2074 800B1474 00000000 */   nop
/* B2078 800B1478 10000003 */  b          .L800B1488
/* B207C 800B147C AFAC002C */   sw        $t4, 0x2c($sp)
.L800B1480:
/* B2080 800B1480 240D0003 */  addiu      $t5, $zero, 3
/* B2084 800B1484 AFAD002C */  sw         $t5, 0x2c($sp)
.L800B1488:
/* B2088 800B1488 3C0E801A */  lui        $t6, %hi(D_801A1BDC)
/* B208C 800B148C 8DCE1BDC */  lw         $t6, %lo(D_801A1BDC)($t6)
/* B2090 800B1490 3C19801A */  lui        $t9, %hi(D_801A1BD0)
/* B2094 800B1494 8F391BD0 */  lw         $t9, %lo(D_801A1BD0)($t9)
/* B2098 800B1498 000E7880 */  sll        $t7, $t6, 2
/* B209C 800B149C 01F9C021 */  addu       $t8, $t7, $t9
/* B20A0 800B14A0 AFB80034 */  sw         $t8, 0x34($sp)
/* B20A4 800B14A4 8FAC0034 */  lw         $t4, 0x34($sp)
/* B20A8 800B14A8 8FA90040 */  lw         $t1, 0x40($sp)
/* B20AC 800B14AC 918D0000 */  lbu        $t5, ($t4)
/* B20B0 800B14B0 3128003F */  andi       $t0, $t1, 0x3f
/* B20B4 800B14B4 00085080 */  sll        $t2, $t0, 2
/* B20B8 800B14B8 314B00FC */  andi       $t3, $t2, 0xfc
/* B20BC 800B14BC 31AEFF03 */  andi       $t6, $t5, 0xff03
/* B20C0 800B14C0 016E7825 */  or         $t7, $t3, $t6
/* B20C4 800B14C4 A18F0000 */  sb         $t7, ($t4)
/* B20C8 800B14C8 8FA80034 */  lw         $t0, 0x34($sp)
/* B20CC 800B14CC 8FB9002C */  lw         $t9, 0x2c($sp)
/* B20D0 800B14D0 910A0000 */  lbu        $t2, ($t0)
/* B20D4 800B14D4 33380003 */  andi       $t8, $t9, 3
/* B20D8 800B14D8 33090003 */  andi       $t1, $t8, 3
/* B20DC 800B14DC 314DFFFC */  andi       $t5, $t2, 0xfffc
/* B20E0 800B14E0 012D5825 */  or         $t3, $t1, $t5
/* B20E4 800B14E4 A10B0000 */  sb         $t3, ($t0)
/* B20E8 800B14E8 AFA00028 */  sw         $zero, 0x28($sp)
/* B20EC 800B14EC 8FAE0028 */  lw         $t6, 0x28($sp)
/* B20F0 800B14F0 8FAF002C */  lw         $t7, 0x2c($sp)
/* B20F4 800B14F4 01CF082B */  sltu       $at, $t6, $t7
/* B20F8 800B14F8 10200014 */  beqz       $at, .L800B154C
/* B20FC 800B14FC 00000000 */   nop
.L800B1500:
/* B2100 800B1500 8FAC0024 */  lw         $t4, 0x24($sp)
/* B2104 800B1504 8FB90038 */  lw         $t9, 0x38($sp)
/* B2108 800B1508 8FA90034 */  lw         $t1, 0x34($sp)
/* B210C 800B150C 8FAD0028 */  lw         $t5, 0x28($sp)
/* B2110 800B1510 0199C021 */  addu       $t8, $t4, $t9
/* B2114 800B1514 930A0000 */  lbu        $t2, ($t8)
/* B2118 800B1518 012D5821 */  addu       $t3, $t1, $t5
/* B211C 800B151C A16A0001 */  sb         $t2, 1($t3)
/* B2120 800B1520 8FAF0024 */  lw         $t7, 0x24($sp)
/* B2124 800B1524 8FA80028 */  lw         $t0, 0x28($sp)
/* B2128 800B1528 25EC0001 */  addiu      $t4, $t7, 1
/* B212C 800B152C 250E0001 */  addiu      $t6, $t0, 1
/* B2130 800B1530 AFAE0028 */  sw         $t6, 0x28($sp)
/* B2134 800B1534 AFAC0024 */  sw         $t4, 0x24($sp)
/* B2138 800B1538 8FB90028 */  lw         $t9, 0x28($sp)
/* B213C 800B153C 8FB8002C */  lw         $t8, 0x2c($sp)
/* B2140 800B1540 0338082B */  sltu       $at, $t9, $t8
/* B2144 800B1544 1420FFEE */  bnez       $at, .L800B1500
/* B2148 800B1548 00000000 */   nop
.L800B154C:
/* B214C 800B154C 3C09801A */  lui        $t1, %hi(D_801A1BDC)
/* B2150 800B1550 8D291BDC */  lw         $t1, %lo(D_801A1BDC)($t1)
/* B2154 800B1554 3C01801A */  lui        $at, %hi(D_801A1BDC)
/* B2158 800B1558 252D0001 */  addiu      $t5, $t1, 1
/* B215C 800B155C AC2D1BDC */  sw         $t5, %lo(D_801A1BDC)($at)
/* B2160 800B1560 3C0A801A */  lui        $t2, %hi(D_801A1BDC)
/* B2164 800B1564 3C0B801A */  lui        $t3, %hi(D_801A1BD4)
/* B2168 800B1568 8D6B1BD4 */  lw         $t3, %lo(D_801A1BD4)($t3)
/* B216C 800B156C 8D4A1BDC */  lw         $t2, %lo(D_801A1BDC)($t2)
/* B2170 800B1570 014B082B */  sltu       $at, $t2, $t3
/* B2174 800B1574 14200003 */  bnez       $at, .L800B1584
/* B2178 800B1578 00000000 */   nop
/* B217C 800B157C 3C01801A */  lui        $at, %hi(D_801A1BDC)
/* B2180 800B1580 AC201BDC */  sw         $zero, %lo(D_801A1BDC)($at)
.L800B1584:
/* B2184 800B1584 3C08801A */  lui        $t0, %hi(D_801A1BD8)
/* B2188 800B1588 8D081BD8 */  lw         $t0, %lo(D_801A1BD8)($t0)
/* B218C 800B158C 3C01801A */  lui        $at, %hi(D_801A1BD8)
/* B2190 800B1590 250E0001 */  addiu      $t6, $t0, 1
/* B2194 800B1594 AC2E1BD8 */  sw         $t6, %lo(D_801A1BD8)($at)
/* B2198 800B1598 8FAF003C */  lw         $t7, 0x3c($sp)
/* B219C 800B159C 8FAC002C */  lw         $t4, 0x2c($sp)
/* B21A0 800B15A0 01ECC823 */  subu       $t9, $t7, $t4
/* B21A4 800B15A4 AFB9003C */  sw         $t9, 0x3c($sp)
/* B21A8 800B15A8 8FB80018 */  lw         $t8, 0x18($sp)
/* B21AC 800B15AC 8FA9002C */  lw         $t1, 0x2c($sp)
/* B21B0 800B15B0 03096821 */  addu       $t5, $t8, $t1
/* B21B4 800B15B4 AFAD0018 */  sw         $t5, 0x18($sp)
/* B21B8 800B15B8 8FAA003C */  lw         $t2, 0x3c($sp)
/* B21BC 800B15BC 11400008 */  beqz       $t2, .L800B15E0
/* B21C0 800B15C0 00000000 */   nop
/* B21C4 800B15C4 3C0B801A */  lui        $t3, %hi(D_801A1BD8)
/* B21C8 800B15C8 3C08801A */  lui        $t0, %hi(D_801A1BD4)
/* B21CC 800B15CC 8D081BD4 */  lw         $t0, %lo(D_801A1BD4)($t0)
/* B21D0 800B15D0 8D6B1BD8 */  lw         $t3, %lo(D_801A1BD8)($t3)
/* B21D4 800B15D4 0168082B */  sltu       $at, $t3, $t0
/* B21D8 800B15D8 1420FFA3 */  bnez       $at, .L800B1468
/* B21DC 800B15DC 00000000 */   nop
.L800B15E0:
/* B21E0 800B15E0 8FAE0020 */  lw         $t6, 0x20($sp)
/* B21E4 800B15E4 11C00005 */  beqz       $t6, .L800B15FC
/* B21E8 800B15E8 00000000 */   nop
/* B21EC 800B15EC 27AF0030 */  addiu      $t7, $sp, 0x30
/* B21F0 800B15F0 8DEC0000 */  lw         $t4, ($t7)
/* B21F4 800B15F4 3C19C000 */  lui        $t9, 0xc000
/* B21F8 800B15F8 AF2C0000 */  sw         $t4, ($t9)
.L800B15FC:
/* B21FC 800B15FC 0C02C0D0 */  jal        func_800B0340
/* B2200 800B1600 8FA4001C */   lw        $a0, 0x1c($sp)
/* B2204 800B1604 10000003 */  b          .L800B1614
/* B2208 800B1608 8FA20018 */   lw        $v0, 0x18($sp)
/* B220C 800B160C 10000001 */  b          .L800B1614
/* B2210 800B1610 00000000 */   nop
.L800B1614:
/* B2214 800B1614 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2218 800B1618 27BD0038 */  addiu      $sp, $sp, 0x38
/* B221C 800B161C 03E00008 */  jr         $ra
/* B2220 800B1620 00000000 */   nop
/* B2224 800B1624 00000000 */  nop
/* B2228 800B1628 00000000 */  nop
/* B222C 800B162C 00000000 */  nop

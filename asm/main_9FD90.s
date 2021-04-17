.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009F190
/* 9FD90 8009F190 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9FD94 8009F194 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FD98 8009F198 AFA40028 */  sw         $a0, 0x28($sp)
/* 9FD9C 8009F19C 240E0011 */  addiu      $t6, $zero, 0x11
/* 9FDA0 8009F1A0 A7AE0018 */  sh         $t6, 0x18($sp)
/* 9FDA4 8009F1A4 8FA40028 */  lw         $a0, 0x28($sp)
/* 9FDA8 8009F1A8 27A50018 */  addiu      $a1, $sp, 0x18
/* 9FDAC 8009F1AC 00003025 */  or         $a2, $zero, $zero
/* 9FDB0 8009F1B0 0C026E68 */  jal        func_8009B9A0
/* 9FDB4 8009F1B4 24840048 */   addiu     $a0, $a0, 0x48
/* 9FDB8 8009F1B8 10000001 */  b          .L8009F1C0
/* 9FDBC 8009F1BC 00000000 */   nop
.L8009F1C0:
/* 9FDC0 8009F1C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FDC4 8009F1C4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9FDC8 8009F1C8 03E00008 */  jr         $ra
/* 9FDCC 8009F1CC 00000000 */   nop

glabel func_8009F1D0
/* 9FDD0 8009F1D0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 9FDD4 8009F1D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9FDD8 8009F1D8 AFA40030 */  sw         $a0, 0x30($sp)
/* 9FDDC 8009F1DC AFA50034 */  sw         $a1, 0x34($sp)
/* 9FDE0 8009F1E0 AFA60038 */  sw         $a2, 0x38($sp)
/* 9FDE4 8009F1E4 AFA7003C */  sw         $a3, 0x3c($sp)
/* 9FDE8 8009F1E8 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 9FDEC 8009F1EC 0C028116 */  jal        func_800A0458
/* 9FDF0 8009F1F0 8FA40030 */   lw        $a0, 0x30($sp)
/* 9FDF4 8009F1F4 C7A40038 */  lwc1       $f4, 0x38($sp)
/* 9FDF8 8009F1F8 3C01800D */  lui        $at, %hi(D_800D2DB0)
/* 9FDFC 8009F1FC D4282DB0 */  ldc1       $f8, %lo(D_800D2DB0)($at)
/* 9FE00 8009F200 460021A1 */  cvt.d.s    $f6, $f4
/* 9FE04 8009F204 46283282 */  mul.d      $f10, $f6, $f8
/* 9FE08 8009F208 46205420 */  cvt.s.d    $f16, $f10
/* 9FE0C 8009F20C E7B00038 */  swc1       $f16, 0x38($sp)
/* 9FE10 8009F210 3C014000 */  lui        $at, 0x4000
/* 9FE14 8009F214 44812000 */  mtc1       $at, $f4
/* 9FE18 8009F218 C7B20038 */  lwc1       $f18, 0x38($sp)
/* 9FE1C 8009F21C 0C02C220 */  jal        func_800B0880
/* 9FE20 8009F220 46049303 */   div.s     $f12, $f18, $f4
/* 9FE24 8009F224 3C014000 */  lui        $at, 0x4000
/* 9FE28 8009F228 44814000 */  mtc1       $at, $f8
/* 9FE2C 8009F22C C7A60038 */  lwc1       $f6, 0x38($sp)
/* 9FE30 8009F230 46000506 */  mov.s      $f20, $f0
/* 9FE34 8009F234 0C025E08 */  jal        func_80097820
/* 9FE38 8009F238 46083303 */   div.s     $f12, $f6, $f8
/* 9FE3C 8009F23C 4600A283 */  div.s      $f10, $f20, $f0
/* 9FE40 8009F240 E7AA002C */  swc1       $f10, 0x2c($sp)
/* 9FE44 8009F244 C7B0002C */  lwc1       $f16, 0x2c($sp)
/* 9FE48 8009F248 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* 9FE4C 8009F24C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 9FE50 8009F250 46128103 */  div.s      $f4, $f16, $f18
/* 9FE54 8009F254 E5C40000 */  swc1       $f4, ($t6)
/* 9FE58 8009F258 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* 9FE5C 8009F25C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 9FE60 8009F260 E5E60014 */  swc1       $f6, 0x14($t7)
/* 9FE64 8009F264 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 9FE68 8009F268 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 9FE6C 8009F26C 8FB80030 */  lw         $t8, 0x30($sp)
/* 9FE70 8009F270 460A4400 */  add.s      $f16, $f8, $f10
/* 9FE74 8009F274 460A4481 */  sub.s      $f18, $f8, $f10
/* 9FE78 8009F278 46128103 */  div.s      $f4, $f16, $f18
/* 9FE7C 8009F27C E7040028 */  swc1       $f4, 0x28($t8)
/* 9FE80 8009F280 3C01BF80 */  lui        $at, 0xbf80
/* 9FE84 8009F284 44813000 */  mtc1       $at, $f6
/* 9FE88 8009F288 8FB90030 */  lw         $t9, 0x30($sp)
/* 9FE8C 8009F28C E726002C */  swc1       $f6, 0x2c($t9)
/* 9FE90 8009F290 3C014000 */  lui        $at, 0x4000
/* 9FE94 8009F294 44814000 */  mtc1       $at, $f8
/* 9FE98 8009F298 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 9FE9C 8009F29C C7B20044 */  lwc1       $f18, 0x44($sp)
/* 9FEA0 8009F2A0 8FA80030 */  lw         $t0, 0x30($sp)
/* 9FEA4 8009F2A4 460A4402 */  mul.s      $f16, $f8, $f10
/* 9FEA8 8009F2A8 46125181 */  sub.s      $f6, $f10, $f18
/* 9FEAC 8009F2AC 46128102 */  mul.s      $f4, $f16, $f18
/* 9FEB0 8009F2B0 46062203 */  div.s      $f8, $f4, $f6
/* 9FEB4 8009F2B4 E5080038 */  swc1       $f8, 0x38($t0)
/* 9FEB8 8009F2B8 44808000 */  mtc1       $zero, $f16
/* 9FEBC 8009F2BC 8FA90030 */  lw         $t1, 0x30($sp)
/* 9FEC0 8009F2C0 E530003C */  swc1       $f16, 0x3c($t1)
/* 9FEC4 8009F2C4 AFA00028 */  sw         $zero, 0x28($sp)
.L8009F2C8:
/* 9FEC8 8009F2C8 AFA00024 */  sw         $zero, 0x24($sp)
.L8009F2CC:
/* 9FECC 8009F2CC 8FAB0028 */  lw         $t3, 0x28($sp)
/* 9FED0 8009F2D0 8FAA0030 */  lw         $t2, 0x30($sp)
/* 9FED4 8009F2D4 8FAE0024 */  lw         $t6, 0x24($sp)
/* 9FED8 8009F2D8 000B6100 */  sll        $t4, $t3, 4
/* 9FEDC 8009F2DC 014C6821 */  addu       $t5, $t2, $t4
/* 9FEE0 8009F2E0 000E7880 */  sll        $t7, $t6, 2
/* 9FEE4 8009F2E4 01AFC021 */  addu       $t8, $t5, $t7
/* 9FEE8 8009F2E8 C70A0000 */  lwc1       $f10, ($t8)
/* 9FEEC 8009F2EC C7B20048 */  lwc1       $f18, 0x48($sp)
/* 9FEF0 8009F2F0 46125102 */  mul.s      $f4, $f10, $f18
/* 9FEF4 8009F2F4 E7040000 */  swc1       $f4, ($t8)
/* 9FEF8 8009F2F8 8FB90024 */  lw         $t9, 0x24($sp)
/* 9FEFC 8009F2FC 27280001 */  addiu      $t0, $t9, 1
/* 9FF00 8009F300 29010004 */  slti       $at, $t0, 4
/* 9FF04 8009F304 1420FFF1 */  bnez       $at, .L8009F2CC
/* 9FF08 8009F308 AFA80024 */   sw        $t0, 0x24($sp)
/* 9FF0C 8009F30C 8FA90028 */  lw         $t1, 0x28($sp)
/* 9FF10 8009F310 252B0001 */  addiu      $t3, $t1, 1
/* 9FF14 8009F314 29610004 */  slti       $at, $t3, 4
/* 9FF18 8009F318 1420FFEB */  bnez       $at, .L8009F2C8
/* 9FF1C 8009F31C AFAB0028 */   sw        $t3, 0x28($sp)
/* 9FF20 8009F320 8FAA0034 */  lw         $t2, 0x34($sp)
/* 9FF24 8009F324 11400046 */  beqz       $t2, .L8009F440
/* 9FF28 8009F328 00000000 */   nop
/* 9FF2C 8009F32C C7A60040 */  lwc1       $f6, 0x40($sp)
/* 9FF30 8009F330 C7A80044 */  lwc1       $f8, 0x44($sp)
/* 9FF34 8009F334 3C014000 */  lui        $at, 0x4000
/* 9FF38 8009F338 44819800 */  mtc1       $at, $f19
/* 9FF3C 8009F33C 46083400 */  add.s      $f16, $f6, $f8
/* 9FF40 8009F340 44809000 */  mtc1       $zero, $f18
/* 9FF44 8009F344 460082A1 */  cvt.d.s    $f10, $f16
/* 9FF48 8009F348 4632503E */  c.le.d     $f10, $f18
/* 9FF4C 8009F34C 00000000 */  nop
/* 9FF50 8009F350 45000005 */  bc1f       .L8009F368
/* 9FF54 8009F354 00000000 */   nop
/* 9FF58 8009F358 8FAE0034 */  lw         $t6, 0x34($sp)
/* 9FF5C 8009F35C 340CFFFF */  ori        $t4, $zero, 0xffff
/* 9FF60 8009F360 10000037 */  b          .L8009F440
/* 9FF64 8009F364 A5CC0000 */   sh        $t4, ($t6)
.L8009F368:
/* 9FF68 8009F368 C7A40040 */  lwc1       $f4, 0x40($sp)
/* 9FF6C 8009F36C C7A60044 */  lwc1       $f6, 0x44($sp)
/* 9FF70 8009F370 3C014100 */  lui        $at, 0x4100
/* 9FF74 8009F374 44815800 */  mtc1       $at, $f11
/* 9FF78 8009F378 46062200 */  add.s      $f8, $f4, $f6
/* 9FF7C 8009F37C 44805000 */  mtc1       $zero, $f10
/* 9FF80 8009F380 240F0001 */  addiu      $t7, $zero, 1
/* 9FF84 8009F384 46004421 */  cvt.d.s    $f16, $f8
/* 9FF88 8009F388 46305483 */  div.d      $f18, $f10, $f16
/* 9FF8C 8009F38C 444DF800 */  cfc1       $t5, $31
/* 9FF90 8009F390 44CFF800 */  ctc1       $t7, $31
/* 9FF94 8009F394 00000000 */  nop
/* 9FF98 8009F398 46209124 */  cvt.w.d    $f4, $f18
/* 9FF9C 8009F39C 444FF800 */  cfc1       $t7, $31
/* 9FFA0 8009F3A0 00000000 */  nop
/* 9FFA4 8009F3A4 31E10004 */  andi       $at, $t7, 4
/* 9FFA8 8009F3A8 31EF0078 */  andi       $t7, $t7, 0x78
/* 9FFAC 8009F3AC 11E00015 */  beqz       $t7, .L8009F404
/* 9FFB0 8009F3B0 00000000 */   nop
/* 9FFB4 8009F3B4 3C0141E0 */  lui        $at, 0x41e0
/* 9FFB8 8009F3B8 44812800 */  mtc1       $at, $f5
/* 9FFBC 8009F3BC 44802000 */  mtc1       $zero, $f4
/* 9FFC0 8009F3C0 240F0001 */  addiu      $t7, $zero, 1
/* 9FFC4 8009F3C4 46249101 */  sub.d      $f4, $f18, $f4
/* 9FFC8 8009F3C8 44CFF800 */  ctc1       $t7, $31
/* 9FFCC 8009F3CC 00000000 */  nop
/* 9FFD0 8009F3D0 46202124 */  cvt.w.d    $f4, $f4
/* 9FFD4 8009F3D4 444FF800 */  cfc1       $t7, $31
/* 9FFD8 8009F3D8 00000000 */  nop
/* 9FFDC 8009F3DC 31E10004 */  andi       $at, $t7, 4
/* 9FFE0 8009F3E0 31EF0078 */  andi       $t7, $t7, 0x78
/* 9FFE4 8009F3E4 15E00005 */  bnez       $t7, .L8009F3FC
/* 9FFE8 8009F3E8 00000000 */   nop
/* 9FFEC 8009F3EC 440F2000 */  mfc1       $t7, $f4
/* 9FFF0 8009F3F0 3C018000 */  lui        $at, 0x8000
/* 9FFF4 8009F3F4 10000007 */  b          .L8009F414
/* 9FFF8 8009F3F8 01E17825 */   or        $t7, $t7, $at
.L8009F3FC:
/* 9FFFC 8009F3FC 10000005 */  b          .L8009F414
/* A0000 8009F400 240FFFFF */   addiu     $t7, $zero, -1
.L8009F404:
/* A0004 8009F404 440F2000 */  mfc1       $t7, $f4
/* A0008 8009F408 00000000 */  nop
/* A000C 8009F40C 05E0FFFB */  bltz       $t7, .L8009F3FC
/* A0010 8009F410 00000000 */   nop
.L8009F414:
/* A0014 8009F414 8FB80034 */  lw         $t8, 0x34($sp)
/* A0018 8009F418 44CDF800 */  ctc1       $t5, $31
/* A001C 8009F41C A70F0000 */  sh         $t7, ($t8)
/* A0020 8009F420 00000000 */  nop
/* A0024 8009F424 8FB90034 */  lw         $t9, 0x34($sp)
/* A0028 8009F428 97280000 */  lhu        $t0, ($t9)
/* A002C 8009F42C 1D000004 */  bgtz       $t0, .L8009F440
/* A0030 8009F430 00000000 */   nop
/* A0034 8009F434 8FAB0034 */  lw         $t3, 0x34($sp)
/* A0038 8009F438 24090001 */  addiu      $t1, $zero, 1
/* A003C 8009F43C A5690000 */  sh         $t1, ($t3)
.L8009F440:
/* A0040 8009F440 10000001 */  b          .L8009F448
/* A0044 8009F444 00000000 */   nop
.L8009F448:
/* A0048 8009F448 8FBF001C */  lw         $ra, 0x1c($sp)
/* A004C 8009F44C D7B40010 */  ldc1       $f20, 0x10($sp)
/* A0050 8009F450 27BD0030 */  addiu      $sp, $sp, 0x30
/* A0054 8009F454 03E00008 */  jr         $ra
/* A0058 8009F458 00000000 */   nop

glabel func_8009F45C
/* A005C 8009F45C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A0060 8009F460 AFBF0024 */  sw         $ra, 0x24($sp)
/* A0064 8009F464 AFA40068 */  sw         $a0, 0x68($sp)
/* A0068 8009F468 AFA5006C */  sw         $a1, 0x6c($sp)
/* A006C 8009F46C AFA60070 */  sw         $a2, 0x70($sp)
/* A0070 8009F470 AFA70074 */  sw         $a3, 0x74($sp)
/* A0074 8009F474 C7A40078 */  lwc1       $f4, 0x78($sp)
/* A0078 8009F478 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* A007C 8009F47C C7A80080 */  lwc1       $f8, 0x80($sp)
/* A0080 8009F480 27A40028 */  addiu      $a0, $sp, 0x28
/* A0084 8009F484 8FA5006C */  lw         $a1, 0x6c($sp)
/* A0088 8009F488 8FA60070 */  lw         $a2, 0x70($sp)
/* A008C 8009F48C 8FA70074 */  lw         $a3, 0x74($sp)
/* A0090 8009F490 E7A40010 */  swc1       $f4, 0x10($sp)
/* A0094 8009F494 E7A60014 */  swc1       $f6, 0x14($sp)
/* A0098 8009F498 0C027C74 */  jal        func_8009F1D0
/* A009C 8009F49C E7A80018 */   swc1      $f8, 0x18($sp)
/* A00A0 8009F4A0 27A40028 */  addiu      $a0, $sp, 0x28
/* A00A4 8009F4A4 0C02807C */  jal        func_800A01F0
/* A00A8 8009F4A8 8FA50068 */   lw        $a1, 0x68($sp)
/* A00AC 8009F4AC 10000001 */  b          .L8009F4B4
/* A00B0 8009F4B0 00000000 */   nop
.L8009F4B4:
/* A00B4 8009F4B4 8FBF0024 */  lw         $ra, 0x24($sp)
/* A00B8 8009F4B8 27BD0068 */  addiu      $sp, $sp, 0x68
/* A00BC 8009F4BC 03E00008 */  jr         $ra
/* A00C0 8009F4C0 00000000 */   nop
/* A00C4 8009F4C4 00000000 */  nop
/* A00C8 8009F4C8 00000000 */  nop
/* A00CC 8009F4CC 00000000 */  nop

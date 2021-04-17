.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AE240
/* AEE40 800AE240 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AEE44 800AE244 AFBF0014 */  sw         $ra, 0x14($sp)
/* AEE48 800AE248 AFA40030 */  sw         $a0, 0x30($sp)
/* AEE4C 800AE24C AFA50034 */  sw         $a1, 0x34($sp)
/* AEE50 800AE250 AFA60038 */  sw         $a2, 0x38($sp)
/* AEE54 800AE254 AFA7003C */  sw         $a3, 0x3c($sp)
/* AEE58 800AE258 3C01800D */  lui        $at, %hi(D_800CD3B0)
/* AEE5C 800AE25C C426D3B0 */  lwc1       $f6, %lo(D_800CD3B0)($at)
/* AEE60 800AE260 C7A40034 */  lwc1       $f4, 0x34($sp)
/* AEE64 800AE264 46062202 */  mul.s      $f8, $f4, $f6
/* AEE68 800AE268 E7A80034 */  swc1       $f8, 0x34($sp)
/* AEE6C 800AE26C 3C01800D */  lui        $at, %hi(D_800CD3B0)
/* AEE70 800AE270 C430D3B0 */  lwc1       $f16, %lo(D_800CD3B0)($at)
/* AEE74 800AE274 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* AEE78 800AE278 46105482 */  mul.s      $f18, $f10, $f16
/* AEE7C 800AE27C E7B20038 */  swc1       $f18, 0x38($sp)
/* AEE80 800AE280 3C01800D */  lui        $at, %hi(D_800CD3B0)
/* AEE84 800AE284 C426D3B0 */  lwc1       $f6, %lo(D_800CD3B0)($at)
/* AEE88 800AE288 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* AEE8C 800AE28C 46062202 */  mul.s      $f8, $f4, $f6
/* AEE90 800AE290 E7A8003C */  swc1       $f8, 0x3c($sp)
/* AEE94 800AE294 0C025E08 */  jal        func_80097820
/* AEE98 800AE298 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* AEE9C 800AE29C E7A0002C */  swc1       $f0, 0x2c($sp)
/* AEEA0 800AE2A0 0C02C220 */  jal        func_800B0880
/* AEEA4 800AE2A4 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* AEEA8 800AE2A8 E7A00020 */  swc1       $f0, 0x20($sp)
/* AEEAC 800AE2AC 0C025E08 */  jal        func_80097820
/* AEEB0 800AE2B0 C7AC0038 */   lwc1      $f12, 0x38($sp)
/* AEEB4 800AE2B4 E7A00028 */  swc1       $f0, 0x28($sp)
/* AEEB8 800AE2B8 0C02C220 */  jal        func_800B0880
/* AEEBC 800AE2BC C7AC0038 */   lwc1      $f12, 0x38($sp)
/* AEEC0 800AE2C0 E7A0001C */  swc1       $f0, 0x1c($sp)
/* AEEC4 800AE2C4 0C025E08 */  jal        func_80097820
/* AEEC8 800AE2C8 C7AC003C */   lwc1      $f12, 0x3c($sp)
/* AEECC 800AE2CC E7A00024 */  swc1       $f0, 0x24($sp)
/* AEED0 800AE2D0 0C02C220 */  jal        func_800B0880
/* AEED4 800AE2D4 C7AC003C */   lwc1      $f12, 0x3c($sp)
/* AEED8 800AE2D8 E7A00018 */  swc1       $f0, 0x18($sp)
/* AEEDC 800AE2DC C7AA001C */  lwc1       $f10, 0x1c($sp)
/* AEEE0 800AE2E0 C7B00018 */  lwc1       $f16, 0x18($sp)
/* AEEE4 800AE2E4 C7A40040 */  lwc1       $f4, 0x40($sp)
/* AEEE8 800AE2E8 8FAE0030 */  lw         $t6, 0x30($sp)
/* AEEEC 800AE2EC 46105482 */  mul.s      $f18, $f10, $f16
/* AEEF0 800AE2F0 00000000 */  nop
/* AEEF4 800AE2F4 46049182 */  mul.s      $f6, $f18, $f4
/* AEEF8 800AE2F8 E5C60000 */  swc1       $f6, ($t6)
/* AEEFC 800AE2FC C7A8001C */  lwc1       $f8, 0x1c($sp)
/* AEF00 800AE300 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* AEF04 800AE304 C7B20040 */  lwc1       $f18, 0x40($sp)
/* AEF08 800AE308 8FAF0030 */  lw         $t7, 0x30($sp)
/* AEF0C 800AE30C 460A4402 */  mul.s      $f16, $f8, $f10
/* AEF10 800AE310 00000000 */  nop
/* AEF14 800AE314 46128102 */  mul.s      $f4, $f16, $f18
/* AEF18 800AE318 E5E40004 */  swc1       $f4, 4($t7)
/* AEF1C 800AE31C C7A60028 */  lwc1       $f6, 0x28($sp)
/* AEF20 800AE320 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* AEF24 800AE324 8FB80030 */  lw         $t8, 0x30($sp)
/* AEF28 800AE328 46003207 */  neg.s      $f8, $f6
/* AEF2C 800AE32C 460A4402 */  mul.s      $f16, $f8, $f10
/* AEF30 800AE330 E7100008 */  swc1       $f16, 8($t8)
/* AEF34 800AE334 44809000 */  mtc1       $zero, $f18
/* AEF38 800AE338 8FB90030 */  lw         $t9, 0x30($sp)
/* AEF3C 800AE33C E732000C */  swc1       $f18, 0xc($t9)
/* AEF40 800AE340 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* AEF44 800AE344 C7A60028 */  lwc1       $f6, 0x28($sp)
/* AEF48 800AE348 C7AA0018 */  lwc1       $f10, 0x18($sp)
/* AEF4C 800AE34C C7B20020 */  lwc1       $f18, 0x20($sp)
/* AEF50 800AE350 46062202 */  mul.s      $f8, $f4, $f6
/* AEF54 800AE354 C7A40024 */  lwc1       $f4, 0x24($sp)
/* AEF58 800AE358 8FA80030 */  lw         $t0, 0x30($sp)
/* AEF5C 800AE35C 460A4402 */  mul.s      $f16, $f8, $f10
/* AEF60 800AE360 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* AEF64 800AE364 46049182 */  mul.s      $f6, $f18, $f4
/* AEF68 800AE368 46068201 */  sub.s      $f8, $f16, $f6
/* AEF6C 800AE36C 460A4482 */  mul.s      $f18, $f8, $f10
/* AEF70 800AE370 E5120010 */  swc1       $f18, 0x10($t0)
/* AEF74 800AE374 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* AEF78 800AE378 C7B00028 */  lwc1       $f16, 0x28($sp)
/* AEF7C 800AE37C C7A80024 */  lwc1       $f8, 0x24($sp)
/* AEF80 800AE380 C7B20020 */  lwc1       $f18, 0x20($sp)
/* AEF84 800AE384 46102182 */  mul.s      $f6, $f4, $f16
/* AEF88 800AE388 C7A40018 */  lwc1       $f4, 0x18($sp)
/* AEF8C 800AE38C 8FA90030 */  lw         $t1, 0x30($sp)
/* AEF90 800AE390 46083282 */  mul.s      $f10, $f6, $f8
/* AEF94 800AE394 C7A80040 */  lwc1       $f8, 0x40($sp)
/* AEF98 800AE398 46049402 */  mul.s      $f16, $f18, $f4
/* AEF9C 800AE39C 46105180 */  add.s      $f6, $f10, $f16
/* AEFA0 800AE3A0 46083482 */  mul.s      $f18, $f6, $f8
/* AEFA4 800AE3A4 E5320014 */  swc1       $f18, 0x14($t1)
/* AEFA8 800AE3A8 C7A4002C */  lwc1       $f4, 0x2c($sp)
/* AEFAC 800AE3AC C7AA001C */  lwc1       $f10, 0x1c($sp)
/* AEFB0 800AE3B0 C7A60040 */  lwc1       $f6, 0x40($sp)
/* AEFB4 800AE3B4 8FAA0030 */  lw         $t2, 0x30($sp)
/* AEFB8 800AE3B8 460A2402 */  mul.s      $f16, $f4, $f10
/* AEFBC 800AE3BC 00000000 */  nop
/* AEFC0 800AE3C0 46068202 */  mul.s      $f8, $f16, $f6
/* AEFC4 800AE3C4 E5480018 */  swc1       $f8, 0x18($t2)
/* AEFC8 800AE3C8 44809000 */  mtc1       $zero, $f18
/* AEFCC 800AE3CC 8FAB0030 */  lw         $t3, 0x30($sp)
/* AEFD0 800AE3D0 E572001C */  swc1       $f18, 0x1c($t3)
/* AEFD4 800AE3D4 C7A40020 */  lwc1       $f4, 0x20($sp)
/* AEFD8 800AE3D8 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* AEFDC 800AE3DC C7A60018 */  lwc1       $f6, 0x18($sp)
/* AEFE0 800AE3E0 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* AEFE4 800AE3E4 460A2402 */  mul.s      $f16, $f4, $f10
/* AEFE8 800AE3E8 C7A40024 */  lwc1       $f4, 0x24($sp)
/* AEFEC 800AE3EC 8FAC0030 */  lw         $t4, 0x30($sp)
/* AEFF0 800AE3F0 46068202 */  mul.s      $f8, $f16, $f6
/* AEFF4 800AE3F4 C7A60040 */  lwc1       $f6, 0x40($sp)
/* AEFF8 800AE3F8 46049282 */  mul.s      $f10, $f18, $f4
/* AEFFC 800AE3FC 460A4400 */  add.s      $f16, $f8, $f10
/* AF000 800AE400 46068482 */  mul.s      $f18, $f16, $f6
/* AF004 800AE404 E5920020 */  swc1       $f18, 0x20($t4)
/* AF008 800AE408 C7A40020 */  lwc1       $f4, 0x20($sp)
/* AF00C 800AE40C C7A80028 */  lwc1       $f8, 0x28($sp)
/* AF010 800AE410 C7B00024 */  lwc1       $f16, 0x24($sp)
/* AF014 800AE414 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* AF018 800AE418 46082282 */  mul.s      $f10, $f4, $f8
/* AF01C 800AE41C C7A40018 */  lwc1       $f4, 0x18($sp)
/* AF020 800AE420 8FAD0030 */  lw         $t5, 0x30($sp)
/* AF024 800AE424 46105182 */  mul.s      $f6, $f10, $f16
/* AF028 800AE428 C7B00040 */  lwc1       $f16, 0x40($sp)
/* AF02C 800AE42C 46049202 */  mul.s      $f8, $f18, $f4
/* AF030 800AE430 46083281 */  sub.s      $f10, $f6, $f8
/* AF034 800AE434 46105482 */  mul.s      $f18, $f10, $f16
/* AF038 800AE438 E5B20024 */  swc1       $f18, 0x24($t5)
/* AF03C 800AE43C C7A40020 */  lwc1       $f4, 0x20($sp)
/* AF040 800AE440 C7A6001C */  lwc1       $f6, 0x1c($sp)
/* AF044 800AE444 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* AF048 800AE448 8FAE0030 */  lw         $t6, 0x30($sp)
/* AF04C 800AE44C 46062202 */  mul.s      $f8, $f4, $f6
/* AF050 800AE450 00000000 */  nop
/* AF054 800AE454 460A4402 */  mul.s      $f16, $f8, $f10
/* AF058 800AE458 E5D00028 */  swc1       $f16, 0x28($t6)
/* AF05C 800AE45C 44809000 */  mtc1       $zero, $f18
/* AF060 800AE460 8FAF0030 */  lw         $t7, 0x30($sp)
/* AF064 800AE464 E5F2002C */  swc1       $f18, 0x2c($t7)
/* AF068 800AE468 C7A40044 */  lwc1       $f4, 0x44($sp)
/* AF06C 800AE46C 8FB80030 */  lw         $t8, 0x30($sp)
/* AF070 800AE470 E7040030 */  swc1       $f4, 0x30($t8)
/* AF074 800AE474 C7A60048 */  lwc1       $f6, 0x48($sp)
/* AF078 800AE478 8FB90030 */  lw         $t9, 0x30($sp)
/* AF07C 800AE47C E7260034 */  swc1       $f6, 0x34($t9)
/* AF080 800AE480 C7A8004C */  lwc1       $f8, 0x4c($sp)
/* AF084 800AE484 8FA80030 */  lw         $t0, 0x30($sp)
/* AF088 800AE488 E5080038 */  swc1       $f8, 0x38($t0)
/* AF08C 800AE48C 3C013F80 */  lui        $at, 0x3f80
/* AF090 800AE490 44815000 */  mtc1       $at, $f10
/* AF094 800AE494 8FA90030 */  lw         $t1, 0x30($sp)
/* AF098 800AE498 E52A003C */  swc1       $f10, 0x3c($t1)
/* AF09C 800AE49C 10000001 */  b          .L800AE4A4
/* AF0A0 800AE4A0 00000000 */   nop
.L800AE4A4:
/* AF0A4 800AE4A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* AF0A8 800AE4A8 27BD0030 */  addiu      $sp, $sp, 0x30
/* AF0AC 800AE4AC 03E00008 */  jr         $ra
/* AF0B0 800AE4B0 00000000 */   nop

glabel func_800AE4B4
/* AF0B4 800AE4B4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AF0B8 800AE4B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* AF0BC 800AE4BC AFA40068 */  sw         $a0, 0x68($sp)
/* AF0C0 800AE4C0 AFA5006C */  sw         $a1, 0x6c($sp)
/* AF0C4 800AE4C4 AFA60070 */  sw         $a2, 0x70($sp)
/* AF0C8 800AE4C8 AFA70074 */  sw         $a3, 0x74($sp)
/* AF0CC 800AE4CC C7A40078 */  lwc1       $f4, 0x78($sp)
/* AF0D0 800AE4D0 C7A6007C */  lwc1       $f6, 0x7c($sp)
/* AF0D4 800AE4D4 C7A80080 */  lwc1       $f8, 0x80($sp)
/* AF0D8 800AE4D8 C7AA0084 */  lwc1       $f10, 0x84($sp)
/* AF0DC 800AE4DC 27A40028 */  addiu      $a0, $sp, 0x28
/* AF0E0 800AE4E0 8FA5006C */  lw         $a1, 0x6c($sp)
/* AF0E4 800AE4E4 8FA60070 */  lw         $a2, 0x70($sp)
/* AF0E8 800AE4E8 8FA70074 */  lw         $a3, 0x74($sp)
/* AF0EC 800AE4EC E7A40010 */  swc1       $f4, 0x10($sp)
/* AF0F0 800AE4F0 E7A60014 */  swc1       $f6, 0x14($sp)
/* AF0F4 800AE4F4 E7A80018 */  swc1       $f8, 0x18($sp)
/* AF0F8 800AE4F8 0C02B890 */  jal        func_800AE240
/* AF0FC 800AE4FC E7AA001C */   swc1      $f10, 0x1c($sp)
/* AF100 800AE500 27A40028 */  addiu      $a0, $sp, 0x28
/* AF104 800AE504 0C02807C */  jal        func_800A01F0
/* AF108 800AE508 8FA50068 */   lw        $a1, 0x68($sp)
/* AF10C 800AE50C 10000001 */  b          .L800AE514
/* AF110 800AE510 00000000 */   nop
.L800AE514:
/* AF114 800AE514 8FBF0024 */  lw         $ra, 0x24($sp)
/* AF118 800AE518 27BD0068 */  addiu      $sp, $sp, 0x68
/* AF11C 800AE51C 03E00008 */  jr         $ra
/* AF120 800AE520 00000000 */   nop
/* AF124 800AE524 00000000 */  nop
/* AF128 800AE528 00000000 */  nop
/* AF12C 800AE52C 00000000 */  nop

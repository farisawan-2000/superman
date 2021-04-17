.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AF090
/* AFC90 800AF090 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AFC94 800AF094 AFBF0014 */  sw         $ra, 0x14($sp)
/* AFC98 800AF098 AFA40030 */  sw         $a0, 0x30($sp)
/* AFC9C 800AF09C AFA50034 */  sw         $a1, 0x34($sp)
/* AFCA0 800AF0A0 AFA60038 */  sw         $a2, 0x38($sp)
/* AFCA4 800AF0A4 AFA7003C */  sw         $a3, 0x3c($sp)
/* AFCA8 800AF0A8 27A40038 */  addiu      $a0, $sp, 0x38
/* AFCAC 800AF0AC 27A5003C */  addiu      $a1, $sp, 0x3c
/* AFCB0 800AF0B0 0C02BDF4 */  jal        func_800AF7D0
/* AFCB4 800AF0B4 27A60040 */   addiu     $a2, $sp, 0x40
/* AFCB8 800AF0B8 3C01800D */  lui        $at, %hi(D_800CD3D0)
/* AFCBC 800AF0BC C426D3D0 */  lwc1       $f6, %lo(D_800CD3D0)($at)
/* AFCC0 800AF0C0 C7A40034 */  lwc1       $f4, 0x34($sp)
/* AFCC4 800AF0C4 46062202 */  mul.s      $f8, $f4, $f6
/* AFCC8 800AF0C8 E7A80034 */  swc1       $f8, 0x34($sp)
/* AFCCC 800AF0CC 0C025E08 */  jal        func_80097820
/* AFCD0 800AF0D0 C7AC0034 */   lwc1      $f12, 0x34($sp)
/* AFCD4 800AF0D4 E7A0002C */  swc1       $f0, 0x2c($sp)
/* AFCD8 800AF0D8 0C02C220 */  jal        func_800B0880
/* AFCDC 800AF0DC C7AC0034 */   lwc1      $f12, 0x34($sp)
/* AFCE0 800AF0E0 E7A00028 */  swc1       $f0, 0x28($sp)
/* AFCE4 800AF0E4 3C013F80 */  lui        $at, 0x3f80
/* AFCE8 800AF0E8 44815000 */  mtc1       $at, $f10
/* AFCEC 800AF0EC C7B00028 */  lwc1       $f16, 0x28($sp)
/* AFCF0 800AF0F0 46105481 */  sub.s      $f18, $f10, $f16
/* AFCF4 800AF0F4 E7B20018 */  swc1       $f18, 0x18($sp)
/* AFCF8 800AF0F8 C7A40038 */  lwc1       $f4, 0x38($sp)
/* AFCFC 800AF0FC C7A6003C */  lwc1       $f6, 0x3c($sp)
/* AFD00 800AF100 C7AA0018 */  lwc1       $f10, 0x18($sp)
/* AFD04 800AF104 46062202 */  mul.s      $f8, $f4, $f6
/* AFD08 800AF108 00000000 */  nop
/* AFD0C 800AF10C 460A4402 */  mul.s      $f16, $f8, $f10
/* AFD10 800AF110 E7B00024 */  swc1       $f16, 0x24($sp)
/* AFD14 800AF114 C7B2003C */  lwc1       $f18, 0x3c($sp)
/* AFD18 800AF118 C7A40040 */  lwc1       $f4, 0x40($sp)
/* AFD1C 800AF11C C7A80018 */  lwc1       $f8, 0x18($sp)
/* AFD20 800AF120 46049182 */  mul.s      $f6, $f18, $f4
/* AFD24 800AF124 00000000 */  nop
/* AFD28 800AF128 46083282 */  mul.s      $f10, $f6, $f8
/* AFD2C 800AF12C E7AA0020 */  swc1       $f10, 0x20($sp)
/* AFD30 800AF130 C7B00040 */  lwc1       $f16, 0x40($sp)
/* AFD34 800AF134 C7B20038 */  lwc1       $f18, 0x38($sp)
/* AFD38 800AF138 C7A60018 */  lwc1       $f6, 0x18($sp)
/* AFD3C 800AF13C 46128102 */  mul.s      $f4, $f16, $f18
/* AFD40 800AF140 00000000 */  nop
/* AFD44 800AF144 46062202 */  mul.s      $f8, $f4, $f6
/* AFD48 800AF148 E7A8001C */  swc1       $f8, 0x1c($sp)
/* AFD4C 800AF14C 0C028116 */  jal        func_800A0458
/* AFD50 800AF150 8FA40030 */   lw        $a0, 0x30($sp)
/* AFD54 800AF154 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* AFD58 800AF158 460A5402 */  mul.s      $f16, $f10, $f10
/* AFD5C 800AF15C E7B00018 */  swc1       $f16, 0x18($sp)
/* AFD60 800AF160 3C013F80 */  lui        $at, 0x3f80
/* AFD64 800AF164 44819000 */  mtc1       $at, $f18
/* AFD68 800AF168 C7A40018 */  lwc1       $f4, 0x18($sp)
/* AFD6C 800AF16C C7A80028 */  lwc1       $f8, 0x28($sp)
/* AFD70 800AF170 8FAE0030 */  lw         $t6, 0x30($sp)
/* AFD74 800AF174 46049181 */  sub.s      $f6, $f18, $f4
/* AFD78 800AF178 46083282 */  mul.s      $f10, $f6, $f8
/* AFD7C 800AF17C 46045400 */  add.s      $f16, $f10, $f4
/* AFD80 800AF180 E5D00000 */  swc1       $f16, ($t6)
/* AFD84 800AF184 C7B20038 */  lwc1       $f18, 0x38($sp)
/* AFD88 800AF188 C7A6002C */  lwc1       $f6, 0x2c($sp)
/* AFD8C 800AF18C C7AA0020 */  lwc1       $f10, 0x20($sp)
/* AFD90 800AF190 8FAF0030 */  lw         $t7, 0x30($sp)
/* AFD94 800AF194 46069202 */  mul.s      $f8, $f18, $f6
/* AFD98 800AF198 46085101 */  sub.s      $f4, $f10, $f8
/* AFD9C 800AF19C E5E40024 */  swc1       $f4, 0x24($t7)
/* AFDA0 800AF1A0 C7B00038 */  lwc1       $f16, 0x38($sp)
/* AFDA4 800AF1A4 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* AFDA8 800AF1A8 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* AFDAC 800AF1AC 8FB80030 */  lw         $t8, 0x30($sp)
/* AFDB0 800AF1B0 46128182 */  mul.s      $f6, $f16, $f18
/* AFDB4 800AF1B4 460A3200 */  add.s      $f8, $f6, $f10
/* AFDB8 800AF1B8 E7080018 */  swc1       $f8, 0x18($t8)
/* AFDBC 800AF1BC C7A4003C */  lwc1       $f4, 0x3c($sp)
/* AFDC0 800AF1C0 46042402 */  mul.s      $f16, $f4, $f4
/* AFDC4 800AF1C4 E7B00018 */  swc1       $f16, 0x18($sp)
/* AFDC8 800AF1C8 3C013F80 */  lui        $at, 0x3f80
/* AFDCC 800AF1CC 44819000 */  mtc1       $at, $f18
/* AFDD0 800AF1D0 C7A60018 */  lwc1       $f6, 0x18($sp)
/* AFDD4 800AF1D4 C7A80028 */  lwc1       $f8, 0x28($sp)
/* AFDD8 800AF1D8 8FB90030 */  lw         $t9, 0x30($sp)
/* AFDDC 800AF1DC 46069281 */  sub.s      $f10, $f18, $f6
/* AFDE0 800AF1E0 46085102 */  mul.s      $f4, $f10, $f8
/* AFDE4 800AF1E4 46062400 */  add.s      $f16, $f4, $f6
/* AFDE8 800AF1E8 E7300014 */  swc1       $f16, 0x14($t9)
/* AFDEC 800AF1EC C7B2003C */  lwc1       $f18, 0x3c($sp)
/* AFDF0 800AF1F0 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* AFDF4 800AF1F4 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* AFDF8 800AF1F8 8FA80030 */  lw         $t0, 0x30($sp)
/* AFDFC 800AF1FC 460A9202 */  mul.s      $f8, $f18, $f10
/* AFE00 800AF200 46044180 */  add.s      $f6, $f8, $f4
/* AFE04 800AF204 E5060020 */  swc1       $f6, 0x20($t0)
/* AFE08 800AF208 C7B0003C */  lwc1       $f16, 0x3c($sp)
/* AFE0C 800AF20C C7B2002C */  lwc1       $f18, 0x2c($sp)
/* AFE10 800AF210 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* AFE14 800AF214 8FA90030 */  lw         $t1, 0x30($sp)
/* AFE18 800AF218 46128282 */  mul.s      $f10, $f16, $f18
/* AFE1C 800AF21C 460A4101 */  sub.s      $f4, $f8, $f10
/* AFE20 800AF220 E5240008 */  swc1       $f4, 8($t1)
/* AFE24 800AF224 C7A60040 */  lwc1       $f6, 0x40($sp)
/* AFE28 800AF228 46063402 */  mul.s      $f16, $f6, $f6
/* AFE2C 800AF22C E7B00018 */  swc1       $f16, 0x18($sp)
/* AFE30 800AF230 3C013F80 */  lui        $at, 0x3f80
/* AFE34 800AF234 44819000 */  mtc1       $at, $f18
/* AFE38 800AF238 C7A80018 */  lwc1       $f8, 0x18($sp)
/* AFE3C 800AF23C C7A40028 */  lwc1       $f4, 0x28($sp)
/* AFE40 800AF240 8FAA0030 */  lw         $t2, 0x30($sp)
/* AFE44 800AF244 46089281 */  sub.s      $f10, $f18, $f8
/* AFE48 800AF248 46045182 */  mul.s      $f6, $f10, $f4
/* AFE4C 800AF24C 46083400 */  add.s      $f16, $f6, $f8
/* AFE50 800AF250 E5500028 */  swc1       $f16, 0x28($t2)
/* AFE54 800AF254 C7B20040 */  lwc1       $f18, 0x40($sp)
/* AFE58 800AF258 C7AA002C */  lwc1       $f10, 0x2c($sp)
/* AFE5C 800AF25C C7A60024 */  lwc1       $f6, 0x24($sp)
/* AFE60 800AF260 8FAB0030 */  lw         $t3, 0x30($sp)
/* AFE64 800AF264 460A9102 */  mul.s      $f4, $f18, $f10
/* AFE68 800AF268 46043201 */  sub.s      $f8, $f6, $f4
/* AFE6C 800AF26C E5680010 */  swc1       $f8, 0x10($t3)
/* AFE70 800AF270 C7B00040 */  lwc1       $f16, 0x40($sp)
/* AFE74 800AF274 C7B2002C */  lwc1       $f18, 0x2c($sp)
/* AFE78 800AF278 C7A60024 */  lwc1       $f6, 0x24($sp)
/* AFE7C 800AF27C 8FAC0030 */  lw         $t4, 0x30($sp)
/* AFE80 800AF280 46128282 */  mul.s      $f10, $f16, $f18
/* AFE84 800AF284 46065100 */  add.s      $f4, $f10, $f6
/* AFE88 800AF288 E5840004 */  swc1       $f4, 4($t4)
/* AFE8C 800AF28C 10000001 */  b          .L800AF294
/* AFE90 800AF290 00000000 */   nop
.L800AF294:
/* AFE94 800AF294 8FBF0014 */  lw         $ra, 0x14($sp)
/* AFE98 800AF298 27BD0030 */  addiu      $sp, $sp, 0x30
/* AFE9C 800AF29C 03E00008 */  jr         $ra
/* AFEA0 800AF2A0 00000000 */   nop

glabel func_800AF2A4
/* AFEA4 800AF2A4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* AFEA8 800AF2A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* AFEAC 800AF2AC AFA40060 */  sw         $a0, 0x60($sp)
/* AFEB0 800AF2B0 AFA50064 */  sw         $a1, 0x64($sp)
/* AFEB4 800AF2B4 AFA60068 */  sw         $a2, 0x68($sp)
/* AFEB8 800AF2B8 AFA7006C */  sw         $a3, 0x6c($sp)
/* AFEBC 800AF2BC C7A40070 */  lwc1       $f4, 0x70($sp)
/* AFEC0 800AF2C0 27A40020 */  addiu      $a0, $sp, 0x20
/* AFEC4 800AF2C4 8FA50064 */  lw         $a1, 0x64($sp)
/* AFEC8 800AF2C8 8FA60068 */  lw         $a2, 0x68($sp)
/* AFECC 800AF2CC 8FA7006C */  lw         $a3, 0x6c($sp)
/* AFED0 800AF2D0 0C02BC24 */  jal        func_800AF090
/* AFED4 800AF2D4 E7A40010 */   swc1      $f4, 0x10($sp)
/* AFED8 800AF2D8 27A40020 */  addiu      $a0, $sp, 0x20
/* AFEDC 800AF2DC 0C02807C */  jal        func_800A01F0
/* AFEE0 800AF2E0 8FA50060 */   lw        $a1, 0x60($sp)
/* AFEE4 800AF2E4 10000001 */  b          .L800AF2EC
/* AFEE8 800AF2E8 00000000 */   nop
.L800AF2EC:
/* AFEEC 800AF2EC 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFEF0 800AF2F0 27BD0060 */  addiu      $sp, $sp, 0x60
/* AFEF4 800AF2F4 03E00008 */  jr         $ra
/* AFEF8 800AF2F8 00000000 */   nop
/* AFEFC 800AF2FC 00000000 */  nop

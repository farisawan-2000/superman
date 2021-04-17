.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AB240
/* ABE40 800AB240 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* ABE44 800AB244 AFBF001C */  sw         $ra, 0x1c($sp)
/* ABE48 800AB248 AFA40028 */  sw         $a0, 0x28($sp)
/* ABE4C 800AB24C AFA5002C */  sw         $a1, 0x2c($sp)
/* ABE50 800AB250 AFA60030 */  sw         $a2, 0x30($sp)
/* ABE54 800AB254 AFA70034 */  sw         $a3, 0x34($sp)
/* ABE58 800AB258 AFB10018 */  sw         $s1, 0x18($sp)
/* ABE5C 800AB25C AFB00014 */  sw         $s0, 0x14($sp)
/* ABE60 800AB260 8FAE0028 */  lw         $t6, 0x28($sp)
/* ABE64 800AB264 11C0000A */  beqz       $t6, .L800AB290
/* ABE68 800AB268 00000000 */   nop
/* ABE6C 800AB26C 24010001 */  addiu      $at, $zero, 1
/* ABE70 800AB270 11C10007 */  beq        $t6, $at, .L800AB290
/* ABE74 800AB274 00000000 */   nop
/* ABE78 800AB278 24040015 */  addiu      $a0, $zero, 0x15
/* ABE7C 800AB27C 24050001 */  addiu      $a1, $zero, 1
/* ABE80 800AB280 0C02B5EC */  jal        func_800AD7B0
/* ABE84 800AB284 8FA60028 */   lw        $a2, 0x28($sp)
/* ABE88 800AB288 1000005E */  b          .L800AB404
/* ABE8C 800AB28C 2402FFFF */   addiu     $v0, $zero, -1
.L800AB290:
/* ABE90 800AB290 8FAF002C */  lw         $t7, 0x2c($sp)
/* ABE94 800AB294 31F80001 */  andi       $t8, $t7, 1
/* ABE98 800AB298 13000007 */  beqz       $t8, .L800AB2B8
/* ABE9C 800AB29C 00000000 */   nop
/* ABEA0 800AB2A0 24040016 */  addiu      $a0, $zero, 0x16
/* ABEA4 800AB2A4 24050001 */  addiu      $a1, $zero, 1
/* ABEA8 800AB2A8 0C02B5EC */  jal        func_800AD7B0
/* ABEAC 800AB2AC 8FA6002C */   lw        $a2, 0x2c($sp)
/* ABEB0 800AB2B0 10000054 */  b          .L800AB404
/* ABEB4 800AB2B4 2402FFFF */   addiu     $v0, $zero, -1
.L800AB2B8:
/* ABEB8 800AB2B8 8FB90030 */  lw         $t9, 0x30($sp)
/* ABEBC 800AB2BC 33280007 */  andi       $t0, $t9, 7
/* ABEC0 800AB2C0 11000007 */  beqz       $t0, .L800AB2E0
/* ABEC4 800AB2C4 00000000 */   nop
/* ABEC8 800AB2C8 24040017 */  addiu      $a0, $zero, 0x17
/* ABECC 800AB2CC 24050001 */  addiu      $a1, $zero, 1
/* ABED0 800AB2D0 0C02B5EC */  jal        func_800AD7B0
/* ABED4 800AB2D4 8FA60030 */   lw        $a2, 0x30($sp)
/* ABED8 800AB2D8 1000004A */  b          .L800AB404
/* ABEDC 800AB2DC 2402FFFF */   addiu     $v0, $zero, -1
.L800AB2E0:
/* ABEE0 800AB2E0 8FA90034 */  lw         $t1, 0x34($sp)
/* ABEE4 800AB2E4 312A0001 */  andi       $t2, $t1, 1
/* ABEE8 800AB2E8 11400007 */  beqz       $t2, .L800AB308
/* ABEEC 800AB2EC 00000000 */   nop
/* ABEF0 800AB2F0 24040018 */  addiu      $a0, $zero, 0x18
/* ABEF4 800AB2F4 24050001 */  addiu      $a1, $zero, 1
/* ABEF8 800AB2F8 0C02B5EC */  jal        func_800AD7B0
/* ABEFC 800AB2FC 8FA60034 */   lw        $a2, 0x34($sp)
/* ABF00 800AB300 10000040 */  b          .L800AB404
/* ABF04 800AB304 2402FFFF */   addiu     $v0, $zero, -1
.L800AB308:
/* ABF08 800AB308 8FAB0034 */  lw         $t3, 0x34($sp)
/* ABF0C 800AB30C 11600006 */  beqz       $t3, .L800AB328
/* ABF10 800AB310 00000000 */   nop
/* ABF14 800AB314 3C010100 */  lui        $at, 0x100
/* ABF18 800AB318 34210001 */  ori        $at, $at, 1
/* ABF1C 800AB31C 0161082B */  sltu       $at, $t3, $at
/* ABF20 800AB320 14200007 */  bnez       $at, .L800AB340
/* ABF24 800AB324 00000000 */   nop
.L800AB328:
/* ABF28 800AB328 24040019 */  addiu      $a0, $zero, 0x19
/* ABF2C 800AB32C 24050001 */  addiu      $a1, $zero, 1
/* ABF30 800AB330 0C02B5EC */  jal        func_800AD7B0
/* ABF34 800AB334 8FA60034 */   lw        $a2, 0x34($sp)
/* ABF38 800AB338 10000032 */  b          .L800AB404
/* ABF3C 800AB33C 2402FFFF */   addiu     $v0, $zero, -1
.L800AB340:
/* ABF40 800AB340 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* ABF44 800AB344 8D900010 */  lw         $s0, %lo(D_A4600010)($t4)
/* ABF48 800AB348 320D0003 */  andi       $t5, $s0, 3
/* ABF4C 800AB34C 11A00006 */  beqz       $t5, .L800AB368
/* ABF50 800AB350 00000000 */   nop
.L800AB354:
/* ABF54 800AB354 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* ABF58 800AB358 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* ABF5C 800AB35C 320F0003 */  andi       $t7, $s0, 3
/* ABF60 800AB360 15E0FFFC */  bnez       $t7, .L800AB354
/* ABF64 800AB364 00000000 */   nop
.L800AB368:
/* ABF68 800AB368 0C027C0C */  jal        func_8009F030
/* ABF6C 800AB36C 8FA40030 */   lw        $a0, 0x30($sp)
/* ABF70 800AB370 3C18A460 */  lui        $t8, 0xa460
/* ABF74 800AB374 AF020000 */  sw         $v0, ($t8)
/* ABF78 800AB378 3C198000 */  lui        $t9, %hi(D_80000308)
/* ABF7C 800AB37C 8F390308 */  lw         $t9, %lo(D_80000308)($t9)
/* ABF80 800AB380 8FA8002C */  lw         $t0, 0x2c($sp)
/* ABF84 800AB384 3C011FFF */  lui        $at, 0x1fff
/* ABF88 800AB388 3421FFFF */  ori        $at, $at, 0xffff
/* ABF8C 800AB38C 03284825 */  or         $t1, $t9, $t0
/* ABF90 800AB390 01215024 */  and        $t2, $t1, $at
/* ABF94 800AB394 3C0BA460 */  lui        $t3, %hi(D_A4600004)
/* ABF98 800AB398 AD6A0004 */  sw         $t2, %lo(D_A4600004)($t3)
/* ABF9C 800AB39C 8FB10028 */  lw         $s1, 0x28($sp)
/* ABFA0 800AB3A0 12200006 */  beqz       $s1, .L800AB3BC
/* ABFA4 800AB3A4 00000000 */   nop
/* ABFA8 800AB3A8 24010001 */  addiu      $at, $zero, 1
/* ABFAC 800AB3AC 12210009 */  beq        $s1, $at, .L800AB3D4
/* ABFB0 800AB3B0 00000000 */   nop
/* ABFB4 800AB3B4 1000000D */  b          .L800AB3EC
/* ABFB8 800AB3B8 00000000 */   nop
.L800AB3BC:
/* ABFBC 800AB3BC 8FAC0034 */  lw         $t4, 0x34($sp)
/* ABFC0 800AB3C0 3C0EA460 */  lui        $t6, %hi(D_A460000C)
/* ABFC4 800AB3C4 258DFFFF */  addiu      $t5, $t4, -1
/* ABFC8 800AB3C8 ADCD000C */  sw         $t5, %lo(D_A460000C)($t6)
/* ABFCC 800AB3CC 10000009 */  b          .L800AB3F4
/* ABFD0 800AB3D0 00000000 */   nop
.L800AB3D4:
/* ABFD4 800AB3D4 8FAF0034 */  lw         $t7, 0x34($sp)
/* ABFD8 800AB3D8 3C19A460 */  lui        $t9, %hi(D_A4600008)
/* ABFDC 800AB3DC 25F8FFFF */  addiu      $t8, $t7, -1
/* ABFE0 800AB3E0 AF380008 */  sw         $t8, %lo(D_A4600008)($t9)
/* ABFE4 800AB3E4 10000003 */  b          .L800AB3F4
/* ABFE8 800AB3E8 00000000 */   nop
.L800AB3EC:
/* ABFEC 800AB3EC 10000005 */  b          .L800AB404
/* ABFF0 800AB3F0 2402FFFF */   addiu     $v0, $zero, -1
.L800AB3F4:
/* ABFF4 800AB3F4 10000003 */  b          .L800AB404
/* ABFF8 800AB3F8 00001025 */   or        $v0, $zero, $zero
/* ABFFC 800AB3FC 10000001 */  b          .L800AB404
/* AC000 800AB400 00000000 */   nop
.L800AB404:
/* AC004 800AB404 8FBF001C */  lw         $ra, 0x1c($sp)
/* AC008 800AB408 8FB00014 */  lw         $s0, 0x14($sp)
/* AC00C 800AB40C 8FB10018 */  lw         $s1, 0x18($sp)
/* AC010 800AB410 03E00008 */  jr         $ra
/* AC014 800AB414 27BD0028 */   addiu     $sp, $sp, 0x28
/* AC018 800AB418 00000000 */  nop
/* AC01C 800AB41C 00000000 */  nop

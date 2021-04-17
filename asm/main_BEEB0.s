.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BE2B0
/* BEEB0 800BE2B0 8C820000 */  lw         $v0, ($a0)
/* BEEB4 800BE2B4 50400004 */  beql       $v0, $zero, .L800BE2C8
/* BEEB8 800BE2B8 8C820004 */   lw        $v0, 4($a0)
/* BEEBC 800BE2BC 8C8E0004 */  lw         $t6, 4($a0)
/* BEEC0 800BE2C0 AC4E0004 */  sw         $t6, 4($v0)
/* BEEC4 800BE2C4 8C820004 */  lw         $v0, 4($a0)
.L800BE2C8:
/* BEEC8 800BE2C8 10400003 */  beqz       $v0, .L800BE2D8
/* BEECC 800BE2CC 00000000 */   nop
/* BEED0 800BE2D0 8C8F0000 */  lw         $t7, ($a0)
/* BEED4 800BE2D4 AC4F0000 */  sw         $t7, ($v0)
.L800BE2D8:
/* BEED8 800BE2D8 03E00008 */  jr         $ra
/* BEEDC 800BE2DC 00000000 */   nop

glabel func_800BE2E0
/* BEEE0 800BE2E0 8CAE0000 */  lw         $t6, ($a1)
/* BEEE4 800BE2E4 AC850004 */  sw         $a1, 4($a0)
/* BEEE8 800BE2E8 AC8E0000 */  sw         $t6, ($a0)
/* BEEEC 800BE2EC 8CA20000 */  lw         $v0, ($a1)
/* BEEF0 800BE2F0 10400002 */  beqz       $v0, .L800BE2FC
/* BEEF4 800BE2F4 00000000 */   nop
/* BEEF8 800BE2F8 AC440004 */  sw         $a0, 4($v0)
.L800BE2FC:
/* BEEFC 800BE2FC 03E00008 */  jr         $ra
/* BEF00 800BE300 ACA40000 */   sw        $a0, ($a1)

glabel func_800BE304
/* BEF04 800BE304 3C0E800E */  lui        $t6, %hi(D_800DA040)
/* BEF08 800BE308 8DCEA040 */  lw         $t6, %lo(D_800DA040)($t6)
/* BEF0C 800BE30C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEF10 800BE310 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEF14 800BE314 51C00006 */  beql       $t6, $zero, .L800BE330
/* BEF18 800BE318 8FBF0014 */   lw        $ra, 0x14($sp)
/* BEF1C 800BE31C 0C034E8C */  jal        func_800D3A30
/* BEF20 800BE320 00000000 */   nop
/* BEF24 800BE324 3C01800E */  lui        $at, %hi(D_800DA040)
/* BEF28 800BE328 AC20A040 */  sw         $zero, %lo(D_800DA040)($at)
/* BEF2C 800BE32C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BE330:
/* BEF30 800BE330 27BD0018 */  addiu      $sp, $sp, 0x18
/* BEF34 800BE334 03E00008 */  jr         $ra
/* BEF38 800BE338 00000000 */   nop

glabel func_800BE33C
/* BEF3C 800BE33C 3C02800E */  lui        $v0, %hi(D_800DA040)
/* BEF40 800BE340 2442A040 */  addiu      $v0, $v0, %lo(D_800DA040)
/* BEF44 800BE344 8C4E0000 */  lw         $t6, ($v0)
/* BEF48 800BE348 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEF4C 800BE34C AFBF0014 */  sw         $ra, 0x14($sp)
/* BEF50 800BE350 55C00004 */  bnezl      $t6, .L800BE364
/* BEF54 800BE354 8FBF0014 */   lw        $ra, 0x14($sp)
/* BEF58 800BE358 0C0320A8 */  jal        func_800C82A0
/* BEF5C 800BE35C AC440000 */   sw        $a0, ($v0)
/* BEF60 800BE360 8FBF0014 */  lw         $ra, 0x14($sp)
.L800BE364:
/* BEF64 800BE364 27BD0018 */  addiu      $sp, $sp, 0x18
/* BEF68 800BE368 03E00008 */  jr         $ra
/* BEF6C 800BE36C 00000000 */   nop

glabel func_800BE370
/* BEF70 800BE370 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEF74 800BE374 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEF78 800BE378 AFA5001C */  sw         $a1, 0x1c($sp)
/* BEF7C 800BE37C AFA60020 */  sw         $a2, 0x20($sp)
/* BEF80 800BE380 AFA70024 */  sw         $a3, 0x24($sp)
/* BEF84 800BE384 0C031110 */  jal        func_800C4440
/* BEF88 800BE388 AFA40018 */   sw        $a0, 0x18($sp)
/* BEF8C 800BE38C 8FA40018 */  lw         $a0, 0x18($sp)
/* BEF90 800BE390 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* BEF94 800BE394 3C013F80 */  lui        $at, 0x3f80
/* BEF98 800BE398 44815000 */  mtc1       $at, $f10
/* BEF9C 800BE39C E4840000 */  swc1       $f4, ($a0)
/* BEFA0 800BE3A0 C7A60020 */  lwc1       $f6, 0x20($sp)
/* BEFA4 800BE3A4 E4860014 */  swc1       $f6, 0x14($a0)
/* BEFA8 800BE3A8 C7A80024 */  lwc1       $f8, 0x24($sp)
/* BEFAC 800BE3AC E48A003C */  swc1       $f10, 0x3c($a0)
/* BEFB0 800BE3B0 E4880028 */  swc1       $f8, 0x28($a0)
/* BEFB4 800BE3B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* BEFB8 800BE3B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* BEFBC 800BE3BC 03E00008 */  jr         $ra
/* BEFC0 800BE3C0 00000000 */   nop

glabel func_800BE3C4
/* BEFC4 800BE3C4 44856000 */  mtc1       $a1, $f12
/* BEFC8 800BE3C8 44867000 */  mtc1       $a2, $f14
/* BEFCC 800BE3CC 44878000 */  mtc1       $a3, $f16
/* BEFD0 800BE3D0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* BEFD4 800BE3D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEFD8 800BE3D8 AFA40058 */  sw         $a0, 0x58($sp)
/* BEFDC 800BE3DC 44056000 */  mfc1       $a1, $f12
/* BEFE0 800BE3E0 44067000 */  mfc1       $a2, $f14
/* BEFE4 800BE3E4 44078000 */  mfc1       $a3, $f16
/* BEFE8 800BE3E8 0C02F8DC */  jal        func_800BE370
/* BEFEC 800BE3EC 27A40018 */   addiu     $a0, $sp, 0x18
/* BEFF0 800BE3F0 27A40018 */  addiu      $a0, $sp, 0x18
/* BEFF4 800BE3F4 0C0310D0 */  jal        func_800C4340
/* BEFF8 800BE3F8 8FA50058 */   lw        $a1, 0x58($sp)
/* BEFFC 800BE3FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BF000 800BE400 27BD0058 */  addiu      $sp, $sp, 0x58
/* BF004 800BE404 03E00008 */  jr         $ra
/* BF008 800BE408 00000000 */   nop
/* BF00C 800BE40C 00000000 */  nop

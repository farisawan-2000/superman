.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B1250
/* B1E50 800B1250 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B1E54 800B1254 AFBF001C */  sw         $ra, 0x1c($sp)
/* B1E58 800B1258 AFA40028 */  sw         $a0, 0x28($sp)
/* B1E5C 800B125C AFA5002C */  sw         $a1, 0x2c($sp)
/* B1E60 800B1260 AFA60030 */  sw         $a2, 0x30($sp)
/* B1E64 800B1264 AFB00018 */  sw         $s0, 0x18($sp)
/* B1E68 800B1268 3C0E800D */  lui        $t6, %hi(D_800CD670)
/* B1E6C 800B126C 8DCED670 */  lw         $t6, %lo(D_800CD670)($t6)
/* B1E70 800B1270 15C00006 */  bnez       $t6, .L800B128C
/* B1E74 800B1274 00000000 */   nop
/* B1E78 800B1278 2404002E */  addiu      $a0, $zero, 0x2e
/* B1E7C 800B127C 0C02B5EC */  jal        func_800AD7B0
/* B1E80 800B1280 00002825 */   or        $a1, $zero, $zero
/* B1E84 800B1284 1000001F */  b          .L800B1304
/* B1E88 800B1288 00000000 */   nop
.L800B128C:
/* B1E8C 800B128C 8FAF0028 */  lw         $t7, 0x28($sp)
/* B1E90 800B1290 11E00003 */  beqz       $t7, .L800B12A0
/* B1E94 800B1294 00000000 */   nop
/* B1E98 800B1298 10000007 */  b          .L800B12B8
/* B1E9C 800B129C 00000000 */   nop
.L800B12A0:
/* B1EA0 800B12A0 3C04800D */  lui        $a0, %hi(D_800D36B0)
/* B1EA4 800B12A4 3C05800D */  lui        $a1, %hi(D_800D36BC)
/* B1EA8 800B12A8 24A536BC */  addiu      $a1, $a1, %lo(D_800D36BC)
/* B1EAC 800B12AC 248436B0 */  addiu      $a0, $a0, %lo(D_800D36B0)
/* B1EB0 800B12B0 0C02C480 */  jal        func_800B1200
/* B1EB4 800B12B4 2406003D */   addiu     $a2, $zero, 0x3d
.L800B12B8:
/* B1EB8 800B12B8 0C02C0C8 */  jal        func_800B0320
/* B1EBC 800B12BC 00000000 */   nop
/* B1EC0 800B12C0 00408025 */  or         $s0, $v0, $zero
/* B1EC4 800B12C4 3C19800D */  lui        $t9, %hi(D_800CD444)
/* B1EC8 800B12C8 8F39D444 */  lw         $t9, %lo(D_800CD444)($t9)
/* B1ECC 800B12CC 8FB80028 */  lw         $t8, 0x28($sp)
/* B1ED0 800B12D0 AF380010 */  sw         $t8, 0x10($t9)
/* B1ED4 800B12D4 3C09800D */  lui        $t1, %hi(D_800CD444)
/* B1ED8 800B12D8 8D29D444 */  lw         $t1, %lo(D_800CD444)($t1)
/* B1EDC 800B12DC 8FA8002C */  lw         $t0, 0x2c($sp)
/* B1EE0 800B12E0 AD280014 */  sw         $t0, 0x14($t1)
/* B1EE4 800B12E4 3C0B800D */  lui        $t3, %hi(D_800CD444)
/* B1EE8 800B12E8 8D6BD444 */  lw         $t3, %lo(D_800CD444)($t3)
/* B1EEC 800B12EC 8FAA0030 */  lw         $t2, 0x30($sp)
/* B1EF0 800B12F0 A56A0002 */  sh         $t2, 2($t3)
/* B1EF4 800B12F4 0C02C0D0 */  jal        func_800B0340
/* B1EF8 800B12F8 02002025 */   or        $a0, $s0, $zero
/* B1EFC 800B12FC 10000001 */  b          .L800B1304
/* B1F00 800B1300 00000000 */   nop
.L800B1304:
/* B1F04 800B1304 8FBF001C */  lw         $ra, 0x1c($sp)
/* B1F08 800B1308 8FB00018 */  lw         $s0, 0x18($sp)
/* B1F0C 800B130C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B1F10 800B1310 03E00008 */  jr         $ra
/* B1F14 800B1314 00000000 */   nop
/* B1F18 800B1318 00000000 */  nop
/* B1F1C 800B131C 00000000 */  nop

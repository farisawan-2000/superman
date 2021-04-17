.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A0670
/* A1270 800A0670 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A1274 800A0674 AFBF0014 */  sw         $ra, 0x14($sp)
/* A1278 800A0678 AFA40018 */  sw         $a0, 0x18($sp)
/* A127C 800A067C AFA5001C */  sw         $a1, 0x1c($sp)
/* A1280 800A0680 8FAF0018 */  lw         $t7, 0x18($sp)
/* A1284 800A0684 87AE001E */  lh         $t6, 0x1e($sp)
/* A1288 800A0688 8DF80044 */  lw         $t8, 0x44($t7)
/* A128C 800A068C 01D8082A */  slt        $at, $t6, $t8
/* A1290 800A0690 10200003 */  beqz       $at, .L800A06A0
/* A1294 800A0694 00000000 */   nop
/* A1298 800A0698 05C1000A */  bgez       $t6, .L800A06C4
/* A129C 800A069C 00000000 */   nop
.L800A06A0:
/* A12A0 800A06A0 8FB90018 */  lw         $t9, 0x18($sp)
/* A12A4 800A06A4 2404006E */  addiu      $a0, $zero, 0x6e
/* A12A8 800A06A8 24050002 */  addiu      $a1, $zero, 2
/* A12AC 800A06AC 8F270044 */  lw         $a3, 0x44($t9)
/* A12B0 800A06B0 87A6001E */  lh         $a2, 0x1e($sp)
/* A12B4 800A06B4 0C02B5EC */  jal        func_800AD7B0
/* A12B8 800A06B8 24E7FFFF */   addiu     $a3, $a3, -1
/* A12BC 800A06BC 10000006 */  b          .L800A06D8
/* A12C0 800A06C0 00000000 */   nop
.L800A06C4:
/* A12C4 800A06C4 87A8001E */  lh         $t0, 0x1e($sp)
/* A12C8 800A06C8 8FA90018 */  lw         $t1, 0x18($sp)
/* A12CC 800A06CC AD28003C */  sw         $t0, 0x3c($t1)
/* A12D0 800A06D0 10000001 */  b          .L800A06D8
/* A12D4 800A06D4 00000000 */   nop
.L800A06D8:
/* A12D8 800A06D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A12DC 800A06DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* A12E0 800A06E0 03E00008 */  jr         $ra
/* A12E4 800A06E4 00000000 */   nop
/* A12E8 800A06E8 00000000 */  nop
/* A12EC 800A06EC 00000000 */  nop

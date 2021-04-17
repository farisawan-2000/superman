.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A2140
/* A2D40 800A2140 40085000 */  mfc0       $t0, $10
/* A2D44 800A2144 310900FF */  andi       $t1, $t0, 0xff
/* A2D48 800A2148 2401E000 */  addiu      $at, $zero, -0x2000
/* A2D4C 800A214C 00815024 */  and        $t2, $a0, $at
/* A2D50 800A2150 012A4825 */  or         $t1, $t1, $t2
/* A2D54 800A2154 40895000 */  mtc0       $t1, $10
/* A2D58 800A2158 00000000 */  nop
/* A2D5C 800A215C 00000000 */  nop
/* A2D60 800A2160 00000000 */  nop
/* A2D64 800A2164 42000008 */  tlbp
/* A2D68 800A2168 00000000 */  nop
/* A2D6C 800A216C 00000000 */  nop
/* A2D70 800A2170 400B0000 */  mfc0       $t3, $0
/* A2D74 800A2174 3C018000 */  lui        $at, 0x8000
/* A2D78 800A2178 01615824 */  and        $t3, $t3, $at
/* A2D7C 800A217C 1560001A */  bnez       $t3, .L800A21E8
/* A2D80 800A2180 00000000 */   nop
/* A2D84 800A2184 42000001 */  tlbr
/* A2D88 800A2188 00000000 */  nop
/* A2D8C 800A218C 00000000 */  nop
/* A2D90 800A2190 00000000 */  nop
/* A2D94 800A2194 400B2800 */  mfc0       $t3, $5
/* A2D98 800A2198 216B2000 */  addi       $t3, $t3, 0x2000
/* A2D9C 800A219C 000B5842 */  srl        $t3, $t3, 1
/* A2DA0 800A21A0 01646024 */  and        $t4, $t3, $a0
/* A2DA4 800A21A4 15800004 */  bnez       $t4, .L800A21B8
/* A2DA8 800A21A8 216BFFFF */   addi      $t3, $t3, -1
/* A2DAC 800A21AC 40021000 */  mfc0       $v0, $2
/* A2DB0 800A21B0 10000002 */  b          .L800A21BC
/* A2DB4 800A21B4 00000000 */   nop
.L800A21B8:
/* A2DB8 800A21B8 40021800 */  mfc0       $v0, $3
.L800A21BC:
/* A2DBC 800A21BC 304D0002 */  andi       $t5, $v0, 2
/* A2DC0 800A21C0 11A00009 */  beqz       $t5, .L800A21E8
/* A2DC4 800A21C4 00000000 */   nop
/* A2DC8 800A21C8 3C013FFF */  lui        $at, 0x3fff
/* A2DCC 800A21CC 3421FFC0 */  ori        $at, $at, 0xffc0
/* A2DD0 800A21D0 00411024 */  and        $v0, $v0, $at
/* A2DD4 800A21D4 00021180 */  sll        $v0, $v0, 6
/* A2DD8 800A21D8 008B6824 */  and        $t5, $a0, $t3
/* A2DDC 800A21DC 004D1020 */  add        $v0, $v0, $t5
/* A2DE0 800A21E0 10000002 */  b          .L800A21EC
/* A2DE4 800A21E4 00000000 */   nop
.L800A21E8:
/* A2DE8 800A21E8 2402FFFF */  addiu      $v0, $zero, -1
.L800A21EC:
/* A2DEC 800A21EC 40885000 */  mtc0       $t0, $10
/* A2DF0 800A21F0 03E00008 */  jr         $ra
/* A2DF4 800A21F4 00000000 */   nop
/* A2DF8 800A21F8 00000000 */  nop
/* A2DFC 800A21FC 00000000 */  nop

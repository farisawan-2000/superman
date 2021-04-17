.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009A220
/* 9AE20 8009A220 00041823 */  negu       $v1, $a0
/* 9AE24 8009A224 28A1000C */  slti       $at, $a1, 0xc
/* 9AE28 8009A228 14200022 */  bnez       $at, .L8009A2B4
/* 9AE2C 8009A22C 00000000 */   nop
/* 9AE30 8009A230 30630003 */  andi       $v1, $v1, 3
/* 9AE34 8009A234 00A32823 */  subu       $a1, $a1, $v1
/* 9AE38 8009A238 10600003 */  beqz       $v1, .L8009A248
/* 9AE3C 8009A23C 00000000 */   nop
/* 9AE40 8009A240 A8800000 */  swl        $zero, ($a0)
/* 9AE44 8009A244 00832021 */  addu       $a0, $a0, $v1
.L8009A248:
/* 9AE48 8009A248 2401FFE0 */  addiu      $at, $zero, -0x20
/* 9AE4C 8009A24C 00A13824 */  and        $a3, $a1, $at
/* 9AE50 8009A250 00A72823 */  subu       $a1, $a1, $a3
/* 9AE54 8009A254 10E0000D */  beqz       $a3, .L8009A28C
/* 9AE58 8009A258 00000000 */   nop
/* 9AE5C 8009A25C 00E43821 */  addu       $a3, $a3, $a0
.L8009A260:
/* 9AE60 8009A260 AC800000 */  sw         $zero, ($a0)
/* 9AE64 8009A264 AC800004 */  sw         $zero, 4($a0)
/* 9AE68 8009A268 AC800008 */  sw         $zero, 8($a0)
/* 9AE6C 8009A26C AC80000C */  sw         $zero, 0xc($a0)
/* 9AE70 8009A270 24840020 */  addiu      $a0, $a0, 0x20
/* 9AE74 8009A274 AC80FFF0 */  sw         $zero, -0x10($a0)
/* 9AE78 8009A278 AC80FFF4 */  sw         $zero, -0xc($a0)
/* 9AE7C 8009A27C AC80FFF8 */  sw         $zero, -8($a0)
/* 9AE80 8009A280 AC80FFFC */  sw         $zero, -4($a0)
/* 9AE84 8009A284 1487FFF6 */  bne        $a0, $a3, .L8009A260
/* 9AE88 8009A288 00000000 */   nop
.L8009A28C:
/* 9AE8C 8009A28C 2401FFFC */  addiu      $at, $zero, -4
/* 9AE90 8009A290 00A13824 */  and        $a3, $a1, $at
/* 9AE94 8009A294 00A72823 */  subu       $a1, $a1, $a3
/* 9AE98 8009A298 10E00006 */  beqz       $a3, .L8009A2B4
/* 9AE9C 8009A29C 00000000 */   nop
/* 9AEA0 8009A2A0 00E43821 */  addu       $a3, $a3, $a0
.L8009A2A4:
/* 9AEA4 8009A2A4 24840004 */  addiu      $a0, $a0, 4
/* 9AEA8 8009A2A8 AC80FFFC */  sw         $zero, -4($a0)
/* 9AEAC 8009A2AC 1487FFFD */  bne        $a0, $a3, .L8009A2A4
/* 9AEB0 8009A2B0 00000000 */   nop
.L8009A2B4:
/* 9AEB4 8009A2B4 18A00006 */  blez       $a1, .L8009A2D0
/* 9AEB8 8009A2B8 00000000 */   nop
/* 9AEBC 8009A2BC 00A42821 */  addu       $a1, $a1, $a0
.L8009A2C0:
/* 9AEC0 8009A2C0 24840001 */  addiu      $a0, $a0, 1
/* 9AEC4 8009A2C4 A080FFFF */  sb         $zero, -1($a0)
/* 9AEC8 8009A2C8 1485FFFD */  bne        $a0, $a1, .L8009A2C0
/* 9AECC 8009A2CC 00000000 */   nop
.L8009A2D0:
/* 9AED0 8009A2D0 03E00008 */  jr         $ra
/* 9AED4 8009A2D4 00000000 */   nop
/* 9AED8 8009A2D8 00000000 */  nop
/* 9AEDC 8009A2DC 00000000 */  nop
/* 9AEE0 8009A2E0 00000000 */  nop
/* 9AEE4 8009A2E4 00000000 */  nop
/* 9AEE8 8009A2E8 00000000 */  nop
/* 9AEEC 8009A2EC 00000000 */  nop
/* 9AEF0 8009A2F0 00000000 */  nop
/* 9AEF4 8009A2F4 00000000 */  nop
/* 9AEF8 8009A2F8 00000000 */  nop
/* 9AEFC 8009A2FC 00000000 */  nop
/* 9AF00 8009A300 00000000 */  nop
/* 9AF04 8009A304 00000000 */  nop
/* 9AF08 8009A308 00000000 */  nop
/* 9AF0C 8009A30C 00000000 */  nop
/* 9AF10 8009A310 00000000 */  nop
/* 9AF14 8009A314 00000000 */  nop
/* 9AF18 8009A318 00000000 */  nop
/* 9AF1C 8009A31C 00000000 */  nop
/* 9AF20 8009A320 00000000 */  nop
/* 9AF24 8009A324 00000000 */  nop
/* 9AF28 8009A328 00000000 */  nop
/* 9AF2C 8009A32C 00000000 */  nop
/* 9AF30 8009A330 00000000 */  nop
/* 9AF34 8009A334 00000000 */  nop
/* 9AF38 8009A338 00000000 */  nop
/* 9AF3C 8009A33C 00000000 */  nop

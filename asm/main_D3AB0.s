.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2EB0
/* D3AB0 800D2EB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D3AB4 800D2EB4 AFBF001C */  sw         $ra, 0x1c($sp)
/* D3AB8 800D2EB8 AFA40028 */  sw         $a0, 0x28($sp)
/* D3ABC 800D2EBC AFA60030 */  sw         $a2, 0x30($sp)
/* D3AC0 800D2EC0 AFA70034 */  sw         $a3, 0x34($sp)
/* D3AC4 800D2EC4 0C034BD8 */  jal        func_800D2F60
/* D3AC8 800D2EC8 AFB00018 */   sw        $s0, 0x18($sp)
/* D3ACC 800D2ECC 10400003 */  beqz       $v0, .L800D2EDC
/* D3AD0 800D2ED0 00000000 */   nop
/* D3AD4 800D2ED4 1000001B */  b          .L800D2F44
/* D3AD8 800D2ED8 2402FFFF */   addiu     $v0, $zero, -1
.L800D2EDC:
/* D3ADC 800D2EDC 240E0001 */  addiu      $t6, $zero, 1
/* D3AE0 800D2EE0 3C0FA410 */  lui        $t7, %hi(D_A410000C)
/* D3AE4 800D2EE4 ADEE000C */  sw         $t6, %lo(D_A410000C)($t7)
.L800D2EE8:
/* D3AE8 800D2EE8 3C18A410 */  lui        $t8, %hi(D_A410000C)
/* D3AEC 800D2EEC 8F10000C */  lw         $s0, %lo(D_A410000C)($t8)
/* D3AF0 800D2EF0 32190001 */  andi       $t9, $s0, 1
/* D3AF4 800D2EF4 1720FFFC */  bnez       $t9, .L800D2EE8
/* D3AF8 800D2EF8 00000000 */   nop
/* D3AFC 800D2EFC 0C030C38 */  jal        func_800C30E0
/* D3B00 800D2F00 8FA40028 */   lw        $a0, 0x28($sp)
/* D3B04 800D2F04 3C08A410 */  lui        $t0, 0xa410
/* D3B08 800D2F08 AD020000 */  sw         $v0, ($t0)
/* D3B0C 800D2F0C 0C030C38 */  jal        func_800C30E0
/* D3B10 800D2F10 8FA40028 */   lw        $a0, 0x28($sp)
/* D3B14 800D2F14 8FAD0034 */  lw         $t5, 0x34($sp)
/* D3B18 800D2F18 00405825 */  or         $t3, $v0, $zero
/* D3B1C 800D2F1C 8FAC0030 */  lw         $t4, 0x30($sp)
/* D3B20 800D2F20 016D7821 */  addu       $t7, $t3, $t5
/* D3B24 800D2F24 240A0000 */  addiu      $t2, $zero, 0
/* D3B28 800D2F28 01ED082B */  sltu       $at, $t7, $t5
/* D3B2C 800D2F2C 002A7021 */  addu       $t6, $at, $t2
/* D3B30 800D2F30 01E04825 */  or         $t1, $t7, $zero
/* D3B34 800D2F34 3C18A410 */  lui        $t8, %hi(D_A4100004)
/* D3B38 800D2F38 AF090004 */  sw         $t1, %lo(D_A4100004)($t8)
/* D3B3C 800D2F3C 00001025 */  or         $v0, $zero, $zero
/* D3B40 800D2F40 01CC7021 */  addu       $t6, $t6, $t4
.L800D2F44:
/* D3B44 800D2F44 8FBF001C */  lw         $ra, 0x1c($sp)
/* D3B48 800D2F48 8FB00018 */  lw         $s0, 0x18($sp)
/* D3B4C 800D2F4C 27BD0028 */  addiu      $sp, $sp, 0x28
/* D3B50 800D2F50 03E00008 */  jr         $ra
/* D3B54 800D2F54 00000000 */   nop
/* D3B58 800D2F58 00000000 */  nop
/* D3B5C 800D2F5C 00000000 */  nop

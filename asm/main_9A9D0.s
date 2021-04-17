.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80099DD0
/* 9A9D0 80099DD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9A9D4 80099DD4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 9A9D8 80099DD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 9A9DC 80099DDC AFA5002C */  sw         $a1, 0x2c($sp)
/* 9A9E0 80099DE0 AFB00018 */  sw         $s0, 0x18($sp)
/* 9A9E4 80099DE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 9A9E8 80099DE8 31CF0003 */  andi       $t7, $t6, 3
/* 9A9EC 80099DEC 11E00007 */  beqz       $t7, .L80099E0C
/* 9A9F0 80099DF0 00000000 */   nop
/* 9A9F4 80099DF4 24040013 */  addiu      $a0, $zero, 0x13
/* 9A9F8 80099DF8 24050001 */  addiu      $a1, $zero, 1
/* 9A9FC 80099DFC 0C02B5EC */  jal        func_800AD7B0
/* 9AA00 80099E00 8FA60028 */   lw        $a2, 0x28($sp)
/* 9AA04 80099E04 10000023 */  b          .L80099E94
/* 9AA08 80099E08 2402FFFF */   addiu     $v0, $zero, -1
.L80099E0C:
/* 9AA0C 80099E0C 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9AA10 80099E10 13000003 */  beqz       $t8, .L80099E20
/* 9AA14 80099E14 00000000 */   nop
/* 9AA18 80099E18 10000007 */  b          .L80099E38
/* 9AA1C 80099E1C 00000000 */   nop
.L80099E20:
/* 9AA20 80099E20 3C04800D */  lui        $a0, %hi(D_800D2880)
/* 9AA24 80099E24 3C05800D */  lui        $a1, %hi(D_800D2890)
/* 9AA28 80099E28 24A52890 */  addiu      $a1, $a1, %lo(D_800D2890)
/* 9AA2C 80099E2C 24842880 */  addiu      $a0, $a0, %lo(D_800D2880)
/* 9AA30 80099E30 0C02C480 */  jal        func_800B1200
/* 9AA34 80099E34 2406003D */   addiu     $a2, $zero, 0x3d
.L80099E38:
/* 9AA38 80099E38 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* 9AA3C 80099E3C 8F300010 */  lw         $s0, %lo(D_A4600010)($t9)
/* 9AA40 80099E40 32080003 */  andi       $t0, $s0, 3
/* 9AA44 80099E44 11000006 */  beqz       $t0, .L80099E60
/* 9AA48 80099E48 00000000 */   nop
.L80099E4C:
/* 9AA4C 80099E4C 3C09A460 */  lui        $t1, %hi(D_A4600010)
/* 9AA50 80099E50 8D300010 */  lw         $s0, %lo(D_A4600010)($t1)
/* 9AA54 80099E54 320A0003 */  andi       $t2, $s0, 3
/* 9AA58 80099E58 1540FFFC */  bnez       $t2, .L80099E4C
/* 9AA5C 80099E5C 00000000 */   nop
.L80099E60:
/* 9AA60 80099E60 3C0B8000 */  lui        $t3, %hi(D_80000308)
/* 9AA64 80099E64 8D6B0308 */  lw         $t3, %lo(D_80000308)($t3)
/* 9AA68 80099E68 8FAC0028 */  lw         $t4, 0x28($sp)
/* 9AA6C 80099E6C 3C01A000 */  lui        $at, 0xa000
/* 9AA70 80099E70 8FB8002C */  lw         $t8, 0x2c($sp)
/* 9AA74 80099E74 016C6825 */  or         $t5, $t3, $t4
/* 9AA78 80099E78 01A17025 */  or         $t6, $t5, $at
/* 9AA7C 80099E7C 8DCF0000 */  lw         $t7, ($t6)
/* 9AA80 80099E80 AF0F0000 */  sw         $t7, ($t8)
/* 9AA84 80099E84 10000003 */  b          .L80099E94
/* 9AA88 80099E88 00001025 */   or        $v0, $zero, $zero
/* 9AA8C 80099E8C 10000001 */  b          .L80099E94
/* 9AA90 80099E90 00000000 */   nop
.L80099E94:
/* 9AA94 80099E94 8FBF001C */  lw         $ra, 0x1c($sp)
/* 9AA98 80099E98 8FB00018 */  lw         $s0, 0x18($sp)
/* 9AA9C 80099E9C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 9AAA0 80099EA0 03E00008 */  jr         $ra
/* 9AAA4 80099EA4 00000000 */   nop
/* 9AAA8 80099EA8 00000000 */  nop
/* 9AAAC 80099EAC 00000000 */  nop

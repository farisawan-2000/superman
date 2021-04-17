.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800A2060
/* A2C60 800A2060 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A2C64 800A2064 AFBF0014 */  sw         $ra, 0x14($sp)
/* A2C68 800A2068 AFA40020 */  sw         $a0, 0x20($sp)
/* A2C6C 800A206C AFA50024 */  sw         $a1, 0x24($sp)
/* A2C70 800A2070 AFA60028 */  sw         $a2, 0x28($sp)
/* A2C74 800A2074 8FAE0024 */  lw         $t6, 0x24($sp)
/* A2C78 800A2078 8DCF0008 */  lw         $t7, 8($t6)
/* A2C7C 800A207C 11E00027 */  beqz       $t7, .L800A211C
/* A2C80 800A2080 00000000 */   nop
/* A2C84 800A2084 0C029658 */  jal        func_800A5960
/* A2C88 800A2088 00000000 */   nop
/* A2C8C 800A208C AFA2001C */  sw         $v0, 0x1c($sp)
/* A2C90 800A2090 8FB8001C */  lw         $t8, 0x1c($sp)
/* A2C94 800A2094 17000006 */  bnez       $t8, .L800A20B0
/* A2C98 800A2098 00000000 */   nop
/* A2C9C 800A209C 2404006A */  addiu      $a0, $zero, 0x6a
/* A2CA0 800A20A0 0C02B5EC */  jal        func_800AD7B0
/* A2CA4 800A20A4 00002825 */   or        $a1, $zero, $zero
/* A2CA8 800A20A8 1000001E */  b          .L800A2124
/* A2CAC 800A20AC 00000000 */   nop
.L800A20B0:
/* A2CB0 800A20B0 8FA90024 */  lw         $t1, 0x24($sp)
/* A2CB4 800A20B4 8FB90020 */  lw         $t9, 0x20($sp)
/* A2CB8 800A20B8 8FAD001C */  lw         $t5, 0x1c($sp)
/* A2CBC 800A20BC 8D2A0008 */  lw         $t2, 8($t1)
/* A2CC0 800A20C0 8F28001C */  lw         $t0, 0x1c($t9)
/* A2CC4 800A20C4 8D4B00D8 */  lw         $t3, 0xd8($t2)
/* A2CC8 800A20C8 010B6021 */  addu       $t4, $t0, $t3
/* A2CCC 800A20CC ADAC0004 */  sw         $t4, 4($t5)
/* A2CD0 800A20D0 8FAF001C */  lw         $t7, 0x1c($sp)
/* A2CD4 800A20D4 240E0007 */  addiu      $t6, $zero, 7
/* A2CD8 800A20D8 A5EE0008 */  sh         $t6, 8($t7)
/* A2CDC 800A20DC C7A40028 */  lwc1       $f4, 0x28($sp)
/* A2CE0 800A20E0 8FB8001C */  lw         $t8, 0x1c($sp)
/* A2CE4 800A20E4 E704000C */  swc1       $f4, 0xc($t8)
/* A2CE8 800A20E8 8FB9001C */  lw         $t9, 0x1c($sp)
/* A2CEC 800A20EC AF200000 */  sw         $zero, ($t9)
/* A2CF0 800A20F0 8FA90024 */  lw         $t1, 0x24($sp)
/* A2CF4 800A20F4 8D2A0008 */  lw         $t2, 8($t1)
/* A2CF8 800A20F8 8D48000C */  lw         $t0, 0xc($t2)
/* A2CFC 800A20FC AFA80018 */  sw         $t0, 0x18($sp)
/* A2D00 800A2100 8FAB0018 */  lw         $t3, 0x18($sp)
/* A2D04 800A2104 24050003 */  addiu      $a1, $zero, 3
/* A2D08 800A2108 8FA6001C */  lw         $a2, 0x1c($sp)
/* A2D0C 800A210C 8D790008 */  lw         $t9, 8($t3)
/* A2D10 800A2110 01602025 */  or         $a0, $t3, $zero
/* A2D14 800A2114 0320F809 */  jalr       $t9
/* A2D18 800A2118 00000000 */   nop
.L800A211C:
/* A2D1C 800A211C 10000001 */  b          .L800A2124
/* A2D20 800A2120 00000000 */   nop
.L800A2124:
/* A2D24 800A2124 8FBF0014 */  lw         $ra, 0x14($sp)
/* A2D28 800A2128 27BD0020 */  addiu      $sp, $sp, 0x20
/* A2D2C 800A212C 03E00008 */  jr         $ra
/* A2D30 800A2130 00000000 */   nop
/* A2D34 800A2134 00000000 */  nop
/* A2D38 800A2138 00000000 */  nop
/* A2D3C 800A213C 00000000 */  nop

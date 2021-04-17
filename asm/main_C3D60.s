.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3160
/* C3D60 800C3160 18A00011 */  blez       $a1, .L800C31A8
/* C3D64 800C3164 00000000 */   nop
/* C3D68 800C3168 240B2000 */  addiu      $t3, $zero, 0x2000
/* C3D6C 800C316C 00AB082B */  sltu       $at, $a1, $t3
/* C3D70 800C3170 1020000F */  beqz       $at, .L800C31B0
/* C3D74 800C3174 00000000 */   nop
/* C3D78 800C3178 00804025 */  or         $t0, $a0, $zero
/* C3D7C 800C317C 00854821 */  addu       $t1, $a0, $a1
/* C3D80 800C3180 0109082B */  sltu       $at, $t0, $t1
/* C3D84 800C3184 10200008 */  beqz       $at, .L800C31A8
/* C3D88 800C3188 00000000 */   nop
/* C3D8C 800C318C 310A000F */  andi       $t2, $t0, 0xf
/* C3D90 800C3190 2529FFF0 */  addiu      $t1, $t1, -0x10
/* C3D94 800C3194 010A4023 */  subu       $t0, $t0, $t2
.L800C3198:
/* C3D98 800C3198 BD190000 */  cache      0x19, ($t0)
/* C3D9C 800C319C 0109082B */  sltu       $at, $t0, $t1
/* C3DA0 800C31A0 1420FFFD */  bnez       $at, .L800C3198
/* C3DA4 800C31A4 25080010 */   addiu     $t0, $t0, 0x10
.L800C31A8:
/* C3DA8 800C31A8 03E00008 */  jr         $ra
/* C3DAC 800C31AC 00000000 */   nop
.L800C31B0:
/* C3DB0 800C31B0 3C088000 */  lui        $t0, 0x8000
/* C3DB4 800C31B4 010B4821 */  addu       $t1, $t0, $t3
/* C3DB8 800C31B8 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800C31BC:
/* C3DBC 800C31BC BD010000 */  cache      1, ($t0)
/* C3DC0 800C31C0 0109082B */  sltu       $at, $t0, $t1
/* C3DC4 800C31C4 1420FFFD */  bnez       $at, .L800C31BC
/* C3DC8 800C31C8 25080010 */   addiu     $t0, $t0, 0x10
/* C3DCC 800C31CC 03E00008 */  jr         $ra
/* C3DD0 800C31D0 00000000 */   nop
/* C3DD4 800C31D4 00000000 */  nop
/* C3DD8 800C31D8 00000000 */  nop
/* C3DDC 800C31DC 00000000 */  nop

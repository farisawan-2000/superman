.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD470
/* CE070 800CD470 00801025 */  or         $v0, $a0, $zero
/* CE074 800CD474 10C00007 */  beqz       $a2, .L800CD494
/* CE078 800CD478 00A01825 */   or        $v1, $a1, $zero
.L800CD47C:
/* CE07C 800CD47C 906E0000 */  lbu        $t6, ($v1)
/* CE080 800CD480 24C6FFFF */  addiu      $a2, $a2, -1
/* CE084 800CD484 24420001 */  addiu      $v0, $v0, 1
/* CE088 800CD488 24630001 */  addiu      $v1, $v1, 1
/* CE08C 800CD48C 14C0FFFB */  bnez       $a2, .L800CD47C
/* CE090 800CD490 A04EFFFF */   sb        $t6, -1($v0)
.L800CD494:
/* CE094 800CD494 03E00008 */  jr         $ra
/* CE098 800CD498 00801025 */   or        $v0, $a0, $zero

glabel func_800CD49C
/* CE09C 800CD49C 908E0000 */  lbu        $t6, ($a0)
/* CE0A0 800CD4A0 00801825 */  or         $v1, $a0, $zero
/* CE0A4 800CD4A4 11C00005 */  beqz       $t6, .L800CD4BC
/* CE0A8 800CD4A8 00000000 */   nop
/* CE0AC 800CD4AC 906F0001 */  lbu        $t7, 1($v1)
.L800CD4B0:
/* CE0B0 800CD4B0 24630001 */  addiu      $v1, $v1, 1
/* CE0B4 800CD4B4 55E0FFFE */  bnezl      $t7, .L800CD4B0
/* CE0B8 800CD4B8 906F0001 */   lbu       $t7, 1($v1)
.L800CD4BC:
/* CE0BC 800CD4BC 03E00008 */  jr         $ra
/* CE0C0 800CD4C0 00641023 */   subu      $v0, $v1, $a0

glabel func_800CD4C4
/* CE0C4 800CD4C4 90830000 */  lbu        $v1, ($a0)
/* CE0C8 800CD4C8 30AE00FF */  andi       $t6, $a1, 0xff
/* CE0CC 800CD4CC 30A200FF */  andi       $v0, $a1, 0xff
/* CE0D0 800CD4D0 51C3000A */  beql       $t6, $v1, .L800CD4FC
/* CE0D4 800CD4D4 00801025 */   or        $v0, $a0, $zero
.L800CD4D8:
/* CE0D8 800CD4D8 54600004 */  bnezl      $v1, .L800CD4EC
/* CE0DC 800CD4DC 90830001 */   lbu       $v1, 1($a0)
/* CE0E0 800CD4E0 03E00008 */  jr         $ra
/* CE0E4 800CD4E4 00001025 */   or        $v0, $zero, $zero
/* CE0E8 800CD4E8 90830001 */  lbu        $v1, 1($a0)
.L800CD4EC:
/* CE0EC 800CD4EC 24840001 */  addiu      $a0, $a0, 1
/* CE0F0 800CD4F0 1443FFF9 */  bne        $v0, $v1, .L800CD4D8
/* CE0F4 800CD4F4 00000000 */   nop
/* CE0F8 800CD4F8 00801025 */  or         $v0, $a0, $zero
.L800CD4FC:
/* CE0FC 800CD4FC 03E00008 */  jr         $ra
/* CE100 800CD500 00000000 */   nop
/* CE104 800CD504 00000000 */  nop
/* CE108 800CD508 00000000 */  nop
/* CE10C 800CD50C 00000000 */  nop

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D39B0
/* D45B0 800D39B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D45B4 800D39B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D45B8 800D39B8 AFA40018 */  sw         $a0, 0x18($sp)
/* D45BC 800D39BC 8CAE0008 */  lw         $t6, 8($a1)
/* D45C0 800D39C0 51C00016 */  beql       $t6, $zero, .L800D3A1C
/* D45C4 800D39C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* D45C8 800D39C8 0C031FF4 */  jal        func_800C7FD0
/* D45CC 800D39CC AFA5001C */   sw        $a1, 0x1c($sp)
/* D45D0 800D39D0 8FA7001C */  lw         $a3, 0x1c($sp)
/* D45D4 800D39D4 10400010 */  beqz       $v0, .L800D3A18
/* D45D8 800D39D8 00403025 */   or        $a2, $v0, $zero
/* D45DC 800D39DC 8FAF0018 */  lw         $t7, 0x18($sp)
/* D45E0 800D39E0 8CF90008 */  lw         $t9, 8($a3)
/* D45E4 800D39E4 240A000F */  addiu      $t2, $zero, 0xf
/* D45E8 800D39E8 8DF8001C */  lw         $t8, 0x1c($t7)
/* D45EC 800D39EC 8F2800D8 */  lw         $t0, 0xd8($t9)
/* D45F0 800D39F0 A44A0008 */  sh         $t2, 8($v0)
/* D45F4 800D39F4 AC400000 */  sw         $zero, ($v0)
/* D45F8 800D39F8 03084821 */  addu       $t1, $t8, $t0
/* D45FC 800D39FC AC490004 */  sw         $t1, 4($v0)
/* D4600 800D3A00 8CEB0008 */  lw         $t3, 8($a3)
/* D4604 800D3A04 24050003 */  addiu      $a1, $zero, 3
/* D4608 800D3A08 8D64000C */  lw         $a0, 0xc($t3)
/* D460C 800D3A0C 8C990008 */  lw         $t9, 8($a0)
/* D4610 800D3A10 0320F809 */  jalr       $t9
/* D4614 800D3A14 00000000 */   nop
.L800D3A18:
/* D4618 800D3A18 8FBF0014 */  lw         $ra, 0x14($sp)
.L800D3A1C:
/* D461C 800D3A1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* D4620 800D3A20 03E00008 */  jr         $ra
/* D4624 800D3A24 00000000 */   nop
/* D4628 800D3A28 00000000 */  nop
/* D462C 800D3A2C 00000000 */  nop

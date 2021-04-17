.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80007DF0
/* 89F0 80007DF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 89F4 80007DF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 89F8 80007DF8 0C006478 */  jal        func_800191E0
/* 89FC 80007DFC 00000000 */   nop
/* 8A00 80007E00 0C001126 */  jal        func_80004498
/* 8A04 80007E04 00000000 */   nop
/* 8A08 80007E08 3C0E8012 */  lui        $t6, %hi(D_80126E00)
/* 8A0C 80007E0C 25CE6E00 */  addiu      $t6, $t6, %lo(D_80126E00)
/* 8A10 80007E10 95CF0000 */  lhu        $t7, ($t6)
/* 8A14 80007E14 31F81000 */  andi       $t8, $t7, 0x1000
/* 8A18 80007E18 13000004 */  beqz       $t8, .L80007E2C
/* 8A1C 80007E1C 00000000 */   nop
/* 8A20 80007E20 24190017 */  addiu      $t9, $zero, 0x17
/* 8A24 80007E24 3C01800C */  lui        $at, %hi(D_800BC150)
/* 8A28 80007E28 AC39C150 */  sw         $t9, %lo(D_800BC150)($at)
.L80007E2C:
/* 8A2C 80007E2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8A30 80007E30 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8A34 80007E34 03E00008 */  jr         $ra
/* 8A38 80007E38 00000000 */   nop
/* 8A3C 80007E3C 00000000 */  nop

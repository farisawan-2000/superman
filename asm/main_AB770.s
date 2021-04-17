.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AAB70
/* AB770 800AAB70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB774 800AAB74 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB778 800AAB78 240E0001 */  addiu      $t6, $zero, 1
/* AB77C 800AAB7C 3C01800D */  lui        $at, %hi(D_800CD330)
/* AB780 800AAB80 AC2ED330 */  sw         $t6, %lo(D_800CD330)($at)
/* AB784 800AAB84 3C04801A */  lui        $a0, %hi(D_801A3868)
/* AB788 800AAB88 3C05801A */  lui        $a1, %hi(D_801A3860)
/* AB78C 800AAB8C 24A53860 */  addiu      $a1, $a1, %lo(D_801A3860)
/* AB790 800AAB90 24843868 */  addiu      $a0, $a0, %lo(D_801A3868)
/* AB794 800AAB94 0C02B42C */  jal        func_800AD0B0
/* AB798 800AAB98 24060001 */   addiu     $a2, $zero, 1
/* AB79C 800AAB9C 3C04801A */  lui        $a0, %hi(D_801A3868)
/* AB7A0 800AABA0 24843868 */  addiu      $a0, $a0, %lo(D_801A3868)
/* AB7A4 800AABA4 00002825 */  or         $a1, $zero, $zero
/* AB7A8 800AABA8 0C025C40 */  jal        func_80097100
/* AB7AC 800AABAC 00003025 */   or        $a2, $zero, $zero
/* AB7B0 800AABB0 10000001 */  b          .L800AABB8
/* AB7B4 800AABB4 00000000 */   nop
.L800AABB8:
/* AB7B8 800AABB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB7BC 800AABBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB7C0 800AABC0 03E00008 */  jr         $ra
/* AB7C4 800AABC4 00000000 */   nop

glabel func_800AABC8
/* AB7C8 800AABC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* AB7CC 800AABCC AFBF0014 */  sw         $ra, 0x14($sp)
/* AB7D0 800AABD0 3C0E800D */  lui        $t6, %hi(D_800CD330)
/* AB7D4 800AABD4 8DCED330 */  lw         $t6, %lo(D_800CD330)($t6)
/* AB7D8 800AABD8 15C00003 */  bnez       $t6, .L800AABE8
/* AB7DC 800AABDC 00000000 */   nop
/* AB7E0 800AABE0 0C02AADC */  jal        func_800AAB70
/* AB7E4 800AABE4 00000000 */   nop
.L800AABE8:
/* AB7E8 800AABE8 3C04801A */  lui        $a0, %hi(D_801A3868)
/* AB7EC 800AABEC 24843868 */  addiu      $a0, $a0, %lo(D_801A3868)
/* AB7F0 800AABF0 27A5001C */  addiu      $a1, $sp, 0x1c
/* AB7F4 800AABF4 0C025D30 */  jal        func_800974C0
/* AB7F8 800AABF8 24060001 */   addiu     $a2, $zero, 1
/* AB7FC 800AABFC 10000001 */  b          .L800AAC04
/* AB800 800AAC00 00000000 */   nop
.L800AAC04:
/* AB804 800AAC04 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB808 800AAC08 27BD0020 */  addiu      $sp, $sp, 0x20
/* AB80C 800AAC0C 03E00008 */  jr         $ra
/* AB810 800AAC10 00000000 */   nop

glabel func_800AAC14
/* AB814 800AAC14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AB818 800AAC18 AFBF0014 */  sw         $ra, 0x14($sp)
/* AB81C 800AAC1C 3C04801A */  lui        $a0, %hi(D_801A3868)
/* AB820 800AAC20 24843868 */  addiu      $a0, $a0, %lo(D_801A3868)
/* AB824 800AAC24 00002825 */  or         $a1, $zero, $zero
/* AB828 800AAC28 0C025C40 */  jal        func_80097100
/* AB82C 800AAC2C 00003025 */   or        $a2, $zero, $zero
/* AB830 800AAC30 10000001 */  b          .L800AAC38
/* AB834 800AAC34 00000000 */   nop
.L800AAC38:
/* AB838 800AAC38 8FBF0014 */  lw         $ra, 0x14($sp)
/* AB83C 800AAC3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* AB840 800AAC40 03E00008 */  jr         $ra
/* AB844 800AAC44 00000000 */   nop
/* AB848 800AAC48 00000000 */  nop
/* AB84C 800AAC4C 00000000 */  nop

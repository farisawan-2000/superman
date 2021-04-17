.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AD0B0
/* ADCB0 800AD0B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ADCB4 800AD0B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* ADCB8 800AD0B8 AFA40018 */  sw         $a0, 0x18($sp)
/* ADCBC 800AD0BC AFA5001C */  sw         $a1, 0x1c($sp)
/* ADCC0 800AD0C0 AFA60020 */  sw         $a2, 0x20($sp)
/* ADCC4 800AD0C4 8FAE0020 */  lw         $t6, 0x20($sp)
/* ADCC8 800AD0C8 1DC00007 */  bgtz       $t6, .L800AD0E8
/* ADCCC 800AD0CC 00000000 */   nop
/* ADCD0 800AD0D0 24040005 */  addiu      $a0, $zero, 5
/* ADCD4 800AD0D4 24050001 */  addiu      $a1, $zero, 1
/* ADCD8 800AD0D8 0C02B5EC */  jal        func_800AD7B0
/* ADCDC 800AD0DC 8FA60020 */   lw        $a2, 0x20($sp)
/* ADCE0 800AD0E0 10000015 */  b          .L800AD138
/* ADCE4 800AD0E4 00000000 */   nop
.L800AD0E8:
/* ADCE8 800AD0E8 8FB80018 */  lw         $t8, 0x18($sp)
/* ADCEC 800AD0EC 3C0F800D */  lui        $t7, %hi(D_800CC250)
/* ADCF0 800AD0F0 25EFC250 */  addiu      $t7, $t7, %lo(D_800CC250)
/* ADCF4 800AD0F4 AF0F0000 */  sw         $t7, ($t8)
/* ADCF8 800AD0F8 8FA80018 */  lw         $t0, 0x18($sp)
/* ADCFC 800AD0FC 3C19800D */  lui        $t9, %hi(D_800CC250)
/* ADD00 800AD100 2739C250 */  addiu      $t9, $t9, %lo(D_800CC250)
/* ADD04 800AD104 AD190004 */  sw         $t9, 4($t0)
/* ADD08 800AD108 8FA90018 */  lw         $t1, 0x18($sp)
/* ADD0C 800AD10C AD200008 */  sw         $zero, 8($t1)
/* ADD10 800AD110 8FAA0018 */  lw         $t2, 0x18($sp)
/* ADD14 800AD114 AD40000C */  sw         $zero, 0xc($t2)
/* ADD18 800AD118 8FAB0020 */  lw         $t3, 0x20($sp)
/* ADD1C 800AD11C 8FAC0018 */  lw         $t4, 0x18($sp)
/* ADD20 800AD120 AD8B0010 */  sw         $t3, 0x10($t4)
/* ADD24 800AD124 8FAD001C */  lw         $t5, 0x1c($sp)
/* ADD28 800AD128 8FAE0018 */  lw         $t6, 0x18($sp)
/* ADD2C 800AD12C ADCD0014 */  sw         $t5, 0x14($t6)
/* ADD30 800AD130 10000001 */  b          .L800AD138
/* ADD34 800AD134 00000000 */   nop
.L800AD138:
/* ADD38 800AD138 8FBF0014 */  lw         $ra, 0x14($sp)
/* ADD3C 800AD13C 27BD0018 */  addiu      $sp, $sp, 0x18
/* ADD40 800AD140 03E00008 */  jr         $ra
/* ADD44 800AD144 00000000 */   nop
/* ADD48 800AD148 00000000 */  nop
/* ADD4C 800AD14C 00000000 */  nop

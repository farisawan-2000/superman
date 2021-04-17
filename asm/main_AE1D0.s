.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AD5D0
/* AE1D0 800AD5D0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* AE1D4 800AD5D4 AFBF001C */  sw         $ra, 0x1c($sp)
/* AE1D8 800AD5D8 AFA40040 */  sw         $a0, 0x40($sp)
/* AE1DC 800AD5DC AFA50044 */  sw         $a1, 0x44($sp)
/* AE1E0 800AD5E0 AFA60048 */  sw         $a2, 0x48($sp)
/* AE1E4 800AD5E4 AFA7004C */  sw         $a3, 0x4c($sp)
/* AE1E8 800AD5E8 8FAE0050 */  lw         $t6, 0x50($sp)
/* AE1EC 800AD5EC AFAE003C */  sw         $t6, 0x3c($sp)
/* AE1F0 800AD5F0 8FAF0040 */  lw         $t7, 0x40($sp)
/* AE1F4 800AD5F4 AFAF0038 */  sw         $t7, 0x38($sp)
/* AE1F8 800AD5F8 8FB80038 */  lw         $t8, 0x38($sp)
/* AE1FC 800AD5FC 8F190000 */  lw         $t9, ($t8)
/* AE200 800AD600 AFB90034 */  sw         $t9, 0x34($sp)
/* AE204 800AD604 8FA80038 */  lw         $t0, 0x38($sp)
/* AE208 800AD608 8D090000 */  lw         $t1, ($t0)
/* AE20C 800AD60C 11200003 */  beqz       $t1, .L800AD61C
/* AE210 800AD610 00000000 */   nop
/* AE214 800AD614 10000007 */  b          .L800AD634
/* AE218 800AD618 00000000 */   nop
.L800AD61C:
/* AE21C 800AD61C 3C04800D */  lui        $a0, %hi(D_800D35E0)
/* AE220 800AD620 3C05800D */  lui        $a1, %hi(D_800D35F4)
/* AE224 800AD624 24A535F4 */  addiu      $a1, $a1, %lo(D_800D35F4)
/* AE228 800AD628 248435E0 */  addiu      $a0, $a0, %lo(D_800D35E0)
/* AE22C 800AD62C 0C02C480 */  jal        func_800B1200
/* AE230 800AD630 24060022 */   addiu     $a2, $zero, 0x22
.L800AD634:
/* AE234 800AD634 8FAB003C */  lw         $t3, 0x3c($sp)
/* AE238 800AD638 8FAA0034 */  lw         $t2, 0x34($sp)
/* AE23C 800AD63C 8FA50044 */  lw         $a1, 0x44($sp)
/* AE240 800AD640 AFAB0010 */  sw         $t3, 0x10($sp)
/* AE244 800AD644 8D590004 */  lw         $t9, 4($t2)
/* AE248 800AD648 8FA60048 */  lw         $a2, 0x48($sp)
/* AE24C 800AD64C 8FA7004C */  lw         $a3, 0x4c($sp)
/* AE250 800AD650 0320F809 */  jalr       $t9
/* AE254 800AD654 01402025 */   or        $a0, $t2, $zero
/* AE258 800AD658 AFA2003C */  sw         $v0, 0x3c($sp)
/* AE25C 800AD65C 8FAC003C */  lw         $t4, 0x3c($sp)
/* AE260 800AD660 258D0008 */  addiu      $t5, $t4, 8
/* AE264 800AD664 AFAD003C */  sw         $t5, 0x3c($sp)
/* AE268 800AD668 AFAC0030 */  sw         $t4, 0x30($sp)
/* AE26C 800AD66C 8FAF0030 */  lw         $t7, 0x30($sp)
/* AE270 800AD670 3C0E0800 */  lui        $t6, 0x800
/* AE274 800AD674 ADEE0000 */  sw         $t6, ($t7)
/* AE278 800AD678 8FB80048 */  lw         $t8, 0x48($sp)
/* AE27C 800AD67C 8FAB0030 */  lw         $t3, 0x30($sp)
/* AE280 800AD680 00184040 */  sll        $t0, $t8, 1
/* AE284 800AD684 3109FFFF */  andi       $t1, $t0, 0xffff
/* AE288 800AD688 AD690004 */  sw         $t1, 4($t3)
/* AE28C 800AD68C 8FAA003C */  lw         $t2, 0x3c($sp)
/* AE290 800AD690 25590008 */  addiu      $t9, $t2, 8
/* AE294 800AD694 AFB9003C */  sw         $t9, 0x3c($sp)
/* AE298 800AD698 AFAA002C */  sw         $t2, 0x2c($sp)
/* AE29C 800AD69C 8FAD002C */  lw         $t5, 0x2c($sp)
/* AE2A0 800AD6A0 3C0C0D00 */  lui        $t4, 0xd00
/* AE2A4 800AD6A4 ADAC0000 */  sw         $t4, ($t5)
/* AE2A8 800AD6A8 8FAF002C */  lw         $t7, 0x2c($sp)
/* AE2AC 800AD6AC 3C0E0440 */  lui        $t6, 0x440
/* AE2B0 800AD6B0 35CE0580 */  ori        $t6, $t6, 0x580
/* AE2B4 800AD6B4 ADEE0004 */  sw         $t6, 4($t7)
/* AE2B8 800AD6B8 8FB8003C */  lw         $t8, 0x3c($sp)
/* AE2BC 800AD6BC 27080008 */  addiu      $t0, $t8, 8
/* AE2C0 800AD6C0 AFA8003C */  sw         $t0, 0x3c($sp)
/* AE2C4 800AD6C4 AFB80028 */  sw         $t8, 0x28($sp)
/* AE2C8 800AD6C8 8FAB0028 */  lw         $t3, 0x28($sp)
/* AE2CC 800AD6CC 3C090800 */  lui        $t1, 0x800
/* AE2D0 800AD6D0 AD690000 */  sw         $t1, ($t3)
/* AE2D4 800AD6D4 8FAA0048 */  lw         $t2, 0x48($sp)
/* AE2D8 800AD6D8 8FAD0028 */  lw         $t5, 0x28($sp)
/* AE2DC 800AD6DC 000AC880 */  sll        $t9, $t2, 2
/* AE2E0 800AD6E0 332CFFFF */  andi       $t4, $t9, 0xffff
/* AE2E4 800AD6E4 ADAC0004 */  sw         $t4, 4($t5)
/* AE2E8 800AD6E8 8FAE003C */  lw         $t6, 0x3c($sp)
/* AE2EC 800AD6EC 25CF0008 */  addiu      $t7, $t6, 8
/* AE2F0 800AD6F0 AFAF003C */  sw         $t7, 0x3c($sp)
/* AE2F4 800AD6F4 AFAE0024 */  sw         $t6, 0x24($sp)
/* AE2F8 800AD6F8 8FA80024 */  lw         $t0, 0x24($sp)
/* AE2FC 800AD6FC 3C180600 */  lui        $t8, 0x600
/* AE300 800AD700 AD180000 */  sw         $t8, ($t0)
/* AE304 800AD704 8FA90038 */  lw         $t1, 0x38($sp)
/* AE308 800AD708 8FAA0024 */  lw         $t2, 0x24($sp)
/* AE30C 800AD70C 8D2B0014 */  lw         $t3, 0x14($t1)
/* AE310 800AD710 AD4B0004 */  sw         $t3, 4($t2)
/* AE314 800AD714 10000003 */  b          .L800AD724
/* AE318 800AD718 8FA2003C */   lw        $v0, 0x3c($sp)
/* AE31C 800AD71C 10000001 */  b          .L800AD724
/* AE320 800AD720 00000000 */   nop
.L800AD724:
/* AE324 800AD724 8FBF001C */  lw         $ra, 0x1c($sp)
/* AE328 800AD728 27BD0040 */  addiu      $sp, $sp, 0x40
/* AE32C 800AD72C 03E00008 */  jr         $ra
/* AE330 800AD730 00000000 */   nop

glabel func_800AD734
/* AE334 800AD734 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* AE338 800AD738 AFA4000C */  sw         $a0, 0xc($sp)
/* AE33C 800AD73C AFA40008 */  sw         $a0, 8($sp)
/* AE340 800AD740 AFA60004 */  sw         $a2, 4($sp)
/* AE344 800AD744 00A03825 */  or         $a3, $a1, $zero
/* AE348 800AD748 24010001 */  addiu      $at, $zero, 1
/* AE34C 800AD74C 10E10006 */  beq        $a3, $at, .L800AD768
/* AE350 800AD750 00000000 */   nop
/* AE354 800AD754 24010006 */  addiu      $at, $zero, 6
/* AE358 800AD758 10E10007 */  beq        $a3, $at, .L800AD778
/* AE35C 800AD75C 00000000 */   nop
/* AE360 800AD760 1000000A */  b          .L800AD78C
/* AE364 800AD764 00000000 */   nop
.L800AD768:
/* AE368 800AD768 8FAE0008 */  lw         $t6, 8($sp)
/* AE36C 800AD76C ADC60000 */  sw         $a2, ($t6)
/* AE370 800AD770 10000008 */  b          .L800AD794
/* AE374 800AD774 00000000 */   nop
.L800AD778:
/* AE378 800AD778 8FAF0004 */  lw         $t7, 4($sp)
/* AE37C 800AD77C 8FB8000C */  lw         $t8, 0xc($sp)
/* AE380 800AD780 AF0F0014 */  sw         $t7, 0x14($t8)
/* AE384 800AD784 10000003 */  b          .L800AD794
/* AE388 800AD788 00000000 */   nop
.L800AD78C:
/* AE38C 800AD78C 10000001 */  b          .L800AD794
/* AE390 800AD790 00000000 */   nop
.L800AD794:
/* AE394 800AD794 10000003 */  b          .L800AD7A4
/* AE398 800AD798 00001025 */   or        $v0, $zero, $zero
/* AE39C 800AD79C 10000001 */  b          .L800AD7A4
/* AE3A0 800AD7A0 00000000 */   nop
.L800AD7A4:
/* AE3A4 800AD7A4 03E00008 */  jr         $ra
/* AE3A8 800AD7A8 27BD0010 */   addiu     $sp, $sp, 0x10
/* AE3AC 800AD7AC 00000000 */  nop

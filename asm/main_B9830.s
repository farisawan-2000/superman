.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B8C30
/* B9830 800B8C30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* B9834 800B8C34 AFBF001C */  sw         $ra, 0x1c($sp)
/* B9838 800B8C38 AFA40028 */  sw         $a0, 0x28($sp)
/* B983C 800B8C3C AFA60030 */  sw         $a2, 0x30($sp)
/* B9840 800B8C40 AFA70034 */  sw         $a3, 0x34($sp)
/* B9844 800B8C44 AFB00018 */  sw         $s0, 0x18($sp)
/* B9848 800B8C48 8FAE0028 */  lw         $t6, 0x28($sp)
/* B984C 800B8C4C 31CF0007 */  andi       $t7, $t6, 7
/* B9850 800B8C50 11E00007 */  beqz       $t7, .L800B8C70
/* B9854 800B8C54 00000000 */   nop
/* B9858 800B8C58 24040011 */  addiu      $a0, $zero, 0x11
/* B985C 800B8C5C 24050001 */  addiu      $a1, $zero, 1
/* B9860 800B8C60 0C02B5EC */  jal        func_800AD7B0
/* B9864 800B8C64 8FA60028 */   lw        $a2, 0x28($sp)
/* B9868 800B8C68 10000036 */  b          .L800B8D44
/* B986C 800B8C6C 2402FFFF */   addiu     $v0, $zero, -1
.L800B8C70:
/* B9870 800B8C70 8FB90034 */  lw         $t9, 0x34($sp)
/* B9874 800B8C74 00004025 */  or         $t0, $zero, $zero
/* B9878 800B8C78 8FB80030 */  lw         $t8, 0x30($sp)
/* B987C 800B8C7C 15000003 */  bnez       $t0, .L800B8C8C
/* B9880 800B8C80 33290007 */   andi      $t1, $t9, 7
/* B9884 800B8C84 11200008 */  beqz       $t1, .L800B8CA8
/* B9888 800B8C88 00000000 */   nop
.L800B8C8C:
/* B988C 800B8C8C 24040012 */  addiu      $a0, $zero, 0x12
/* B9890 800B8C90 24050001 */  addiu      $a1, $zero, 1
/* B9894 800B8C94 8FA60030 */  lw         $a2, 0x30($sp)
/* B9898 800B8C98 0C02B5EC */  jal        func_800AD7B0
/* B989C 800B8C9C 8FA70034 */   lw        $a3, 0x34($sp)
/* B98A0 800B8CA0 10000028 */  b          .L800B8D44
/* B98A4 800B8CA4 2402FFFF */   addiu     $v0, $zero, -1
.L800B8CA8:
/* B98A8 800B8CA8 0C02E358 */  jal        func_800B8D60
/* B98AC 800B8CAC 00000000 */   nop
/* B98B0 800B8CB0 10400003 */  beqz       $v0, .L800B8CC0
/* B98B4 800B8CB4 00000000 */   nop
/* B98B8 800B8CB8 10000022 */  b          .L800B8D44
/* B98BC 800B8CBC 2402FFFF */   addiu     $v0, $zero, -1
.L800B8CC0:
/* B98C0 800B8CC0 240A0001 */  addiu      $t2, $zero, 1
/* B98C4 800B8CC4 3C0BA410 */  lui        $t3, %hi(D_A410000C)
/* B98C8 800B8CC8 AD6A000C */  sw         $t2, %lo(D_A410000C)($t3)
.L800B8CCC:
/* B98CC 800B8CCC 3C0CA410 */  lui        $t4, %hi(D_A410000C)
/* B98D0 800B8CD0 8D90000C */  lw         $s0, %lo(D_A410000C)($t4)
/* B98D4 800B8CD4 320D0001 */  andi       $t5, $s0, 1
/* B98D8 800B8CD8 15A00003 */  bnez       $t5, .L800B8CE8
/* B98DC 800B8CDC 00000000 */   nop
/* B98E0 800B8CE0 10000003 */  b          .L800B8CF0
/* B98E4 800B8CE4 00000000 */   nop
.L800B8CE8:
/* B98E8 800B8CE8 1000FFF8 */  b          .L800B8CCC
/* B98EC 800B8CEC 00000000 */   nop
.L800B8CF0:
/* B98F0 800B8CF0 0C027C0C */  jal        func_8009F030
/* B98F4 800B8CF4 8FA40028 */   lw        $a0, 0x28($sp)
/* B98F8 800B8CF8 3C0EA410 */  lui        $t6, 0xa410
/* B98FC 800B8CFC ADC20000 */  sw         $v0, ($t6)
/* B9900 800B8D00 0C027C0C */  jal        func_8009F030
/* B9904 800B8D04 8FA40028 */   lw        $a0, 0x28($sp)
/* B9908 800B8D08 8FA90034 */  lw         $t1, 0x34($sp)
/* B990C 800B8D0C 0040C825 */  or         $t9, $v0, $zero
/* B9910 800B8D10 8FA80030 */  lw         $t0, 0x30($sp)
/* B9914 800B8D14 03295821 */  addu       $t3, $t9, $t1
/* B9918 800B8D18 24180000 */  addiu      $t8, $zero, 0
/* B991C 800B8D1C 0169082B */  sltu       $at, $t3, $t1
/* B9920 800B8D20 00385021 */  addu       $t2, $at, $t8
/* B9924 800B8D24 01607825 */  or         $t7, $t3, $zero
/* B9928 800B8D28 3C0CA410 */  lui        $t4, %hi(D_A4100004)
/* B992C 800B8D2C AD8F0004 */  sw         $t7, %lo(D_A4100004)($t4)
/* B9930 800B8D30 01485021 */  addu       $t2, $t2, $t0
/* B9934 800B8D34 10000003 */  b          .L800B8D44
/* B9938 800B8D38 00001025 */   or        $v0, $zero, $zero
/* B993C 800B8D3C 10000001 */  b          .L800B8D44
/* B9940 800B8D40 00000000 */   nop
.L800B8D44:
/* B9944 800B8D44 8FBF001C */  lw         $ra, 0x1c($sp)
/* B9948 800B8D48 8FB00018 */  lw         $s0, 0x18($sp)
/* B994C 800B8D4C 27BD0028 */  addiu      $sp, $sp, 0x28
/* B9950 800B8D50 03E00008 */  jr         $ra
/* B9954 800B8D54 00000000 */   nop
/* B9958 800B8D58 00000000 */  nop
/* B995C 800B8D5C 00000000 */  nop

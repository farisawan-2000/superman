.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800BD560
/* BE160 800BD560 27BDFFF8 */  addiu      $sp, $sp, -8
/* BE164 800BD564 848E0000 */  lh         $t6, ($a0)
/* BE168 800BD568 24010001 */  addiu      $at, $zero, 1
/* BE16C 800BD56C 15C10025 */  bne        $t6, $at, .L800BD604
/* BE170 800BD570 00000000 */   nop
/* BE174 800BD574 C4840004 */  lwc1       $f4, 4($a0)
/* BE178 800BD578 C4860010 */  lwc1       $f6, 0x10($a0)
/* BE17C 800BD57C 4604303C */  c.lt.s     $f6, $f4
/* BE180 800BD580 00000000 */  nop
/* BE184 800BD584 45000007 */  bc1f       .L800BD5A4
/* BE188 800BD588 00000000 */   nop
/* BE18C 800BD58C C4880004 */  lwc1       $f8, 4($a0)
/* BE190 800BD590 E7A80004 */  swc1       $f8, 4($sp)
/* BE194 800BD594 C48A0010 */  lwc1       $f10, 0x10($a0)
/* BE198 800BD598 E48A0004 */  swc1       $f10, 4($a0)
/* BE19C 800BD59C C7B00004 */  lwc1       $f16, 4($sp)
/* BE1A0 800BD5A0 E4900010 */  swc1       $f16, 0x10($a0)
.L800BD5A4:
/* BE1A4 800BD5A4 C4920008 */  lwc1       $f18, 8($a0)
/* BE1A8 800BD5A8 C4840014 */  lwc1       $f4, 0x14($a0)
/* BE1AC 800BD5AC 4612203C */  c.lt.s     $f4, $f18
/* BE1B0 800BD5B0 00000000 */  nop
/* BE1B4 800BD5B4 45000007 */  bc1f       .L800BD5D4
/* BE1B8 800BD5B8 00000000 */   nop
/* BE1BC 800BD5BC C4860008 */  lwc1       $f6, 8($a0)
/* BE1C0 800BD5C0 E7A60004 */  swc1       $f6, 4($sp)
/* BE1C4 800BD5C4 C4880014 */  lwc1       $f8, 0x14($a0)
/* BE1C8 800BD5C8 E4880008 */  swc1       $f8, 8($a0)
/* BE1CC 800BD5CC C7AA0004 */  lwc1       $f10, 4($sp)
/* BE1D0 800BD5D0 E48A0014 */  swc1       $f10, 0x14($a0)
.L800BD5D4:
/* BE1D4 800BD5D4 C490000C */  lwc1       $f16, 0xc($a0)
/* BE1D8 800BD5D8 C4920018 */  lwc1       $f18, 0x18($a0)
/* BE1DC 800BD5DC 4610903C */  c.lt.s     $f18, $f16
/* BE1E0 800BD5E0 00000000 */  nop
/* BE1E4 800BD5E4 45000007 */  bc1f       .L800BD604
/* BE1E8 800BD5E8 00000000 */   nop
/* BE1EC 800BD5EC C484000C */  lwc1       $f4, 0xc($a0)
/* BE1F0 800BD5F0 E7A40004 */  swc1       $f4, 4($sp)
/* BE1F4 800BD5F4 C4860018 */  lwc1       $f6, 0x18($a0)
/* BE1F8 800BD5F8 E486000C */  swc1       $f6, 0xc($a0)
/* BE1FC 800BD5FC C7A80004 */  lwc1       $f8, 4($sp)
/* BE200 800BD600 E4880018 */  swc1       $f8, 0x18($a0)
.L800BD604:
/* BE204 800BD604 03E00008 */  jr         $ra
/* BE208 800BD608 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800BD60C
/* BE20C 800BD60C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* BE210 800BD610 AFBF001C */  sw         $ra, 0x1c($sp)
/* BE214 800BD614 AFA40028 */  sw         $a0, 0x28($sp)
/* BE218 800BD618 AFA5002C */  sw         $a1, 0x2c($sp)
/* BE21C 800BD61C AFB00018 */  sw         $s0, 0x18($sp)
/* BE220 800BD620 8FAE0028 */  lw         $t6, 0x28($sp)
/* BE224 800BD624 A7A00026 */  sh         $zero, 0x26($sp)
/* BE228 800BD628 24010001 */  addiu      $at, $zero, 1
/* BE22C 800BD62C 85D00000 */  lh         $s0, ($t6)
/* BE230 800BD630 1201000E */  beq        $s0, $at, .L800BD66C
/* BE234 800BD634 24010002 */   addiu     $at, $zero, 2
/* BE238 800BD638 1601007E */  bne        $s0, $at, .L800BD834
/* BE23C 800BD63C 00000000 */   nop
/* BE240 800BD640 8FB90028 */  lw         $t9, 0x28($sp)
/* BE244 800BD644 240FFFFF */  addiu      $t7, $zero, -1
/* BE248 800BD648 A7AF0026 */  sh         $t7, 0x26($sp)
/* BE24C 800BD64C 8FB8002C */  lw         $t8, 0x2c($sp)
/* BE250 800BD650 8F290004 */  lw         $t1, 4($t9)
/* BE254 800BD654 AF090000 */  sw         $t1, ($t8)
/* BE258 800BD658 8F280008 */  lw         $t0, 8($t9)
/* BE25C 800BD65C AF080004 */  sw         $t0, 4($t8)
/* BE260 800BD660 8F29000C */  lw         $t1, 0xc($t9)
/* BE264 800BD664 10000073 */  b          .L800BD834
/* BE268 800BD668 AF090008 */   sw        $t1, 8($t8)
.L800BD66C:
/* BE26C 800BD66C 3C0A8016 */  lui        $t2, %hi(D_8015EB1C)
/* BE270 800BD670 254AEB1C */  addiu      $t2, $t2, %lo(D_8015EB1C)
/* BE274 800BD674 C5440038 */  lwc1       $f4, 0x38($t2)
/* BE278 800BD678 8FAB002C */  lw         $t3, 0x2c($sp)
/* BE27C 800BD67C 3C0C8016 */  lui        $t4, %hi(D_8015EB1C)
/* BE280 800BD680 258CEB1C */  addiu      $t4, $t4, %lo(D_8015EB1C)
/* BE284 800BD684 E5640000 */  swc1       $f4, ($t3)
/* BE288 800BD688 8FAD002C */  lw         $t5, 0x2c($sp)
/* BE28C 800BD68C C586003C */  lwc1       $f6, 0x3c($t4)
/* BE290 800BD690 3C0E8016 */  lui        $t6, %hi(D_8015EB1C)
/* BE294 800BD694 25CEEB1C */  addiu      $t6, $t6, %lo(D_8015EB1C)
/* BE298 800BD698 E5A60004 */  swc1       $f6, 4($t5)
/* BE29C 800BD69C 8FAF002C */  lw         $t7, 0x2c($sp)
/* BE2A0 800BD6A0 C5C80040 */  lwc1       $f8, 0x40($t6)
/* BE2A4 800BD6A4 3C188016 */  lui        $t8, %hi(D_8015EB1C)
/* BE2A8 800BD6A8 2718EB1C */  addiu      $t8, $t8, %lo(D_8015EB1C)
/* BE2AC 800BD6AC E5E80008 */  swc1       $f8, 8($t7)
/* BE2B0 800BD6B0 8FB90028 */  lw         $t9, 0x28($sp)
/* BE2B4 800BD6B4 C70A0038 */  lwc1       $f10, 0x38($t8)
/* BE2B8 800BD6B8 C7300004 */  lwc1       $f16, 4($t9)
/* BE2BC 800BD6BC 4610503C */  c.lt.s     $f10, $f16
/* BE2C0 800BD6C0 00000000 */  nop
/* BE2C4 800BD6C4 45000006 */  bc1f       .L800BD6E0
/* BE2C8 800BD6C8 00000000 */   nop
/* BE2CC 800BD6CC 24080001 */  addiu      $t0, $zero, 1
/* BE2D0 800BD6D0 A7A80026 */  sh         $t0, 0x26($sp)
/* BE2D4 800BD6D4 C7320004 */  lwc1       $f18, 4($t9)
/* BE2D8 800BD6D8 8FA9002C */  lw         $t1, 0x2c($sp)
/* BE2DC 800BD6DC E5320000 */  swc1       $f18, ($t1)
.L800BD6E0:
/* BE2E0 800BD6E0 8FAB0028 */  lw         $t3, 0x28($sp)
/* BE2E4 800BD6E4 3C0A8016 */  lui        $t2, %hi(D_8015EB1C)
/* BE2E8 800BD6E8 254AEB1C */  addiu      $t2, $t2, %lo(D_8015EB1C)
/* BE2EC 800BD6EC C5440038 */  lwc1       $f4, 0x38($t2)
/* BE2F0 800BD6F0 C5660010 */  lwc1       $f6, 0x10($t3)
/* BE2F4 800BD6F4 4604303C */  c.lt.s     $f6, $f4
/* BE2F8 800BD6F8 00000000 */  nop
/* BE2FC 800BD6FC 45000007 */  bc1f       .L800BD71C
/* BE300 800BD700 00000000 */   nop
/* BE304 800BD704 87AC0026 */  lh         $t4, 0x26($sp)
/* BE308 800BD708 8FAE002C */  lw         $t6, 0x2c($sp)
/* BE30C 800BD70C 358D0002 */  ori        $t5, $t4, 2
/* BE310 800BD710 A7AD0026 */  sh         $t5, 0x26($sp)
/* BE314 800BD714 C5680010 */  lwc1       $f8, 0x10($t3)
/* BE318 800BD718 E5C80000 */  swc1       $f8, ($t6)
.L800BD71C:
/* BE31C 800BD71C 8FB80028 */  lw         $t8, 0x28($sp)
/* BE320 800BD720 3C0F8016 */  lui        $t7, %hi(D_8015EB1C)
/* BE324 800BD724 25EFEB1C */  addiu      $t7, $t7, %lo(D_8015EB1C)
/* BE328 800BD728 C5EA003C */  lwc1       $f10, 0x3c($t7)
/* BE32C 800BD72C C7100008 */  lwc1       $f16, 8($t8)
/* BE330 800BD730 4610503C */  c.lt.s     $f10, $f16
/* BE334 800BD734 00000000 */  nop
/* BE338 800BD738 45000007 */  bc1f       .L800BD758
/* BE33C 800BD73C 00000000 */   nop
/* BE340 800BD740 87A80026 */  lh         $t0, 0x26($sp)
/* BE344 800BD744 8FA9002C */  lw         $t1, 0x2c($sp)
/* BE348 800BD748 35190004 */  ori        $t9, $t0, 4
/* BE34C 800BD74C A7B90026 */  sh         $t9, 0x26($sp)
/* BE350 800BD750 C7120008 */  lwc1       $f18, 8($t8)
/* BE354 800BD754 E5320004 */  swc1       $f18, 4($t1)
.L800BD758:
/* BE358 800BD758 8FAC0028 */  lw         $t4, 0x28($sp)
/* BE35C 800BD75C 3C0A8016 */  lui        $t2, %hi(D_8015EB1C)
/* BE360 800BD760 254AEB1C */  addiu      $t2, $t2, %lo(D_8015EB1C)
/* BE364 800BD764 C544003C */  lwc1       $f4, 0x3c($t2)
/* BE368 800BD768 C5860014 */  lwc1       $f6, 0x14($t4)
/* BE36C 800BD76C 4604303C */  c.lt.s     $f6, $f4
/* BE370 800BD770 00000000 */  nop
/* BE374 800BD774 45000007 */  bc1f       .L800BD794
/* BE378 800BD778 00000000 */   nop
/* BE37C 800BD77C 87AD0026 */  lh         $t5, 0x26($sp)
/* BE380 800BD780 8FAE002C */  lw         $t6, 0x2c($sp)
/* BE384 800BD784 35AB0008 */  ori        $t3, $t5, 8
/* BE388 800BD788 A7AB0026 */  sh         $t3, 0x26($sp)
/* BE38C 800BD78C C5880014 */  lwc1       $f8, 0x14($t4)
/* BE390 800BD790 E5C80004 */  swc1       $f8, 4($t6)
.L800BD794:
/* BE394 800BD794 8FA80028 */  lw         $t0, 0x28($sp)
/* BE398 800BD798 3C0F8016 */  lui        $t7, %hi(D_8015EB1C)
/* BE39C 800BD79C 25EFEB1C */  addiu      $t7, $t7, %lo(D_8015EB1C)
/* BE3A0 800BD7A0 C5EA0040 */  lwc1       $f10, 0x40($t7)
/* BE3A4 800BD7A4 C510000C */  lwc1       $f16, 0xc($t0)
/* BE3A8 800BD7A8 4610503C */  c.lt.s     $f10, $f16
/* BE3AC 800BD7AC 00000000 */  nop
/* BE3B0 800BD7B0 45000007 */  bc1f       .L800BD7D0
/* BE3B4 800BD7B4 00000000 */   nop
/* BE3B8 800BD7B8 87B90026 */  lh         $t9, 0x26($sp)
/* BE3BC 800BD7BC 8FA9002C */  lw         $t1, 0x2c($sp)
/* BE3C0 800BD7C0 37380010 */  ori        $t8, $t9, 0x10
/* BE3C4 800BD7C4 A7B80026 */  sh         $t8, 0x26($sp)
/* BE3C8 800BD7C8 C512000C */  lwc1       $f18, 0xc($t0)
/* BE3CC 800BD7CC E5320008 */  swc1       $f18, 8($t1)
.L800BD7D0:
/* BE3D0 800BD7D0 8FAD0028 */  lw         $t5, 0x28($sp)
/* BE3D4 800BD7D4 3C0A8016 */  lui        $t2, %hi(D_8015EB1C)
/* BE3D8 800BD7D8 254AEB1C */  addiu      $t2, $t2, %lo(D_8015EB1C)
/* BE3DC 800BD7DC C5440040 */  lwc1       $f4, 0x40($t2)
/* BE3E0 800BD7E0 C5A60018 */  lwc1       $f6, 0x18($t5)
/* BE3E4 800BD7E4 4604303C */  c.lt.s     $f6, $f4
/* BE3E8 800BD7E8 00000000 */  nop
/* BE3EC 800BD7EC 45000007 */  bc1f       .L800BD80C
/* BE3F0 800BD7F0 00000000 */   nop
/* BE3F4 800BD7F4 87AB0026 */  lh         $t3, 0x26($sp)
/* BE3F8 800BD7F8 8FAE002C */  lw         $t6, 0x2c($sp)
/* BE3FC 800BD7FC 356C0020 */  ori        $t4, $t3, 0x20
/* BE400 800BD800 A7AC0026 */  sh         $t4, 0x26($sp)
/* BE404 800BD804 C5A80018 */  lwc1       $f8, 0x18($t5)
/* BE408 800BD808 E5C80008 */  swc1       $f8, 8($t6)
.L800BD80C:
/* BE40C 800BD80C 8FAF0028 */  lw         $t7, 0x28($sp)
/* BE410 800BD810 85F9001C */  lh         $t9, 0x1c($t7)
/* BE414 800BD814 13200007 */  beqz       $t9, .L800BD834
/* BE418 800BD818 00000000 */   nop
/* BE41C 800BD81C 87B80026 */  lh         $t8, 0x26($sp)
/* BE420 800BD820 17000004 */  bnez       $t8, .L800BD834
/* BE424 800BD824 00000000 */   nop
/* BE428 800BD828 24080001 */  addiu      $t0, $zero, 1
/* BE42C 800BD82C 3C018014 */  lui        $at, %hi(D_801443DA)
/* BE430 800BD830 A42843DA */  sh         $t0, %lo(D_801443DA)($at)
.L800BD834:
/* BE434 800BD834 87A90026 */  lh         $t1, 0x26($sp)
/* BE438 800BD838 8FAA0028 */  lw         $t2, 0x28($sp)
/* BE43C 800BD83C A549001E */  sh         $t1, 0x1e($t2)
/* BE440 800BD840 87AB0026 */  lh         $t3, 0x26($sp)
/* BE444 800BD844 15600004 */  bnez       $t3, .L800BD858
/* BE448 800BD848 00000000 */   nop
/* BE44C 800BD84C 44800000 */  mtc1       $zero, $f0
/* BE450 800BD850 10000010 */  b          .L800BD894
/* BE454 800BD854 00000000 */   nop
.L800BD858:
/* BE458 800BD858 8FAD002C */  lw         $t5, 0x2c($sp)
/* BE45C 800BD85C 3C0C8016 */  lui        $t4, %hi(D_8015EB1C)
/* BE460 800BD860 258CEB1C */  addiu      $t4, $t4, %lo(D_8015EB1C)
/* BE464 800BD864 C58A0038 */  lwc1       $f10, 0x38($t4)
/* BE468 800BD868 C5B00000 */  lwc1       $f16, ($t5)
/* BE46C 800BD86C C5860040 */  lwc1       $f6, 0x40($t4)
/* BE470 800BD870 C5A80008 */  lwc1       $f8, 8($t5)
/* BE474 800BD874 46105301 */  sub.s      $f12, $f10, $f16
/* BE478 800BD878 C592003C */  lwc1       $f18, 0x3c($t4)
/* BE47C 800BD87C C5A40004 */  lwc1       $f4, 4($t5)
/* BE480 800BD880 46083281 */  sub.s      $f10, $f6, $f8
/* BE484 800BD884 46049381 */  sub.s      $f14, $f18, $f4
/* BE488 800BD888 44065000 */  mfc1       $a2, $f10
/* BE48C 800BD88C 0C016916 */  jal        func_8005A458
/* BE490 800BD890 00000000 */   nop
.L800BD894:
/* BE494 800BD894 8FBF001C */  lw         $ra, 0x1c($sp)
/* BE498 800BD898 8FB00018 */  lw         $s0, 0x18($sp)
/* BE49C 800BD89C 27BD0028 */  addiu      $sp, $sp, 0x28
/* BE4A0 800BD8A0 03E00008 */  jr         $ra
/* BE4A4 800BD8A4 00000000 */   nop

glabel func_800BD8A8
/* BE4A8 800BD8A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BE4AC 800BD8AC AFBF001C */  sw         $ra, 0x1c($sp)
/* BE4B0 800BD8B0 AFA40030 */  sw         $a0, 0x30($sp)
/* BE4B4 800BD8B4 AFB00018 */  sw         $s0, 0x18($sp)
/* BE4B8 800BD8B8 8FAF0030 */  lw         $t7, 0x30($sp)
/* BE4BC 800BD8BC 240E0001 */  addiu      $t6, $zero, 1
/* BE4C0 800BD8C0 3C08800E */  lui        $t0, %hi(D_800D9D90)
/* BE4C4 800BD8C4 ADEE0028 */  sw         $t6, 0x28($t7)
/* BE4C8 800BD8C8 8FB80030 */  lw         $t8, 0x30($sp)
/* BE4CC 800BD8CC 8D089D90 */  lw         $t0, %lo(D_800D9D90)($t0)
/* BE4D0 800BD8D0 240A0001 */  addiu      $t2, $zero, 1
/* BE4D4 800BD8D4 8F190014 */  lw         $t9, 0x14($t8)
/* BE4D8 800BD8D8 03280019 */  multu      $t9, $t0
/* BE4DC 800BD8DC 00004812 */  mflo       $t1
/* BE4E0 800BD8E0 AF09002C */  sw         $t1, 0x2c($t8)
/* BE4E4 800BD8E4 8FAB0030 */  lw         $t3, 0x30($sp)
/* BE4E8 800BD8E8 A56A0024 */  sh         $t2, 0x24($t3)
/* BE4EC 800BD8EC 8FAC0030 */  lw         $t4, 0x30($sp)
/* BE4F0 800BD8F0 A5800034 */  sh         $zero, 0x34($t4)
/* BE4F4 800BD8F4 8FAD0030 */  lw         $t5, 0x30($sp)
/* BE4F8 800BD8F8 ADA00030 */  sw         $zero, 0x30($t5)
/* BE4FC 800BD8FC 8FAE0030 */  lw         $t6, 0x30($sp)
/* BE500 800BD900 95CF001C */  lhu        $t7, 0x1c($t6)
/* BE504 800BD904 A7AF002E */  sh         $t7, 0x2e($sp)
/* BE508 800BD908 8DD90020 */  lw         $t9, 0x20($t6)
/* BE50C 800BD90C 01E08025 */  or         $s0, $t7, $zero
/* BE510 800BD910 25E8FFFF */  addiu      $t0, $t7, -1
/* BE514 800BD914 A7A8002E */  sh         $t0, 0x2e($sp)
/* BE518 800BD918 1200000B */  beqz       $s0, .L800BD948
/* BE51C 800BD91C AFB90028 */   sw        $t9, 0x28($sp)
.L800BD920:
/* BE520 800BD920 8FA90028 */  lw         $t1, 0x28($sp)
/* BE524 800BD924 25380024 */  addiu      $t8, $t1, 0x24
/* BE528 800BD928 AFB80028 */  sw         $t8, 0x28($sp)
/* BE52C 800BD92C 0C02F558 */  jal        func_800BD560
/* BE530 800BD930 01202025 */   or        $a0, $t1, $zero
/* BE534 800BD934 97AA002E */  lhu        $t2, 0x2e($sp)
/* BE538 800BD938 01408025 */  or         $s0, $t2, $zero
/* BE53C 800BD93C 254BFFFF */  addiu      $t3, $t2, -1
/* BE540 800BD940 1600FFF7 */  bnez       $s0, .L800BD920
/* BE544 800BD944 A7AB002E */   sh        $t3, 0x2e($sp)
.L800BD948:
/* BE548 800BD948 8FBF001C */  lw         $ra, 0x1c($sp)
/* BE54C 800BD94C 8FB00018 */  lw         $s0, 0x18($sp)
/* BE550 800BD950 27BD0030 */  addiu      $sp, $sp, 0x30
/* BE554 800BD954 03E00008 */  jr         $ra
/* BE558 800BD958 00000000 */   nop

glabel func_800BD95C
/* BE55C 800BD95C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* BE560 800BD960 AFBF001C */  sw         $ra, 0x1c($sp)
/* BE564 800BD964 AFA40060 */  sw         $a0, 0x60($sp)
/* BE568 800BD968 44802000 */  mtc1       $zero, $f4
/* BE56C 800BD96C 8FAE0060 */  lw         $t6, 0x60($sp)
/* BE570 800BD970 A7A00026 */  sh         $zero, 0x26($sp)
/* BE574 800BD974 A7A00024 */  sh         $zero, 0x24($sp)
/* BE578 800BD978 E7A40030 */  swc1       $f4, 0x30($sp)
/* BE57C 800BD97C 85CF0024 */  lh         $t7, 0x24($t6)
/* BE580 800BD980 15E0000A */  bnez       $t7, .L800BD9AC
/* BE584 800BD984 00000000 */   nop
/* BE588 800BD988 85D80034 */  lh         $t8, 0x34($t6)
/* BE58C 800BD98C 130000FE */  beqz       $t8, .L800BDD88
/* BE590 800BD990 00000000 */   nop
/* BE594 800BD994 A5C00034 */  sh         $zero, 0x34($t6)
/* BE598 800BD998 8FB90060 */  lw         $t9, 0x60($sp)
/* BE59C 800BD99C 0C000ABC */  jal        func_80002AF0
/* BE5A0 800BD9A0 8F240000 */   lw        $a0, ($t9)
/* BE5A4 800BD9A4 100000F8 */  b          .L800BDD88
/* BE5A8 800BD9A8 00000000 */   nop
.L800BD9AC:
/* BE5AC 800BD9AC 8FA80060 */  lw         $t0, 0x60($sp)
/* BE5B0 800BD9B0 9509001C */  lhu        $t1, 0x1c($t0)
/* BE5B4 800BD9B4 A7A9005E */  sh         $t1, 0x5e($sp)
/* BE5B8 800BD9B8 8D0A0020 */  lw         $t2, 0x20($t0)
/* BE5BC 800BD9BC 112000EC */  beqz       $t1, .L800BDD70
/* BE5C0 800BD9C0 AFAA0058 */   sw        $t2, 0x58($sp)
/* BE5C4 800BD9C4 01402025 */  or         $a0, $t2, $zero
/* BE5C8 800BD9C8 0C02F583 */  jal        func_800BD60C
/* BE5CC 800BD9CC 27A50040 */   addiu     $a1, $sp, 0x40
/* BE5D0 800BD9D0 8FAB0058 */  lw         $t3, 0x58($sp)
/* BE5D4 800BD9D4 E7A00038 */  swc1       $f0, 0x38($sp)
/* BE5D8 800BD9D8 856C001E */  lh         $t4, 0x1e($t3)
/* BE5DC 800BD9DC 15800003 */  bnez       $t4, .L800BD9EC
/* BE5E0 800BD9E0 00000000 */   nop
/* BE5E4 800BD9E4 240D0001 */  addiu      $t5, $zero, 1
/* BE5E8 800BD9E8 A7AD0026 */  sh         $t5, 0x26($sp)
.L800BD9EC:
/* BE5EC 800BD9EC 8FAF0058 */  lw         $t7, 0x58($sp)
/* BE5F0 800BD9F0 85F8001C */  lh         $t8, 0x1c($t7)
/* BE5F4 800BD9F4 13000003 */  beqz       $t8, .L800BDA04
/* BE5F8 800BD9F8 00000000 */   nop
/* BE5FC 800BD9FC 240E0001 */  addiu      $t6, $zero, 1
/* BE600 800BDA00 A7AE0024 */  sh         $t6, 0x24($sp)
.L800BDA04:
/* BE604 800BDA04 97A9005E */  lhu        $t1, 0x5e($sp)
/* BE608 800BDA08 8FB90058 */  lw         $t9, 0x58($sp)
/* BE60C 800BDA0C 252AFFFF */  addiu      $t2, $t1, -1
/* BE610 800BDA10 314BFFFF */  andi       $t3, $t2, 0xffff
/* BE614 800BDA14 27280024 */  addiu      $t0, $t9, 0x24
/* BE618 800BDA18 AFA80058 */  sw         $t0, 0x58($sp)
/* BE61C 800BDA1C 11600027 */  beqz       $t3, .L800BDABC
/* BE620 800BDA20 A7AA005E */   sh        $t2, 0x5e($sp)
.L800BDA24:
/* BE624 800BDA24 8FA40058 */  lw         $a0, 0x58($sp)
/* BE628 800BDA28 0C02F583 */  jal        func_800BD60C
/* BE62C 800BDA2C 27A5004C */   addiu     $a1, $sp, 0x4c
/* BE630 800BDA30 8FAC0058 */  lw         $t4, 0x58($sp)
/* BE634 800BDA34 E7A0003C */  swc1       $f0, 0x3c($sp)
/* BE638 800BDA38 858D001E */  lh         $t5, 0x1e($t4)
/* BE63C 800BDA3C 15A00003 */  bnez       $t5, .L800BDA4C
/* BE640 800BDA40 00000000 */   nop
/* BE644 800BDA44 240F0001 */  addiu      $t7, $zero, 1
/* BE648 800BDA48 A7AF0026 */  sh         $t7, 0x26($sp)
.L800BDA4C:
/* BE64C 800BDA4C 8FB80058 */  lw         $t8, 0x58($sp)
/* BE650 800BDA50 870E001C */  lh         $t6, 0x1c($t8)
/* BE654 800BDA54 11C00003 */  beqz       $t6, .L800BDA64
/* BE658 800BDA58 00000000 */   nop
/* BE65C 800BDA5C 24190001 */  addiu      $t9, $zero, 1
/* BE660 800BDA60 A7B90024 */  sh         $t9, 0x24($sp)
.L800BDA64:
/* BE664 800BDA64 C7A60038 */  lwc1       $f6, 0x38($sp)
/* BE668 800BDA68 C7A8003C */  lwc1       $f8, 0x3c($sp)
/* BE66C 800BDA6C 8FA80058 */  lw         $t0, 0x58($sp)
/* BE670 800BDA70 4606403C */  c.lt.s     $f8, $f6
/* BE674 800BDA74 25090024 */  addiu      $t1, $t0, 0x24
/* BE678 800BDA78 AFA90058 */  sw         $t1, 0x58($sp)
/* BE67C 800BDA7C 4500000A */  bc1f       .L800BDAA8
/* BE680 800BDA80 00000000 */   nop
/* BE684 800BDA84 E7A80038 */  swc1       $f8, 0x38($sp)
/* BE688 800BDA88 27AB004C */  addiu      $t3, $sp, 0x4c
/* BE68C 800BDA8C 8D6D0000 */  lw         $t5, ($t3)
/* BE690 800BDA90 27AA0040 */  addiu      $t2, $sp, 0x40
/* BE694 800BDA94 AD4D0000 */  sw         $t5, ($t2)
/* BE698 800BDA98 8D6C0004 */  lw         $t4, 4($t3)
/* BE69C 800BDA9C AD4C0004 */  sw         $t4, 4($t2)
/* BE6A0 800BDAA0 8D6D0008 */  lw         $t5, 8($t3)
/* BE6A4 800BDAA4 AD4D0008 */  sw         $t5, 8($t2)
.L800BDAA8:
/* BE6A8 800BDAA8 97AF005E */  lhu        $t7, 0x5e($sp)
/* BE6AC 800BDAAC 25F8FFFF */  addiu      $t8, $t7, -1
/* BE6B0 800BDAB0 330EFFFF */  andi       $t6, $t8, 0xffff
/* BE6B4 800BDAB4 15C0FFDB */  bnez       $t6, .L800BDA24
/* BE6B8 800BDAB8 A7B8005E */   sh        $t8, 0x5e($sp)
.L800BDABC:
/* BE6BC 800BDABC 8FA80060 */  lw         $t0, 0x60($sp)
/* BE6C0 800BDAC0 3C198016 */  lui        $t9, %hi(D_8015E85C)
/* BE6C4 800BDAC4 8F39E85C */  lw         $t9, %lo(D_8015E85C)($t9)
/* BE6C8 800BDAC8 8D090030 */  lw         $t1, 0x30($t0)
/* BE6CC 800BDACC 03295023 */  subu       $t2, $t9, $t1
/* BE6D0 800BDAD0 AFAA0028 */  sw         $t2, 0x28($sp)
/* BE6D4 800BDAD4 8D0B002C */  lw         $t3, 0x2c($t0)
/* BE6D8 800BDAD8 014B082A */  slt        $at, $t2, $t3
/* BE6DC 800BDADC 142000AA */  bnez       $at, .L800BDD88
/* BE6E0 800BDAE0 00000000 */   nop
/* BE6E4 800BDAE4 3C0C8016 */  lui        $t4, %hi(D_8015E85C)
/* BE6E8 800BDAE8 8D8CE85C */  lw         $t4, %lo(D_8015E85C)($t4)
/* BE6EC 800BDAEC 8FAD0060 */  lw         $t5, 0x60($sp)
/* BE6F0 800BDAF0 ADAC0030 */  sw         $t4, 0x30($t5)
/* BE6F4 800BDAF4 8FAF0060 */  lw         $t7, 0x60($sp)
/* BE6F8 800BDAF8 8DF80028 */  lw         $t8, 0x28($t7)
/* BE6FC 800BDAFC 270EFFFF */  addiu      $t6, $t8, -1
/* BE700 800BDB00 ADEE0028 */  sw         $t6, 0x28($t7)
/* BE704 800BDB04 8FB90060 */  lw         $t9, 0x60($sp)
/* BE708 800BDB08 C7B00038 */  lwc1       $f16, 0x38($sp)
/* BE70C 800BDB0C C72A0018 */  lwc1       $f10, 0x18($t9)
/* BE710 800BDB10 460A803C */  c.lt.s     $f16, $f10
/* BE714 800BDB14 E7AA0034 */  swc1       $f10, 0x34($sp)
/* BE718 800BDB18 45000095 */  bc1f       .L800BDD70
/* BE71C 800BDB1C 3C01800E */   lui       $at, %hi(D_800DF820)
/* BE720 800BDB20 D424F820 */  ldc1       $f4, %lo(D_800DF820)($at)
/* BE724 800BDB24 460084A1 */  cvt.d.s    $f18, $f16
/* BE728 800BDB28 4632203C */  c.lt.d     $f4, $f18
/* BE72C 800BDB2C 00000000 */  nop
/* BE730 800BDB30 45000013 */  bc1f       .L800BDB80
/* BE734 800BDB34 00000000 */   nop
/* BE738 800BDB38 3C098016 */  lui        $t1, %hi(D_8015EB1C)
/* BE73C 800BDB3C 2529EB1C */  addiu      $t1, $t1, %lo(D_8015EB1C)
/* BE740 800BDB40 C5280014 */  lwc1       $f8, 0x14($t1)
/* BE744 800BDB44 C5320018 */  lwc1       $f18, 0x18($t1)
/* BE748 800BDB48 C7A60040 */  lwc1       $f6, 0x40($sp)
/* BE74C 800BDB4C C7B00048 */  lwc1       $f16, 0x48($sp)
/* BE750 800BDB50 C52C0054 */  lwc1       $f12, 0x54($t1)
/* BE754 800BDB54 46083281 */  sub.s      $f10, $f6, $f8
/* BE758 800BDB58 C52E0050 */  lwc1       $f14, 0x50($t1)
/* BE75C 800BDB5C 46128101 */  sub.s      $f4, $f16, $f18
/* BE760 800BDB60 44065000 */  mfc1       $a2, $f10
/* BE764 800BDB64 46006307 */  neg.s      $f12, $f12
/* BE768 800BDB68 44072000 */  mfc1       $a3, $f4
/* BE76C 800BDB6C 0C004794 */  jal        func_80011E50
/* BE770 800BDB70 00000000 */   nop
/* BE774 800BDB74 C7A60038 */  lwc1       $f6, 0x38($sp)
/* BE778 800BDB78 46060203 */  div.s      $f8, $f0, $f6
/* BE77C 800BDB7C E7A80030 */  swc1       $f8, 0x30($sp)
.L800BDB80:
/* BE780 800BDB80 C7AA0030 */  lwc1       $f10, 0x30($sp)
/* BE784 800BDB84 3C014050 */  lui        $at, 0x4050
/* BE788 800BDB88 44819800 */  mtc1       $at, $f19
/* BE78C 800BDB8C 44809000 */  mtc1       $zero, $f18
/* BE790 800BDB90 46005421 */  cvt.d.s    $f16, $f10
/* BE794 800BDB94 44813800 */  mtc1       $at, $f7
/* BE798 800BDB98 46328102 */  mul.d      $f4, $f16, $f18
/* BE79C 800BDB9C 44803000 */  mtc1       $zero, $f6
/* BE7A0 800BDBA0 240A0001 */  addiu      $t2, $zero, 1
/* BE7A4 800BDBA4 46262200 */  add.d      $f8, $f4, $f6
/* BE7A8 800BDBA8 4448F800 */  cfc1       $t0, $31
/* BE7AC 800BDBAC 44CAF800 */  ctc1       $t2, $31
/* BE7B0 800BDBB0 00000000 */  nop
/* BE7B4 800BDBB4 462042A4 */  cvt.w.d    $f10, $f8
/* BE7B8 800BDBB8 444AF800 */  cfc1       $t2, $31
/* BE7BC 800BDBBC 00000000 */  nop
/* BE7C0 800BDBC0 31410004 */  andi       $at, $t2, 4
/* BE7C4 800BDBC4 314A0078 */  andi       $t2, $t2, 0x78
/* BE7C8 800BDBC8 11400014 */  beqz       $t2, .L800BDC1C
/* BE7CC 800BDBCC 3C0141E0 */   lui       $at, 0x41e0
/* BE7D0 800BDBD0 44815800 */  mtc1       $at, $f11
/* BE7D4 800BDBD4 44805000 */  mtc1       $zero, $f10
/* BE7D8 800BDBD8 240A0001 */  addiu      $t2, $zero, 1
/* BE7DC 800BDBDC 462A4281 */  sub.d      $f10, $f8, $f10
/* BE7E0 800BDBE0 44CAF800 */  ctc1       $t2, $31
/* BE7E4 800BDBE4 00000000 */  nop
/* BE7E8 800BDBE8 462052A4 */  cvt.w.d    $f10, $f10
/* BE7EC 800BDBEC 444AF800 */  cfc1       $t2, $31
/* BE7F0 800BDBF0 00000000 */  nop
/* BE7F4 800BDBF4 31410004 */  andi       $at, $t2, 4
/* BE7F8 800BDBF8 314A0078 */  andi       $t2, $t2, 0x78
/* BE7FC 800BDBFC 15400005 */  bnez       $t2, .L800BDC14
/* BE800 800BDC00 00000000 */   nop
/* BE804 800BDC04 440A5000 */  mfc1       $t2, $f10
/* BE808 800BDC08 3C018000 */  lui        $at, 0x8000
/* BE80C 800BDC0C 10000007 */  b          .L800BDC2C
/* BE810 800BDC10 01415025 */   or        $t2, $t2, $at
.L800BDC14:
/* BE814 800BDC14 10000005 */  b          .L800BDC2C
/* BE818 800BDC18 240AFFFF */   addiu     $t2, $zero, -1
.L800BDC1C:
/* BE81C 800BDC1C 440A5000 */  mfc1       $t2, $f10
/* BE820 800BDC20 00000000 */  nop
/* BE824 800BDC24 0540FFFB */  bltz       $t2, .L800BDC14
/* BE828 800BDC28 00000000 */   nop
.L800BDC2C:
/* BE82C 800BDC2C 3C0B8014 */  lui        $t3, %hi(D_801443D8)
/* BE830 800BDC30 856B43D8 */  lh         $t3, %lo(D_801443D8)($t3)
/* BE834 800BDC34 44C8F800 */  ctc1       $t0, $31
/* BE838 800BDC38 A3AA002D */  sb         $t2, 0x2d($sp)
/* BE83C 800BDC3C 11600004 */  beqz       $t3, .L800BDC50
/* BE840 800BDC40 00000000 */   nop
/* BE844 800BDC44 87AC0026 */  lh         $t4, 0x26($sp)
/* BE848 800BDC48 11800007 */  beqz       $t4, .L800BDC68
/* BE84C 800BDC4C 00000000 */   nop
.L800BDC50:
/* BE850 800BDC50 87AD0024 */  lh         $t5, 0x24($sp)
/* BE854 800BDC54 11A00006 */  beqz       $t5, .L800BDC70
/* BE858 800BDC58 00000000 */   nop
/* BE85C 800BDC5C 87B80026 */  lh         $t8, 0x26($sp)
/* BE860 800BDC60 17000003 */  bnez       $t8, .L800BDC70
/* BE864 800BDC64 00000000 */   nop
.L800BDC68:
/* BE868 800BDC68 1000000E */  b          .L800BDCA4
/* BE86C 800BDC6C A7A0002E */   sh        $zero, 0x2e($sp)
.L800BDC70:
/* BE870 800BDC70 C7B00034 */  lwc1       $f16, 0x34($sp)
/* BE874 800BDC74 C7B20038 */  lwc1       $f18, 0x38($sp)
/* BE878 800BDC78 3C0E8018 */  lui        $t6, %hi(D_8017A2C8)
/* BE87C 800BDC7C 85CEA2C8 */  lh         $t6, %lo(D_8017A2C8)($t6)
/* BE880 800BDC80 46128101 */  sub.s      $f4, $f16, $f18
/* BE884 800BDC84 448E4000 */  mtc1       $t6, $f8
/* BE888 800BDC88 46102183 */  div.s      $f6, $f4, $f16
/* BE88C 800BDC8C 468042A0 */  cvt.s.w    $f10, $f8
/* BE890 800BDC90 46065482 */  mul.s      $f18, $f10, $f6
/* BE894 800BDC94 4600910D */  trunc.w.s  $f4, $f18
/* BE898 800BDC98 44192000 */  mfc1       $t9, $f4
/* BE89C 800BDC9C 00000000 */  nop
/* BE8A0 800BDCA0 A7B9002E */  sh         $t9, 0x2e($sp)
.L800BDCA4:
/* BE8A4 800BDCA4 8FA90060 */  lw         $t1, 0x60($sp)
/* BE8A8 800BDCA8 85280010 */  lh         $t0, 0x10($t1)
/* BE8AC 800BDCAC 1100001A */  beqz       $t0, .L800BDD18
/* BE8B0 800BDCB0 00000000 */   nop
/* BE8B4 800BDCB4 0C000ADC */  jal        func_80002B70
/* BE8B8 800BDCB8 8D240000 */   lw        $a0, ($t1)
/* BE8BC 800BDCBC 1440000C */  bnez       $v0, .L800BDCF0
/* BE8C0 800BDCC0 00000000 */   nop
/* BE8C4 800BDCC4 8FAA0060 */  lw         $t2, 0x60($sp)
/* BE8C8 800BDCC8 87A6002E */  lh         $a2, 0x2e($sp)
/* BE8CC 800BDCCC 93A7002D */  lbu        $a3, 0x2d($sp)
/* BE8D0 800BDCD0 8D440000 */  lw         $a0, ($t2)
/* BE8D4 800BDCD4 8D450004 */  lw         $a1, 4($t2)
/* BE8D8 800BDCD8 0C0009DF */  jal        func_8000277C
/* BE8DC 800BDCDC AFA00010 */   sw        $zero, 0x10($sp)
/* BE8E0 800BDCE0 8FAC0060 */  lw         $t4, 0x60($sp)
/* BE8E4 800BDCE4 240B0001 */  addiu      $t3, $zero, 1
/* BE8E8 800BDCE8 10000021 */  b          .L800BDD70
/* BE8EC 800BDCEC A58B0034 */   sh        $t3, 0x34($t4)
.L800BDCF0:
/* BE8F0 800BDCF0 8FAD0060 */  lw         $t5, 0x60($sp)
/* BE8F4 800BDCF4 93B8002D */  lbu        $t8, 0x2d($sp)
/* BE8F8 800BDCF8 24050006 */  addiu      $a1, $zero, 6
/* BE8FC 800BDCFC 8DA40000 */  lw         $a0, ($t5)
/* BE900 800BDD00 3C06BF80 */  lui        $a2, 0xbf80
/* BE904 800BDD04 87A7002E */  lh         $a3, 0x2e($sp)
/* BE908 800BDD08 0C000A68 */  jal        func_800029A0
/* BE90C 800BDD0C AFB80010 */   sw        $t8, 0x10($sp)
/* BE910 800BDD10 10000017 */  b          .L800BDD70
/* BE914 800BDD14 00000000 */   nop
.L800BDD18:
/* BE918 800BDD18 8FAE0060 */  lw         $t6, 0x60($sp)
/* BE91C 800BDD1C 8DCF0028 */  lw         $t7, 0x28($t6)
/* BE920 800BDD20 15E0000B */  bnez       $t7, .L800BDD50
/* BE924 800BDD24 00000000 */   nop
/* BE928 800BDD28 8DC40000 */  lw         $a0, ($t6)
/* BE92C 800BDD2C 8DC50004 */  lw         $a1, 4($t6)
/* BE930 800BDD30 AFA00010 */  sw         $zero, 0x10($sp)
/* BE934 800BDD34 87A6002E */  lh         $a2, 0x2e($sp)
/* BE938 800BDD38 0C0009DF */  jal        func_8000277C
/* BE93C 800BDD3C 93A7002D */   lbu       $a3, 0x2d($sp)
/* BE940 800BDD40 8FA80060 */  lw         $t0, 0x60($sp)
/* BE944 800BDD44 24190001 */  addiu      $t9, $zero, 1
/* BE948 800BDD48 10000009 */  b          .L800BDD70
/* BE94C 800BDD4C A5190034 */   sh        $t9, 0x34($t0)
.L800BDD50:
/* BE950 800BDD50 8FA90060 */  lw         $t1, 0x60($sp)
/* BE954 800BDD54 93AA002D */  lbu        $t2, 0x2d($sp)
/* BE958 800BDD58 24050006 */  addiu      $a1, $zero, 6
/* BE95C 800BDD5C 8D240000 */  lw         $a0, ($t1)
/* BE960 800BDD60 3C06BF80 */  lui        $a2, 0xbf80
/* BE964 800BDD64 87A7002E */  lh         $a3, 0x2e($sp)
/* BE968 800BDD68 0C000A68 */  jal        func_800029A0
/* BE96C 800BDD6C AFAA0010 */   sw        $t2, 0x10($sp)
.L800BDD70:
/* BE970 800BDD70 8FAB0060 */  lw         $t3, 0x60($sp)
/* BE974 800BDD74 8D6C0028 */  lw         $t4, 0x28($t3)
/* BE978 800BDD78 1D800003 */  bgtz       $t4, .L800BDD88
/* BE97C 800BDD7C 00000000 */   nop
/* BE980 800BDD80 8D6D0014 */  lw         $t5, 0x14($t3)
/* BE984 800BDD84 AD6D0028 */  sw         $t5, 0x28($t3)
.L800BDD88:
/* BE988 800BDD88 8FBF001C */  lw         $ra, 0x1c($sp)
/* BE98C 800BDD8C 27BD0060 */  addiu      $sp, $sp, 0x60
/* BE990 800BDD90 03E00008 */  jr         $ra
/* BE994 800BDD94 00000000 */   nop

glabel func_800BDD98
/* BE998 800BDD98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE99C 800BDD9C AFBF0014 */  sw         $ra, 0x14($sp)
/* BE9A0 800BDDA0 AFA40018 */  sw         $a0, 0x18($sp)
/* BE9A4 800BDDA4 3C0E8014 */  lui        $t6, %hi(D_801443B0)
/* BE9A8 800BDDA8 95CE43B0 */  lhu        $t6, %lo(D_801443B0)($t6)
/* BE9AC 800BDDAC 29C10008 */  slti       $at, $t6, 8
/* BE9B0 800BDDB0 1020000D */  beqz       $at, .L800BDDE8
/* BE9B4 800BDDB4 00000000 */   nop
/* BE9B8 800BDDB8 8FAF0018 */  lw         $t7, 0x18($sp)
/* BE9BC 800BDDBC 3C198014 */  lui        $t9, %hi(D_801443B0)
/* BE9C0 800BDDC0 973943B0 */  lhu        $t9, %lo(D_801443B0)($t9)
/* BE9C4 800BDDC4 000EC080 */  sll        $t8, $t6, 2
/* BE9C8 800BDDC8 3C018014 */  lui        $at, %hi(D_801443B8)
/* BE9CC 800BDDCC 00380821 */  addu       $at, $at, $t8
/* BE9D0 800BDDD0 AC2F43B8 */  sw         $t7, %lo(D_801443B8)($at)
/* BE9D4 800BDDD4 3C018014 */  lui        $at, %hi(D_801443B0)
/* BE9D8 800BDDD8 27280001 */  addiu      $t0, $t9, 1
/* BE9DC 800BDDDC A42843B0 */  sh         $t0, %lo(D_801443B0)($at)
/* BE9E0 800BDDE0 0C02F62A */  jal        func_800BD8A8
/* BE9E4 800BDDE4 8FA40018 */   lw        $a0, 0x18($sp)
.L800BDDE8:
/* BE9E8 800BDDE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE9EC 800BDDEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* BE9F0 800BDDF0 03E00008 */  jr         $ra
/* BE9F4 800BDDF4 00000000 */   nop

glabel func_800BDDF8
/* BE9F8 800BDDF8 3C018014 */  lui        $at, %hi(D_801443B0)
/* BE9FC 800BDDFC A42043B0 */  sh         $zero, %lo(D_801443B0)($at)
/* BEA00 800BDE00 3C018014 */  lui        $at, %hi(D_801443DA)
/* BEA04 800BDE04 A42043DA */  sh         $zero, %lo(D_801443DA)($at)
/* BEA08 800BDE08 03E00008 */  jr         $ra
/* BEA0C 800BDE0C 00000000 */   nop

glabel func_800BDE10
/* BEA10 800BDE10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BEA14 800BDE14 AFBF0014 */  sw         $ra, 0x14($sp)
/* BEA18 800BDE18 3C0E800E */  lui        $t6, %hi(D_800DA030)
/* BEA1C 800BDE1C 3C0F8014 */  lui        $t7, %hi(D_801443B0)
/* BEA20 800BDE20 95EF43B0 */  lhu        $t7, %lo(D_801443B0)($t7)
/* BEA24 800BDE24 95CEA030 */  lhu        $t6, %lo(D_800DA030)($t6)
/* BEA28 800BDE28 01CF082A */  slt        $at, $t6, $t7
/* BEA2C 800BDE2C 14200009 */  bnez       $at, .L800BDE54
/* BEA30 800BDE30 00000000 */   nop
/* BEA34 800BDE34 3C188014 */  lui        $t8, %hi(D_801443DA)
/* BEA38 800BDE38 871843DA */  lh         $t8, %lo(D_801443DA)($t8)
/* BEA3C 800BDE3C 3C01800E */  lui        $at, %hi(D_800DA030)
/* BEA40 800BDE40 A420A030 */  sh         $zero, %lo(D_800DA030)($at)
/* BEA44 800BDE44 3C018014 */  lui        $at, %hi(D_801443D8)
/* BEA48 800BDE48 A43843D8 */  sh         $t8, %lo(D_801443D8)($at)
/* BEA4C 800BDE4C 3C018014 */  lui        $at, %hi(D_801443DA)
/* BEA50 800BDE50 A42043DA */  sh         $zero, %lo(D_801443DA)($at)
.L800BDE54:
/* BEA54 800BDE54 3C19800E */  lui        $t9, %hi(D_800DA030)
/* BEA58 800BDE58 9739A030 */  lhu        $t9, %lo(D_800DA030)($t9)
/* BEA5C 800BDE5C 3C048014 */  lui        $a0, 0x8014
/* BEA60 800BDE60 3C01800E */  lui        $at, %hi(D_800DA030)
/* BEA64 800BDE64 00194080 */  sll        $t0, $t9, 2
/* BEA68 800BDE68 00882021 */  addu       $a0, $a0, $t0
/* BEA6C 800BDE6C 27290001 */  addiu      $t1, $t9, 1
/* BEA70 800BDE70 A429A030 */  sh         $t1, %lo(D_800DA030)($at)
/* BEA74 800BDE74 0C02F657 */  jal        func_800BD95C
/* BEA78 800BDE78 8C8443B8 */   lw        $a0, 0x43b8($a0)
/* BEA7C 800BDE7C 3C0A8014 */  lui        $t2, %hi(D_801443DA)
/* BEA80 800BDE80 854A43DA */  lh         $t2, %lo(D_801443DA)($t2)
/* BEA84 800BDE84 11400002 */  beqz       $t2, .L800BDE90
/* BEA88 800BDE88 3C018014 */   lui       $at, %hi(D_801443D8)
/* BEA8C 800BDE8C A42A43D8 */  sh         $t2, %lo(D_801443D8)($at)
.L800BDE90:
/* BEA90 800BDE90 8FBF0014 */  lw         $ra, 0x14($sp)
/* BEA94 800BDE94 27BD0018 */  addiu      $sp, $sp, 0x18
/* BEA98 800BDE98 03E00008 */  jr         $ra
/* BEA9C 800BDE9C 00000000 */   nop

glabel func_800BDEA0
/* BEAA0 800BDEA0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* BEAA4 800BDEA4 AFBF0024 */  sw         $ra, 0x24($sp)
/* BEAA8 800BDEA8 AFA40038 */  sw         $a0, 0x38($sp)
/* BEAAC 800BDEAC AFA5003C */  sw         $a1, 0x3c($sp)
/* BEAB0 800BDEB0 AFA60040 */  sw         $a2, 0x40($sp)
/* BEAB4 800BDEB4 AFB20020 */  sw         $s2, 0x20($sp)
/* BEAB8 800BDEB8 AFB1001C */  sw         $s1, 0x1c($sp)
/* BEABC 800BDEBC 0C033DD4 */  jal        func_800CF750
/* BEAC0 800BDEC0 AFB00018 */   sw        $s0, 0x18($sp)
/* BEAC4 800BDEC4 8FAE0038 */  lw         $t6, 0x38($sp)
/* BEAC8 800BDEC8 00408025 */  or         $s0, $v0, $zero
/* BEACC 800BDECC 8DCF0008 */  lw         $t7, 8($t6)
/* BEAD0 800BDED0 8DD80010 */  lw         $t8, 0x10($t6)
/* BEAD4 800BDED4 01F8082A */  slt        $at, $t7, $t8
/* BEAD8 800BDED8 14200018 */  bnez       $at, .L800BDF3C
/* BEADC 800BDEDC 00000000 */   nop
.L800BDEE0:
/* BEAE0 800BDEE0 8FB90040 */  lw         $t9, 0x40($sp)
/* BEAE4 800BDEE4 24010001 */  addiu      $at, $zero, 1
/* BEAE8 800BDEE8 1721000A */  bne        $t9, $at, .L800BDF14
/* BEAEC 800BDEEC 00000000 */   nop
/* BEAF0 800BDEF0 3C09800E */  lui        $t1, %hi(D_800DA080)
/* BEAF4 800BDEF4 8D29A080 */  lw         $t1, %lo(D_800DA080)($t1)
/* BEAF8 800BDEF8 24080008 */  addiu      $t0, $zero, 8
/* BEAFC 800BDEFC A5280010 */  sh         $t0, 0x10($t1)
/* BEB00 800BDF00 8FA40038 */  lw         $a0, 0x38($sp)
/* BEB04 800BDF04 0C02FAFF */  jal        func_800BEBFC
/* BEB08 800BDF08 24840004 */   addiu     $a0, $a0, 4
/* BEB0C 800BDF0C 10000005 */  b          .L800BDF24
/* BEB10 800BDF10 00000000 */   nop
.L800BDF14:
/* BEB14 800BDF14 0C033DDC */  jal        func_800CF770
/* BEB18 800BDF18 02002025 */   or        $a0, $s0, $zero
/* BEB1C 800BDF1C 1000002D */  b          .L800BDFD4
/* BEB20 800BDF20 2402FFFF */   addiu     $v0, $zero, -1
.L800BDF24:
/* BEB24 800BDF24 8FAA0038 */  lw         $t2, 0x38($sp)
/* BEB28 800BDF28 8D4B0008 */  lw         $t3, 8($t2)
/* BEB2C 800BDF2C 8D4C0010 */  lw         $t4, 0x10($t2)
/* BEB30 800BDF30 016C082A */  slt        $at, $t3, $t4
/* BEB34 800BDF34 1020FFEA */  beqz       $at, .L800BDEE0
/* BEB38 800BDF38 00000000 */   nop
.L800BDF3C:
/* BEB3C 800BDF3C 8FAD0038 */  lw         $t5, 0x38($sp)
/* BEB40 800BDF40 8FA8003C */  lw         $t0, 0x3c($sp)
/* BEB44 800BDF44 8DAE000C */  lw         $t6, 0xc($t5)
/* BEB48 800BDF48 8DAF0008 */  lw         $t7, 8($t5)
/* BEB4C 800BDF4C 8DB90010 */  lw         $t9, 0x10($t5)
/* BEB50 800BDF50 8DA90014 */  lw         $t1, 0x14($t5)
/* BEB54 800BDF54 01CFC021 */  addu       $t8, $t6, $t7
/* BEB58 800BDF58 0319001A */  div        $zero, $t8, $t9
/* BEB5C 800BDF5C 00008810 */  mfhi       $s1
/* BEB60 800BDF60 00115080 */  sll        $t2, $s1, 2
/* BEB64 800BDF64 012A5821 */  addu       $t3, $t1, $t2
/* BEB68 800BDF68 AD680000 */  sw         $t0, ($t3)
/* BEB6C 800BDF6C 8FAC0038 */  lw         $t4, 0x38($sp)
/* BEB70 800BDF70 17200002 */  bnez       $t9, .L800BDF7C
/* BEB74 800BDF74 00000000 */   nop
/* BEB78 800BDF78 0007000D */  break      7
.L800BDF7C:
/* BEB7C 800BDF7C 2401FFFF */   addiu     $at, $zero, -1
/* BEB80 800BDF80 17210004 */  bne        $t9, $at, .L800BDF94
/* BEB84 800BDF84 3C018000 */   lui       $at, 0x8000
/* BEB88 800BDF88 17010002 */  bne        $t8, $at, .L800BDF94
/* BEB8C 800BDF8C 00000000 */   nop
/* BEB90 800BDF90 0006000D */  break      6
.L800BDF94:
/* BEB94 800BDF94 8D8E0008 */   lw        $t6, 8($t4)
/* BEB98 800BDF98 25CF0001 */  addiu      $t7, $t6, 1
/* BEB9C 800BDF9C AD8F0008 */  sw         $t7, 8($t4)
/* BEBA0 800BDFA0 8FB80038 */  lw         $t8, 0x38($sp)
/* BEBA4 800BDFA4 8F190000 */  lw         $t9, ($t8)
/* BEBA8 800BDFA8 8F2D0000 */  lw         $t5, ($t9)
/* BEBAC 800BDFAC 11A00006 */  beqz       $t5, .L800BDFC8
/* BEBB0 800BDFB0 00000000 */   nop
/* BEBB4 800BDFB4 0C02FB51 */  jal        func_800BED44
/* BEBB8 800BDFB8 03002025 */   or        $a0, $t8, $zero
/* BEBBC 800BDFBC 00409025 */  or         $s2, $v0, $zero
/* BEBC0 800BDFC0 0C034CE8 */  jal        func_800D33A0
/* BEBC4 800BDFC4 02402025 */   or        $a0, $s2, $zero
.L800BDFC8:
/* BEBC8 800BDFC8 0C033DDC */  jal        func_800CF770
/* BEBCC 800BDFCC 02002025 */   or        $a0, $s0, $zero
/* BEBD0 800BDFD0 00001025 */  or         $v0, $zero, $zero
.L800BDFD4:
/* BEBD4 800BDFD4 8FBF0024 */  lw         $ra, 0x24($sp)
/* BEBD8 800BDFD8 8FB00018 */  lw         $s0, 0x18($sp)
/* BEBDC 800BDFDC 8FB1001C */  lw         $s1, 0x1c($sp)
/* BEBE0 800BDFE0 8FB20020 */  lw         $s2, 0x20($sp)
/* BEBE4 800BDFE4 03E00008 */  jr         $ra
/* BEBE8 800BDFE8 27BD0038 */   addiu     $sp, $sp, 0x38
/* BEBEC 800BDFEC 00000000 */  nop

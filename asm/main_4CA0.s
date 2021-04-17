.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800040A0
/* 4CA0 800040A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4CA4 800040A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4CA8 800040A8 AFA40028 */  sw         $a0, 0x28($sp)
/* 4CAC 800040AC 240E0001 */  addiu      $t6, $zero, 1
/* 4CB0 800040B0 AFAE001C */  sw         $t6, 0x1c($sp)
/* 4CB4 800040B4 AFA00020 */  sw         $zero, 0x20($sp)
/* 4CB8 800040B8 0C033527 */  jal        func_800CD49C
/* 4CBC 800040BC 8FA40028 */   lw        $a0, 0x28($sp)
/* 4CC0 800040C0 244FFFFF */  addiu      $t7, $v0, -1
/* 4CC4 800040C4 A7AF0026 */  sh         $t7, 0x26($sp)
/* 4CC8 800040C8 87B80026 */  lh         $t8, 0x26($sp)
/* 4CCC 800040CC 0700001D */  bltz       $t8, .L80004144
/* 4CD0 800040D0 00000000 */   nop
.L800040D4:
/* 4CD4 800040D4 87B90026 */  lh         $t9, 0x26($sp)
/* 4CD8 800040D8 8FA80028 */  lw         $t0, 0x28($sp)
/* 4CDC 800040DC 03284821 */  addu       $t1, $t9, $t0
/* 4CE0 800040E0 912A0000 */  lbu        $t2, ($t1)
/* 4CE4 800040E4 29410030 */  slti       $at, $t2, 0x30
/* 4CE8 800040E8 14200010 */  bnez       $at, .L8000412C
/* 4CEC 800040EC 2941003A */   slti      $at, $t2, 0x3a
/* 4CF0 800040F0 1020000E */  beqz       $at, .L8000412C
/* 4CF4 800040F4 00000000 */   nop
/* 4CF8 800040F8 01195821 */  addu       $t3, $t0, $t9
/* 4CFC 800040FC 916C0000 */  lbu        $t4, ($t3)
/* 4D00 80004100 8FAE001C */  lw         $t6, 0x1c($sp)
/* 4D04 80004104 8FB80020 */  lw         $t8, 0x20($sp)
/* 4D08 80004108 258DFFD0 */  addiu      $t5, $t4, -0x30
/* 4D0C 8000410C 01CD0019 */  multu      $t6, $t5
/* 4D10 80004110 000E5080 */  sll        $t2, $t6, 2
/* 4D14 80004114 014E5021 */  addu       $t2, $t2, $t6
/* 4D18 80004118 000A5040 */  sll        $t2, $t2, 1
/* 4D1C 8000411C AFAA001C */  sw         $t2, 0x1c($sp)
/* 4D20 80004120 00007812 */  mflo       $t7
/* 4D24 80004124 030F4821 */  addu       $t1, $t8, $t7
/* 4D28 80004128 AFA90020 */  sw         $t1, 0x20($sp)
.L8000412C:
/* 4D2C 8000412C 87A80026 */  lh         $t0, 0x26($sp)
/* 4D30 80004130 2519FFFF */  addiu      $t9, $t0, -1
/* 4D34 80004134 A7B90026 */  sh         $t9, 0x26($sp)
/* 4D38 80004138 87AB0026 */  lh         $t3, 0x26($sp)
/* 4D3C 8000413C 0561FFE5 */  bgez       $t3, .L800040D4
/* 4D40 80004140 00000000 */   nop
.L80004144:
/* 4D44 80004144 8FA20020 */  lw         $v0, 0x20($sp)
/* 4D48 80004148 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D4C 8000414C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 4D50 80004150 03E00008 */  jr         $ra
/* 4D54 80004154 00000000 */   nop
/* 4D58 80004158 00000000 */  nop
/* 4D5C 8000415C 00000000 */  nop

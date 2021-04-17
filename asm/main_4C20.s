.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80004020
/* 4C20 80004020 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4C24 80004024 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4C28 80004028 AFA40028 */  sw         $a0, 0x28($sp)
/* 4C2C 8000402C 240E0001 */  addiu      $t6, $zero, 1
/* 4C30 80004030 AFAE001C */  sw         $t6, 0x1c($sp)
/* 4C34 80004034 AFA00020 */  sw         $zero, 0x20($sp)
/* 4C38 80004038 0C02B402 */  jal        func_800AD008
/* 4C3C 8000403C 8FA40028 */   lw        $a0, 0x28($sp)
/* 4C40 80004040 244FFFFF */  addiu      $t7, $v0, -1
/* 4C44 80004044 A7AF0026 */  sh         $t7, 0x26($sp)
/* 4C48 80004048 87B80026 */  lh         $t8, 0x26($sp)
/* 4C4C 8000404C 0700001D */  bltz       $t8, .L800040C4
/* 4C50 80004050 00000000 */   nop
.L80004054:
/* 4C54 80004054 87B90026 */  lh         $t9, 0x26($sp)
/* 4C58 80004058 8FA80028 */  lw         $t0, 0x28($sp)
/* 4C5C 8000405C 03284821 */  addu       $t1, $t9, $t0
/* 4C60 80004060 912A0000 */  lbu        $t2, ($t1)
/* 4C64 80004064 29410030 */  slti       $at, $t2, 0x30
/* 4C68 80004068 14200010 */  bnez       $at, .L800040AC
/* 4C6C 8000406C 2941003A */   slti      $at, $t2, 0x3a
/* 4C70 80004070 1020000E */  beqz       $at, .L800040AC
/* 4C74 80004074 00000000 */   nop
/* 4C78 80004078 01195821 */  addu       $t3, $t0, $t9
/* 4C7C 8000407C 916C0000 */  lbu        $t4, ($t3)
/* 4C80 80004080 8FAE001C */  lw         $t6, 0x1c($sp)
/* 4C84 80004084 8FB80020 */  lw         $t8, 0x20($sp)
/* 4C88 80004088 258DFFD0 */  addiu      $t5, $t4, -0x30
/* 4C8C 8000408C 01CD0019 */  multu      $t6, $t5
/* 4C90 80004090 000E5080 */  sll        $t2, $t6, 2
/* 4C94 80004094 014E5021 */  addu       $t2, $t2, $t6
/* 4C98 80004098 000A5040 */  sll        $t2, $t2, 1
/* 4C9C 8000409C AFAA001C */  sw         $t2, 0x1c($sp)
/* 4CA0 800040A0 00007812 */  mflo       $t7
/* 4CA4 800040A4 030F4821 */  addu       $t1, $t8, $t7
/* 4CA8 800040A8 AFA90020 */  sw         $t1, 0x20($sp)
.L800040AC:
/* 4CAC 800040AC 87A80026 */  lh         $t0, 0x26($sp)
/* 4CB0 800040B0 2519FFFF */  addiu      $t9, $t0, -1
/* 4CB4 800040B4 A7B90026 */  sh         $t9, 0x26($sp)
/* 4CB8 800040B8 87AB0026 */  lh         $t3, 0x26($sp)
/* 4CBC 800040BC 0561FFE5 */  bgez       $t3, .L80004054
/* 4CC0 800040C0 00000000 */   nop
.L800040C4:
/* 4CC4 800040C4 8FA20020 */  lw         $v0, 0x20($sp)
/* 4CC8 800040C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4CCC 800040CC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 4CD0 800040D0 03E00008 */  jr         $ra
/* 4CD4 800040D4 00000000 */   nop
/* 4CD8 800040D8 00000000 */  nop
/* 4CDC 800040DC 00000000 */  nop

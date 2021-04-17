.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8009F030
/* 9FC30 8009F030 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9FC34 8009F034 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9FC38 8009F038 AFA40018 */  sw         $a0, 0x18($sp)
/* 9FC3C 8009F03C 8FAE0018 */  lw         $t6, 0x18($sp)
/* 9FC40 8009F040 3C018000 */  lui        $at, 0x8000
/* 9FC44 8009F044 01C1082B */  sltu       $at, $t6, $at
/* 9FC48 8009F048 1420000D */  bnez       $at, .L8009F080
/* 9FC4C 8009F04C 00000000 */   nop
/* 9FC50 8009F050 3C01A000 */  lui        $at, 0xa000
/* 9FC54 8009F054 01C1082B */  sltu       $at, $t6, $at
/* 9FC58 8009F058 10200009 */  beqz       $at, .L8009F080
/* 9FC5C 8009F05C 00000000 */   nop
/* 9FC60 8009F060 8FA20018 */  lw         $v0, 0x18($sp)
/* 9FC64 8009F064 3C011FFF */  lui        $at, 0x1fff
/* 9FC68 8009F068 3421FFFF */  ori        $at, $at, 0xffff
/* 9FC6C 8009F06C 00417824 */  and        $t7, $v0, $at
/* 9FC70 8009F070 1000001A */  b          .L8009F0DC
/* 9FC74 8009F074 01E01025 */   or        $v0, $t7, $zero
/* 9FC78 8009F078 10000016 */  b          .L8009F0D4
/* 9FC7C 8009F07C 00000000 */   nop
.L8009F080:
/* 9FC80 8009F080 8FB80018 */  lw         $t8, 0x18($sp)
/* 9FC84 8009F084 3C01A000 */  lui        $at, 0xa000
/* 9FC88 8009F088 0301082B */  sltu       $at, $t8, $at
/* 9FC8C 8009F08C 1420000D */  bnez       $at, .L8009F0C4
/* 9FC90 8009F090 00000000 */   nop
/* 9FC94 8009F094 3C01C000 */  lui        $at, 0xc000
/* 9FC98 8009F098 0301082B */  sltu       $at, $t8, $at
/* 9FC9C 8009F09C 10200009 */  beqz       $at, .L8009F0C4
/* 9FCA0 8009F0A0 00000000 */   nop
/* 9FCA4 8009F0A4 8FA20018 */  lw         $v0, 0x18($sp)
/* 9FCA8 8009F0A8 3C011FFF */  lui        $at, 0x1fff
/* 9FCAC 8009F0AC 3421FFFF */  ori        $at, $at, 0xffff
/* 9FCB0 8009F0B0 0041C824 */  and        $t9, $v0, $at
/* 9FCB4 8009F0B4 10000009 */  b          .L8009F0DC
/* 9FCB8 8009F0B8 03201025 */   or        $v0, $t9, $zero
/* 9FCBC 8009F0BC 10000005 */  b          .L8009F0D4
/* 9FCC0 8009F0C0 00000000 */   nop
.L8009F0C4:
/* 9FCC4 8009F0C4 0C028850 */  jal        func_800A2140
/* 9FCC8 8009F0C8 8FA40018 */   lw        $a0, 0x18($sp)
/* 9FCCC 8009F0CC 10000003 */  b          .L8009F0DC
/* 9FCD0 8009F0D0 00000000 */   nop
.L8009F0D4:
/* 9FCD4 8009F0D4 10000001 */  b          .L8009F0DC
/* 9FCD8 8009F0D8 00000000 */   nop
.L8009F0DC:
/* 9FCDC 8009F0DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9FCE0 8009F0E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 9FCE4 8009F0E4 03E00008 */  jr         $ra
/* 9FCE8 8009F0E8 00000000 */   nop
/* 9FCEC 8009F0EC 00000000 */  nop

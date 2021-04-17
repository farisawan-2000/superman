.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D0060
/* D0C60 800D0060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0C64 800D0064 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0C68 800D0068 00803025 */  or         $a2, $a0, $zero
/* D0C6C 800D006C AFA60018 */  sw         $a2, 0x18($sp)
/* D0C70 800D0070 24040001 */  addiu      $a0, $zero, 1
/* D0C74 800D0074 0C030284 */  jal        func_800C0A10
/* D0C78 800D0078 AFA5001C */   sw        $a1, 0x1c($sp)
/* D0C7C 800D007C 8FA60018 */  lw         $a2, 0x18($sp)
/* D0C80 800D0080 8FA5001C */  lw         $a1, 0x1c($sp)
/* D0C84 800D0084 00402025 */  or         $a0, $v0, $zero
/* D0C88 800D0088 8CCE0020 */  lw         $t6, 0x20($a2)
/* D0C8C 800D008C ACAE0010 */  sw         $t6, 0x10($a1)
/* D0C90 800D0090 8CCF0000 */  lw         $t7, ($a2)
/* D0C94 800D0094 ACAF0000 */  sw         $t7, ($a1)
/* D0C98 800D0098 0C030284 */  jal        func_800C0A10
/* D0C9C 800D009C ACC50000 */   sw        $a1, ($a2)
/* D0CA0 800D00A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0CA4 800D00A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* D0CA8 800D00A8 03E00008 */  jr         $ra
/* D0CAC 800D00AC 00000000 */   nop

glabel func_800D00B0
/* D0CB0 800D00B0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* D0CB4 800D00B4 AFA40048 */  sw         $a0, 0x48($sp)
/* D0CB8 800D00B8 8FAE0048 */  lw         $t6, 0x48($sp)
/* D0CBC 800D00BC AFBF0014 */  sw         $ra, 0x14($sp)
/* D0CC0 800D00C0 AFA5004C */  sw         $a1, 0x4c($sp)
/* D0CC4 800D00C4 AFA60050 */  sw         $a2, 0x50($sp)
/* D0CC8 800D00C8 AFA0001C */  sw         $zero, 0x1c($sp)
/* D0CCC 800D00CC 8DCF0000 */  lw         $t7, ($t6)
/* D0CD0 800D00D0 31F80001 */  andi       $t8, $t7, 1
/* D0CD4 800D00D4 17000003 */  bnez       $t8, .L800D00E4
/* D0CD8 800D00D8 00000000 */   nop
/* D0CDC 800D00DC 10000041 */  b          .L800D01E4
/* D0CE0 800D00E0 24020005 */   addiu     $v0, $zero, 5
.L800D00E4:
/* D0CE4 800D00E4 0C031D08 */  jal        func_800C7420
/* D0CE8 800D00E8 8FA40048 */   lw        $a0, 0x48($sp)
/* D0CEC 800D00EC 24010002 */  addiu      $at, $zero, 2
/* D0CF0 800D00F0 14410003 */  bne        $v0, $at, .L800D0100
/* D0CF4 800D00F4 00000000 */   nop
/* D0CF8 800D00F8 1000003A */  b          .L800D01E4
/* D0CFC 800D00FC 24020002 */   addiu     $v0, $zero, 2
.L800D0100:
/* D0D00 800D0100 8FB90048 */  lw         $t9, 0x48($sp)
/* D0D04 800D0104 93280065 */  lbu        $t0, 0x65($t9)
/* D0D08 800D0108 1100000A */  beqz       $t0, .L800D0134
/* D0D0C 800D010C 00000000 */   nop
/* D0D10 800D0110 A3200065 */  sb         $zero, 0x65($t9)
/* D0D14 800D0114 0C031E0F */  jal        func_800C783C
/* D0D18 800D0118 8FA40048 */   lw        $a0, 0x48($sp)
/* D0D1C 800D011C AFA20040 */  sw         $v0, 0x40($sp)
/* D0D20 800D0120 8FA90040 */  lw         $t1, 0x40($sp)
/* D0D24 800D0124 11200003 */  beqz       $t1, .L800D0134
/* D0D28 800D0128 00000000 */   nop
/* D0D2C 800D012C 1000002D */  b          .L800D01E4
/* D0D30 800D0130 01201025 */   or        $v0, $t1, $zero
.L800D0134:
/* D0D34 800D0134 8FAA0048 */  lw         $t2, 0x48($sp)
/* D0D38 800D0138 AFA00044 */  sw         $zero, 0x44($sp)
/* D0D3C 800D013C 8D4B0050 */  lw         $t3, 0x50($t2)
/* D0D40 800D0140 19600020 */  blez       $t3, .L800D01C4
/* D0D44 800D0144 00000000 */   nop
.L800D0148:
/* D0D48 800D0148 8FAC0048 */  lw         $t4, 0x48($sp)
/* D0D4C 800D014C 8FAE0044 */  lw         $t6, 0x44($sp)
/* D0D50 800D0150 27A70020 */  addiu      $a3, $sp, 0x20
/* D0D54 800D0154 8D8D005C */  lw         $t5, 0x5c($t4)
/* D0D58 800D0158 8D840004 */  lw         $a0, 4($t4)
/* D0D5C 800D015C 8D850008 */  lw         $a1, 8($t4)
/* D0D60 800D0160 0C034C10 */  jal        func_800D3040
/* D0D64 800D0164 01AE3021 */   addu      $a2, $t5, $t6
/* D0D68 800D0168 AFA20040 */  sw         $v0, 0x40($sp)
/* D0D6C 800D016C 8FAF0040 */  lw         $t7, 0x40($sp)
/* D0D70 800D0170 11E00003 */  beqz       $t7, .L800D0180
/* D0D74 800D0174 00000000 */   nop
/* D0D78 800D0178 1000001A */  b          .L800D01E4
/* D0D7C 800D017C 01E01025 */   or        $v0, $t7, $zero
.L800D0180:
/* D0D80 800D0180 97B80024 */  lhu        $t8, 0x24($sp)
/* D0D84 800D0184 13000007 */  beqz       $t8, .L800D01A4
/* D0D88 800D0188 00000000 */   nop
/* D0D8C 800D018C 8FA80020 */  lw         $t0, 0x20($sp)
/* D0D90 800D0190 11000004 */  beqz       $t0, .L800D01A4
/* D0D94 800D0194 00000000 */   nop
/* D0D98 800D0198 8FB9001C */  lw         $t9, 0x1c($sp)
/* D0D9C 800D019C 27290001 */  addiu      $t1, $t9, 1
/* D0DA0 800D01A0 AFA9001C */  sw         $t1, 0x1c($sp)
.L800D01A4:
/* D0DA4 800D01A4 8FAA0044 */  lw         $t2, 0x44($sp)
/* D0DA8 800D01A8 8FAC0048 */  lw         $t4, 0x48($sp)
/* D0DAC 800D01AC 254B0001 */  addiu      $t3, $t2, 1
/* D0DB0 800D01B0 AFAB0044 */  sw         $t3, 0x44($sp)
/* D0DB4 800D01B4 8D8D0050 */  lw         $t5, 0x50($t4)
/* D0DB8 800D01B8 016D082A */  slt        $at, $t3, $t5
/* D0DBC 800D01BC 1420FFE2 */  bnez       $at, .L800D0148
/* D0DC0 800D01C0 00000000 */   nop
.L800D01C4:
/* D0DC4 800D01C4 8FAE001C */  lw         $t6, 0x1c($sp)
/* D0DC8 800D01C8 8FAF0050 */  lw         $t7, 0x50($sp)
/* D0DCC 800D01CC 00001025 */  or         $v0, $zero, $zero
/* D0DD0 800D01D0 ADEE0000 */  sw         $t6, ($t7)
/* D0DD4 800D01D4 8FB80048 */  lw         $t8, 0x48($sp)
/* D0DD8 800D01D8 8FB9004C */  lw         $t9, 0x4c($sp)
/* D0DDC 800D01DC 8F080050 */  lw         $t0, 0x50($t8)
/* D0DE0 800D01E0 AF280000 */  sw         $t0, ($t9)
.L800D01E4:
/* D0DE4 800D01E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0DE8 800D01E8 27BD0048 */  addiu      $sp, $sp, 0x48
/* D0DEC 800D01EC 03E00008 */  jr         $ra
/* D0DF0 800D01F0 00000000 */   nop
/* D0DF4 800D01F4 00000000 */  nop
/* D0DF8 800D01F8 00000000 */  nop
/* D0DFC 800D01FC 00000000 */  nop

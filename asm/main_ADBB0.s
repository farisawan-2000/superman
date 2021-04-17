.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800ACFB0
/* ADBB0 800ACFB0 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADBB4 800ACFB4 A3A50007 */  sb         $a1, 7($sp)
/* ADBB8 800ACFB8 908E0000 */  lbu        $t6, ($a0)
/* ADBBC 800ACFBC 93AF0007 */  lbu        $t7, 7($sp)
/* ADBC0 800ACFC0 11CF000B */  beq        $t6, $t7, .L800ACFF0
/* ADBC4 800ACFC4 00000000 */   nop
.L800ACFC8:
/* ADBC8 800ACFC8 90980000 */  lbu        $t8, ($a0)
/* ADBCC 800ACFCC 17000003 */  bnez       $t8, .L800ACFDC
/* ADBD0 800ACFD0 00000000 */   nop
/* ADBD4 800ACFD4 1000000A */  b          .L800AD000
/* ADBD8 800ACFD8 00001025 */   or        $v0, $zero, $zero
.L800ACFDC:
/* ADBDC 800ACFDC 90990001 */  lbu        $t9, 1($a0)
/* ADBE0 800ACFE0 93A80007 */  lbu        $t0, 7($sp)
/* ADBE4 800ACFE4 24840001 */  addiu      $a0, $a0, 1
/* ADBE8 800ACFE8 1728FFF7 */  bne        $t9, $t0, .L800ACFC8
/* ADBEC 800ACFEC 00000000 */   nop
.L800ACFF0:
/* ADBF0 800ACFF0 10000003 */  b          .L800AD000
/* ADBF4 800ACFF4 00801025 */   or        $v0, $a0, $zero
/* ADBF8 800ACFF8 10000001 */  b          .L800AD000
/* ADBFC 800ACFFC 00000000 */   nop
.L800AD000:
/* ADC00 800AD000 03E00008 */  jr         $ra
/* ADC04 800AD004 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800AD008
/* ADC08 800AD008 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADC0C 800AD00C AFA40004 */  sw         $a0, 4($sp)
/* ADC10 800AD010 8FAE0004 */  lw         $t6, 4($sp)
/* ADC14 800AD014 91CF0000 */  lbu        $t7, ($t6)
/* ADC18 800AD018 11E00007 */  beqz       $t7, .L800AD038
/* ADC1C 800AD01C 00000000 */   nop
.L800AD020:
/* ADC20 800AD020 8FB80004 */  lw         $t8, 4($sp)
/* ADC24 800AD024 27190001 */  addiu      $t9, $t8, 1
/* ADC28 800AD028 AFB90004 */  sw         $t9, 4($sp)
/* ADC2C 800AD02C 93280000 */  lbu        $t0, ($t9)
/* ADC30 800AD030 1500FFFB */  bnez       $t0, .L800AD020
/* ADC34 800AD034 00000000 */   nop
.L800AD038:
/* ADC38 800AD038 8FA90004 */  lw         $t1, 4($sp)
/* ADC3C 800AD03C 10000003 */  b          .L800AD04C
/* ADC40 800AD040 01241023 */   subu      $v0, $t1, $a0
/* ADC44 800AD044 10000001 */  b          .L800AD04C
/* ADC48 800AD048 00000000 */   nop
.L800AD04C:
/* ADC4C 800AD04C 03E00008 */  jr         $ra
/* ADC50 800AD050 27BD0008 */   addiu     $sp, $sp, 8

glabel func_800AD054
/* ADC54 800AD054 27BDFFF8 */  addiu      $sp, $sp, -8
/* ADC58 800AD058 AFA40004 */  sw         $a0, 4($sp)
/* ADC5C 800AD05C 10C0000D */  beqz       $a2, .L800AD094
/* ADC60 800AD060 AFA50000 */   sw        $a1, ($sp)
.L800AD064:
/* ADC64 800AD064 8FAE0000 */  lw         $t6, ($sp)
/* ADC68 800AD068 8FB80004 */  lw         $t8, 4($sp)
/* ADC6C 800AD06C 91CF0000 */  lbu        $t7, ($t6)
/* ADC70 800AD070 A30F0000 */  sb         $t7, ($t8)
/* ADC74 800AD074 8FB90004 */  lw         $t9, 4($sp)
/* ADC78 800AD078 8FA90000 */  lw         $t1, ($sp)
/* ADC7C 800AD07C 24C6FFFF */  addiu      $a2, $a2, -1
/* ADC80 800AD080 27280001 */  addiu      $t0, $t9, 1
/* ADC84 800AD084 252A0001 */  addiu      $t2, $t1, 1
/* ADC88 800AD088 AFAA0000 */  sw         $t2, ($sp)
/* ADC8C 800AD08C 14C0FFF5 */  bnez       $a2, .L800AD064
/* ADC90 800AD090 AFA80004 */   sw        $t0, 4($sp)
.L800AD094:
/* ADC94 800AD094 10000003 */  b          .L800AD0A4
/* ADC98 800AD098 00801025 */   or        $v0, $a0, $zero
/* ADC9C 800AD09C 10000001 */  b          .L800AD0A4
/* ADCA0 800AD0A0 00000000 */   nop
.L800AD0A4:
/* ADCA4 800AD0A4 03E00008 */  jr         $ra
/* ADCA8 800AD0A8 27BD0008 */   addiu     $sp, $sp, 8
/* ADCAC 800AD0AC 00000000 */  nop

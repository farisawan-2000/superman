.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CC480
/* CD080 800CC480 3C04800E */  lui        $a0, %hi(D_800DB120)
/* CD084 800CC484 8C84B120 */  lw         $a0, %lo(D_800DB120)($a0)
/* CD088 800CC488 3C01800E */  lui        $at, 0x800e
/* CD08C 800CC48C 00047080 */  sll        $t6, $a0, 2
/* CD090 800CC490 25CF0002 */  addiu      $t7, $t6, 2
/* CD094 800CC494 25D80003 */  addiu      $t8, $t6, 3
/* CD098 800CC498 01F80019 */  multu      $t7, $t8
/* CD09C 800CC49C 00002812 */  mflo       $a1
/* CD0A0 800CC4A0 00051082 */  srl        $v0, $a1, 2
/* CD0A4 800CC4A4 03E00008 */  jr         $ra
/* CD0A8 800CC4A8 AC22B120 */   sw        $v0, -0x4ee0($at)
/* CD0AC 800CC4AC 00000000 */  nop

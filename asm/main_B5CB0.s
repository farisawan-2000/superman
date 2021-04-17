.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800B50B0
/* B5CB0 800B50B0 27BDFFF8 */  addiu      $sp, $sp, -8
/* B5CB4 800B50B4 8C8E0040 */  lw         $t6, 0x40($a0)
/* B5CB8 800B50B8 AFAE0004 */  sw         $t6, 4($sp)
/* B5CBC 800B50BC 8C8F003C */  lw         $t7, 0x3c($a0)
/* B5CC0 800B50C0 8FB90004 */  lw         $t9, 4($sp)
/* B5CC4 800B50C4 000FC080 */  sll        $t8, $t7, 2
/* B5CC8 800B50C8 030FC023 */  subu       $t8, $t8, $t7
/* B5CCC 800B50CC 0018C100 */  sll        $t8, $t8, 4
/* B5CD0 800B50D0 03194021 */  addu       $t0, $t8, $t9
/* B5CD4 800B50D4 10000003 */  b          .L800B50E4
/* B5CD8 800B50D8 8D020028 */   lw        $v0, 0x28($t0)
/* B5CDC 800B50DC 10000001 */  b          .L800B50E4
/* B5CE0 800B50E0 00000000 */   nop
.L800B50E4:
/* B5CE4 800B50E4 03E00008 */  jr         $ra
/* B5CE8 800B50E8 27BD0008 */   addiu     $sp, $sp, 8
/* B5CEC 800B50EC 00000000 */  nop

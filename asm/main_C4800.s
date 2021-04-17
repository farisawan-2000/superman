.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3C00
/* C4800 800C3C00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4804 800C3C04 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4808 800C3C08 AFA40018 */  sw         $a0, 0x18($sp)
/* C480C 800C3C0C 0C0336B4 */  jal        func_800CDAD0
/* C4810 800C3C10 AFA5001C */   sw        $a1, 0x1c($sp)
/* C4814 800C3C14 10400003 */  beqz       $v0, .L800C3C24
/* C4818 800C3C18 00000000 */   nop
/* C481C 800C3C1C 1000001F */  b          .L800C3C9C
/* C4820 800C3C20 2402FFFF */   addiu     $v0, $zero, -1
.L800C3C24:
/* C4824 800C3C24 8FAE0018 */  lw         $t6, 0x18($sp)
/* C4828 800C3C28 24010001 */  addiu      $at, $zero, 1
/* C482C 800C3C2C 15C10004 */  bne        $t6, $at, .L800C3C40
/* C4830 800C3C30 00000000 */   nop
/* C4834 800C3C34 8FA4001C */  lw         $a0, 0x1c($sp)
/* C4838 800C3C38 0C030C58 */  jal        func_800C3160
/* C483C 800C3C3C 24050040 */   addiu     $a1, $zero, 0x40
.L800C3C40:
/* C4840 800C3C40 0C030C38 */  jal        func_800C30E0
/* C4844 800C3C44 8FA4001C */   lw        $a0, 0x1c($sp)
/* C4848 800C3C48 3C0FA480 */  lui        $t7, 0xa480
/* C484C 800C3C4C ADE20000 */  sw         $v0, ($t7)
/* C4850 800C3C50 8FB80018 */  lw         $t8, 0x18($sp)
/* C4854 800C3C54 17000006 */  bnez       $t8, .L800C3C70
/* C4858 800C3C58 00000000 */   nop
/* C485C 800C3C5C 3C191FC0 */  lui        $t9, 0x1fc0
/* C4860 800C3C60 373907C0 */  ori        $t9, $t9, 0x7c0
/* C4864 800C3C64 3C08A480 */  lui        $t0, %hi(D_A4800004)
/* C4868 800C3C68 10000005 */  b          .L800C3C80
/* C486C 800C3C6C AD190004 */   sw        $t9, %lo(D_A4800004)($t0)
.L800C3C70:
/* C4870 800C3C70 3C091FC0 */  lui        $t1, 0x1fc0
/* C4874 800C3C74 352907C0 */  ori        $t1, $t1, 0x7c0
/* C4878 800C3C78 3C0AA480 */  lui        $t2, %hi(D_A4800010)
/* C487C 800C3C7C AD490010 */  sw         $t1, %lo(D_A4800010)($t2)
.L800C3C80:
/* C4880 800C3C80 8FAB0018 */  lw         $t3, 0x18($sp)
/* C4884 800C3C84 15600004 */  bnez       $t3, .L800C3C98
/* C4888 800C3C88 00000000 */   nop
/* C488C 800C3C8C 8FA4001C */  lw         $a0, 0x1c($sp)
/* C4890 800C3C90 0C033570 */  jal        func_800CD5C0
/* C4894 800C3C94 24050040 */   addiu     $a1, $zero, 0x40
.L800C3C98:
/* C4898 800C3C98 00001025 */  or         $v0, $zero, $zero
.L800C3C9C:
/* C489C 800C3C9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* C48A0 800C3CA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* C48A4 800C3CA4 03E00008 */  jr         $ra
/* C48A8 800C3CA8 00000000 */   nop
/* C48AC 800C3CAC 00000000 */  nop

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C3B70
/* C4770 800C3B70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C4774 800C3B74 AFBF0014 */  sw         $ra, 0x14($sp)
/* C4778 800C3B78 AFA40018 */  sw         $a0, 0x18($sp)
/* C477C 800C3B7C AFA60020 */  sw         $a2, 0x20($sp)
/* C4780 800C3B80 8CAE0008 */  lw         $t6, 8($a1)
/* C4784 800C3B84 51C0001A */  beql       $t6, $zero, .L800C3BF0
/* C4788 800C3B88 8FBF0014 */   lw        $ra, 0x14($sp)
/* C478C 800C3B8C 0C031FF4 */  jal        func_800C7FD0
/* C4790 800C3B90 AFA5001C */   sw        $a1, 0x1c($sp)
/* C4794 800C3B94 8FA7001C */  lw         $a3, 0x1c($sp)
/* C4798 800C3B98 10400014 */  beqz       $v0, .L800C3BEC
/* C479C 800C3B9C 00403025 */   or        $a2, $v0, $zero
/* C47A0 800C3BA0 8FAF0018 */  lw         $t7, 0x18($sp)
/* C47A4 800C3BA4 8CF90008 */  lw         $t9, 8($a3)
/* C47A8 800C3BA8 240A000E */  addiu      $t2, $zero, 0xe
/* C47AC 800C3BAC 8DF8001C */  lw         $t8, 0x1c($t7)
/* C47B0 800C3BB0 8F2800D8 */  lw         $t0, 0xd8($t9)
/* C47B4 800C3BB4 A44A0008 */  sh         $t2, 8($v0)
/* C47B8 800C3BB8 24050003 */  addiu      $a1, $zero, 3
/* C47BC 800C3BBC 03084821 */  addu       $t1, $t8, $t0
/* C47C0 800C3BC0 AC490004 */  sw         $t1, 4($v0)
/* C47C4 800C3BC4 8FAB0020 */  lw         $t3, 0x20($sp)
/* C47C8 800C3BC8 AC400000 */  sw         $zero, ($v0)
/* C47CC 800C3BCC AC4B000C */  sw         $t3, 0xc($v0)
/* C47D0 800C3BD0 84EC001A */  lh         $t4, 0x1a($a3)
/* C47D4 800C3BD4 A44C000A */  sh         $t4, 0xa($v0)
/* C47D8 800C3BD8 8CED0008 */  lw         $t5, 8($a3)
/* C47DC 800C3BDC 8DA4000C */  lw         $a0, 0xc($t5)
/* C47E0 800C3BE0 8C990008 */  lw         $t9, 8($a0)
/* C47E4 800C3BE4 0320F809 */  jalr       $t9
/* C47E8 800C3BE8 00000000 */   nop
.L800C3BEC:
/* C47EC 800C3BEC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800C3BF0:
/* C47F0 800C3BF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* C47F4 800C3BF4 03E00008 */  jr         $ra
/* C47F8 800C3BF8 00000000 */   nop
/* C47FC 800C3BFC 00000000 */  nop

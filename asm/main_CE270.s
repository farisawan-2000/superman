.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD670
/* CE270 800CD670 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CE274 800CD674 AFBF0014 */  sw         $ra, 0x14($sp)
/* CE278 800CD678 AFA40018 */  sw         $a0, 0x18($sp)
/* CE27C 800CD67C AFA60020 */  sw         $a2, 0x20($sp)
/* CE280 800CD680 8CAE0008 */  lw         $t6, 8($a1)
/* CE284 800CD684 51C0001C */  beql       $t6, $zero, .L800CD6F8
/* CE288 800CD688 8FBF0014 */   lw        $ra, 0x14($sp)
/* CE28C 800CD68C 0C031FF4 */  jal        func_800C7FD0
/* CE290 800CD690 AFA5001C */   sw        $a1, 0x1c($sp)
/* CE294 800CD694 8FA7001C */  lw         $a3, 0x1c($sp)
/* CE298 800CD698 10400016 */  beqz       $v0, .L800CD6F4
/* CE29C 800CD69C 00403025 */   or        $a2, $v0, $zero
/* CE2A0 800CD6A0 8FAF0018 */  lw         $t7, 0x18($sp)
/* CE2A4 800CD6A4 8CF90008 */  lw         $t9, 8($a3)
/* CE2A8 800CD6A8 240A0010 */  addiu      $t2, $zero, 0x10
/* CE2AC 800CD6AC 8DF8001C */  lw         $t8, 0x1c($t7)
/* CE2B0 800CD6B0 8F2800D8 */  lw         $t0, 0xd8($t9)
/* CE2B4 800CD6B4 A44A0008 */  sh         $t2, 8($v0)
/* CE2B8 800CD6B8 03084821 */  addu       $t1, $t8, $t0
/* CE2BC 800CD6BC AC490004 */  sw         $t1, 4($v0)
/* CE2C0 800CD6C0 93A30023 */  lbu        $v1, 0x23($sp)
/* CE2C4 800CD6C4 04610003 */  bgez       $v1, .L800CD6D4
/* CE2C8 800CD6C8 00035823 */   negu      $t3, $v1
/* CE2CC 800CD6CC 10000002 */  b          .L800CD6D8
/* CE2D0 800CD6D0 AC4B000C */   sw        $t3, 0xc($v0)
.L800CD6D4:
/* CE2D4 800CD6D4 AC43000C */  sw         $v1, 0xc($v0)
.L800CD6D8:
/* CE2D8 800CD6D8 ACC00000 */  sw         $zero, ($a2)
/* CE2DC 800CD6DC 8CEC0008 */  lw         $t4, 8($a3)
/* CE2E0 800CD6E0 24050003 */  addiu      $a1, $zero, 3
/* CE2E4 800CD6E4 8D84000C */  lw         $a0, 0xc($t4)
/* CE2E8 800CD6E8 8C990008 */  lw         $t9, 8($a0)
/* CE2EC 800CD6EC 0320F809 */  jalr       $t9
/* CE2F0 800CD6F0 00000000 */   nop
.L800CD6F4:
/* CE2F4 800CD6F4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800CD6F8:
/* CE2F8 800CD6F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* CE2FC 800CD6FC 03E00008 */  jr         $ra
/* CE300 800CD700 00000000 */   nop
/* CE304 800CD704 00000000 */  nop
/* CE308 800CD708 00000000 */  nop
/* CE30C 800CD70C 00000000 */  nop

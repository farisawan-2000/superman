.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C9AE0
/* CA6E0 800C9AE0 24010002 */  addiu      $at, $zero, 2
/* CA6E4 800C9AE4 14A10008 */  bne        $a1, $at, .L800C9B08
/* CA6E8 800C9AE8 8C82001C */   lw        $v0, 0x1c($a0)
/* CA6EC 800C9AEC 8C8E0014 */  lw         $t6, 0x14($a0)
/* CA6F0 800C9AF0 000E7880 */  sll        $t7, $t6, 2
/* CA6F4 800C9AF4 004FC021 */  addu       $t8, $v0, $t7
/* CA6F8 800C9AF8 AF060000 */  sw         $a2, ($t8)
/* CA6FC 800C9AFC 8C990014 */  lw         $t9, 0x14($a0)
/* CA700 800C9B00 27280001 */  addiu      $t0, $t9, 1
/* CA704 800C9B04 AC880014 */  sw         $t0, 0x14($a0)
.L800C9B08:
/* CA708 800C9B08 03E00008 */  jr         $ra
/* CA70C 800C9B0C 00001025 */   or        $v0, $zero, $zero

glabel func_800C9B10
/* CA710 800C9B10 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* CA714 800C9B14 8FA80050 */  lw         $t0, 0x50($sp)
/* CA718 800C9B18 AFBF003C */  sw         $ra, 0x3c($sp)
/* CA71C 800C9B1C AFB60038 */  sw         $s6, 0x38($sp)
/* CA720 800C9B20 AFB50034 */  sw         $s5, 0x34($sp)
/* CA724 800C9B24 AFB40030 */  sw         $s4, 0x30($sp)
/* CA728 800C9B28 AFB3002C */  sw         $s3, 0x2c($sp)
/* CA72C 800C9B2C AFB20028 */  sw         $s2, 0x28($sp)
/* CA730 800C9B30 AFB10024 */  sw         $s1, 0x24($sp)
/* CA734 800C9B34 AFB00020 */  sw         $s0, 0x20($sp)
/* CA738 800C9B38 8C83001C */  lw         $v1, 0x1c($a0)
/* CA73C 800C9B3C 3C0E0200 */  lui        $t6, 0x200
/* CA740 800C9B40 00061040 */  sll        $v0, $a2, 1
/* CA744 800C9B44 3C0F0200 */  lui        $t7, 0x200
/* CA748 800C9B48 35CE06C0 */  ori        $t6, $t6, 0x6c0
/* CA74C 800C9B4C 35EF0800 */  ori        $t7, $t7, 0x800
/* CA750 800C9B50 AD0E0000 */  sw         $t6, ($t0)
/* CA754 800C9B54 AD020004 */  sw         $v0, 4($t0)
/* CA758 800C9B58 AD0F0008 */  sw         $t7, 8($t0)
/* CA75C 800C9B5C AD02000C */  sw         $v0, 0xc($t0)
/* CA760 800C9B60 8C980014 */  lw         $t8, 0x14($a0)
/* CA764 800C9B64 00C0A025 */  or         $s4, $a2, $zero
/* CA768 800C9B68 00A0A825 */  or         $s5, $a1, $zero
/* CA76C 800C9B6C 00E0B025 */  or         $s6, $a3, $zero
/* CA770 800C9B70 00809825 */  or         $s3, $a0, $zero
/* CA774 800C9B74 00008025 */  or         $s0, $zero, $zero
/* CA778 800C9B78 1B000010 */  blez       $t8, .L800C9BBC
/* CA77C 800C9B7C 25120010 */   addiu     $s2, $t0, 0x10
/* CA780 800C9B80 00608825 */  or         $s1, $v1, $zero
.L800C9B84:
/* CA784 800C9B84 8E240000 */  lw         $a0, ($s1)
/* CA788 800C9B88 AFB20010 */  sw         $s2, 0x10($sp)
/* CA78C 800C9B8C 02A02825 */  or         $a1, $s5, $zero
/* CA790 800C9B90 8C990004 */  lw         $t9, 4($a0)
/* CA794 800C9B94 02803025 */  or         $a2, $s4, $zero
/* CA798 800C9B98 02C03825 */  or         $a3, $s6, $zero
/* CA79C 800C9B9C 0320F809 */  jalr       $t9
/* CA7A0 800C9BA0 00000000 */   nop
/* CA7A4 800C9BA4 8E690014 */  lw         $t1, 0x14($s3)
/* CA7A8 800C9BA8 26100001 */  addiu      $s0, $s0, 1
/* CA7AC 800C9BAC 26310004 */  addiu      $s1, $s1, 4
/* CA7B0 800C9BB0 0209082A */  slt        $at, $s0, $t1
/* CA7B4 800C9BB4 1420FFF3 */  bnez       $at, .L800C9B84
/* CA7B8 800C9BB8 00409025 */   or        $s2, $v0, $zero
.L800C9BBC:
/* CA7BC 800C9BBC 8FBF003C */  lw         $ra, 0x3c($sp)
/* CA7C0 800C9BC0 02401025 */  or         $v0, $s2, $zero
/* CA7C4 800C9BC4 8FB20028 */  lw         $s2, 0x28($sp)
/* CA7C8 800C9BC8 8FB00020 */  lw         $s0, 0x20($sp)
/* CA7CC 800C9BCC 8FB10024 */  lw         $s1, 0x24($sp)
/* CA7D0 800C9BD0 8FB3002C */  lw         $s3, 0x2c($sp)
/* CA7D4 800C9BD4 8FB40030 */  lw         $s4, 0x30($sp)
/* CA7D8 800C9BD8 8FB50034 */  lw         $s5, 0x34($sp)
/* CA7DC 800C9BDC 8FB60038 */  lw         $s6, 0x38($sp)
/* CA7E0 800C9BE0 03E00008 */  jr         $ra
/* CA7E4 800C9BE4 27BD0040 */   addiu     $sp, $sp, 0x40
/* CA7E8 800C9BE8 00000000 */  nop
/* CA7EC 800C9BEC 00000000 */  nop

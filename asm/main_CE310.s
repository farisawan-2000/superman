.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CD710
/* CE310 800CD710 24010001 */  addiu      $at, $zero, 1
/* CE314 800CD714 10A10006 */  beq        $a1, $at, .L800CD730
/* CE318 800CD718 00001025 */   or        $v0, $zero, $zero
/* CE31C 800CD71C 24010006 */  addiu      $at, $zero, 6
/* CE320 800CD720 50A10006 */  beql       $a1, $at, .L800CD73C
/* CE324 800CD724 AC860014 */   sw        $a2, 0x14($a0)
/* CE328 800CD728 03E00008 */  jr         $ra
/* CE32C 800CD72C 00001025 */   or        $v0, $zero, $zero
.L800CD730:
/* CE330 800CD730 03E00008 */  jr         $ra
/* CE334 800CD734 AC860000 */   sw        $a2, ($a0)
/* CE338 800CD738 AC860014 */  sw         $a2, 0x14($a0)
.L800CD73C:
/* CE33C 800CD73C 03E00008 */  jr         $ra
/* CE340 800CD740 00001025 */   or        $v0, $zero, $zero

glabel func_800CD744
/* CE344 800CD744 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CE348 800CD748 AFBF001C */  sw         $ra, 0x1c($sp)
/* CE34C 800CD74C AFA40020 */  sw         $a0, 0x20($sp)
/* CE350 800CD750 8C840000 */  lw         $a0, ($a0)
/* CE354 800CD754 8FAF0030 */  lw         $t7, 0x30($sp)
/* CE358 800CD758 AFA60028 */  sw         $a2, 0x28($sp)
/* CE35C 800CD75C AFAF0010 */  sw         $t7, 0x10($sp)
/* CE360 800CD760 8C990004 */  lw         $t9, 4($a0)
/* CE364 800CD764 0320F809 */  jalr       $t9
/* CE368 800CD768 00000000 */   nop
/* CE36C 800CD76C 8FA60028 */  lw         $a2, 0x28($sp)
/* CE370 800CD770 3C030800 */  lui        $v1, 0x800
/* CE374 800CD774 3C0A0440 */  lui        $t2, 0x440
/* CE378 800CD778 0006C040 */  sll        $t8, $a2, 1
/* CE37C 800CD77C 00065880 */  sll        $t3, $a2, 2
/* CE380 800CD780 3308FFFF */  andi       $t0, $t8, 0xffff
/* CE384 800CD784 354A0580 */  ori        $t2, $t2, 0x580
/* CE388 800CD788 3C090D00 */  lui        $t1, 0xd00
/* CE38C 800CD78C 316CFFFF */  andi       $t4, $t3, 0xffff
/* CE390 800CD790 3C0D0600 */  lui        $t5, 0x600
/* CE394 800CD794 AC480004 */  sw         $t0, 4($v0)
/* CE398 800CD798 AC430000 */  sw         $v1, ($v0)
/* CE39C 800CD79C AC490008 */  sw         $t1, 8($v0)
/* CE3A0 800CD7A0 AC4A000C */  sw         $t2, 0xc($v0)
/* CE3A4 800CD7A4 AC4C0014 */  sw         $t4, 0x14($v0)
/* CE3A8 800CD7A8 AC430010 */  sw         $v1, 0x10($v0)
/* CE3AC 800CD7AC AC4D0018 */  sw         $t5, 0x18($v0)
/* CE3B0 800CD7B0 8FAE0020 */  lw         $t6, 0x20($sp)
/* CE3B4 800CD7B4 24420020 */  addiu      $v0, $v0, 0x20
/* CE3B8 800CD7B8 8DCF0014 */  lw         $t7, 0x14($t6)
/* CE3BC 800CD7BC AC4FFFFC */  sw         $t7, -4($v0)
/* CE3C0 800CD7C0 8FBF001C */  lw         $ra, 0x1c($sp)
/* CE3C4 800CD7C4 27BD0020 */  addiu      $sp, $sp, 0x20
/* CE3C8 800CD7C8 03E00008 */  jr         $ra
/* CE3CC 800CD7CC 00000000 */   nop

glabel func_800CD7D0
/* CE3D0 800CD7D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CE3D4 800CD7D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CE3D8 800CD7D8 8C8E0000 */  lw         $t6, ($a0)
/* CE3DC 800CD7DC 00803825 */  or         $a3, $a0, $zero
/* CE3E0 800CD7E0 24040001 */  addiu      $a0, $zero, 1
/* CE3E4 800CD7E4 51C0001E */  beql       $t6, $zero, .L800CD860
/* CE3E8 800CD7E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* CE3EC 800CD7EC AFA50024 */  sw         $a1, 0x24($sp)
/* CE3F0 800CD7F0 AFA00018 */  sw         $zero, 0x18($sp)
/* CE3F4 800CD7F4 0C030284 */  jal        func_800C0A10
/* CE3F8 800CD7F8 AFA70020 */   sw        $a3, 0x20($sp)
/* CE3FC 800CD7FC 8FA70020 */  lw         $a3, 0x20($sp)
/* CE400 800CD800 8FA50024 */  lw         $a1, 0x24($sp)
/* CE404 800CD804 8FA60018 */  lw         $a2, 0x18($sp)
/* CE408 800CD808 8CE30000 */  lw         $v1, ($a3)
/* CE40C 800CD80C 00402025 */  or         $a0, $v0, $zero
/* CE410 800CD810 10600010 */  beqz       $v1, .L800CD854
/* CE414 800CD814 00000000 */   nop
.L800CD818:
/* CE418 800CD818 5465000B */  bnel       $v1, $a1, .L800CD848
/* CE41C 800CD81C 00603025 */   or        $a2, $v1, $zero
/* CE420 800CD820 50C00005 */  beql       $a2, $zero, .L800CD838
/* CE424 800CD824 8C780000 */   lw        $t8, ($v1)
/* CE428 800CD828 8C6F0000 */  lw         $t7, ($v1)
/* CE42C 800CD82C 10000003 */  b          .L800CD83C
/* CE430 800CD830 ACCF0000 */   sw        $t7, ($a2)
/* CE434 800CD834 8C780000 */  lw         $t8, ($v1)
.L800CD838:
/* CE438 800CD838 ACF80000 */  sw         $t8, ($a3)
.L800CD83C:
/* CE43C 800CD83C 10000005 */  b          .L800CD854
/* CE440 800CD840 ACA00000 */   sw        $zero, ($a1)
/* CE444 800CD844 00603025 */  or         $a2, $v1, $zero
.L800CD848:
/* CE448 800CD848 8C630000 */  lw         $v1, ($v1)
/* CE44C 800CD84C 1460FFF2 */  bnez       $v1, .L800CD818
/* CE450 800CD850 00000000 */   nop
.L800CD854:
/* CE454 800CD854 0C030284 */  jal        func_800C0A10
/* CE458 800CD858 00000000 */   nop
/* CE45C 800CD85C 8FBF0014 */  lw         $ra, 0x14($sp)
.L800CD860:
/* CE460 800CD860 27BD0020 */  addiu      $sp, $sp, 0x20
/* CE464 800CD864 03E00008 */  jr         $ra
/* CE468 800CD868 00000000 */   nop
/* CE46C 800CD86C 00000000 */  nop

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AE530
/* AF130 800AE530 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AF134 800AE534 AFBF001C */  sw         $ra, 0x1c($sp)
/* AF138 800AE538 AFA40030 */  sw         $a0, 0x30($sp)
/* AF13C 800AE53C AFA50034 */  sw         $a1, 0x34($sp)
/* AF140 800AE540 AFA60038 */  sw         $a2, 0x38($sp)
/* AF144 800AE544 AFA7003C */  sw         $a3, 0x3c($sp)
/* AF148 800AE548 AFB00018 */  sw         $s0, 0x18($sp)
/* AF14C 800AE54C 8FAE0034 */  lw         $t6, 0x34($sp)
/* AF150 800AE550 11C0000A */  beqz       $t6, .L800AE57C
/* AF154 800AE554 00000000 */   nop
/* AF158 800AE558 24010001 */  addiu      $at, $zero, 1
/* AF15C 800AE55C 11C10007 */  beq        $t6, $at, .L800AE57C
/* AF160 800AE560 00000000 */   nop
/* AF164 800AE564 24040015 */  addiu      $a0, $zero, 0x15
/* AF168 800AE568 24050001 */  addiu      $a1, $zero, 1
/* AF16C 800AE56C 0C02B5EC */  jal        func_800AD7B0
/* AF170 800AE570 8FA60034 */   lw        $a2, 0x34($sp)
/* AF174 800AE574 100000CE */  b          .L800AE8B0
/* AF178 800AE578 2402FFFF */   addiu     $v0, $zero, -1
.L800AE57C:
/* AF17C 800AE57C 8FAF0038 */  lw         $t7, 0x38($sp)
/* AF180 800AE580 31F80001 */  andi       $t8, $t7, 1
/* AF184 800AE584 13000007 */  beqz       $t8, .L800AE5A4
/* AF188 800AE588 00000000 */   nop
/* AF18C 800AE58C 24040016 */  addiu      $a0, $zero, 0x16
/* AF190 800AE590 24050001 */  addiu      $a1, $zero, 1
/* AF194 800AE594 0C02B5EC */  jal        func_800AD7B0
/* AF198 800AE598 8FA60038 */   lw        $a2, 0x38($sp)
/* AF19C 800AE59C 100000C4 */  b          .L800AE8B0
/* AF1A0 800AE5A0 2402FFFF */   addiu     $v0, $zero, -1
.L800AE5A4:
/* AF1A4 800AE5A4 8FB9003C */  lw         $t9, 0x3c($sp)
/* AF1A8 800AE5A8 33280007 */  andi       $t0, $t9, 7
/* AF1AC 800AE5AC 11000007 */  beqz       $t0, .L800AE5CC
/* AF1B0 800AE5B0 00000000 */   nop
/* AF1B4 800AE5B4 24040017 */  addiu      $a0, $zero, 0x17
/* AF1B8 800AE5B8 24050001 */  addiu      $a1, $zero, 1
/* AF1BC 800AE5BC 0C02B5EC */  jal        func_800AD7B0
/* AF1C0 800AE5C0 8FA6003C */   lw        $a2, 0x3c($sp)
/* AF1C4 800AE5C4 100000BA */  b          .L800AE8B0
/* AF1C8 800AE5C8 2402FFFF */   addiu     $v0, $zero, -1
.L800AE5CC:
/* AF1CC 800AE5CC 8FA90040 */  lw         $t1, 0x40($sp)
/* AF1D0 800AE5D0 312A0001 */  andi       $t2, $t1, 1
/* AF1D4 800AE5D4 11400007 */  beqz       $t2, .L800AE5F4
/* AF1D8 800AE5D8 00000000 */   nop
/* AF1DC 800AE5DC 24040018 */  addiu      $a0, $zero, 0x18
/* AF1E0 800AE5E0 24050001 */  addiu      $a1, $zero, 1
/* AF1E4 800AE5E4 0C02B5EC */  jal        func_800AD7B0
/* AF1E8 800AE5E8 8FA60040 */   lw        $a2, 0x40($sp)
/* AF1EC 800AE5EC 100000B0 */  b          .L800AE8B0
/* AF1F0 800AE5F0 2402FFFF */   addiu     $v0, $zero, -1
.L800AE5F4:
/* AF1F4 800AE5F4 8FAB0040 */  lw         $t3, 0x40($sp)
/* AF1F8 800AE5F8 11600006 */  beqz       $t3, .L800AE614
/* AF1FC 800AE5FC 00000000 */   nop
/* AF200 800AE600 3C010100 */  lui        $at, 0x100
/* AF204 800AE604 34210001 */  ori        $at, $at, 1
/* AF208 800AE608 0161082B */  sltu       $at, $t3, $at
/* AF20C 800AE60C 14200007 */  bnez       $at, .L800AE62C
/* AF210 800AE610 00000000 */   nop
.L800AE614:
/* AF214 800AE614 24040019 */  addiu      $a0, $zero, 0x19
/* AF218 800AE618 24050001 */  addiu      $a1, $zero, 1
/* AF21C 800AE61C 0C02B5EC */  jal        func_800AD7B0
/* AF220 800AE620 8FA60040 */   lw        $a2, 0x40($sp)
/* AF224 800AE624 100000A2 */  b          .L800AE8B0
/* AF228 800AE628 2402FFFF */   addiu     $v0, $zero, -1
.L800AE62C:
/* AF22C 800AE62C 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* AF230 800AE630 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* AF234 800AE634 AFAD002C */  sw         $t5, 0x2c($sp)
/* AF238 800AE638 8FAE002C */  lw         $t6, 0x2c($sp)
/* AF23C 800AE63C 31CF0003 */  andi       $t7, $t6, 3
/* AF240 800AE640 11E00008 */  beqz       $t7, .L800AE664
/* AF244 800AE644 00000000 */   nop
.L800AE648:
/* AF248 800AE648 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* AF24C 800AE64C 8F190010 */  lw         $t9, %lo(D_A4600010)($t8)
/* AF250 800AE650 AFB9002C */  sw         $t9, 0x2c($sp)
/* AF254 800AE654 8FA8002C */  lw         $t0, 0x2c($sp)
/* AF258 800AE658 31090003 */  andi       $t1, $t0, 3
/* AF25C 800AE65C 1520FFFA */  bnez       $t1, .L800AE648
/* AF260 800AE660 00000000 */   nop
.L800AE664:
/* AF264 800AE664 8FAA0030 */  lw         $t2, 0x30($sp)
/* AF268 800AE668 914B0009 */  lbu        $t3, 9($t2)
/* AF26C 800AE66C AFAB0028 */  sw         $t3, 0x28($sp)
/* AF270 800AE670 8FAC0028 */  lw         $t4, 0x28($sp)
/* AF274 800AE674 3C0E800D */  lui        $t6, %hi(D_800CD320)
/* AF278 800AE678 8FAF0030 */  lw         $t7, 0x30($sp)
/* AF27C 800AE67C 000C6880 */  sll        $t5, $t4, 2
/* AF280 800AE680 01CD7021 */  addu       $t6, $t6, $t5
/* AF284 800AE684 8DCED320 */  lw         $t6, %lo(D_800CD320)($t6)
/* AF288 800AE688 11CF0062 */  beq        $t6, $t7, .L800AE814
/* AF28C 800AE68C 00000000 */   nop
/* AF290 800AE690 8FB80028 */  lw         $t8, 0x28($sp)
/* AF294 800AE694 3C08800D */  lui        $t0, %hi(D_800CD320)
/* AF298 800AE698 0018C880 */  sll        $t9, $t8, 2
/* AF29C 800AE69C 01194021 */  addu       $t0, $t0, $t9
/* AF2A0 800AE6A0 8D08D320 */  lw         $t0, %lo(D_800CD320)($t0)
/* AF2A4 800AE6A4 AFA80024 */  sw         $t0, 0x24($sp)
/* AF2A8 800AE6A8 8FA90028 */  lw         $t1, 0x28($sp)
/* AF2AC 800AE6AC 1520002B */  bnez       $t1, .L800AE75C
/* AF2B0 800AE6B0 00000000 */   nop
/* AF2B4 800AE6B4 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF2B8 800AE6B8 8FAC0030 */  lw         $t4, 0x30($sp)
/* AF2BC 800AE6BC 914B0005 */  lbu        $t3, 5($t2)
/* AF2C0 800AE6C0 918D0005 */  lbu        $t5, 5($t4)
/* AF2C4 800AE6C4 116D0005 */  beq        $t3, $t5, .L800AE6DC
/* AF2C8 800AE6C8 00000000 */   nop
/* AF2CC 800AE6CC 8FAE0030 */  lw         $t6, 0x30($sp)
/* AF2D0 800AE6D0 3C18A460 */  lui        $t8, %hi(D_A4600014)
/* AF2D4 800AE6D4 91CF0005 */  lbu        $t7, 5($t6)
/* AF2D8 800AE6D8 AF0F0014 */  sw         $t7, %lo(D_A4600014)($t8)
.L800AE6DC:
/* AF2DC 800AE6DC 8FB90024 */  lw         $t9, 0x24($sp)
/* AF2E0 800AE6E0 8FA90030 */  lw         $t1, 0x30($sp)
/* AF2E4 800AE6E4 93280006 */  lbu        $t0, 6($t9)
/* AF2E8 800AE6E8 912A0006 */  lbu        $t2, 6($t1)
/* AF2EC 800AE6EC 110A0005 */  beq        $t0, $t2, .L800AE704
/* AF2F0 800AE6F0 00000000 */   nop
/* AF2F4 800AE6F4 8FAC0030 */  lw         $t4, 0x30($sp)
/* AF2F8 800AE6F8 3C0DA460 */  lui        $t5, %hi(D_A460001C)
/* AF2FC 800AE6FC 918B0006 */  lbu        $t3, 6($t4)
/* AF300 800AE700 ADAB001C */  sw         $t3, %lo(D_A460001C)($t5)
.L800AE704:
/* AF304 800AE704 8FAE0024 */  lw         $t6, 0x24($sp)
/* AF308 800AE708 8FB80030 */  lw         $t8, 0x30($sp)
/* AF30C 800AE70C 91CF0007 */  lbu        $t7, 7($t6)
/* AF310 800AE710 93190007 */  lbu        $t9, 7($t8)
/* AF314 800AE714 11F90005 */  beq        $t7, $t9, .L800AE72C
/* AF318 800AE718 00000000 */   nop
/* AF31C 800AE71C 8FA90030 */  lw         $t1, 0x30($sp)
/* AF320 800AE720 3C0AA460 */  lui        $t2, %hi(D_A4600020)
/* AF324 800AE724 91280007 */  lbu        $t0, 7($t1)
/* AF328 800AE728 AD480020 */  sw         $t0, %lo(D_A4600020)($t2)
.L800AE72C:
/* AF32C 800AE72C 8FAC0024 */  lw         $t4, 0x24($sp)
/* AF330 800AE730 8FAD0030 */  lw         $t5, 0x30($sp)
/* AF334 800AE734 918B0008 */  lbu        $t3, 8($t4)
/* AF338 800AE738 91AE0008 */  lbu        $t6, 8($t5)
/* AF33C 800AE73C 116E0005 */  beq        $t3, $t6, .L800AE754
/* AF340 800AE740 00000000 */   nop
/* AF344 800AE744 8FB80030 */  lw         $t8, 0x30($sp)
/* AF348 800AE748 3C19A460 */  lui        $t9, %hi(D_A4600018)
/* AF34C 800AE74C 930F0008 */  lbu        $t7, 8($t8)
/* AF350 800AE750 AF2F0018 */  sw         $t7, %lo(D_A4600018)($t9)
.L800AE754:
/* AF354 800AE754 10000029 */  b          .L800AE7FC
/* AF358 800AE758 00000000 */   nop
.L800AE75C:
/* AF35C 800AE75C 8FA90024 */  lw         $t1, 0x24($sp)
/* AF360 800AE760 8FAA0030 */  lw         $t2, 0x30($sp)
/* AF364 800AE764 91280005 */  lbu        $t0, 5($t1)
/* AF368 800AE768 914C0005 */  lbu        $t4, 5($t2)
/* AF36C 800AE76C 110C0005 */  beq        $t0, $t4, .L800AE784
/* AF370 800AE770 00000000 */   nop
/* AF374 800AE774 8FAD0030 */  lw         $t5, 0x30($sp)
/* AF378 800AE778 3C0EA460 */  lui        $t6, %hi(D_A4600024)
/* AF37C 800AE77C 91AB0005 */  lbu        $t3, 5($t5)
/* AF380 800AE780 ADCB0024 */  sw         $t3, %lo(D_A4600024)($t6)
.L800AE784:
/* AF384 800AE784 8FB80024 */  lw         $t8, 0x24($sp)
/* AF388 800AE788 8FB90030 */  lw         $t9, 0x30($sp)
/* AF38C 800AE78C 930F0006 */  lbu        $t7, 6($t8)
/* AF390 800AE790 93290006 */  lbu        $t1, 6($t9)
/* AF394 800AE794 11E90005 */  beq        $t7, $t1, .L800AE7AC
/* AF398 800AE798 00000000 */   nop
/* AF39C 800AE79C 8FAA0030 */  lw         $t2, 0x30($sp)
/* AF3A0 800AE7A0 3C0CA460 */  lui        $t4, %hi(D_A460002C)
/* AF3A4 800AE7A4 91480006 */  lbu        $t0, 6($t2)
/* AF3A8 800AE7A8 AD88002C */  sw         $t0, %lo(D_A460002C)($t4)
.L800AE7AC:
/* AF3AC 800AE7AC 8FAD0024 */  lw         $t5, 0x24($sp)
/* AF3B0 800AE7B0 8FAE0030 */  lw         $t6, 0x30($sp)
/* AF3B4 800AE7B4 91AB0007 */  lbu        $t3, 7($t5)
/* AF3B8 800AE7B8 91D80007 */  lbu        $t8, 7($t6)
/* AF3BC 800AE7BC 11780005 */  beq        $t3, $t8, .L800AE7D4
/* AF3C0 800AE7C0 00000000 */   nop
/* AF3C4 800AE7C4 8FB90030 */  lw         $t9, 0x30($sp)
/* AF3C8 800AE7C8 3C09A460 */  lui        $t1, %hi(D_A4600030)
/* AF3CC 800AE7CC 932F0007 */  lbu        $t7, 7($t9)
/* AF3D0 800AE7D0 AD2F0030 */  sw         $t7, %lo(D_A4600030)($t1)
.L800AE7D4:
/* AF3D4 800AE7D4 8FAA0024 */  lw         $t2, 0x24($sp)
/* AF3D8 800AE7D8 8FAC0030 */  lw         $t4, 0x30($sp)
/* AF3DC 800AE7DC 91480008 */  lbu        $t0, 8($t2)
/* AF3E0 800AE7E0 918D0008 */  lbu        $t5, 8($t4)
/* AF3E4 800AE7E4 110D0005 */  beq        $t0, $t5, .L800AE7FC
/* AF3E8 800AE7E8 00000000 */   nop
/* AF3EC 800AE7EC 8FAE0030 */  lw         $t6, 0x30($sp)
/* AF3F0 800AE7F0 3C18A460 */  lui        $t8, %hi(D_A4600028)
/* AF3F4 800AE7F4 91CB0008 */  lbu        $t3, 8($t6)
/* AF3F8 800AE7F8 AF0B0028 */  sw         $t3, %lo(D_A4600028)($t8)
.L800AE7FC:
/* AF3FC 800AE7FC 8FAF0028 */  lw         $t7, 0x28($sp)
/* AF400 800AE800 8FB90030 */  lw         $t9, 0x30($sp)
/* AF404 800AE804 3C01800D */  lui        $at, %hi(D_800CD320)
/* AF408 800AE808 000F4880 */  sll        $t1, $t7, 2
/* AF40C 800AE80C 00290821 */  addu       $at, $at, $t1
/* AF410 800AE810 AC39D320 */  sw         $t9, %lo(D_800CD320)($at)
.L800AE814:
/* AF414 800AE814 0C027C0C */  jal        func_8009F030
/* AF418 800AE818 8FA4003C */   lw        $a0, 0x3c($sp)
/* AF41C 800AE81C 3C0AA460 */  lui        $t2, 0xa460
/* AF420 800AE820 AD420000 */  sw         $v0, ($t2)
/* AF424 800AE824 8FAC0030 */  lw         $t4, 0x30($sp)
/* AF428 800AE828 8FAD0038 */  lw         $t5, 0x38($sp)
/* AF42C 800AE82C 3C011FFF */  lui        $at, 0x1fff
/* AF430 800AE830 8D88000C */  lw         $t0, 0xc($t4)
/* AF434 800AE834 3421FFFF */  ori        $at, $at, 0xffff
/* AF438 800AE838 3C18A460 */  lui        $t8, %hi(D_A4600004)
/* AF43C 800AE83C 010D7025 */  or         $t6, $t0, $t5
/* AF440 800AE840 01C15824 */  and        $t3, $t6, $at
/* AF444 800AE844 AF0B0004 */  sw         $t3, %lo(D_A4600004)($t8)
/* AF448 800AE848 8FB00034 */  lw         $s0, 0x34($sp)
/* AF44C 800AE84C 12000006 */  beqz       $s0, .L800AE868
/* AF450 800AE850 00000000 */   nop
/* AF454 800AE854 24010001 */  addiu      $at, $zero, 1
/* AF458 800AE858 12010009 */  beq        $s0, $at, .L800AE880
/* AF45C 800AE85C 00000000 */   nop
/* AF460 800AE860 1000000D */  b          .L800AE898
/* AF464 800AE864 00000000 */   nop
.L800AE868:
/* AF468 800AE868 8FAF0040 */  lw         $t7, 0x40($sp)
/* AF46C 800AE86C 3C09A460 */  lui        $t1, %hi(D_A460000C)
/* AF470 800AE870 25F9FFFF */  addiu      $t9, $t7, -1
/* AF474 800AE874 AD39000C */  sw         $t9, %lo(D_A460000C)($t1)
/* AF478 800AE878 10000009 */  b          .L800AE8A0
/* AF47C 800AE87C 00000000 */   nop
.L800AE880:
/* AF480 800AE880 8FAA0040 */  lw         $t2, 0x40($sp)
/* AF484 800AE884 3C08A460 */  lui        $t0, %hi(D_A4600008)
/* AF488 800AE888 254CFFFF */  addiu      $t4, $t2, -1
/* AF48C 800AE88C AD0C0008 */  sw         $t4, %lo(D_A4600008)($t0)
/* AF490 800AE890 10000003 */  b          .L800AE8A0
/* AF494 800AE894 00000000 */   nop
.L800AE898:
/* AF498 800AE898 10000005 */  b          .L800AE8B0
/* AF49C 800AE89C 2402FFFF */   addiu     $v0, $zero, -1
.L800AE8A0:
/* AF4A0 800AE8A0 10000003 */  b          .L800AE8B0
/* AF4A4 800AE8A4 00001025 */   or        $v0, $zero, $zero
/* AF4A8 800AE8A8 10000001 */  b          .L800AE8B0
/* AF4AC 800AE8AC 00000000 */   nop
.L800AE8B0:
/* AF4B0 800AE8B0 8FBF001C */  lw         $ra, 0x1c($sp)
/* AF4B4 800AE8B4 8FB00018 */  lw         $s0, 0x18($sp)
/* AF4B8 800AE8B8 27BD0030 */  addiu      $sp, $sp, 0x30
/* AF4BC 800AE8BC 03E00008 */  jr         $ra
/* AF4C0 800AE8C0 00000000 */   nop
/* AF4C4 800AE8C4 00000000 */  nop
/* AF4C8 800AE8C8 00000000 */  nop
/* AF4CC 800AE8CC 00000000 */  nop

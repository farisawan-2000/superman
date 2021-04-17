.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CC550
/* CD150 800CC550 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD154 800CC554 AFA50020 */  sw         $a1, 0x20($sp)
/* CD158 800CC558 AFBF0014 */  sw         $ra, 0x14($sp)
/* CD15C 800CC55C 30AE00FF */  andi       $t6, $a1, 0xff
/* CD160 800CC560 29C10026 */  slti       $at, $t6, 0x26
/* CD164 800CC564 01C02825 */  or         $a1, $t6, $zero
/* CD168 800CC568 AE00000C */  sw         $zero, 0xc($s0)
/* CD16C 800CC56C AE000010 */  sw         $zero, 0x10($s0)
/* CD170 800CC570 AE000014 */  sw         $zero, 0x14($s0)
/* CD174 800CC574 AE000018 */  sw         $zero, 0x18($s0)
/* CD178 800CC578 AE00001C */  sw         $zero, 0x1c($s0)
/* CD17C 800CC57C AE000020 */  sw         $zero, 0x20($s0)
/* CD180 800CC580 1420000A */  bnez       $at, .L800CC5AC
/* CD184 800CC584 01C01825 */   or        $v1, $t6, $zero
/* CD188 800CC588 25CFFFBB */  addiu      $t7, $t6, -0x45
/* CD18C 800CC58C 2DE10034 */  sltiu      $at, $t7, 0x34
/* CD190 800CC590 10200181 */  beqz       $at, .L800CCB98
/* CD194 800CC594 000F7880 */   sll       $t7, $t7, 2
/* CD198 800CC598 3C01800E */  lui        $at, %hi(D_800DFD54)
/* CD19C 800CC59C 002F0821 */  addu       $at, $at, $t7
/* CD1A0 800CC5A0 8C2FFD54 */  lw         $t7, %lo(D_800DFD54)($at)
/* CD1A4 800CC5A4 01E00008 */  jr         $t7
/* CD1A8 800CC5A8 00000000 */   nop
.L800CC5AC:
/* CD1AC 800CC5AC 24010025 */  addiu      $at, $zero, 0x25
/* CD1B0 800CC5B0 50610172 */  beql       $v1, $at, .L800CCB7C
/* CD1B4 800CC5B4 8E18000C */   lw        $t8, 0xc($s0)
/* CD1B8 800CC5B8 10000178 */  b          .L800CCB9C
/* CD1BC 800CC5BC 8E0E000C */   lw        $t6, 0xc($s0)
/* CD1C0 800CC5C0 8CD80000 */  lw         $t8, ($a2)
/* CD1C4 800CC5C4 2401FFFC */  addiu      $at, $zero, -4
/* CD1C8 800CC5C8 27190003 */  addiu      $t9, $t8, 3
/* CD1CC 800CC5CC 03217024 */  and        $t6, $t9, $at
/* CD1D0 800CC5D0 25CF0004 */  addiu      $t7, $t6, 4
/* CD1D4 800CC5D4 ACCF0000 */  sw         $t7, ($a2)
/* CD1D8 800CC5D8 8E0E000C */  lw         $t6, 0xc($s0)
/* CD1DC 800CC5DC 8DF9FFFC */  lw         $t9, -4($t7)
/* CD1E0 800CC5E0 00EE7821 */  addu       $t7, $a3, $t6
/* CD1E4 800CC5E4 A1F90000 */  sb         $t9, ($t7)
/* CD1E8 800CC5E8 8E18000C */  lw         $t8, 0xc($s0)
/* CD1EC 800CC5EC 270E0001 */  addiu      $t6, $t8, 1
/* CD1F0 800CC5F0 1000016F */  b          .L800CCBB0
/* CD1F4 800CC5F4 AE0E000C */   sw        $t6, 0xc($s0)
/* CD1F8 800CC5F8 92020034 */  lbu        $v0, 0x34($s0)
/* CD1FC 800CC5FC 2401006C */  addiu      $at, $zero, 0x6c
/* CD200 800CC600 5441000D */  bnel       $v0, $at, .L800CC638
/* CD204 800CC604 2401004C */   addiu     $at, $zero, 0x4c
/* CD208 800CC608 8CD90000 */  lw         $t9, ($a2)
/* CD20C 800CC60C 2401FFFC */  addiu      $at, $zero, -4
/* CD210 800CC610 272F0003 */  addiu      $t7, $t9, 3
/* CD214 800CC614 01E1C024 */  and        $t8, $t7, $at
/* CD218 800CC618 270E0004 */  addiu      $t6, $t8, 4
/* CD21C 800CC61C ACCE0000 */  sw         $t6, ($a2)
/* CD220 800CC620 8DCFFFFC */  lw         $t7, -4($t6)
/* CD224 800CC624 000FC7C3 */  sra        $t8, $t7, 0x1f
/* CD228 800CC628 AE180000 */  sw         $t8, ($s0)
/* CD22C 800CC62C 10000019 */  b          .L800CC694
/* CD230 800CC630 AE0F0004 */   sw        $t7, 4($s0)
/* CD234 800CC634 2401004C */  addiu      $at, $zero, 0x4c
.L800CC638:
/* CD238 800CC638 5441000D */  bnel       $v0, $at, .L800CC670
/* CD23C 800CC63C 8CCF0000 */   lw        $t7, ($a2)
/* CD240 800CC640 8CCE0000 */  lw         $t6, ($a2)
/* CD244 800CC644 2401FFF8 */  addiu      $at, $zero, -8
/* CD248 800CC648 25CF0007 */  addiu      $t7, $t6, 7
/* CD24C 800CC64C 01E1C024 */  and        $t8, $t7, $at
/* CD250 800CC650 27190008 */  addiu      $t9, $t8, 8
/* CD254 800CC654 ACD90000 */  sw         $t9, ($a2)
/* CD258 800CC658 8F38FFF8 */  lw         $t8, -8($t9)
/* CD25C 800CC65C 8F39FFFC */  lw         $t9, -4($t9)
/* CD260 800CC660 AE180000 */  sw         $t8, ($s0)
/* CD264 800CC664 1000000B */  b          .L800CC694
/* CD268 800CC668 AE190004 */   sw        $t9, 4($s0)
/* CD26C 800CC66C 8CCF0000 */  lw         $t7, ($a2)
.L800CC670:
/* CD270 800CC670 2401FFFC */  addiu      $at, $zero, -4
/* CD274 800CC674 25EE0003 */  addiu      $t6, $t7, 3
/* CD278 800CC678 01C1C024 */  and        $t8, $t6, $at
/* CD27C 800CC67C 27190004 */  addiu      $t9, $t8, 4
/* CD280 800CC680 ACD90000 */  sw         $t9, ($a2)
/* CD284 800CC684 8F2EFFFC */  lw         $t6, -4($t9)
/* CD288 800CC688 000EC7C3 */  sra        $t8, $t6, 0x1f
/* CD28C 800CC68C AE180000 */  sw         $t8, ($s0)
/* CD290 800CC690 AE0E0004 */  sw         $t6, 4($s0)
.L800CC694:
/* CD294 800CC694 920F0034 */  lbu        $t7, 0x34($s0)
/* CD298 800CC698 24010068 */  addiu      $at, $zero, 0x68
/* CD29C 800CC69C 55E10008 */  bnel       $t7, $at, .L800CC6C0
/* CD2A0 800CC6A0 8E0E0000 */   lw        $t6, ($s0)
/* CD2A4 800CC6A4 8E0F0004 */  lw         $t7, 4($s0)
/* CD2A8 800CC6A8 000FCC00 */  sll        $t9, $t7, 0x10
/* CD2AC 800CC6AC 00197403 */  sra        $t6, $t9, 0x10
/* CD2B0 800CC6B0 000EC7C3 */  sra        $t8, $t6, 0x1f
/* CD2B4 800CC6B4 AE180000 */  sw         $t8, ($s0)
/* CD2B8 800CC6B8 AE0E0004 */  sw         $t6, 4($s0)
/* CD2BC 800CC6BC 8E0E0000 */  lw         $t6, ($s0)
.L800CC6C0:
/* CD2C0 800CC6C0 5DC0000E */  bgtzl      $t6, .L800CC6FC
/* CD2C4 800CC6C4 8E020030 */   lw        $v0, 0x30($s0)
/* CD2C8 800CC6C8 05C20004 */  bltzl      $t6, .L800CC6DC
/* CD2CC 800CC6CC 8E19000C */   lw        $t9, 0xc($s0)
/* CD2D0 800CC6D0 1000000A */  b          .L800CC6FC
/* CD2D4 800CC6D4 8E020030 */   lw        $v0, 0x30($s0)
/* CD2D8 800CC6D8 8E19000C */  lw         $t9, 0xc($s0)
.L800CC6DC:
/* CD2DC 800CC6DC 2418002D */  addiu      $t8, $zero, 0x2d
/* CD2E0 800CC6E0 00F97021 */  addu       $t6, $a3, $t9
/* CD2E4 800CC6E4 A1D80000 */  sb         $t8, ($t6)
/* CD2E8 800CC6E8 8E0F000C */  lw         $t7, 0xc($s0)
/* CD2EC 800CC6EC 25F90001 */  addiu      $t9, $t7, 1
/* CD2F0 800CC6F0 10000016 */  b          .L800CC74C
/* CD2F4 800CC6F4 AE19000C */   sw        $t9, 0xc($s0)
/* CD2F8 800CC6F8 8E020030 */  lw         $v0, 0x30($s0)
.L800CC6FC:
/* CD2FC 800CC6FC 30580002 */  andi       $t8, $v0, 2
/* CD300 800CC700 13000009 */  beqz       $t8, .L800CC728
/* CD304 800CC704 304E0001 */   andi      $t6, $v0, 1
/* CD308 800CC708 8E0F000C */  lw         $t7, 0xc($s0)
/* CD30C 800CC70C 240E002B */  addiu      $t6, $zero, 0x2b
/* CD310 800CC710 00EFC821 */  addu       $t9, $a3, $t7
/* CD314 800CC714 A32E0000 */  sb         $t6, ($t9)
/* CD318 800CC718 8E18000C */  lw         $t8, 0xc($s0)
/* CD31C 800CC71C 270F0001 */  addiu      $t7, $t8, 1
/* CD320 800CC720 1000000A */  b          .L800CC74C
/* CD324 800CC724 AE0F000C */   sw        $t7, 0xc($s0)
.L800CC728:
/* CD328 800CC728 51C00009 */  beql       $t6, $zero, .L800CC750
/* CD32C 800CC72C 8E19000C */   lw        $t9, 0xc($s0)
/* CD330 800CC730 8E18000C */  lw         $t8, 0xc($s0)
/* CD334 800CC734 24190020 */  addiu      $t9, $zero, 0x20
/* CD338 800CC738 00F87821 */  addu       $t7, $a3, $t8
/* CD33C 800CC73C A1F90000 */  sb         $t9, ($t7)
/* CD340 800CC740 8E0E000C */  lw         $t6, 0xc($s0)
/* CD344 800CC744 25D80001 */  addiu      $t8, $t6, 1
/* CD348 800CC748 AE18000C */  sw         $t8, 0xc($s0)
.L800CC74C:
/* CD34C 800CC74C 8E19000C */  lw         $t9, 0xc($s0)
.L800CC750:
/* CD350 800CC750 02002025 */  or         $a0, $s0, $zero
/* CD354 800CC754 03277821 */  addu       $t7, $t9, $a3
/* CD358 800CC758 0C034AF0 */  jal        func_800D2BC0
/* CD35C 800CC75C AE0F0008 */   sw        $t7, 8($s0)
/* CD360 800CC760 10000114 */  b          .L800CCBB4
/* CD364 800CC764 8FBF0014 */   lw        $ra, 0x14($sp)
/* CD368 800CC768 92020034 */  lbu        $v0, 0x34($s0)
/* CD36C 800CC76C 2401006C */  addiu      $at, $zero, 0x6c
/* CD370 800CC770 5441000D */  bnel       $v0, $at, .L800CC7A8
/* CD374 800CC774 2401004C */   addiu     $at, $zero, 0x4c
/* CD378 800CC778 8CCE0000 */  lw         $t6, ($a2)
/* CD37C 800CC77C 2401FFFC */  addiu      $at, $zero, -4
/* CD380 800CC780 25D80003 */  addiu      $t8, $t6, 3
/* CD384 800CC784 0301C824 */  and        $t9, $t8, $at
/* CD388 800CC788 272F0004 */  addiu      $t7, $t9, 4
/* CD38C 800CC78C ACCF0000 */  sw         $t7, ($a2)
/* CD390 800CC790 8DF8FFFC */  lw         $t8, -4($t7)
/* CD394 800CC794 001877C3 */  sra        $t6, $t8, 0x1f
/* CD398 800CC798 AE0E0000 */  sw         $t6, ($s0)
/* CD39C 800CC79C 10000019 */  b          .L800CC804
/* CD3A0 800CC7A0 AE180004 */   sw        $t8, 4($s0)
/* CD3A4 800CC7A4 2401004C */  addiu      $at, $zero, 0x4c
.L800CC7A8:
/* CD3A8 800CC7A8 5441000D */  bnel       $v0, $at, .L800CC7E0
/* CD3AC 800CC7AC 8CCE0000 */   lw        $t6, ($a2)
/* CD3B0 800CC7B0 8CD90000 */  lw         $t9, ($a2)
/* CD3B4 800CC7B4 2401FFF8 */  addiu      $at, $zero, -8
/* CD3B8 800CC7B8 27380007 */  addiu      $t8, $t9, 7
/* CD3BC 800CC7BC 03017024 */  and        $t6, $t8, $at
/* CD3C0 800CC7C0 25CF0008 */  addiu      $t7, $t6, 8
/* CD3C4 800CC7C4 ACCF0000 */  sw         $t7, ($a2)
/* CD3C8 800CC7C8 8DF9FFFC */  lw         $t9, -4($t7)
/* CD3CC 800CC7CC 8DF8FFF8 */  lw         $t8, -8($t7)
/* CD3D0 800CC7D0 AE190004 */  sw         $t9, 4($s0)
/* CD3D4 800CC7D4 1000000B */  b          .L800CC804
/* CD3D8 800CC7D8 AE180000 */   sw        $t8, ($s0)
/* CD3DC 800CC7DC 8CCE0000 */  lw         $t6, ($a2)
.L800CC7E0:
/* CD3E0 800CC7E0 2401FFFC */  addiu      $at, $zero, -4
/* CD3E4 800CC7E4 25CF0003 */  addiu      $t7, $t6, 3
/* CD3E8 800CC7E8 01E1C024 */  and        $t8, $t7, $at
/* CD3EC 800CC7EC 27190004 */  addiu      $t9, $t8, 4
/* CD3F0 800CC7F0 ACD90000 */  sw         $t9, ($a2)
/* CD3F4 800CC7F4 8F2FFFFC */  lw         $t7, -4($t9)
/* CD3F8 800CC7F8 000FC7C3 */  sra        $t8, $t7, 0x1f
/* CD3FC 800CC7FC AE180000 */  sw         $t8, ($s0)
/* CD400 800CC800 AE0F0004 */  sw         $t7, 4($s0)
.L800CC804:
/* CD404 800CC804 92020034 */  lbu        $v0, 0x34($s0)
/* CD408 800CC808 24010068 */  addiu      $at, $zero, 0x68
/* CD40C 800CC80C 14410007 */  bne        $v0, $at, .L800CC82C
/* CD410 800CC810 00000000 */   nop
/* CD414 800CC814 8E0F0004 */  lw         $t7, 4($s0)
/* CD418 800CC818 240E0000 */  addiu      $t6, $zero, 0
/* CD41C 800CC81C AE0E0000 */  sw         $t6, ($s0)
/* CD420 800CC820 31F9FFFF */  andi       $t9, $t7, 0xffff
/* CD424 800CC824 10000007 */  b          .L800CC844
/* CD428 800CC828 AE190004 */   sw        $t9, 4($s0)
.L800CC82C:
/* CD42C 800CC82C 54400006 */  bnezl      $v0, .L800CC848
/* CD430 800CC830 8E0F0030 */   lw        $t7, 0x30($s0)
/* CD434 800CC834 8E190004 */  lw         $t9, 4($s0)
/* CD438 800CC838 24180000 */  addiu      $t8, $zero, 0
/* CD43C 800CC83C AE180000 */  sw         $t8, ($s0)
/* CD440 800CC840 AE190004 */  sw         $t9, 4($s0)
.L800CC844:
/* CD444 800CC844 8E0F0030 */  lw         $t7, 0x30($s0)
.L800CC848:
/* CD448 800CC848 31EE0008 */  andi       $t6, $t7, 8
/* CD44C 800CC84C 51C00014 */  beql       $t6, $zero, .L800CC8A0
/* CD450 800CC850 8E18000C */   lw        $t8, 0xc($s0)
/* CD454 800CC854 8E19000C */  lw         $t9, 0xc($s0)
/* CD458 800CC858 24180030 */  addiu      $t8, $zero, 0x30
/* CD45C 800CC85C 24010078 */  addiu      $at, $zero, 0x78
/* CD460 800CC860 00F97821 */  addu       $t7, $a3, $t9
/* CD464 800CC864 A1F80000 */  sb         $t8, ($t7)
/* CD468 800CC868 8E0E000C */  lw         $t6, 0xc($s0)
/* CD46C 800CC86C 25D90001 */  addiu      $t9, $t6, 1
/* CD470 800CC870 10610004 */  beq        $v1, $at, .L800CC884
/* CD474 800CC874 AE19000C */   sw        $t9, 0xc($s0)
/* CD478 800CC878 24010058 */  addiu      $at, $zero, 0x58
/* CD47C 800CC87C 54610008 */  bnel       $v1, $at, .L800CC8A0
/* CD480 800CC880 8E18000C */   lw        $t8, 0xc($s0)
.L800CC884:
/* CD484 800CC884 8E18000C */  lw         $t8, 0xc($s0)
/* CD488 800CC888 00F87821 */  addu       $t7, $a3, $t8
/* CD48C 800CC88C A1E50000 */  sb         $a1, ($t7)
/* CD490 800CC890 8E0E000C */  lw         $t6, 0xc($s0)
/* CD494 800CC894 25D90001 */  addiu      $t9, $t6, 1
/* CD498 800CC898 AE19000C */  sw         $t9, 0xc($s0)
/* CD49C 800CC89C 8E18000C */  lw         $t8, 0xc($s0)
.L800CC8A0:
/* CD4A0 800CC8A0 02002025 */  or         $a0, $s0, $zero
/* CD4A4 800CC8A4 03077821 */  addu       $t7, $t8, $a3
/* CD4A8 800CC8A8 0C034AF0 */  jal        func_800D2BC0
/* CD4AC 800CC8AC AE0F0008 */   sw        $t7, 8($s0)
/* CD4B0 800CC8B0 100000C0 */  b          .L800CCBB4
/* CD4B4 800CC8B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* CD4B8 800CC8B8 920E0034 */  lbu        $t6, 0x34($s0)
/* CD4BC 800CC8BC 2401004C */  addiu      $at, $zero, 0x4c
/* CD4C0 800CC8C0 55C10019 */  bnel       $t6, $at, .L800CC928
/* CD4C4 800CC8C4 8CC20000 */   lw        $v0, ($a2)
/* CD4C8 800CC8C8 8CC20000 */  lw         $v0, ($a2)
/* CD4CC 800CC8CC 30590001 */  andi       $t9, $v0, 1
/* CD4D0 800CC8D0 13200005 */  beqz       $t9, .L800CC8E8
/* CD4D4 800CC8D4 00401825 */   or        $v1, $v0, $zero
/* CD4D8 800CC8D8 24780007 */  addiu      $t8, $v1, 7
/* CD4DC 800CC8DC ACD80000 */  sw         $t8, ($a2)
/* CD4E0 800CC8E0 1000000D */  b          .L800CC918
/* CD4E4 800CC8E4 2702FFEA */   addiu     $v0, $t8, -0x16
.L800CC8E8:
/* CD4E8 800CC8E8 306F0002 */  andi       $t7, $v1, 2
/* CD4EC 800CC8EC 11E00005 */  beqz       $t7, .L800CC904
/* CD4F0 800CC8F0 24590007 */   addiu     $t9, $v0, 7
/* CD4F4 800CC8F4 246E000A */  addiu      $t6, $v1, 0xa
/* CD4F8 800CC8F8 ACCE0000 */  sw         $t6, ($a2)
/* CD4FC 800CC8FC 10000005 */  b          .L800CC914
/* CD500 800CC900 25C4FFD8 */   addiu     $a0, $t6, -0x28
.L800CC904:
/* CD504 800CC904 2401FFF8 */  addiu      $at, $zero, -8
/* CD508 800CC908 0321C024 */  and        $t8, $t9, $at
/* CD50C 800CC90C 27040008 */  addiu      $a0, $t8, 8
/* CD510 800CC910 ACC40000 */  sw         $a0, ($a2)
.L800CC914:
/* CD514 800CC914 00801025 */  or         $v0, $a0, $zero
.L800CC918:
/* CD518 800CC918 D444FFF8 */  ldc1       $f4, -8($v0)
/* CD51C 800CC91C 10000017 */  b          .L800CC97C
/* CD520 800CC920 F6040000 */   sdc1      $f4, ($s0)
/* CD524 800CC924 8CC20000 */  lw         $v0, ($a2)
.L800CC928:
/* CD528 800CC928 304E0001 */  andi       $t6, $v0, 1
/* CD52C 800CC92C 11C00005 */  beqz       $t6, .L800CC944
/* CD530 800CC930 00401825 */   or        $v1, $v0, $zero
/* CD534 800CC934 24790007 */  addiu      $t9, $v1, 7
/* CD538 800CC938 ACD90000 */  sw         $t9, ($a2)
/* CD53C 800CC93C 1000000D */  b          .L800CC974
/* CD540 800CC940 2722FFEA */   addiu     $v0, $t9, -0x16
.L800CC944:
/* CD544 800CC944 30780002 */  andi       $t8, $v1, 2
/* CD548 800CC948 13000005 */  beqz       $t8, .L800CC960
/* CD54C 800CC94C 244E0007 */   addiu     $t6, $v0, 7
/* CD550 800CC950 246F000A */  addiu      $t7, $v1, 0xa
/* CD554 800CC954 ACCF0000 */  sw         $t7, ($a2)
/* CD558 800CC958 10000005 */  b          .L800CC970
/* CD55C 800CC95C 25E4FFD8 */   addiu     $a0, $t7, -0x28
.L800CC960:
/* CD560 800CC960 2401FFF8 */  addiu      $at, $zero, -8
/* CD564 800CC964 01C1C824 */  and        $t9, $t6, $at
/* CD568 800CC968 27240008 */  addiu      $a0, $t9, 8
/* CD56C 800CC96C ACC40000 */  sw         $a0, ($a2)
.L800CC970:
/* CD570 800CC970 00801025 */  or         $v0, $a0, $zero
.L800CC974:
/* CD574 800CC974 D446FFF8 */  ldc1       $f6, -8($v0)
/* CD578 800CC978 F6060000 */  sdc1       $f6, ($s0)
.L800CC97C:
/* CD57C 800CC97C 960F0000 */  lhu        $t7, ($s0)
/* CD580 800CC980 31EE8000 */  andi       $t6, $t7, 0x8000
/* CD584 800CC984 51C0000A */  beql       $t6, $zero, .L800CC9B0
/* CD588 800CC988 8E020030 */   lw        $v0, 0x30($s0)
/* CD58C 800CC98C 8E18000C */  lw         $t8, 0xc($s0)
/* CD590 800CC990 2419002D */  addiu      $t9, $zero, 0x2d
/* CD594 800CC994 00F87821 */  addu       $t7, $a3, $t8
/* CD598 800CC998 A1F90000 */  sb         $t9, ($t7)
/* CD59C 800CC99C 8E0E000C */  lw         $t6, 0xc($s0)
/* CD5A0 800CC9A0 25D80001 */  addiu      $t8, $t6, 1
/* CD5A4 800CC9A4 10000016 */  b          .L800CCA00
/* CD5A8 800CC9A8 AE18000C */   sw        $t8, 0xc($s0)
/* CD5AC 800CC9AC 8E020030 */  lw         $v0, 0x30($s0)
.L800CC9B0:
/* CD5B0 800CC9B0 30590002 */  andi       $t9, $v0, 2
/* CD5B4 800CC9B4 13200009 */  beqz       $t9, .L800CC9DC
/* CD5B8 800CC9B8 304F0001 */   andi      $t7, $v0, 1
/* CD5BC 800CC9BC 8E0E000C */  lw         $t6, 0xc($s0)
/* CD5C0 800CC9C0 240F002B */  addiu      $t7, $zero, 0x2b
/* CD5C4 800CC9C4 00EEC021 */  addu       $t8, $a3, $t6
/* CD5C8 800CC9C8 A30F0000 */  sb         $t7, ($t8)
/* CD5CC 800CC9CC 8E19000C */  lw         $t9, 0xc($s0)
/* CD5D0 800CC9D0 272E0001 */  addiu      $t6, $t9, 1
/* CD5D4 800CC9D4 1000000A */  b          .L800CCA00
/* CD5D8 800CC9D8 AE0E000C */   sw        $t6, 0xc($s0)
.L800CC9DC:
/* CD5DC 800CC9DC 51E00009 */  beql       $t7, $zero, .L800CCA04
/* CD5E0 800CC9E0 8E18000C */   lw        $t8, 0xc($s0)
/* CD5E4 800CC9E4 8E19000C */  lw         $t9, 0xc($s0)
/* CD5E8 800CC9E8 24180020 */  addiu      $t8, $zero, 0x20
/* CD5EC 800CC9EC 00F97021 */  addu       $t6, $a3, $t9
/* CD5F0 800CC9F0 A1D80000 */  sb         $t8, ($t6)
/* CD5F4 800CC9F4 8E0F000C */  lw         $t7, 0xc($s0)
/* CD5F8 800CC9F8 25F90001 */  addiu      $t9, $t7, 1
/* CD5FC 800CC9FC AE19000C */  sw         $t9, 0xc($s0)
.L800CCA00:
/* CD600 800CCA00 8E18000C */  lw         $t8, 0xc($s0)
.L800CCA04:
/* CD604 800CCA04 02002025 */  or         $a0, $s0, $zero
/* CD608 800CCA08 03077021 */  addu       $t6, $t8, $a3
/* CD60C 800CCA0C 0C034938 */  jal        func_800D24E0
/* CD610 800CCA10 AE0E0008 */   sw        $t6, 8($s0)
/* CD614 800CCA14 10000067 */  b          .L800CCBB4
/* CD618 800CCA18 8FBF0014 */   lw        $ra, 0x14($sp)
/* CD61C 800CCA1C 92020034 */  lbu        $v0, 0x34($s0)
/* CD620 800CCA20 24010068 */  addiu      $at, $zero, 0x68
/* CD624 800CCA24 5441000C */  bnel       $v0, $at, .L800CCA58
/* CD628 800CCA28 2401006C */   addiu     $at, $zero, 0x6c
/* CD62C 800CCA2C 8CCF0000 */  lw         $t7, ($a2)
/* CD630 800CCA30 2401FFFC */  addiu      $at, $zero, -4
/* CD634 800CCA34 25F90003 */  addiu      $t9, $t7, 3
/* CD638 800CCA38 0321C024 */  and        $t8, $t9, $at
/* CD63C 800CCA3C 270E0004 */  addiu      $t6, $t8, 4
/* CD640 800CCA40 ACCE0000 */  sw         $t6, ($a2)
/* CD644 800CCA44 8DD9FFFC */  lw         $t9, -4($t6)
/* CD648 800CCA48 8E0F002C */  lw         $t7, 0x2c($s0)
/* CD64C 800CCA4C 10000058 */  b          .L800CCBB0
/* CD650 800CCA50 A72F0000 */   sh        $t7, ($t9)
/* CD654 800CCA54 2401006C */  addiu      $at, $zero, 0x6c
.L800CCA58:
/* CD658 800CCA58 5441000C */  bnel       $v0, $at, .L800CCA8C
/* CD65C 800CCA5C 2401004C */   addiu     $at, $zero, 0x4c
/* CD660 800CCA60 8CD80000 */  lw         $t8, ($a2)
/* CD664 800CCA64 2401FFFC */  addiu      $at, $zero, -4
/* CD668 800CCA68 270E0003 */  addiu      $t6, $t8, 3
/* CD66C 800CCA6C 01C17824 */  and        $t7, $t6, $at
/* CD670 800CCA70 25F90004 */  addiu      $t9, $t7, 4
/* CD674 800CCA74 ACD90000 */  sw         $t9, ($a2)
/* CD678 800CCA78 8F2EFFFC */  lw         $t6, -4($t9)
/* CD67C 800CCA7C 8E18002C */  lw         $t8, 0x2c($s0)
/* CD680 800CCA80 1000004B */  b          .L800CCBB0
/* CD684 800CCA84 ADD80000 */   sw        $t8, ($t6)
/* CD688 800CCA88 2401004C */  addiu      $at, $zero, 0x4c
.L800CCA8C:
/* CD68C 800CCA8C 5441000E */  bnel       $v0, $at, .L800CCAC8
/* CD690 800CCA90 8CCF0000 */   lw        $t7, ($a2)
/* CD694 800CCA94 8CCF0000 */  lw         $t7, ($a2)
/* CD698 800CCA98 2401FFFC */  addiu      $at, $zero, -4
/* CD69C 800CCA9C 25F90003 */  addiu      $t9, $t7, 3
/* CD6A0 800CCAA0 0321C024 */  and        $t8, $t9, $at
/* CD6A4 800CCAA4 270E0004 */  addiu      $t6, $t8, 4
/* CD6A8 800CCAA8 ACCE0000 */  sw         $t6, ($a2)
/* CD6AC 800CCAAC 8DCEFFFC */  lw         $t6, -4($t6)
/* CD6B0 800CCAB0 8E0F002C */  lw         $t7, 0x2c($s0)
/* CD6B4 800CCAB4 24180000 */  addiu      $t8, $zero, 0
/* CD6B8 800CCAB8 ADD80000 */  sw         $t8, ($t6)
/* CD6BC 800CCABC 1000003C */  b          .L800CCBB0
/* CD6C0 800CCAC0 ADCF0004 */   sw        $t7, 4($t6)
/* CD6C4 800CCAC4 8CCF0000 */  lw         $t7, ($a2)
.L800CCAC8:
/* CD6C8 800CCAC8 2401FFFC */  addiu      $at, $zero, -4
/* CD6CC 800CCACC 25F80003 */  addiu      $t8, $t7, 3
/* CD6D0 800CCAD0 0301C824 */  and        $t9, $t8, $at
/* CD6D4 800CCAD4 272E0004 */  addiu      $t6, $t9, 4
/* CD6D8 800CCAD8 ACCE0000 */  sw         $t6, ($a2)
/* CD6DC 800CCADC 8DD8FFFC */  lw         $t8, -4($t6)
/* CD6E0 800CCAE0 8E0F002C */  lw         $t7, 0x2c($s0)
/* CD6E4 800CCAE4 10000032 */  b          .L800CCBB0
/* CD6E8 800CCAE8 AF0F0000 */   sw        $t7, ($t8)
/* CD6EC 800CCAEC 8CD90000 */  lw         $t9, ($a2)
/* CD6F0 800CCAF0 2401FFFC */  addiu      $at, $zero, -4
/* CD6F4 800CCAF4 02002025 */  or         $a0, $s0, $zero
/* CD6F8 800CCAF8 272E0003 */  addiu      $t6, $t9, 3
/* CD6FC 800CCAFC 01C17824 */  and        $t7, $t6, $at
/* CD700 800CCB00 25F80004 */  addiu      $t8, $t7, 4
/* CD704 800CCB04 ACD80000 */  sw         $t8, ($a2)
/* CD708 800CCB08 8F0EFFFC */  lw         $t6, -4($t8)
/* CD70C 800CCB0C 8E0F000C */  lw         $t7, 0xc($s0)
/* CD710 800CCB10 24050078 */  addiu      $a1, $zero, 0x78
/* CD714 800CCB14 000EC7C3 */  sra        $t8, $t6, 0x1f
/* CD718 800CCB18 AE0E0004 */  sw         $t6, 4($s0)
/* CD71C 800CCB1C 01E77021 */  addu       $t6, $t7, $a3
/* CD720 800CCB20 AE180000 */  sw         $t8, ($s0)
/* CD724 800CCB24 0C034AF0 */  jal        func_800D2BC0
/* CD728 800CCB28 AE0E0008 */   sw        $t6, 8($s0)
/* CD72C 800CCB2C 10000021 */  b          .L800CCBB4
/* CD730 800CCB30 8FBF0014 */   lw        $ra, 0x14($sp)
/* CD734 800CCB34 8CD80000 */  lw         $t8, ($a2)
/* CD738 800CCB38 2401FFFC */  addiu      $at, $zero, -4
/* CD73C 800CCB3C 27190003 */  addiu      $t9, $t8, 3
/* CD740 800CCB40 03217824 */  and        $t7, $t9, $at
/* CD744 800CCB44 25EE0004 */  addiu      $t6, $t7, 4
/* CD748 800CCB48 ACCE0000 */  sw         $t6, ($a2)
/* CD74C 800CCB4C 8DC4FFFC */  lw         $a0, -4($t6)
/* CD750 800CCB50 0C033527 */  jal        func_800CD49C
/* CD754 800CCB54 AE040008 */   sw        $a0, 8($s0)
/* CD758 800CCB58 8E030024 */  lw         $v1, 0x24($s0)
/* CD75C 800CCB5C AE020014 */  sw         $v0, 0x14($s0)
/* CD760 800CCB60 04600013 */  bltz       $v1, .L800CCBB0
/* CD764 800CCB64 0062082A */   slt       $at, $v1, $v0
/* CD768 800CCB68 50200012 */  beql       $at, $zero, .L800CCBB4
/* CD76C 800CCB6C 8FBF0014 */   lw        $ra, 0x14($sp)
/* CD770 800CCB70 1000000F */  b          .L800CCBB0
/* CD774 800CCB74 AE030014 */   sw        $v1, 0x14($s0)
/* CD778 800CCB78 8E18000C */  lw         $t8, 0xc($s0)
.L800CCB7C:
/* CD77C 800CCB7C 240E0025 */  addiu      $t6, $zero, 0x25
/* CD780 800CCB80 00F8C821 */  addu       $t9, $a3, $t8
/* CD784 800CCB84 A32E0000 */  sb         $t6, ($t9)
/* CD788 800CCB88 8E0F000C */  lw         $t7, 0xc($s0)
/* CD78C 800CCB8C 25F80001 */  addiu      $t8, $t7, 1
/* CD790 800CCB90 10000007 */  b          .L800CCBB0
/* CD794 800CCB94 AE18000C */   sw        $t8, 0xc($s0)
.L800CCB98:
/* CD798 800CCB98 8E0E000C */  lw         $t6, 0xc($s0)
.L800CCB9C:
/* CD79C 800CCB9C 00EEC821 */  addu       $t9, $a3, $t6
/* CD7A0 800CCBA0 A3250000 */  sb         $a1, ($t9)
/* CD7A4 800CCBA4 8E0F000C */  lw         $t7, 0xc($s0)
/* CD7A8 800CCBA8 25F80001 */  addiu      $t8, $t7, 1
/* CD7AC 800CCBAC AE18000C */  sw         $t8, 0xc($s0)
.L800CCBB0:
/* CD7B0 800CCBB0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800CCBB4:
/* CD7B4 800CCBB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* CD7B8 800CCBB8 03E00008 */  jr         $ra
/* CD7BC 800CCBBC 00000000 */   nop

glabel func_800CCBC0
/* CD7C0 800CCBC0 27BDFF28 */  addiu      $sp, $sp, -0xd8
/* CD7C4 800CCBC4 AFB70034 */  sw         $s7, 0x34($sp)
/* CD7C8 800CCBC8 AFB60030 */  sw         $s6, 0x30($sp)
/* CD7CC 800CCBCC AFB5002C */  sw         $s5, 0x2c($sp)
/* CD7D0 800CCBD0 AFBE0038 */  sw         $fp, 0x38($sp)
/* CD7D4 800CCBD4 AFB40028 */  sw         $s4, 0x28($sp)
/* CD7D8 800CCBD8 AFB30024 */  sw         $s3, 0x24($sp)
/* CD7DC 800CCBDC AFA700E4 */  sw         $a3, 0xe4($sp)
/* CD7E0 800CCBE0 3C15800E */  lui        $s5, 0x800e
/* CD7E4 800CCBE4 3C16800E */  lui        $s6, 0x800e
/* CD7E8 800CCBE8 3C17800E */  lui        $s7, 0x800e
/* CD7EC 800CCBEC 00C03825 */  or         $a3, $a2, $zero
/* CD7F0 800CCBF0 00A09825 */  or         $s3, $a1, $zero
/* CD7F4 800CCBF4 0080A025 */  or         $s4, $a0, $zero
/* CD7F8 800CCBF8 AFBF003C */  sw         $ra, 0x3c($sp)
/* CD7FC 800CCBFC AFB20020 */  sw         $s2, 0x20($sp)
/* CD800 800CCC00 AFB1001C */  sw         $s1, 0x1c($sp)
/* CD804 800CCC04 AFB00018 */  sw         $s0, 0x18($sp)
/* CD808 800CCC08 AFA600E0 */  sw         $a2, 0xe0($sp)
/* CD80C 800CCC0C AFA000CC */  sw         $zero, 0xcc($sp)
/* CD810 800CCC10 26F7B130 */  addiu      $s7, $s7, -0x4ed0
/* CD814 800CCC14 26D6FD34 */  addiu      $s6, $s6, -0x2cc
/* CD818 800CCC18 26B5B154 */  addiu      $s5, $s5, -0x4eac
/* CD81C 800CCC1C 241E000A */  addiu      $fp, $zero, 0xa
.L800CCC20:
/* CD820 800CCC20 90E20000 */  lbu        $v0, ($a3)
/* CD824 800CCC24 00E09025 */  or         $s2, $a3, $zero
/* CD828 800CCC28 24030025 */  addiu      $v1, $zero, 0x25
/* CD82C 800CCC2C 10400009 */  beqz       $v0, .L800CCC54
/* CD830 800CCC30 00408025 */   or        $s0, $v0, $zero
/* CD834 800CCC34 50620008 */  beql       $v1, $v0, .L800CCC58
/* CD838 800CCC38 02471023 */   subu      $v0, $s2, $a3
/* CD83C 800CCC3C 92420001 */  lbu        $v0, 1($s2)
.L800CCC40:
/* CD840 800CCC40 26520001 */  addiu      $s2, $s2, 1
/* CD844 800CCC44 10400003 */  beqz       $v0, .L800CCC54
/* CD848 800CCC48 00408025 */   or        $s0, $v0, $zero
/* CD84C 800CCC4C 5462FFFC */  bnel       $v1, $v0, .L800CCC40
/* CD850 800CCC50 92420001 */   lbu       $v0, 1($s2)
.L800CCC54:
/* CD854 800CCC54 02471023 */  subu       $v0, $s2, $a3
.L800CCC58:
/* CD858 800CCC58 1840000D */  blez       $v0, .L800CCC90
/* CD85C 800CCC5C 02602025 */   or        $a0, $s3, $zero
/* CD860 800CCC60 00E02825 */  or         $a1, $a3, $zero
/* CD864 800CCC64 00408825 */  or         $s1, $v0, $zero
/* CD868 800CCC68 0280F809 */  jalr       $s4
/* CD86C 800CCC6C 00403025 */   or        $a2, $v0, $zero
/* CD870 800CCC70 10400005 */  beqz       $v0, .L800CCC88
/* CD874 800CCC74 00409825 */   or        $s3, $v0, $zero
/* CD878 800CCC78 8FAE00CC */  lw         $t6, 0xcc($sp)
/* CD87C 800CCC7C 01D17821 */  addu       $t7, $t6, $s1
/* CD880 800CCC80 10000003 */  b          .L800CCC90
/* CD884 800CCC84 AFAF00CC */   sw        $t7, 0xcc($sp)
.L800CCC88:
/* CD888 800CCC88 10000153 */  b          .L800CD1D8
/* CD88C 800CCC8C 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CCC90:
/* CD890 800CCC90 16000003 */  bnez       $s0, .L800CCCA0
/* CD894 800CCC94 26520001 */   addiu     $s2, $s2, 1
/* CD898 800CCC98 1000014F */  b          .L800CD1D8
/* CD89C 800CCC9C 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CCCA0:
/* CD8A0 800CCCA0 AFA000D0 */  sw         $zero, 0xd0($sp)
/* CD8A4 800CCCA4 92450000 */  lbu        $a1, ($s2)
/* CD8A8 800CCCA8 0C033531 */  jal        func_800CD4C4
/* CD8AC 800CCCAC 02C02025 */   or        $a0, $s6, $zero
/* CD8B0 800CCCB0 1040000F */  beqz       $v0, .L800CCCF0
/* CD8B4 800CCCB4 00408025 */   or        $s0, $v0, $zero
.L800CCCB8:
/* CD8B8 800CCCB8 0216C823 */  subu       $t9, $s0, $s6
/* CD8BC 800CCCBC 00197080 */  sll        $t6, $t9, 2
/* CD8C0 800CCCC0 3C0F800E */  lui        $t7, %hi(D_800DFD3C)
/* CD8C4 800CCCC4 01EE7821 */  addu       $t7, $t7, $t6
/* CD8C8 800CCCC8 8DEFFD3C */  lw         $t7, %lo(D_800DFD3C)($t7)
/* CD8CC 800CCCCC 8FB800D0 */  lw         $t8, 0xd0($sp)
/* CD8D0 800CCCD0 26520001 */  addiu      $s2, $s2, 1
/* CD8D4 800CCCD4 02C02025 */  or         $a0, $s6, $zero
/* CD8D8 800CCCD8 030FC825 */  or         $t9, $t8, $t7
/* CD8DC 800CCCDC AFB900D0 */  sw         $t9, 0xd0($sp)
/* CD8E0 800CCCE0 0C033531 */  jal        func_800CD4C4
/* CD8E4 800CCCE4 92450000 */   lbu       $a1, ($s2)
/* CD8E8 800CCCE8 1440FFF3 */  bnez       $v0, .L800CCCB8
/* CD8EC 800CCCEC 00408025 */   or        $s0, $v0, $zero
.L800CCCF0:
/* CD8F0 800CCCF0 924E0000 */  lbu        $t6, ($s2)
/* CD8F4 800CCCF4 2402002A */  addiu      $v0, $zero, 0x2a
/* CD8F8 800CCCF8 8FB800E4 */  lw         $t8, 0xe4($sp)
/* CD8FC 800CCCFC 144E0011 */  bne        $v0, $t6, .L800CCD44
/* CD900 800CCD00 3C04800E */   lui       $a0, 0x800e
/* CD904 800CCD04 270F0003 */  addiu      $t7, $t8, 3
/* CD908 800CCD08 2401FFFC */  addiu      $at, $zero, -4
/* CD90C 800CCD0C 01E1C824 */  and        $t9, $t7, $at
/* CD910 800CCD10 272E0004 */  addiu      $t6, $t9, 4
/* CD914 800CCD14 AFAE00E4 */  sw         $t6, 0xe4($sp)
/* CD918 800CCD18 8F380000 */  lw         $t8, ($t9)
/* CD91C 800CCD1C 26520001 */  addiu      $s2, $s2, 1
/* CD920 800CCD20 07010006 */  bgez       $t8, .L800CCD3C
/* CD924 800CCD24 AFB800C8 */   sw        $t8, 0xc8($sp)
/* CD928 800CCD28 8FAE00D0 */  lw         $t6, 0xd0($sp)
/* CD92C 800CCD2C 00187823 */  negu       $t7, $t8
/* CD930 800CCD30 AFAF00C8 */  sw         $t7, 0xc8($sp)
/* CD934 800CCD34 35D90004 */  ori        $t9, $t6, 4
/* CD938 800CCD38 AFB900D0 */  sw         $t9, 0xd0($sp)
.L800CCD3C:
/* CD93C 800CCD3C 10000018 */  b          .L800CCDA0
/* CD940 800CCD40 92450000 */   lbu       $a1, ($s2)
.L800CCD44:
/* CD944 800CCD44 AFA000C8 */  sw         $zero, 0xc8($sp)
/* CD948 800CCD48 92450000 */  lbu        $a1, ($s2)
/* CD94C 800CCD4C 28A10030 */  slti       $at, $a1, 0x30
/* CD950 800CCD50 14200013 */  bnez       $at, .L800CCDA0
/* CD954 800CCD54 28A1003A */   slti      $at, $a1, 0x3a
/* CD958 800CCD58 50200012 */  beql       $at, $zero, .L800CCDA4
/* CD95C 800CCD5C 2401002E */   addiu     $at, $zero, 0x2e
/* CD960 800CCD60 8FB800C8 */  lw         $t8, 0xc8($sp)
.L800CCD64:
/* CD964 800CCD64 2B0103E7 */  slti       $at, $t8, 0x3e7
/* CD968 800CCD68 50200007 */  beql       $at, $zero, .L800CCD88
/* CD96C 800CCD6C 92450001 */   lbu       $a1, 1($s2)
/* CD970 800CCD70 031E0019 */  multu      $t8, $fp
/* CD974 800CCD74 00007812 */  mflo       $t7
/* CD978 800CCD78 00AF7021 */  addu       $t6, $a1, $t7
/* CD97C 800CCD7C 25D9FFD0 */  addiu      $t9, $t6, -0x30
/* CD980 800CCD80 AFB900C8 */  sw         $t9, 0xc8($sp)
/* CD984 800CCD84 92450001 */  lbu        $a1, 1($s2)
.L800CCD88:
/* CD988 800CCD88 26520001 */  addiu      $s2, $s2, 1
/* CD98C 800CCD8C 28A10030 */  slti       $at, $a1, 0x30
/* CD990 800CCD90 14200003 */  bnez       $at, .L800CCDA0
/* CD994 800CCD94 28A1003A */   slti      $at, $a1, 0x3a
/* CD998 800CCD98 5420FFF2 */  bnezl      $at, .L800CCD64
/* CD99C 800CCD9C 8FB800C8 */   lw        $t8, 0xc8($sp)
.L800CCDA0:
/* CD9A0 800CCDA0 2401002E */  addiu      $at, $zero, 0x2e
.L800CCDA4:
/* CD9A4 800CCDA4 10A10004 */  beq        $a1, $at, .L800CCDB8
/* CD9A8 800CCDA8 2418FFFF */   addiu     $t8, $zero, -1
/* CD9AC 800CCDAC AFB800C4 */  sw         $t8, 0xc4($sp)
/* CD9B0 800CCDB0 10000026 */  b          .L800CCE4C
/* CD9B4 800CCDB4 92450000 */   lbu       $a1, ($s2)
.L800CCDB8:
/* CD9B8 800CCDB8 924F0001 */  lbu        $t7, 1($s2)
/* CD9BC 800CCDBC 8FAE00E4 */  lw         $t6, 0xe4($sp)
/* CD9C0 800CCDC0 26520001 */  addiu      $s2, $s2, 1
/* CD9C4 800CCDC4 144F000A */  bne        $v0, $t7, .L800CCDF0
/* CD9C8 800CCDC8 25D90003 */   addiu     $t9, $t6, 3
/* CD9CC 800CCDCC 2401FFFC */  addiu      $at, $zero, -4
/* CD9D0 800CCDD0 0321C024 */  and        $t8, $t9, $at
/* CD9D4 800CCDD4 270F0004 */  addiu      $t7, $t8, 4
/* CD9D8 800CCDD8 AFAF00E4 */  sw         $t7, 0xe4($sp)
/* CD9DC 800CCDDC 8F0E0000 */  lw         $t6, ($t8)
/* CD9E0 800CCDE0 26520001 */  addiu      $s2, $s2, 1
/* CD9E4 800CCDE4 AFAE00C4 */  sw         $t6, 0xc4($sp)
/* CD9E8 800CCDE8 10000018 */  b          .L800CCE4C
/* CD9EC 800CCDEC 92450000 */   lbu       $a1, ($s2)
.L800CCDF0:
/* CD9F0 800CCDF0 AFA000C4 */  sw         $zero, 0xc4($sp)
/* CD9F4 800CCDF4 92450000 */  lbu        $a1, ($s2)
/* CD9F8 800CCDF8 28A10030 */  slti       $at, $a1, 0x30
/* CD9FC 800CCDFC 14200013 */  bnez       $at, .L800CCE4C
/* CDA00 800CCE00 28A1003A */   slti      $at, $a1, 0x3a
/* CDA04 800CCE04 10200011 */  beqz       $at, .L800CCE4C
/* CDA08 800CCE08 00000000 */   nop
/* CDA0C 800CCE0C 8FB900C4 */  lw         $t9, 0xc4($sp)
.L800CCE10:
/* CDA10 800CCE10 2B2103E7 */  slti       $at, $t9, 0x3e7
/* CDA14 800CCE14 50200007 */  beql       $at, $zero, .L800CCE34
/* CDA18 800CCE18 92450001 */   lbu       $a1, 1($s2)
/* CDA1C 800CCE1C 033E0019 */  multu      $t9, $fp
/* CDA20 800CCE20 00007812 */  mflo       $t7
/* CDA24 800CCE24 00AFC021 */  addu       $t8, $a1, $t7
/* CDA28 800CCE28 270EFFD0 */  addiu      $t6, $t8, -0x30
/* CDA2C 800CCE2C AFAE00C4 */  sw         $t6, 0xc4($sp)
/* CDA30 800CCE30 92450001 */  lbu        $a1, 1($s2)
.L800CCE34:
/* CDA34 800CCE34 26520001 */  addiu      $s2, $s2, 1
/* CDA38 800CCE38 28A10030 */  slti       $at, $a1, 0x30
/* CDA3C 800CCE3C 14200003 */  bnez       $at, .L800CCE4C
/* CDA40 800CCE40 28A1003A */   slti      $at, $a1, 0x3a
/* CDA44 800CCE44 5420FFF2 */  bnezl      $at, .L800CCE10
/* CDA48 800CCE48 8FB900C4 */   lw        $t9, 0xc4($sp)
.L800CCE4C:
/* CDA4C 800CCE4C 0C033531 */  jal        func_800CD4C4
/* CDA50 800CCE50 2484FD30 */   addiu     $a0, $a0, -0x2d0
/* CDA54 800CCE54 10400005 */  beqz       $v0, .L800CCE6C
/* CDA58 800CCE58 27B000A0 */   addiu     $s0, $sp, 0xa0
/* CDA5C 800CCE5C 92590000 */  lbu        $t9, ($s2)
/* CDA60 800CCE60 26520001 */  addiu      $s2, $s2, 1
/* CDA64 800CCE64 10000002 */  b          .L800CCE70
/* CDA68 800CCE68 A3B900D4 */   sb        $t9, 0xd4($sp)
.L800CCE6C:
/* CDA6C 800CCE6C A3A000D4 */  sb         $zero, 0xd4($sp)
.L800CCE70:
/* CDA70 800CCE70 93AF00D4 */  lbu        $t7, 0xd4($sp)
/* CDA74 800CCE74 2402006C */  addiu      $v0, $zero, 0x6c
/* CDA78 800CCE78 27A600E4 */  addiu      $a2, $sp, 0xe4
/* CDA7C 800CCE7C 144F0007 */  bne        $v0, $t7, .L800CCE9C
/* CDA80 800CCE80 27A70074 */   addiu     $a3, $sp, 0x74
/* CDA84 800CCE84 92580000 */  lbu        $t8, ($s2)
/* CDA88 800CCE88 240E004C */  addiu      $t6, $zero, 0x4c
/* CDA8C 800CCE8C 14580003 */  bne        $v0, $t8, .L800CCE9C
/* CDA90 800CCE90 00000000 */   nop
/* CDA94 800CCE94 A3AE00D4 */  sb         $t6, 0xd4($sp)
/* CDA98 800CCE98 26520001 */  addiu      $s2, $s2, 1
.L800CCE9C:
/* CDA9C 800CCE9C 0C033154 */  jal        func_800CC550
/* CDAA0 800CCEA0 92450000 */   lbu       $a1, ($s2)
/* CDAA4 800CCEA4 8FB900C8 */  lw         $t9, 0xc8($sp)
/* CDAA8 800CCEA8 8FAF00AC */  lw         $t7, 0xac($sp)
/* CDAAC 800CCEAC 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* CDAB0 800CCEB0 032FC023 */  subu       $t8, $t9, $t7
/* CDAB4 800CCEB4 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* CDAB8 800CCEB8 030EC823 */  subu       $t9, $t8, $t6
/* CDABC 800CCEBC 8FAE00B8 */  lw         $t6, 0xb8($sp)
/* CDAC0 800CCEC0 032FC023 */  subu       $t8, $t9, $t7
/* CDAC4 800CCEC4 8FAF00BC */  lw         $t7, 0xbc($sp)
/* CDAC8 800CCEC8 030EC823 */  subu       $t9, $t8, $t6
/* CDACC 800CCECC 8FAE00C0 */  lw         $t6, 0xc0($sp)
/* CDAD0 800CCED0 032FC023 */  subu       $t8, $t9, $t7
/* CDAD4 800CCED4 8FAF00D0 */  lw         $t7, 0xd0($sp)
/* CDAD8 800CCED8 030EC823 */  subu       $t9, $t8, $t6
/* CDADC 800CCEDC AFB900C8 */  sw         $t9, 0xc8($sp)
/* CDAE0 800CCEE0 31F80004 */  andi       $t8, $t7, 4
/* CDAE4 800CCEE4 1700001A */  bnez       $t8, .L800CCF50
/* CDAE8 800CCEE8 0019702A */   slt       $t6, $zero, $t9
/* CDAEC 800CCEEC 51C00019 */  beql       $t6, $zero, .L800CCF54
/* CDAF0 800CCEF0 8FB900AC */   lw        $t9, 0xac($sp)
/* CDAF4 800CCEF4 11C00016 */  beqz       $t6, .L800CCF50
/* CDAF8 800CCEF8 03208825 */   or        $s1, $t9, $zero
/* CDAFC 800CCEFC 2E210021 */  sltiu      $at, $s1, 0x21
.L800CCF00:
/* CDB00 800CCF00 14200003 */  bnez       $at, .L800CCF10
/* CDB04 800CCF04 02208025 */   or        $s0, $s1, $zero
/* CDB08 800CCF08 10000001 */  b          .L800CCF10
/* CDB0C 800CCF0C 24100020 */   addiu     $s0, $zero, 0x20
.L800CCF10:
/* CDB10 800CCF10 1A00000C */  blez       $s0, .L800CCF44
/* CDB14 800CCF14 02602025 */   or        $a0, $s3, $zero
/* CDB18 800CCF18 02E02825 */  or         $a1, $s7, $zero
/* CDB1C 800CCF1C 0280F809 */  jalr       $s4
/* CDB20 800CCF20 02003025 */   or        $a2, $s0, $zero
/* CDB24 800CCF24 10400005 */  beqz       $v0, .L800CCF3C
/* CDB28 800CCF28 00409825 */   or        $s3, $v0, $zero
/* CDB2C 800CCF2C 8FAF00CC */  lw         $t7, 0xcc($sp)
/* CDB30 800CCF30 01F0C021 */  addu       $t8, $t7, $s0
/* CDB34 800CCF34 10000003 */  b          .L800CCF44
/* CDB38 800CCF38 AFB800CC */   sw        $t8, 0xcc($sp)
.L800CCF3C:
/* CDB3C 800CCF3C 100000A6 */  b          .L800CD1D8
/* CDB40 800CCF40 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CCF44:
/* CDB44 800CCF44 02308823 */  subu       $s1, $s1, $s0
/* CDB48 800CCF48 5E20FFED */  bgtzl      $s1, .L800CCF00
/* CDB4C 800CCF4C 2E210021 */   sltiu     $at, $s1, 0x21
.L800CCF50:
/* CDB50 800CCF50 8FB900AC */  lw         $t9, 0xac($sp)
.L800CCF54:
/* CDB54 800CCF54 02602025 */  or         $a0, $s3, $zero
/* CDB58 800CCF58 27A50074 */  addiu      $a1, $sp, 0x74
/* CDB5C 800CCF5C 5B20000D */  blezl      $t9, .L800CCF94
/* CDB60 800CCF60 8FB900B0 */   lw        $t9, 0xb0($sp)
/* CDB64 800CCF64 0280F809 */  jalr       $s4
/* CDB68 800CCF68 03203025 */   or        $a2, $t9, $zero
/* CDB6C 800CCF6C 10400006 */  beqz       $v0, .L800CCF88
/* CDB70 800CCF70 00409825 */   or        $s3, $v0, $zero
/* CDB74 800CCF74 8FAE00CC */  lw         $t6, 0xcc($sp)
/* CDB78 800CCF78 8FAF00AC */  lw         $t7, 0xac($sp)
/* CDB7C 800CCF7C 01CFC021 */  addu       $t8, $t6, $t7
/* CDB80 800CCF80 10000003 */  b          .L800CCF90
/* CDB84 800CCF84 AFB800CC */   sw        $t8, 0xcc($sp)
.L800CCF88:
/* CDB88 800CCF88 10000093 */  b          .L800CD1D8
/* CDB8C 800CCF8C 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CCF90:
/* CDB90 800CCF90 8FB900B0 */  lw         $t9, 0xb0($sp)
.L800CCF94:
/* CDB94 800CCF94 0019702A */  slt        $t6, $zero, $t9
/* CDB98 800CCF98 51C00019 */  beql       $t6, $zero, .L800CD000
/* CDB9C 800CCF9C 8FB900B4 */   lw        $t9, 0xb4($sp)
/* CDBA0 800CCFA0 11C00016 */  beqz       $t6, .L800CCFFC
/* CDBA4 800CCFA4 03208825 */   or        $s1, $t9, $zero
/* CDBA8 800CCFA8 2E210021 */  sltiu      $at, $s1, 0x21
.L800CCFAC:
/* CDBAC 800CCFAC 14200003 */  bnez       $at, .L800CCFBC
/* CDBB0 800CCFB0 02208025 */   or        $s0, $s1, $zero
/* CDBB4 800CCFB4 10000001 */  b          .L800CCFBC
/* CDBB8 800CCFB8 24100020 */   addiu     $s0, $zero, 0x20
.L800CCFBC:
/* CDBBC 800CCFBC 1A00000C */  blez       $s0, .L800CCFF0
/* CDBC0 800CCFC0 02602025 */   or        $a0, $s3, $zero
/* CDBC4 800CCFC4 02A02825 */  or         $a1, $s5, $zero
/* CDBC8 800CCFC8 0280F809 */  jalr       $s4
/* CDBCC 800CCFCC 02003025 */   or        $a2, $s0, $zero
/* CDBD0 800CCFD0 10400005 */  beqz       $v0, .L800CCFE8
/* CDBD4 800CCFD4 00409825 */   or        $s3, $v0, $zero
/* CDBD8 800CCFD8 8FAF00CC */  lw         $t7, 0xcc($sp)
/* CDBDC 800CCFDC 01F0C021 */  addu       $t8, $t7, $s0
/* CDBE0 800CCFE0 10000003 */  b          .L800CCFF0
/* CDBE4 800CCFE4 AFB800CC */   sw        $t8, 0xcc($sp)
.L800CCFE8:
/* CDBE8 800CCFE8 1000007B */  b          .L800CD1D8
/* CDBEC 800CCFEC 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CCFF0:
/* CDBF0 800CCFF0 02308823 */  subu       $s1, $s1, $s0
/* CDBF4 800CCFF4 5E20FFED */  bgtzl      $s1, .L800CCFAC
/* CDBF8 800CCFF8 2E210021 */   sltiu     $at, $s1, 0x21
.L800CCFFC:
/* CDBFC 800CCFFC 8FB900B4 */  lw         $t9, 0xb4($sp)
.L800CD000:
/* CDC00 800CD000 02602025 */  or         $a0, $s3, $zero
/* CDC04 800CD004 8FA500A8 */  lw         $a1, 0xa8($sp)
/* CDC08 800CD008 5B20000D */  blezl      $t9, .L800CD040
/* CDC0C 800CD00C 8FB900B8 */   lw        $t9, 0xb8($sp)
/* CDC10 800CD010 0280F809 */  jalr       $s4
/* CDC14 800CD014 03203025 */   or        $a2, $t9, $zero
/* CDC18 800CD018 10400006 */  beqz       $v0, .L800CD034
/* CDC1C 800CD01C 00409825 */   or        $s3, $v0, $zero
/* CDC20 800CD020 8FAE00CC */  lw         $t6, 0xcc($sp)
/* CDC24 800CD024 8FAF00B4 */  lw         $t7, 0xb4($sp)
/* CDC28 800CD028 01CFC021 */  addu       $t8, $t6, $t7
/* CDC2C 800CD02C 10000003 */  b          .L800CD03C
/* CDC30 800CD030 AFB800CC */   sw        $t8, 0xcc($sp)
.L800CD034:
/* CDC34 800CD034 10000068 */  b          .L800CD1D8
/* CDC38 800CD038 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CD03C:
/* CDC3C 800CD03C 8FB900B8 */  lw         $t9, 0xb8($sp)
.L800CD040:
/* CDC40 800CD040 0019702A */  slt        $t6, $zero, $t9
/* CDC44 800CD044 51C00019 */  beql       $t6, $zero, .L800CD0AC
/* CDC48 800CD048 8FB900BC */   lw        $t9, 0xbc($sp)
/* CDC4C 800CD04C 11C00016 */  beqz       $t6, .L800CD0A8
/* CDC50 800CD050 03208825 */   or        $s1, $t9, $zero
/* CDC54 800CD054 2E210021 */  sltiu      $at, $s1, 0x21
.L800CD058:
/* CDC58 800CD058 14200003 */  bnez       $at, .L800CD068
/* CDC5C 800CD05C 02208025 */   or        $s0, $s1, $zero
/* CDC60 800CD060 10000001 */  b          .L800CD068
/* CDC64 800CD064 24100020 */   addiu     $s0, $zero, 0x20
.L800CD068:
/* CDC68 800CD068 1A00000C */  blez       $s0, .L800CD09C
/* CDC6C 800CD06C 02602025 */   or        $a0, $s3, $zero
/* CDC70 800CD070 02A02825 */  or         $a1, $s5, $zero
/* CDC74 800CD074 0280F809 */  jalr       $s4
/* CDC78 800CD078 02003025 */   or        $a2, $s0, $zero
/* CDC7C 800CD07C 10400005 */  beqz       $v0, .L800CD094
/* CDC80 800CD080 00409825 */   or        $s3, $v0, $zero
/* CDC84 800CD084 8FAF00CC */  lw         $t7, 0xcc($sp)
/* CDC88 800CD088 01F0C021 */  addu       $t8, $t7, $s0
/* CDC8C 800CD08C 10000003 */  b          .L800CD09C
/* CDC90 800CD090 AFB800CC */   sw        $t8, 0xcc($sp)
.L800CD094:
/* CDC94 800CD094 10000050 */  b          .L800CD1D8
/* CDC98 800CD098 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CD09C:
/* CDC9C 800CD09C 02308823 */  subu       $s1, $s1, $s0
/* CDCA0 800CD0A0 5E20FFED */  bgtzl      $s1, .L800CD058
/* CDCA4 800CD0A4 2E210021 */   sltiu     $at, $s1, 0x21
.L800CD0A8:
/* CDCA8 800CD0A8 8FB900BC */  lw         $t9, 0xbc($sp)
.L800CD0AC:
/* CDCAC 800CD0AC 02602025 */  or         $a0, $s3, $zero
/* CDCB0 800CD0B0 8FAE00A8 */  lw         $t6, 0xa8($sp)
/* CDCB4 800CD0B4 1B20000D */  blez       $t9, .L800CD0EC
/* CDCB8 800CD0B8 8FAF00B4 */   lw        $t7, 0xb4($sp)
/* CDCBC 800CD0BC 01CF2821 */  addu       $a1, $t6, $t7
/* CDCC0 800CD0C0 0280F809 */  jalr       $s4
/* CDCC4 800CD0C4 03203025 */   or        $a2, $t9, $zero
/* CDCC8 800CD0C8 10400006 */  beqz       $v0, .L800CD0E4
/* CDCCC 800CD0CC 00409825 */   or        $s3, $v0, $zero
/* CDCD0 800CD0D0 8FB800CC */  lw         $t8, 0xcc($sp)
/* CDCD4 800CD0D4 8FAE00BC */  lw         $t6, 0xbc($sp)
/* CDCD8 800CD0D8 030E7821 */  addu       $t7, $t8, $t6
/* CDCDC 800CD0DC 10000003 */  b          .L800CD0EC
/* CDCE0 800CD0E0 AFAF00CC */   sw        $t7, 0xcc($sp)
.L800CD0E4:
/* CDCE4 800CD0E4 1000003C */  b          .L800CD1D8
/* CDCE8 800CD0E8 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CD0EC:
/* CDCEC 800CD0EC 8FB900C0 */  lw         $t9, 0xc0($sp)
/* CDCF0 800CD0F0 0019C02A */  slt        $t8, $zero, $t9
/* CDCF4 800CD0F4 53000019 */  beql       $t8, $zero, .L800CD15C
/* CDCF8 800CD0F8 8FB900D0 */   lw        $t9, 0xd0($sp)
/* CDCFC 800CD0FC 13000016 */  beqz       $t8, .L800CD158
/* CDD00 800CD100 03208825 */   or        $s1, $t9, $zero
/* CDD04 800CD104 2E210021 */  sltiu      $at, $s1, 0x21
.L800CD108:
/* CDD08 800CD108 14200003 */  bnez       $at, .L800CD118
/* CDD0C 800CD10C 02208025 */   or        $s0, $s1, $zero
/* CDD10 800CD110 10000001 */  b          .L800CD118
/* CDD14 800CD114 24100020 */   addiu     $s0, $zero, 0x20
.L800CD118:
/* CDD18 800CD118 1A00000C */  blez       $s0, .L800CD14C
/* CDD1C 800CD11C 02602025 */   or        $a0, $s3, $zero
/* CDD20 800CD120 02A02825 */  or         $a1, $s5, $zero
/* CDD24 800CD124 0280F809 */  jalr       $s4
/* CDD28 800CD128 02003025 */   or        $a2, $s0, $zero
/* CDD2C 800CD12C 10400005 */  beqz       $v0, .L800CD144
/* CDD30 800CD130 00409825 */   or        $s3, $v0, $zero
/* CDD34 800CD134 8FAE00CC */  lw         $t6, 0xcc($sp)
/* CDD38 800CD138 01D07821 */  addu       $t7, $t6, $s0
/* CDD3C 800CD13C 10000003 */  b          .L800CD14C
/* CDD40 800CD140 AFAF00CC */   sw        $t7, 0xcc($sp)
.L800CD144:
/* CDD44 800CD144 10000024 */  b          .L800CD1D8
/* CDD48 800CD148 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CD14C:
/* CDD4C 800CD14C 02308823 */  subu       $s1, $s1, $s0
/* CDD50 800CD150 5E20FFED */  bgtzl      $s1, .L800CD108
/* CDD54 800CD154 2E210021 */   sltiu     $at, $s1, 0x21
.L800CD158:
/* CDD58 800CD158 8FB900D0 */  lw         $t9, 0xd0($sp)
.L800CD15C:
/* CDD5C 800CD15C 8FAE00C8 */  lw         $t6, 0xc8($sp)
/* CDD60 800CD160 33380004 */  andi       $t8, $t9, 4
/* CDD64 800CD164 1300001A */  beqz       $t8, .L800CD1D0
/* CDD68 800CD168 000E782A */   slt       $t7, $zero, $t6
/* CDD6C 800CD16C 11E00018 */  beqz       $t7, .L800CD1D0
/* CDD70 800CD170 00000000 */   nop
/* CDD74 800CD174 11E00016 */  beqz       $t7, .L800CD1D0
/* CDD78 800CD178 01C08825 */   or        $s1, $t6, $zero
/* CDD7C 800CD17C 2E210021 */  sltiu      $at, $s1, 0x21
.L800CD180:
/* CDD80 800CD180 14200003 */  bnez       $at, .L800CD190
/* CDD84 800CD184 02208025 */   or        $s0, $s1, $zero
/* CDD88 800CD188 10000001 */  b          .L800CD190
/* CDD8C 800CD18C 24100020 */   addiu     $s0, $zero, 0x20
.L800CD190:
/* CDD90 800CD190 1A00000C */  blez       $s0, .L800CD1C4
/* CDD94 800CD194 02602025 */   or        $a0, $s3, $zero
/* CDD98 800CD198 02E02825 */  or         $a1, $s7, $zero
/* CDD9C 800CD19C 0280F809 */  jalr       $s4
/* CDDA0 800CD1A0 02003025 */   or        $a2, $s0, $zero
/* CDDA4 800CD1A4 10400005 */  beqz       $v0, .L800CD1BC
/* CDDA8 800CD1A8 00409825 */   or        $s3, $v0, $zero
/* CDDAC 800CD1AC 8FB900CC */  lw         $t9, 0xcc($sp)
/* CDDB0 800CD1B0 0330C021 */  addu       $t8, $t9, $s0
/* CDDB4 800CD1B4 10000003 */  b          .L800CD1C4
/* CDDB8 800CD1B8 AFB800CC */   sw        $t8, 0xcc($sp)
.L800CD1BC:
/* CDDBC 800CD1BC 10000006 */  b          .L800CD1D8
/* CDDC0 800CD1C0 8FA200CC */   lw        $v0, 0xcc($sp)
.L800CD1C4:
/* CDDC4 800CD1C4 02308823 */  subu       $s1, $s1, $s0
/* CDDC8 800CD1C8 5E20FFED */  bgtzl      $s1, .L800CD180
/* CDDCC 800CD1CC 2E210021 */   sltiu     $at, $s1, 0x21
.L800CD1D0:
/* CDDD0 800CD1D0 1000FE93 */  b          .L800CCC20
/* CDDD4 800CD1D4 26470001 */   addiu     $a3, $s2, 1
.L800CD1D8:
/* CDDD8 800CD1D8 8FBF003C */  lw         $ra, 0x3c($sp)
/* CDDDC 800CD1DC 8FB00018 */  lw         $s0, 0x18($sp)
/* CDDE0 800CD1E0 8FB1001C */  lw         $s1, 0x1c($sp)
/* CDDE4 800CD1E4 8FB20020 */  lw         $s2, 0x20($sp)
/* CDDE8 800CD1E8 8FB30024 */  lw         $s3, 0x24($sp)
/* CDDEC 800CD1EC 8FB40028 */  lw         $s4, 0x28($sp)
/* CDDF0 800CD1F0 8FB5002C */  lw         $s5, 0x2c($sp)
/* CDDF4 800CD1F4 8FB60030 */  lw         $s6, 0x30($sp)
/* CDDF8 800CD1F8 8FB70034 */  lw         $s7, 0x34($sp)
/* CDDFC 800CD1FC 8FBE0038 */  lw         $fp, 0x38($sp)
/* CDE00 800CD200 03E00008 */  jr         $ra
/* CDE04 800CD204 27BD00D8 */   addiu     $sp, $sp, 0xd8
/* CDE08 800CD208 00000000 */  nop
/* CDE0C 800CD20C 00000000 */  nop

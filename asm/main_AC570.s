.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800AB970
/* AC570 800AB970 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* AC574 800AB974 AFBF0014 */  sw         $ra, 0x14($sp)
/* AC578 800AB978 AFA400A8 */  sw         $a0, 0xa8($sp)
/* AC57C 800AB97C AFA500AC */  sw         $a1, 0xac($sp)
/* AC580 800AB980 AFA600B0 */  sw         $a2, 0xb0($sp)
/* AC584 800AB984 AFA700B4 */  sw         $a3, 0xb4($sp)
/* AC588 800AB988 AFA0009C */  sw         $zero, 0x9c($sp)
.L800AB98C:
/* AC58C 800AB98C 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* AC590 800AB990 AFAE006C */  sw         $t6, 0x6c($sp)
/* AC594 800AB994 8FAF006C */  lw         $t7, 0x6c($sp)
/* AC598 800AB998 91F80000 */  lbu        $t8, ($t7)
/* AC59C 800AB99C 1300000F */  beqz       $t8, .L800AB9DC
/* AC5A0 800AB9A0 A3B8006B */   sb        $t8, 0x6b($sp)
/* AC5A4 800AB9A4 24010025 */  addiu      $at, $zero, 0x25
/* AC5A8 800AB9A8 1301000C */  beq        $t8, $at, .L800AB9DC
/* AC5AC 800AB9AC 00000000 */   nop
.L800AB9B0:
/* AC5B0 800AB9B0 8FB9006C */  lw         $t9, 0x6c($sp)
/* AC5B4 800AB9B4 27280001 */  addiu      $t0, $t9, 1
/* AC5B8 800AB9B8 AFA8006C */  sw         $t0, 0x6c($sp)
/* AC5BC 800AB9BC 91090000 */  lbu        $t1, ($t0)
/* AC5C0 800AB9C0 A3A9006B */  sb         $t1, 0x6b($sp)
/* AC5C4 800AB9C4 93AA006B */  lbu        $t2, 0x6b($sp)
/* AC5C8 800AB9C8 11400004 */  beqz       $t2, .L800AB9DC
/* AC5CC 800AB9CC 00000000 */   nop
/* AC5D0 800AB9D0 24010025 */  addiu      $at, $zero, 0x25
/* AC5D4 800AB9D4 1541FFF6 */  bne        $t2, $at, .L800AB9B0
/* AC5D8 800AB9D8 00000000 */   nop
.L800AB9DC:
/* AC5DC 800AB9DC 8FAB006C */  lw         $t3, 0x6c($sp)
/* AC5E0 800AB9E0 8FAC00B0 */  lw         $t4, 0xb0($sp)
/* AC5E4 800AB9E4 016C6823 */  subu       $t5, $t3, $t4
/* AC5E8 800AB9E8 19A00015 */  blez       $t5, .L800ABA40
/* AC5EC 800AB9EC 00000000 */   nop
/* AC5F0 800AB9F0 8FAE00B0 */  lw         $t6, 0xb0($sp)
/* AC5F4 800AB9F4 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AC5F8 800AB9F8 8FAF006C */  lw         $t7, 0x6c($sp)
/* AC5FC 800AB9FC 8FA400AC */  lw         $a0, 0xac($sp)
/* AC600 800ABA00 01C02825 */  or         $a1, $t6, $zero
/* AC604 800ABA04 0320F809 */  jalr       $t9
/* AC608 800ABA08 01EE3023 */   subu      $a2, $t7, $t6
/* AC60C 800ABA0C AFA200AC */  sw         $v0, 0xac($sp)
/* AC610 800ABA10 8FB800AC */  lw         $t8, 0xac($sp)
/* AC614 800ABA14 13000008 */  beqz       $t8, .L800ABA38
/* AC618 800ABA18 00000000 */   nop
/* AC61C 800ABA1C 8FA8006C */  lw         $t0, 0x6c($sp)
/* AC620 800ABA20 8FA900B0 */  lw         $t1, 0xb0($sp)
/* AC624 800ABA24 8FAB009C */  lw         $t3, 0x9c($sp)
/* AC628 800ABA28 01095023 */  subu       $t2, $t0, $t1
/* AC62C 800ABA2C 016A6021 */  addu       $t4, $t3, $t2
/* AC630 800ABA30 10000003 */  b          .L800ABA40
/* AC634 800ABA34 AFAC009C */   sw        $t4, 0x9c($sp)
.L800ABA38:
/* AC638 800ABA38 100001EE */  b          .L800AC1F4
/* AC63C 800ABA3C 8FA2009C */   lw        $v0, 0x9c($sp)
.L800ABA40:
/* AC640 800ABA40 93AD006B */  lbu        $t5, 0x6b($sp)
/* AC644 800ABA44 15A00003 */  bnez       $t5, .L800ABA54
/* AC648 800ABA48 00000000 */   nop
/* AC64C 800ABA4C 100001E9 */  b          .L800AC1F4
/* AC650 800ABA50 8FA2009C */   lw        $v0, 0x9c($sp)
.L800ABA54:
/* AC654 800ABA54 8FAF006C */  lw         $t7, 0x6c($sp)
/* AC658 800ABA58 25EE0001 */  addiu      $t6, $t7, 1
/* AC65C 800ABA5C AFAE006C */  sw         $t6, 0x6c($sp)
/* AC660 800ABA60 AFAE00B0 */  sw         $t6, 0xb0($sp)
/* AC664 800ABA64 8FB9006C */  lw         $t9, 0x6c($sp)
/* AC668 800ABA68 AFA000A0 */  sw         $zero, 0xa0($sp)
/* AC66C 800ABA6C 3C04800D */  lui        $a0, %hi(D_800D34E4)
/* AC670 800ABA70 248434E4 */  addiu      $a0, $a0, %lo(D_800D34E4)
/* AC674 800ABA74 0C02B3EC */  jal        func_800ACFB0
/* AC678 800ABA78 93250000 */   lbu       $a1, ($t9)
/* AC67C 800ABA7C AFA20064 */  sw         $v0, 0x64($sp)
/* AC680 800ABA80 8FB80064 */  lw         $t8, 0x64($sp)
/* AC684 800ABA84 13000017 */  beqz       $t8, .L800ABAE4
/* AC688 800ABA88 00000000 */   nop
.L800ABA8C:
/* AC68C 800ABA8C 8FA90064 */  lw         $t1, 0x64($sp)
/* AC690 800ABA90 3C0B800D */  lui        $t3, %hi(D_800D34E4)
/* AC694 800ABA94 256B34E4 */  addiu      $t3, $t3, %lo(D_800D34E4)
/* AC698 800ABA98 012B5023 */  subu       $t2, $t1, $t3
/* AC69C 800ABA9C 000A6080 */  sll        $t4, $t2, 2
/* AC6A0 800ABAA0 3C0D800D */  lui        $t5, %hi(D_800D34EC)
/* AC6A4 800ABAA4 01AC6821 */  addu       $t5, $t5, $t4
/* AC6A8 800ABAA8 8DAD34EC */  lw         $t5, %lo(D_800D34EC)($t5)
/* AC6AC 800ABAAC 8FA800A0 */  lw         $t0, 0xa0($sp)
/* AC6B0 800ABAB0 010D7825 */  or         $t7, $t0, $t5
/* AC6B4 800ABAB4 AFAF00A0 */  sw         $t7, 0xa0($sp)
/* AC6B8 800ABAB8 8FAE006C */  lw         $t6, 0x6c($sp)
/* AC6BC 800ABABC 3C04800D */  lui        $a0, %hi(D_800D34E4)
/* AC6C0 800ABAC0 248434E4 */  addiu      $a0, $a0, %lo(D_800D34E4)
/* AC6C4 800ABAC4 25D90001 */  addiu      $t9, $t6, 1
/* AC6C8 800ABAC8 AFB9006C */  sw         $t9, 0x6c($sp)
/* AC6CC 800ABACC 0C02B3EC */  jal        func_800ACFB0
/* AC6D0 800ABAD0 93250000 */   lbu       $a1, ($t9)
/* AC6D4 800ABAD4 AFA20064 */  sw         $v0, 0x64($sp)
/* AC6D8 800ABAD8 8FB80064 */  lw         $t8, 0x64($sp)
/* AC6DC 800ABADC 1700FFEB */  bnez       $t8, .L800ABA8C
/* AC6E0 800ABAE0 00000000 */   nop
.L800ABAE4:
/* AC6E4 800ABAE4 8FA9006C */  lw         $t1, 0x6c($sp)
/* AC6E8 800ABAE8 2401002A */  addiu      $at, $zero, 0x2a
/* AC6EC 800ABAEC 912B0000 */  lbu        $t3, ($t1)
/* AC6F0 800ABAF0 15610016 */  bne        $t3, $at, .L800ABB4C
/* AC6F4 800ABAF4 00000000 */   nop
/* AC6F8 800ABAF8 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* AC6FC 800ABAFC 2401FFFC */  addiu      $at, $zero, -4
/* AC700 800ABB00 254C0003 */  addiu      $t4, $t2, 3
/* AC704 800ABB04 01814024 */  and        $t0, $t4, $at
/* AC708 800ABB08 250D0004 */  addiu      $t5, $t0, 4
/* AC70C 800ABB0C AFAD00B4 */  sw         $t5, 0xb4($sp)
/* AC710 800ABB10 8D0F0000 */  lw         $t7, ($t0)
/* AC714 800ABB14 AFAF0098 */  sw         $t7, 0x98($sp)
/* AC718 800ABB18 8FAE0098 */  lw         $t6, 0x98($sp)
/* AC71C 800ABB1C 05C10007 */  bgez       $t6, .L800ABB3C
/* AC720 800ABB20 00000000 */   nop
/* AC724 800ABB24 8FB90098 */  lw         $t9, 0x98($sp)
/* AC728 800ABB28 0019C023 */  negu       $t8, $t9
/* AC72C 800ABB2C AFB80098 */  sw         $t8, 0x98($sp)
/* AC730 800ABB30 8FA900A0 */  lw         $t1, 0xa0($sp)
/* AC734 800ABB34 352B0004 */  ori        $t3, $t1, 4
/* AC738 800ABB38 AFAB00A0 */  sw         $t3, 0xa0($sp)
.L800ABB3C:
/* AC73C 800ABB3C 8FAA006C */  lw         $t2, 0x6c($sp)
/* AC740 800ABB40 254C0001 */  addiu      $t4, $t2, 1
/* AC744 800ABB44 10000021 */  b          .L800ABBCC
/* AC748 800ABB48 AFAC006C */   sw        $t4, 0x6c($sp)
.L800ABB4C:
/* AC74C 800ABB4C 8FAD006C */  lw         $t5, 0x6c($sp)
/* AC750 800ABB50 AFA00098 */  sw         $zero, 0x98($sp)
/* AC754 800ABB54 91A80000 */  lbu        $t0, ($t5)
/* AC758 800ABB58 29010030 */  slti       $at, $t0, 0x30
/* AC75C 800ABB5C 1420001B */  bnez       $at, .L800ABBCC
/* AC760 800ABB60 00000000 */   nop
/* AC764 800ABB64 2901003A */  slti       $at, $t0, 0x3a
/* AC768 800ABB68 10200018 */  beqz       $at, .L800ABBCC
/* AC76C 800ABB6C 00000000 */   nop
.L800ABB70:
/* AC770 800ABB70 8FAF0098 */  lw         $t7, 0x98($sp)
/* AC774 800ABB74 29E103E7 */  slti       $at, $t7, 0x3e7
/* AC778 800ABB78 1020000A */  beqz       $at, .L800ABBA4
/* AC77C 800ABB7C 00000000 */   nop
/* AC780 800ABB80 8FAE006C */  lw         $t6, 0x6c($sp)
/* AC784 800ABB84 8FB80098 */  lw         $t8, 0x98($sp)
/* AC788 800ABB88 91D90000 */  lbu        $t9, ($t6)
/* AC78C 800ABB8C 00184880 */  sll        $t1, $t8, 2
/* AC790 800ABB90 01384821 */  addu       $t1, $t1, $t8
/* AC794 800ABB94 00094840 */  sll        $t1, $t1, 1
/* AC798 800ABB98 03295821 */  addu       $t3, $t9, $t1
/* AC79C 800ABB9C 256AFFD0 */  addiu      $t2, $t3, -0x30
/* AC7A0 800ABBA0 AFAA0098 */  sw         $t2, 0x98($sp)
.L800ABBA4:
/* AC7A4 800ABBA4 8FAC006C */  lw         $t4, 0x6c($sp)
/* AC7A8 800ABBA8 258D0001 */  addiu      $t5, $t4, 1
/* AC7AC 800ABBAC AFAD006C */  sw         $t5, 0x6c($sp)
/* AC7B0 800ABBB0 91A80000 */  lbu        $t0, ($t5)
/* AC7B4 800ABBB4 29010030 */  slti       $at, $t0, 0x30
/* AC7B8 800ABBB8 14200004 */  bnez       $at, .L800ABBCC
/* AC7BC 800ABBBC 00000000 */   nop
/* AC7C0 800ABBC0 2901003A */  slti       $at, $t0, 0x3a
/* AC7C4 800ABBC4 1420FFEA */  bnez       $at, .L800ABB70
/* AC7C8 800ABBC8 00000000 */   nop
.L800ABBCC:
/* AC7CC 800ABBCC 8FAF006C */  lw         $t7, 0x6c($sp)
/* AC7D0 800ABBD0 2401002E */  addiu      $at, $zero, 0x2e
/* AC7D4 800ABBD4 91EE0000 */  lbu        $t6, ($t7)
/* AC7D8 800ABBD8 11C10004 */  beq        $t6, $at, .L800ABBEC
/* AC7DC 800ABBDC 00000000 */   nop
/* AC7E0 800ABBE0 2418FFFF */  addiu      $t8, $zero, -1
/* AC7E4 800ABBE4 10000034 */  b          .L800ABCB8
/* AC7E8 800ABBE8 AFB80094 */   sw        $t8, 0x94($sp)
.L800ABBEC:
/* AC7EC 800ABBEC 8FB9006C */  lw         $t9, 0x6c($sp)
/* AC7F0 800ABBF0 2401002A */  addiu      $at, $zero, 0x2a
/* AC7F4 800ABBF4 27290001 */  addiu      $t1, $t9, 1
/* AC7F8 800ABBF8 AFA9006C */  sw         $t1, 0x6c($sp)
/* AC7FC 800ABBFC 912B0000 */  lbu        $t3, ($t1)
/* AC800 800ABC00 1561000D */  bne        $t3, $at, .L800ABC38
/* AC804 800ABC04 00000000 */   nop
/* AC808 800ABC08 8FAA00B4 */  lw         $t2, 0xb4($sp)
/* AC80C 800ABC0C 2401FFFC */  addiu      $at, $zero, -4
/* AC810 800ABC10 254C0003 */  addiu      $t4, $t2, 3
/* AC814 800ABC14 01816824 */  and        $t5, $t4, $at
/* AC818 800ABC18 25A80004 */  addiu      $t0, $t5, 4
/* AC81C 800ABC1C AFA800B4 */  sw         $t0, 0xb4($sp)
/* AC820 800ABC20 8DAF0000 */  lw         $t7, ($t5)
/* AC824 800ABC24 AFAF0094 */  sw         $t7, 0x94($sp)
/* AC828 800ABC28 8FAE006C */  lw         $t6, 0x6c($sp)
/* AC82C 800ABC2C 25D80001 */  addiu      $t8, $t6, 1
/* AC830 800ABC30 10000021 */  b          .L800ABCB8
/* AC834 800ABC34 AFB8006C */   sw        $t8, 0x6c($sp)
.L800ABC38:
/* AC838 800ABC38 8FB9006C */  lw         $t9, 0x6c($sp)
/* AC83C 800ABC3C AFA00094 */  sw         $zero, 0x94($sp)
/* AC840 800ABC40 93290000 */  lbu        $t1, ($t9)
/* AC844 800ABC44 29210030 */  slti       $at, $t1, 0x30
/* AC848 800ABC48 1420001B */  bnez       $at, .L800ABCB8
/* AC84C 800ABC4C 00000000 */   nop
/* AC850 800ABC50 2921003A */  slti       $at, $t1, 0x3a
/* AC854 800ABC54 10200018 */  beqz       $at, .L800ABCB8
/* AC858 800ABC58 00000000 */   nop
.L800ABC5C:
/* AC85C 800ABC5C 8FAB0094 */  lw         $t3, 0x94($sp)
/* AC860 800ABC60 296103E7 */  slti       $at, $t3, 0x3e7
/* AC864 800ABC64 1020000A */  beqz       $at, .L800ABC90
/* AC868 800ABC68 00000000 */   nop
/* AC86C 800ABC6C 8FAA006C */  lw         $t2, 0x6c($sp)
/* AC870 800ABC70 8FA80094 */  lw         $t0, 0x94($sp)
/* AC874 800ABC74 914C0000 */  lbu        $t4, ($t2)
/* AC878 800ABC78 00086880 */  sll        $t5, $t0, 2
/* AC87C 800ABC7C 01A86821 */  addu       $t5, $t5, $t0
/* AC880 800ABC80 000D6840 */  sll        $t5, $t5, 1
/* AC884 800ABC84 018D7821 */  addu       $t7, $t4, $t5
/* AC888 800ABC88 25EEFFD0 */  addiu      $t6, $t7, -0x30
/* AC88C 800ABC8C AFAE0094 */  sw         $t6, 0x94($sp)
.L800ABC90:
/* AC890 800ABC90 8FB8006C */  lw         $t8, 0x6c($sp)
/* AC894 800ABC94 27190001 */  addiu      $t9, $t8, 1
/* AC898 800ABC98 AFB9006C */  sw         $t9, 0x6c($sp)
/* AC89C 800ABC9C 93290000 */  lbu        $t1, ($t9)
/* AC8A0 800ABCA0 29210030 */  slti       $at, $t1, 0x30
/* AC8A4 800ABCA4 14200004 */  bnez       $at, .L800ABCB8
/* AC8A8 800ABCA8 00000000 */   nop
/* AC8AC 800ABCAC 2921003A */  slti       $at, $t1, 0x3a
/* AC8B0 800ABCB0 1420FFEA */  bnez       $at, .L800ABC5C
/* AC8B4 800ABCB4 00000000 */   nop
.L800ABCB8:
/* AC8B8 800ABCB8 8FAB006C */  lw         $t3, 0x6c($sp)
/* AC8BC 800ABCBC 3C04800D */  lui        $a0, %hi(D_800D34E0)
/* AC8C0 800ABCC0 248434E0 */  addiu      $a0, $a0, %lo(D_800D34E0)
/* AC8C4 800ABCC4 0C02B3EC */  jal        func_800ACFB0
/* AC8C8 800ABCC8 91650000 */   lbu       $a1, ($t3)
/* AC8CC 800ABCCC 10400007 */  beqz       $v0, .L800ABCEC
/* AC8D0 800ABCD0 00000000 */   nop
/* AC8D4 800ABCD4 8FAA006C */  lw         $t2, 0x6c($sp)
/* AC8D8 800ABCD8 91480000 */  lbu        $t0, ($t2)
/* AC8DC 800ABCDC 254C0001 */  addiu      $t4, $t2, 1
/* AC8E0 800ABCE0 AFAC006C */  sw         $t4, 0x6c($sp)
/* AC8E4 800ABCE4 10000002 */  b          .L800ABCF0
/* AC8E8 800ABCE8 A3A800A4 */   sb        $t0, 0xa4($sp)
.L800ABCEC:
/* AC8EC 800ABCEC A3A000A4 */  sb         $zero, 0xa4($sp)
.L800ABCF0:
/* AC8F0 800ABCF0 93AD00A4 */  lbu        $t5, 0xa4($sp)
/* AC8F4 800ABCF4 2401006C */  addiu      $at, $zero, 0x6c
/* AC8F8 800ABCF8 15A1000B */  bne        $t5, $at, .L800ABD28
/* AC8FC 800ABCFC 00000000 */   nop
/* AC900 800ABD00 8FAF006C */  lw         $t7, 0x6c($sp)
/* AC904 800ABD04 2401006C */  addiu      $at, $zero, 0x6c
/* AC908 800ABD08 91EE0000 */  lbu        $t6, ($t7)
/* AC90C 800ABD0C 15C10006 */  bne        $t6, $at, .L800ABD28
/* AC910 800ABD10 00000000 */   nop
/* AC914 800ABD14 2418004C */  addiu      $t8, $zero, 0x4c
/* AC918 800ABD18 A3B800A4 */  sb         $t8, 0xa4($sp)
/* AC91C 800ABD1C 8FB9006C */  lw         $t9, 0x6c($sp)
/* AC920 800ABD20 27290001 */  addiu      $t1, $t9, 1
/* AC924 800ABD24 AFA9006C */  sw         $t1, 0x6c($sp)
.L800ABD28:
/* AC928 800ABD28 8FAB006C */  lw         $t3, 0x6c($sp)
/* AC92C 800ABD2C 27A40070 */  addiu      $a0, $sp, 0x70
/* AC930 800ABD30 27A500B4 */  addiu      $a1, $sp, 0xb4
/* AC934 800ABD34 27A70044 */  addiu      $a3, $sp, 0x44
/* AC938 800ABD38 0C02B081 */  jal        func_800AC204
/* AC93C 800ABD3C 91660000 */   lbu       $a2, ($t3)
/* AC940 800ABD40 8FA8007C */  lw         $t0, 0x7c($sp)
/* AC944 800ABD44 8FAA0080 */  lw         $t2, 0x80($sp)
/* AC948 800ABD48 8FAD0084 */  lw         $t5, 0x84($sp)
/* AC94C 800ABD4C 8FAE0088 */  lw         $t6, 0x88($sp)
/* AC950 800ABD50 8FB9008C */  lw         $t9, 0x8c($sp)
/* AC954 800ABD54 010A6021 */  addu       $t4, $t0, $t2
/* AC958 800ABD58 8FAB0090 */  lw         $t3, 0x90($sp)
/* AC95C 800ABD5C 018D7821 */  addu       $t7, $t4, $t5
/* AC960 800ABD60 8FAA0098 */  lw         $t2, 0x98($sp)
/* AC964 800ABD64 01EEC021 */  addu       $t8, $t7, $t6
/* AC968 800ABD68 03194821 */  addu       $t1, $t8, $t9
/* AC96C 800ABD6C 012B4021 */  addu       $t0, $t1, $t3
/* AC970 800ABD70 01486023 */  subu       $t4, $t2, $t0
/* AC974 800ABD74 AFAC0098 */  sw         $t4, 0x98($sp)
/* AC978 800ABD78 8FAD00A0 */  lw         $t5, 0xa0($sp)
/* AC97C 800ABD7C 31AF0004 */  andi       $t7, $t5, 4
/* AC980 800ABD80 15E0002B */  bnez       $t7, .L800ABE30
/* AC984 800ABD84 00000000 */   nop
/* AC988 800ABD88 8FAE0098 */  lw         $t6, 0x98($sp)
/* AC98C 800ABD8C 19C00028 */  blez       $t6, .L800ABE30
/* AC990 800ABD90 00000000 */   nop
/* AC994 800ABD94 8FB80098 */  lw         $t8, 0x98($sp)
/* AC998 800ABD98 AFB8003C */  sw         $t8, 0x3c($sp)
/* AC99C 800ABD9C 8FB9003C */  lw         $t9, 0x3c($sp)
/* AC9A0 800ABDA0 1B200023 */  blez       $t9, .L800ABE30
/* AC9A4 800ABDA4 00000000 */   nop
.L800ABDA8:
/* AC9A8 800ABDA8 8FA9003C */  lw         $t1, 0x3c($sp)
/* AC9AC 800ABDAC 2D210021 */  sltiu      $at, $t1, 0x21
/* AC9B0 800ABDB0 14200004 */  bnez       $at, .L800ABDC4
/* AC9B4 800ABDB4 00000000 */   nop
/* AC9B8 800ABDB8 240B0020 */  addiu      $t3, $zero, 0x20
/* AC9BC 800ABDBC 10000003 */  b          .L800ABDCC
/* AC9C0 800ABDC0 AFAB0040 */   sw        $t3, 0x40($sp)
.L800ABDC4:
/* AC9C4 800ABDC4 8FAA003C */  lw         $t2, 0x3c($sp)
/* AC9C8 800ABDC8 AFAA0040 */  sw         $t2, 0x40($sp)
.L800ABDCC:
/* AC9CC 800ABDCC 8FA80040 */  lw         $t0, 0x40($sp)
/* AC9D0 800ABDD0 19000012 */  blez       $t0, .L800ABE1C
/* AC9D4 800ABDD4 00000000 */   nop
/* AC9D8 800ABDD8 8FB900A8 */  lw         $t9, 0xa8($sp)
/* AC9DC 800ABDDC 3C05800D */  lui        $a1, %hi(D_800CD360)
/* AC9E0 800ABDE0 24A5D360 */  addiu      $a1, $a1, %lo(D_800CD360)
/* AC9E4 800ABDE4 8FA400AC */  lw         $a0, 0xac($sp)
/* AC9E8 800ABDE8 0320F809 */  jalr       $t9
/* AC9EC 800ABDEC 8FA60040 */   lw        $a2, 0x40($sp)
/* AC9F0 800ABDF0 AFA200AC */  sw         $v0, 0xac($sp)
/* AC9F4 800ABDF4 8FAC00AC */  lw         $t4, 0xac($sp)
/* AC9F8 800ABDF8 11800006 */  beqz       $t4, .L800ABE14
/* AC9FC 800ABDFC 00000000 */   nop
/* ACA00 800ABE00 8FAD009C */  lw         $t5, 0x9c($sp)
/* ACA04 800ABE04 8FAF0040 */  lw         $t7, 0x40($sp)
/* ACA08 800ABE08 01AF7021 */  addu       $t6, $t5, $t7
/* ACA0C 800ABE0C 10000003 */  b          .L800ABE1C
/* ACA10 800ABE10 AFAE009C */   sw        $t6, 0x9c($sp)
.L800ABE14:
/* ACA14 800ABE14 100000F7 */  b          .L800AC1F4
/* ACA18 800ABE18 8FA2009C */   lw        $v0, 0x9c($sp)
.L800ABE1C:
/* ACA1C 800ABE1C 8FB8003C */  lw         $t8, 0x3c($sp)
/* ACA20 800ABE20 8FA90040 */  lw         $t1, 0x40($sp)
/* ACA24 800ABE24 03095823 */  subu       $t3, $t8, $t1
/* ACA28 800ABE28 1D60FFDF */  bgtz       $t3, .L800ABDA8
/* ACA2C 800ABE2C AFAB003C */   sw        $t3, 0x3c($sp)
.L800ABE30:
/* ACA30 800ABE30 8FAA007C */  lw         $t2, 0x7c($sp)
/* ACA34 800ABE34 19400011 */  blez       $t2, .L800ABE7C
/* ACA38 800ABE38 00000000 */   nop
/* ACA3C 800ABE3C 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACA40 800ABE40 8FA400AC */  lw         $a0, 0xac($sp)
/* ACA44 800ABE44 27A50044 */  addiu      $a1, $sp, 0x44
/* ACA48 800ABE48 0320F809 */  jalr       $t9
/* ACA4C 800ABE4C 8FA6007C */   lw        $a2, 0x7c($sp)
/* ACA50 800ABE50 AFA200AC */  sw         $v0, 0xac($sp)
/* ACA54 800ABE54 8FA800AC */  lw         $t0, 0xac($sp)
/* ACA58 800ABE58 11000006 */  beqz       $t0, .L800ABE74
/* ACA5C 800ABE5C 00000000 */   nop
/* ACA60 800ABE60 8FAC009C */  lw         $t4, 0x9c($sp)
/* ACA64 800ABE64 8FAD007C */  lw         $t5, 0x7c($sp)
/* ACA68 800ABE68 018D7821 */  addu       $t7, $t4, $t5
/* ACA6C 800ABE6C 10000003 */  b          .L800ABE7C
/* ACA70 800ABE70 AFAF009C */   sw        $t7, 0x9c($sp)
.L800ABE74:
/* ACA74 800ABE74 100000DF */  b          .L800AC1F4
/* ACA78 800ABE78 8FA2009C */   lw        $v0, 0x9c($sp)
.L800ABE7C:
/* ACA7C 800ABE7C 8FAE0080 */  lw         $t6, 0x80($sp)
/* ACA80 800ABE80 19C00028 */  blez       $t6, .L800ABF24
/* ACA84 800ABE84 00000000 */   nop
/* ACA88 800ABE88 8FB80080 */  lw         $t8, 0x80($sp)
/* ACA8C 800ABE8C AFB80034 */  sw         $t8, 0x34($sp)
/* ACA90 800ABE90 8FA90034 */  lw         $t1, 0x34($sp)
/* ACA94 800ABE94 19200023 */  blez       $t1, .L800ABF24
/* ACA98 800ABE98 00000000 */   nop
.L800ABE9C:
/* ACA9C 800ABE9C 8FAB0034 */  lw         $t3, 0x34($sp)
/* ACAA0 800ABEA0 2D610021 */  sltiu      $at, $t3, 0x21
/* ACAA4 800ABEA4 14200004 */  bnez       $at, .L800ABEB8
/* ACAA8 800ABEA8 00000000 */   nop
/* ACAAC 800ABEAC 240A0020 */  addiu      $t2, $zero, 0x20
/* ACAB0 800ABEB0 10000003 */  b          .L800ABEC0
/* ACAB4 800ABEB4 AFAA0038 */   sw        $t2, 0x38($sp)
.L800ABEB8:
/* ACAB8 800ABEB8 8FB90034 */  lw         $t9, 0x34($sp)
/* ACABC 800ABEBC AFB90038 */  sw         $t9, 0x38($sp)
.L800ABEC0:
/* ACAC0 800ABEC0 8FA80038 */  lw         $t0, 0x38($sp)
/* ACAC4 800ABEC4 19000012 */  blez       $t0, .L800ABF10
/* ACAC8 800ABEC8 00000000 */   nop
/* ACACC 800ABECC 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACAD0 800ABED0 3C05800D */  lui        $a1, %hi(D_800CD384)
/* ACAD4 800ABED4 24A5D384 */  addiu      $a1, $a1, %lo(D_800CD384)
/* ACAD8 800ABED8 8FA400AC */  lw         $a0, 0xac($sp)
/* ACADC 800ABEDC 0320F809 */  jalr       $t9
/* ACAE0 800ABEE0 8FA60038 */   lw        $a2, 0x38($sp)
/* ACAE4 800ABEE4 AFA200AC */  sw         $v0, 0xac($sp)
/* ACAE8 800ABEE8 8FAC00AC */  lw         $t4, 0xac($sp)
/* ACAEC 800ABEEC 11800006 */  beqz       $t4, .L800ABF08
/* ACAF0 800ABEF0 00000000 */   nop
/* ACAF4 800ABEF4 8FAD009C */  lw         $t5, 0x9c($sp)
/* ACAF8 800ABEF8 8FAF0038 */  lw         $t7, 0x38($sp)
/* ACAFC 800ABEFC 01AF7021 */  addu       $t6, $t5, $t7
/* ACB00 800ABF00 10000003 */  b          .L800ABF10
/* ACB04 800ABF04 AFAE009C */   sw        $t6, 0x9c($sp)
.L800ABF08:
/* ACB08 800ABF08 100000BA */  b          .L800AC1F4
/* ACB0C 800ABF0C 8FA2009C */   lw        $v0, 0x9c($sp)
.L800ABF10:
/* ACB10 800ABF10 8FB80034 */  lw         $t8, 0x34($sp)
/* ACB14 800ABF14 8FA90038 */  lw         $t1, 0x38($sp)
/* ACB18 800ABF18 03095823 */  subu       $t3, $t8, $t1
/* ACB1C 800ABF1C 1D60FFDF */  bgtz       $t3, .L800ABE9C
/* ACB20 800ABF20 AFAB0034 */   sw        $t3, 0x34($sp)
.L800ABF24:
/* ACB24 800ABF24 8FAA0084 */  lw         $t2, 0x84($sp)
/* ACB28 800ABF28 19400011 */  blez       $t2, .L800ABF70
/* ACB2C 800ABF2C 00000000 */   nop
/* ACB30 800ABF30 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACB34 800ABF34 8FA400AC */  lw         $a0, 0xac($sp)
/* ACB38 800ABF38 8FA50078 */  lw         $a1, 0x78($sp)
/* ACB3C 800ABF3C 0320F809 */  jalr       $t9
/* ACB40 800ABF40 8FA60084 */   lw        $a2, 0x84($sp)
/* ACB44 800ABF44 AFA200AC */  sw         $v0, 0xac($sp)
/* ACB48 800ABF48 8FA800AC */  lw         $t0, 0xac($sp)
/* ACB4C 800ABF4C 11000006 */  beqz       $t0, .L800ABF68
/* ACB50 800ABF50 00000000 */   nop
/* ACB54 800ABF54 8FAC009C */  lw         $t4, 0x9c($sp)
/* ACB58 800ABF58 8FAD0084 */  lw         $t5, 0x84($sp)
/* ACB5C 800ABF5C 018D7821 */  addu       $t7, $t4, $t5
/* ACB60 800ABF60 10000003 */  b          .L800ABF70
/* ACB64 800ABF64 AFAF009C */   sw        $t7, 0x9c($sp)
.L800ABF68:
/* ACB68 800ABF68 100000A2 */  b          .L800AC1F4
/* ACB6C 800ABF6C 8FA2009C */   lw        $v0, 0x9c($sp)
.L800ABF70:
/* ACB70 800ABF70 8FAE0088 */  lw         $t6, 0x88($sp)
/* ACB74 800ABF74 19C00028 */  blez       $t6, .L800AC018
/* ACB78 800ABF78 00000000 */   nop
/* ACB7C 800ABF7C 8FB80088 */  lw         $t8, 0x88($sp)
/* ACB80 800ABF80 AFB8002C */  sw         $t8, 0x2c($sp)
/* ACB84 800ABF84 8FA9002C */  lw         $t1, 0x2c($sp)
/* ACB88 800ABF88 19200023 */  blez       $t1, .L800AC018
/* ACB8C 800ABF8C 00000000 */   nop
.L800ABF90:
/* ACB90 800ABF90 8FAB002C */  lw         $t3, 0x2c($sp)
/* ACB94 800ABF94 2D610021 */  sltiu      $at, $t3, 0x21
/* ACB98 800ABF98 14200004 */  bnez       $at, .L800ABFAC
/* ACB9C 800ABF9C 00000000 */   nop
/* ACBA0 800ABFA0 240A0020 */  addiu      $t2, $zero, 0x20
/* ACBA4 800ABFA4 10000003 */  b          .L800ABFB4
/* ACBA8 800ABFA8 AFAA0030 */   sw        $t2, 0x30($sp)
.L800ABFAC:
/* ACBAC 800ABFAC 8FB9002C */  lw         $t9, 0x2c($sp)
/* ACBB0 800ABFB0 AFB90030 */  sw         $t9, 0x30($sp)
.L800ABFB4:
/* ACBB4 800ABFB4 8FA80030 */  lw         $t0, 0x30($sp)
/* ACBB8 800ABFB8 19000012 */  blez       $t0, .L800AC004
/* ACBBC 800ABFBC 00000000 */   nop
/* ACBC0 800ABFC0 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACBC4 800ABFC4 3C05800D */  lui        $a1, %hi(D_800CD384)
/* ACBC8 800ABFC8 24A5D384 */  addiu      $a1, $a1, %lo(D_800CD384)
/* ACBCC 800ABFCC 8FA400AC */  lw         $a0, 0xac($sp)
/* ACBD0 800ABFD0 0320F809 */  jalr       $t9
/* ACBD4 800ABFD4 8FA60030 */   lw        $a2, 0x30($sp)
/* ACBD8 800ABFD8 AFA200AC */  sw         $v0, 0xac($sp)
/* ACBDC 800ABFDC 8FAC00AC */  lw         $t4, 0xac($sp)
/* ACBE0 800ABFE0 11800006 */  beqz       $t4, .L800ABFFC
/* ACBE4 800ABFE4 00000000 */   nop
/* ACBE8 800ABFE8 8FAD009C */  lw         $t5, 0x9c($sp)
/* ACBEC 800ABFEC 8FAF0030 */  lw         $t7, 0x30($sp)
/* ACBF0 800ABFF0 01AF7021 */  addu       $t6, $t5, $t7
/* ACBF4 800ABFF4 10000003 */  b          .L800AC004
/* ACBF8 800ABFF8 AFAE009C */   sw        $t6, 0x9c($sp)
.L800ABFFC:
/* ACBFC 800ABFFC 1000007D */  b          .L800AC1F4
/* ACC00 800AC000 8FA2009C */   lw        $v0, 0x9c($sp)
.L800AC004:
/* ACC04 800AC004 8FB8002C */  lw         $t8, 0x2c($sp)
/* ACC08 800AC008 8FA90030 */  lw         $t1, 0x30($sp)
/* ACC0C 800AC00C 03095823 */  subu       $t3, $t8, $t1
/* ACC10 800AC010 1D60FFDF */  bgtz       $t3, .L800ABF90
/* ACC14 800AC014 AFAB002C */   sw        $t3, 0x2c($sp)
.L800AC018:
/* ACC18 800AC018 8FAA008C */  lw         $t2, 0x8c($sp)
/* ACC1C 800AC01C 19400014 */  blez       $t2, .L800AC070
/* ACC20 800AC020 00000000 */   nop
/* ACC24 800AC024 8FA80078 */  lw         $t0, 0x78($sp)
/* ACC28 800AC028 8FB90084 */  lw         $t9, 0x84($sp)
/* ACC2C 800AC02C 8FA400AC */  lw         $a0, 0xac($sp)
/* ACC30 800AC030 8FA6008C */  lw         $a2, 0x8c($sp)
/* ACC34 800AC034 01192821 */  addu       $a1, $t0, $t9
/* ACC38 800AC038 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACC3C 800AC03C 0320F809 */  jalr       $t9
/* ACC40 800AC040 00000000 */   nop
/* ACC44 800AC044 AFA200AC */  sw         $v0, 0xac($sp)
/* ACC48 800AC048 8FAC00AC */  lw         $t4, 0xac($sp)
/* ACC4C 800AC04C 11800006 */  beqz       $t4, .L800AC068
/* ACC50 800AC050 00000000 */   nop
/* ACC54 800AC054 8FAD009C */  lw         $t5, 0x9c($sp)
/* ACC58 800AC058 8FAF008C */  lw         $t7, 0x8c($sp)
/* ACC5C 800AC05C 01AF7021 */  addu       $t6, $t5, $t7
/* ACC60 800AC060 10000003 */  b          .L800AC070
/* ACC64 800AC064 AFAE009C */   sw        $t6, 0x9c($sp)
.L800AC068:
/* ACC68 800AC068 10000062 */  b          .L800AC1F4
/* ACC6C 800AC06C 8FA2009C */   lw        $v0, 0x9c($sp)
.L800AC070:
/* ACC70 800AC070 8FB80090 */  lw         $t8, 0x90($sp)
/* ACC74 800AC074 1B000028 */  blez       $t8, .L800AC118
/* ACC78 800AC078 00000000 */   nop
/* ACC7C 800AC07C 8FA90090 */  lw         $t1, 0x90($sp)
/* ACC80 800AC080 AFA90024 */  sw         $t1, 0x24($sp)
/* ACC84 800AC084 8FAB0024 */  lw         $t3, 0x24($sp)
/* ACC88 800AC088 19600023 */  blez       $t3, .L800AC118
/* ACC8C 800AC08C 00000000 */   nop
.L800AC090:
/* ACC90 800AC090 8FAA0024 */  lw         $t2, 0x24($sp)
/* ACC94 800AC094 2D410021 */  sltiu      $at, $t2, 0x21
/* ACC98 800AC098 14200004 */  bnez       $at, .L800AC0AC
/* ACC9C 800AC09C 00000000 */   nop
/* ACCA0 800AC0A0 24080020 */  addiu      $t0, $zero, 0x20
/* ACCA4 800AC0A4 10000003 */  b          .L800AC0B4
/* ACCA8 800AC0A8 AFA80028 */   sw        $t0, 0x28($sp)
.L800AC0AC:
/* ACCAC 800AC0AC 8FB90024 */  lw         $t9, 0x24($sp)
/* ACCB0 800AC0B0 AFB90028 */  sw         $t9, 0x28($sp)
.L800AC0B4:
/* ACCB4 800AC0B4 8FAC0028 */  lw         $t4, 0x28($sp)
/* ACCB8 800AC0B8 19800012 */  blez       $t4, .L800AC104
/* ACCBC 800AC0BC 00000000 */   nop
/* ACCC0 800AC0C0 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACCC4 800AC0C4 3C05800D */  lui        $a1, %hi(D_800CD384)
/* ACCC8 800AC0C8 24A5D384 */  addiu      $a1, $a1, %lo(D_800CD384)
/* ACCCC 800AC0CC 8FA400AC */  lw         $a0, 0xac($sp)
/* ACCD0 800AC0D0 0320F809 */  jalr       $t9
/* ACCD4 800AC0D4 8FA60028 */   lw        $a2, 0x28($sp)
/* ACCD8 800AC0D8 AFA200AC */  sw         $v0, 0xac($sp)
/* ACCDC 800AC0DC 8FAD00AC */  lw         $t5, 0xac($sp)
/* ACCE0 800AC0E0 11A00006 */  beqz       $t5, .L800AC0FC
/* ACCE4 800AC0E4 00000000 */   nop
/* ACCE8 800AC0E8 8FAF009C */  lw         $t7, 0x9c($sp)
/* ACCEC 800AC0EC 8FAE0028 */  lw         $t6, 0x28($sp)
/* ACCF0 800AC0F0 01EEC021 */  addu       $t8, $t7, $t6
/* ACCF4 800AC0F4 10000003 */  b          .L800AC104
/* ACCF8 800AC0F8 AFB8009C */   sw        $t8, 0x9c($sp)
.L800AC0FC:
/* ACCFC 800AC0FC 1000003D */  b          .L800AC1F4
/* ACD00 800AC100 8FA2009C */   lw        $v0, 0x9c($sp)
.L800AC104:
/* ACD04 800AC104 8FA90024 */  lw         $t1, 0x24($sp)
/* ACD08 800AC108 8FAB0028 */  lw         $t3, 0x28($sp)
/* ACD0C 800AC10C 012B5023 */  subu       $t2, $t1, $t3
/* ACD10 800AC110 1D40FFDF */  bgtz       $t2, .L800AC090
/* ACD14 800AC114 AFAA0024 */   sw        $t2, 0x24($sp)
.L800AC118:
/* ACD18 800AC118 8FA800A0 */  lw         $t0, 0xa0($sp)
/* ACD1C 800AC11C 310C0004 */  andi       $t4, $t0, 4
/* ACD20 800AC120 1180002B */  beqz       $t4, .L800AC1D0
/* ACD24 800AC124 00000000 */   nop
/* ACD28 800AC128 8FB90098 */  lw         $t9, 0x98($sp)
/* ACD2C 800AC12C 1B200028 */  blez       $t9, .L800AC1D0
/* ACD30 800AC130 00000000 */   nop
/* ACD34 800AC134 8FAD0098 */  lw         $t5, 0x98($sp)
/* ACD38 800AC138 AFAD001C */  sw         $t5, 0x1c($sp)
/* ACD3C 800AC13C 8FAF001C */  lw         $t7, 0x1c($sp)
/* ACD40 800AC140 19E00023 */  blez       $t7, .L800AC1D0
/* ACD44 800AC144 00000000 */   nop
.L800AC148:
/* ACD48 800AC148 8FAE001C */  lw         $t6, 0x1c($sp)
/* ACD4C 800AC14C 2DC10021 */  sltiu      $at, $t6, 0x21
/* ACD50 800AC150 14200004 */  bnez       $at, .L800AC164
/* ACD54 800AC154 00000000 */   nop
/* ACD58 800AC158 24180020 */  addiu      $t8, $zero, 0x20
/* ACD5C 800AC15C 10000003 */  b          .L800AC16C
/* ACD60 800AC160 AFB80020 */   sw        $t8, 0x20($sp)
.L800AC164:
/* ACD64 800AC164 8FA9001C */  lw         $t1, 0x1c($sp)
/* ACD68 800AC168 AFA90020 */  sw         $t1, 0x20($sp)
.L800AC16C:
/* ACD6C 800AC16C 8FAB0020 */  lw         $t3, 0x20($sp)
/* ACD70 800AC170 19600012 */  blez       $t3, .L800AC1BC
/* ACD74 800AC174 00000000 */   nop
/* ACD78 800AC178 8FB900A8 */  lw         $t9, 0xa8($sp)
/* ACD7C 800AC17C 3C05800D */  lui        $a1, %hi(D_800CD360)
/* ACD80 800AC180 24A5D360 */  addiu      $a1, $a1, %lo(D_800CD360)
/* ACD84 800AC184 8FA400AC */  lw         $a0, 0xac($sp)
/* ACD88 800AC188 0320F809 */  jalr       $t9
/* ACD8C 800AC18C 8FA60020 */   lw        $a2, 0x20($sp)
/* ACD90 800AC190 AFA200AC */  sw         $v0, 0xac($sp)
/* ACD94 800AC194 8FAA00AC */  lw         $t2, 0xac($sp)
/* ACD98 800AC198 11400006 */  beqz       $t2, .L800AC1B4
/* ACD9C 800AC19C 00000000 */   nop
/* ACDA0 800AC1A0 8FA8009C */  lw         $t0, 0x9c($sp)
/* ACDA4 800AC1A4 8FAC0020 */  lw         $t4, 0x20($sp)
/* ACDA8 800AC1A8 010C6821 */  addu       $t5, $t0, $t4
/* ACDAC 800AC1AC 10000003 */  b          .L800AC1BC
/* ACDB0 800AC1B0 AFAD009C */   sw        $t5, 0x9c($sp)
.L800AC1B4:
/* ACDB4 800AC1B4 1000000F */  b          .L800AC1F4
/* ACDB8 800AC1B8 8FA2009C */   lw        $v0, 0x9c($sp)
.L800AC1BC:
/* ACDBC 800AC1BC 8FAF001C */  lw         $t7, 0x1c($sp)
/* ACDC0 800AC1C0 8FAE0020 */  lw         $t6, 0x20($sp)
/* ACDC4 800AC1C4 01EEC023 */  subu       $t8, $t7, $t6
/* ACDC8 800AC1C8 1F00FFDF */  bgtz       $t8, .L800AC148
/* ACDCC 800AC1CC AFB8001C */   sw        $t8, 0x1c($sp)
.L800AC1D0:
/* ACDD0 800AC1D0 8FA9006C */  lw         $t1, 0x6c($sp)
/* ACDD4 800AC1D4 252B0001 */  addiu      $t3, $t1, 1
/* ACDD8 800AC1D8 AFAB00B0 */  sw         $t3, 0xb0($sp)
/* ACDDC 800AC1DC 1000FDEB */  b          .L800AB98C
/* ACDE0 800AC1E0 00000000 */   nop
/* ACDE4 800AC1E4 10000003 */  b          .L800AC1F4
/* ACDE8 800AC1E8 00001025 */   or        $v0, $zero, $zero
/* ACDEC 800AC1EC 10000001 */  b          .L800AC1F4
/* ACDF0 800AC1F0 00000000 */   nop
.L800AC1F4:
/* ACDF4 800AC1F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* ACDF8 800AC1F8 27BD00A8 */  addiu      $sp, $sp, 0xa8
/* ACDFC 800AC1FC 03E00008 */  jr         $ra
/* ACE00 800AC200 00000000 */   nop

glabel func_800AC204
/* ACE04 800AC204 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* ACE08 800AC208 AFBF0024 */  sw         $ra, 0x24($sp)
/* ACE0C 800AC20C AFA40038 */  sw         $a0, 0x38($sp)
/* ACE10 800AC210 AFA5003C */  sw         $a1, 0x3c($sp)
/* ACE14 800AC214 AFA60040 */  sw         $a2, 0x40($sp)
/* ACE18 800AC218 AFA70044 */  sw         $a3, 0x44($sp)
/* ACE1C 800AC21C AFB30020 */  sw         $s3, 0x20($sp)
/* ACE20 800AC220 AFB2001C */  sw         $s2, 0x1c($sp)
/* ACE24 800AC224 AFB10018 */  sw         $s1, 0x18($sp)
/* ACE28 800AC228 AFB00014 */  sw         $s0, 0x14($sp)
/* ACE2C 800AC22C 8FAE0038 */  lw         $t6, 0x38($sp)
/* ACE30 800AC230 ADC00020 */  sw         $zero, 0x20($t6)
/* ACE34 800AC234 8FAF0038 */  lw         $t7, 0x38($sp)
/* ACE38 800AC238 8DF30020 */  lw         $s3, 0x20($t7)
/* ACE3C 800AC23C ADF3001C */  sw         $s3, 0x1c($t7)
/* ACE40 800AC240 8FB80038 */  lw         $t8, 0x38($sp)
/* ACE44 800AC244 02609025 */  or         $s2, $s3, $zero
/* ACE48 800AC248 02408825 */  or         $s1, $s2, $zero
/* ACE4C 800AC24C AF120018 */  sw         $s2, 0x18($t8)
/* ACE50 800AC250 8FB90038 */  lw         $t9, 0x38($sp)
/* ACE54 800AC254 02208025 */  or         $s0, $s1, $zero
/* ACE58 800AC258 AF310014 */  sw         $s1, 0x14($t9)
/* ACE5C 800AC25C 8FA80038 */  lw         $t0, 0x38($sp)
/* ACE60 800AC260 AD100010 */  sw         $s0, 0x10($t0)
/* ACE64 800AC264 8FA90038 */  lw         $t1, 0x38($sp)
/* ACE68 800AC268 AD30000C */  sw         $s0, 0xc($t1)
/* ACE6C 800AC26C 93B00043 */  lbu        $s0, 0x43($sp)
/* ACE70 800AC270 2A010026 */  slti       $at, $s0, 0x26
/* ACE74 800AC274 1420000B */  bnez       $at, .L800AC2A4
/* ACE78 800AC278 00000000 */   nop
/* ACE7C 800AC27C 260AFFBB */  addiu      $t2, $s0, -0x45
/* ACE80 800AC280 2D410034 */  sltiu      $at, $t2, 0x34
/* ACE84 800AC284 10200235 */  beqz       $at, .L800ACB5C
/* ACE88 800AC288 00000000 */   nop
/* ACE8C 800AC28C 000A5080 */  sll        $t2, $t2, 2
/* ACE90 800AC290 3C01800D */  lui        $at, %hi(D_800D3504)
/* ACE94 800AC294 002A0821 */  addu       $at, $at, $t2
/* ACE98 800AC298 8C2A3504 */  lw         $t2, %lo(D_800D3504)($at)
/* ACE9C 800AC29C 01400008 */  jr         $t2
/* ACEA0 800AC2A0 00000000 */   nop
.L800AC2A4:
/* ACEA4 800AC2A4 24010025 */  addiu      $at, $zero, 0x25
/* ACEA8 800AC2A8 12010220 */  beq        $s0, $at, .L800ACB2C
/* ACEAC 800AC2AC 00000000 */   nop
/* ACEB0 800AC2B0 1000022A */  b          .L800ACB5C
/* ACEB4 800AC2B4 00000000 */   nop
/* ACEB8 800AC2B8 8FAB003C */  lw         $t3, 0x3c($sp)
/* ACEBC 800AC2BC 2401FFFC */  addiu      $at, $zero, -4
/* ACEC0 800AC2C0 8D6C0000 */  lw         $t4, ($t3)
/* ACEC4 800AC2C4 258D0003 */  addiu      $t5, $t4, 3
/* ACEC8 800AC2C8 01A17024 */  and        $t6, $t5, $at
/* ACECC 800AC2CC 25CF0004 */  addiu      $t7, $t6, 4
/* ACED0 800AC2D0 AD6F0000 */  sw         $t7, ($t3)
/* ACED4 800AC2D4 8FB8003C */  lw         $t8, 0x3c($sp)
/* ACED8 800AC2D8 8FAA0038 */  lw         $t2, 0x38($sp)
/* ACEDC 800AC2DC 8FA90044 */  lw         $t1, 0x44($sp)
/* ACEE0 800AC2E0 8F190000 */  lw         $t9, ($t8)
/* ACEE4 800AC2E4 8D4C000C */  lw         $t4, 0xc($t2)
/* ACEE8 800AC2E8 8F28FFFC */  lw         $t0, -4($t9)
/* ACEEC 800AC2EC 012C6821 */  addu       $t5, $t1, $t4
/* ACEF0 800AC2F0 A1A80000 */  sb         $t0, ($t5)
/* ACEF4 800AC2F4 8FAE0038 */  lw         $t6, 0x38($sp)
/* ACEF8 800AC2F8 8DCF000C */  lw         $t7, 0xc($t6)
/* ACEFC 800AC2FC 25EB0001 */  addiu      $t3, $t7, 1
/* ACF00 800AC300 ADCB000C */  sw         $t3, 0xc($t6)
/* ACF04 800AC304 10000221 */  b          .L800ACB8C
/* ACF08 800AC308 00000000 */   nop
/* ACF0C 800AC30C 8FB80038 */  lw         $t8, 0x38($sp)
/* ACF10 800AC310 2401006C */  addiu      $at, $zero, 0x6c
/* ACF14 800AC314 93190034 */  lbu        $t9, 0x34($t8)
/* ACF18 800AC318 17210011 */  bne        $t9, $at, .L800AC360
/* ACF1C 800AC31C 00000000 */   nop
/* ACF20 800AC320 8FAA003C */  lw         $t2, 0x3c($sp)
/* ACF24 800AC324 2401FFFC */  addiu      $at, $zero, -4
/* ACF28 800AC328 8D490000 */  lw         $t1, ($t2)
/* ACF2C 800AC32C 252C0003 */  addiu      $t4, $t1, 3
/* ACF30 800AC330 01814024 */  and        $t0, $t4, $at
/* ACF34 800AC334 250D0004 */  addiu      $t5, $t0, 4
/* ACF38 800AC338 AD4D0000 */  sw         $t5, ($t2)
/* ACF3C 800AC33C 8FAF003C */  lw         $t7, 0x3c($sp)
/* ACF40 800AC340 8FA90038 */  lw         $t1, 0x38($sp)
/* ACF44 800AC344 8DEB0000 */  lw         $t3, ($t7)
/* ACF48 800AC348 8D6EFFFC */  lw         $t6, -4($t3)
/* ACF4C 800AC34C 01C0C825 */  or         $t9, $t6, $zero
/* ACF50 800AC350 000EC7C3 */  sra        $t8, $t6, 0x1f
/* ACF54 800AC354 AD380000 */  sw         $t8, ($t1)
/* ACF58 800AC358 10000024 */  b          .L800AC3EC
/* ACF5C 800AC35C AD390004 */   sw        $t9, 4($t1)
.L800AC360:
/* ACF60 800AC360 8FAC0038 */  lw         $t4, 0x38($sp)
/* ACF64 800AC364 2401004C */  addiu      $at, $zero, 0x4c
/* ACF68 800AC368 91880034 */  lbu        $t0, 0x34($t4)
/* ACF6C 800AC36C 15010010 */  bne        $t0, $at, .L800AC3B0
/* ACF70 800AC370 00000000 */   nop
/* ACF74 800AC374 8FAD003C */  lw         $t5, 0x3c($sp)
/* ACF78 800AC378 2401FFF8 */  addiu      $at, $zero, -8
/* ACF7C 800AC37C 8DAA0000 */  lw         $t2, ($t5)
/* ACF80 800AC380 254F0007 */  addiu      $t7, $t2, 7
/* ACF84 800AC384 01E15824 */  and        $t3, $t7, $at
/* ACF88 800AC388 256E0008 */  addiu      $t6, $t3, 8
/* ACF8C 800AC38C ADAE0000 */  sw         $t6, ($t5)
/* ACF90 800AC390 8FB8003C */  lw         $t8, 0x3c($sp)
/* ACF94 800AC394 8FA90038 */  lw         $t1, 0x38($sp)
/* ACF98 800AC398 8F190000 */  lw         $t9, ($t8)
/* ACF9C 800AC39C 8F2CFFF8 */  lw         $t4, -8($t9)
/* ACFA0 800AC3A0 8F2DFFFC */  lw         $t5, -4($t9)
/* ACFA4 800AC3A4 AD2C0000 */  sw         $t4, ($t1)
/* ACFA8 800AC3A8 10000010 */  b          .L800AC3EC
/* ACFAC 800AC3AC AD2D0004 */   sw        $t5, 4($t1)
.L800AC3B0:
/* ACFB0 800AC3B0 8FA8003C */  lw         $t0, 0x3c($sp)
/* ACFB4 800AC3B4 2401FFFC */  addiu      $at, $zero, -4
/* ACFB8 800AC3B8 8D0A0000 */  lw         $t2, ($t0)
/* ACFBC 800AC3BC 254F0003 */  addiu      $t7, $t2, 3
/* ACFC0 800AC3C0 01E15824 */  and        $t3, $t7, $at
/* ACFC4 800AC3C4 256E0004 */  addiu      $t6, $t3, 4
/* ACFC8 800AC3C8 AD0E0000 */  sw         $t6, ($t0)
/* ACFCC 800AC3CC 8FB8003C */  lw         $t8, 0x3c($sp)
/* ACFD0 800AC3D0 8FAD0038 */  lw         $t5, 0x38($sp)
/* ACFD4 800AC3D4 8F190000 */  lw         $t9, ($t8)
/* ACFD8 800AC3D8 8F2CFFFC */  lw         $t4, -4($t9)
/* ACFDC 800AC3DC 01805825 */  or         $t3, $t4, $zero
/* ACFE0 800AC3E0 000C57C3 */  sra        $t2, $t4, 0x1f
/* ACFE4 800AC3E4 ADAA0000 */  sw         $t2, ($t5)
/* ACFE8 800AC3E8 ADAB0004 */  sw         $t3, 4($t5)
.L800AC3EC:
/* ACFEC 800AC3EC 8FA90038 */  lw         $t1, 0x38($sp)
/* ACFF0 800AC3F0 24010068 */  addiu      $at, $zero, 0x68
/* ACFF4 800AC3F4 912F0034 */  lbu        $t7, 0x34($t1)
/* ACFF8 800AC3F8 15E1000B */  bne        $t7, $at, .L800AC428
/* ACFFC 800AC3FC 00000000 */   nop
/* AD000 800AC400 8FAE0038 */  lw         $t6, 0x38($sp)
/* AD004 800AC404 8DC90004 */  lw         $t1, 4($t6)
/* AD008 800AC408 8DC80000 */  lw         $t0, ($t6)
/* AD00C 800AC40C 0120C025 */  or         $t8, $t1, $zero
/* AD010 800AC410 0018CC00 */  sll        $t9, $t8, 0x10
/* AD014 800AC414 00196403 */  sra        $t4, $t9, 0x10
/* AD018 800AC418 01805825 */  or         $t3, $t4, $zero
/* AD01C 800AC41C 000C57C3 */  sra        $t2, $t4, 0x1f
/* AD020 800AC420 ADCA0000 */  sw         $t2, ($t6)
/* AD024 800AC424 ADCB0004 */  sw         $t3, 4($t6)
.L800AC428:
/* AD028 800AC428 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD02C 800AC42C 8DA80000 */  lw         $t0, ($t5)
/* AD030 800AC430 8DA90004 */  lw         $t1, 4($t5)
/* AD034 800AC434 1D000010 */  bgtz       $t0, .L800AC478
/* AD038 800AC438 00000000 */   nop
/* AD03C 800AC43C 05000003 */  bltz       $t0, .L800AC44C
/* AD040 800AC440 00000000 */   nop
/* AD044 800AC444 1000000C */  b          .L800AC478
/* AD048 800AC448 00000000 */   nop
.L800AC44C:
/* AD04C 800AC44C 8FB90038 */  lw         $t9, 0x38($sp)
/* AD050 800AC450 8FB80044 */  lw         $t8, 0x44($sp)
/* AD054 800AC454 240F002D */  addiu      $t7, $zero, 0x2d
/* AD058 800AC458 8F2C000C */  lw         $t4, 0xc($t9)
/* AD05C 800AC45C 030C5021 */  addu       $t2, $t8, $t4
/* AD060 800AC460 A14F0000 */  sb         $t7, ($t2)
/* AD064 800AC464 8FAB0038 */  lw         $t3, 0x38($sp)
/* AD068 800AC468 8D6E000C */  lw         $t6, 0xc($t3)
/* AD06C 800AC46C 25CD0001 */  addiu      $t5, $t6, 1
/* AD070 800AC470 10000020 */  b          .L800AC4F4
/* AD074 800AC474 AD6D000C */   sw        $t5, 0xc($t3)
.L800AC478:
/* AD078 800AC478 8FA80038 */  lw         $t0, 0x38($sp)
/* AD07C 800AC47C 8D090030 */  lw         $t1, 0x30($t0)
/* AD080 800AC480 31390002 */  andi       $t9, $t1, 2
/* AD084 800AC484 1320000C */  beqz       $t9, .L800AC4B8
/* AD088 800AC488 00000000 */   nop
/* AD08C 800AC48C 8FAF0038 */  lw         $t7, 0x38($sp)
/* AD090 800AC490 8FAC0044 */  lw         $t4, 0x44($sp)
/* AD094 800AC494 2418002B */  addiu      $t8, $zero, 0x2b
/* AD098 800AC498 8DEA000C */  lw         $t2, 0xc($t7)
/* AD09C 800AC49C 018A7021 */  addu       $t6, $t4, $t2
/* AD0A0 800AC4A0 A1D80000 */  sb         $t8, ($t6)
/* AD0A4 800AC4A4 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD0A8 800AC4A8 8DAB000C */  lw         $t3, 0xc($t5)
/* AD0AC 800AC4AC 25680001 */  addiu      $t0, $t3, 1
/* AD0B0 800AC4B0 10000010 */  b          .L800AC4F4
/* AD0B4 800AC4B4 ADA8000C */   sw        $t0, 0xc($t5)
.L800AC4B8:
/* AD0B8 800AC4B8 8FA90038 */  lw         $t1, 0x38($sp)
/* AD0BC 800AC4BC 8D390030 */  lw         $t9, 0x30($t1)
/* AD0C0 800AC4C0 332F0001 */  andi       $t7, $t9, 1
/* AD0C4 800AC4C4 11E0000B */  beqz       $t7, .L800AC4F4
/* AD0C8 800AC4C8 00000000 */   nop
/* AD0CC 800AC4CC 8FB80038 */  lw         $t8, 0x38($sp)
/* AD0D0 800AC4D0 8FAA0044 */  lw         $t2, 0x44($sp)
/* AD0D4 800AC4D4 240C0020 */  addiu      $t4, $zero, 0x20
/* AD0D8 800AC4D8 8F0E000C */  lw         $t6, 0xc($t8)
/* AD0DC 800AC4DC 014E5821 */  addu       $t3, $t2, $t6
/* AD0E0 800AC4E0 A16C0000 */  sb         $t4, ($t3)
/* AD0E4 800AC4E4 8FA80038 */  lw         $t0, 0x38($sp)
/* AD0E8 800AC4E8 8D0D000C */  lw         $t5, 0xc($t0)
/* AD0EC 800AC4EC 25A90001 */  addiu      $t1, $t5, 1
/* AD0F0 800AC4F0 AD09000C */  sw         $t1, 0xc($t0)
.L800AC4F4:
/* AD0F4 800AC4F4 8FB90038 */  lw         $t9, 0x38($sp)
/* AD0F8 800AC4F8 8FB80044 */  lw         $t8, 0x44($sp)
/* AD0FC 800AC4FC 8F2F000C */  lw         $t7, 0xc($t9)
/* AD100 800AC500 01F85021 */  addu       $t2, $t7, $t8
/* AD104 800AC504 AF2A0008 */  sw         $t2, 8($t9)
/* AD108 800AC508 8FA40038 */  lw         $a0, 0x38($sp)
/* AD10C 800AC50C 0C02E1F0 */  jal        func_800B87C0
/* AD110 800AC510 93A50043 */   lbu       $a1, 0x43($sp)
/* AD114 800AC514 1000019D */  b          .L800ACB8C
/* AD118 800AC518 00000000 */   nop
/* AD11C 800AC51C 8FAE0038 */  lw         $t6, 0x38($sp)
/* AD120 800AC520 2401006C */  addiu      $at, $zero, 0x6c
/* AD124 800AC524 91CC0034 */  lbu        $t4, 0x34($t6)
/* AD128 800AC528 15810011 */  bne        $t4, $at, .L800AC570
/* AD12C 800AC52C 00000000 */   nop
/* AD130 800AC530 8FAB003C */  lw         $t3, 0x3c($sp)
/* AD134 800AC534 2401FFFC */  addiu      $at, $zero, -4
/* AD138 800AC538 8D6D0000 */  lw         $t5, ($t3)
/* AD13C 800AC53C 25A90003 */  addiu      $t1, $t5, 3
/* AD140 800AC540 01214024 */  and        $t0, $t1, $at
/* AD144 800AC544 250F0004 */  addiu      $t7, $t0, 4
/* AD148 800AC548 AD6F0000 */  sw         $t7, ($t3)
/* AD14C 800AC54C 8FB8003C */  lw         $t8, 0x3c($sp)
/* AD150 800AC550 8FAC0038 */  lw         $t4, 0x38($sp)
/* AD154 800AC554 8F0A0000 */  lw         $t2, ($t8)
/* AD158 800AC558 8D59FFFC */  lw         $t9, -4($t2)
/* AD15C 800AC55C 03207825 */  or         $t7, $t9, $zero
/* AD160 800AC560 001977C3 */  sra        $t6, $t9, 0x1f
/* AD164 800AC564 AD8E0000 */  sw         $t6, ($t4)
/* AD168 800AC568 10000024 */  b          .L800AC5FC
/* AD16C 800AC56C AD8F0004 */   sw        $t7, 4($t4)
.L800AC570:
/* AD170 800AC570 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD174 800AC574 2401004C */  addiu      $at, $zero, 0x4c
/* AD178 800AC578 91A90034 */  lbu        $t1, 0x34($t5)
/* AD17C 800AC57C 15210010 */  bne        $t1, $at, .L800AC5C0
/* AD180 800AC580 00000000 */   nop
/* AD184 800AC584 8FA8003C */  lw         $t0, 0x3c($sp)
/* AD188 800AC588 2401FFF8 */  addiu      $at, $zero, -8
/* AD18C 800AC58C 8D0B0000 */  lw         $t3, ($t0)
/* AD190 800AC590 25780007 */  addiu      $t8, $t3, 7
/* AD194 800AC594 03015024 */  and        $t2, $t8, $at
/* AD198 800AC598 25590008 */  addiu      $t9, $t2, 8
/* AD19C 800AC59C AD190000 */  sw         $t9, ($t0)
/* AD1A0 800AC5A0 8FAE003C */  lw         $t6, 0x3c($sp)
/* AD1A4 800AC5A4 8FA90038 */  lw         $t1, 0x38($sp)
/* AD1A8 800AC5A8 8DCF0000 */  lw         $t7, ($t6)
/* AD1AC 800AC5AC 8DECFFF8 */  lw         $t4, -8($t7)
/* AD1B0 800AC5B0 8DEDFFFC */  lw         $t5, -4($t7)
/* AD1B4 800AC5B4 AD2C0000 */  sw         $t4, ($t1)
/* AD1B8 800AC5B8 10000010 */  b          .L800AC5FC
/* AD1BC 800AC5BC AD2D0004 */   sw        $t5, 4($t1)
.L800AC5C0:
/* AD1C0 800AC5C0 8FAB003C */  lw         $t3, 0x3c($sp)
/* AD1C4 800AC5C4 2401FFFC */  addiu      $at, $zero, -4
/* AD1C8 800AC5C8 8D780000 */  lw         $t8, ($t3)
/* AD1CC 800AC5CC 270A0003 */  addiu      $t2, $t8, 3
/* AD1D0 800AC5D0 0141C824 */  and        $t9, $t2, $at
/* AD1D4 800AC5D4 27280004 */  addiu      $t0, $t9, 4
/* AD1D8 800AC5D8 AD680000 */  sw         $t0, ($t3)
/* AD1DC 800AC5DC 8FAE003C */  lw         $t6, 0x3c($sp)
/* AD1E0 800AC5E0 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD1E4 800AC5E4 8DCF0000 */  lw         $t7, ($t6)
/* AD1E8 800AC5E8 8DECFFFC */  lw         $t4, -4($t7)
/* AD1EC 800AC5EC 0180C825 */  or         $t9, $t4, $zero
/* AD1F0 800AC5F0 000CC7C3 */  sra        $t8, $t4, 0x1f
/* AD1F4 800AC5F4 ADB80000 */  sw         $t8, ($t5)
/* AD1F8 800AC5F8 ADB90004 */  sw         $t9, 4($t5)
.L800AC5FC:
/* AD1FC 800AC5FC 8FA90038 */  lw         $t1, 0x38($sp)
/* AD200 800AC600 24010068 */  addiu      $at, $zero, 0x68
/* AD204 800AC604 912A0034 */  lbu        $t2, 0x34($t1)
/* AD208 800AC608 1541000B */  bne        $t2, $at, .L800AC638
/* AD20C 800AC60C 00000000 */   nop
/* AD210 800AC610 8FA80038 */  lw         $t0, 0x38($sp)
/* AD214 800AC614 24180000 */  addiu      $t8, $zero, 0
/* AD218 800AC618 8D0F0004 */  lw         $t7, 4($t0)
/* AD21C 800AC61C 8D0E0000 */  lw         $t6, ($t0)
/* AD220 800AC620 AD180000 */  sw         $t8, ($t0)
/* AD224 800AC624 01E05825 */  or         $t3, $t7, $zero
/* AD228 800AC628 316CFFFF */  andi       $t4, $t3, 0xffff
/* AD22C 800AC62C 0180C825 */  or         $t9, $t4, $zero
/* AD230 800AC630 1000000D */  b          .L800AC668
/* AD234 800AC634 AD190004 */   sw        $t9, 4($t0)
.L800AC638:
/* AD238 800AC638 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD23C 800AC63C 91A90034 */  lbu        $t1, 0x34($t5)
/* AD240 800AC640 15200009 */  bnez       $t1, .L800AC668
/* AD244 800AC644 00000000 */   nop
/* AD248 800AC648 8FAA0038 */  lw         $t2, 0x38($sp)
/* AD24C 800AC64C 240C0000 */  addiu      $t4, $zero, 0
/* AD250 800AC650 8D4F0004 */  lw         $t7, 4($t2)
/* AD254 800AC654 8D4E0000 */  lw         $t6, ($t2)
/* AD258 800AC658 AD4C0000 */  sw         $t4, ($t2)
/* AD25C 800AC65C 01E05825 */  or         $t3, $t7, $zero
/* AD260 800AC660 01606825 */  or         $t5, $t3, $zero
/* AD264 800AC664 AD4D0004 */  sw         $t5, 4($t2)
.L800AC668:
/* AD268 800AC668 8FB80038 */  lw         $t8, 0x38($sp)
/* AD26C 800AC66C 8F190030 */  lw         $t9, 0x30($t8)
/* AD270 800AC670 33280008 */  andi       $t0, $t9, 8
/* AD274 800AC674 1100001C */  beqz       $t0, .L800AC6E8
/* AD278 800AC678 00000000 */   nop
/* AD27C 800AC67C 8FAF0038 */  lw         $t7, 0x38($sp)
/* AD280 800AC680 8FAE0044 */  lw         $t6, 0x44($sp)
/* AD284 800AC684 24090030 */  addiu      $t1, $zero, 0x30
/* AD288 800AC688 8DEB000C */  lw         $t3, 0xc($t7)
/* AD28C 800AC68C 01CB6021 */  addu       $t4, $t6, $t3
/* AD290 800AC690 A1890000 */  sb         $t1, ($t4)
/* AD294 800AC694 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD298 800AC698 8DAA000C */  lw         $t2, 0xc($t5)
/* AD29C 800AC69C 25580001 */  addiu      $t8, $t2, 1
/* AD2A0 800AC6A0 ADB8000C */  sw         $t8, 0xc($t5)
/* AD2A4 800AC6A4 93B90043 */  lbu        $t9, 0x43($sp)
/* AD2A8 800AC6A8 24010078 */  addiu      $at, $zero, 0x78
/* AD2AC 800AC6AC 13210004 */  beq        $t9, $at, .L800AC6C0
/* AD2B0 800AC6B0 00000000 */   nop
/* AD2B4 800AC6B4 24010058 */  addiu      $at, $zero, 0x58
/* AD2B8 800AC6B8 1721000B */  bne        $t9, $at, .L800AC6E8
/* AD2BC 800AC6BC 00000000 */   nop
.L800AC6C0:
/* AD2C0 800AC6C0 8FAE0038 */  lw         $t6, 0x38($sp)
/* AD2C4 800AC6C4 8FAF0044 */  lw         $t7, 0x44($sp)
/* AD2C8 800AC6C8 93A80043 */  lbu        $t0, 0x43($sp)
/* AD2CC 800AC6CC 8DCB000C */  lw         $t3, 0xc($t6)
/* AD2D0 800AC6D0 01EB4821 */  addu       $t1, $t7, $t3
/* AD2D4 800AC6D4 A1280000 */  sb         $t0, ($t1)
/* AD2D8 800AC6D8 8FAC0038 */  lw         $t4, 0x38($sp)
/* AD2DC 800AC6DC 8D8A000C */  lw         $t2, 0xc($t4)
/* AD2E0 800AC6E0 25580001 */  addiu      $t8, $t2, 1
/* AD2E4 800AC6E4 AD98000C */  sw         $t8, 0xc($t4)
.L800AC6E8:
/* AD2E8 800AC6E8 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD2EC 800AC6EC 8FAE0044 */  lw         $t6, 0x44($sp)
/* AD2F0 800AC6F0 8DB9000C */  lw         $t9, 0xc($t5)
/* AD2F4 800AC6F4 032E7821 */  addu       $t7, $t9, $t6
/* AD2F8 800AC6F8 ADAF0008 */  sw         $t7, 8($t5)
/* AD2FC 800AC6FC 8FA40038 */  lw         $a0, 0x38($sp)
/* AD300 800AC700 0C02E1F0 */  jal        func_800B87C0
/* AD304 800AC704 93A50043 */   lbu       $a1, 0x43($sp)
/* AD308 800AC708 10000120 */  b          .L800ACB8C
/* AD30C 800AC70C 00000000 */   nop
/* AD310 800AC710 8FAB0038 */  lw         $t3, 0x38($sp)
/* AD314 800AC714 2401004C */  addiu      $at, $zero, 0x4c
/* AD318 800AC718 91680034 */  lbu        $t0, 0x34($t3)
/* AD31C 800AC71C 15010025 */  bne        $t0, $at, .L800AC7B4
/* AD320 800AC720 00000000 */   nop
/* AD324 800AC724 8FA9003C */  lw         $t1, 0x3c($sp)
/* AD328 800AC728 8D2A0000 */  lw         $t2, ($t1)
/* AD32C 800AC72C 31580001 */  andi       $t8, $t2, 1
/* AD330 800AC730 13000007 */  beqz       $t8, .L800AC750
/* AD334 800AC734 00000000 */   nop
/* AD338 800AC738 254C0007 */  addiu      $t4, $t2, 7
/* AD33C 800AC73C AD2C0000 */  sw         $t4, ($t1)
/* AD340 800AC740 8FB9003C */  lw         $t9, 0x3c($sp)
/* AD344 800AC744 8F300000 */  lw         $s0, ($t9)
/* AD348 800AC748 10000016 */  b          .L800AC7A4
/* AD34C 800AC74C 2610FFEA */   addiu     $s0, $s0, -0x16
.L800AC750:
/* AD350 800AC750 8FAE003C */  lw         $t6, 0x3c($sp)
/* AD354 800AC754 8DCF0000 */  lw         $t7, ($t6)
/* AD358 800AC758 31ED0002 */  andi       $t5, $t7, 2
/* AD35C 800AC75C 11A00007 */  beqz       $t5, .L800AC77C
/* AD360 800AC760 00000000 */   nop
/* AD364 800AC764 25EB000A */  addiu      $t3, $t7, 0xa
/* AD368 800AC768 ADCB0000 */  sw         $t3, ($t6)
/* AD36C 800AC76C 8FA8003C */  lw         $t0, 0x3c($sp)
/* AD370 800AC770 8D110000 */  lw         $s1, ($t0)
/* AD374 800AC774 1000000A */  b          .L800AC7A0
/* AD378 800AC778 2631FFD8 */   addiu     $s1, $s1, -0x28
.L800AC77C:
/* AD37C 800AC77C 8FB8003C */  lw         $t8, 0x3c($sp)
/* AD380 800AC780 2401FFF8 */  addiu      $at, $zero, -8
/* AD384 800AC784 8F0A0000 */  lw         $t2, ($t8)
/* AD388 800AC788 254C0007 */  addiu      $t4, $t2, 7
/* AD38C 800AC78C 01814824 */  and        $t1, $t4, $at
/* AD390 800AC790 25390008 */  addiu      $t9, $t1, 8
/* AD394 800AC794 AF190000 */  sw         $t9, ($t8)
/* AD398 800AC798 8FAD003C */  lw         $t5, 0x3c($sp)
/* AD39C 800AC79C 8DB10000 */  lw         $s1, ($t5)
.L800AC7A0:
/* AD3A0 800AC7A0 02208025 */  or         $s0, $s1, $zero
.L800AC7A4:
/* AD3A4 800AC7A4 D604FFF8 */  ldc1       $f4, -8($s0)
/* AD3A8 800AC7A8 8FAF0038 */  lw         $t7, 0x38($sp)
/* AD3AC 800AC7AC 10000024 */  b          .L800AC840
/* AD3B0 800AC7B0 F5E40000 */   sdc1      $f4, ($t7)
.L800AC7B4:
/* AD3B4 800AC7B4 8FAB003C */  lw         $t3, 0x3c($sp)
/* AD3B8 800AC7B8 8D6E0000 */  lw         $t6, ($t3)
/* AD3BC 800AC7BC 31C80001 */  andi       $t0, $t6, 1
/* AD3C0 800AC7C0 11000007 */  beqz       $t0, .L800AC7E0
/* AD3C4 800AC7C4 00000000 */   nop
/* AD3C8 800AC7C8 25CA0007 */  addiu      $t2, $t6, 7
/* AD3CC 800AC7CC AD6A0000 */  sw         $t2, ($t3)
/* AD3D0 800AC7D0 8FAC003C */  lw         $t4, 0x3c($sp)
/* AD3D4 800AC7D4 8D920000 */  lw         $s2, ($t4)
/* AD3D8 800AC7D8 10000016 */  b          .L800AC834
/* AD3DC 800AC7DC 2652FFEA */   addiu     $s2, $s2, -0x16
.L800AC7E0:
/* AD3E0 800AC7E0 8FA9003C */  lw         $t1, 0x3c($sp)
/* AD3E4 800AC7E4 8D390000 */  lw         $t9, ($t1)
/* AD3E8 800AC7E8 33380002 */  andi       $t8, $t9, 2
/* AD3EC 800AC7EC 13000007 */  beqz       $t8, .L800AC80C
/* AD3F0 800AC7F0 00000000 */   nop
/* AD3F4 800AC7F4 272D000A */  addiu      $t5, $t9, 0xa
/* AD3F8 800AC7F8 AD2D0000 */  sw         $t5, ($t1)
/* AD3FC 800AC7FC 8FAF003C */  lw         $t7, 0x3c($sp)
/* AD400 800AC800 8DF30000 */  lw         $s3, ($t7)
/* AD404 800AC804 1000000A */  b          .L800AC830
/* AD408 800AC808 2673FFD8 */   addiu     $s3, $s3, -0x28
.L800AC80C:
/* AD40C 800AC80C 8FA8003C */  lw         $t0, 0x3c($sp)
/* AD410 800AC810 2401FFF8 */  addiu      $at, $zero, -8
/* AD414 800AC814 8D0E0000 */  lw         $t6, ($t0)
/* AD418 800AC818 25CA0007 */  addiu      $t2, $t6, 7
/* AD41C 800AC81C 01415824 */  and        $t3, $t2, $at
/* AD420 800AC820 256C0008 */  addiu      $t4, $t3, 8
/* AD424 800AC824 AD0C0000 */  sw         $t4, ($t0)
/* AD428 800AC828 8FB8003C */  lw         $t8, 0x3c($sp)
/* AD42C 800AC82C 8F130000 */  lw         $s3, ($t8)
.L800AC830:
/* AD430 800AC830 02609025 */  or         $s2, $s3, $zero
.L800AC834:
/* AD434 800AC834 D646FFF8 */  ldc1       $f6, -8($s2)
/* AD438 800AC838 8FB90038 */  lw         $t9, 0x38($sp)
/* AD43C 800AC83C F7260000 */  sdc1       $f6, ($t9)
.L800AC840:
/* AD440 800AC840 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD444 800AC844 95A90000 */  lhu        $t1, ($t5)
/* AD448 800AC848 312F8000 */  andi       $t7, $t1, 0x8000
/* AD44C 800AC84C 11E0000C */  beqz       $t7, .L800AC880
/* AD450 800AC850 00000000 */   nop
/* AD454 800AC854 8FAB0038 */  lw         $t3, 0x38($sp)
/* AD458 800AC858 8FAA0044 */  lw         $t2, 0x44($sp)
/* AD45C 800AC85C 240E002D */  addiu      $t6, $zero, 0x2d
/* AD460 800AC860 8D6C000C */  lw         $t4, 0xc($t3)
/* AD464 800AC864 014C4021 */  addu       $t0, $t2, $t4
/* AD468 800AC868 A10E0000 */  sb         $t6, ($t0)
/* AD46C 800AC86C 8FB80038 */  lw         $t8, 0x38($sp)
/* AD470 800AC870 8F19000C */  lw         $t9, 0xc($t8)
/* AD474 800AC874 272D0001 */  addiu      $t5, $t9, 1
/* AD478 800AC878 10000020 */  b          .L800AC8FC
/* AD47C 800AC87C AF0D000C */   sw        $t5, 0xc($t8)
.L800AC880:
/* AD480 800AC880 8FA90038 */  lw         $t1, 0x38($sp)
/* AD484 800AC884 8D2F0030 */  lw         $t7, 0x30($t1)
/* AD488 800AC888 31EB0002 */  andi       $t3, $t7, 2
/* AD48C 800AC88C 1160000C */  beqz       $t3, .L800AC8C0
/* AD490 800AC890 00000000 */   nop
/* AD494 800AC894 8FAE0038 */  lw         $t6, 0x38($sp)
/* AD498 800AC898 8FAC0044 */  lw         $t4, 0x44($sp)
/* AD49C 800AC89C 240A002B */  addiu      $t2, $zero, 0x2b
/* AD4A0 800AC8A0 8DC8000C */  lw         $t0, 0xc($t6)
/* AD4A4 800AC8A4 0188C821 */  addu       $t9, $t4, $t0
/* AD4A8 800AC8A8 A32A0000 */  sb         $t2, ($t9)
/* AD4AC 800AC8AC 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD4B0 800AC8B0 8DB8000C */  lw         $t8, 0xc($t5)
/* AD4B4 800AC8B4 27090001 */  addiu      $t1, $t8, 1
/* AD4B8 800AC8B8 10000010 */  b          .L800AC8FC
/* AD4BC 800AC8BC ADA9000C */   sw        $t1, 0xc($t5)
.L800AC8C0:
/* AD4C0 800AC8C0 8FAF0038 */  lw         $t7, 0x38($sp)
/* AD4C4 800AC8C4 8DEB0030 */  lw         $t3, 0x30($t7)
/* AD4C8 800AC8C8 316E0001 */  andi       $t6, $t3, 1
/* AD4CC 800AC8CC 11C0000B */  beqz       $t6, .L800AC8FC
/* AD4D0 800AC8D0 00000000 */   nop
/* AD4D4 800AC8D4 8FAA0038 */  lw         $t2, 0x38($sp)
/* AD4D8 800AC8D8 8FA80044 */  lw         $t0, 0x44($sp)
/* AD4DC 800AC8DC 240C0020 */  addiu      $t4, $zero, 0x20
/* AD4E0 800AC8E0 8D59000C */  lw         $t9, 0xc($t2)
/* AD4E4 800AC8E4 0119C021 */  addu       $t8, $t0, $t9
/* AD4E8 800AC8E8 A30C0000 */  sb         $t4, ($t8)
/* AD4EC 800AC8EC 8FA90038 */  lw         $t1, 0x38($sp)
/* AD4F0 800AC8F0 8D2D000C */  lw         $t5, 0xc($t1)
/* AD4F4 800AC8F4 25AF0001 */  addiu      $t7, $t5, 1
/* AD4F8 800AC8F8 AD2F000C */  sw         $t7, 0xc($t1)
.L800AC8FC:
/* AD4FC 800AC8FC 8FAB0038 */  lw         $t3, 0x38($sp)
/* AD500 800AC900 8FAA0044 */  lw         $t2, 0x44($sp)
/* AD504 800AC904 8D6E000C */  lw         $t6, 0xc($t3)
/* AD508 800AC908 01CA4021 */  addu       $t0, $t6, $t2
/* AD50C 800AC90C AD680008 */  sw         $t0, 8($t3)
/* AD510 800AC910 8FA40038 */  lw         $a0, 0x38($sp)
/* AD514 800AC914 0C02DDC0 */  jal        func_800B7700
/* AD518 800AC918 93A50043 */   lbu       $a1, 0x43($sp)
/* AD51C 800AC91C 1000009B */  b          .L800ACB8C
/* AD520 800AC920 00000000 */   nop
/* AD524 800AC924 8FB90038 */  lw         $t9, 0x38($sp)
/* AD528 800AC928 24010068 */  addiu      $at, $zero, 0x68
/* AD52C 800AC92C 932C0034 */  lbu        $t4, 0x34($t9)
/* AD530 800AC930 1581000F */  bne        $t4, $at, .L800AC970
/* AD534 800AC934 00000000 */   nop
/* AD538 800AC938 8FB8003C */  lw         $t8, 0x3c($sp)
/* AD53C 800AC93C 2401FFFC */  addiu      $at, $zero, -4
/* AD540 800AC940 8F0D0000 */  lw         $t5, ($t8)
/* AD544 800AC944 25AF0003 */  addiu      $t7, $t5, 3
/* AD548 800AC948 01E14824 */  and        $t1, $t7, $at
/* AD54C 800AC94C 252E0004 */  addiu      $t6, $t1, 4
/* AD550 800AC950 AF0E0000 */  sw         $t6, ($t8)
/* AD554 800AC954 8FAA003C */  lw         $t2, 0x3c($sp)
/* AD558 800AC958 8FA80038 */  lw         $t0, 0x38($sp)
/* AD55C 800AC95C 8D500000 */  lw         $s0, ($t2)
/* AD560 800AC960 8D0B002C */  lw         $t3, 0x2c($t0)
/* AD564 800AC964 8E19FFFC */  lw         $t9, -4($s0)
/* AD568 800AC968 10000037 */  b          .L800ACA48
/* AD56C 800AC96C A72B0000 */   sh        $t3, ($t9)
.L800AC970:
/* AD570 800AC970 8FAC0038 */  lw         $t4, 0x38($sp)
/* AD574 800AC974 2401006C */  addiu      $at, $zero, 0x6c
/* AD578 800AC978 918D0034 */  lbu        $t5, 0x34($t4)
/* AD57C 800AC97C 15A1000F */  bne        $t5, $at, .L800AC9BC
/* AD580 800AC980 00000000 */   nop
/* AD584 800AC984 8FAF003C */  lw         $t7, 0x3c($sp)
/* AD588 800AC988 2401FFFC */  addiu      $at, $zero, -4
/* AD58C 800AC98C 8DE90000 */  lw         $t1, ($t7)
/* AD590 800AC990 252E0003 */  addiu      $t6, $t1, 3
/* AD594 800AC994 01C1C024 */  and        $t8, $t6, $at
/* AD598 800AC998 270A0004 */  addiu      $t2, $t8, 4
/* AD59C 800AC99C ADEA0000 */  sw         $t2, ($t7)
/* AD5A0 800AC9A0 8FA8003C */  lw         $t0, 0x3c($sp)
/* AD5A4 800AC9A4 8FAB0038 */  lw         $t3, 0x38($sp)
/* AD5A8 800AC9A8 8D100000 */  lw         $s0, ($t0)
/* AD5AC 800AC9AC 8D79002C */  lw         $t9, 0x2c($t3)
/* AD5B0 800AC9B0 8E0CFFFC */  lw         $t4, -4($s0)
/* AD5B4 800AC9B4 10000024 */  b          .L800ACA48
/* AD5B8 800AC9B8 AD990000 */   sw        $t9, ($t4)
.L800AC9BC:
/* AD5BC 800AC9BC 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD5C0 800AC9C0 2401004C */  addiu      $at, $zero, 0x4c
/* AD5C4 800AC9C4 91A90034 */  lbu        $t1, 0x34($t5)
/* AD5C8 800AC9C8 15210012 */  bne        $t1, $at, .L800ACA14
/* AD5CC 800AC9CC 00000000 */   nop
/* AD5D0 800AC9D0 8FAE003C */  lw         $t6, 0x3c($sp)
/* AD5D4 800AC9D4 2401FFFC */  addiu      $at, $zero, -4
/* AD5D8 800AC9D8 8DD80000 */  lw         $t8, ($t6)
/* AD5DC 800AC9DC 270A0003 */  addiu      $t2, $t8, 3
/* AD5E0 800AC9E0 01417824 */  and        $t7, $t2, $at
/* AD5E4 800AC9E4 25E80004 */  addiu      $t0, $t7, 4
/* AD5E8 800AC9E8 ADC80000 */  sw         $t0, ($t6)
/* AD5EC 800AC9EC 8FAB003C */  lw         $t3, 0x3c($sp)
/* AD5F0 800AC9F0 8FB90038 */  lw         $t9, 0x38($sp)
/* AD5F4 800AC9F4 24180000 */  addiu      $t8, $zero, 0
/* AD5F8 800AC9F8 8D700000 */  lw         $s0, ($t3)
/* AD5FC 800AC9FC 8F2C002C */  lw         $t4, 0x2c($t9)
/* AD600 800ACA00 8E0DFFFC */  lw         $t5, -4($s0)
/* AD604 800ACA04 0180C825 */  or         $t9, $t4, $zero
/* AD608 800ACA08 ADB90004 */  sw         $t9, 4($t5)
/* AD60C 800ACA0C 1000000E */  b          .L800ACA48
/* AD610 800ACA10 ADB80000 */   sw        $t8, ($t5)
.L800ACA14:
/* AD614 800ACA14 8FA9003C */  lw         $t1, 0x3c($sp)
/* AD618 800ACA18 2401FFFC */  addiu      $at, $zero, -4
/* AD61C 800ACA1C 8D2A0000 */  lw         $t2, ($t1)
/* AD620 800ACA20 254F0003 */  addiu      $t7, $t2, 3
/* AD624 800ACA24 01E14024 */  and        $t0, $t7, $at
/* AD628 800ACA28 250E0004 */  addiu      $t6, $t0, 4
/* AD62C 800ACA2C AD2E0000 */  sw         $t6, ($t1)
/* AD630 800ACA30 8FAB003C */  lw         $t3, 0x3c($sp)
/* AD634 800ACA34 8FAC0038 */  lw         $t4, 0x38($sp)
/* AD638 800ACA38 8D700000 */  lw         $s0, ($t3)
/* AD63C 800ACA3C 8D98002C */  lw         $t8, 0x2c($t4)
/* AD640 800ACA40 8E19FFFC */  lw         $t9, -4($s0)
/* AD644 800ACA44 AF380000 */  sw         $t8, ($t9)
.L800ACA48:
/* AD648 800ACA48 10000050 */  b          .L800ACB8C
/* AD64C 800ACA4C 00000000 */   nop
/* AD650 800ACA50 8FAD003C */  lw         $t5, 0x3c($sp)
/* AD654 800ACA54 2401FFFC */  addiu      $at, $zero, -4
/* AD658 800ACA58 8DAA0000 */  lw         $t2, ($t5)
/* AD65C 800ACA5C 254F0003 */  addiu      $t7, $t2, 3
/* AD660 800ACA60 01E14024 */  and        $t0, $t7, $at
/* AD664 800ACA64 250E0004 */  addiu      $t6, $t0, 4
/* AD668 800ACA68 ADAE0000 */  sw         $t6, ($t5)
/* AD66C 800ACA6C 8FA9003C */  lw         $t1, 0x3c($sp)
/* AD670 800ACA70 8FAA0038 */  lw         $t2, 0x38($sp)
/* AD674 800ACA74 8D2B0000 */  lw         $t3, ($t1)
/* AD678 800ACA78 8D6CFFFC */  lw         $t4, -4($t3)
/* AD67C 800ACA7C 0180C825 */  or         $t9, $t4, $zero
/* AD680 800ACA80 000CC7C3 */  sra        $t8, $t4, 0x1f
/* AD684 800ACA84 AD580000 */  sw         $t8, ($t2)
/* AD688 800ACA88 AD590004 */  sw         $t9, 4($t2)
/* AD68C 800ACA8C 8FAF0038 */  lw         $t7, 0x38($sp)
/* AD690 800ACA90 8FAE0044 */  lw         $t6, 0x44($sp)
/* AD694 800ACA94 8DE8000C */  lw         $t0, 0xc($t7)
/* AD698 800ACA98 010E6821 */  addu       $t5, $t0, $t6
/* AD69C 800ACA9C ADED0008 */  sw         $t5, 8($t7)
/* AD6A0 800ACAA0 8FA40038 */  lw         $a0, 0x38($sp)
/* AD6A4 800ACAA4 0C02E1F0 */  jal        func_800B87C0
/* AD6A8 800ACAA8 24050078 */   addiu     $a1, $zero, 0x78
/* AD6AC 800ACAAC 10000037 */  b          .L800ACB8C
/* AD6B0 800ACAB0 00000000 */   nop
/* AD6B4 800ACAB4 8FA9003C */  lw         $t1, 0x3c($sp)
/* AD6B8 800ACAB8 2401FFFC */  addiu      $at, $zero, -4
/* AD6BC 800ACABC 8D2B0000 */  lw         $t3, ($t1)
/* AD6C0 800ACAC0 256C0003 */  addiu      $t4, $t3, 3
/* AD6C4 800ACAC4 0181C024 */  and        $t8, $t4, $at
/* AD6C8 800ACAC8 27190004 */  addiu      $t9, $t8, 4
/* AD6CC 800ACACC AD390000 */  sw         $t9, ($t1)
/* AD6D0 800ACAD0 8FAA003C */  lw         $t2, 0x3c($sp)
/* AD6D4 800ACAD4 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD6D8 800ACAD8 8D480000 */  lw         $t0, ($t2)
/* AD6DC 800ACADC 8D0EFFFC */  lw         $t6, -4($t0)
/* AD6E0 800ACAE0 ADAE0008 */  sw         $t6, 8($t5)
/* AD6E4 800ACAE4 8FAF0038 */  lw         $t7, 0x38($sp)
/* AD6E8 800ACAE8 0C02B402 */  jal        func_800AD008
/* AD6EC 800ACAEC 8DE40008 */   lw        $a0, 8($t7)
/* AD6F0 800ACAF0 8FAB0038 */  lw         $t3, 0x38($sp)
/* AD6F4 800ACAF4 AD620014 */  sw         $v0, 0x14($t3)
/* AD6F8 800ACAF8 8FAC0038 */  lw         $t4, 0x38($sp)
/* AD6FC 800ACAFC 8D980024 */  lw         $t8, 0x24($t4)
/* AD700 800ACB00 07000008 */  bltz       $t8, .L800ACB24
/* AD704 800ACB04 00000000 */   nop
/* AD708 800ACB08 8D990014 */  lw         $t9, 0x14($t4)
/* AD70C 800ACB0C 0319082A */  slt        $at, $t8, $t9
/* AD710 800ACB10 10200004 */  beqz       $at, .L800ACB24
/* AD714 800ACB14 00000000 */   nop
/* AD718 800ACB18 8FA90038 */  lw         $t1, 0x38($sp)
/* AD71C 800ACB1C 8D2A0024 */  lw         $t2, 0x24($t1)
/* AD720 800ACB20 AD2A0014 */  sw         $t2, 0x14($t1)
.L800ACB24:
/* AD724 800ACB24 10000019 */  b          .L800ACB8C
/* AD728 800ACB28 00000000 */   nop
.L800ACB2C:
/* AD72C 800ACB2C 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD730 800ACB30 8FAE0044 */  lw         $t6, 0x44($sp)
/* AD734 800ACB34 24080025 */  addiu      $t0, $zero, 0x25
/* AD738 800ACB38 8DAF000C */  lw         $t7, 0xc($t5)
/* AD73C 800ACB3C 01CF5821 */  addu       $t3, $t6, $t7
/* AD740 800ACB40 A1680000 */  sb         $t0, ($t3)
/* AD744 800ACB44 8FAC0038 */  lw         $t4, 0x38($sp)
/* AD748 800ACB48 8D98000C */  lw         $t8, 0xc($t4)
/* AD74C 800ACB4C 27190001 */  addiu      $t9, $t8, 1
/* AD750 800ACB50 AD99000C */  sw         $t9, 0xc($t4)
/* AD754 800ACB54 1000000D */  b          .L800ACB8C
/* AD758 800ACB58 00000000 */   nop
.L800ACB5C:
/* AD75C 800ACB5C 8FAD0038 */  lw         $t5, 0x38($sp)
/* AD760 800ACB60 8FA90044 */  lw         $t1, 0x44($sp)
/* AD764 800ACB64 93AA0043 */  lbu        $t2, 0x43($sp)
/* AD768 800ACB68 8DAE000C */  lw         $t6, 0xc($t5)
/* AD76C 800ACB6C 012E7821 */  addu       $t7, $t1, $t6
/* AD770 800ACB70 A1EA0000 */  sb         $t2, ($t7)
/* AD774 800ACB74 8FA80038 */  lw         $t0, 0x38($sp)
/* AD778 800ACB78 8D0B000C */  lw         $t3, 0xc($t0)
/* AD77C 800ACB7C 25780001 */  addiu      $t8, $t3, 1
/* AD780 800ACB80 AD18000C */  sw         $t8, 0xc($t0)
/* AD784 800ACB84 10000001 */  b          .L800ACB8C
/* AD788 800ACB88 00000000 */   nop
.L800ACB8C:
/* AD78C 800ACB8C 10000001 */  b          .L800ACB94
/* AD790 800ACB90 00000000 */   nop
.L800ACB94:
/* AD794 800ACB94 8FBF0024 */  lw         $ra, 0x24($sp)
/* AD798 800ACB98 8FB00014 */  lw         $s0, 0x14($sp)
/* AD79C 800ACB9C 8FB10018 */  lw         $s1, 0x18($sp)
/* AD7A0 800ACBA0 8FB2001C */  lw         $s2, 0x1c($sp)
/* AD7A4 800ACBA4 8FB30020 */  lw         $s3, 0x20($sp)
/* AD7A8 800ACBA8 03E00008 */  jr         $ra
/* AD7AC 800ACBAC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800ACBB0
/* AD7B0 800ACBB0 AC800000 */  sw         $zero, ($a0)
/* AD7B4 800ACBB4 AC850004 */  sw         $a1, 4($a0)
/* AD7B8 800ACBB8 AC860008 */  sw         $a2, 8($a0)
/* AD7BC 800ACBBC A480000C */  sh         $zero, 0xc($a0)
/* AD7C0 800ACBC0 A480000E */  sh         $zero, 0xe($a0)
/* AD7C4 800ACBC4 AC870010 */  sw         $a3, 0x10($a0)
/* AD7C8 800ACBC8 03E00008 */  jr         $ra
/* AD7CC 800ACBCC 00000000 */   nop

glabel func_800ACBD0
/* AD7D0 800ACBD0 03E00008 */  jr         $ra
/* AD7D4 800ACBD4 00000000 */   nop
/* AD7D8 800ACBD8 00000000 */  nop
/* AD7DC 800ACBDC 00000000 */  nop

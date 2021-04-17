.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C5C60
/* C6860 800C5C60 40085000 */  mfc0       $t0, $10
/* C6864 800C5C64 310900FF */  andi       $t1, $t0, 0xff
/* C6868 800C5C68 2401E000 */  addiu      $at, $zero, -0x2000
/* C686C 800C5C6C 00815024 */  and        $t2, $a0, $at
/* C6870 800C5C70 012A4825 */  or         $t1, $t1, $t2
/* C6874 800C5C74 40895000 */  mtc0       $t1, $10
/* C6878 800C5C78 00000000 */  nop
/* C687C 800C5C7C 00000000 */  nop
/* C6880 800C5C80 00000000 */  nop
/* C6884 800C5C84 42000008 */  tlbp
/* C6888 800C5C88 00000000 */  nop
/* C688C 800C5C8C 00000000 */  nop
/* C6890 800C5C90 400B0000 */  mfc0       $t3, $0
/* C6894 800C5C94 3C018000 */  lui        $at, 0x8000
/* C6898 800C5C98 01615824 */  and        $t3, $t3, $at
/* C689C 800C5C9C 1560001A */  bnez       $t3, .L800C5D08
/* C68A0 800C5CA0 00000000 */   nop
/* C68A4 800C5CA4 42000001 */  tlbr
/* C68A8 800C5CA8 00000000 */  nop
/* C68AC 800C5CAC 00000000 */  nop
/* C68B0 800C5CB0 00000000 */  nop
/* C68B4 800C5CB4 400B2800 */  mfc0       $t3, $5
/* C68B8 800C5CB8 216B2000 */  addi       $t3, $t3, 0x2000
/* C68BC 800C5CBC 000B5842 */  srl        $t3, $t3, 1
/* C68C0 800C5CC0 01646024 */  and        $t4, $t3, $a0
/* C68C4 800C5CC4 15800004 */  bnez       $t4, .L800C5CD8
/* C68C8 800C5CC8 216BFFFF */   addi      $t3, $t3, -1
/* C68CC 800C5CCC 40021000 */  mfc0       $v0, $2
/* C68D0 800C5CD0 10000002 */  b          .L800C5CDC
/* C68D4 800C5CD4 00000000 */   nop
.L800C5CD8:
/* C68D8 800C5CD8 40021800 */  mfc0       $v0, $3
.L800C5CDC:
/* C68DC 800C5CDC 304D0002 */  andi       $t5, $v0, 2
/* C68E0 800C5CE0 11A00009 */  beqz       $t5, .L800C5D08
/* C68E4 800C5CE4 00000000 */   nop
/* C68E8 800C5CE8 3C013FFF */  lui        $at, 0x3fff
/* C68EC 800C5CEC 3421FFC0 */  ori        $at, $at, 0xffc0
/* C68F0 800C5CF0 00411024 */  and        $v0, $v0, $at
/* C68F4 800C5CF4 00021180 */  sll        $v0, $v0, 6
/* C68F8 800C5CF8 008B6824 */  and        $t5, $a0, $t3
/* C68FC 800C5CFC 004D1020 */  add        $v0, $v0, $t5
/* C6900 800C5D00 10000002 */  b          .L800C5D0C
/* C6904 800C5D04 00000000 */   nop
.L800C5D08:
/* C6908 800C5D08 2402FFFF */  addiu      $v0, $zero, -1
.L800C5D0C:
/* C690C 800C5D0C 40885000 */  mtc0       $t0, $10
/* C6910 800C5D10 03E00008 */  jr         $ra
/* C6914 800C5D14 00000000 */   nop
/* C6918 800C5D18 00000000 */  nop
/* C691C 800C5D1C 00000000 */  nop

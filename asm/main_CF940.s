.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800CED40
/* CF940 800CED40 00801025 */  or         $v0, $a0, $zero
/* CF944 800CED44 00A01825 */  or         $v1, $a1, $zero
/* CF948 800CED48 18C00018 */  blez       $a2, .L800CEDAC
/* CF94C 800CED4C 00003825 */   or        $a3, $zero, $zero
/* CF950 800CED50 30C50003 */  andi       $a1, $a2, 3
/* CF954 800CED54 10A00009 */  beqz       $a1, .L800CED7C
/* CF958 800CED58 00A02025 */   or        $a0, $a1, $zero
.L800CED5C:
/* CF95C 800CED5C 904E0000 */  lbu        $t6, ($v0)
/* CF960 800CED60 24E70001 */  addiu      $a3, $a3, 1
/* CF964 800CED64 24630001 */  addiu      $v1, $v1, 1
/* CF968 800CED68 24420001 */  addiu      $v0, $v0, 1
/* CF96C 800CED6C 1487FFFB */  bne        $a0, $a3, .L800CED5C
/* CF970 800CED70 A06EFFFF */   sb        $t6, -1($v1)
/* CF974 800CED74 10E6000D */  beq        $a3, $a2, .L800CEDAC
/* CF978 800CED78 00000000 */   nop
.L800CED7C:
/* CF97C 800CED7C 904F0000 */  lbu        $t7, ($v0)
/* CF980 800CED80 24E70004 */  addiu      $a3, $a3, 4
/* CF984 800CED84 24630004 */  addiu      $v1, $v1, 4
/* CF988 800CED88 A06FFFFC */  sb         $t7, -4($v1)
/* CF98C 800CED8C 90580001 */  lbu        $t8, 1($v0)
/* CF990 800CED90 24420004 */  addiu      $v0, $v0, 4
/* CF994 800CED94 A078FFFD */  sb         $t8, -3($v1)
/* CF998 800CED98 9059FFFE */  lbu        $t9, -2($v0)
/* CF99C 800CED9C A079FFFE */  sb         $t9, -2($v1)
/* CF9A0 800CEDA0 9048FFFF */  lbu        $t0, -1($v0)
/* CF9A4 800CEDA4 14E6FFF5 */  bne        $a3, $a2, .L800CED7C
/* CF9A8 800CEDA8 A068FFFF */   sb        $t0, -1($v1)
.L800CEDAC:
/* CF9AC 800CEDAC 03E00008 */  jr         $ra
/* CF9B0 800CEDB0 00000000 */   nop
/* CF9B4 800CEDB4 00000000 */  nop
/* CF9B8 800CEDB8 00000000 */  nop
/* CF9BC 800CEDBC 00000000 */  nop

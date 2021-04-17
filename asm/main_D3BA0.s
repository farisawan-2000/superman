.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800D2FA0
/* D3BA0 800D2FA0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* D3BA4 800D2FA4 03E00008 */  jr         $ra
/* D3BA8 800D2FA8 8DC20010 */   lw        $v0, %lo(D_A4040010)($t6)
/* D3BAC 800D2FAC 00000000 */  nop

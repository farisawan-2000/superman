.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80097760
/* 98360 80097760 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 98364 80097764 AFBF0014 */  sw         $ra, 0x14($sp)
/* 98368 80097768 AFA40018 */  sw         $a0, 0x18($sp)
/* 9836C 8009776C AFA5001C */  sw         $a1, 0x1c($sp)
/* 98370 80097770 AFA60020 */  sw         $a2, 0x20($sp)
/* 98374 80097774 AFA70024 */  sw         $a3, 0x24($sp)
/* 98378 80097778 0C028116 */  jal        func_800A0458
/* 9837C 8009777C 8FA40018 */   lw        $a0, 0x18($sp)
/* 98380 80097780 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 98384 80097784 8FAE0018 */  lw         $t6, 0x18($sp)
/* 98388 80097788 E5C40000 */  swc1       $f4, ($t6)
/* 9838C 8009778C C7A60020 */  lwc1       $f6, 0x20($sp)
/* 98390 80097790 8FAF0018 */  lw         $t7, 0x18($sp)
/* 98394 80097794 E5E60014 */  swc1       $f6, 0x14($t7)
/* 98398 80097798 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 9839C 8009779C 8FB80018 */  lw         $t8, 0x18($sp)
/* 983A0 800977A0 E7080028 */  swc1       $f8, 0x28($t8)
/* 983A4 800977A4 3C013F80 */  lui        $at, 0x3f80
/* 983A8 800977A8 44815000 */  mtc1       $at, $f10
/* 983AC 800977AC 8FB90018 */  lw         $t9, 0x18($sp)
/* 983B0 800977B0 E72A003C */  swc1       $f10, 0x3c($t9)
/* 983B4 800977B4 10000001 */  b          .L800977BC
/* 983B8 800977B8 00000000 */   nop
.L800977BC:
/* 983BC 800977BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 983C0 800977C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 983C4 800977C4 03E00008 */  jr         $ra
/* 983C8 800977C8 00000000 */   nop

glabel func_800977CC
/* 983CC 800977CC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 983D0 800977D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 983D4 800977D4 AFA40058 */  sw         $a0, 0x58($sp)
/* 983D8 800977D8 AFA5005C */  sw         $a1, 0x5c($sp)
/* 983DC 800977DC AFA60060 */  sw         $a2, 0x60($sp)
/* 983E0 800977E0 AFA70064 */  sw         $a3, 0x64($sp)
/* 983E4 800977E4 27A40018 */  addiu      $a0, $sp, 0x18
/* 983E8 800977E8 8FA5005C */  lw         $a1, 0x5c($sp)
/* 983EC 800977EC 8FA60060 */  lw         $a2, 0x60($sp)
/* 983F0 800977F0 0C025DD8 */  jal        func_80097760
/* 983F4 800977F4 8FA70064 */   lw        $a3, 0x64($sp)
/* 983F8 800977F8 27A40018 */  addiu      $a0, $sp, 0x18
/* 983FC 800977FC 0C02807C */  jal        func_800A01F0
/* 98400 80097800 8FA50058 */   lw        $a1, 0x58($sp)
/* 98404 80097804 10000001 */  b          .L8009780C
/* 98408 80097808 00000000 */   nop
.L8009780C:
/* 9840C 8009780C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 98410 80097810 27BD0058 */  addiu      $sp, $sp, 0x58
/* 98414 80097814 03E00008 */  jr         $ra
/* 98418 80097818 00000000 */   nop
/* 9841C 8009781C 00000000 */  nop

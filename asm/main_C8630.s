.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800C7A30
/* C8630 800C7A30 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C8634 800C7A34 AFBF0044 */  sw         $ra, 0x44($sp)
/* C8638 800C7A38 F7BE0038 */  sdc1       $f30, 0x38($sp)
/* C863C 800C7A3C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* C8640 800C7A40 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* C8644 800C7A44 F7B80020 */  sdc1       $f24, 0x20($sp)
/* C8648 800C7A48 F7B60018 */  sdc1       $f22, 0x18($sp)
/* C864C 800C7A4C F7B40010 */  sdc1       $f20, 0x10($sp)
/* C8650 800C7A50 AFA60050 */  sw         $a2, 0x50($sp)
/* C8654 800C7A54 AFA70054 */  sw         $a3, 0x54($sp)
/* C8658 800C7A58 AFA40048 */  sw         $a0, 0x48($sp)
/* C865C 800C7A5C 0C031110 */  jal        func_800C4440
/* C8660 800C7A60 AFA5004C */   sw        $a1, 0x4c($sp)
/* C8664 800C7A64 C7A4005C */  lwc1       $f4, 0x5c($sp)
/* C8668 800C7A68 C7A60050 */  lwc1       $f6, 0x50($sp)
/* C866C 800C7A6C C7A80060 */  lwc1       $f8, 0x60($sp)
/* C8670 800C7A70 C7AA0054 */  lwc1       $f10, 0x54($sp)
/* C8674 800C7A74 46062001 */  sub.s      $f0, $f4, $f6
/* C8678 800C7A78 C7A60058 */  lwc1       $f6, 0x58($sp)
/* C867C 800C7A7C C7A40064 */  lwc1       $f4, 0x64($sp)
/* C8680 800C7A80 460A4581 */  sub.s      $f22, $f8, $f10
/* C8684 800C7A84 46000202 */  mul.s      $f8, $f0, $f0
/* C8688 800C7A88 46000506 */  mov.s      $f20, $f0
/* C868C 800C7A8C 46062601 */  sub.s      $f24, $f4, $f6
/* C8690 800C7A90 4616B282 */  mul.s      $f10, $f22, $f22
/* C8694 800C7A94 460A4100 */  add.s      $f4, $f8, $f10
/* C8698 800C7A98 4618C182 */  mul.s      $f6, $f24, $f24
/* C869C 800C7A9C 0C033068 */  jal        func_800CC1A0
/* C86A0 800C7AA0 46062300 */   add.s     $f12, $f4, $f6
/* C86A4 800C7AA4 3C01BFF0 */  lui        $at, 0xbff0
/* C86A8 800C7AA8 44814800 */  mtc1       $at, $f9
/* C86AC 800C7AAC 44804000 */  mtc1       $zero, $f8
/* C86B0 800C7AB0 460002A1 */  cvt.d.s    $f10, $f0
/* C86B4 800C7AB4 C7A6006C */  lwc1       $f6, 0x6c($sp)
/* C86B8 800C7AB8 462A4103 */  div.d      $f4, $f8, $f10
/* C86BC 800C7ABC C7AA0070 */  lwc1       $f10, 0x70($sp)
/* C86C0 800C7AC0 462020A0 */  cvt.s.d    $f2, $f4
/* C86C4 800C7AC4 4602A502 */  mul.s      $f20, $f20, $f2
/* C86C8 800C7AC8 00000000 */  nop
/* C86CC 800C7ACC 4602B582 */  mul.s      $f22, $f22, $f2
/* C86D0 800C7AD0 00000000 */  nop
/* C86D4 800C7AD4 4602C602 */  mul.s      $f24, $f24, $f2
/* C86D8 800C7AD8 00000000 */  nop
/* C86DC 800C7ADC 46183202 */  mul.s      $f8, $f6, $f24
/* C86E0 800C7AE0 00000000 */  nop
/* C86E4 800C7AE4 46165102 */  mul.s      $f4, $f10, $f22
/* C86E8 800C7AE8 46044681 */  sub.s      $f26, $f8, $f4
/* C86EC 800C7AEC 46145202 */  mul.s      $f8, $f10, $f20
/* C86F0 800C7AF0 C7A40068 */  lwc1       $f4, 0x68($sp)
/* C86F4 800C7AF4 46182282 */  mul.s      $f10, $f4, $f24
/* C86F8 800C7AF8 460A4701 */  sub.s      $f28, $f8, $f10
/* C86FC 800C7AFC 46162202 */  mul.s      $f8, $f4, $f22
/* C8700 800C7B00 00000000 */  nop
/* C8704 800C7B04 46143282 */  mul.s      $f10, $f6, $f20
/* C8708 800C7B08 460A4781 */  sub.s      $f30, $f8, $f10
/* C870C 800C7B0C 461AD102 */  mul.s      $f4, $f26, $f26
/* C8710 800C7B10 00000000 */  nop
/* C8714 800C7B14 461CE182 */  mul.s      $f6, $f28, $f28
/* C8718 800C7B18 46062200 */  add.s      $f8, $f4, $f6
/* C871C 800C7B1C 461EF282 */  mul.s      $f10, $f30, $f30
/* C8720 800C7B20 0C033068 */  jal        func_800CC1A0
/* C8724 800C7B24 460A4300 */   add.s     $f12, $f8, $f10
/* C8728 800C7B28 3C013FF0 */  lui        $at, 0x3ff0
/* C872C 800C7B2C 44812800 */  mtc1       $at, $f5
/* C8730 800C7B30 44802000 */  mtc1       $zero, $f4
/* C8734 800C7B34 460001A1 */  cvt.d.s    $f6, $f0
/* C8738 800C7B38 46262203 */  div.d      $f8, $f4, $f6
/* C873C 800C7B3C 462040A0 */  cvt.s.d    $f2, $f8
/* C8740 800C7B40 4602D682 */  mul.s      $f26, $f26, $f2
/* C8744 800C7B44 00000000 */  nop
/* C8748 800C7B48 4602E702 */  mul.s      $f28, $f28, $f2
/* C874C 800C7B4C 00000000 */  nop
/* C8750 800C7B50 4602F782 */  mul.s      $f30, $f30, $f2
/* C8754 800C7B54 00000000 */  nop
/* C8758 800C7B58 461EB282 */  mul.s      $f10, $f22, $f30
/* C875C 800C7B5C 00000000 */  nop
/* C8760 800C7B60 461CC102 */  mul.s      $f4, $f24, $f28
/* C8764 800C7B64 00000000 */  nop
/* C8768 800C7B68 461AC182 */  mul.s      $f6, $f24, $f26
/* C876C 800C7B6C 00000000 */  nop
/* C8770 800C7B70 461EA202 */  mul.s      $f8, $f20, $f30
/* C8774 800C7B74 46045381 */  sub.s      $f14, $f10, $f4
/* C8778 800C7B78 461CA282 */  mul.s      $f10, $f20, $f28
/* C877C 800C7B7C 00000000 */  nop
/* C8780 800C7B80 461AB102 */  mul.s      $f4, $f22, $f26
/* C8784 800C7B84 E7AE0068 */  swc1       $f14, 0x68($sp)
/* C8788 800C7B88 46083401 */  sub.s      $f16, $f6, $f8
/* C878C 800C7B8C 460E7182 */  mul.s      $f6, $f14, $f14
/* C8790 800C7B90 00000000 */  nop
/* C8794 800C7B94 46108202 */  mul.s      $f8, $f16, $f16
/* C8798 800C7B98 E7B0006C */  swc1       $f16, 0x6c($sp)
/* C879C 800C7B9C 46045481 */  sub.s      $f18, $f10, $f4
/* C87A0 800C7BA0 46129102 */  mul.s      $f4, $f18, $f18
/* C87A4 800C7BA4 46083280 */  add.s      $f10, $f6, $f8
/* C87A8 800C7BA8 E7B20070 */  swc1       $f18, 0x70($sp)
/* C87AC 800C7BAC 0C033068 */  jal        func_800CC1A0
/* C87B0 800C7BB0 46045300 */   add.s     $f12, $f10, $f4
/* C87B4 800C7BB4 3C0142FE */  lui        $at, 0x42fe
/* C87B8 800C7BB8 44816000 */  mtc1       $at, $f12
/* C87BC 800C7BBC 3C014300 */  lui        $at, 0x4300
/* C87C0 800C7BC0 44818000 */  mtc1       $at, $f16
/* C87C4 800C7BC4 3C013FF0 */  lui        $at, 0x3ff0
/* C87C8 800C7BC8 44813800 */  mtc1       $at, $f7
/* C87CC 800C7BCC 44803000 */  mtc1       $zero, $f6
/* C87D0 800C7BD0 46000221 */  cvt.d.s    $f8, $f0
/* C87D4 800C7BD4 C7A40068 */  lwc1       $f4, 0x68($sp)
/* C87D8 800C7BD8 46283283 */  div.d      $f10, $f6, $f8
/* C87DC 800C7BDC C7A8006C */  lwc1       $f8, 0x6c($sp)
/* C87E0 800C7BE0 8FA40048 */  lw         $a0, 0x48($sp)
/* C87E4 800C7BE4 8FA5004C */  lw         $a1, 0x4c($sp)
/* C87E8 800C7BE8 24020080 */  addiu      $v0, $zero, 0x80
/* C87EC 800C7BEC 462050A0 */  cvt.s.d    $f2, $f10
/* C87F0 800C7BF0 46022182 */  mul.s      $f6, $f4, $f2
/* C87F4 800C7BF4 C7A40070 */  lwc1       $f4, 0x70($sp)
/* C87F8 800C7BF8 46024282 */  mul.s      $f10, $f8, $f2
/* C87FC 800C7BFC E7A60068 */  swc1       $f6, 0x68($sp)
/* C8800 800C7C00 46022182 */  mul.s      $f6, $f4, $f2
/* C8804 800C7C04 E7AA006C */  swc1       $f10, 0x6c($sp)
/* C8808 800C7C08 4610D382 */  mul.s      $f14, $f26, $f16
/* C880C 800C7C0C E7A60070 */  swc1       $f6, 0x70($sp)
/* C8810 800C7C10 4610E082 */  mul.s      $f2, $f28, $f16
/* C8814 800C7C14 460C703C */  c.lt.s     $f14, $f12
/* C8818 800C7C18 00000000 */  nop
/* C881C 800C7C1C 45020004 */  bc1fl      .L800C7C30
/* C8820 800C7C20 46006006 */   mov.s     $f0, $f12
/* C8824 800C7C24 10000002 */  b          .L800C7C30
/* C8828 800C7C28 46007006 */   mov.s     $f0, $f14
/* C882C 800C7C2C 46006006 */  mov.s      $f0, $f12
.L800C7C30:
/* C8830 800C7C30 4600020D */  trunc.w.s  $f8, $f0
/* C8834 800C7C34 460C103C */  c.lt.s     $f2, $f12
/* C8838 800C7C38 44184000 */  mfc1       $t8, $f8
/* C883C 800C7C3C 45000003 */  bc1f       .L800C7C4C
/* C8840 800C7C40 A0B80008 */   sb        $t8, 8($a1)
/* C8844 800C7C44 10000002 */  b          .L800C7C50
/* C8848 800C7C48 46001006 */   mov.s     $f0, $f2
.L800C7C4C:
/* C884C 800C7C4C 46006006 */  mov.s      $f0, $f12
.L800C7C50:
/* C8850 800C7C50 4610F082 */  mul.s      $f2, $f30, $f16
/* C8854 800C7C54 4600028D */  trunc.w.s  $f10, $f0
/* C8858 800C7C58 460C103C */  c.lt.s     $f2, $f12
/* C885C 800C7C5C 44095000 */  mfc1       $t1, $f10
/* C8860 800C7C60 45000003 */  bc1f       .L800C7C70
/* C8864 800C7C64 A0A90009 */   sb        $t1, 9($a1)
/* C8868 800C7C68 10000002 */  b          .L800C7C74
/* C886C 800C7C6C 46001006 */   mov.s     $f0, $f2
.L800C7C70:
/* C8870 800C7C70 46006006 */  mov.s      $f0, $f12
.L800C7C74:
/* C8874 800C7C74 4600010D */  trunc.w.s  $f4, $f0
/* C8878 800C7C78 440C2000 */  mfc1       $t4, $f4
/* C887C 800C7C7C 00000000 */  nop
/* C8880 800C7C80 A0AC000A */  sb         $t4, 0xa($a1)
/* C8884 800C7C84 C7A60068 */  lwc1       $f6, 0x68($sp)
/* C8888 800C7C88 46103082 */  mul.s      $f2, $f6, $f16
/* C888C 800C7C8C 460C103C */  c.lt.s     $f2, $f12
/* C8890 800C7C90 00000000 */  nop
/* C8894 800C7C94 45020004 */  bc1fl      .L800C7CA8
/* C8898 800C7C98 46006006 */   mov.s     $f0, $f12
/* C889C 800C7C9C 10000002 */  b          .L800C7CA8
/* C88A0 800C7CA0 46001006 */   mov.s     $f0, $f2
/* C88A4 800C7CA4 46006006 */  mov.s      $f0, $f12
.L800C7CA8:
/* C88A8 800C7CA8 4600020D */  trunc.w.s  $f8, $f0
/* C88AC 800C7CAC 440F4000 */  mfc1       $t7, $f8
/* C88B0 800C7CB0 00000000 */  nop
/* C88B4 800C7CB4 A0AF0018 */  sb         $t7, 0x18($a1)
/* C88B8 800C7CB8 C7AA006C */  lwc1       $f10, 0x6c($sp)
/* C88BC 800C7CBC 46105082 */  mul.s      $f2, $f10, $f16
/* C88C0 800C7CC0 460C103C */  c.lt.s     $f2, $f12
/* C88C4 800C7CC4 00000000 */  nop
/* C88C8 800C7CC8 45020004 */  bc1fl      .L800C7CDC
/* C88CC 800C7CCC 46006006 */   mov.s     $f0, $f12
/* C88D0 800C7CD0 10000002 */  b          .L800C7CDC
/* C88D4 800C7CD4 46001006 */   mov.s     $f0, $f2
/* C88D8 800C7CD8 46006006 */  mov.s      $f0, $f12
.L800C7CDC:
/* C88DC 800C7CDC 4600010D */  trunc.w.s  $f4, $f0
/* C88E0 800C7CE0 44082000 */  mfc1       $t0, $f4
/* C88E4 800C7CE4 00000000 */  nop
/* C88E8 800C7CE8 A0A80019 */  sb         $t0, 0x19($a1)
/* C88EC 800C7CEC C7A60070 */  lwc1       $f6, 0x70($sp)
/* C88F0 800C7CF0 46103082 */  mul.s      $f2, $f6, $f16
/* C88F4 800C7CF4 460C103C */  c.lt.s     $f2, $f12
/* C88F8 800C7CF8 00000000 */  nop
/* C88FC 800C7CFC 45020004 */  bc1fl      .L800C7D10
/* C8900 800C7D00 46006006 */   mov.s     $f0, $f12
/* C8904 800C7D04 10000002 */  b          .L800C7D10
/* C8908 800C7D08 46001006 */   mov.s     $f0, $f2
/* C890C 800C7D0C 46006006 */  mov.s      $f0, $f12
.L800C7D10:
/* C8910 800C7D10 4600020D */  trunc.w.s  $f8, $f0
/* C8914 800C7D14 A0A00000 */  sb         $zero, ($a1)
/* C8918 800C7D18 A0A00001 */  sb         $zero, 1($a1)
/* C891C 800C7D1C A0A00002 */  sb         $zero, 2($a1)
/* C8920 800C7D20 440B4000 */  mfc1       $t3, $f8
/* C8924 800C7D24 A0A00003 */  sb         $zero, 3($a1)
/* C8928 800C7D28 A0A00004 */  sb         $zero, 4($a1)
/* C892C 800C7D2C A0A00005 */  sb         $zero, 5($a1)
/* C8930 800C7D30 A0A00006 */  sb         $zero, 6($a1)
/* C8934 800C7D34 A0A00007 */  sb         $zero, 7($a1)
/* C8938 800C7D38 A0A00010 */  sb         $zero, 0x10($a1)
/* C893C 800C7D3C A0A20011 */  sb         $v0, 0x11($a1)
/* C8940 800C7D40 A0A00012 */  sb         $zero, 0x12($a1)
/* C8944 800C7D44 A0A00013 */  sb         $zero, 0x13($a1)
/* C8948 800C7D48 A0A00014 */  sb         $zero, 0x14($a1)
/* C894C 800C7D4C A0A20015 */  sb         $v0, 0x15($a1)
/* C8950 800C7D50 A0A00016 */  sb         $zero, 0x16($a1)
/* C8954 800C7D54 A0A00017 */  sb         $zero, 0x17($a1)
/* C8958 800C7D58 A0AB001A */  sb         $t3, 0x1a($a1)
/* C895C 800C7D5C E49A0000 */  swc1       $f26, ($a0)
/* C8960 800C7D60 C7B20050 */  lwc1       $f18, 0x50($sp)
/* C8964 800C7D64 C7B00054 */  lwc1       $f16, 0x54($sp)
/* C8968 800C7D68 C7AE0058 */  lwc1       $f14, 0x58($sp)
/* C896C 800C7D6C 461A9282 */  mul.s      $f10, $f18, $f26
/* C8970 800C7D70 C7A00068 */  lwc1       $f0, 0x68($sp)
/* C8974 800C7D74 C7AC006C */  lwc1       $f12, 0x6c($sp)
/* C8978 800C7D78 461C8102 */  mul.s      $f4, $f16, $f28
/* C897C 800C7D7C C7A20070 */  lwc1       $f2, 0x70($sp)
/* C8980 800C7D80 E49C0010 */  swc1       $f28, 0x10($a0)
/* C8984 800C7D84 461E7202 */  mul.s      $f8, $f14, $f30
/* C8988 800C7D88 E49E0020 */  swc1       $f30, 0x20($a0)
/* C898C 800C7D8C E4940008 */  swc1       $f20, 8($a0)
/* C8990 800C7D90 E4960018 */  swc1       $f22, 0x18($a0)
/* C8994 800C7D94 E4980028 */  swc1       $f24, 0x28($a0)
/* C8998 800C7D98 46045180 */  add.s      $f6, $f10, $f4
/* C899C 800C7D9C E4800004 */  swc1       $f0, 4($a0)
/* C89A0 800C7DA0 E48C0014 */  swc1       $f12, 0x14($a0)
/* C89A4 800C7DA4 E4820024 */  swc1       $f2, 0x24($a0)
/* C89A8 800C7DA8 46083280 */  add.s      $f10, $f6, $f8
/* C89AC 800C7DAC 46009182 */  mul.s      $f6, $f18, $f0
/* C89B0 800C7DB0 44800000 */  mtc1       $zero, $f0
/* C89B4 800C7DB4 3C013F80 */  lui        $at, 0x3f80
/* C89B8 800C7DB8 460C8202 */  mul.s      $f8, $f16, $f12
/* C89BC 800C7DBC 46005107 */  neg.s      $f4, $f10
/* C89C0 800C7DC0 E4840030 */  swc1       $f4, 0x30($a0)
/* C89C4 800C7DC4 46027102 */  mul.s      $f4, $f14, $f2
/* C89C8 800C7DC8 46083280 */  add.s      $f10, $f6, $f8
/* C89CC 800C7DCC 46045180 */  add.s      $f6, $f10, $f4
/* C89D0 800C7DD0 46003207 */  neg.s      $f8, $f6
/* C89D4 800C7DD4 E4880034 */  swc1       $f8, 0x34($a0)
/* C89D8 800C7DD8 C7AA0050 */  lwc1       $f10, 0x50($sp)
/* C89DC 800C7DDC C7A60054 */  lwc1       $f6, 0x54($sp)
/* C89E0 800C7DE0 46145102 */  mul.s      $f4, $f10, $f20
/* C89E4 800C7DE4 00000000 */  nop
/* C89E8 800C7DE8 46163202 */  mul.s      $f8, $f6, $f22
/* C89EC 800C7DEC C7A60058 */  lwc1       $f6, 0x58($sp)
/* C89F0 800C7DF0 E480000C */  swc1       $f0, 0xc($a0)
/* C89F4 800C7DF4 E480001C */  swc1       $f0, 0x1c($a0)
/* C89F8 800C7DF8 E480002C */  swc1       $f0, 0x2c($a0)
/* C89FC 800C7DFC 46082280 */  add.s      $f10, $f4, $f8
/* C8A00 800C7E00 46183102 */  mul.s      $f4, $f6, $f24
/* C8A04 800C7E04 46045200 */  add.s      $f8, $f10, $f4
/* C8A08 800C7E08 44815000 */  mtc1       $at, $f10
/* C8A0C 800C7E0C 46004187 */  neg.s      $f6, $f8
/* C8A10 800C7E10 E48A003C */  swc1       $f10, 0x3c($a0)
/* C8A14 800C7E14 E4860038 */  swc1       $f6, 0x38($a0)
/* C8A18 800C7E18 8FBF0044 */  lw         $ra, 0x44($sp)
/* C8A1C 800C7E1C D7BE0038 */  ldc1       $f30, 0x38($sp)
/* C8A20 800C7E20 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* C8A24 800C7E24 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* C8A28 800C7E28 D7B80020 */  ldc1       $f24, 0x20($sp)
/* C8A2C 800C7E2C D7B60018 */  ldc1       $f22, 0x18($sp)
/* C8A30 800C7E30 D7B40010 */  ldc1       $f20, 0x10($sp)
/* C8A34 800C7E34 03E00008 */  jr         $ra
/* C8A38 800C7E38 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_800C7E3C
/* C8A3C 800C7E3C 27BDFF88 */  addiu      $sp, $sp, -0x78
/* C8A40 800C7E40 C7A40088 */  lwc1       $f4, 0x88($sp)
/* C8A44 800C7E44 44866000 */  mtc1       $a2, $f12
/* C8A48 800C7E48 44877000 */  mtc1       $a3, $f14
/* C8A4C 800C7E4C E7A40010 */  swc1       $f4, 0x10($sp)
/* C8A50 800C7E50 C7A400A0 */  lwc1       $f4, 0xa0($sp)
/* C8A54 800C7E54 C7A6008C */  lwc1       $f6, 0x8c($sp)
/* C8A58 800C7E58 C7A80090 */  lwc1       $f8, 0x90($sp)
/* C8A5C 800C7E5C C7AA0094 */  lwc1       $f10, 0x94($sp)
/* C8A60 800C7E60 C7B00098 */  lwc1       $f16, 0x98($sp)
/* C8A64 800C7E64 C7B2009C */  lwc1       $f18, 0x9c($sp)
/* C8A68 800C7E68 AFBF0034 */  sw         $ra, 0x34($sp)
/* C8A6C 800C7E6C AFA40078 */  sw         $a0, 0x78($sp)
/* C8A70 800C7E70 44066000 */  mfc1       $a2, $f12
/* C8A74 800C7E74 44077000 */  mfc1       $a3, $f14
/* C8A78 800C7E78 27A40038 */  addiu      $a0, $sp, 0x38
/* C8A7C 800C7E7C E7A40028 */  swc1       $f4, 0x28($sp)
/* C8A80 800C7E80 E7A60014 */  swc1       $f6, 0x14($sp)
/* C8A84 800C7E84 E7A80018 */  swc1       $f8, 0x18($sp)
/* C8A88 800C7E88 E7AA001C */  swc1       $f10, 0x1c($sp)
/* C8A8C 800C7E8C E7B00020 */  swc1       $f16, 0x20($sp)
/* C8A90 800C7E90 0C031E8C */  jal        func_800C7A30
/* C8A94 800C7E94 E7B20024 */   swc1      $f18, 0x24($sp)
/* C8A98 800C7E98 27A40038 */  addiu      $a0, $sp, 0x38
/* C8A9C 800C7E9C 0C0310D0 */  jal        func_800C4340
/* C8AA0 800C7EA0 8FA50078 */   lw        $a1, 0x78($sp)
/* C8AA4 800C7EA4 8FBF0034 */  lw         $ra, 0x34($sp)
/* C8AA8 800C7EA8 27BD0078 */  addiu      $sp, $sp, 0x78
/* C8AAC 800C7EAC 03E00008 */  jr         $ra
/* C8AB0 800C7EB0 00000000 */   nop
/* C8AB4 800C7EB4 00000000 */  nop
/* C8AB8 800C7EB8 00000000 */  nop
/* C8ABC 800C7EBC 00000000 */  nop

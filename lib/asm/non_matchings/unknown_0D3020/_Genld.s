glabel _Genld
/* 0D75A0 800D69A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D75A4 800D69A4 AFB20028 */  sw    $s2, 0x28($sp)
/* 0D75A8 800D69A8 00127400 */  sll   $t6, $s2, 0x10
/* 0D75AC 800D69AC 000E9403 */  sra   $s2, $t6, 0x10
/* 0D75B0 800D69B0 AFB30024 */  sw    $s3, 0x24($sp)
/* 0D75B4 800D69B4 0013C400 */  sll   $t8, $s3, 0x10
/* 0D75B8 800D69B8 00189C03 */  sra   $s3, $t8, 0x10
/* 0D75BC 800D69BC 328E00FF */  andi  $t6, $s4, 0xff
/* 0D75C0 800D69C0 AFB4001C */  sw    $s4, 0x1c($sp)
/* 0D75C4 800D69C4 01C0A025 */  move  $s4, $t6
/* 0D75C8 800D69C8 1E600004 */  bgtz  $s3, .L800D69DC
/* 0D75CC 800D69CC AFBF0014 */   sw    $ra, 0x14($sp)
/* 0D75D0 800D69D0 3C11800F */  lui   $s1, %hi(_Genld_0_string) # $s1, 0x800f
/* 0D75D4 800D69D4 263198B0 */  addiu $s1, %lo(_Genld_0_string) # addiu $s1, $s1, -0x6750
/* 0D75D8 800D69D8 24130001 */  li    $s3, 1
.L800D69DC:
/* 0D75DC 800D69DC 24020066 */  li    $v0, 102
/* 0D75E0 800D69E0 1054000C */  beq   $v0, $s4, .L800D6A14
/* 0D75E4 800D69E4 02801825 */   move  $v1, $s4
/* 0D75E8 800D69E8 24040067 */  li    $a0, 103
/* 0D75EC 800D69EC 10830002 */  beq   $a0, $v1, .L800D69F8
/* 0D75F0 800D69F0 24010047 */   li    $at, 71
/* 0D75F4 800D69F4 14610096 */  bne   $v1, $at, .L800D6C50
.L800D69F8:
/* 0D75F8 800D69F8 2A41FFFC */   slti  $at, $s2, -4
/* 0D75FC 800D69FC 14200094 */  bnez  $at, .L800D6C50
/* 0D7600 800D6A00 00000000 */   nop   
/* 0D7604 800D6A04 8E0F0024 */  lw    $t7, 0x24($s0)
/* 0D7608 800D6A08 024F082A */  slt   $at, $s2, $t7
/* 0D760C 800D6A0C 10200090 */  beqz  $at, .L800D6C50
/* 0D7610 800D6A10 00000000 */   nop   
.L800D6A14:
/* 0D7614 800D6A14 26520001 */  addiu $s2, $s2, 1
/* 0D7618 800D6A18 0012C400 */  sll   $t8, $s2, 0x10
/* 0D761C 800D6A1C 1043000E */  beq   $v0, $v1, .L800D6A58
/* 0D7620 800D6A20 00189403 */   sra   $s2, $t8, 0x10
/* 0D7624 800D6A24 8E0E0030 */  lw    $t6, 0x30($s0)
/* 0D7628 800D6A28 8E020024 */  lw    $v0, 0x24($s0)
/* 0D762C 800D6A2C 31CF0008 */  andi  $t7, $t6, 8
/* 0D7630 800D6A30 15E00005 */  bnez  $t7, .L800D6A48
/* 0D7634 800D6A34 0262082A */   slt   $at, $s3, $v0
/* 0D7638 800D6A38 50200004 */  beql  $at, $zero, .L800D6A4C
/* 0D763C 800D6A3C 0052C023 */   subu  $t8, $v0, $s2
/* 0D7640 800D6A40 AE130024 */  sw    $s3, 0x24($s0)
/* 0D7644 800D6A44 02601025 */  move  $v0, $s3
.L800D6A48:
/* 0D7648 800D6A48 0052C023 */  subu  $t8, $v0, $s2
.L800D6A4C:
/* 0D764C 800D6A4C 07010002 */  bgez  $t8, .L800D6A58
/* 0D7650 800D6A50 AE180024 */   sw    $t8, 0x24($s0)
/* 0D7654 800D6A54 AE000024 */  sw    $zero, 0x24($s0)
.L800D6A58:
/* 0D7658 800D6A58 1E400033 */  bgtz  $s2, .L800D6B28
/* 0D765C 800D6A5C 0272082A */   slt   $at, $s3, $s2
/* 0D7660 800D6A60 8E0F0008 */  lw    $t7, 8($s0)
/* 0D7664 800D6A64 8E180014 */  lw    $t8, 0x14($s0)
/* 0D7668 800D6A68 240E0030 */  li    $t6, 48
/* 0D766C 800D6A6C 00121823 */  negu  $v1, $s2
/* 0D7670 800D6A70 01F8C821 */  addu  $t9, $t7, $t8
/* 0D7674 800D6A74 A32E0000 */  sb    $t6, ($t9)
/* 0D7678 800D6A78 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D767C 800D6A7C 8E020024 */  lw    $v0, 0x24($s0)
/* 0D7680 800D6A80 02202825 */  move  $a1, $s1
/* 0D7684 800D6A84 25F80001 */  addiu $t8, $t7, 1
/* 0D7688 800D6A88 1C400005 */  bgtz  $v0, .L800D6AA0
/* 0D768C 800D6A8C AE180014 */   sw    $t8, 0x14($s0)
/* 0D7690 800D6A90 8E0E0030 */  lw    $t6, 0x30($s0)
/* 0D7694 800D6A94 31D90008 */  andi  $t9, $t6, 8
/* 0D7698 800D6A98 5320000B */  beql  $t9, $zero, .L800D6AC8
/* 0D769C 800D6A9C 0043082A */   slt   $at, $v0, $v1
.L800D6AA0:
/* 0D76A0 800D6AA0 8E180008 */  lw    $t8, 8($s0)
/* 0D76A4 800D6AA4 8E0E0014 */  lw    $t6, 0x14($s0)
/* 0D76A8 800D6AA8 240F002E */  li    $t7, 46
/* 0D76AC 800D6AAC 030EC821 */  addu  $t9, $t8, $t6
/* 0D76B0 800D6AB0 A32F0000 */  sb    $t7, ($t9)
/* 0D76B4 800D6AB4 8E180014 */  lw    $t8, 0x14($s0)
/* 0D76B8 800D6AB8 8E020024 */  lw    $v0, 0x24($s0)
/* 0D76BC 800D6ABC 270E0001 */  addiu $t6, $t8, 1
/* 0D76C0 800D6AC0 AE0E0014 */  sw    $t6, 0x14($s0)
/* 0D76C4 800D6AC4 0043082A */  slt   $at, $v0, $v1
.L800D6AC8:
/* 0D76C8 800D6AC8 50200006 */  beql  $at, $zero, .L800D6AE4
/* 0D76CC 800D6ACC 0052C021 */   addu  $t8, $v0, $s2
/* 0D76D0 800D6AD0 00029023 */  negu  $s2, $v0
/* 0D76D4 800D6AD4 00127C00 */  sll   $t7, $s2, 0x10
/* 0D76D8 800D6AD8 000F9403 */  sra   $s2, $t7, 0x10
/* 0D76DC 800D6ADC 00121823 */  negu  $v1, $s2
/* 0D76E0 800D6AE0 0052C021 */  addu  $t8, $v0, $s2
.L800D6AE4:
/* 0D76E4 800D6AE4 0313082A */  slt   $at, $t8, $s3
/* 0D76E8 800D6AE8 AE030018 */  sw    $v1, 0x18($s0)
/* 0D76EC 800D6AEC 10200004 */  beqz  $at, .L800D6B00
/* 0D76F0 800D6AF0 AE180024 */   sw    $t8, 0x24($s0)
/* 0D76F4 800D6AF4 00189C00 */  sll   $s3, $t8, 0x10
/* 0D76F8 800D6AF8 00137403 */  sra   $t6, $s3, 0x10
/* 0D76FC 800D6AFC 01C09825 */  move  $s3, $t6
.L800D6B00:
/* 0D7700 800D6B00 8E0F0008 */  lw    $t7, 8($s0)
/* 0D7704 800D6B04 8E190014 */  lw    $t9, 0x14($s0)
/* 0D7708 800D6B08 AE13001C */  sw    $s3, 0x1c($s0)
/* 0D770C 800D6B0C 02603025 */  move  $a2, $s3
/* 0D7710 800D6B10 0C03385C */  jal   memcpy
/* 0D7714 800D6B14 01F92021 */   addu  $a0, $t7, $t9
/* 0D7718 800D6B18 8E180024 */  lw    $t8, 0x24($s0)
/* 0D771C 800D6B1C 03137023 */  subu  $t6, $t8, $s3
/* 0D7720 800D6B20 100000E2 */  b     .L800D6EAC
/* 0D7724 800D6B24 AE0E0020 */   sw    $t6, 0x20($s0)
.L800D6B28:
/* 0D7728 800D6B28 1020001D */  beqz  $at, .L800D6BA0
/* 0D772C 800D6B2C 02202825 */   move  $a1, $s1
/* 0D7730 800D6B30 8E0F0008 */  lw    $t7, 8($s0)
/* 0D7734 800D6B34 8E190014 */  lw    $t9, 0x14($s0)
/* 0D7738 800D6B38 02202825 */  move  $a1, $s1
/* 0D773C 800D6B3C 02603025 */  move  $a2, $s3
/* 0D7740 800D6B40 0C03385C */  jal   memcpy
/* 0D7744 800D6B44 01F92021 */   addu  $a0, $t7, $t9
/* 0D7748 800D6B48 8E180014 */  lw    $t8, 0x14($s0)
/* 0D774C 800D6B4C 8E020024 */  lw    $v0, 0x24($s0)
/* 0D7750 800D6B50 02537823 */  subu  $t7, $s2, $s3
/* 0D7754 800D6B54 03137021 */  addu  $t6, $t8, $s3
/* 0D7758 800D6B58 AE0E0014 */  sw    $t6, 0x14($s0)
/* 0D775C 800D6B5C 1C400005 */  bgtz  $v0, .L800D6B74
/* 0D7760 800D6B60 AE0F0018 */   sw    $t7, 0x18($s0)
/* 0D7764 800D6B64 8E190030 */  lw    $t9, 0x30($s0)
/* 0D7768 800D6B68 33380008 */  andi  $t8, $t9, 8
/* 0D776C 800D6B6C 1300000A */  beqz  $t8, .L800D6B98
/* 0D7770 800D6B70 00000000 */   nop   
.L800D6B74:
/* 0D7774 800D6B74 8E0F0008 */  lw    $t7, 8($s0)
/* 0D7778 800D6B78 8E190014 */  lw    $t9, 0x14($s0)
/* 0D777C 800D6B7C 240E002E */  li    $t6, 46
/* 0D7780 800D6B80 01F9C021 */  addu  $t8, $t7, $t9
/* 0D7784 800D6B84 A30E0000 */  sb    $t6, ($t8)
/* 0D7788 800D6B88 8E0F001C */  lw    $t7, 0x1c($s0)
/* 0D778C 800D6B8C 8E020024 */  lw    $v0, 0x24($s0)
/* 0D7790 800D6B90 25F90001 */  addiu $t9, $t7, 1
/* 0D7794 800D6B94 AE19001C */  sw    $t9, 0x1c($s0)
.L800D6B98:
/* 0D7798 800D6B98 100000C4 */  b     .L800D6EAC
/* 0D779C 800D6B9C AE020020 */   sw    $v0, 0x20($s0)
.L800D6BA0:
/* 0D77A0 800D6BA0 8E0E0008 */  lw    $t6, 8($s0)
/* 0D77A4 800D6BA4 8E180014 */  lw    $t8, 0x14($s0)
/* 0D77A8 800D6BA8 02403025 */  move  $a2, $s2
/* 0D77AC 800D6BAC 0C03385C */  jal   memcpy
/* 0D77B0 800D6BB0 01D82021 */   addu  $a0, $t6, $t8
/* 0D77B4 800D6BB4 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D77B8 800D6BB8 8E020024 */  lw    $v0, 0x24($s0)
/* 0D77BC 800D6BBC 02729823 */  subu  $s3, $s3, $s2
/* 0D77C0 800D6BC0 00137400 */  sll   $t6, $s3, 0x10
/* 0D77C4 800D6BC4 01F2C821 */  addu  $t9, $t7, $s2
/* 0D77C8 800D6BC8 AE190014 */  sw    $t9, 0x14($s0)
/* 0D77CC 800D6BCC 1C400005 */  bgtz  $v0, .L800D6BE4
/* 0D77D0 800D6BD0 000E9C03 */   sra   $s3, $t6, 0x10
/* 0D77D4 800D6BD4 8E0F0030 */  lw    $t7, 0x30($s0)
/* 0D77D8 800D6BD8 31F90008 */  andi  $t9, $t7, 8
/* 0D77DC 800D6BDC 5320000B */  beql  $t9, $zero, .L800D6C0C
/* 0D77E0 800D6BE0 0053082A */   slt   $at, $v0, $s3
.L800D6BE4:
/* 0D77E4 800D6BE4 8E180008 */  lw    $t8, 8($s0)
/* 0D77E8 800D6BE8 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D77EC 800D6BEC 240E002E */  li    $t6, 46
/* 0D77F0 800D6BF0 030FC821 */  addu  $t9, $t8, $t7
/* 0D77F4 800D6BF4 A32E0000 */  sb    $t6, ($t9)
/* 0D77F8 800D6BF8 8E180014 */  lw    $t8, 0x14($s0)
/* 0D77FC 800D6BFC 8E020024 */  lw    $v0, 0x24($s0)
/* 0D7800 800D6C00 270F0001 */  addiu $t7, $t8, 1
/* 0D7804 800D6C04 AE0F0014 */  sw    $t7, 0x14($s0)
/* 0D7808 800D6C08 0053082A */  slt   $at, $v0, $s3
.L800D6C0C:
/* 0D780C 800D6C0C 10200004 */  beqz  $at, .L800D6C20
/* 0D7810 800D6C10 02512821 */   addu  $a1, $s2, $s1
/* 0D7814 800D6C14 00029C00 */  sll   $s3, $v0, 0x10
/* 0D7818 800D6C18 00137403 */  sra   $t6, $s3, 0x10
/* 0D781C 800D6C1C 01C09825 */  move  $s3, $t6
.L800D6C20:
/* 0D7820 800D6C20 8E190008 */  lw    $t9, 8($s0)
/* 0D7824 800D6C24 8E180014 */  lw    $t8, 0x14($s0)
/* 0D7828 800D6C28 02603025 */  move  $a2, $s3
/* 0D782C 800D6C2C 0C03385C */  jal   memcpy
/* 0D7830 800D6C30 03382021 */   addu  $a0, $t9, $t8
/* 0D7834 800D6C34 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D7838 800D6C38 8E190024 */  lw    $t9, 0x24($s0)
/* 0D783C 800D6C3C 01F37021 */  addu  $t6, $t7, $s3
/* 0D7840 800D6C40 0333C023 */  subu  $t8, $t9, $s3
/* 0D7844 800D6C44 AE0E0014 */  sw    $t6, 0x14($s0)
/* 0D7848 800D6C48 10000098 */  b     .L800D6EAC
/* 0D784C 800D6C4C AE180018 */   sw    $t8, 0x18($s0)
.L800D6C50:
/* 0D7850 800D6C50 10830003 */  beq   $a0, $v1, .L800D6C60
/* 0D7854 800D6C54 24010047 */   li    $at, 71
/* 0D7858 800D6C58 54610011 */  bnel  $v1, $at, .L800D6CA0
/* 0D785C 800D6C5C 8E180008 */   lw    $t8, 8($s0)
.L800D6C60:
/* 0D7860 800D6C60 8E020024 */  lw    $v0, 0x24($s0)
/* 0D7864 800D6C64 24140045 */  li    $s4, 69
/* 0D7868 800D6C68 0262082A */  slt   $at, $s3, $v0
/* 0D786C 800D6C6C 50200004 */  beql  $at, $zero, .L800D6C80
/* 0D7870 800D6C70 244FFFFF */   addiu $t7, $v0, -1
/* 0D7874 800D6C74 AE130024 */  sw    $s3, 0x24($s0)
/* 0D7878 800D6C78 02601025 */  move  $v0, $s3
/* 0D787C 800D6C7C 244FFFFF */  addiu $t7, $v0, -1
.L800D6C80:
/* 0D7880 800D6C80 05E10002 */  bgez  $t7, .L800D6C8C
/* 0D7884 800D6C84 AE0F0024 */   sw    $t7, 0x24($s0)
/* 0D7888 800D6C88 AE000024 */  sw    $zero, 0x24($s0)
.L800D6C8C:
/* 0D788C 800D6C8C 14830003 */  bne   $a0, $v1, .L800D6C9C
/* 0D7890 800D6C90 00000000 */   nop   
/* 0D7894 800D6C94 10000001 */  b     .L800D6C9C
/* 0D7898 800D6C98 24140065 */   li    $s4, 101
.L800D6C9C:
/* 0D789C 800D6C9C 8E180008 */  lw    $t8, 8($s0)
.L800D6CA0:
/* 0D78A0 800D6CA0 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D78A4 800D6CA4 92390000 */  lbu   $t9, ($s1)
/* 0D78A8 800D6CA8 26310001 */  addiu $s1, $s1, 1
/* 0D78AC 800D6CAC 030F7021 */  addu  $t6, $t8, $t7
/* 0D78B0 800D6CB0 A1D90000 */  sb    $t9, ($t6)
/* 0D78B4 800D6CB4 8E180014 */  lw    $t8, 0x14($s0)
/* 0D78B8 800D6CB8 8E020024 */  lw    $v0, 0x24($s0)
/* 0D78BC 800D6CBC 270F0001 */  addiu $t7, $t8, 1
/* 0D78C0 800D6CC0 1C400005 */  bgtz  $v0, .L800D6CD8
/* 0D78C4 800D6CC4 AE0F0014 */   sw    $t7, 0x14($s0)
/* 0D78C8 800D6CC8 8E190030 */  lw    $t9, 0x30($s0)
/* 0D78CC 800D6CCC 332E0008 */  andi  $t6, $t9, 8
/* 0D78D0 800D6CD0 11C0000A */  beqz  $t6, .L800D6CFC
/* 0D78D4 800D6CD4 00000000 */   nop   
.L800D6CD8:
/* 0D78D8 800D6CD8 8E0F0008 */  lw    $t7, 8($s0)
/* 0D78DC 800D6CDC 8E190014 */  lw    $t9, 0x14($s0)
/* 0D78E0 800D6CE0 2418002E */  li    $t8, 46
/* 0D78E4 800D6CE4 01F97021 */  addu  $t6, $t7, $t9
/* 0D78E8 800D6CE8 A1D80000 */  sb    $t8, ($t6)
/* 0D78EC 800D6CEC 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D78F0 800D6CF0 8E020024 */  lw    $v0, 0x24($s0)
/* 0D78F4 800D6CF4 25F90001 */  addiu $t9, $t7, 1
/* 0D78F8 800D6CF8 AE190014 */  sw    $t9, 0x14($s0)
.L800D6CFC:
/* 0D78FC 800D6CFC 58400016 */  blezl $v0, .L800D6D58
/* 0D7900 800D6D00 8E0E0008 */   lw    $t6, 8($s0)
/* 0D7904 800D6D04 2673FFFF */  addiu $s3, $s3, -1
/* 0D7908 800D6D08 0013C400 */  sll   $t8, $s3, 0x10
/* 0D790C 800D6D0C 00189C03 */  sra   $s3, $t8, 0x10
/* 0D7910 800D6D10 0053082A */  slt   $at, $v0, $s3
/* 0D7914 800D6D14 10200004 */  beqz  $at, .L800D6D28
/* 0D7918 800D6D18 02202825 */   move  $a1, $s1
/* 0D791C 800D6D1C 00029C00 */  sll   $s3, $v0, 0x10
/* 0D7920 800D6D20 00137C03 */  sra   $t7, $s3, 0x10
/* 0D7924 800D6D24 01E09825 */  move  $s3, $t7
.L800D6D28:
/* 0D7928 800D6D28 8E190008 */  lw    $t9, 8($s0)
/* 0D792C 800D6D2C 8E180014 */  lw    $t8, 0x14($s0)
/* 0D7930 800D6D30 02603025 */  move  $a2, $s3
/* 0D7934 800D6D34 0C03385C */  jal   memcpy
/* 0D7938 800D6D38 03382021 */   addu  $a0, $t9, $t8
/* 0D793C 800D6D3C 8E0E0014 */  lw    $t6, 0x14($s0)
/* 0D7940 800D6D40 8E190024 */  lw    $t9, 0x24($s0)
/* 0D7944 800D6D44 01D37821 */  addu  $t7, $t6, $s3
/* 0D7948 800D6D48 0333C023 */  subu  $t8, $t9, $s3
/* 0D794C 800D6D4C AE0F0014 */  sw    $t7, 0x14($s0)
/* 0D7950 800D6D50 AE180018 */  sw    $t8, 0x18($s0)
/* 0D7954 800D6D54 8E0E0008 */  lw    $t6, 8($s0)
.L800D6D58:
/* 0D7958 800D6D58 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D795C 800D6D5C 01CF8821 */  addu  $s1, $t6, $t7
/* 0D7960 800D6D60 26310001 */  addiu $s1, $s1, 1
/* 0D7964 800D6D64 06400005 */  bltz  $s2, .L800D6D7C
/* 0D7968 800D6D68 A234FFFF */   sb    $s4, -1($s1)
/* 0D796C 800D6D6C 2419002B */  li    $t9, 43
/* 0D7970 800D6D70 A2390000 */  sb    $t9, ($s1)
/* 0D7974 800D6D74 10000008 */  b     .L800D6D98
/* 0D7978 800D6D78 26310001 */   addiu $s1, $s1, 1
.L800D6D7C:
/* 0D797C 800D6D7C 00129023 */  negu  $s2, $s2
/* 0D7980 800D6D80 00127400 */  sll   $t6, $s2, 0x10
/* 0D7984 800D6D84 2418002D */  li    $t8, 45
/* 0D7988 800D6D88 000E7C03 */  sra   $t7, $t6, 0x10
/* 0D798C 800D6D8C A2380000 */  sb    $t8, ($s1)
/* 0D7990 800D6D90 26310001 */  addiu $s1, $s1, 1
/* 0D7994 800D6D94 01E09025 */  move  $s2, $t7
.L800D6D98:
/* 0D7998 800D6D98 2A410064 */  slti  $at, $s2, 0x64
/* 0D799C 800D6D9C 5420002A */  bnezl $at, .L800D6E48
/* 0D79A0 800D6DA0 2402000A */   li    $v0, 10
/* 0D79A4 800D6DA4 2A4103E8 */  slti  $at, $s2, 0x3e8
/* 0D79A8 800D6DA8 14200013 */  bnez  $at, .L800D6DF8
/* 0D79AC 800D6DAC 240203E8 */   li    $v0, 1000
/* 0D79B0 800D6DB0 0242001A */  div   $zero, $s2, $v0
/* 0D79B4 800D6DB4 14400002 */  bnez  $v0, .L800D6DC0
/* 0D79B8 800D6DB8 00000000 */   nop   
/* 0D79BC 800D6DBC 0007000D */  break 7
.L800D6DC0:
/* 0D79C0 800D6DC0 2401FFFF */  li    $at, -1
/* 0D79C4 800D6DC4 14410004 */  bne   $v0, $at, .L800D6DD8
/* 0D79C8 800D6DC8 3C018000 */   lui   $at, 0x8000
/* 0D79CC 800D6DCC 16410002 */  bne   $s2, $at, .L800D6DD8
/* 0D79D0 800D6DD0 00000000 */   nop   
/* 0D79D4 800D6DD4 0006000D */  break 6
.L800D6DD8:
/* 0D79D8 800D6DD8 00009010 */  mfhi  $s2
/* 0D79DC 800D6DDC 00127400 */  sll   $t6, $s2, 0x10
/* 0D79E0 800D6DE0 0000C812 */  mflo  $t9
/* 0D79E4 800D6DE4 27380030 */  addiu $t8, $t9, 0x30
/* 0D79E8 800D6DE8 000E7C03 */  sra   $t7, $t6, 0x10
/* 0D79EC 800D6DEC 01E09025 */  move  $s2, $t7
/* 0D79F0 800D6DF0 A2380000 */  sb    $t8, ($s1)
/* 0D79F4 800D6DF4 26310001 */  addiu $s1, $s1, 1
.L800D6DF8:
/* 0D79F8 800D6DF8 24020064 */  li    $v0, 100
/* 0D79FC 800D6DFC 0242001A */  div   $zero, $s2, $v0
/* 0D7A00 800D6E00 14400002 */  bnez  $v0, .L800D6E0C
/* 0D7A04 800D6E04 00000000 */   nop   
/* 0D7A08 800D6E08 0007000D */  break 7
.L800D6E0C:
/* 0D7A0C 800D6E0C 2401FFFF */  li    $at, -1
/* 0D7A10 800D6E10 14410004 */  bne   $v0, $at, .L800D6E24
/* 0D7A14 800D6E14 3C018000 */   lui   $at, 0x8000
/* 0D7A18 800D6E18 16410002 */  bne   $s2, $at, .L800D6E24
/* 0D7A1C 800D6E1C 00000000 */   nop   
/* 0D7A20 800D6E20 0006000D */  break 6
.L800D6E24:
/* 0D7A24 800D6E24 00009010 */  mfhi  $s2
/* 0D7A28 800D6E28 00127400 */  sll   $t6, $s2, 0x10
/* 0D7A2C 800D6E2C 0000C812 */  mflo  $t9
/* 0D7A30 800D6E30 27380030 */  addiu $t8, $t9, 0x30
/* 0D7A34 800D6E34 000E7C03 */  sra   $t7, $t6, 0x10
/* 0D7A38 800D6E38 01E09025 */  move  $s2, $t7
/* 0D7A3C 800D6E3C A2380000 */  sb    $t8, ($s1)
/* 0D7A40 800D6E40 26310001 */  addiu $s1, $s1, 1
/* 0D7A44 800D6E44 2402000A */  li    $v0, 10
.L800D6E48:
/* 0D7A48 800D6E48 0242001A */  div   $zero, $s2, $v0
/* 0D7A4C 800D6E4C 14400002 */  bnez  $v0, .L800D6E58
/* 0D7A50 800D6E50 00000000 */   nop   
/* 0D7A54 800D6E54 0007000D */  break 7
.L800D6E58:
/* 0D7A58 800D6E58 2401FFFF */  li    $at, -1
/* 0D7A5C 800D6E5C 14410004 */  bne   $v0, $at, .L800D6E70
/* 0D7A60 800D6E60 3C018000 */   lui   $at, 0x8000
/* 0D7A64 800D6E64 16410002 */  bne   $s2, $at, .L800D6E70
/* 0D7A68 800D6E68 00000000 */   nop   
/* 0D7A6C 800D6E6C 0006000D */  break 6
.L800D6E70:
/* 0D7A70 800D6E70 00009010 */  mfhi  $s2
/* 0D7A74 800D6E74 00127400 */  sll   $t6, $s2, 0x10
/* 0D7A78 800D6E78 0000C812 */  mflo  $t9
/* 0D7A7C 800D6E7C 27380030 */  addiu $t8, $t9, 0x30
/* 0D7A80 800D6E80 000E7C03 */  sra   $t7, $t6, 0x10
/* 0D7A84 800D6E84 25F90030 */  addiu $t9, $t7, 0x30
/* 0D7A88 800D6E88 A2380000 */  sb    $t8, ($s1)
/* 0D7A8C 800D6E8C A2390001 */  sb    $t9, 1($s1)
/* 0D7A90 800D6E90 8E180008 */  lw    $t8, 8($s0)
/* 0D7A94 800D6E94 01E09025 */  move  $s2, $t7
/* 0D7A98 800D6E98 8E0F0014 */  lw    $t7, 0x14($s0)
/* 0D7A9C 800D6E9C 26310002 */  addiu $s1, $s1, 2
/* 0D7AA0 800D6EA0 02387023 */  subu  $t6, $s1, $t8
/* 0D7AA4 800D6EA4 01CFC823 */  subu  $t9, $t6, $t7
/* 0D7AA8 800D6EA8 AE19001C */  sw    $t9, 0x1c($s0)
.L800D6EAC:
/* 0D7AAC 800D6EAC 8E180030 */  lw    $t8, 0x30($s0)
/* 0D7AB0 800D6EB0 24010010 */  li    $at, 16
/* 0D7AB4 800D6EB4 330E0014 */  andi  $t6, $t8, 0x14
/* 0D7AB8 800D6EB8 55C10010 */  bnel  $t6, $at, .L800D6EFC
/* 0D7ABC 800D6EBC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D7AC0 800D6EC0 8E0F000C */  lw    $t7, 0xc($s0)
/* 0D7AC4 800D6EC4 8E190014 */  lw    $t9, 0x14($s0)
/* 0D7AC8 800D6EC8 8E0E0018 */  lw    $t6, 0x18($s0)
/* 0D7ACC 800D6ECC 8E030028 */  lw    $v1, 0x28($s0)
/* 0D7AD0 800D6ED0 01F9C021 */  addu  $t8, $t7, $t9
/* 0D7AD4 800D6ED4 8E19001C */  lw    $t9, 0x1c($s0)
/* 0D7AD8 800D6ED8 030E7821 */  addu  $t7, $t8, $t6
/* 0D7ADC 800D6EDC 8E0E0020 */  lw    $t6, 0x20($s0)
/* 0D7AE0 800D6EE0 01F9C021 */  addu  $t8, $t7, $t9
/* 0D7AE4 800D6EE4 030E1021 */  addu  $v0, $t8, $t6
/* 0D7AE8 800D6EE8 0043082A */  slt   $at, $v0, $v1
/* 0D7AEC 800D6EEC 10200002 */  beqz  $at, .L800D6EF8
/* 0D7AF0 800D6EF0 00627823 */   subu  $t7, $v1, $v0
/* 0D7AF4 800D6EF4 AE0F0010 */  sw    $t7, 0x10($s0)
.L800D6EF8:
/* 0D7AF8 800D6EF8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800D6EFC:
/* 0D7AFC 800D6EFC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D7B00 800D6F00 03E00008 */  jr    $ra
/* 0D7B04 800D6F04 00000000 */   nop   

/* 0D7B08 800D6F08 03E00008 */  jr    $ra
/* 0D7B0C 800D6F0C 00000000 */   nop   


.late_rodata
glabel D_800E6A50
.double 0.3
glabel D_800E6A58
.double -0.3
glabel D_800E6A60
.double 0.27
glabel D_800E6A68
.double 0.45
glabel jpt_800E6A70
.word L8005DBEC, L8005DC10, L8005DC48, L8005DC64, L8005DCBC, L8005DCE8
glabel D_800E6A88
.double -0.1
glabel D_800E6A90
.double 0.1
glabel D_800E6A98
.double 700.0

.text
glabel func_8005D820
/* 05E420 8005D820 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 05E424 8005D824 AFA40060 */  sw    $a0, 0x60($sp)
/* 05E428 8005D828 AFBF002C */  sw    $ra, 0x2c($sp)
/* 05E42C 8005D82C AFB10028 */  sw    $s1, 0x28($sp)
/* 05E430 8005D830 AFB00024 */  sw    $s0, 0x24($sp)
/* 05E434 8005D834 3C04800E */  lui   $a0, %hi(D_800DCE20) # $a0, 0x800e
/* 05E438 8005D838 00E08025 */  move  $s0, $a3
/* 05E43C 8005D83C 00C08825 */  move  $s1, $a2
/* 05E440 8005D840 E7B50018 */  swc1  $f21, 0x18($sp)
/* 05E444 8005D844 E7B4001C */  swc1  $f20, 0x1c($sp)
/* 05E448 8005D848 AFA50064 */  sw    $a1, 0x64($sp)
/* 05E44C 8005D84C 0C01729E */  jal   func_8005CA78
/* 05E450 8005D850 2484CE20 */   addiu $a0, %lo(D_800DCE20) # addiu $a0, $a0, -0x31e0
/* 05E454 8005D854 822E003B */  lb    $t6, 0x3b($s1)
/* 05E458 8005D858 3C01800E */  lui   $at, %hi(D_800E6A50 + 4) # $at, 0x800e
/* 05E45C 8005D85C A7AE005E */  sh    $t6, 0x5e($sp)
/* 05E460 8005D860 860F016A */  lh    $t7, 0x16a($s0)
/* 05E464 8005D864 862A0018 */  lh    $t2, 0x18($s1)
/* 05E468 8005D868 A7AF005A */  sh    $t7, 0x5a($sp)
/* 05E46C 8005D86C C604002C */  lwc1  $f4, 0x2c($s0)
/* 05E470 8005D870 C4276A50 */  lwc1  $f7, %lo(D_800E6A50)($at)
/* 05E474 8005D874 C4266A54 */  lwc1  $f6, %lo(D_800E6A50 + 4)($at)
/* 05E478 8005D878 46002021 */  cvt.d.s $f0, $f4
/* 05E47C 8005D87C 4626003C */  c.lt.d $f0, $f6
/* 05E480 8005D880 00000000 */  nop   
/* 05E484 8005D884 45000009 */  bc1f  .L8005D8AC
/* 05E488 8005D888 3C01800E */   lui   $at, %hi(D_800E6A58 + 4) # $at, 0x800e
/* 05E48C 8005D88C C4296A58 */  lwc1  $f9, %lo(D_800E6A58)($at)
/* 05E490 8005D890 C4286A5C */  lwc1  $f8, %lo(D_800E6A58 + 4)($at)
/* 05E494 8005D894 8FB80074 */  lw    $t8, 0x74($sp)
/* 05E498 8005D898 4620403C */  c.lt.d $f8, $f0
/* 05E49C 8005D89C 00000000 */  nop   
/* 05E4A0 8005D8A0 45000002 */  bc1f  .L8005D8AC
/* 05E4A4 8005D8A4 00000000 */   nop   
/* 05E4A8 8005D8A8 AF000000 */  sw    $zero, ($t8)
.L8005D8AC:
/* 05E4AC 8005D8AC 821901D8 */  lb    $t9, 0x1d8($s0)
/* 05E4B0 8005D8B0 24010001 */  li    $at, 1
/* 05E4B4 8005D8B4 1721000D */  bne   $t9, $at, .L8005D8EC
/* 05E4B8 8005D8B8 8FA80078 */   lw    $t0, 0x78($sp)
/* 05E4BC 8005D8BC 0C008D5A */  jal   func_80023568
/* 05E4C0 8005D8C0 A7AA005C */   sh    $t2, 0x5c($sp)
/* 05E4C4 8005D8C4 87AA005C */  lh    $t2, 0x5c($sp)
/* 05E4C8 8005D8C8 10400007 */  beqz  $v0, .L8005D8E8
/* 05E4CC 8005D8CC 24040082 */   li    $a0, 130
/* 05E4D0 8005D8D0 0C008500 */  jal   func_80021400
/* 05E4D4 8005D8D4 A7AA005C */   sh    $t2, 0x5c($sp)
/* 05E4D8 8005D8D8 820B01D8 */  lb    $t3, 0x1d8($s0)
/* 05E4DC 8005D8DC 87AA005C */  lh    $t2, 0x5c($sp)
/* 05E4E0 8005D8E0 256C0001 */  addiu $t4, $t3, 1
/* 05E4E4 8005D8E4 A20C01D8 */  sb    $t4, 0x1d8($s0)
.L8005D8E8:
/* 05E4E8 8005D8E8 8FA80078 */  lw    $t0, 0x78($sp)
.L8005D8EC:
/* 05E4EC 8005D8EC 24040064 */  li    $a0, 100
/* 05E4F0 8005D8F0 8D030000 */  lw    $v1, ($t0)
/* 05E4F4 8005D8F4 00000000 */  nop   
/* 05E4F8 8005D8F8 14640002 */  bne   $v1, $a0, .L8005D904
/* 05E4FC 8005D8FC 3C018012 */   lui   $at, %hi(D_8011D5E0) # $at, 0x8012
/* 05E500 8005D900 A020D5E0 */  sb    $zero, %lo(D_8011D5E0)($at)
.L8005D904:
/* 05E504 8005D904 860D0000 */  lh    $t5, ($s0)
/* 05E508 8005D908 2409FFFF */  li    $t1, -1
/* 05E50C 8005D90C 152D0021 */  bne   $t1, $t5, .L8005D994
/* 05E510 8005D910 240E0007 */   li    $t6, 7
/* 05E514 8005D914 8D020000 */  lw    $v0, ($t0)
/* 05E518 8005D918 00000000 */  nop   
/* 05E51C 8005D91C 1082001C */  beq   $a0, $v0, .L8005D990
/* 05E520 8005D920 244EFFC4 */   addiu $t6, $v0, -0x3c
/* 05E524 8005D924 05C10018 */  bgez  $t6, .L8005D988
/* 05E528 8005D928 AD0E0000 */   sw    $t6, ($t0)
/* 05E52C 8005D92C 3C188012 */  lui   $t8, %hi(D_8011D5E1) # $t8, 0x8012
/* 05E530 8005D930 8318D5E1 */  lb    $t8, %lo(D_8011D5E1)($t8)
/* 05E534 8005D934 00002025 */  move  $a0, $zero
/* 05E538 8005D938 1700000A */  bnez  $t8, .L8005D964
/* 05E53C 8005D93C 8FA20070 */   lw    $v0, 0x70($sp)
/* 05E540 8005D940 AFA30044 */  sw    $v1, 0x44($sp)
/* 05E544 8005D944 0C0172C1 */  jal   func_8005CB04
/* 05E548 8005D948 A7AA005C */   sh    $t2, 0x5c($sp)
/* 05E54C 8005D94C 8FA30044 */  lw    $v1, 0x44($sp)
/* 05E550 8005D950 8FA80078 */  lw    $t0, 0x78($sp)
/* 05E554 8005D954 87AA005C */  lh    $t2, 0x5c($sp)
/* 05E558 8005D958 2419000A */  li    $t9, 10
/* 05E55C 8005D95C A21901D3 */  sb    $t9, 0x1d3($s0)
/* 05E560 8005D960 8FA20070 */  lw    $v0, 0x70($sp)
.L8005D964:
/* 05E564 8005D964 240B0001 */  li    $t3, 1
/* 05E568 8005D968 3C018012 */  lui   $at, %hi(D_8011D5E1) # $at, 0x8012
/* 05E56C 8005D96C A02BD5E1 */  sb    $t3, %lo(D_8011D5E1)($at)
/* 05E570 8005D970 AD000000 */  sw    $zero, ($t0)
/* 05E574 8005D974 8C4C0000 */  lw    $t4, ($v0)
/* 05E578 8005D978 00000000 */  nop   
/* 05E57C 8005D97C 358D8000 */  ori   $t5, $t4, 0x8000
/* 05E580 8005D980 10000003 */  b     .L8005D990
/* 05E584 8005D984 AC4D0000 */   sw    $t5, ($v0)
.L8005D988:
/* 05E588 8005D988 3C018012 */  lui   $at, %hi(D_8011D5E1) # $at, 0x8012
/* 05E58C 8005D98C A020D5E1 */  sb    $zero, %lo(D_8011D5E1)($at)
.L8005D990:
/* 05E590 8005D990 240E0007 */  li    $t6, 7
.L8005D994:
/* 05E594 8005D994 A20E01D6 */  sb    $t6, 0x1d6($s0)
/* 05E598 8005D998 8FA50064 */  lw    $a1, 0x64($sp)
/* 05E59C 8005D99C 8FA40060 */  lw    $a0, 0x60($sp)
/* 05E5A0 8005D9A0 A7AA005C */  sh    $t2, 0x5c($sp)
/* 05E5A4 8005D9A4 AFA30044 */  sw    $v1, 0x44($sp)
/* 05E5A8 8005D9A8 02203025 */  move  $a2, $s1
/* 05E5AC 8005D9AC 0C0125E5 */  jal   func_80049794
/* 05E5B0 8005D9B0 02003825 */   move  $a3, $s0
/* 05E5B4 8005D9B4 8FA30044 */  lw    $v1, 0x44($sp)
/* 05E5B8 8005D9B8 8FA80078 */  lw    $t0, 0x78($sp)
/* 05E5BC 8005D9BC 820F01D7 */  lb    $t7, 0x1d7($s0)
/* 05E5C0 8005D9C0 87AA005C */  lh    $t2, 0x5c($sp)
/* 05E5C4 8005D9C4 A20F01D6 */  sb    $t7, 0x1d6($s0)
/* 05E5C8 8005D9C8 AD030000 */  sw    $v1, ($t0)
/* 05E5CC 8005D9CC AE200074 */  sw    $zero, 0x74($s1)
/* 05E5D0 8005D9D0 87B8005A */  lh    $t8, 0x5a($sp)
/* 05E5D4 8005D9D4 2409FFFF */  li    $t1, -1
/* 05E5D8 8005D9D8 A618016A */  sh    $t8, 0x16a($s0)
/* 05E5DC 8005D9DC 87B9005E */  lh    $t9, 0x5e($sp)
/* 05E5E0 8005D9E0 A62A0018 */  sh    $t2, 0x18($s1)
/* 05E5E4 8005D9E4 A239003B */  sb    $t9, 0x3b($s1)
/* 05E5E8 8005D9E8 820B0187 */  lb    $t3, 0x187($s0)
/* 05E5EC 8005D9EC 00000000 */  nop   
/* 05E5F0 8005D9F0 11600028 */  beqz  $t3, .L8005DA94
/* 05E5F4 8005D9F4 00000000 */   nop   
/* 05E5F8 8005D9F8 822C003B */  lb    $t4, 0x3b($s1)
/* 05E5FC 8005D9FC 24010005 */  li    $at, 5
/* 05E600 8005DA00 11810024 */  beq   $t4, $at, .L8005DA94
/* 05E604 8005DA04 00000000 */   nop   
/* 05E608 8005DA08 0C0172C1 */  jal   func_8005CB04
/* 05E60C 8005DA0C 24040001 */   li    $a0, 1
/* 05E610 8005DA10 24040011 */  li    $a0, 17
/* 05E614 8005DA14 0C000741 */  jal   func_80001D04
/* 05E618 8005DA18 00002825 */   move  $a1, $zero
/* 05E61C 8005DA1C 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 05E620 8005DA20 44816000 */  mtc1  $at, $f12
/* 05E624 8005DA24 0C01A7CA */  jal   func_80069F28
/* 05E628 8005DA28 00000000 */   nop   
/* 05E62C 8005DA2C 3C01800E */  lui   $at, %hi(D_800E6A60 + 4) # $at, 0x800e
/* 05E630 8005DA30 C62A001C */  lwc1  $f10, 0x1c($s1)
/* 05E634 8005DA34 C4216A60 */  lwc1  $f1, %lo(D_800E6A60)($at)
/* 05E638 8005DA38 C4206A64 */  lwc1  $f0, %lo(D_800E6A60 + 4)($at)
/* 05E63C 8005DA3C 460054A1 */  cvt.d.s $f18, $f10
/* 05E640 8005DA40 46209102 */  mul.d $f4, $f18, $f0
/* 05E644 8005DA44 C6280024 */  lwc1  $f8, 0x24($s1)
/* 05E648 8005DA48 44808000 */  mtc1  $zero, $f16
/* 05E64C 8005DA4C 460042A1 */  cvt.d.s $f10, $f8
/* 05E650 8005DA50 240D0005 */  li    $t5, 5
/* 05E654 8005DA54 46205482 */  mul.d $f18, $f10, $f0
/* 05E658 8005DA58 462021A0 */  cvt.s.d $f6, $f4
/* 05E65C 8005DA5C A22D003B */  sb    $t5, 0x3b($s1)
/* 05E660 8005DA60 E626001C */  swc1  $f6, 0x1c($s1)
/* 05E664 8005DA64 3C014010 */  li    $at, 0x40100000 # 2.250000
/* 05E668 8005DA68 46209120 */  cvt.s.d $f4, $f18
/* 05E66C 8005DA6C 44815800 */  mtc1  $at, $f11
/* 05E670 8005DA70 E6240024 */  swc1  $f4, 0x24($s1)
/* 05E674 8005DA74 E610000C */  swc1  $f16, 0xc($s0)
/* 05E678 8005DA78 C6260020 */  lwc1  $f6, 0x20($s1)
/* 05E67C 8005DA7C 44805000 */  mtc1  $zero, $f10
/* 05E680 8005DA80 46003221 */  cvt.d.s $f8, $f6
/* 05E684 8005DA84 462A4480 */  add.d $f18, $f8, $f10
/* 05E688 8005DA88 2409FFFF */  li    $t1, -1
/* 05E68C 8005DA8C 46209120 */  cvt.s.d $f4, $f18
/* 05E690 8005DA90 E6240020 */  swc1  $f4, 0x20($s1)
.L8005DA94:
/* 05E694 8005DA94 8E0E0148 */  lw    $t6, 0x148($s0)
/* 05E698 8005DA98 44808000 */  mtc1  $zero, $f16
/* 05E69C 8005DA9C 11C0001A */  beqz  $t6, .L8005DB08
/* 05E6A0 8005DAA0 A2000187 */   sb    $zero, 0x187($s0)
/* 05E6A4 8005DAA4 C620001C */  lwc1  $f0, 0x1c($s1)
/* 05E6A8 8005DAA8 C6220024 */  lwc1  $f2, 0x24($s1)
/* 05E6AC 8005DAAC 46000502 */  mul.s $f20, $f0, $f0
/* 05E6B0 8005DAB0 00000000 */  nop   
/* 05E6B4 8005DAB4 46021382 */  mul.s $f14, $f2, $f2
/* 05E6B8 8005DAB8 00000000 */  nop   
/* 05E6BC 8005DABC 4614A182 */  mul.s $f6, $f20, $f20
/* 05E6C0 8005DAC0 00000000 */  nop   
/* 05E6C4 8005DAC4 460E7202 */  mul.s $f8, $f14, $f14
/* 05E6C8 8005DAC8 0C0326B4 */  jal   sqrtf
/* 05E6CC 8005DACC 46083300 */   add.s $f12, $f6, $f8
/* 05E6D0 8005DAD0 3C01BFE0 */  li    $at, 0xBFE00000 # -1.750000
/* 05E6D4 8005DAD4 44815800 */  mtc1  $at, $f11
/* 05E6D8 8005DAD8 44805000 */  mtc1  $zero, $f10
/* 05E6DC 8005DADC 46000087 */  neg.s $f2, $f0
/* 05E6E0 8005DAE0 460014A1 */  cvt.d.s $f18, $f2
/* 05E6E4 8005DAE4 4632503C */  c.lt.d $f10, $f18
/* 05E6E8 8005DAE8 44808000 */  mtc1  $zero, $f16
/* 05E6EC 8005DAEC E602002C */  swc1  $f2, 0x2c($s0)
/* 05E6F0 8005DAF0 45000005 */  bc1f  .L8005DB08
/* 05E6F4 8005DAF4 2409FFFF */   li    $t1, -1
/* 05E6F8 8005DAF8 E610002C */  swc1  $f16, 0x2c($s0)
/* 05E6FC 8005DAFC E630001C */  swc1  $f16, 0x1c($s1)
/* 05E700 8005DB00 E6300020 */  swc1  $f16, 0x20($s1)
/* 05E704 8005DB04 E6300024 */  swc1  $f16, 0x24($s1)
.L8005DB08:
/* 05E708 8005DB08 8E2F0068 */  lw    $t7, 0x68($s1)
/* 05E70C 8005DB0C 8223003B */  lb    $v1, 0x3b($s1)
/* 05E710 8005DB10 8DE20000 */  lw    $v0, ($t7)
/* 05E714 8005DB14 0003C8C0 */  sll   $t9, $v1, 3
/* 05E718 8005DB18 8C450000 */  lw    $a1, ($v0)
/* 05E71C 8005DB1C C7AC0064 */  lwc1  $f12, 0x64($sp)
/* 05E720 8005DB20 8CB80044 */  lw    $t8, 0x44($a1)
/* 05E724 8005DB24 C606002C */  lwc1  $f6, 0x2c($s0)
/* 05E728 8005DB28 03195821 */  addu  $t3, $t8, $t9
/* 05E72C 8005DB2C 8D6C0004 */  lw    $t4, 4($t3)
/* 05E730 8005DB30 460C3202 */  mul.s $f8, $f6, $f12
/* 05E734 8005DB34 000C6900 */  sll   $t5, $t4, 4
/* 05E738 8005DB38 25AEFFEF */  addiu $t6, $t5, -0x11
/* 05E73C 8005DB3C 3C01800E */  lui   $at, %hi(D_800E6A68 + 4) # $at, 0x800e
/* 05E740 8005DB40 448E2000 */  mtc1  $t6, $f4
/* 05E744 8005DB44 C4336A68 */  lwc1  $f19, %lo(D_800E6A68)($at)
/* 05E748 8005DB48 C4326A6C */  lwc1  $f18, %lo(D_800E6A68 + 4)($at)
/* 05E74C 8005DB4C 460042A1 */  cvt.d.s $f10, $f8
/* 05E750 8005DB50 46802520 */  cvt.s.w $f20, $f4
/* 05E754 8005DB54 44803000 */  mtc1  $zero, $f6
/* 05E758 8005DB58 44803800 */  mtc1  $zero, $f7
/* 05E75C 8005DB5C 46325102 */  mul.d $f4, $f10, $f18
/* 05E760 8005DB60 462020A0 */  cvt.s.d $f2, $f4
/* 05E764 8005DB64 46001021 */  cvt.d.s $f0, $f2
/* 05E768 8005DB68 4626003E */  c.le.d $f0, $f6
/* 05E76C 8005DB6C 00000000 */  nop   
/* 05E770 8005DB70 4500000B */  bc1f  .L8005DBA0
/* 05E774 8005DB74 3C01C000 */   li    $at, 0xC0000000 # -2.000000
/* 05E778 8005DB78 44814800 */  mtc1  $at, $f9
/* 05E77C 8005DB7C 44804000 */  mtc1  $zero, $f8
/* 05E780 8005DB80 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 05E784 8005DB84 4620403C */  c.lt.d $f8, $f0
/* 05E788 8005DB88 00000000 */  nop   
/* 05E78C 8005DB8C 4500000E */  bc1f  .L8005DBC8
/* 05E790 8005DB90 00000000 */   nop   
/* 05E794 8005DB94 44811000 */  mtc1  $at, $f2
/* 05E798 8005DB98 1000000C */  b     .L8005DBCC
/* 05E79C 8005DB9C 2C610006 */   sltiu $at, $v1, 6
.L8005DBA0:
/* 05E7A0 8005DBA0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 05E7A4 8005DBA4 44815800 */  mtc1  $at, $f11
/* 05E7A8 8005DBA8 44805000 */  mtc1  $zero, $f10
/* 05E7AC 8005DBAC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 05E7B0 8005DBB0 462A003C */  c.lt.d $f0, $f10
/* 05E7B4 8005DBB4 00000000 */  nop   
/* 05E7B8 8005DBB8 45000003 */  bc1f  .L8005DBC8
/* 05E7BC 8005DBBC 00000000 */   nop   
/* 05E7C0 8005DBC0 44811000 */  mtc1  $at, $f2
/* 05E7C4 8005DBC4 00000000 */  nop   
.L8005DBC8:
/* 05E7C8 8005DBC8 2C610006 */  sltiu $at, $v1, 6
.L8005DBCC:
/* 05E7CC 8005DBCC 1020004F */  beqz  $at, .L8005DD0C
/* 05E7D0 8005DBD0 00037880 */   sll   $t7, $v1, 2
/* 05E7D4 8005DBD4 3C01800E */  lui   $at, %hi(jpt_800E6A70) # $at, 0x800e
/* 05E7D8 8005DBD8 002F0821 */  addu  $at, $at, $t7
/* 05E7DC 8005DBDC 8C2F6A70 */  lw    $t7, %lo(jpt_800E6A70)($at)
/* 05E7E0 8005DBE0 00000000 */  nop   
/* 05E7E4 8005DBE4 01E00008 */  jr    $t7
/* 05E7E8 8005DBE8 00000000 */   nop   
glabel L8005DBEC
/* 05E7EC 8005DBEC C612000C */  lwc1  $f18, 0xc($s0)
/* 05E7F0 8005DBF0 460061A1 */  cvt.d.s $f6, $f12
/* 05E7F4 8005DBF4 46009121 */  cvt.d.s $f4, $f18
/* 05E7F8 8005DBF8 46262200 */  add.d $f8, $f4, $f6
/* 05E7FC 8005DBFC A20001CD */  sb    $zero, 0x1cd($s0)
/* 05E800 8005DC00 462042A0 */  cvt.s.d $f10, $f8
/* 05E804 8005DC04 24040002 */  li    $a0, 2
/* 05E808 8005DC08 10000041 */  b     .L8005DD10
/* 05E80C 8005DC0C E60A000C */   swc1  $f10, 0xc($s0)
glabel L8005DC10
/* 05E810 8005DC10 921801CD */  lbu   $t8, 0x1cd($s0)
/* 05E814 8005DC14 24040002 */  li    $a0, 2
/* 05E818 8005DC18 14980006 */  bne   $a0, $t8, .L8005DC34
/* 05E81C 8005DC1C 00000000 */   nop   
/* 05E820 8005DC20 C612000C */  lwc1  $f18, 0xc($s0)
/* 05E824 8005DC24 00000000 */  nop   
/* 05E828 8005DC28 46029100 */  add.s $f4, $f18, $f2
/* 05E82C 8005DC2C 10000038 */  b     .L8005DD10
/* 05E830 8005DC30 E604000C */   swc1  $f4, 0xc($s0)
.L8005DC34:
/* 05E834 8005DC34 C606000C */  lwc1  $f6, 0xc($s0)
/* 05E838 8005DC38 00000000 */  nop   
/* 05E83C 8005DC3C 46023201 */  sub.s $f8, $f6, $f2
/* 05E840 8005DC40 10000033 */  b     .L8005DD10
/* 05E844 8005DC44 E608000C */   swc1  $f8, 0xc($s0)
glabel L8005DC48
/* 05E848 8005DC48 C60A000C */  lwc1  $f10, 0xc($s0)
/* 05E84C 8005DC4C 24190002 */  li    $t9, 2
/* 05E850 8005DC50 46025481 */  sub.s $f18, $f10, $f2
/* 05E854 8005DC54 A21901CD */  sb    $t9, 0x1cd($s0)
/* 05E858 8005DC58 E612000C */  swc1  $f18, 0xc($s0)
/* 05E85C 8005DC5C 1000002C */  b     .L8005DD10
/* 05E860 8005DC60 24040002 */   li    $a0, 2
glabel L8005DC64
/* 05E864 8005DC64 920B01CD */  lbu   $t3, 0x1cd($s0)
/* 05E868 8005DC68 24010004 */  li    $at, 4
/* 05E86C 8005DC6C 1561000A */  bne   $t3, $at, .L8005DC98
/* 05E870 8005DC70 00000000 */   nop   
/* 05E874 8005DC74 C604000C */  lwc1  $f4, 0xc($s0)
/* 05E878 8005DC78 46006021 */  cvt.d.s $f0, $f12
/* 05E87C 8005DC7C 46200200 */  add.d $f8, $f0, $f0
/* 05E880 8005DC80 24040002 */  li    $a0, 2
/* 05E884 8005DC84 460021A1 */  cvt.d.s $f6, $f4
/* 05E888 8005DC88 46283281 */  sub.d $f10, $f6, $f8
/* 05E88C 8005DC8C 462054A0 */  cvt.s.d $f18, $f10
/* 05E890 8005DC90 1000001F */  b     .L8005DD10
/* 05E894 8005DC94 E612000C */   swc1  $f18, 0xc($s0)
.L8005DC98:
/* 05E898 8005DC98 C604000C */  lwc1  $f4, 0xc($s0)
/* 05E89C 8005DC9C 46006021 */  cvt.d.s $f0, $f12
/* 05E8A0 8005DCA0 46200200 */  add.d $f8, $f0, $f0
/* 05E8A4 8005DCA4 460021A1 */  cvt.d.s $f6, $f4
/* 05E8A8 8005DCA8 46283280 */  add.d $f10, $f6, $f8
/* 05E8AC 8005DCAC 462054A0 */  cvt.s.d $f18, $f10
/* 05E8B0 8005DCB0 E612000C */  swc1  $f18, 0xc($s0)
/* 05E8B4 8005DCB4 10000016 */  b     .L8005DD10
/* 05E8B8 8005DCB8 24040002 */   li    $a0, 2
glabel L8005DCBC
/* 05E8BC 8005DCBC C604000C */  lwc1  $f4, 0xc($s0)
/* 05E8C0 8005DCC0 46006021 */  cvt.d.s $f0, $f12
/* 05E8C4 8005DCC4 46200200 */  add.d $f8, $f0, $f0
/* 05E8C8 8005DCC8 240C0004 */  li    $t4, 4
/* 05E8CC 8005DCCC 460021A1 */  cvt.d.s $f6, $f4
/* 05E8D0 8005DCD0 46283280 */  add.d $f10, $f6, $f8
/* 05E8D4 8005DCD4 A20C01CD */  sb    $t4, 0x1cd($s0)
/* 05E8D8 8005DCD8 462054A0 */  cvt.s.d $f18, $f10
/* 05E8DC 8005DCDC 24040002 */  li    $a0, 2
/* 05E8E0 8005DCE0 1000000B */  b     .L8005DD10
/* 05E8E4 8005DCE4 E612000C */   swc1  $f18, 0xc($s0)
glabel L8005DCE8
/* 05E8E8 8005DCE8 C604000C */  lwc1  $f4, 0xc($s0)
/* 05E8EC 8005DCEC 46006021 */  cvt.d.s $f0, $f12
/* 05E8F0 8005DCF0 46200200 */  add.d $f8, $f0, $f0
/* 05E8F4 8005DCF4 24040002 */  li    $a0, 2
/* 05E8F8 8005DCF8 460021A1 */  cvt.d.s $f6, $f4
/* 05E8FC 8005DCFC 46283280 */  add.d $f10, $f6, $f8
/* 05E900 8005DD00 462054A0 */  cvt.s.d $f18, $f10
/* 05E904 8005DD04 10000002 */  b     .L8005DD10
/* 05E908 8005DD08 E612000C */   swc1  $f18, 0xc($s0)
.L8005DD0C:
/* 05E90C 8005DD0C 24040002 */  li    $a0, 2
.L8005DD10:
/* 05E910 8005DD10 C600000C */  lwc1  $f0, 0xc($s0)
/* 05E914 8005DD14 00000000 */  nop   
/* 05E918 8005DD18 4600A03E */  c.le.s $f20, $f0
/* 05E91C 8005DD1C 00000000 */  nop   
/* 05E920 8005DD20 4500000A */  bc1f  .L8005DD4C
/* 05E924 8005DD24 00000000 */   nop   
.L8005DD28:
/* 05E928 8005DD28 46140101 */  sub.s $f4, $f0, $f20
/* 05E92C 8005DD2C E604000C */  swc1  $f4, 0xc($s0)
/* 05E930 8005DD30 A4490010 */  sh    $t1, 0x10($v0)
/* 05E934 8005DD34 C600000C */  lwc1  $f0, 0xc($s0)
/* 05E938 8005DD38 00000000 */  nop   
/* 05E93C 8005DD3C 4600A03E */  c.le.s $f20, $f0
/* 05E940 8005DD40 00000000 */  nop   
/* 05E944 8005DD44 4501FFF8 */  bc1t  .L8005DD28
/* 05E948 8005DD48 00000000 */   nop   
.L8005DD4C:
/* 05E94C 8005DD4C 4610003E */  c.le.s $f0, $f16
/* 05E950 8005DD50 00000000 */  nop   
/* 05E954 8005DD54 4500000A */  bc1f  .L8005DD80
/* 05E958 8005DD58 00000000 */   nop   
.L8005DD5C:
/* 05E95C 8005DD5C 46140180 */  add.s $f6, $f0, $f20
/* 05E960 8005DD60 E606000C */  swc1  $f6, 0xc($s0)
/* 05E964 8005DD64 A4490010 */  sh    $t1, 0x10($v0)
/* 05E968 8005DD68 C600000C */  lwc1  $f0, 0xc($s0)
/* 05E96C 8005DD6C 00000000 */  nop   
/* 05E970 8005DD70 4610003E */  c.le.s $f0, $f16
/* 05E974 8005DD74 00000000 */  nop   
/* 05E978 8005DD78 4501FFF8 */  bc1t  .L8005DD5C
/* 05E97C 8005DD7C 00000000 */   nop   
.L8005DD80:
/* 05E980 8005DD80 8223003B */  lb    $v1, 0x3b($s1)
/* 05E984 8005DD84 00000000 */  nop   
/* 05E988 8005DD88 14830011 */  bne   $a0, $v1, .L8005DDD0
/* 05E98C 8005DD8C 00000000 */   nop   
/* 05E990 8005DD90 820D01E2 */  lb    $t5, 0x1e2($s0)
/* 05E994 8005DD94 3C01C01A */  li    $at, 0xC01A0000 # -2.406250
/* 05E998 8005DD98 15A0000D */  bnez  $t5, .L8005DDD0
/* 05E99C 8005DD9C 00000000 */   nop   
/* 05E9A0 8005DDA0 C608002C */  lwc1  $f8, 0x2c($s0)
/* 05E9A4 8005DDA4 44819800 */  mtc1  $at, $f19
/* 05E9A8 8005DDA8 44809000 */  mtc1  $zero, $f18
/* 05E9AC 8005DDAC 460042A1 */  cvt.d.s $f10, $f8
/* 05E9B0 8005DDB0 4632503C */  c.lt.d $f10, $f18
/* 05E9B4 8005DDB4 24060003 */  li    $a2, 3
/* 05E9B8 8005DDB8 45000005 */  bc1f  .L8005DDD0
/* 05E9BC 8005DDBC 00000000 */   nop   
/* 05E9C0 8005DDC0 A226003B */  sb    $a2, 0x3b($s1)
/* 05E9C4 8005DDC4 E610000C */  swc1  $f16, 0xc($s0)
/* 05E9C8 8005DDC8 8223003B */  lb    $v1, 0x3b($s1)
/* 05E9CC 8005DDCC 00000000 */  nop   
.L8005DDD0:
/* 05E9D0 8005DDD0 844E0010 */  lh    $t6, 0x10($v0)
/* 05E9D4 8005DDD4 24060003 */  li    $a2, 3
/* 05E9D8 8005DDD8 112E0003 */  beq   $t1, $t6, .L8005DDE8
/* 05E9DC 8005DDDC 24010005 */   li    $at, 5
/* 05E9E0 8005DDE0 1460006A */  bnez  $v1, .L8005DF8C
/* 05E9E4 8005DDE4 24010005 */   li    $at, 5
.L8005DDE8:
/* 05E9E8 8005DDE8 14610009 */  bne   $v1, $at, .L8005DE10
/* 05E9EC 8005DDEC 24010001 */   li    $at, 1
/* 05E9F0 8005DDF0 920F01CD */  lbu   $t7, 0x1cd($s0)
/* 05E9F4 8005DDF4 00000000 */  nop   
/* 05E9F8 8005DDF8 A22F003B */  sb    $t7, 0x3b($s1)
/* 05E9FC 8005DDFC E610000C */  swc1  $f16, 0xc($s0)
/* 05EA00 8005DE00 8223003B */  lb    $v1, 0x3b($s1)
/* 05EA04 8005DE04 10000062 */  b     .L8005DF90
/* 05EA08 8005DE08 4458F800 */   cfc1  $t8, $31
/* 05EA0C 8005DE0C 24010001 */  li    $at, 1
.L8005DE10:
/* 05EA10 8005DE10 1461000B */  bne   $v1, $at, .L8005DE40
/* 05EA14 8005DE14 00000000 */   nop   
/* 05EA18 8005DE18 921801CD */  lbu   $t8, 0x1cd($s0)
/* 05EA1C 8005DE1C 00000000 */  nop   
/* 05EA20 8005DE20 17000003 */  bnez  $t8, .L8005DE30
/* 05EA24 8005DE24 00000000 */   nop   
/* 05EA28 8005DE28 10000002 */  b     .L8005DE34
/* 05EA2C 8005DE2C A224003B */   sb    $a0, 0x3b($s1)
.L8005DE30:
/* 05EA30 8005DE30 A220003B */  sb    $zero, 0x3b($s1)
.L8005DE34:
/* 05EA34 8005DE34 8223003B */  lb    $v1, 0x3b($s1)
/* 05EA38 8005DE38 10000055 */  b     .L8005DF90
/* 05EA3C 8005DE3C 4458F800 */   cfc1  $t8, $31
.L8005DE40:
/* 05EA40 8005DE40 14C3000B */  bne   $a2, $v1, .L8005DE70
/* 05EA44 8005DE44 3C01800E */   lui   $at, %hi(D_800E6A88 + 4) # $at, 0x800e
/* 05EA48 8005DE48 921901CD */  lbu   $t9, 0x1cd($s0)
/* 05EA4C 8005DE4C 24010004 */  li    $at, 4
/* 05EA50 8005DE50 17210003 */  bne   $t9, $at, .L8005DE60
/* 05EA54 8005DE54 240B0004 */   li    $t3, 4
/* 05EA58 8005DE58 10000002 */  b     .L8005DE64
/* 05EA5C 8005DE5C A224003B */   sb    $a0, 0x3b($s1)
.L8005DE60:
/* 05EA60 8005DE60 A22B003B */  sb    $t3, 0x3b($s1)
.L8005DE64:
/* 05EA64 8005DE64 8223003B */  lb    $v1, 0x3b($s1)
/* 05EA68 8005DE68 10000049 */  b     .L8005DF90
/* 05EA6C 8005DE6C 4458F800 */   cfc1  $t8, $31
.L8005DE70:
/* 05EA70 8005DE70 C604002C */  lwc1  $f4, 0x2c($s0)
/* 05EA74 8005DE74 C4276A88 */  lwc1  $f7, %lo(D_800E6A88)($at)
/* 05EA78 8005DE78 C4266A8C */  lwc1  $f6, %lo(D_800E6A88 + 4)($at)
/* 05EA7C 8005DE7C 46002021 */  cvt.d.s $f0, $f4
/* 05EA80 8005DE80 4620303C */  c.lt.d $f6, $f0
/* 05EA84 8005DE84 3C01800E */  lui   $at, %hi(D_800E6A90 + 4) # $at, 0x800e
/* 05EA88 8005DE88 4500001C */  bc1f  .L8005DEFC
/* 05EA8C 8005DE8C 00000000 */   nop   
/* 05EA90 8005DE90 C4296A90 */  lwc1  $f9, %lo(D_800E6A90)($at)
/* 05EA94 8005DE94 C4286A94 */  lwc1  $f8, %lo(D_800E6A90 + 4)($at)
/* 05EA98 8005DE98 00000000 */  nop   
/* 05EA9C 8005DE9C 4628003C */  c.lt.d $f0, $f8
/* 05EAA0 8005DEA0 00000000 */  nop   
/* 05EAA4 8005DEA4 45000015 */  bc1f  .L8005DEFC
/* 05EAA8 8005DEA8 00000000 */   nop   
/* 05EAAC 8005DEAC 1483000F */  bne   $a0, $v1, .L8005DEEC
/* 05EAB0 8005DEB0 240C0001 */   li    $t4, 1
/* 05EAB4 8005DEB4 A22C003B */  sb    $t4, 0x3b($s1)
/* 05EAB8 8005DEB8 822E003B */  lb    $t6, 0x3b($s1)
/* 05EABC 8005DEBC 8CAD0044 */  lw    $t5, 0x44($a1)
/* 05EAC0 8005DEC0 000E78C0 */  sll   $t7, $t6, 3
/* 05EAC4 8005DEC4 01AFC021 */  addu  $t8, $t5, $t7
/* 05EAC8 8005DEC8 8F190004 */  lw    $t9, 4($t8)
/* 05EACC 8005DECC 00000000 */  nop   
/* 05EAD0 8005DED0 00195900 */  sll   $t3, $t9, 4
/* 05EAD4 8005DED4 256CFFEF */  addiu $t4, $t3, -0x11
/* 05EAD8 8005DED8 448C5000 */  mtc1  $t4, $f10
/* 05EADC 8005DEDC 00000000 */  nop   
/* 05EAE0 8005DEE0 468054A0 */  cvt.s.w $f18, $f10
/* 05EAE4 8005DEE4 10000002 */  b     .L8005DEF0
/* 05EAE8 8005DEE8 E612000C */   swc1  $f18, 0xc($s0)
.L8005DEEC:
/* 05EAEC 8005DEEC A220003B */  sb    $zero, 0x3b($s1)
.L8005DEF0:
/* 05EAF0 8005DEF0 8223003B */  lb    $v1, 0x3b($s1)
/* 05EAF4 8005DEF4 10000026 */  b     .L8005DF90
/* 05EAF8 8005DEF8 4458F800 */   cfc1  $t8, $31
.L8005DEFC:
/* 05EAFC 8005DEFC 14600006 */  bnez  $v1, .L8005DF18
/* 05EB00 8005DF00 24010004 */   li    $at, 4
/* 05EB04 8005DF04 240E0001 */  li    $t6, 1
/* 05EB08 8005DF08 A22E003B */  sb    $t6, 0x3b($s1)
/* 05EB0C 8005DF0C E610000C */  swc1  $f16, 0xc($s0)
/* 05EB10 8005DF10 8223003B */  lb    $v1, 0x3b($s1)
/* 05EB14 8005DF14 00000000 */  nop   
.L8005DF18:
/* 05EB18 8005DF18 1461001C */  bne   $v1, $at, .L8005DF8C
/* 05EB1C 8005DF1C 00000000 */   nop   
/* 05EB20 8005DF20 820D01E2 */  lb    $t5, 0x1e2($s0)
/* 05EB24 8005DF24 3C01C018 */  li    $at, 0xC0180000 # -2.375000
/* 05EB28 8005DF28 11A00018 */  beqz  $t5, .L8005DF8C
/* 05EB2C 8005DF2C 00000000 */   nop   
/* 05EB30 8005DF30 C606002C */  lwc1  $f6, 0x2c($s0)
/* 05EB34 8005DF34 44812800 */  mtc1  $at, $f5
/* 05EB38 8005DF38 44802000 */  mtc1  $zero, $f4
/* 05EB3C 8005DF3C 46003221 */  cvt.d.s $f8, $f6
/* 05EB40 8005DF40 4628203C */  c.lt.d $f4, $f8
/* 05EB44 8005DF44 00000000 */  nop   
/* 05EB48 8005DF48 45000010 */  bc1f  .L8005DF8C
/* 05EB4C 8005DF4C 00000000 */   nop   
/* 05EB50 8005DF50 A226003B */  sb    $a2, 0x3b($s1)
/* 05EB54 8005DF54 8238003B */  lb    $t8, 0x3b($s1)
/* 05EB58 8005DF58 8CAF0044 */  lw    $t7, 0x44($a1)
/* 05EB5C 8005DF5C 0018C8C0 */  sll   $t9, $t8, 3
/* 05EB60 8005DF60 01F95821 */  addu  $t3, $t7, $t9
/* 05EB64 8005DF64 8D6C0004 */  lw    $t4, 4($t3)
/* 05EB68 8005DF68 00000000 */  nop   
/* 05EB6C 8005DF6C 000C7100 */  sll   $t6, $t4, 4
/* 05EB70 8005DF70 25CDFFEF */  addiu $t5, $t6, -0x11
/* 05EB74 8005DF74 448D5000 */  mtc1  $t5, $f10
/* 05EB78 8005DF78 00000000 */  nop   
/* 05EB7C 8005DF7C 468054A0 */  cvt.s.w $f18, $f10
/* 05EB80 8005DF80 E612000C */  swc1  $f18, 0xc($s0)
/* 05EB84 8005DF84 8223003B */  lb    $v1, 0x3b($s1)
/* 05EB88 8005DF88 00000000 */  nop   
.L8005DF8C:
/* 05EB8C 8005DF8C 4458F800 */  cfc1  $t8, $31
.L8005DF90:
/* 05EB90 8005DF90 C606000C */  lwc1  $f6, 0xc($s0)
/* 05EB94 8005DF94 37010003 */  ori   $at, $t8, 3
/* 05EB98 8005DF98 38210002 */  xori  $at, $at, 2
/* 05EB9C 8005DF9C 44C1F800 */  ctc1  $at, $31
/* 05EBA0 8005DFA0 862A0018 */  lh    $t2, 0x18($s1)
/* 05EBA4 8005DFA4 46003124 */  cvt.w.s $f4, $f6
/* 05EBA8 8005DFA8 24010001 */  li    $at, 1
/* 05EBAC 8005DFAC 440F2000 */  mfc1  $t7, $f4
/* 05EBB0 8005DFB0 44D8F800 */  ctc1  $t8, $31
/* 05EBB4 8005DFB4 AE200074 */  sw    $zero, 0x74($s1)
/* 05EBB8 8005DFB8 10610017 */  beq   $v1, $at, .L8005E018
/* 05EBBC 8005DFBC A62F0018 */   sh    $t7, 0x18($s1)
/* 05EBC0 8005DFC0 10830015 */  beq   $a0, $v1, .L8005E018
/* 05EBC4 8005DFC4 000AC903 */   sra   $t9, $t2, 4
/* 05EBC8 8005DFC8 00195C00 */  sll   $t3, $t9, 0x10
/* 05EBCC 8005DFCC 000B5403 */  sra   $t2, $t3, 0x10
/* 05EBD0 8005DFD0 14600002 */  bnez  $v1, .L8005DFDC
/* 05EBD4 8005DFD4 24020001 */   li    $v0, 1
/* 05EBD8 8005DFD8 24020003 */  li    $v0, 3
.L8005DFDC:
/* 05EBDC 8005DFDC 1542000E */  bne   $t2, $v0, .L8005E018
/* 05EBE0 8005DFE0 00000000 */   nop   
/* 05EBE4 8005DFE4 862D0018 */  lh    $t5, 0x18($s1)
/* 05EBE8 8005DFE8 244E0001 */  addiu $t6, $v0, 1
/* 05EBEC 8005DFEC 000DC103 */  sra   $t8, $t5, 4
/* 05EBF0 8005DFF0 15D80009 */  bne   $t6, $t8, .L8005E018
/* 05EBF4 8005DFF4 24040223 */   li    $a0, 547
/* 05EBF8 8005DFF8 8E25000C */  lw    $a1, 0xc($s1)
/* 05EBFC 8005DFFC 8E260010 */  lw    $a2, 0x10($s1)
/* 05EC00 8005E000 8E270014 */  lw    $a3, 0x14($s1)
/* 05EC04 8005E004 240F0004 */  li    $t7, 4
/* 05EC08 8005E008 AFAF0010 */  sw    $t7, 0x10($sp)
/* 05EC0C 8005E00C 0C002556 */  jal   func_80009558
/* 05EC10 8005E010 AFA00014 */   sw    $zero, 0x14($sp)
/* 05EC14 8005E014 2409FFFF */  li    $t1, -1
.L8005E018:
/* 05EC18 8005E018 821901D7 */  lb    $t9, 0x1d7($s0)
/* 05EC1C 8005E01C 24010007 */  li    $at, 7
/* 05EC20 8005E020 17210010 */  bne   $t9, $at, .L8005E064
/* 05EC24 8005E024 8FA50060 */   lw    $a1, 0x60($sp)
/* 05EC28 8005E028 860B0000 */  lh    $t3, ($s0)
/* 05EC2C 8005E02C 00000000 */  nop   
/* 05EC30 8005E030 152B000C */  bne   $t1, $t3, .L8005E064
/* 05EC34 8005E034 8FA50060 */   lw    $a1, 0x60($sp)
/* 05EC38 8005E038 0C008D5A */  jal   func_80023568
/* 05EC3C 8005E03C 00000000 */   nop   
/* 05EC40 8005E040 10400007 */  beqz  $v0, .L8005E060
/* 05EC44 8005E044 02202025 */   move  $a0, $s1
/* 05EC48 8005E048 240C00A5 */  li    $t4, 165
/* 05EC4C 8005E04C AFAC0010 */  sw    $t4, 0x10($sp)
/* 05EC50 8005E050 02002825 */  move  $a1, $s0
/* 05EC54 8005E054 3C0642C8 */  lui   $a2, 0x42c8
/* 05EC58 8005E058 0C017881 */  jal   func_8005E204
/* 05EC5C 8005E05C 24070089 */   li    $a3, 137
.L8005E060:
/* 05EC60 8005E060 8FA50060 */  lw    $a1, 0x60($sp)
.L8005E064:
/* 05EC64 8005E064 0C02BF0F */  jal   func_800AFC3C
/* 05EC68 8005E068 02202025 */   move  $a0, $s1
/* 05EC6C 8005E06C 02202025 */  move  $a0, $s1
/* 05EC70 8005E070 02002825 */  move  $a1, $s0
/* 05EC74 8005E074 0C017412 */  jal   func_8005D048
/* 05EC78 8005E078 24060028 */   li    $a2, 40
/* 05EC7C 8005E07C 0C006EB2 */  jal   get_object_struct
/* 05EC80 8005E080 00002025 */   move  $a0, $zero
/* 05EC84 8005E084 AFA20034 */  sw    $v0, 0x34($sp)
/* 05EC88 8005E088 C62A000C */  lwc1  $f10, 0xc($s1)
/* 05EC8C 8005E08C C448000C */  lwc1  $f8, 0xc($v0)
/* 05EC90 8005E090 C6260014 */  lwc1  $f6, 0x14($s1)
/* 05EC94 8005E094 460A4501 */  sub.s $f20, $f8, $f10
/* 05EC98 8005E098 C4520014 */  lwc1  $f18, 0x14($v0)
/* 05EC9C 8005E09C 4614A102 */  mul.s $f4, $f20, $f20
/* 05ECA0 8005E0A0 46069381 */  sub.s $f14, $f18, $f6
/* 05ECA4 8005E0A4 E7AE0050 */  swc1  $f14, 0x50($sp)
/* 05ECA8 8005E0A8 460E7202 */  mul.s $f8, $f14, $f14
/* 05ECAC 8005E0AC 0C0326B4 */  jal   sqrtf
/* 05ECB0 8005E0B0 46082300 */   add.s $f12, $f4, $f8
/* 05ECB4 8005E0B4 3C01800E */  lui   $at, %hi(D_800E6A98 + 4) # $at, 0x800e
/* 05ECB8 8005E0B8 C4336A98 */  lwc1  $f19, %lo(D_800E6A98)($at)
/* 05ECBC 8005E0BC C4326A9C */  lwc1  $f18, %lo(D_800E6A98 + 4)($at)
/* 05ECC0 8005E0C0 460002A1 */  cvt.d.s $f10, $f0
/* 05ECC4 8005E0C4 4632503C */  c.lt.d $f10, $f18
/* 05ECC8 8005E0C8 C7AE0050 */  lwc1  $f14, 0x50($sp)
/* 05ECCC 8005E0CC 4500001B */  bc1f  .L8005E13C
/* 05ECD0 8005E0D0 00000000 */   nop   
/* 05ECD4 8005E0D4 0C01C1D4 */  jal   func_80070750
/* 05ECD8 8005E0D8 4600A306 */   mov.s $f12, $f20
/* 05ECDC 8005E0DC 862D0000 */  lh    $t5, ($s1)
/* 05ECE0 8005E0E0 34018000 */  li    $at, 32768
/* 05ECE4 8005E0E4 31AEFFFF */  andi  $t6, $t5, 0xffff
/* 05ECE8 8005E0E8 004E1823 */  subu  $v1, $v0, $t6
/* 05ECEC 8005E0EC 00611821 */  addu  $v1, $v1, $at
/* 05ECF0 8005E0F0 34018001 */  li    $at, 32769
/* 05ECF4 8005E0F4 0061082A */  slt   $at, $v1, $at
/* 05ECF8 8005E0F8 14200003 */  bnez  $at, .L8005E108
/* 05ECFC 8005E0FC 3C01FFFF */   lui   $at, (0xFFFF0001 >> 16) # lui $at, 0xffff
/* 05ED00 8005E100 34210001 */  ori   $at, (0xFFFF0001 & 0xFFFF) # ori $at, $at, 1
/* 05ED04 8005E104 00611821 */  addu  $v1, $v1, $at
.L8005E108:
/* 05ED08 8005E108 28618000 */  slti  $at, $v1, -0x8000
/* 05ED0C 8005E10C 10200002 */  beqz  $at, .L8005E118
/* 05ED10 8005E110 3401FFFF */   li    $at, 65535
/* 05ED14 8005E114 00611821 */  addu  $v1, $v1, $at
.L8005E118:
/* 05ED18 8005E118 28610C01 */  slti  $at, $v1, 0xc01
/* 05ED1C 8005E11C 14200003 */  bnez  $at, .L8005E12C
/* 05ED20 8005E120 2861F400 */   slti  $at, $v1, -0xc00
/* 05ED24 8005E124 24030C00 */  li    $v1, 3072
/* 05ED28 8005E128 2861F400 */  slti  $at, $v1, -0xc00
.L8005E12C:
/* 05ED2C 8005E12C 10200002 */  beqz  $at, .L8005E138
/* 05ED30 8005E130 00000000 */   nop   
/* 05ED34 8005E134 2403F400 */  li    $v1, -3072
.L8005E138:
/* 05ED38 8005E138 A603016C */  sh    $v1, 0x16c($s0)
.L8005E13C:
/* 05ED3C 8005E13C 8238003B */  lb    $t8, 0x3b($s1)
/* 05ED40 8005E140 3C058012 */  lui   $a1, %hi(D_8011D5E0) # $a1, 0x8012
/* 05ED44 8005E144 2B010002 */  slti  $at, $t8, 2
/* 05ED48 8005E148 1420000B */  bnez  $at, .L8005E178
/* 05ED4C 8005E14C 24A5D5E0 */   addiu $a1, %lo(D_8011D5E0) # addiu $a1, $a1, -0x2a20
/* 05ED50 8005E150 820F01E7 */  lb    $t7, 0x1e7($s0)
/* 05ED54 8005E154 00000000 */  nop   
/* 05ED58 8005E158 31F9001F */  andi  $t9, $t7, 0x1f
/* 05ED5C 8005E15C 2B21000A */  slti  $at, $t9, 0xa
/* 05ED60 8005E160 10200006 */  beqz  $at, .L8005E17C
/* 05ED64 8005E164 8FA30034 */   lw    $v1, 0x34($sp)
/* 05ED68 8005E168 860B016C */  lh    $t3, 0x16c($s0)
/* 05ED6C 8005E16C 00000000 */  nop   
/* 05ED70 8005E170 000B6043 */  sra   $t4, $t3, 1
/* 05ED74 8005E174 A60C016C */  sh    $t4, 0x16c($s0)
.L8005E178:
/* 05ED78 8005E178 8FA30034 */  lw    $v1, 0x34($sp)
.L8005E17C:
/* 05ED7C 8005E17C 00000000 */  nop   
/* 05ED80 8005E180 8C62004C */  lw    $v0, 0x4c($v1)
/* 05ED84 8005E184 8C700064 */  lw    $s0, 0x64($v1)
/* 05ED88 8005E188 8C4D0000 */  lw    $t5, ($v0)
/* 05ED8C 8005E18C 00000000 */  nop   
/* 05ED90 8005E190 162D000B */  bne   $s1, $t5, .L8005E1C0
/* 05ED94 8005E194 00000000 */   nop   
/* 05ED98 8005E198 844E0014 */  lh    $t6, 0x14($v0)
/* 05ED9C 8005E19C 00000000 */  nop   
/* 05EDA0 8005E1A0 31D80008 */  andi  $t8, $t6, 8
/* 05EDA4 8005E1A4 13000006 */  beqz  $t8, .L8005E1C0
/* 05EDA8 8005E1A8 00000000 */   nop   
/* 05EDAC 8005E1AC 822F003B */  lb    $t7, 0x3b($s1)
/* 05EDB0 8005E1B0 24010001 */  li    $at, 1
/* 05EDB4 8005E1B4 15E10002 */  bne   $t7, $at, .L8005E1C0
/* 05EDB8 8005E1B8 24190004 */   li    $t9, 4
/* 05EDBC 8005E1BC A2190187 */  sb    $t9, 0x187($s0)
.L8005E1C0:
/* 05EDC0 8005E1C0 820B01D8 */  lb    $t3, 0x1d8($s0)
/* 05EDC4 8005E1C4 00000000 */  nop   
/* 05EDC8 8005E1C8 11600008 */  beqz  $t3, .L8005E1EC
/* 05EDCC 8005E1CC 8FBF002C */   lw    $ra, 0x2c($sp)
/* 05EDD0 8005E1D0 80AC0000 */  lb    $t4, ($a1)
/* 05EDD4 8005E1D4 240D0001 */  li    $t5, 1
/* 05EDD8 8005E1D8 15800003 */  bnez  $t4, .L8005E1E8
/* 05EDDC 8005E1DC 02002025 */   move  $a0, $s0
/* 05EDE0 8005E1E0 0C0172DA */  jal   func_8005CB68
/* 05EDE4 8005E1E4 A0AD0000 */   sb    $t5, ($a1)
.L8005E1E8:
/* 05EDE8 8005E1E8 8FBF002C */  lw    $ra, 0x2c($sp)
.L8005E1EC:
/* 05EDEC 8005E1EC C7B50018 */  lwc1  $f21, 0x18($sp)
/* 05EDF0 8005E1F0 C7B4001C */  lwc1  $f20, 0x1c($sp)
/* 05EDF4 8005E1F4 8FB00024 */  lw    $s0, 0x24($sp)
/* 05EDF8 8005E1F8 8FB10028 */  lw    $s1, 0x28($sp)
/* 05EDFC 8005E1FC 03E00008 */  jr    $ra
/* 05EE00 8005E200 27BD0060 */   addiu $sp, $sp, 0x60


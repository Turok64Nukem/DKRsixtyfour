glabel func_80071850
/* 072450 80071850 3083000F */  andi  $v1, $a0, 0xf
/* 072454 80071854 18600003 */  blez  $v1, .L80071864
/* 072458 80071858 00000000 */   nop   
/* 07245C 8007185C 00832023 */  subu  $a0, $a0, $v1
/* 072460 80071860 24840010 */  addiu $a0, $a0, 0x10
.L80071864:
/* 072464 80071864 03E00008 */  jr    $ra
/* 072468 80071868 00801025 */   move  $v0, $a0

/* 07246C 8007186C 30830007 */  andi  $v1, $a0, 7
/* 072470 80071870 18600003 */  blez  $v1, .L80071880
/* 072474 80071874 00000000 */   nop   
/* 072478 80071878 00832023 */  subu  $a0, $a0, $v1
/* 07247C 8007187C 24840008 */  addiu $a0, $a0, 8
.L80071880:
/* 072480 80071880 03E00008 */  jr    $ra
/* 072484 80071884 00801025 */   move  $v0, $a0

/* 072488 80071888 30830003 */  andi  $v1, $a0, 3
/* 07248C 8007188C 18600003 */  blez  $v1, .L8007189C
/* 072490 80071890 00000000 */   nop   
/* 072494 80071894 00832023 */  subu  $a0, $a0, $v1
/* 072498 80071898 24840004 */  addiu $a0, $a0, 4
.L8007189C:
/* 07249C 8007189C 03E00008 */  jr    $ra
/* 0724A0 800718A0 00801025 */   move  $v0, $a0

/* 0724A4 800718A4 27BDFDC8 */  addiu $sp, $sp, -0x238
/* 0724A8 800718A8 AFB00004 */  sw    $s0, 4($sp)
/* 0724AC 800718AC 00001025 */  move  $v0, $zero
/* 0724B0 800718B0 27A40138 */  addiu $a0, $sp, 0x138
/* 0724B4 800718B4 27A50038 */  addiu $a1, $sp, 0x38
/* 0724B8 800718B8 27A30138 */  addiu $v1, $sp, 0x138
.L800718BC:
/* 0724BC 800718BC 24A50010 */  addiu $a1, $a1, 0x10
/* 0724C0 800718C0 AC800004 */  sw    $zero, 4($a0)
/* 0724C4 800718C4 ACA0FFF4 */  sw    $zero, -0xc($a1)
/* 0724C8 800718C8 AC800008 */  sw    $zero, 8($a0)
/* 0724CC 800718CC ACA0FFF8 */  sw    $zero, -8($a1)
/* 0724D0 800718D0 AC80000C */  sw    $zero, 0xc($a0)
/* 0724D4 800718D4 ACA0FFFC */  sw    $zero, -4($a1)
/* 0724D8 800718D8 24840010 */  addiu $a0, $a0, 0x10
/* 0724DC 800718DC AC80FFF0 */  sw    $zero, -0x10($a0)
/* 0724E0 800718E0 14A3FFF6 */  bne   $a1, $v1, .L800718BC
/* 0724E4 800718E4 ACA0FFF0 */   sw    $zero, -0x10($a1)
/* 0724E8 800718E8 3C048012 */  lui   $a0, %hi(D_801235C0) # $a0, 0x8012
/* 0724EC 800718EC 8C8435C0 */  lw    $a0, %lo(D_801235C0)($a0)
/* 0724F0 800718F0 3C0E8012 */  lui   $t6, 0x8012
/* 0724F4 800718F4 1880003B */  blez  $a0, .L800719E4
/* 0724F8 800718F8 25C53580 */   addiu $a1, $t6, 0x3580
/* 0724FC 800718FC 00047900 */  sll   $t7, $a0, 4
/* 072500 80071900 01E55021 */  addu  $t2, $t7, $a1
/* 072504 80071904 24100014 */  li    $s0, 20
/* 072508 80071908 240DFFFF */  li    $t5, -1
/* 07250C 8007190C 27AC0038 */  addiu $t4, $sp, 0x38
/* 072510 80071910 27AB0138 */  addiu $t3, $sp, 0x138
.L80071914:
/* 072514 80071914 8CA40008 */  lw    $a0, 8($a1)
/* 072518 80071918 00000000 */  nop   
/* 07251C 8007191C 00801825 */  move  $v1, $a0
.L80071920:
/* 072520 80071920 84780008 */  lh    $t8, 8($v1)
/* 072524 80071924 00000000 */  nop   
/* 072528 80071928 13000020 */  beqz  $t8, .L800719AC
/* 07252C 8007192C 00000000 */   nop   
/* 072530 80071930 8C660010 */  lw    $a2, 0x10($v1)
/* 072534 80071934 8FB90138 */  lw    $t9, 0x138($sp)
/* 072538 80071938 10C0001C */  beqz  $a2, .L800719AC
/* 07253C 8007193C 00C03825 */   move  $a3, $a2
/* 072540 80071940 10D9000E */  beq   $a2, $t9, .L8007197C
/* 072544 80071944 00004025 */   move  $t0, $zero
/* 072548 80071948 1320000D */  beqz  $t9, .L80071980
/* 07254C 8007194C 29010040 */   slti  $at, $t0, 0x40
.L80071950:
/* 072550 80071950 25080001 */  addiu $t0, $t0, 1
/* 072554 80071954 29010040 */  slti  $at, $t0, 0x40
/* 072558 80071958 10200008 */  beqz  $at, .L8007197C
/* 07255C 8007195C 00087880 */   sll   $t7, $t0, 2
/* 072560 80071960 016F7021 */  addu  $t6, $t3, $t7
/* 072564 80071964 8DC60000 */  lw    $a2, ($t6)
/* 072568 80071968 00000000 */  nop   
/* 07256C 8007196C 10E60004 */  beq   $a3, $a2, .L80071980
/* 072570 80071970 29010040 */   slti  $at, $t0, 0x40
/* 072574 80071974 14C0FFF6 */  bnez  $a2, .L80071950
/* 072578 80071978 00000000 */   nop   
.L8007197C:
/* 07257C 8007197C 29010040 */  slti  $at, $t0, 0x40
.L80071980:
/* 072580 80071980 10200009 */  beqz  $at, .L800719A8
/* 072584 80071984 00083080 */   sll   $a2, $t0, 2
/* 072588 80071988 0166C021 */  addu  $t8, $t3, $a2
/* 07258C 8007198C AF070000 */  sw    $a3, ($t8)
/* 072590 80071990 01864821 */  addu  $t1, $t4, $a2
/* 072594 80071994 8D390000 */  lw    $t9, ($t1)
/* 072598 80071998 00000000 */  nop   
/* 07259C 8007199C 272F0001 */  addiu $t7, $t9, 1
/* 0725A0 800719A0 10000002 */  b     .L800719AC
/* 0725A4 800719A4 AD2F0000 */   sw    $t7, ($t1)
.L800719A8:
/* 0725A8 800719A8 24420001 */  addiu $v0, $v0, 1
.L800719AC:
/* 0725AC 800719AC 8467000C */  lh    $a3, 0xc($v1)
/* 0725B0 800719B0 00000000 */  nop   
/* 0725B4 800719B4 10ED0005 */  beq   $a3, $t5, .L800719CC
/* 0725B8 800719B8 00E03025 */   move  $a2, $a3
/* 0725BC 800719BC 00F00019 */  multu $a3, $s0
/* 0725C0 800719C0 00007012 */  mflo  $t6
/* 0725C4 800719C4 008E1821 */  addu  $v1, $a0, $t6
/* 0725C8 800719C8 00000000 */  nop   
.L800719CC:
/* 0725CC 800719CC 14CDFFD4 */  bne   $a2, $t5, .L80071920
/* 0725D0 800719D0 00000000 */   nop   
/* 0725D4 800719D4 24A50010 */  addiu $a1, $a1, 0x10
/* 0725D8 800719D8 00AA082B */  sltu  $at, $a1, $t2
/* 0725DC 800719DC 1420FFCD */  bnez  $at, .L80071914
/* 0725E0 800719E0 00000000 */   nop   
.L800719E4:
/* 0725E4 800719E4 8FB80138 */  lw    $t8, 0x138($sp)
/* 0725E8 800719E8 8FB00004 */  lw    $s0, 4($sp)
/* 0725EC 800719EC 1300000B */  beqz  $t8, .L80071A1C
/* 0725F0 800719F0 00001025 */   move  $v0, $zero
/* 0725F4 800719F4 0000C880 */  sll   $t9, $zero, 2
/* 0725F8 800719F8 27AF0138 */  addiu $t7, $sp, 0x138
/* 0725FC 800719FC 032F2021 */  addu  $a0, $t9, $t7
/* 072600 80071A00 27A30238 */  addiu $v1, $sp, 0x238
.L80071A04:
/* 072604 80071A04 8C8E0004 */  lw    $t6, 4($a0)
/* 072608 80071A08 24840004 */  addiu $a0, $a0, 4
/* 07260C 80071A0C 11C00003 */  beqz  $t6, .L80071A1C
/* 072610 80071A10 00000000 */   nop   
/* 072614 80071A14 1483FFFB */  bne   $a0, $v1, .L80071A04
/* 072618 80071A18 00000000 */   nop   
.L80071A1C:
/* 07261C 80071A1C 03E00008 */  jr    $ra
/* 072620 80071A20 27BD0238 */   addiu $sp, $sp, 0x238

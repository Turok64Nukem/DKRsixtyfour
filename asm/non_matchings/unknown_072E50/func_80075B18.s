glabel func_80075B18
/* 076718 80075B18 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 07671C 80075B1C AFBF003C */  sw    $ra, 0x3c($sp)
/* 076720 80075B20 AFBE0038 */  sw    $fp, 0x38($sp)
/* 076724 80075B24 AFB70034 */  sw    $s7, 0x34($sp)
/* 076728 80075B28 AFB60030 */  sw    $s6, 0x30($sp)
/* 07672C 80075B2C AFB5002C */  sw    $s5, 0x2c($sp)
/* 076730 80075B30 AFB40028 */  sw    $s4, 0x28($sp)
/* 076734 80075B34 AFB30024 */  sw    $s3, 0x24($sp)
/* 076738 80075B38 AFB20020 */  sw    $s2, 0x20($sp)
/* 07673C 80075B3C AFB1001C */  sw    $s1, 0x1c($sp)
/* 076740 80075B40 0C01A840 */  jal   func_8006A100
/* 076744 80075B44 AFB00018 */   sw    $s0, 0x18($sp)
/* 076748 80075B48 3C148012 */  lui   $s4, %hi(D_80124010) # $s4, 0x8012
/* 07674C 80075B4C 26944010 */  addiu $s4, %lo(D_80124010) # addiu $s4, $s4, 0x4010
/* 076750 80075B50 AE820000 */  sw    $v0, ($s4)
/* 076754 80075B54 0C0078A7 */  jal   get_misc_asset
/* 076758 80075B58 24040013 */   li    $a0, 19
/* 07675C 80075B5C 3C018012 */  lui   $at, %hi(D_801241E0) # $at, 0x8012
/* 076760 80075B60 AC2241E0 */  sw    $v0, %lo(D_801241E0)($at)
/* 076764 80075B64 3C038012 */  lui   $v1, %hi(D_801241E7) # $v1, 0x8012
/* 076768 80075B68 246341E7 */  addiu $v1, %lo(D_801241E7) # addiu $v1, $v1, 0x41e7
/* 07676C 80075B6C 240F000F */  li    $t7, 15
/* 076770 80075B70 A06F0000 */  sb    $t7, ($v1)
/* 076774 80075B74 3C018012 */  lui   $at, %hi(D_801241E6) # $at, 0x8012
/* 076778 80075B78 A02F41E6 */  sb    $t7, %lo(D_801241E6)($at)
/* 07677C 80075B7C 3C018012 */  lui   $at, %hi(D_801241E4) # $at, 0x8012
/* 076780 80075B80 24180001 */  li    $t8, 1
/* 076784 80075B84 A03841E4 */  sb    $t8, %lo(D_801241E4)($at)
/* 076788 80075B88 3C018012 */  lui   $at, %hi(D_801241E8) # $at, 0x8012
/* 07678C 80075B8C AC2041E8 */  sw    $zero, %lo(D_801241E8)($at)
/* 076790 80075B90 3C01800E */  lui   $at, %hi(D_800DE48C) # $at, 0x800e
/* 076794 80075B94 24190001 */  li    $t9, 1
/* 076798 80075B98 3C158012 */  lui   $s5, %hi(D_801241E5) # $s5, 0x8012
/* 07679C 80075B9C 3C16800E */  lui   $s6, %hi(D_800DE488) # $s6, 0x800e
/* 0767A0 80075BA0 AC39E48C */  sw    $t9, %lo(D_800DE48C)($at)
/* 0767A4 80075BA4 26D6E488 */  addiu $s6, %lo(D_800DE488) # addiu $s6, $s6, -0x1b78
/* 0767A8 80075BA8 26B541E5 */  addiu $s5, %lo(D_801241E5) # addiu $s5, $s5, 0x41e5
/* 0767AC 80075BAC 8E840000 */  lw    $a0, ($s4)
/* 0767B0 80075BB0 A2A00000 */  sb    $zero, ($s5)
/* 0767B4 80075BB4 A2C00000 */  sb    $zero, ($s6)
/* 0767B8 80075BB8 0C0334A4 */  jal   osPfsIsPlug
/* 0767BC 80075BBC 27A5004E */   addiu $a1, $sp, 0x4e
/* 0767C0 80075BC0 3C118012 */  lui   $s1, %hi(D_801241B8) # $s1, 0x8012
/* 0767C4 80075BC4 263141B8 */  addiu $s1, %lo(D_801241B8) # addiu $s1, $s1, 0x41b8
/* 0767C8 80075BC8 00008025 */  move  $s0, $zero
/* 0767CC 80075BCC 24030001 */  li    $v1, 1
/* 0767D0 80075BD0 241E0004 */  li    $fp, 4
/* 0767D4 80075BD4 2417FFFF */  li    $s7, -1
.L80075BD8:
/* 0767D8 80075BD8 93AA004E */  lbu   $t2, 0x4e($sp)
/* 0767DC 80075BDC A6200002 */  sh    $zero, 2($s1)
/* 0767E0 80075BE0 86290002 */  lh    $t1, 2($s1)
/* 0767E4 80075BE4 01435824 */  and   $t3, $t2, $v1
/* 0767E8 80075BE8 A6370004 */  sh    $s7, 4($s1)
/* 0767EC 80075BEC A6370000 */  sh    $s7, ($s1)
/* 0767F0 80075BF0 00609825 */  move  $s3, $v1
/* 0767F4 80075BF4 11600025 */  beqz  $t3, .L80075C8C
/* 0767F8 80075BF8 A6290006 */   sh    $t1, 6($s1)
/* 0767FC 80075BFC 00106080 */  sll   $t4, $s0, 2
/* 076800 80075C00 01906023 */  subu  $t4, $t4, $s0
/* 076804 80075C04 000C6080 */  sll   $t4, $t4, 2
/* 076808 80075C08 01906021 */  addu  $t4, $t4, $s0
/* 07680C 80075C0C 3C0D8012 */  lui   $t5, %hi(D_80124018) # $t5, 0x8012
/* 076810 80075C10 25AD4018 */  addiu $t5, %lo(D_80124018) # addiu $t5, $t5, 0x4018
/* 076814 80075C14 000C60C0 */  sll   $t4, $t4, 3
/* 076818 80075C18 018D9021 */  addu  $s2, $t4, $t5
/* 07681C 80075C1C 8E840000 */  lw    $a0, ($s4)
/* 076820 80075C20 02402825 */  move  $a1, $s2
/* 076824 80075C24 0C033B48 */  jal   func_800CED20
/* 076828 80075C28 02003025 */   move  $a2, $s0
/* 07682C 80075C2C 24010002 */  li    $at, 2
/* 076830 80075C30 14410004 */  bne   $v0, $at, .L80075C44
/* 076834 80075C34 02402825 */   move  $a1, $s2
/* 076838 80075C38 8E840000 */  lw    $a0, ($s4)
/* 07683C 80075C3C 0C033B48 */  jal   func_800CED20
/* 076840 80075C40 02003025 */   move  $a2, $s0
.L80075C44:
/* 076844 80075C44 14400006 */  bnez  $v0, .L80075C60
/* 076848 80075C48 2401000A */   li    $at, 10
/* 07684C 80075C4C 92CE0000 */  lbu   $t6, ($s6)
/* 076850 80075C50 00000000 */  nop   
/* 076854 80075C54 01D37825 */  or    $t7, $t6, $s3
/* 076858 80075C58 1000000C */  b     .L80075C8C
/* 07685C 80075C5C A2CF0000 */   sb    $t7, ($s6)
.L80075C60:
/* 076860 80075C60 1441000A */  bne   $v0, $at, .L80075C8C
/* 076864 80075C64 02402825 */   move  $a1, $s2
/* 076868 80075C68 8E840000 */  lw    $a0, ($s4)
/* 07686C 80075C6C 0C01C837 */  jal   func_800720DC
/* 076870 80075C70 02003025 */   move  $a2, $s0
/* 076874 80075C74 14400006 */  bnez  $v0, .L80075C90
/* 076878 80075C78 00131840 */   sll   $v1, $s3, 1
/* 07687C 80075C7C 92B80000 */  lbu   $t8, ($s5)
/* 076880 80075C80 00000000 */  nop   
/* 076884 80075C84 0313C825 */  or    $t9, $t8, $s3
/* 076888 80075C88 A2B90000 */  sb    $t9, ($s5)
.L80075C8C:
/* 07688C 80075C8C 00131840 */  sll   $v1, $s3, 1
.L80075C90:
/* 076890 80075C90 306800FF */  andi  $t0, $v1, 0xff
/* 076894 80075C94 26100001 */  addiu $s0, $s0, 1
/* 076898 80075C98 01001825 */  move  $v1, $t0
/* 07689C 80075C9C 161EFFCE */  bne   $s0, $fp, .L80075BD8
/* 0768A0 80075CA0 2631000A */   addiu $s1, $s1, 0xa
/* 0768A4 80075CA4 8E840000 */  lw    $a0, ($s4)
/* 0768A8 80075CA8 0C0333F8 */  jal   func_800CCFE0
/* 0768AC 80075CAC 00000000 */   nop   
/* 0768B0 80075CB0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0768B4 80075CB4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0768B8 80075CB8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0768BC 80075CBC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0768C0 80075CC0 8FB30024 */  lw    $s3, 0x24($sp)
/* 0768C4 80075CC4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0768C8 80075CC8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0768CC 80075CCC 8FB60030 */  lw    $s6, 0x30($sp)
/* 0768D0 80075CD0 8FB70034 */  lw    $s7, 0x34($sp)
/* 0768D4 80075CD4 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0768D8 80075CD8 03E00008 */  jr    $ra
/* 0768DC 80075CDC 27BD0058 */   addiu $sp, $sp, 0x58

/* 0768E0 80075CE0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0768E4 80075CE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0768E8 80075CE8 0C01D637 */  jal   func_800758DC
/* 0768EC 80075CEC AFA40020 */   sw    $a0, 0x20($sp)
/* 0768F0 80075CF0 8FA40020 */  lw    $a0, 0x20($sp)
/* 0768F4 80075CF4 0C01D6BB */  jal   func_80075AEC
/* 0768F8 80075CF8 AFA2001C */   sw    $v0, 0x1c($sp)
/* 0768FC 80075CFC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 076900 80075D00 24010007 */  li    $at, 7
/* 076904 80075D04 14610008 */  bne   $v1, $at, .L80075D28
/* 076908 80075D08 3C028012 */   lui   $v0, %hi(D_801241E5) # $v0, 0x8012
/* 07690C 80075D0C 8FAF0020 */  lw    $t7, 0x20($sp)
/* 076910 80075D10 244241E5 */  addiu $v0, %lo(D_801241E5) # addiu $v0, $v0, 0x41e5
/* 076914 80075D14 904E0000 */  lbu   $t6, ($v0)
/* 076918 80075D18 24180001 */  li    $t8, 1
/* 07691C 80075D1C 01F8C804 */  sllv  $t9, $t8, $t7
/* 076920 80075D20 01D94025 */  or    $t0, $t6, $t9
/* 076924 80075D24 A0480000 */  sb    $t0, ($v0)
.L80075D28:
/* 076928 80075D28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 07692C 80075D2C 27BD0020 */  addiu $sp, $sp, 0x20
/* 076930 80075D30 03E00008 */  jr    $ra
/* 076934 80075D34 00601025 */   move  $v0, $v1


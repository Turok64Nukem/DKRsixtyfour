glabel func_80090918
/* 091518 80090918 3C03800E */  lui   $v1, %hi(gMenuDelay) # $v1, 0x800e
/* 09151C 8009091C 8C63F47C */  lw    $v1, %lo(gMenuDelay)($v1)
/* 091520 80090920 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 091524 80090924 AFBF001C */  sw    $ra, 0x1c($sp)
/* 091528 80090928 AFA40048 */  sw    $a0, 0x48($sp)
/* 09152C 8009092C 18600087 */  blez  $v1, .L80090B4C
/* 091530 80090930 AFA30024 */   sw    $v1, 0x24($sp)
/* 091534 80090934 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 091538 80090938 44811000 */  mtc1  $at, $f2
/* 09153C 8009093C 3C018012 */  lui   $at, %hi(D_801269E8) # $at, 0x8012
/* 091540 80090940 C42469E8 */  lwc1  $f4, %lo(D_801269E8)($at)
/* 091544 80090944 3C018012 */  lui   $at, %hi(D_801269DC) # $at, 0x8012
/* 091548 80090948 C42669DC */  lwc1  $f6, %lo(D_801269DC)($at)
/* 09154C 8009094C 3C01C080 */  li    $at, 0xC0800000 # -4.000000
/* 091550 80090950 46062001 */  sub.s $f0, $f4, $f6
/* 091554 80090954 240E0001 */  li    $t6, 1
/* 091558 80090958 4600103C */  c.lt.s $f2, $f0
/* 09155C 8009095C 00000000 */  nop   
/* 091560 80090960 45010013 */  bc1t  .L800909B0
/* 091564 80090964 00000000 */   nop   
/* 091568 80090968 44816000 */  mtc1  $at, $f12
/* 09156C 8009096C 3C018012 */  lui   $at, %hi(D_801269EC) # $at, 0x8012
/* 091570 80090970 460C003C */  c.lt.s $f0, $f12
/* 091574 80090974 00000000 */  nop   
/* 091578 80090978 4501000D */  bc1t  .L800909B0
/* 09157C 8009097C 00000000 */   nop   
/* 091580 80090980 C42869EC */  lwc1  $f8, %lo(D_801269EC)($at)
/* 091584 80090984 3C018012 */  lui   $at, %hi(D_801269E4) # $at, 0x8012
/* 091588 80090988 C42A69E4 */  lwc1  $f10, %lo(D_801269E4)($at)
/* 09158C 8009098C 00000000 */  nop   
/* 091590 80090990 460A4001 */  sub.s $f0, $f8, $f10
/* 091594 80090994 4600103C */  c.lt.s $f2, $f0
/* 091598 80090998 00000000 */  nop   
/* 09159C 8009099C 45010004 */  bc1t  .L800909B0
/* 0915A0 800909A0 00000000 */   nop   
/* 0915A4 800909A4 460C003C */  c.lt.s $f0, $f12
/* 0915A8 800909A8 3C0F800E */  lui   $t7, %hi(D_800E1E1C) # $t7, 0x800e
/* 0915AC 800909AC 45000004 */  bc1f  .L800909C0
.L800909B0:
/* 0915B0 800909B0 3C01800E */   lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 0915B4 800909B4 AC2EF47C */  sw    $t6, %lo(gMenuDelay)($at)
/* 0915B8 800909B8 1000000B */  b     .L800909E8
/* 0915BC 800909BC 24030001 */   li    $v1, 1
.L800909C0:
/* 0915C0 800909C0 8DEF1E1C */  lw    $t7, %lo(D_800E1E1C)($t7)
/* 0915C4 800909C4 240400EF */  li    $a0, 239
/* 0915C8 800909C8 11E00008 */  beqz  $t7, .L800909EC
/* 0915CC 800909CC 2469FFFF */   addiu $t1, $v1, -1
/* 0915D0 800909D0 0C000741 */  jal   func_80001D04
/* 0915D4 800909D4 00002825 */   move  $a1, $zero
/* 0915D8 800909D8 3C03800E */  lui   $v1, %hi(gMenuDelay) # $v1, 0x800e
/* 0915DC 800909DC 3C01800E */  lui   $at, %hi(D_800E1E1C) # $at, 0x800e
/* 0915E0 800909E0 8C63F47C */  lw    $v1, %lo(gMenuDelay)($v1)
/* 0915E4 800909E4 AC201E1C */  sw    $zero, %lo(D_800E1E1C)($at)
.L800909E8:
/* 0915E8 800909E8 2469FFFF */  addiu $t1, $v1, -1
.L800909EC:
/* 0915EC 800909EC 29210015 */  slti  $at, $t1, 0x15
/* 0915F0 800909F0 14200002 */  bnez  $at, .L800909FC
/* 0915F4 800909F4 240A00A0 */   li    $t2, 160
/* 0915F8 800909F8 24090014 */  li    $t1, 20
.L800909FC:
/* 0915FC 800909FC 3C0C8012 */  lui   $t4, %hi(D_80126478) # $t4, 0x8012
/* 091600 80090A00 8D8C6478 */  lw    $t4, %lo(D_80126478)($t4)
/* 091604 80090A04 29210014 */  slti  $at, $t1, 0x14
/* 091608 80090A08 10200024 */  beqz  $at, .L80090A9C
/* 09160C 80090A0C 01804025 */   move  $t0, $t4
/* 091610 80090A10 3C018012 */  lui   $at, %hi(D_801269E8) # $at, 0x8012
/* 091614 80090A14 C43069E8 */  lwc1  $f16, %lo(D_801269E8)($at)
/* 091618 80090A18 241800A0 */  li    $t8, 160
/* 09161C 80090A1C 44983000 */  mtc1  $t8, $f6
/* 091620 80090A20 3C018012 */  lui   $at, %hi(D_801269DC) # $at, 0x8012
/* 091624 80090A24 C43269DC */  lwc1  $f18, %lo(D_801269DC)($at)
/* 091628 80090A28 46803220 */  cvt.s.w $f8, $f6
/* 09162C 80090A2C 46128101 */  sub.s $f4, $f16, $f18
/* 091630 80090A30 46044280 */  add.s $f10, $f8, $f4
/* 091634 80090A34 44882000 */  mtc1  $t0, $f4
/* 091638 80090A38 4459F800 */  cfc1  $t9, $31
/* 09163C 80090A3C 00000000 */  nop   
/* 091640 80090A40 37210003 */  ori   $at, $t9, 3
/* 091644 80090A44 38210002 */  xori  $at, $at, 2
/* 091648 80090A48 44C1F800 */  ctc1  $at, $31
/* 09164C 80090A4C 3C018012 */  lui   $at, %hi(D_801269EC) # $at, 0x8012
/* 091650 80090A50 46005424 */  cvt.w.s $f16, $f10
/* 091654 80090A54 C43269EC */  lwc1  $f18, %lo(D_801269EC)($at)
/* 091658 80090A58 44D9F800 */  ctc1  $t9, $31
/* 09165C 80090A5C 3C018012 */  lui   $at, %hi(D_801269E4) # $at, 0x8012
/* 091660 80090A60 C42669E4 */  lwc1  $f6, %lo(D_801269E4)($at)
/* 091664 80090A64 468022A0 */  cvt.s.w $f10, $f4
/* 091668 80090A68 440A8000 */  mfc1  $t2, $f16
/* 09166C 80090A6C 46069201 */  sub.s $f8, $f18, $f6
/* 091670 80090A70 46085401 */  sub.s $f16, $f10, $f8
/* 091674 80090A74 444DF800 */  cfc1  $t5, $31
/* 091678 80090A78 00000000 */  nop   
/* 09167C 80090A7C 35A10003 */  ori   $at, $t5, 3
/* 091680 80090A80 38210002 */  xori  $at, $at, 2
/* 091684 80090A84 44C1F800 */  ctc1  $at, $31
/* 091688 80090A88 00000000 */  nop   
/* 09168C 80090A8C 460084A4 */  cvt.w.s $f18, $f16
/* 091690 80090A90 44CDF800 */  ctc1  $t5, $31
/* 091694 80090A94 44089000 */  mfc1  $t0, $f18
/* 091698 80090A98 00000000 */  nop   
.L80090A9C:
/* 09169C 80090A9C 252E0014 */  addiu $t6, $t1, 0x14
/* 0916A0 80090AA0 01CC0019 */  multu $t6, $t4
/* 0916A4 80090AA4 24010028 */  li    $at, 40
/* 0916A8 80090AA8 00091880 */  sll   $v1, $t1, 2
/* 0916AC 80090AAC 01432823 */  subu  $a1, $t2, $v1
/* 0916B0 80090AB0 006A3821 */  addu  $a3, $v1, $t2
/* 0916B4 80090AB4 24E70050 */  addiu $a3, $a3, 0x50
/* 0916B8 80090AB8 24A5FFB0 */  addiu $a1, $a1, -0x50
/* 0916BC 80090ABC 00002025 */  move  $a0, $zero
/* 0916C0 80090AC0 AFA9003C */  sw    $t1, 0x3c($sp)
/* 0916C4 80090AC4 00001012 */  mflo  $v0
/* 0916C8 80090AC8 00000000 */  nop   
/* 0916CC 80090ACC 00000000 */  nop   
/* 0916D0 80090AD0 0041001A */  div   $zero, $v0, $at
/* 0916D4 80090AD4 00007812 */  mflo  $t7
/* 0916D8 80090AD8 01E85821 */  addu  $t3, $t7, $t0
/* 0916DC 80090ADC 010F3023 */  subu  $a2, $t0, $t7
/* 0916E0 80090AE0 0C019A50 */  jal   func_80066940
/* 0916E4 80090AE4 AFAB0010 */   sw    $t3, 0x10($sp)
/* 0916E8 80090AE8 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0916EC 80090AEC 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0916F0 80090AF0 44893000 */  mtc1  $t1, $f6
/* 0916F4 80090AF4 44815000 */  mtc1  $at, $f10
/* 0916F8 80090AF8 46803120 */  cvt.s.w $f4, $f6
/* 0916FC 80090AFC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 091700 80090B00 44818000 */  mtc1  $at, $f16
/* 091704 80090B04 460A2203 */  div.s $f8, $f4, $f10
/* 091708 80090B08 3C03800E */  lui   $v1, %hi(D_800DF510) # $v1, 0x800e
/* 09170C 80090B0C 2463F510 */  addiu $v1, %lo(D_800DF510) # addiu $v1, $v1, -0xaf0
/* 091710 80090B10 C4720088 */  lwc1  $f18, 0x88($v1)
/* 091714 80090B14 3C02800E */  lui   $v0, %hi(D_800DF75C) # $v0, 0x800e
/* 091718 80090B18 2442F75C */  addiu $v0, %lo(D_800DF75C) # addiu $v0, $v0, -0x8a4
/* 09171C 80090B1C 8C580000 */  lw    $t8, ($v0)
/* 091720 80090B20 46088000 */  add.s $f0, $f16, $f8
/* 091724 80090B24 46009182 */  mul.s $f6, $f18, $f0
/* 091728 80090B28 E7060088 */  swc1  $f6, 0x88($t8)
/* 09172C 80090B2C C46400C8 */  lwc1  $f4, 0xc8($v1)
/* 091730 80090B30 8C590000 */  lw    $t9, ($v0)
/* 091734 80090B34 46002282 */  mul.s $f10, $f4, $f0
/* 091738 80090B38 E72A00C8 */  swc1  $f10, 0xc8($t9)
/* 09173C 80090B3C C47000A8 */  lwc1  $f16, 0xa8($v1)
/* 091740 80090B40 8C4D0000 */  lw    $t5, ($v0)
/* 091744 80090B44 46008202 */  mul.s $f8, $f16, $f0
/* 091748 80090B48 E5A800A8 */  swc1  $f8, 0xa8($t5)
.L80090B4C:
/* 09174C 80090B4C 00002025 */  move  $a0, $zero
/* 091750 80090B50 0C019A06 */  jal   func_80066818
/* 091754 80090B54 00002825 */   move  $a1, $zero
/* 091758 80090B58 0C031CF8 */  jal   get_thread30_level_id_to_load
/* 09175C 80090B5C 00000000 */   nop   
/* 091760 80090B60 14400051 */  bnez  $v0, .L80090CA8
/* 091764 80090B64 3C03800E */   lui   $v1, %hi(gMenuDelay) # $v1, 0x800e
/* 091768 80090B68 8C63F47C */  lw    $v1, %lo(gMenuDelay)($v1)
/* 09176C 80090B6C 3C0A8012 */  lui   $t2, %hi(D_801269C8) # $t2, 0x8012
/* 091770 80090B70 04610008 */  bgez  $v1, .L80090B94
/* 091774 80090B74 254A69C8 */   addiu $t2, %lo(D_801269C8) # addiu $t2, $t2, 0x69c8
/* 091778 80090B78 3C02800E */  lui   $v0, %hi(D_800DF760) # $v0, 0x800e
/* 09177C 80090B7C 8FAF0048 */  lw    $t7, 0x48($sp)
/* 091780 80090B80 2442F760 */  addiu $v0, %lo(D_800DF760) # addiu $v0, $v0, -0x8a0
/* 091784 80090B84 8C4E0000 */  lw    $t6, ($v0)
/* 091788 80090B88 000FC080 */  sll   $t8, $t7, 2
/* 09178C 80090B8C 01D8C823 */  subu  $t9, $t6, $t8
/* 091790 80090B90 AC590000 */  sw    $t9, ($v0)
.L80090B94:
/* 091794 80090B94 3C0F8012 */  lui   $t7, %hi(D_801269F4) # $t7, 0x8012
/* 091798 80090B98 8DEF69F4 */  lw    $t7, %lo(D_801269F4)($t7)
/* 09179C 80090B9C 8D4D0000 */  lw    $t5, ($t2)
/* 0917A0 80090BA0 3C078012 */  lui   $a3, %hi(D_801269CC) # $a3, 0x8012
/* 0917A4 80090BA4 15AF000F */  bne   $t5, $t7, .L80090BE4
/* 0917A8 80090BA8 24E769CC */   addiu $a3, %lo(D_801269CC) # addiu $a3, $a3, 0x69cc
/* 0917AC 80090BAC 3C188012 */  lui   $t8, %hi(D_801269F8) # $t8, 0x8012
/* 0917B0 80090BB0 8F1869F8 */  lw    $t8, %lo(D_801269F8)($t8)
/* 0917B4 80090BB4 8CEE0000 */  lw    $t6, ($a3)
/* 0917B8 80090BB8 3C028012 */  lui   $v0, %hi(D_801263D8) # $v0, 0x8012
/* 0917BC 80090BBC 15D80009 */  bne   $t6, $t8, .L80090BE4
/* 0917C0 80090BC0 244263D8 */   addiu $v0, %lo(D_801263D8) # addiu $v0, $v0, 0x63d8
/* 0917C4 80090BC4 8C590000 */  lw    $t9, ($v0)
/* 0917C8 80090BC8 8FAD0048 */  lw    $t5, 0x48($sp)
/* 0917CC 80090BCC 00000000 */  nop   
/* 0917D0 80090BD0 032D7823 */  subu  $t7, $t9, $t5
/* 0917D4 80090BD4 05E1000D */  bgez  $t7, .L80090C0C
/* 0917D8 80090BD8 AC4F0000 */   sw    $t7, ($v0)
/* 0917DC 80090BDC 1000000B */  b     .L80090C0C
/* 0917E0 80090BE0 AC400000 */   sw    $zero, ($v0)
.L80090BE4:
/* 0917E4 80090BE4 3C028012 */  lui   $v0, %hi(D_801263D8) # $v0, 0x8012
/* 0917E8 80090BE8 244263D8 */  addiu $v0, %lo(D_801263D8) # addiu $v0, $v0, 0x63d8
/* 0917EC 80090BEC 8C580000 */  lw    $t8, ($v0)
/* 0917F0 80090BF0 8FB90048 */  lw    $t9, 0x48($sp)
/* 0917F4 80090BF4 240E0020 */  li    $t6, 32
/* 0917F8 80090BF8 03196821 */  addu  $t5, $t8, $t9
/* 0917FC 80090BFC 29A10021 */  slti  $at, $t5, 0x21
/* 091800 80090C00 14200002 */  bnez  $at, .L80090C0C
/* 091804 80090C04 AC4D0000 */   sw    $t5, ($v0)
/* 091808 80090C08 AC4E0000 */  sw    $t6, ($v0)
.L80090C0C:
/* 09180C 80090C0C 2861FFEA */  slti  $at, $v1, -0x16
/* 091810 80090C10 10200008 */  beqz  $at, .L80090C34
/* 091814 80090C14 2861001F */   slti  $at, $v1, 0x1f
/* 091818 80090C18 0C01E2AB */  jal   func_80078AAC
/* 09181C 80090C1C 00002025 */   move  $a0, $zero
/* 091820 80090C20 3C03800E */  lui   $v1, %hi(gMenuDelay) # $v1, 0x800e
/* 091824 80090C24 3C01800E */  lui   $at, %hi(D_800E097C) # $at, 0x800e
/* 091828 80090C28 8C63F47C */  lw    $v1, %lo(gMenuDelay)($v1)
/* 09182C 80090C2C AC20097C */  sw    $zero, %lo(D_800E097C)($at)
/* 091830 80090C30 2861001F */  slti  $at, $v1, 0x1f
.L80090C34:
/* 091834 80090C34 14200013 */  bnez  $at, .L80090C84
/* 091838 80090C38 2861FFE2 */   slti  $at, $v1, -0x1e
/* 09183C 80090C3C 0C027B18 */  jal   func_8009EC60
/* 091840 80090C40 00000000 */   nop   
/* 091844 80090C44 10400008 */  beqz  $v0, .L80090C68
/* 091848 80090C48 3C188012 */   lui   $t8, %hi(D_801269C8) # $t8, 0x8012
/* 09184C 80090C4C 8F1869C8 */  lw    $t8, %lo(D_801269C8)($t8)
/* 091850 80090C50 24010005 */  li    $at, 5
/* 091854 80090C54 13010004 */  beq   $t8, $at, .L80090C68
/* 091858 80090C58 2419FFFF */   li    $t9, -1
/* 09185C 80090C5C 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 091860 80090C60 10000003 */  b     .L80090C70
/* 091864 80090C64 AC3963E0 */   sw    $t9, %lo(D_801263E0)($at)
.L80090C68:
/* 091868 80090C68 3C018012 */  lui   $at, %hi(D_801263E0) # $at, 0x8012
/* 09186C 80090C6C AC2063E0 */  sw    $zero, %lo(D_801263E0)($at)
.L80090C70:
/* 091870 80090C70 0C023C03 */  jal   func_8008F00C
/* 091874 80090C74 24040001 */   li    $a0, 1
/* 091878 80090C78 1000000C */  b     .L80090CAC
/* 09187C 80090C7C 8FAD0024 */   lw    $t5, 0x24($sp)
/* 091880 80090C80 2861FFE2 */  slti  $at, $v1, -0x1e
.L80090C84:
/* 091884 80090C84 10200009 */  beqz  $at, .L80090CAC
/* 091888 80090C88 8FAD0024 */   lw    $t5, 0x24($sp)
/* 09188C 80090C8C 0C030060 */  jal   func_800C0180
/* 091890 80090C90 00000000 */   nop   
/* 091894 80090C94 00002025 */  move  $a0, $zero
/* 091898 80090C98 0C019A25 */  jal   func_80066894
/* 09189C 80090C9C 00002825 */   move  $a1, $zero
/* 0918A0 80090CA0 0C023C03 */  jal   func_8008F00C
/* 0918A4 80090CA4 2404FFFF */   li    $a0, -1
.L80090CA8:
/* 0918A8 80090CA8 8FAD0024 */  lw    $t5, 0x24($sp)
.L80090CAC:
/* 0918AC 80090CAC 3C078012 */  lui   $a3, %hi(D_801269CC) # $a3, 0x8012
/* 0918B0 80090CB0 3C0A8012 */  lui   $t2, %hi(D_801269C8) # $t2, 0x8012
/* 0918B4 80090CB4 254A69C8 */  addiu $t2, %lo(D_801269C8) # addiu $t2, $t2, 0x69c8
/* 0918B8 80090CB8 15A00083 */  bnez  $t5, .L80090EC8
/* 0918BC 80090CBC 24E769CC */   addiu $a3, %lo(D_801269CC) # addiu $a3, $a3, 0x69cc
/* 0918C0 80090CC0 3C0F8012 */  lui   $t7, %hi(D_80126918) # $t7, 0x8012
/* 0918C4 80090CC4 85EF6918 */  lh    $t7, %lo(D_80126918)($t7)
/* 0918C8 80090CC8 2403FFFF */  li    $v1, -1
/* 0918CC 80090CCC 146F0003 */  bne   $v1, $t7, .L80090CDC
/* 0918D0 80090CD0 3C028012 */   lui   $v0, %hi(D_801267E8) # $v0, 0x8012
/* 0918D4 80090CD4 10000002 */  b     .L80090CE0
/* 0918D8 80090CD8 24050003 */   li    $a1, 3
.L80090CDC:
/* 0918DC 80090CDC 24050004 */  li    $a1, 4
.L80090CE0:
/* 0918E0 80090CE0 8C4267E8 */  lw    $v0, %lo(D_801267E8)($v0)
/* 0918E4 80090CE4 00000000 */  nop   
/* 0918E8 80090CE8 304E9000 */  andi  $t6, $v0, 0x9000
/* 0918EC 80090CEC 11C00012 */  beqz  $t6, .L80090D38
/* 0918F0 80090CF0 304D4000 */   andi  $t5, $v0, 0x4000
/* 0918F4 80090CF4 3C02800E */  lui   $v0, %hi(gTrackIdForPreview) # $v0, 0x800e
/* 0918F8 80090CF8 8C42F4C4 */  lw    $v0, %lo(gTrackIdForPreview)($v0)
/* 0918FC 80090CFC 24180001 */  li    $t8, 1
/* 091900 80090D00 10620009 */  beq   $v1, $v0, .L80090D28
/* 091904 80090D04 2404006A */   li    $a0, 106
/* 091908 80090D08 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 09190C 80090D0C AC38F47C */  sw    $t8, %lo(gMenuDelay)($at)
/* 091910 80090D10 3C01800E */  lui   $at, %hi(gTrackIdToLoad) # $at, 0x800e
/* 091914 80090D14 AC22F4D4 */  sw    $v0, %lo(gTrackIdToLoad)($at)
/* 091918 80090D18 3C01800E */  lui   $at, %hi(D_800E1E1C) # $at, 0x800e
/* 09191C 80090D1C 24190001 */  li    $t9, 1
/* 091920 80090D20 10000069 */  b     .L80090EC8
/* 091924 80090D24 AC391E1C */   sw    $t9, %lo(D_800E1E1C)($at)
.L80090D28:
/* 091928 80090D28 0C000741 */  jal   func_80001D04
/* 09192C 80090D2C 00002825 */   move  $a1, $zero
/* 091930 80090D30 10000066 */  b     .L80090ECC
/* 091934 80090D34 8FBF001C */   lw    $ra, 0x1c($sp)
.L80090D38:
/* 091938 80090D38 11A0000C */  beqz  $t5, .L80090D6C
/* 09193C 80090D3C 3C048012 */   lui   $a0, %hi(D_80126820) # $a0, 0x8012
/* 091940 80090D40 0C030060 */  jal   func_800C0180
/* 091944 80090D44 00000000 */   nop   
/* 091948 80090D48 3C04800E */  lui   $a0, %hi(D_800DF774) # $a0, 0x800e
/* 09194C 80090D4C 0C030076 */  jal   func_800C01D8
/* 091950 80090D50 2484F774 */   addiu $a0, %lo(D_800DF774) # addiu $a0, $a0, -0x88c
/* 091954 80090D54 0C03005C */  jal   func_800C0170
/* 091958 80090D58 00000000 */   nop   
/* 09195C 80090D5C 240FFFFF */  li    $t7, -1
/* 091960 80090D60 3C01800E */  lui   $at, %hi(gMenuDelay) # $at, 0x800e
/* 091964 80090D64 10000058 */  b     .L80090EC8
/* 091968 80090D68 AC2FF47C */   sw    $t7, %lo(gMenuDelay)($at)
.L80090D6C:
/* 09196C 80090D6C 8D420000 */  lw    $v0, ($t2)
/* 091970 80090D70 8CE30000 */  lw    $v1, ($a3)
/* 091974 80090D74 84846820 */  lh    $a0, %lo(D_80126820)($a0)
/* 091978 80090D78 00404025 */  move  $t0, $v0
/* 09197C 80090D7C 04810005 */  bgez  $a0, .L80090D94
/* 091980 80090D80 00604825 */   move  $t1, $v1
/* 091984 80090D84 18400003 */  blez  $v0, .L80090D94
/* 091988 80090D88 244EFFFF */   addiu $t6, $v0, -1
/* 09198C 80090D8C AD4E0000 */  sw    $t6, ($t2)
/* 091990 80090D90 01C01025 */  move  $v0, $t6
.L80090D94:
/* 091994 80090D94 18800006 */  blez  $a0, .L80090DB0
/* 091998 80090D98 24060004 */   li    $a2, 4
/* 09199C 80090D9C 28410005 */  slti  $at, $v0, 5
/* 0919A0 80090DA0 10200003 */  beqz  $at, .L80090DB0
/* 0919A4 80090DA4 24580001 */   addiu $t8, $v0, 1
/* 0919A8 80090DA8 AD580000 */  sw    $t8, ($t2)
/* 0919AC 80090DAC 03001025 */  move  $v0, $t8
.L80090DB0:
/* 0919B0 80090DB0 14C30005 */  bne   $a2, $v1, .L80090DC8
/* 0919B4 80090DB4 24010005 */   li    $at, 5
/* 0919B8 80090DB8 14410003 */  bne   $v0, $at, .L80090DC8
/* 0919BC 80090DBC 00000000 */   nop   
/* 0919C0 80090DC0 AD460000 */  sw    $a2, ($t2)
/* 0919C4 80090DC4 00C01025 */  move  $v0, $a2
.L80090DC8:
/* 0919C8 80090DC8 14800016 */  bnez  $a0, .L80090E24
/* 0919CC 80090DCC 3C048012 */   lui   $a0, %hi(D_80126838) # $a0, 0x8012
/* 0919D0 80090DD0 84846838 */  lh    $a0, %lo(D_80126838)($a0)
/* 0919D4 80090DD4 0065082A */  slt   $at, $v1, $a1
/* 0919D8 80090DD8 04810004 */  bgez  $a0, .L80090DEC
/* 0919DC 80090DDC 00000000 */   nop   
/* 0919E0 80090DE0 10200002 */  beqz  $at, .L80090DEC
/* 0919E4 80090DE4 24790001 */   addiu $t9, $v1, 1
/* 0919E8 80090DE8 ACF90000 */  sw    $t9, ($a3)
.L80090DEC:
/* 0919EC 80090DEC 18800006 */  blez  $a0, .L80090E08
/* 0919F0 80090DF0 24010005 */   li    $at, 5
/* 0919F4 80090DF4 8CE30000 */  lw    $v1, ($a3)
/* 0919F8 80090DF8 00000000 */  nop   
/* 0919FC 80090DFC 18600002 */  blez  $v1, .L80090E08
/* 091A00 80090E00 246DFFFF */   addiu $t5, $v1, -1
/* 091A04 80090E04 ACED0000 */  sw    $t5, ($a3)
.L80090E08:
/* 091A08 80090E08 14410006 */  bne   $v0, $at, .L80090E24
/* 091A0C 80090E0C 00000000 */   nop   
/* 091A10 80090E10 8CEF0000 */  lw    $t7, ($a3)
/* 091A14 80090E14 240E0003 */  li    $t6, 3
/* 091A18 80090E18 14CF0002 */  bne   $a2, $t7, .L80090E24
/* 091A1C 80090E1C 00000000 */   nop   
/* 091A20 80090E20 ACEE0000 */  sw    $t6, ($a3)
.L80090E24:
/* 091A24 80090E24 15020005 */  bne   $t0, $v0, .L80090E3C
/* 091A28 80090E28 240400EB */   li    $a0, 235
/* 091A2C 80090E2C 8CF80000 */  lw    $t8, ($a3)
/* 091A30 80090E30 00000000 */  nop   
/* 091A34 80090E34 11380025 */  beq   $t1, $t8, .L80090ECC
/* 091A38 80090E38 8FBF001C */   lw    $ra, 0x1c($sp)
.L80090E3C:
/* 091A3C 80090E3C 0C000741 */  jal   func_80001D04
/* 091A40 80090E40 00002825 */   move  $a1, $zero
/* 091A44 80090E44 3C038012 */  lui   $v1, %hi(D_801269CC) # $v1, 0x8012
/* 091A48 80090E48 8C6369CC */  lw    $v1, %lo(D_801269CC)($v1)
/* 091A4C 80090E4C 3C028012 */  lui   $v0, %hi(D_801269C8) # $v0, 0x8012
/* 091A50 80090E50 8C4269C8 */  lw    $v0, %lo(D_801269C8)($v0)
/* 091A54 80090E54 0003C880 */  sll   $t9, $v1, 2
/* 091A58 80090E58 0323C823 */  subu  $t9, $t9, $v1
/* 091A5C 80090E5C 0019C880 */  sll   $t9, $t9, 2
/* 091A60 80090E60 00026840 */  sll   $t5, $v0, 1
/* 091A64 80090E64 032D7821 */  addu  $t7, $t9, $t5
/* 091A68 80090E68 3C0D8012 */  lui   $t5, %hi(D_80126480) # $t5, 0x8012
/* 091A6C 80090E6C 8DAD6480 */  lw    $t5, %lo(D_80126480)($t5)
/* 091A70 80090E70 3C0E8012 */  lui   $t6, %hi(D_801268E8) # $t6, 0x8012
/* 091A74 80090E74 006D0019 */  multu $v1, $t5
/* 091A78 80090E78 01CF7021 */  addu  $t6, $t6, $t7
/* 091A7C 80090E7C 0002C880 */  sll   $t9, $v0, 2
/* 091A80 80090E80 85CE68E8 */  lh    $t6, %lo(D_801268E8)($t6)
/* 091A84 80090E84 0322C821 */  addu  $t9, $t9, $v0
/* 091A88 80090E88 3C01800E */  lui   $at, %hi(gTrackIdForPreview) # $at, 0x800e
/* 091A8C 80090E8C 0019C980 */  sll   $t9, $t9, 6
/* 091A90 80090E90 44999000 */  mtc1  $t9, $f18
/* 091A94 80090E94 AC2EF4C4 */  sw    $t6, %lo(gTrackIdForPreview)($at)
/* 091A98 80090E98 468091A0 */  cvt.s.w $f6, $f18
/* 091A9C 80090E9C 3C01800E */  lui   $at, %hi(gTrackSelectRow) # $at, 0x800e
/* 091AA0 80090EA0 24780001 */  addiu $t8, $v1, 1
/* 091AA4 80090EA4 00007812 */  mflo  $t7
/* 091AA8 80090EA8 000F7023 */  negu  $t6, $t7
/* 091AAC 80090EAC 448E2000 */  mtc1  $t6, $f4
/* 091AB0 80090EB0 AC38F4C8 */  sw    $t8, %lo(gTrackSelectRow)($at)
/* 091AB4 80090EB4 468022A0 */  cvt.s.w $f10, $f4
/* 091AB8 80090EB8 3C018012 */  lui   $at, %hi(D_801269E8) # $at, 0x8012
/* 091ABC 80090EBC E42669E8 */  swc1  $f6, %lo(D_801269E8)($at)
/* 091AC0 80090EC0 3C018012 */  lui   $at, %hi(D_801269EC) # $at, 0x8012
/* 091AC4 80090EC4 E42A69EC */  swc1  $f10, %lo(D_801269EC)($at)
.L80090EC8:
/* 091AC8 80090EC8 8FBF001C */  lw    $ra, 0x1c($sp)
.L80090ECC:
/* 091ACC 80090ECC 27BD0048 */  addiu $sp, $sp, 0x48
/* 091AD0 80090ED0 03E00008 */  jr    $ra
/* 091AD4 80090ED4 00000000 */   nop   


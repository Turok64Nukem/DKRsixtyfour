.late_rodata
glabel jpt_800E85A0
.word L8009D944, L8009D944, L8009D944, L8009D91C, L8009D8F0, L8009D8D4, L8009D8D4, L8009D8D4, L8009D618, L8009D638, L8009D7A0, L8009D840, L8009D968, L8009D998, L8009D9B0, L8009D9B0

.text
glabel func_8009D360
/* 09DF60 8009D360 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09DF64 8009D364 AFBF001C */  sw    $ra, 0x1c($sp)
/* 09DF68 8009D368 0C01BAA4 */  jal   get_settings
/* 09DF6C 8009D36C 00000000 */   nop   
/* 09DF70 8009D370 3C03800E */  lui   $v1, %hi(D_800DF4DC) # $v1, 0x800e
/* 09DF74 8009D374 8063F4DC */  lb    $v1, %lo(D_800DF4DC)($v1)
/* 09DF78 8009D378 AFA20024 */  sw    $v0, 0x24($sp)
/* 09DF7C 8009D37C 10600007 */  beqz  $v1, .L8009D39C
/* 09DF80 8009D380 3C028012 */   lui   $v0, %hi(D_801264E2) # $v0, 0x8012
/* 09DF84 8009D384 244264E2 */  addiu $v0, %lo(D_801264E2) # addiu $v0, $v0, 0x64e2
/* 09DF88 8009D388 804E0000 */  lb    $t6, ($v0)
/* 09DF8C 8009D38C 00037823 */  negu  $t7, $v1
/* 09DF90 8009D390 15C00002 */  bnez  $t6, .L8009D39C
/* 09DF94 8009D394 00000000 */   nop   
/* 09DF98 8009D398 A04F0000 */  sb    $t7, ($v0)
.L8009D39C:
/* 09DF9C 8009D39C 3C028012 */  lui   $v0, %hi(D_801264E2) # $v0, 0x8012
/* 09DFA0 8009D3A0 244264E2 */  addiu $v0, %lo(D_801264E2) # addiu $v0, $v0, 0x64e2
/* 09DFA4 8009D3A4 80450000 */  lb    $a1, ($v0)
/* 09DFA8 8009D3A8 24180001 */  li    $t8, 1
/* 09DFAC 8009D3AC 14A00004 */  bnez  $a1, .L8009D3C0
/* 09DFB0 8009D3B0 00000000 */   nop   
/* 09DFB4 8009D3B4 A0580000 */  sb    $t8, ($v0)
/* 09DFB8 8009D3B8 80450000 */  lb    $a1, ($v0)
/* 09DFBC 8009D3BC 00000000 */  nop   
.L8009D3C0:
/* 09DFC0 8009D3C0 18A0000C */  blez  $a1, .L8009D3F4
/* 09DFC4 8009D3C4 28A10004 */   slti  $at, $a1, 4
/* 09DFC8 8009D3C8 1020000A */  beqz  $at, .L8009D3F4
/* 09DFCC 8009D3CC 24040001 */   li    $a0, 1
/* 09DFD0 8009D3D0 2419007C */  li    $t9, 124
/* 09DFD4 8009D3D4 AFB90010 */  sw    $t9, 0x10($sp)
/* 09DFD8 8009D3D8 24050018 */  li    $a1, 24
/* 09DFDC 8009D3DC 24060010 */  li    $a2, 16
/* 09DFE0 8009D3E0 0C0313B7 */  jal   func_800C4EDC
/* 09DFE4 8009D3E4 240700B8 */   li    $a3, 184
/* 09DFE8 8009D3E8 24040001 */  li    $a0, 1
/* 09DFEC 8009D3EC 0C0313DF */  jal   func_800C4F7C
/* 09DFF0 8009D3F0 00002825 */   move  $a1, $zero
.L8009D3F4:
/* 09DFF4 8009D3F4 AFA0002C */  sw    $zero, 0x2c($sp)
/* 09DFF8 8009D3F8 0C01A955 */  jal   get_buttons_pressed_from_player
/* 09DFFC 8009D3FC 00002025 */   move  $a0, $zero
/* 09E000 8009D400 3C018012 */  lui   $at, %hi(D_80126504) # $at, 0x8012
/* 09E004 8009D404 3C058012 */  lui   $a1, %hi(D_801264E2) # $a1, 0x8012
/* 09E008 8009D408 80A564E2 */  lb    $a1, %lo(D_801264E2)($a1)
/* 09E00C 8009D40C A0206504 */  sb    $zero, %lo(D_80126504)($at)
/* 09E010 8009D410 24010002 */  li    $at, 2
/* 09E014 8009D414 10A1000B */  beq   $a1, $at, .L8009D444
/* 09E018 8009D418 AFA20028 */   sw    $v0, 0x28($sp)
/* 09E01C 8009D41C 24010003 */  li    $at, 3
/* 09E020 8009D420 10A10032 */  beq   $a1, $at, .L8009D4EC
/* 09E024 8009D424 24040001 */   li    $a0, 1
/* 09E028 8009D428 24010062 */  li    $at, 98
/* 09E02C 8009D42C 10A10005 */  beq   $a1, $at, .L8009D444
/* 09E030 8009D430 24010063 */   li    $at, 99
/* 09E034 8009D434 10A1002D */  beq   $a1, $at, .L8009D4EC
/* 09E038 8009D438 00000000 */   nop   
/* 09E03C 8009D43C 1000006D */  b     .L8009D5F4
/* 09E040 8009D440 24AD0008 */   addiu $t5, $a1, 8
.L8009D444:
/* 09E044 8009D444 3C08800E */  lui   $t0, %hi(gMenuText) # $t0, 0x800e
/* 09E048 8009D448 8D08F4A0 */  lw    $t0, %lo(gMenuText)($t0)
/* 09E04C 8009D44C 24090001 */  li    $t1, 1
/* 09E050 8009D450 8D0700A0 */  lw    $a3, 0xa0($t0)
/* 09E054 8009D454 240A0004 */  li    $t2, 4
/* 09E058 8009D458 AFAA0014 */  sw    $t2, 0x14($sp)
/* 09E05C 8009D45C AFA90010 */  sw    $t1, 0x10($sp)
/* 09E060 8009D460 24040001 */  li    $a0, 1
/* 09E064 8009D464 24058000 */  li    $a1, -32768
/* 09E068 8009D468 0C03145A */  jal   func_800C5168
/* 09E06C 8009D46C 24060006 */   li    $a2, 6
/* 09E070 8009D470 3C0C800E */  lui   $t4, %hi(gMenuText) # $t4, 0x800e
/* 09E074 8009D474 8D8CF4A0 */  lw    $t4, %lo(gMenuText)($t4)
/* 09E078 8009D478 240B001E */  li    $t3, 30
/* 09E07C 8009D47C 3C018012 */  lui   $at, %hi(D_8012650E) # $at, 0x8012
/* 09E080 8009D480 A02B650E */  sb    $t3, %lo(D_8012650E)($at)
/* 09E084 8009D484 8D8400A4 */  lw    $a0, 0xa4($t4)
/* 09E088 8009D488 24050014 */  li    $a1, 20
/* 09E08C 8009D48C 0C02746E */  jal   func_8009D1B8
/* 09E090 8009D490 00003025 */   move  $a2, $zero
/* 09E094 8009D494 3C0D800E */  lui   $t5, %hi(gMenuText) # $t5, 0x800e
/* 09E098 8009D498 8DADF4A0 */  lw    $t5, %lo(gMenuText)($t5)
/* 09E09C 8009D49C 24050014 */  li    $a1, 20
/* 09E0A0 8009D4A0 8DA400A8 */  lw    $a0, 0xa8($t5)
/* 09E0A4 8009D4A4 0C02746E */  jal   func_8009D1B8
/* 09E0A8 8009D4A8 24060001 */   li    $a2, 1
/* 09E0AC 8009D4AC 3C0E800E */  lui   $t6, %hi(gMenuText) # $t6, 0x800e
/* 09E0B0 8009D4B0 8DCEF4A0 */  lw    $t6, %lo(gMenuText)($t6)
/* 09E0B4 8009D4B4 24050014 */  li    $a1, 20
/* 09E0B8 8009D4B8 8DC400AC */  lw    $a0, 0xac($t6)
/* 09E0BC 8009D4BC 0C02746E */  jal   func_8009D1B8
/* 09E0C0 8009D4C0 24060002 */   li    $a2, 2
/* 09E0C4 8009D4C4 3C0F800E */  lui   $t7, %hi(gMenuText) # $t7, 0x800e
/* 09E0C8 8009D4C8 8DEFF4A0 */  lw    $t7, %lo(gMenuText)($t7)
/* 09E0CC 8009D4CC 24050014 */  li    $a1, 20
/* 09E0D0 8009D4D0 8DE400B0 */  lw    $a0, 0xb0($t7)
/* 09E0D4 8009D4D4 0C02746E */  jal   func_8009D1B8
/* 09E0D8 8009D4D8 24060003 */   li    $a2, 3
/* 09E0DC 8009D4DC 3C058012 */  lui   $a1, %hi(D_801264E2) # $a1, 0x8012
/* 09E0E0 8009D4E0 80A564E2 */  lb    $a1, %lo(D_801264E2)($a1)
/* 09E0E4 8009D4E4 10000043 */  b     .L8009D5F4
/* 09E0E8 8009D4E8 24AD0008 */   addiu $t5, $a1, 8
.L8009D4EC:
/* 09E0EC 8009D4EC 3C18800E */  lui   $t8, %hi(gMenuText) # $t8, 0x800e
/* 09E0F0 8009D4F0 8F18F4A0 */  lw    $t8, %lo(gMenuText)($t8)
/* 09E0F4 8009D4F4 24190001 */  li    $t9, 1
/* 09E0F8 8009D4F8 8F0700B4 */  lw    $a3, 0xb4($t8)
/* 09E0FC 8009D4FC 24080004 */  li    $t0, 4
/* 09E100 8009D500 AFA80014 */  sw    $t0, 0x14($sp)
/* 09E104 8009D504 AFB90010 */  sw    $t9, 0x10($sp)
/* 09E108 8009D508 24058000 */  li    $a1, -32768
/* 09E10C 8009D50C 0C03145A */  jal   func_800C5168
/* 09E110 8009D510 24060006 */   li    $a2, 6
/* 09E114 8009D514 8FAA0024 */  lw    $t2, 0x24($sp)
/* 09E118 8009D518 2409001E */  li    $t1, 30
/* 09E11C 8009D51C 3C018012 */  lui   $at, %hi(D_8012650E) # $at, 0x8012
/* 09E120 8009D520 A029650E */  sb    $t1, %lo(D_8012650E)($at)
/* 09E124 8009D524 95430014 */  lhu   $v1, 0x14($t2)
/* 09E128 8009D528 3C01800E */  lui   $at, %hi(D_800DF4EC) # $at, 0x800e
/* 09E12C 8009D52C 306B0001 */  andi  $t3, $v1, 1
/* 09E130 8009D530 1160000C */  beqz  $t3, .L8009D564
/* 09E134 8009D534 306C0008 */   andi  $t4, $v1, 8
/* 09E138 8009D538 3C0D800E */  lui   $t5, %hi(gMenuText) # $t5, 0x800e
/* 09E13C 8009D53C 8DADF4A0 */  lw    $t5, %lo(gMenuText)($t5)
/* 09E140 8009D540 A02CF4EC */  sb    $t4, %lo(D_800DF4EC)($at)
/* 09E144 8009D544 8DA400B8 */  lw    $a0, 0xb8($t5)
/* 09E148 8009D548 24050014 */  li    $a1, 20
/* 09E14C 8009D54C 0C02746E */  jal   func_8009D1B8
/* 09E150 8009D550 00003025 */   move  $a2, $zero
/* 09E154 8009D554 8FAE0024 */  lw    $t6, 0x24($sp)
/* 09E158 8009D558 00000000 */  nop   
/* 09E15C 8009D55C 95C30014 */  lhu   $v1, 0x14($t6)
/* 09E160 8009D560 00000000 */  nop   
.L8009D564:
/* 09E164 8009D564 306F0002 */  andi  $t7, $v1, 2
/* 09E168 8009D568 11E0000D */  beqz  $t7, .L8009D5A0
/* 09E16C 8009D56C 30780010 */   andi  $t8, $v1, 0x10
/* 09E170 8009D570 3C19800E */  lui   $t9, %hi(gMenuText) # $t9, 0x800e
/* 09E174 8009D574 8F39F4A0 */  lw    $t9, %lo(gMenuText)($t9)
/* 09E178 8009D578 3C01800E */  lui   $at, %hi(D_800DF4EC) # $at, 0x800e
/* 09E17C 8009D57C A038F4EC */  sb    $t8, %lo(D_800DF4EC)($at)
/* 09E180 8009D580 8F2400BC */  lw    $a0, 0xbc($t9)
/* 09E184 8009D584 24050014 */  li    $a1, 20
/* 09E188 8009D588 0C02746E */  jal   func_8009D1B8
/* 09E18C 8009D58C 24060001 */   li    $a2, 1
/* 09E190 8009D590 8FA80024 */  lw    $t0, 0x24($sp)
/* 09E194 8009D594 00000000 */  nop   
/* 09E198 8009D598 95030014 */  lhu   $v1, 0x14($t0)
/* 09E19C 8009D59C 00000000 */  nop   
.L8009D5A0:
/* 09E1A0 8009D5A0 30690004 */  andi  $t1, $v1, 4
/* 09E1A4 8009D5A4 11200009 */  beqz  $t1, .L8009D5CC
/* 09E1A8 8009D5A8 306A0020 */   andi  $t2, $v1, 0x20
/* 09E1AC 8009D5AC 3C0B800E */  lui   $t3, %hi(gMenuText) # $t3, 0x800e
/* 09E1B0 8009D5B0 8D6BF4A0 */  lw    $t3, %lo(gMenuText)($t3)
/* 09E1B4 8009D5B4 3C01800E */  lui   $at, %hi(D_800DF4EC) # $at, 0x800e
/* 09E1B8 8009D5B8 A02AF4EC */  sb    $t2, %lo(D_800DF4EC)($at)
/* 09E1BC 8009D5BC 8D6400C0 */  lw    $a0, 0xc0($t3)
/* 09E1C0 8009D5C0 24050014 */  li    $a1, 20
/* 09E1C4 8009D5C4 0C02746E */  jal   func_8009D1B8
/* 09E1C8 8009D5C8 24060002 */   li    $a2, 2
.L8009D5CC:
/* 09E1CC 8009D5CC 3C0C800E */  lui   $t4, %hi(gMenuText) # $t4, 0x800e
/* 09E1D0 8009D5D0 8D8CF4A0 */  lw    $t4, %lo(gMenuText)($t4)
/* 09E1D4 8009D5D4 24050014 */  li    $a1, 20
/* 09E1D8 8009D5D8 8D8400B0 */  lw    $a0, 0xb0($t4)
/* 09E1DC 8009D5DC 0C02746E */  jal   func_8009D1B8
/* 09E1E0 8009D5E0 24060003 */   li    $a2, 3
/* 09E1E4 8009D5E4 3C058012 */  lui   $a1, %hi(D_801264E2) # $a1, 0x8012
/* 09E1E8 8009D5E8 80A564E2 */  lb    $a1, %lo(D_801264E2)($a1)
/* 09E1EC 8009D5EC 00000000 */  nop   
/* 09E1F0 8009D5F0 24AD0008 */  addiu $t5, $a1, 8
.L8009D5F4:
/* 09E1F4 8009D5F4 2DA10010 */  sltiu $at, $t5, 0x10
/* 09E1F8 8009D5F8 102000FA */  beqz  $at, .L8009D9E4
/* 09E1FC 8009D5FC 000D6880 */   sll   $t5, $t5, 2
/* 09E200 8009D600 3C01800F */  lui   $at, %hi(jpt_800E85A0) # $at, 0x800f
/* 09E204 8009D604 002D0821 */  addu  $at, $at, $t5
/* 09E208 8009D608 8C2D85A0 */  lw    $t5, %lo(jpt_800E85A0)($at)
/* 09E20C 8009D60C 00000000 */  nop   
/* 09E210 8009D610 01A00008 */  jr    $t5
/* 09E214 8009D614 00000000 */   nop   
glabel L8009D618
/* 09E218 8009D618 0C030C7B */  jal   func_800C31EC
/* 09E21C 8009D61C 24040007 */   li    $a0, 7
/* 09E220 8009D620 24020001 */  li    $v0, 1
/* 09E224 8009D624 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E228 8009D628 A02264E2 */  sb    $v0, %lo(D_801264E2)($at)
/* 09E22C 8009D62C 3C01800E */  lui   $at, %hi(D_800DF4D8) # $at, 0x800e
/* 09E230 8009D630 100000EC */  b     .L8009D9E4
/* 09E234 8009D634 A022F4D8 */   sb    $v0, %lo(D_800DF4D8)($at)
glabel L8009D638
/* 09E238 8009D638 3C0E800E */  lui   $t6, %hi(gMenuText) # $t6, 0x800e
/* 09E23C 8009D63C 8DCEF4A0 */  lw    $t6, %lo(gMenuText)($t6)
/* 09E240 8009D640 3C01800E */  lui   $at, %hi(D_800DF4DC) # $at, 0x800e
/* 09E244 8009D644 A020F4DC */  sb    $zero, %lo(D_800DF4DC)($at)
/* 09E248 8009D648 8DC70090 */  lw    $a3, 0x90($t6)
/* 09E24C 8009D64C 240F0001 */  li    $t7, 1
/* 09E250 8009D650 24180004 */  li    $t8, 4
/* 09E254 8009D654 AFB80014 */  sw    $t8, 0x14($sp)
/* 09E258 8009D658 AFAF0010 */  sw    $t7, 0x10($sp)
/* 09E25C 8009D65C 24040001 */  li    $a0, 1
/* 09E260 8009D660 24058000 */  li    $a1, -32768
/* 09E264 8009D664 0C03145A */  jal   func_800C5168
/* 09E268 8009D668 24060006 */   li    $a2, 6
/* 09E26C 8009D66C 3C08800E */  lui   $t0, %hi(gMenuText) # $t0, 0x800e
/* 09E270 8009D670 8D08F4A0 */  lw    $t0, %lo(gMenuText)($t0)
/* 09E274 8009D674 2419001E */  li    $t9, 30
/* 09E278 8009D678 3C018012 */  lui   $at, %hi(D_8012650E) # $at, 0x8012
/* 09E27C 8009D67C A039650E */  sb    $t9, %lo(D_8012650E)($at)
/* 09E280 8009D680 8D040094 */  lw    $a0, 0x94($t0)
/* 09E284 8009D684 24050014 */  li    $a1, 20
/* 09E288 8009D688 0C02746E */  jal   func_8009D1B8
/* 09E28C 8009D68C 00003025 */   move  $a2, $zero
/* 09E290 8009D690 8FA90024 */  lw    $t1, 0x24($sp)
/* 09E294 8009D694 3C0C800E */  lui   $t4, %hi(gMenuText) # $t4, 0x800e
/* 09E298 8009D698 952A0014 */  lhu   $t2, 0x14($t1)
/* 09E29C 8009D69C 00000000 */  nop   
/* 09E2A0 8009D6A0 314B0007 */  andi  $t3, $t2, 7
/* 09E2A4 8009D6A4 11600006 */  beqz  $t3, .L8009D6C0
/* 09E2A8 8009D6A8 00000000 */   nop   
/* 09E2AC 8009D6AC 8D8CF4A0 */  lw    $t4, %lo(gMenuText)($t4)
/* 09E2B0 8009D6B0 24050014 */  li    $a1, 20
/* 09E2B4 8009D6B4 8D84009C */  lw    $a0, 0x9c($t4)
/* 09E2B8 8009D6B8 0C02746E */  jal   func_8009D1B8
/* 09E2BC 8009D6BC 24060001 */   li    $a2, 1
.L8009D6C0:
/* 09E2C0 8009D6C0 3C0D800E */  lui   $t5, %hi(gMenuText) # $t5, 0x800e
/* 09E2C4 8009D6C4 8DADF4A0 */  lw    $t5, %lo(gMenuText)($t5)
/* 09E2C8 8009D6C8 24050014 */  li    $a1, 20
/* 09E2CC 8009D6CC 8DA40014 */  lw    $a0, 0x14($t5)
/* 09E2D0 8009D6D0 0C02746E */  jal   func_8009D1B8
/* 09E2D4 8009D6D4 24060002 */   li    $a2, 2
/* 09E2D8 8009D6D8 0C02749B */  jal   func_8009D26C
/* 09E2DC 8009D6DC 00000000 */   nop   
/* 09E2E0 8009D6E0 8FAE0028 */  lw    $t6, 0x28($sp)
/* 09E2E4 8009D6E4 8FB90028 */  lw    $t9, 0x28($sp)
/* 09E2E8 8009D6E8 31CF4000 */  andi  $t7, $t6, 0x4000
/* 09E2EC 8009D6EC 11E00008 */  beqz  $t7, .L8009D710
/* 09E2F0 8009D6F0 33288000 */   andi  $t0, $t9, 0x8000
/* 09E2F4 8009D6F4 24180003 */  li    $t8, 3
/* 09E2F8 8009D6F8 AFB8002C */  sw    $t8, 0x2c($sp)
/* 09E2FC 8009D6FC 24040241 */  li    $a0, 577
/* 09E300 8009D700 0C000741 */  jal   func_80001D04
/* 09E304 8009D704 00002825 */   move  $a1, $zero
/* 09E308 8009D708 100000B7 */  b     .L8009D9E8
/* 09E30C 8009D70C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8009D710:
/* 09E310 8009D710 110000B4 */  beqz  $t0, .L8009D9E4
/* 09E314 8009D714 240400EF */   li    $a0, 239
/* 09E318 8009D718 0C000741 */  jal   func_80001D04
/* 09E31C 8009D71C 00002825 */   move  $a1, $zero
/* 09E320 8009D720 3C038012 */  lui   $v1, %hi(D_80126516) # $v1, 0x8012
/* 09E324 8009D724 80636516 */  lb    $v1, %lo(D_80126516)($v1)
/* 09E328 8009D728 240B0002 */  li    $t3, 2
/* 09E32C 8009D72C 10600014 */  beqz  $v1, .L8009D780
/* 09E330 8009D730 3C018012 */   lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E334 8009D734 24010001 */  li    $at, 1
/* 09E338 8009D738 10610006 */  beq   $v1, $at, .L8009D754
/* 09E33C 8009D73C 24090003 */   li    $t1, 3
/* 09E340 8009D740 24010002 */  li    $at, 2
/* 09E344 8009D744 1061000C */  beq   $v1, $at, .L8009D778
/* 09E348 8009D748 240A0003 */   li    $t2, 3
/* 09E34C 8009D74C 100000A6 */  b     .L8009D9E8
/* 09E350 8009D750 8FBF001C */   lw    $ra, 0x1c($sp)
.L8009D754:
/* 09E354 8009D754 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E358 8009D758 A02964E2 */  sb    $t1, %lo(D_801264E2)($at)
/* 09E35C 8009D75C 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E360 8009D760 A02064D8 */  sb    $zero, %lo(D_801264D8)($at)
/* 09E364 8009D764 24040239 */  li    $a0, 569
/* 09E368 8009D768 0C00EB0F */  jal   func_8003AC3C
/* 09E36C 8009D76C 24050001 */   li    $a1, 1
/* 09E370 8009D770 1000009D */  b     .L8009D9E8
/* 09E374 8009D774 8FBF001C */   lw    $ra, 0x1c($sp)
.L8009D778:
/* 09E378 8009D778 1000009A */  b     .L8009D9E4
/* 09E37C 8009D77C AFAA002C */   sw    $t2, 0x2c($sp)
.L8009D780:
/* 09E380 8009D780 A02B64E2 */  sb    $t3, %lo(D_801264E2)($at)
/* 09E384 8009D784 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E388 8009D788 A02064D8 */  sb    $zero, %lo(D_801264D8)($at)
/* 09E38C 8009D78C 24040234 */  li    $a0, 564
/* 09E390 8009D790 0C00EB0F */  jal   func_8003AC3C
/* 09E394 8009D794 24050001 */   li    $a1, 1
/* 09E398 8009D798 10000093 */  b     .L8009D9E8
/* 09E39C 8009D79C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8009D7A0
/* 09E3A0 8009D7A0 0C02749B */  jal   func_8009D26C
/* 09E3A4 8009D7A4 00000000 */   nop   
/* 09E3A8 8009D7A8 8FAC0028 */  lw    $t4, 0x28($sp)
/* 09E3AC 8009D7AC 8FAF0028 */  lw    $t7, 0x28($sp)
/* 09E3B0 8009D7B0 318D4000 */  andi  $t5, $t4, 0x4000
/* 09E3B4 8009D7B4 11A0000D */  beqz  $t5, .L8009D7EC
/* 09E3B8 8009D7B8 31F88000 */   andi  $t8, $t7, 0x8000
/* 09E3BC 8009D7BC 24040241 */  li    $a0, 577
/* 09E3C0 8009D7C0 0C000741 */  jal   func_80001D04
/* 09E3C4 8009D7C4 00002825 */   move  $a1, $zero
/* 09E3C8 8009D7C8 24040238 */  li    $a0, 568
/* 09E3CC 8009D7CC 0C00EB0F */  jal   func_8003AC3C
/* 09E3D0 8009D7D0 24050001 */   li    $a1, 1
/* 09E3D4 8009D7D4 240E0001 */  li    $t6, 1
/* 09E3D8 8009D7D8 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E3DC 8009D7DC A02E64E2 */  sb    $t6, %lo(D_801264E2)($at)
/* 09E3E0 8009D7E0 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E3E4 8009D7E4 1000007F */  b     .L8009D9E4
/* 09E3E8 8009D7E8 A02064D8 */   sb    $zero, %lo(D_801264D8)($at)
.L8009D7EC:
/* 09E3EC 8009D7EC 1300007D */  beqz  $t8, .L8009D9E4
/* 09E3F0 8009D7F0 3C028012 */   lui   $v0, %hi(D_80126516) # $v0, 0x8012
/* 09E3F4 8009D7F4 80426516 */  lb    $v0, %lo(D_80126516)($v0)
/* 09E3F8 8009D7F8 24010003 */  li    $at, 3
/* 09E3FC 8009D7FC 10410007 */  beq   $v0, $at, .L8009D81C
/* 09E400 8009D800 24090001 */   li    $t1, 1
/* 09E404 8009D804 34590080 */  ori   $t9, $v0, 0x80
/* 09E408 8009D808 24080062 */  li    $t0, 98
/* 09E40C 8009D80C 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E410 8009D810 AFB9002C */  sw    $t9, 0x2c($sp)
/* 09E414 8009D814 10000073 */  b     .L8009D9E4
/* 09E418 8009D818 A02864E2 */   sb    $t0, %lo(D_801264E2)($at)
.L8009D81C:
/* 09E41C 8009D81C 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E420 8009D820 A02964E2 */  sb    $t1, %lo(D_801264E2)($at)
/* 09E424 8009D824 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E428 8009D828 A02064D8 */  sb    $zero, %lo(D_801264D8)($at)
/* 09E42C 8009D82C 24040238 */  li    $a0, 568
/* 09E430 8009D830 0C00EB0F */  jal   func_8003AC3C
/* 09E434 8009D834 24050001 */   li    $a1, 1
/* 09E438 8009D838 1000006B */  b     .L8009D9E8
/* 09E43C 8009D83C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8009D840
/* 09E440 8009D840 0C02749B */  jal   func_8009D26C
/* 09E444 8009D844 00000000 */   nop   
/* 09E448 8009D848 8FA30028 */  lw    $v1, 0x28($sp)
/* 09E44C 8009D84C 24040241 */  li    $a0, 577
/* 09E450 8009D850 306A4000 */  andi  $t2, $v1, 0x4000
/* 09E454 8009D854 15400007 */  bnez  $t2, .L8009D874
/* 09E458 8009D858 30628000 */   andi  $v0, $v1, 0x8000
/* 09E45C 8009D85C 10400011 */  beqz  $v0, .L8009D8A4
/* 09E460 8009D860 3C0B8012 */   lui   $t3, %hi(D_80126516) # $t3, 0x8012
/* 09E464 8009D864 816B6516 */  lb    $t3, %lo(D_80126516)($t3)
/* 09E468 8009D868 24010003 */  li    $at, 3
/* 09E46C 8009D86C 1561000D */  bne   $t3, $at, .L8009D8A4
/* 09E470 8009D870 00000000 */   nop   
.L8009D874:
/* 09E474 8009D874 0C000741 */  jal   func_80001D04
/* 09E478 8009D878 00002825 */   move  $a1, $zero
/* 09E47C 8009D87C 2404023A */  li    $a0, 570
/* 09E480 8009D880 0C00EB0F */  jal   func_8003AC3C
/* 09E484 8009D884 24050001 */   li    $a1, 1
/* 09E488 8009D888 240C0001 */  li    $t4, 1
/* 09E48C 8009D88C 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E490 8009D890 A02C64E2 */  sb    $t4, %lo(D_801264E2)($at)
/* 09E494 8009D894 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E498 8009D898 240D0003 */  li    $t5, 3
/* 09E49C 8009D89C 10000051 */  b     .L8009D9E4
/* 09E4A0 8009D8A0 A02D64D8 */   sb    $t5, %lo(D_801264D8)($at)
.L8009D8A4:
/* 09E4A4 8009D8A4 1040004F */  beqz  $v0, .L8009D9E4
/* 09E4A8 8009D8A8 3C0E8012 */   lui   $t6, %hi(D_80126516) # $t6, 0x8012
/* 09E4AC 8009D8AC 81CE6516 */  lb    $t6, %lo(D_80126516)($t6)
/* 09E4B0 8009D8B0 240400EF */  li    $a0, 239
/* 09E4B4 8009D8B4 35CF0040 */  ori   $t7, $t6, 0x40
/* 09E4B8 8009D8B8 AFAF002C */  sw    $t7, 0x2c($sp)
/* 09E4BC 8009D8BC 0C000741 */  jal   func_80001D04
/* 09E4C0 8009D8C0 00002825 */   move  $a1, $zero
/* 09E4C4 8009D8C4 24180063 */  li    $t8, 99
/* 09E4C8 8009D8C8 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E4CC 8009D8CC 10000045 */  b     .L8009D9E4
/* 09E4D0 8009D8D0 A03864E2 */   sb    $t8, %lo(D_801264E2)($at)
glabel L8009D8D4
/* 09E4D4 8009D8D4 24190008 */  li    $t9, 8
/* 09E4D8 8009D8D8 0C030C7B */  jal   func_800C31EC
/* 09E4DC 8009D8DC 03252023 */   subu  $a0, $t9, $a1
/* 09E4E0 8009D8E0 24080004 */  li    $t0, 4
/* 09E4E4 8009D8E4 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E4E8 8009D8E8 1000003E */  b     .L8009D9E4
/* 09E4EC 8009D8EC A02864E2 */   sb    $t0, %lo(D_801264E2)($at)
glabel L8009D8F0
/* 09E4F0 8009D8F0 0C030C7B */  jal   func_800C31EC
/* 09E4F4 8009D8F4 24040011 */   li    $a0, 17
/* 09E4F8 8009D8F8 3C01800E */  lui   $at, %hi(D_800DF4DC) # $at, 0x800e
/* 09E4FC 8009D8FC A020F4DC */  sb    $zero, %lo(D_800DF4DC)($at)
/* 09E500 8009D900 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E504 8009D904 24090001 */  li    $t1, 1
/* 09E508 8009D908 A02964E2 */  sb    $t1, %lo(D_801264E2)($at)
/* 09E50C 8009D90C 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E510 8009D910 240A0003 */  li    $t2, 3
/* 09E514 8009D914 10000033 */  b     .L8009D9E4
/* 09E518 8009D918 A02A64D8 */   sb    $t2, %lo(D_801264D8)($at)
glabel L8009D91C
/* 09E51C 8009D91C 0C030C7B */  jal   func_800C31EC
/* 09E520 8009D920 24040015 */   li    $a0, 21
/* 09E524 8009D924 3C01800E */  lui   $at, %hi(D_800DF4DC) # $at, 0x800e
/* 09E528 8009D928 A020F4DC */  sb    $zero, %lo(D_800DF4DC)($at)
/* 09E52C 8009D92C 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E530 8009D930 240B0007 */  li    $t3, 7
/* 09E534 8009D934 A02B64E2 */  sb    $t3, %lo(D_801264E2)($at)
/* 09E538 8009D938 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E53C 8009D93C 10000029 */  b     .L8009D9E4
/* 09E540 8009D940 A02064D8 */   sb    $zero, %lo(D_801264D8)($at)
glabel L8009D944
/* 09E544 8009D944 240C000C */  li    $t4, 12
/* 09E548 8009D948 0C030C7B */  jal   func_800C31EC
/* 09E54C 8009D94C 01852023 */   subu  $a0, $t4, $a1
/* 09E550 8009D950 240D0006 */  li    $t5, 6
/* 09E554 8009D954 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E558 8009D958 A02D64E2 */  sb    $t5, %lo(D_801264E2)($at)
/* 09E55C 8009D95C 3C018012 */  lui   $at, %hi(D_801264D8) # $at, 0x8012
/* 09E560 8009D960 10000020 */  b     .L8009D9E4
/* 09E564 8009D964 A02064D8 */   sb    $zero, %lo(D_801264D8)($at)
glabel L8009D968
/* 09E568 8009D968 3C0E800E */  lui   $t6, %hi(D_800DF4DC) # $t6, 0x800e
/* 09E56C 8009D96C 81CEF4DC */  lb    $t6, %lo(D_800DF4DC)($t6)
/* 09E570 8009D970 24190005 */  li    $t9, 5
/* 09E574 8009D974 25CFFFFF */  addiu $t7, $t6, -1
/* 09E578 8009D978 35F80040 */  ori   $t8, $t7, 0x40
/* 09E57C 8009D97C 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E580 8009D980 AFB8002C */  sw    $t8, 0x2c($sp)
/* 09E584 8009D984 A03964E2 */  sb    $t9, %lo(D_801264E2)($at)
/* 09E588 8009D988 0C031588 */  jal   func_800C5620
/* 09E58C 8009D98C 24040001 */   li    $a0, 1
/* 09E590 8009D990 10000015 */  b     .L8009D9E8
/* 09E594 8009D994 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8009D998
/* 09E598 8009D998 3C01800E */  lui   $at, %hi(D_800DF4DC) # $at, 0x800e
/* 09E59C 8009D99C A020F4DC */  sb    $zero, %lo(D_800DF4DC)($at)
/* 09E5A0 8009D9A0 0C031588 */  jal   func_800C5620
/* 09E5A4 8009D9A4 24040001 */   li    $a0, 1
/* 09E5A8 8009D9A8 1000000F */  b     .L8009D9E8
/* 09E5AC 8009D9AC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8009D9B0
/* 09E5B0 8009D9B0 24010007 */  li    $at, 7
/* 09E5B4 8009D9B4 14A10002 */  bne   $a1, $at, .L8009D9C0
/* 09E5B8 8009D9B8 24020004 */   li    $v0, 4
/* 09E5BC 8009D9BC 24020003 */  li    $v0, 3
.L8009D9C0:
/* 09E5C0 8009D9C0 3C01800E */  lui   $at, %hi(D_800DF4E0) # $at, 0x800e
/* 09E5C4 8009D9C4 A020F4E0 */  sb    $zero, %lo(D_800DF4E0)($at)
/* 09E5C8 8009D9C8 24040001 */  li    $a0, 1
/* 09E5CC 8009D9CC 0C031588 */  jal   func_800C5620
/* 09E5D0 8009D9D0 AFA2002C */   sw    $v0, 0x2c($sp)
/* 09E5D4 8009D9D4 3C01800E */  lui   $at, %hi(D_800DF4DC) # $at, 0x800e
/* 09E5D8 8009D9D8 A020F4DC */  sb    $zero, %lo(D_800DF4DC)($at)
/* 09E5DC 8009D9DC 3C018012 */  lui   $at, %hi(D_801264E2) # $at, 0x8012
/* 09E5E0 8009D9E0 A02064E2 */  sb    $zero, %lo(D_801264E2)($at)
.L8009D9E4:
/* 09E5E4 8009D9E4 8FBF001C */  lw    $ra, 0x1c($sp)
.L8009D9E8:
/* 09E5E8 8009D9E8 8FA2002C */  lw    $v0, 0x2c($sp)
/* 09E5EC 8009D9EC 03E00008 */  jr    $ra
/* 09E5F0 8009D9F0 27BD0030 */   addiu $sp, $sp, 0x30


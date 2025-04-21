
user/target/riscv64gc-unknown-none-elf/release/bad_address:	file format elf64-littleriscv

Disassembly of section .text:

0000000080400588 <_start>:
80400588: 1141         	addi	sp, sp, -0x10
8040058a: e406         	sd	ra, 0x8(sp)
8040058c: e022         	sd	s0, 0x0(sp)
8040058e: 0800         	addi	s0, sp, 0x10

0000000080400590 <.Lpcrel_hi8>:
80400590: 00000517     	auipc	a0, 0x0

0000000080400594 <.Lpcrel_hi9>:
80400594: 00000597     	auipc	a1, 0x0
80400598: a7050513     	addi	a0, a0, -0x590
8040059c: a6c58593     	addi	a1, a1, -0x594
804005a0: 00a5f963     	bgeu	a1, a0, 0x804005b2 <.Lpcrel_hi9+0x1e>
804005a4: 00158613     	addi	a2, a1, 0x1
804005a8: 00058023     	sb	zero, 0x0(a1)
804005ac: 85b2         	mv	a1, a2
804005ae: fec51be3     	bne	a0, a2, 0x804005a4 <.Lpcrel_hi9+0x10>
804005b2: 00000097     	auipc	ra, 0x0
804005b6: 018080e7     	jalr	0x18(ra) <main>
804005ba: 2501         	sext.w	a0, a0
804005bc: 05d00893     	li	a7, 0x5d
804005c0: 4581         	li	a1, 0x0
804005c2: 4601         	li	a2, 0x0
804005c4: 00000073     	ecall
804005c8: a001         	j	0x804005c8 <.Lpcrel_hi9+0x34>

00000000804005ca <main>:
804005ca: 715d         	addi	sp, sp, -0x50
804005cc: e486         	sd	ra, 0x48(sp)
804005ce: e0a2         	sd	s0, 0x40(sp)
804005d0: fc26         	sd	s1, 0x38(sp)
804005d2: f84a         	sd	s2, 0x30(sp)
804005d4: 0880         	addi	s0, sp, 0x50

00000000804005d6 <.Lpcrel_hi0>:
804005d6: 00000517     	auipc	a0, 0x0
804005da: 4905         	li	s2, 0x1
804005dc: fc043823     	sd	zero, -0x30(s0)
804005e0: 44a1         	li	s1, 0x8
804005e2: a5a50513     	addi	a0, a0, -0x5a6
804005e6: faa43823     	sd	a0, -0x50(s0)
804005ea: fb243c23     	sd	s2, -0x48(s0)
804005ee: fc943023     	sd	s1, -0x40(s0)
804005f2: fc043423     	sd	zero, -0x38(s0)
804005f6: fb040513     	addi	a0, s0, -0x50
804005fa: 00000097     	auipc	ra, 0x0
804005fe: 1d4080e7     	jalr	0x1d4(ra) <_ZN8user_lib7console5print17hcdc4880cd21399b7E>
80400602: 37ab7537     	lui	a0, 0x37ab7
80400606: 02a00593     	li	a1, 0x2a
8040060a: 050a         	slli	a0, a0, 0x2
8040060c: eeb507a3     	sb	a1, -0x111(a0)

0000000080400610 <.Lpcrel_hi1>:
80400610: 00000517     	auipc	a0, 0x0
80400614: fc043823     	sd	zero, -0x30(s0)
80400618: a6850513     	addi	a0, a0, -0x598
8040061c: faa43823     	sd	a0, -0x50(s0)
80400620: fb243c23     	sd	s2, -0x48(s0)
80400624: fc943023     	sd	s1, -0x40(s0)
80400628: fc043423     	sd	zero, -0x38(s0)
8040062c: fb040513     	addi	a0, s0, -0x50
80400630: 00000097     	auipc	ra, 0x0
80400634: 19e080e7     	jalr	0x19e(ra) <_ZN8user_lib7console5print17hcdc4880cd21399b7E>
80400638: 557d         	li	a0, -0x1
8040063a: 60a6         	ld	ra, 0x48(sp)
8040063c: 6406         	ld	s0, 0x40(sp)
8040063e: 74e2         	ld	s1, 0x38(sp)
80400640: 7942         	ld	s2, 0x30(sp)
80400642: 6161         	addi	sp, sp, 0x50
80400644: 8082         	ret

0000000080400646 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hef1d3f82a29fba68E>:
80400646: 1141         	addi	sp, sp, -0x10
80400648: e406         	sd	ra, 0x8(sp)
8040064a: e022         	sd	s0, 0x0(sp)
8040064c: 0800         	addi	s0, sp, 0x10
8040064e: 6110         	ld	a2, 0x0(a0)
80400650: 6514         	ld	a3, 0x8(a0)
80400652: 872e         	mv	a4, a1
80400654: 8532         	mv	a0, a2
80400656: 85b6         	mv	a1, a3
80400658: 863a         	mv	a2, a4
8040065a: 60a2         	ld	ra, 0x8(sp)
8040065c: 6402         	ld	s0, 0x0(sp)
8040065e: 0141         	addi	sp, sp, 0x10
80400660: 00001317     	auipc	t1, 0x1
80400664: 9a430067     	jr	-0x65c(t1) <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hf6a8e4c2ef3676e7E>

0000000080400668 <_ZN4core3fmt5Write10write_char17hcd7bad9bc3614f0cE>:
80400668: 1101         	addi	sp, sp, -0x20
8040066a: ec06         	sd	ra, 0x18(sp)
8040066c: e822         	sd	s0, 0x10(sp)
8040066e: 1000         	addi	s0, sp, 0x20
80400670: 08000513     	li	a0, 0x80
80400674: fe042623     	sw	zero, -0x14(s0)
80400678: 00a5f663     	bgeu	a1, a0, 0x80400684 <_ZN4core3fmt5Write10write_char17hcd7bad9bc3614f0cE+0x1c>
8040067c: feb40623     	sb	a1, -0x14(s0)
80400680: 4605         	li	a2, 0x1
80400682: a069         	j	0x8040070c <_ZN4core3fmt5Write10write_char17hcd7bad9bc3614f0cE+0xa4>
80400684: 00b5d51b     	srliw	a0, a1, 0xb
80400688: ed19         	bnez	a0, 0x804006a6 <_ZN4core3fmt5Write10write_char17hcd7bad9bc3614f0cE+0x3e>
8040068a: 0065d513     	srli	a0, a1, 0x6
8040068e: 03f5f593     	andi	a1, a1, 0x3f
80400692: 0c056513     	ori	a0, a0, 0xc0
80400696: 08058593     	addi	a1, a1, 0x80
8040069a: fea40623     	sb	a0, -0x14(s0)
8040069e: feb406a3     	sb	a1, -0x13(s0)
804006a2: 4609         	li	a2, 0x2
804006a4: a0a5         	j	0x8040070c <_ZN4core3fmt5Write10write_char17hcd7bad9bc3614f0cE+0xa4>
804006a6: 0105d51b     	srliw	a0, a1, 0x10
804006aa: e515         	bnez	a0, 0x804006d6 <_ZN4core3fmt5Write10write_char17hcd7bad9bc3614f0cE+0x6e>
804006ac: 00c5d513     	srli	a0, a1, 0xc
804006b0: 03459613     	slli	a2, a1, 0x34
804006b4: 03f5f593     	andi	a1, a1, 0x3f
804006b8: 0e056513     	ori	a0, a0, 0xe0
804006bc: 9269         	srli	a2, a2, 0x3a
804006be: 08058593     	addi	a1, a1, 0x80
804006c2: 08060613     	addi	a2, a2, 0x80
804006c6: fea40623     	sb	a0, -0x14(s0)
804006ca: fec406a3     	sb	a2, -0x13(s0)
804006ce: feb40723     	sb	a1, -0x12(s0)
804006d2: 460d         	li	a2, 0x3
804006d4: a825         	j	0x8040070c <_ZN4core3fmt5Write10write_char17hcd7bad9bc3614f0cE+0xa4>
804006d6: 0125d513     	srli	a0, a1, 0x12
804006da: 02e59613     	slli	a2, a1, 0x2e
804006de: 03459693     	slli	a3, a1, 0x34
804006e2: 03f5f593     	andi	a1, a1, 0x3f
804006e6: 0f056513     	ori	a0, a0, 0xf0
804006ea: 9269         	srli	a2, a2, 0x3a
804006ec: 92e9         	srli	a3, a3, 0x3a
804006ee: 08058593     	addi	a1, a1, 0x80
804006f2: 08060613     	addi	a2, a2, 0x80
804006f6: 08068693     	addi	a3, a3, 0x80
804006fa: fea40623     	sb	a0, -0x14(s0)
804006fe: fec406a3     	sb	a2, -0x13(s0)
80400702: fed40723     	sb	a3, -0x12(s0)
80400706: feb407a3     	sb	a1, -0x11(s0)
8040070a: 4611         	li	a2, 0x4
8040070c: 4505         	li	a0, 0x1
8040070e: fec40593     	addi	a1, s0, -0x14
80400712: 04000893     	li	a7, 0x40
80400716: 00000073     	ecall
8040071a: 4501         	li	a0, 0x0
8040071c: 60e2         	ld	ra, 0x18(sp)
8040071e: 6442         	ld	s0, 0x10(sp)
80400720: 6105         	addi	sp, sp, 0x20
80400722: 8082         	ret

0000000080400724 <_ZN4core3fmt5Write9write_fmt17h559921915b9dd8e4E>:
80400724: 1141         	addi	sp, sp, -0x10
80400726: e406         	sd	ra, 0x8(sp)
80400728: e022         	sd	s0, 0x0(sp)
8040072a: 0800         	addi	s0, sp, 0x10
8040072c: 862e         	mv	a2, a1

000000008040072e <.Lpcrel_hi0>:
8040072e: 00000597     	auipc	a1, 0x0
80400732: 96258593     	addi	a1, a1, -0x69e
80400736: 60a2         	ld	ra, 0x8(sp)
80400738: 6402         	ld	s0, 0x0(sp)
8040073a: 0141         	addi	sp, sp, 0x10
8040073c: 00000317     	auipc	t1, 0x0
80400740: 2ae30067     	jr	0x2ae(t1) <_ZN4core3fmt5write17h330b311f63fce133E>

0000000080400744 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h8205147413485bdfE>:
80400744: 1141         	addi	sp, sp, -0x10
80400746: e406         	sd	ra, 0x8(sp)
80400748: e022         	sd	s0, 0x0(sp)
8040074a: 0800         	addi	s0, sp, 0x10

000000008040074c <.Lpcrel_hi1>:
8040074c: 00000517     	auipc	a0, 0x0
80400750: 93c50693     	addi	a3, a0, -0x6c4
80400754: 4615         	li	a2, 0x5
80400756: 852e         	mv	a0, a1
80400758: 85b6         	mv	a1, a3
8040075a: 60a2         	ld	ra, 0x8(sp)
8040075c: 6402         	ld	s0, 0x0(sp)
8040075e: 0141         	addi	sp, sp, 0x10
80400760: 00001317     	auipc	t1, 0x1
80400764: 88e30067     	jr	-0x772(t1) <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h9feaa7c4c958f4edE>

0000000080400768 <_ZN76_$LT$core..panic..panic_info..PanicMessage$u20$as$u20$core..fmt..Display$GT$3fmt17h579aaba787c3cab9E>:
80400768: 7139         	addi	sp, sp, -0x40
8040076a: fc06         	sd	ra, 0x38(sp)
8040076c: f822         	sd	s0, 0x30(sp)
8040076e: 0080         	addi	s0, sp, 0x40
80400770: 6110         	ld	a2, 0x0(a0)
80400772: 6188         	ld	a0, 0x0(a1)
80400774: 658c         	ld	a1, 0x8(a1)
80400776: 6214         	ld	a3, 0x0(a2)
80400778: 6618         	ld	a4, 0x8(a2)
8040077a: 6a1c         	ld	a5, 0x10(a2)
8040077c: 01863803     	ld	a6, 0x18(a2)
80400780: 02063883     	ld	a7, 0x20(a2)
80400784: 7610         	ld	a2, 0x28(a2)
80400786: fcd43023     	sd	a3, -0x40(s0)
8040078a: fce43423     	sd	a4, -0x38(s0)
8040078e: fcf43823     	sd	a5, -0x30(s0)
80400792: fd043c23     	sd	a6, -0x28(s0)
80400796: ff143023     	sd	a7, -0x20(s0)
8040079a: fec43423     	sd	a2, -0x18(s0)
8040079e: fc040613     	addi	a2, s0, -0x40
804007a2: 00000097     	auipc	ra, 0x0
804007a6: 248080e7     	jalr	0x248(ra) <_ZN4core3fmt5write17h330b311f63fce133E>
804007aa: 70e2         	ld	ra, 0x38(sp)
804007ac: 7442         	ld	s0, 0x30(sp)
804007ae: 6121         	addi	sp, sp, 0x40
804007b0: 8082         	ret

00000000804007b2 <_ZN62_$LT$user_lib..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h104461ddc45c49e1E>:
804007b2: 1141         	addi	sp, sp, -0x10
804007b4: e406         	sd	ra, 0x8(sp)
804007b6: e022         	sd	s0, 0x0(sp)
804007b8: 0800         	addi	s0, sp, 0x10
804007ba: 4505         	li	a0, 0x1
804007bc: 04000893     	li	a7, 0x40
804007c0: 00000073     	ecall
804007c4: 4501         	li	a0, 0x0
804007c6: 60a2         	ld	ra, 0x8(sp)
804007c8: 6402         	ld	s0, 0x0(sp)
804007ca: 0141         	addi	sp, sp, 0x10
804007cc: 8082         	ret

00000000804007ce <_ZN8user_lib7console5print17hcdc4880cd21399b7E>:
804007ce: 1101         	addi	sp, sp, -0x20
804007d0: ec06         	sd	ra, 0x18(sp)
804007d2: e822         	sd	s0, 0x10(sp)
804007d4: 1000         	addi	s0, sp, 0x20
804007d6: 862a         	mv	a2, a0

00000000804007d8 <.Lpcrel_hi2>:
804007d8: 00000517     	auipc	a0, 0x0
804007dc: 8b850593     	addi	a1, a0, -0x748
804007e0: fef40513     	addi	a0, s0, -0x11
804007e4: 00000097     	auipc	ra, 0x0
804007e8: 206080e7     	jalr	0x206(ra) <_ZN4core3fmt5write17h330b311f63fce133E>
804007ec: e509         	bnez	a0, 0x804007f6 <.Lpcrel_hi3>
804007ee: 60e2         	ld	ra, 0x18(sp)
804007f0: 6442         	ld	s0, 0x10(sp)
804007f2: 6105         	addi	sp, sp, 0x20
804007f4: 8082         	ret

00000000804007f6 <.Lpcrel_hi3>:
804007f6: 00000517     	auipc	a0, 0x0

00000000804007fa <.Lpcrel_hi4>:
804007fa: 00000617     	auipc	a2, 0x0

00000000804007fe <.Lpcrel_hi5>:
804007fe: 00000717     	auipc	a4, 0x0
80400802: 02b00593     	li	a1, 0x2b
80400806: 8ea50513     	addi	a0, a0, -0x716
8040080a: 8c660693     	addi	a3, a2, -0x73a
8040080e: 92270713     	addi	a4, a4, -0x6de
80400812: fef40613     	addi	a2, s0, -0x11
80400816: 00000097     	auipc	ra, 0x0
8040081a: 164080e7     	jalr	0x164(ra) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

000000008040081e <_RNvCs2NpMWs10KAv_7___rustc17rust_begin_unwind>:
8040081e: 7135         	addi	sp, sp, -0xa0
80400820: ed06         	sd	ra, 0x98(sp)
80400822: e922         	sd	s0, 0x90(sp)
80400824: e526         	sd	s1, 0x88(sp)
80400826: e14a         	sd	s2, 0x80(sp)
80400828: fcce         	sd	s3, 0x78(sp)
8040082a: f8d2         	sd	s4, 0x70(sp)
8040082c: 1100         	addi	s0, sp, 0xa0
8040082e: 84aa         	mv	s1, a0
80400830: 6508         	ld	a0, 0x8(a0)
80400832: f8040913     	addi	s2, s0, -0x80

0000000080400836 <.Lpcrel_hi10>:
80400836: 00000597     	auipc	a1, 0x0
8040083a: f9440813     	addi	a6, s0, -0x6c

000000008040083e <.Lpcrel_hi11>:
8040083e: 00001697     	auipc	a3, 0x1

0000000080400842 <.Lpcrel_hi12>:
80400842: 00000717     	auipc	a4, 0x0
80400846: e1058593     	addi	a1, a1, -0x1f0
8040084a: 99868693     	addi	a3, a3, -0x668
8040084e: 611c         	ld	a5, 0x0(a0)
80400850: 6510         	ld	a2, 0x8(a0)
80400852: 4908         	lw	a0, 0x10(a0)
80400854: f7243023     	sd	s2, -0xa0(s0)
80400858: f6b43423     	sd	a1, -0x98(s0)
8040085c: f7043823     	sd	a6, -0x90(s0)
80400860: f6d43c23     	sd	a3, -0x88(s0)
80400864: 458d         	li	a1, 0x3
80400866: fa043c23     	sd	zero, -0x48(s0)
8040086a: f8f43023     	sd	a5, -0x80(s0)
8040086e: f8c43423     	sd	a2, -0x78(s0)
80400872: f6040993     	addi	s3, s0, -0xa0
80400876: f8a42a23     	sw	a0, -0x6c(s0)
8040087a: 4a09         	li	s4, 0x2
8040087c: 90670513     	addi	a0, a4, -0x6fa
80400880: f8a43c23     	sd	a0, -0x68(s0)
80400884: fab43023     	sd	a1, -0x60(s0)
80400888: fb343423     	sd	s3, -0x58(s0)
8040088c: fb443823     	sd	s4, -0x50(s0)

0000000080400890 <.Lpcrel_hi13>:
80400890: 00000597     	auipc	a1, 0x0
80400894: fcf40513     	addi	a0, s0, -0x31
80400898: 80058593     	addi	a1, a1, -0x800
8040089c: f9840613     	addi	a2, s0, -0x68
804008a0: 00000097     	auipc	ra, 0x0
804008a4: 14a080e7     	jalr	0x14a(ra) <_ZN4core3fmt5write17h330b311f63fce133E>
804008a8: e125         	bnez	a0, 0x80400908 <.Lpcrel_hi14>
804008aa: 6088         	ld	a0, 0x0(s1)

00000000804008ac <.Lpcrel_hi17>:
804008ac: 00000597     	auipc	a1, 0x0
804008b0: ebc58593     	addi	a1, a1, -0x144
804008b4: f7243023     	sd	s2, -0xa0(s0)
804008b8: f6b43423     	sd	a1, -0x98(s0)

00000000804008bc <.Lpcrel_hi18>:
804008bc: 00000597     	auipc	a1, 0x0
804008c0: fa043c23     	sd	zero, -0x48(s0)
804008c4: f8a43023     	sd	a0, -0x80(s0)
804008c8: 4505         	li	a0, 0x1
804008ca: 8c458593     	addi	a1, a1, -0x73c
804008ce: f8b43c23     	sd	a1, -0x68(s0)
804008d2: fb443023     	sd	s4, -0x60(s0)
804008d6: fb343423     	sd	s3, -0x58(s0)
804008da: faa43823     	sd	a0, -0x50(s0)

00000000804008de <.Lpcrel_hi19>:
804008de: fffff597     	auipc	a1, 0xfffff
804008e2: fcf40513     	addi	a0, s0, -0x31
804008e6: 7b258593     	addi	a1, a1, 0x7b2
804008ea: f9840613     	addi	a2, s0, -0x68
804008ee: 00000097     	auipc	ra, 0x0
804008f2: 0fc080e7     	jalr	0xfc(ra) <_ZN4core3fmt5write17h330b311f63fce133E>
804008f6: ed0d         	bnez	a0, 0x80400930 <.Lpcrel_hi20>
804008f8: 557d         	li	a0, -0x1
804008fa: 05d00893     	li	a7, 0x5d
804008fe: 4581         	li	a1, 0x0
80400900: 4601         	li	a2, 0x0
80400902: 00000073     	ecall
80400906: a001         	j	0x80400906 <.Lpcrel_hi19+0x28>

0000000080400908 <.Lpcrel_hi14>:
80400908: fffff517     	auipc	a0, 0xfffff

000000008040090c <.Lpcrel_hi15>:
8040090c: fffff617     	auipc	a2, 0xfffff

0000000080400910 <.Lpcrel_hi16>:
80400910: 00000717     	auipc	a4, 0x0
80400914: 02b00593     	li	a1, 0x2b
80400918: 7d850513     	addi	a0, a0, 0x7d8
8040091c: 7b460693     	addi	a3, a2, 0x7b4
80400920: 81070713     	addi	a4, a4, -0x7f0
80400924: fcf40613     	addi	a2, s0, -0x31
80400928: 00000097     	auipc	ra, 0x0
8040092c: 052080e7     	jalr	0x52(ra) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

0000000080400930 <.Lpcrel_hi20>:
80400930: fffff517     	auipc	a0, 0xfffff

0000000080400934 <.Lpcrel_hi21>:
80400934: fffff617     	auipc	a2, 0xfffff

0000000080400938 <.Lpcrel_hi22>:
80400938: fffff717     	auipc	a4, 0xfffff
8040093c: 02b00593     	li	a1, 0x2b
80400940: 7b050513     	addi	a0, a0, 0x7b0
80400944: 78c60693     	addi	a3, a2, 0x78c
80400948: 7e870713     	addi	a4, a4, 0x7e8
8040094c: fcf40613     	addi	a2, s0, -0x31
80400950: 00000097     	auipc	ra, 0x0
80400954: 02a080e7     	jalr	0x2a(ra) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

0000000080400958 <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>:
80400958: 7179         	addi	sp, sp, -0x30
8040095a: f406         	sd	ra, 0x28(sp)
8040095c: f022         	sd	s0, 0x20(sp)
8040095e: 1800         	addi	s0, sp, 0x30
80400960: 4605         	li	a2, 0x1
80400962: fca43c23     	sd	a0, -0x28(s0)
80400966: feb43023     	sd	a1, -0x20(s0)
8040096a: fec41423     	sh	a2, -0x18(s0)
8040096e: fd840513     	addi	a0, s0, -0x28
80400972: 00000097     	auipc	ra, 0x0
80400976: eac080e7     	jalr	-0x154(ra) <_RNvCs2NpMWs10KAv_7___rustc17rust_begin_unwind>

000000008040097a <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>:
8040097a: 7119         	addi	sp, sp, -0x80
8040097c: fc86         	sd	ra, 0x78(sp)
8040097e: f8a2         	sd	s0, 0x70(sp)
80400980: 0100         	addi	s0, sp, 0x80
80400982: f8a43023     	sd	a0, -0x80(s0)
80400986: f8b43423     	sd	a1, -0x78(s0)
8040098a: f8c43823     	sd	a2, -0x70(s0)
8040098e: f8d43c23     	sd	a3, -0x68(s0)
80400992: f8040813     	addi	a6, s0, -0x80

0000000080400996 <.Lpcrel_hi383>:
80400996: 00001597     	auipc	a1, 0x1
8040099a: f9040893     	addi	a7, s0, -0x70

000000008040099e <.Lpcrel_hi384>:
8040099e: 00001697     	auipc	a3, 0x1

00000000804009a2 <.Lpcrel_hi385>:
804009a2: 00000797     	auipc	a5, 0x0
804009a6: 4509         	li	a0, 0x2
804009a8: fc043023     	sd	zero, -0x40(s0)
804009ac: fd040613     	addi	a2, s0, -0x30
804009b0: 9e858593     	addi	a1, a1, -0x618
804009b4: 9ca68693     	addi	a3, a3, -0x636
804009b8: 80678793     	addi	a5, a5, -0x7fa
804009bc: fd043823     	sd	a6, -0x30(s0)
804009c0: fcb43c23     	sd	a1, -0x28(s0)
804009c4: ff143023     	sd	a7, -0x20(s0)
804009c8: fed43423     	sd	a3, -0x18(s0)
804009cc: faf43023     	sd	a5, -0x60(s0)
804009d0: faa43423     	sd	a0, -0x58(s0)
804009d4: fac43823     	sd	a2, -0x50(s0)
804009d8: faa43c23     	sd	a0, -0x48(s0)
804009dc: fa040513     	addi	a0, s0, -0x60
804009e0: 85ba         	mv	a1, a4
804009e2: 00000097     	auipc	ra, 0x0
804009e6: f76080e7     	jalr	-0x8a(ra) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>

00000000804009ea <_ZN4core3fmt5write17h330b311f63fce133E>:
804009ea: 7159         	addi	sp, sp, -0x70
804009ec: f486         	sd	ra, 0x68(sp)
804009ee: f0a2         	sd	s0, 0x60(sp)
804009f0: eca6         	sd	s1, 0x58(sp)
804009f2: e8ca         	sd	s2, 0x50(sp)
804009f4: e4ce         	sd	s3, 0x48(sp)
804009f6: e0d2         	sd	s4, 0x40(sp)
804009f8: fc56         	sd	s5, 0x38(sp)
804009fa: f85a         	sd	s6, 0x30(sp)
804009fc: f45e         	sd	s7, 0x28(sp)
804009fe: f062         	sd	s8, 0x20(sp)
80400a00: 1880         	addi	s0, sp, 0x70
80400a02: 89b2         	mv	s3, a2
80400a04: 461d         	li	a2, 0x7
80400a06: 0209b483     	ld	s1, 0x20(s3)
80400a0a: 0676         	slli	a2, a2, 0x1d
80400a0c: 02060613     	addi	a2, a2, 0x20
80400a10: f8a43c23     	sd	a0, -0x68(s0)
80400a14: fab43023     	sd	a1, -0x60(s0)
80400a18: fac43423     	sd	a2, -0x58(s0)
80400a1c: c4e9         	beqz	s1, 0x80400ae6 <_ZN4core3fmt5write17h330b311f63fce133E+0xfc>
80400a1e: 0289b503     	ld	a0, 0x28(s3)
80400a22: 10050d63     	beqz	a0, 0x80400b3c <_ZN4core3fmt5write17h330b311f63fce133E+0x152>
80400a26: 0009bb83     	ld	s7, 0x0(s3)
80400a2a: 0109ba03     	ld	s4, 0x10(s3)
80400a2e: fff50593     	addi	a1, a0, -0x1
80400a32: 00451613     	slli	a2, a0, 0x4
80400a36: 051a         	slli	a0, a0, 0x6
80400a38: 04e1         	addi	s1, s1, 0x18
80400a3a: 4a89         	li	s5, 0x2
80400a3c: 0592         	slli	a1, a1, 0x4
80400a3e: 40c50b33     	sub	s6, a0, a2
80400a42: 8191         	srli	a1, a1, 0x4
80400a44: 00158913     	addi	s2, a1, 0x1
80400a48: 0ba1         	addi	s7, s7, 0x8
80400a4a: 4c05         	li	s8, 0x1
80400a4c: 000bb603     	ld	a2, 0x0(s7)
80400a50: ca19         	beqz	a2, 0x80400a66 <_ZN4core3fmt5write17h330b311f63fce133E+0x7c>
80400a52: fa043683     	ld	a3, -0x60(s0)
80400a56: f9843503     	ld	a0, -0x68(s0)
80400a5a: ff8bb583     	ld	a1, -0x8(s7)
80400a5e: 6e94         	ld	a3, 0x18(a3)
80400a60: 9682         	jalr	a3
80400a62: 10051163     	bnez	a0, 0x80400b64 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80400a66: ff84d503     	lhu	a0, -0x8(s1)
80400a6a: c50d         	beqz	a0, 0x80400a94 <_ZN4core3fmt5write17h330b311f63fce133E+0xaa>
80400a6c: 03851c63     	bne	a0, s8, 0x80400aa4 <_ZN4core3fmt5write17h330b311f63fce133E+0xba>
80400a70: 6088         	ld	a0, 0x0(s1)
80400a72: 0512         	slli	a0, a0, 0x4
80400a74: 9552         	add	a0, a0, s4
80400a76: 00855583     	lhu	a1, 0x8(a0)
80400a7a: fe84d503     	lhu	a0, -0x18(s1)
80400a7e: 03550163     	beq	a0, s5, 0x80400aa0 <_ZN4core3fmt5write17h330b311f63fce133E+0xb6>
80400a82: 03851763     	bne	a0, s8, 0x80400ab0 <_ZN4core3fmt5write17h330b311f63fce133E+0xc6>
80400a86: ff04b503     	ld	a0, -0x10(s1)
80400a8a: 0512         	slli	a0, a0, 0x4
80400a8c: 9552         	add	a0, a0, s4
80400a8e: 00855603     	lhu	a2, 0x8(a0)
80400a92: a00d         	j	0x80400ab4 <_ZN4core3fmt5write17h330b311f63fce133E+0xca>
80400a94: ffa4d583     	lhu	a1, -0x6(s1)
80400a98: fe84d503     	lhu	a0, -0x18(s1)
80400a9c: ff5513e3     	bne	a0, s5, 0x80400a82 <_ZN4core3fmt5write17h330b311f63fce133E+0x98>
80400aa0: 4601         	li	a2, 0x0
80400aa2: a809         	j	0x80400ab4 <_ZN4core3fmt5write17h330b311f63fce133E+0xca>
80400aa4: 4581         	li	a1, 0x0
80400aa6: fe84d503     	lhu	a0, -0x18(s1)
80400aaa: fd551ce3     	bne	a0, s5, 0x80400a82 <_ZN4core3fmt5write17h330b311f63fce133E+0x98>
80400aae: bfcd         	j	0x80400aa0 <_ZN4core3fmt5write17h330b311f63fce133E+0xb6>
80400ab0: fea4d603     	lhu	a2, -0x16(s1)
80400ab4: 6488         	ld	a0, 0x8(s1)
80400ab6: 4894         	lw	a3, 0x10(s1)
80400ab8: 0512         	slli	a0, a0, 0x4
80400aba: 00aa0733     	add	a4, s4, a0
80400abe: 6308         	ld	a0, 0x0(a4)
80400ac0: 6718         	ld	a4, 0x8(a4)
80400ac2: fad42423     	sw	a3, -0x58(s0)
80400ac6: fab41623     	sh	a1, -0x54(s0)
80400aca: fac41723     	sh	a2, -0x52(s0)
80400ace: f9840593     	addi	a1, s0, -0x68
80400ad2: 9702         	jalr	a4
80400ad4: e941         	bnez	a0, 0x80400b64 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80400ad6: 0bc1         	addi	s7, s7, 0x10
80400ad8: fd0b0b13     	addi	s6, s6, -0x30
80400adc: 03048493     	addi	s1, s1, 0x30
80400ae0: f60b16e3     	bnez	s6, 0x80400a4c <_ZN4core3fmt5write17h330b311f63fce133E+0x62>
80400ae4: a0b9         	j	0x80400b32 <_ZN4core3fmt5write17h330b311f63fce133E+0x148>
80400ae6: 0189b503     	ld	a0, 0x18(s3)
80400aea: c929         	beqz	a0, 0x80400b3c <_ZN4core3fmt5write17h330b311f63fce133E+0x152>
80400aec: 0009ba83     	ld	s5, 0x0(s3)
80400af0: 0109b483     	ld	s1, 0x10(s3)
80400af4: 00451a13     	slli	s4, a0, 0x4
80400af8: 157d         	addi	a0, a0, -0x1
80400afa: 0512         	slli	a0, a0, 0x4
80400afc: 8111         	srli	a0, a0, 0x4
80400afe: 00150913     	addi	s2, a0, 0x1
80400b02: 9a26         	add	s4, s4, s1
80400b04: 0aa1         	addi	s5, s5, 0x8
80400b06: 000ab603     	ld	a2, 0x0(s5)
80400b0a: ca11         	beqz	a2, 0x80400b1e <_ZN4core3fmt5write17h330b311f63fce133E+0x134>
80400b0c: fa043683     	ld	a3, -0x60(s0)
80400b10: f9843503     	ld	a0, -0x68(s0)
80400b14: ff8ab583     	ld	a1, -0x8(s5)
80400b18: 6e94         	ld	a3, 0x18(a3)
80400b1a: 9682         	jalr	a3
80400b1c: e521         	bnez	a0, 0x80400b64 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80400b1e: 6088         	ld	a0, 0x0(s1)
80400b20: 6490         	ld	a2, 0x8(s1)
80400b22: f9840593     	addi	a1, s0, -0x68
80400b26: 9602         	jalr	a2
80400b28: ed15         	bnez	a0, 0x80400b64 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80400b2a: 04c1         	addi	s1, s1, 0x10
80400b2c: 0ac1         	addi	s5, s5, 0x10
80400b2e: fd449ce3     	bne	s1, s4, 0x80400b06 <_ZN4core3fmt5write17h330b311f63fce133E+0x11c>
80400b32: 0089b503     	ld	a0, 0x8(s3)
80400b36: 00a96863     	bltu	s2, a0, 0x80400b46 <_ZN4core3fmt5write17h330b311f63fce133E+0x15c>
80400b3a: a03d         	j	0x80400b68 <_ZN4core3fmt5write17h330b311f63fce133E+0x17e>
80400b3c: 4901         	li	s2, 0x0
80400b3e: 0089b503     	ld	a0, 0x8(s3)
80400b42: 02a07363     	bgeu	zero, a0, 0x80400b68 <_ZN4core3fmt5write17h330b311f63fce133E+0x17e>
80400b46: 0009b583     	ld	a1, 0x0(s3)
80400b4a: 0912         	slli	s2, s2, 0x4
80400b4c: f9843503     	ld	a0, -0x68(s0)
80400b50: fa043683     	ld	a3, -0x60(s0)
80400b54: 992e         	add	s2, s2, a1
80400b56: 00093583     	ld	a1, 0x0(s2)
80400b5a: 00893603     	ld	a2, 0x8(s2)
80400b5e: 6e94         	ld	a3, 0x18(a3)
80400b60: 9682         	jalr	a3
80400b62: c119         	beqz	a0, 0x80400b68 <_ZN4core3fmt5write17h330b311f63fce133E+0x17e>
80400b64: 4505         	li	a0, 0x1
80400b66: a011         	j	0x80400b6a <_ZN4core3fmt5write17h330b311f63fce133E+0x180>
80400b68: 4501         	li	a0, 0x0
80400b6a: 70a6         	ld	ra, 0x68(sp)
80400b6c: 7406         	ld	s0, 0x60(sp)
80400b6e: 64e6         	ld	s1, 0x58(sp)
80400b70: 6946         	ld	s2, 0x50(sp)
80400b72: 69a6         	ld	s3, 0x48(sp)
80400b74: 6a06         	ld	s4, 0x40(sp)
80400b76: 7ae2         	ld	s5, 0x38(sp)
80400b78: 7b42         	ld	s6, 0x30(sp)
80400b7a: 7ba2         	ld	s7, 0x28(sp)
80400b7c: 7c02         	ld	s8, 0x20(sp)
80400b7e: 6165         	addi	sp, sp, 0x70
80400b80: 8082         	ret

0000000080400b82 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E>:
80400b82: 7119         	addi	sp, sp, -0x80
80400b84: fc86         	sd	ra, 0x78(sp)
80400b86: f8a2         	sd	s0, 0x70(sp)
80400b88: f4a6         	sd	s1, 0x68(sp)
80400b8a: f0ca         	sd	s2, 0x60(sp)
80400b8c: ecce         	sd	s3, 0x58(sp)
80400b8e: e8d2         	sd	s4, 0x50(sp)
80400b90: e4d6         	sd	s5, 0x48(sp)
80400b92: e0da         	sd	s6, 0x40(sp)
80400b94: fc5e         	sd	s7, 0x38(sp)
80400b96: f862         	sd	s8, 0x30(sp)
80400b98: f466         	sd	s9, 0x28(sp)
80400b9a: f06a         	sd	s10, 0x20(sp)
80400b9c: ec6e         	sd	s11, 0x18(sp)
80400b9e: 0100         	addi	s0, sp, 0x80
80400ba0: 89be         	mv	s3, a5
80400ba2: 8d3a         	mv	s10, a4
80400ba4: 8a36         	mv	s4, a3
80400ba6: 8ab2         	mv	s5, a2
80400ba8: 8baa         	mv	s7, a0
80400baa: cdbd         	beqz	a1, 0x80400c28 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xa6>
80400bac: 010bec03     	lwu	s8, 0x10(s7)
80400bb0: 00200537     	lui	a0, 0x200
80400bb4: 00ac7533     	and	a0, s8, a0
80400bb8: 00110b37     	lui	s6, 0x110
80400bbc: c119         	beqz	a0, 0x80400bc2 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x40>
80400bbe: 02b00b13     	li	s6, 0x2b
80400bc2: 8155         	srli	a0, a0, 0x15
80400bc4: 00a98cb3     	add	s9, s3, a0
80400bc8: 028c1513     	slli	a0, s8, 0x28
80400bcc: 06055863     	bgez	a0, 0x80400c3c <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xba>
80400bd0: 02000513     	li	a0, 0x20
80400bd4: 0aaa7a63     	bgeu	s4, a0, 0x80400c88 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x106>
80400bd8: 4501         	li	a0, 0x0
80400bda: 000a0f63     	beqz	s4, 0x80400bf8 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x76>
80400bde: 014a85b3     	add	a1, s5, s4
80400be2: 8656         	mv	a2, s5
80400be4: 00060683     	lb	a3, 0x0(a2)
80400be8: 0605         	addi	a2, a2, 0x1
80400bea: fc06a693     	slti	a3, a3, -0x40
80400bee: 0016c693     	xori	a3, a3, 0x1
80400bf2: 9536         	add	a0, a0, a3
80400bf4: feb618e3     	bne	a2, a1, 0x80400be4 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x62>
80400bf8: 9caa         	add	s9, s9, a0
80400bfa: 014bd903     	lhu	s2, 0x14(s7)
80400bfe: 052cf463     	bgeu	s9, s2, 0x80400c46 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xc4>
80400c02: 027c1513     	slli	a0, s8, 0x27
80400c06: f9a43823     	sd	s10, -0x70(s0)
80400c0a: 08054b63     	bltz	a0, 0x80400ca0 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x11e>
80400c0e: 41990633     	sub	a2, s2, s9
80400c12: 021c1513     	slli	a0, s8, 0x21
80400c16: 9179         	srli	a0, a0, 0x3e
80400c18: 4585         	li	a1, 0x1
80400c1a: 1c2e         	slli	s8, s8, 0x2b
80400c1c: 0ea5c263     	blt	a1, a0, 0x80400d00 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x17e>
80400c20: 10051563     	bnez	a0, 0x80400d2a <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1a8>
80400c24: 4d81         	li	s11, 0x0
80400c26: a219         	j	0x80400d2c <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1aa>
80400c28: 010bac03     	lw	s8, 0x10(s7)
80400c2c: 00198c93     	addi	s9, s3, 0x1
80400c30: 02d00b13     	li	s6, 0x2d
80400c34: 028c1513     	slli	a0, s8, 0x28
80400c38: f8054ce3     	bltz	a0, 0x80400bd0 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x4e>
80400c3c: 4a81         	li	s5, 0x0
80400c3e: 014bd903     	lhu	s2, 0x14(s7)
80400c42: fd2ce0e3     	bltu	s9, s2, 0x80400c02 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x80>
80400c46: 000bbc03     	ld	s8, 0x0(s7)
80400c4a: 008bb483     	ld	s1, 0x8(s7)
80400c4e: 8562         	mv	a0, s8
80400c50: 85a6         	mv	a1, s1
80400c52: 865a         	mv	a2, s6
80400c54: 86d6         	mv	a3, s5
80400c56: 8752         	mv	a4, s4
80400c58: 00000097     	auipc	ra, 0x0
80400c5c: 17a080e7     	jalr	0x17a(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>
80400c60: ed75         	bnez	a0, 0x80400d5c <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1da>
80400c62: 6c9c         	ld	a5, 0x18(s1)
80400c64: 8562         	mv	a0, s8
80400c66: 85ea         	mv	a1, s10
80400c68: 864e         	mv	a2, s3
80400c6a: 70e6         	ld	ra, 0x78(sp)
80400c6c: 7446         	ld	s0, 0x70(sp)
80400c6e: 74a6         	ld	s1, 0x68(sp)
80400c70: 7906         	ld	s2, 0x60(sp)
80400c72: 69e6         	ld	s3, 0x58(sp)
80400c74: 6a46         	ld	s4, 0x50(sp)
80400c76: 6aa6         	ld	s5, 0x48(sp)
80400c78: 6b06         	ld	s6, 0x40(sp)
80400c7a: 7be2         	ld	s7, 0x38(sp)
80400c7c: 7c42         	ld	s8, 0x30(sp)
80400c7e: 7ca2         	ld	s9, 0x28(sp)
80400c80: 7d02         	ld	s10, 0x20(sp)
80400c82: 6de2         	ld	s11, 0x18(sp)
80400c84: 6109         	addi	sp, sp, 0x80
80400c86: 8782         	jr	a5
80400c88: 8556         	mv	a0, s5
80400c8a: 85d2         	mv	a1, s4
80400c8c: 00000097     	auipc	ra, 0x0
80400c90: 396080e7     	jalr	0x396(ra) <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E>
80400c94: 9caa         	add	s9, s9, a0
80400c96: 014bd903     	lhu	s2, 0x14(s7)
80400c9a: fb2cf6e3     	bgeu	s9, s2, 0x80400c46 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xc4>
80400c9e: b795         	j	0x80400c02 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x80>
80400ca0: 010bbd03     	ld	s10, 0x10(s7)
80400ca4: 000bbc03     	ld	s8, 0x0(s7)
80400ca8: 008bbd83     	ld	s11, 0x8(s7)
80400cac: 9fe00537     	lui	a0, 0x9fe00
80400cb0: 200005b7     	lui	a1, 0x20000
80400cb4: 00ad7533     	and	a0, s10, a0
80400cb8: 03058593     	addi	a1, a1, 0x30
80400cbc: 8d4d         	or	a0, a0, a1
80400cbe: 00aba823     	sw	a0, 0x10(s7)
80400cc2: 8562         	mv	a0, s8
80400cc4: 85ee         	mv	a1, s11
80400cc6: 865a         	mv	a2, s6
80400cc8: 86d6         	mv	a3, s5
80400cca: 8752         	mv	a4, s4
80400ccc: 00000097     	auipc	ra, 0x0
80400cd0: 106080e7     	jalr	0x106(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>
80400cd4: 4a05         	li	s4, 0x1
80400cd6: e541         	bnez	a0, 0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80400cd8: 4481         	li	s1, 0x0
80400cda: 41990533     	sub	a0, s2, s9
80400cde: 6941         	lui	s2, 0x10
80400ce0: 397d         	addiw	s2, s2, -0x1
80400ce2: 01257ab3     	and	s5, a0, s2
80400ce6: 0124f533     	and	a0, s1, s2
80400cea: 03557463     	bgeu	a0, s5, 0x80400d12 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x190>
80400cee: 020db603     	ld	a2, 0x20(s11)
80400cf2: 0485         	addi	s1, s1, 0x1
80400cf4: 03000593     	li	a1, 0x30
80400cf8: 8562         	mv	a0, s8
80400cfa: 9602         	jalr	a2
80400cfc: d56d         	beqz	a0, 0x80400ce6 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x164>
80400cfe: a085         	j	0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80400d00: 4589         	li	a1, 0x2
80400d02: 8db2         	mv	s11, a2
80400d04: 02b51463     	bne	a0, a1, 0x80400d2c <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1aa>
80400d08: 03061513     	slli	a0, a2, 0x30
80400d0c: 03155d93     	srli	s11, a0, 0x31
80400d10: a831         	j	0x80400d2c <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1aa>
80400d12: 018db683     	ld	a3, 0x18(s11)
80400d16: 8562         	mv	a0, s8
80400d18: f9043583     	ld	a1, -0x70(s0)
80400d1c: 864e         	mv	a2, s3
80400d1e: 9682         	jalr	a3
80400d20: ed1d         	bnez	a0, 0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80400d22: 4a01         	li	s4, 0x0
80400d24: 01abb823     	sd	s10, 0x10(s7)
80400d28: a81d         	j	0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80400d2a: 8db2         	mv	s11, a2
80400d2c: f8c43423     	sd	a2, -0x78(s0)
80400d30: 4d01         	li	s10, 0x0
80400d32: 02bc5c13     	srli	s8, s8, 0x2b
80400d36: 000bbc83     	ld	s9, 0x0(s7)
80400d3a: 008bbb83     	ld	s7, 0x8(s7)
80400d3e: 64c1         	lui	s1, 0x10
80400d40: 34fd         	addiw	s1, s1, -0x1
80400d42: 009df933     	and	s2, s11, s1
80400d46: 009d7533     	and	a0, s10, s1
80400d4a: 03257a63     	bgeu	a0, s2, 0x80400d7e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1fc>
80400d4e: 020bb603     	ld	a2, 0x20(s7)
80400d52: 0d05         	addi	s10, s10, 0x1
80400d54: 8566         	mv	a0, s9
80400d56: 85e2         	mv	a1, s8
80400d58: 9602         	jalr	a2
80400d5a: d575         	beqz	a0, 0x80400d46 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1c4>
80400d5c: 4a05         	li	s4, 0x1
80400d5e: 8552         	mv	a0, s4
80400d60: 70e6         	ld	ra, 0x78(sp)
80400d62: 7446         	ld	s0, 0x70(sp)
80400d64: 74a6         	ld	s1, 0x68(sp)
80400d66: 7906         	ld	s2, 0x60(sp)
80400d68: 69e6         	ld	s3, 0x58(sp)
80400d6a: 6a46         	ld	s4, 0x50(sp)
80400d6c: 6aa6         	ld	s5, 0x48(sp)
80400d6e: 6b06         	ld	s6, 0x40(sp)
80400d70: 7be2         	ld	s7, 0x38(sp)
80400d72: 7c42         	ld	s8, 0x30(sp)
80400d74: 7ca2         	ld	s9, 0x28(sp)
80400d76: 7d02         	ld	s10, 0x20(sp)
80400d78: 6de2         	ld	s11, 0x18(sp)
80400d7a: 6109         	addi	sp, sp, 0x80
80400d7c: 8082         	ret
80400d7e: 8566         	mv	a0, s9
80400d80: 85de         	mv	a1, s7
80400d82: 865a         	mv	a2, s6
80400d84: 86d6         	mv	a3, s5
80400d86: 8752         	mv	a4, s4
80400d88: 00000097     	auipc	ra, 0x0
80400d8c: 04a080e7     	jalr	0x4a(ra) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>
80400d90: 4a05         	li	s4, 0x1
80400d92: f571         	bnez	a0, 0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80400d94: 018bb683     	ld	a3, 0x18(s7)
80400d98: 8566         	mv	a0, s9
80400d9a: f9043583     	ld	a1, -0x70(s0)
80400d9e: 864e         	mv	a2, s3
80400da0: 9682         	jalr	a3
80400da2: fd55         	bnez	a0, 0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80400da4: 4481         	li	s1, 0x0
80400da6: f8843503     	ld	a0, -0x78(s0)
80400daa: 41b50533     	sub	a0, a0, s11
80400dae: 6941         	lui	s2, 0x10
80400db0: 397d         	addiw	s2, s2, -0x1
80400db2: 012579b3     	and	s3, a0, s2
80400db6: 0124f533     	and	a0, s1, s2
80400dba: 01353a33     	sltu	s4, a0, s3
80400dbe: fb3570e3     	bgeu	a0, s3, 0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80400dc2: 020bb603     	ld	a2, 0x20(s7)
80400dc6: 0485         	addi	s1, s1, 0x1
80400dc8: 8566         	mv	a0, s9
80400dca: 85e2         	mv	a1, s8
80400dcc: 9602         	jalr	a2
80400dce: d565         	beqz	a0, 0x80400db6 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x234>
80400dd0: b779         	j	0x80400d5e <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>

0000000080400dd2 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>:
80400dd2: 7179         	addi	sp, sp, -0x30
80400dd4: f406         	sd	ra, 0x28(sp)
80400dd6: f022         	sd	s0, 0x20(sp)
80400dd8: ec26         	sd	s1, 0x18(sp)
80400dda: e84a         	sd	s2, 0x10(sp)
80400ddc: e44e         	sd	s3, 0x8(sp)
80400dde: e052         	sd	s4, 0x0(sp)
80400de0: 1800         	addi	s0, sp, 0x30
80400de2: 893a         	mv	s2, a4
80400de4: 8a36         	mv	s4, a3
80400de6: 89ae         	mv	s3, a1
80400de8: 001105b7     	lui	a1, 0x110
80400dec: 00b60c63     	beq	a2, a1, 0x80400e04 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x32>
80400df0: 0209b683     	ld	a3, 0x20(s3)
80400df4: 84aa         	mv	s1, a0
80400df6: 85b2         	mv	a1, a2
80400df8: 9682         	jalr	a3
80400dfa: 85aa         	mv	a1, a0
80400dfc: 8526         	mv	a0, s1
80400dfe: c199         	beqz	a1, 0x80400e04 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x32>
80400e00: 4505         	li	a0, 0x1
80400e02: a005         	j	0x80400e22 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x50>
80400e04: 000a0e63     	beqz	s4, 0x80400e20 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x4e>
80400e08: 0189b783     	ld	a5, 0x18(s3)
80400e0c: 85d2         	mv	a1, s4
80400e0e: 864a         	mv	a2, s2
80400e10: 70a2         	ld	ra, 0x28(sp)
80400e12: 7402         	ld	s0, 0x20(sp)
80400e14: 64e2         	ld	s1, 0x18(sp)
80400e16: 6942         	ld	s2, 0x10(sp)
80400e18: 69a2         	ld	s3, 0x8(sp)
80400e1a: 6a02         	ld	s4, 0x0(sp)
80400e1c: 6145         	addi	sp, sp, 0x30
80400e1e: 8782         	jr	a5
80400e20: 4501         	li	a0, 0x0
80400e22: 70a2         	ld	ra, 0x28(sp)
80400e24: 7402         	ld	s0, 0x20(sp)
80400e26: 64e2         	ld	s1, 0x18(sp)
80400e28: 6942         	ld	s2, 0x10(sp)
80400e2a: 69a2         	ld	s3, 0x8(sp)
80400e2c: 6a02         	ld	s4, 0x0(sp)
80400e2e: 6145         	addi	sp, sp, 0x30
80400e30: 8082         	ret

0000000080400e32 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E>:
80400e32: 711d         	addi	sp, sp, -0x60
80400e34: ec86         	sd	ra, 0x58(sp)
80400e36: e8a2         	sd	s0, 0x50(sp)
80400e38: e4a6         	sd	s1, 0x48(sp)
80400e3a: e0ca         	sd	s2, 0x40(sp)
80400e3c: fc4e         	sd	s3, 0x38(sp)
80400e3e: f852         	sd	s4, 0x30(sp)
80400e40: f456         	sd	s5, 0x28(sp)
80400e42: f05a         	sd	s6, 0x20(sp)
80400e44: ec5e         	sd	s7, 0x18(sp)
80400e46: e862         	sd	s8, 0x10(sp)
80400e48: e466         	sd	s9, 0x8(sp)
80400e4a: e06a         	sd	s10, 0x0(sp)
80400e4c: 1080         	addi	s0, sp, 0x60
80400e4e: 89b2         	mv	s3, a2
80400e50: 01056483     	lwu	s1, 0x10(a0)
80400e54: 18000637     	lui	a2, 0x18000
80400e58: 8e65         	and	a2, a2, s1
80400e5a: 892e         	mv	s2, a1
80400e5c: 14060163     	beqz	a2, 0x80400f9e <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x16c>
80400e60: 02349593     	slli	a1, s1, 0x23
80400e64: 0405c863     	bltz	a1, 0x80400eb4 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x82>
80400e68: 02000593     	li	a1, 0x20
80400e6c: 08b9ff63     	bgeu	s3, a1, 0x80400f0a <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xd8>
80400e70: 4581         	li	a1, 0x0
80400e72: 00098f63     	beqz	s3, 0x80400e90 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x5e>
80400e76: 01390633     	add	a2, s2, s3
80400e7a: 86ca         	mv	a3, s2
80400e7c: 00068703     	lb	a4, 0x0(a3)
80400e80: 0685         	addi	a3, a3, 0x1
80400e82: fc072713     	slti	a4, a4, -0x40
80400e86: 00174713     	xori	a4, a4, 0x1
80400e8a: 95ba         	add	a1, a1, a4
80400e8c: fec698e3     	bne	a3, a2, 0x80400e7c <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x4a>
80400e90: 01455603     	lhu	a2, 0x14(a0)
80400e94: 10c5f563     	bgeu	a1, a2, 0x80400f9e <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x16c>
80400e98: 4b81         	li	s7, 0x0
80400e9a: 40b60b33     	sub	s6, a2, a1
80400e9e: 02149613     	slli	a2, s1, 0x21
80400ea2: 9279         	srli	a2, a2, 0x3e
80400ea4: 4685         	li	a3, 0x1
80400ea6: 02b49593     	slli	a1, s1, 0x2b
80400eaa: 06c6ce63     	blt	a3, a2, 0x80400f26 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xf4>
80400eae: c259         	beqz	a2, 0x80400f34 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x102>
80400eb0: 8bda         	mv	s7, s6
80400eb2: a049         	j	0x80400f34 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x102>
80400eb4: 01655583     	lhu	a1, 0x16(a0)
80400eb8: cde1         	beqz	a1, 0x80400f90 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x15e>
80400eba: 013906b3     	add	a3, s2, s3
80400ebe: 0e000893     	li	a7, 0xe0
80400ec2: 0f000813     	li	a6, 0xf0
80400ec6: 862e         	mv	a2, a1
80400ec8: 87ca         	mv	a5, s2
80400eca: 4981         	li	s3, 0x0
80400ecc: a811         	j	0x80400ee0 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xae>
80400ece: 00178713     	addi	a4, a5, 0x1
80400ed2: 413787b3     	sub	a5, a5, s3
80400ed6: 167d         	addi	a2, a2, -0x1
80400ed8: 40f709b3     	sub	s3, a4, a5
80400edc: 87ba         	mv	a5, a4
80400ede: ca5d         	beqz	a2, 0x80400f94 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x162>
80400ee0: 0ad78a63     	beq	a5, a3, 0x80400f94 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x162>
80400ee4: 00078703     	lb	a4, 0x0(a5)
80400ee8: fe0753e3     	bgez	a4, 0x80400ece <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x9c>
80400eec: 0ff77713     	andi	a4, a4, 0xff
80400ef0: 01176763     	bltu	a4, a7, 0x80400efe <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xcc>
80400ef4: 01076863     	bltu	a4, a6, 0x80400f04 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xd2>
80400ef8: 00478713     	addi	a4, a5, 0x4
80400efc: bfd9         	j	0x80400ed2 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xa0>
80400efe: 00278713     	addi	a4, a5, 0x2
80400f02: bfc1         	j	0x80400ed2 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xa0>
80400f04: 00378713     	addi	a4, a5, 0x3
80400f08: b7e9         	j	0x80400ed2 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xa0>
80400f0a: 8a2a         	mv	s4, a0
80400f0c: 854a         	mv	a0, s2
80400f0e: 85ce         	mv	a1, s3
80400f10: 00000097     	auipc	ra, 0x0
80400f14: 112080e7     	jalr	0x112(ra) <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E>
80400f18: 85aa         	mv	a1, a0
80400f1a: 8552         	mv	a0, s4
80400f1c: 014a5603     	lhu	a2, 0x14(s4)
80400f20: 06c5ff63     	bgeu	a1, a2, 0x80400f9e <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x16c>
80400f24: bf95         	j	0x80400e98 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x66>
80400f26: 4689         	li	a3, 0x2
80400f28: 00d61663     	bne	a2, a3, 0x80400f34 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x102>
80400f2c: 030b1613     	slli	a2, s6, 0x30
80400f30: 03165b93     	srli	s7, a2, 0x31
80400f34: 4481         	li	s1, 0x0
80400f36: 02b5da13     	srli	s4, a1, 0x2b
80400f3a: 00053a83     	ld	s5, 0x0(a0)
80400f3e: 00853c03     	ld	s8, 0x8(a0)
80400f42: 6cc1         	lui	s9, 0x10
80400f44: 3cfd         	addiw	s9, s9, -0x1
80400f46: 019bfd33     	and	s10, s7, s9
80400f4a: 0194f533     	and	a0, s1, s9
80400f4e: 01a57a63     	bgeu	a0, s10, 0x80400f62 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x130>
80400f52: 020c3603     	ld	a2, 0x20(s8)
80400f56: 0485         	addi	s1, s1, 0x1
80400f58: 8556         	mv	a0, s5
80400f5a: 85d2         	mv	a1, s4
80400f5c: 9602         	jalr	a2
80400f5e: d575         	beqz	a0, 0x80400f4a <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x118>
80400f60: a801         	j	0x80400f70 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x13e>
80400f62: 018c3683     	ld	a3, 0x18(s8)
80400f66: 8556         	mv	a0, s5
80400f68: 85ca         	mv	a1, s2
80400f6a: 864e         	mv	a2, s3
80400f6c: 9682         	jalr	a3
80400f6e: c939         	beqz	a0, 0x80400fc4 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x192>
80400f70: 4905         	li	s2, 0x1
80400f72: 854a         	mv	a0, s2
80400f74: 60e6         	ld	ra, 0x58(sp)
80400f76: 6446         	ld	s0, 0x50(sp)
80400f78: 64a6         	ld	s1, 0x48(sp)
80400f7a: 6906         	ld	s2, 0x40(sp)
80400f7c: 79e2         	ld	s3, 0x38(sp)
80400f7e: 7a42         	ld	s4, 0x30(sp)
80400f80: 7aa2         	ld	s5, 0x28(sp)
80400f82: 7b02         	ld	s6, 0x20(sp)
80400f84: 6be2         	ld	s7, 0x18(sp)
80400f86: 6c42         	ld	s8, 0x10(sp)
80400f88: 6ca2         	ld	s9, 0x8(sp)
80400f8a: 6d02         	ld	s10, 0x0(sp)
80400f8c: 6125         	addi	sp, sp, 0x60
80400f8e: 8082         	ret
80400f90: 4981         	li	s3, 0x0
80400f92: 4601         	li	a2, 0x0
80400f94: 8d91         	sub	a1, a1, a2
80400f96: 01455603     	lhu	a2, 0x14(a0)
80400f9a: eec5efe3     	bltu	a1, a2, 0x80400e98 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x66>
80400f9e: 650c         	ld	a1, 0x8(a0)
80400fa0: 6108         	ld	a0, 0x0(a0)
80400fa2: 6d9c         	ld	a5, 0x18(a1)
80400fa4: 85ca         	mv	a1, s2
80400fa6: 864e         	mv	a2, s3
80400fa8: 60e6         	ld	ra, 0x58(sp)
80400faa: 6446         	ld	s0, 0x50(sp)
80400fac: 64a6         	ld	s1, 0x48(sp)
80400fae: 6906         	ld	s2, 0x40(sp)
80400fb0: 79e2         	ld	s3, 0x38(sp)
80400fb2: 7a42         	ld	s4, 0x30(sp)
80400fb4: 7aa2         	ld	s5, 0x28(sp)
80400fb6: 7b02         	ld	s6, 0x20(sp)
80400fb8: 6be2         	ld	s7, 0x18(sp)
80400fba: 6c42         	ld	s8, 0x10(sp)
80400fbc: 6ca2         	ld	s9, 0x8(sp)
80400fbe: 6d02         	ld	s10, 0x0(sp)
80400fc0: 6125         	addi	sp, sp, 0x60
80400fc2: 8782         	jr	a5
80400fc4: 4481         	li	s1, 0x0
80400fc6: 417b0533     	sub	a0, s6, s7
80400fca: 69c1         	lui	s3, 0x10
80400fcc: 39fd         	addiw	s3, s3, -0x1
80400fce: 01357b33     	and	s6, a0, s3
80400fd2: 0134f533     	and	a0, s1, s3
80400fd6: 01653933     	sltu	s2, a0, s6
80400fda: f9657ce3     	bgeu	a0, s6, 0x80400f72 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x140>
80400fde: 020c3603     	ld	a2, 0x20(s8)
80400fe2: 0485         	addi	s1, s1, 0x1
80400fe4: 8556         	mv	a0, s5
80400fe6: 85d2         	mv	a1, s4
80400fe8: 9602         	jalr	a2
80400fea: d565         	beqz	a0, 0x80400fd2 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x1a0>
80400fec: b759         	j	0x80400f72 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x140>

0000000080400fee <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h9feaa7c4c958f4edE>:
80400fee: 1141         	addi	sp, sp, -0x10
80400ff0: e406         	sd	ra, 0x8(sp)
80400ff2: e022         	sd	s0, 0x0(sp)
80400ff4: 0800         	addi	s0, sp, 0x10
80400ff6: 6514         	ld	a3, 0x8(a0)
80400ff8: 6108         	ld	a0, 0x0(a0)
80400ffa: 6e9c         	ld	a5, 0x18(a3)
80400ffc: 60a2         	ld	ra, 0x8(sp)
80400ffe: 6402         	ld	s0, 0x0(sp)
80401000: 0141         	addi	sp, sp, 0x10
80401002: 8782         	jr	a5

0000000080401004 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hf6a8e4c2ef3676e7E>:
80401004: 1141         	addi	sp, sp, -0x10
80401006: e406         	sd	ra, 0x8(sp)
80401008: e022         	sd	s0, 0x0(sp)
8040100a: 0800         	addi	s0, sp, 0x10
8040100c: 86ae         	mv	a3, a1
8040100e: 85aa         	mv	a1, a0
80401010: 8532         	mv	a0, a2
80401012: 8636         	mv	a2, a3
80401014: 60a2         	ld	ra, 0x8(sp)
80401016: 6402         	ld	s0, 0x0(sp)
80401018: 0141         	addi	sp, sp, 0x10
8040101a: 00000317     	auipc	t1, 0x0
8040101e: e1830067     	jr	-0x1e8(t1) <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E>

0000000080401022 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E>:
80401022: 1101         	addi	sp, sp, -0x20
80401024: ec06         	sd	ra, 0x18(sp)
80401026: e822         	sd	s0, 0x10(sp)
80401028: e426         	sd	s1, 0x8(sp)
8040102a: e04a         	sd	s2, 0x0(sp)
8040102c: 1000         	addi	s0, sp, 0x20
8040102e: 862a         	mv	a2, a0
80401030: 00750693     	addi	a3, a0, 0x7
80401034: 9ae1         	andi	a3, a3, -0x8
80401036: 40a687b3     	sub	a5, a3, a0
8040103a: 02f5f563     	bgeu	a1, a5, 0x80401064 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x42>
8040103e: 4501         	li	a0, 0x0
80401040: cd81         	beqz	a1, 0x80401058 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x36>
80401042: 95b2         	add	a1, a1, a2
80401044: 00060683     	lb	a3, 0x0(a2)
80401048: 0605         	addi	a2, a2, 0x1
8040104a: fc06a693     	slti	a3, a3, -0x40
8040104e: 0016c693     	xori	a3, a3, 0x1
80401052: 9536         	add	a0, a0, a3
80401054: feb618e3     	bne	a2, a1, 0x80401044 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x22>
80401058: 60e2         	ld	ra, 0x18(sp)
8040105a: 6442         	ld	s0, 0x10(sp)
8040105c: 64a2         	ld	s1, 0x8(sp)
8040105e: 6902         	ld	s2, 0x0(sp)
80401060: 6105         	addi	sp, sp, 0x20
80401062: 8082         	ret
80401064: 40f58733     	sub	a4, a1, a5
80401068: 00375813     	srli	a6, a4, 0x3
8040106c: fc0809e3     	beqz	a6, 0x8040103e <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x1c>
80401070: 97b2         	add	a5, a5, a2
80401072: 00777893     	andi	a7, a4, 0x7
80401076: 4501         	li	a0, 0x0
80401078: 00c68c63     	beq	a3, a2, 0x80401090 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x6e>
8040107c: 00060583     	lb	a1, 0x0(a2)
80401080: 0605         	addi	a2, a2, 0x1
80401082: fc05a593     	slti	a1, a1, -0x40
80401086: 0015c593     	xori	a1, a1, 0x1
8040108a: 952e         	add	a0, a0, a1
8040108c: fef618e3     	bne	a2, a5, 0x8040107c <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x5a>
80401090: 4581         	li	a1, 0x0
80401092: 02088163     	beqz	a7, 0x804010b4 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x92>
80401096: ff877613     	andi	a2, a4, -0x8
8040109a: 96b2         	add	a3, a3, a2
8040109c: 963e         	add	a2, a2, a5
8040109e: 98b6         	add	a7, a7, a3
804010a0: 00060683     	lb	a3, 0x0(a2)
804010a4: 0605         	addi	a2, a2, 0x1
804010a6: fc06a693     	slti	a3, a3, -0x40
804010aa: 0016c693     	xori	a3, a3, 0x1
804010ae: 95b6         	add	a1, a1, a3
804010b0: ff1618e3     	bne	a2, a7, 0x804010a0 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x7e>
804010b4: 01010637     	lui	a2, 0x1010
804010b8: 00ff06b7     	lui	a3, 0xff0
804010bc: 6741         	lui	a4, 0x10
804010be: 952e         	add	a0, a0, a1
804010c0: 1016059b     	addiw	a1, a2, 0x101
804010c4: 0ff6831b     	addiw	t1, a3, 0xff
804010c8: 2705         	addiw	a4, a4, 0x1
804010ca: 02059693     	slli	a3, a1, 0x20
804010ce: 02031613     	slli	a2, t1, 0x20
804010d2: 00d58fb3     	add	t6, a1, a3
804010d6: 02071293     	slli	t0, a4, 0x20
804010da: 9332         	add	t1, t1, a2
804010dc: 92ba         	add	t0, t0, a4
804010de: 4891         	li	a7, 0x4
804010e0: a01d         	j	0x80401106 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xe4>
804010e2: 010e07b3     	add	a5, t3, a6
804010e6: 407e8833     	sub	a6, t4, t2
804010ea: 0033f593     	andi	a1, t2, 0x3
804010ee: 00697633     	and	a2, s2, t1
804010f2: 00895693     	srli	a3, s2, 0x8
804010f6: 0066f6b3     	and	a3, a3, t1
804010fa: 9636         	add	a2, a2, a3
804010fc: 02560633     	mul	a2, a2, t0
80401100: 9241         	srli	a2, a2, 0x30
80401102: 9532         	add	a0, a0, a2
80401104: edbd         	bnez	a1, 0x80401182 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x160>
80401106: f40809e3     	beqz	a6, 0x80401058 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x36>
8040110a: 8ec2         	mv	t4, a6
8040110c: 8e3e         	mv	t3, a5
8040110e: 0c000593     	li	a1, 0xc0
80401112: 83c2         	mv	t2, a6
80401114: 00b86463     	bltu	a6, a1, 0x8040111c <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xfa>
80401118: 0c000393     	li	t2, 0xc0
8040111c: 00339813     	slli	a6, t2, 0x3
80401120: 4901         	li	s2, 0x0
80401122: fd1ee0e3     	bltu	t4, a7, 0x804010e2 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xc0>
80401126: 7e087793     	andi	a5, a6, 0x7e0
8040112a: 00fe0f33     	add	t5, t3, a5
8040112e: 85f2         	mv	a1, t3
80401130: 6198         	ld	a4, 0x0(a1)
80401132: 659c         	ld	a5, 0x8(a1)
80401134: 6994         	ld	a3, 0x10(a1)
80401136: 6d84         	ld	s1, 0x18(a1)
80401138: fff74613     	not	a2, a4
8040113c: 8319         	srli	a4, a4, 0x6
8040113e: 821d         	srli	a2, a2, 0x7
80401140: 8e59         	or	a2, a2, a4
80401142: fff7c713     	not	a4, a5
80401146: 8399         	srli	a5, a5, 0x6
80401148: 831d         	srli	a4, a4, 0x7
8040114a: 8f5d         	or	a4, a4, a5
8040114c: fff6c793     	not	a5, a3
80401150: 8299         	srli	a3, a3, 0x6
80401152: 839d         	srli	a5, a5, 0x7
80401154: 8edd         	or	a3, a3, a5
80401156: fff4c793     	not	a5, s1
8040115a: 8099         	srli	s1, s1, 0x6
8040115c: 839d         	srli	a5, a5, 0x7
8040115e: 8fc5         	or	a5, a5, s1
80401160: 01f67633     	and	a2, a2, t6
80401164: 964a         	add	a2, a2, s2
80401166: 01f77733     	and	a4, a4, t6
8040116a: 01f6f6b3     	and	a3, a3, t6
8040116e: 01f7f933     	and	s2, a5, t6
80401172: 96ba         	add	a3, a3, a4
80401174: 9636         	add	a2, a2, a3
80401176: 02058593     	addi	a1, a1, 0x20
8040117a: 9932         	add	s2, s2, a2
8040117c: fbe59ae3     	bne	a1, t5, 0x80401130 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x10e>
80401180: b78d         	j	0x804010e2 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xc0>
80401182: 4581         	li	a1, 0x0
80401184: 0fc3f613     	andi	a2, t2, 0xfc
80401188: 060e         	slli	a2, a2, 0x3
8040118a: 9e32         	add	t3, t3, a2
8040118c: 0c0eb613     	sltiu	a2, t4, 0xc0
80401190: 40c0063b     	negw	a2, a2
80401194: 00cef633     	and	a2, t4, a2
80401198: 8a0d         	andi	a2, a2, 0x3
8040119a: 060e         	slli	a2, a2, 0x3
8040119c: 000e3683     	ld	a3, 0x0(t3)
804011a0: 0e21         	addi	t3, t3, 0x8
804011a2: fff6c713     	not	a4, a3
804011a6: 8299         	srli	a3, a3, 0x6
804011a8: 831d         	srli	a4, a4, 0x7
804011aa: 8ed9         	or	a3, a3, a4
804011ac: 01f6f6b3     	and	a3, a3, t6
804011b0: 1661         	addi	a2, a2, -0x8
804011b2: 95b6         	add	a1, a1, a3
804011b4: f665         	bnez	a2, 0x8040119c <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x17a>
804011b6: 0065f633     	and	a2, a1, t1
804011ba: 81a1         	srli	a1, a1, 0x8
804011bc: 0065f5b3     	and	a1, a1, t1
804011c0: 95b2         	add	a1, a1, a2
804011c2: 025585b3     	mul	a1, a1, t0
804011c6: 91c1         	srli	a1, a1, 0x30
804011c8: 952e         	add	a0, a0, a1
804011ca: 60e2         	ld	ra, 0x18(sp)
804011cc: 6442         	ld	s0, 0x10(sp)
804011ce: 64a2         	ld	s1, 0x8(sp)
804011d0: 6902         	ld	s2, 0x0(sp)
804011d2: 6105         	addi	sp, sp, 0x20
804011d4: 8082         	ret

00000000804011d6 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h653896e533e76a1eE>:
804011d6: 1141         	addi	sp, sp, -0x10
804011d8: e406         	sd	ra, 0x8(sp)
804011da: e022         	sd	s0, 0x0(sp)
804011dc: 0800         	addi	s0, sp, 0x10
804011de: 4108         	lw	a0, 0x0(a0)
804011e0: 862e         	mv	a2, a1
804011e2: 4585         	li	a1, 0x1
804011e4: 60a2         	ld	ra, 0x8(sp)
804011e6: 6402         	ld	s0, 0x0(sp)
804011e8: 0141         	addi	sp, sp, 0x10
804011ea: 00000317     	auipc	t1, 0x0
804011ee: 00830067     	jr	0x8(t1) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0e41b8b95c421a67E>

00000000804011f2 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0e41b8b95c421a67E>:
804011f2: 7159         	addi	sp, sp, -0x70
804011f4: f486         	sd	ra, 0x68(sp)
804011f6: f0a2         	sd	s0, 0x60(sp)
804011f8: eca6         	sd	s1, 0x58(sp)
804011fa: e8ca         	sd	s2, 0x50(sp)
804011fc: e4ce         	sd	s3, 0x48(sp)
804011fe: e0d2         	sd	s4, 0x40(sp)
80401200: fc56         	sd	s5, 0x38(sp)
80401202: f85a         	sd	s6, 0x30(sp)
80401204: f45e         	sd	s7, 0x28(sp)
80401206: f062         	sd	s8, 0x20(sp)
80401208: ec66         	sd	s9, 0x18(sp)
8040120a: 1880         	addi	s0, sp, 0x70
8040120c: 8832         	mv	a6, a2
8040120e: 3e800693     	li	a3, 0x3e8

0000000080401212 <.Lpcrel_hi1067>:
80401212: fffff617     	auipc	a2, 0xfffff
80401216: fb660993     	addi	s3, a2, -0x4a
8040121a: 0ad56963     	bltu	a0, a3, 0x804012cc <.Lpcrel_hi1067+0xba>
8040121e: 4701         	li	a4, 0x0
80401220: fa440893     	addi	a7, s0, -0x5c
80401224: fa740293     	addi	t0, s0, -0x59
80401228: fa640313     	addi	t1, s0, -0x5a
8040122c: fa540393     	addi	t2, s0, -0x5b
80401230: d1b71eb7     	lui	t4, 0xd1b71
80401234: 6789         	lui	a5, 0x2
80401236: 6485         	lui	s1, 0x1
80401238: 06400e13     	li	t3, 0x64
8040123c: 009896b7     	lui	a3, 0x989
80401240: 759e8f93     	addi	t6, t4, 0x759
80401244: 71078e93     	addi	t4, a5, 0x710
80401248: 47b48f1b     	addiw	t5, s1, 0x47b
8040124c: 1f82         	slli	t6, t6, 0x20
8040124e: 67f6891b     	addiw	s2, a3, 0x67f
80401252: 8caa         	mv	s9, a0
80401254: 8c66         	mv	s8, s9
80401256: 020c9793     	slli	a5, s9, 0x20
8040125a: 00e88a33     	add	s4, a7, a4
8040125e: 00e38ab3     	add	s5, t2, a4
80401262: 00e30b33     	add	s6, t1, a4
80401266: 00e28bb3     	add	s7, t0, a4
8040126a: 03f7b7b3     	mulhu	a5, a5, t6
8040126e: 02d7dc93     	srli	s9, a5, 0x2d
80401272: 03dc86b3     	mul	a3, s9, t4
80401276: 40dc04bb     	subw	s1, s8, a3
8040127a: 03049693     	slli	a3, s1, 0x30
8040127e: 92c9         	srli	a3, a3, 0x32
80401280: 03e686b3     	mul	a3, a3, t5
80401284: 0106d613     	srli	a2, a3, 0x10
80401288: 82c5         	srli	a3, a3, 0x11
8040128a: 03c686b3     	mul	a3, a3, t3
8040128e: 7fe67613     	andi	a2, a2, 0x7fe
80401292: 9c95         	subw	s1, s1, a3
80401294: 964e         	add	a2, a2, s3
80401296: 14c6         	slli	s1, s1, 0x31
80401298: 90c1         	srli	s1, s1, 0x30
8040129a: 94ce         	add	s1, s1, s3
8040129c: 00064683     	lbu	a3, 0x0(a2)
804012a0: 00164603     	lbu	a2, 0x1(a2)
804012a4: 0004c783     	lbu	a5, 0x0(s1)
804012a8: 0014c483     	lbu	s1, 0x1(s1)
804012ac: 00da0023     	sb	a3, 0x0(s4)
804012b0: 00ca8023     	sb	a2, 0x0(s5)
804012b4: 00fb0023     	sb	a5, 0x0(s6)
804012b8: 009b8023     	sb	s1, 0x0(s7)
804012bc: 1771         	addi	a4, a4, -0x4
804012be: f9896be3     	bltu	s2, s8, 0x80401254 <.Lpcrel_hi1067+0x42>
804012c2: 0729         	addi	a4, a4, 0xa
804012c4: 46a5         	li	a3, 0x9
804012c6: 0196e863     	bltu	a3, s9, 0x804012d6 <.Lpcrel_hi1067+0xc4>
804012ca: a0b9         	j	0x80401318 <.Lpcrel_hi1067+0x106>
804012cc: 4729         	li	a4, 0xa
804012ce: 8caa         	mv	s9, a0
804012d0: 46a5         	li	a3, 0x9
804012d2: 04a6f363     	bgeu	a3, a0, 0x80401318 <.Lpcrel_hi1067+0x106>
804012d6: 030c9613     	slli	a2, s9, 0x30
804012da: 6685         	lui	a3, 0x1
804012dc: 06400893     	li	a7, 0x64
804012e0: f9e40293     	addi	t0, s0, -0x62
804012e4: 9249         	srli	a2, a2, 0x32
804012e6: 47b6869b     	addiw	a3, a3, 0x47b
804012ea: 00e284b3     	add	s1, t0, a4
804012ee: 02d60633     	mul	a2, a2, a3
804012f2: 8245         	srli	a2, a2, 0x11
804012f4: 031606b3     	mul	a3, a2, a7
804012f8: 40dc86bb     	subw	a3, s9, a3
804012fc: 16c6         	slli	a3, a3, 0x31
804012fe: 92c1         	srli	a3, a3, 0x30
80401300: 96ce         	add	a3, a3, s3
80401302: 0006c783     	lbu	a5, 0x0(a3)
80401306: 0016c683     	lbu	a3, 0x1(a3)
8040130a: 1779         	addi	a4, a4, -0x2
8040130c: 92ba         	add	t0, t0, a4
8040130e: 00f28023     	sb	a5, 0x0(t0)
80401312: fed48fa3     	sb	a3, -0x1(s1)
80401316: 8cb2         	mv	s9, a2
80401318: c119         	beqz	a0, 0x8040131e <.Lpcrel_hi1067+0x10c>
8040131a: 000c8e63     	beqz	s9, 0x80401336 <.Lpcrel_hi1067+0x124>
8040131e: 0c86         	slli	s9, s9, 0x1
80401320: 01ecf513     	andi	a0, s9, 0x1e
80401324: 954e         	add	a0, a0, s3
80401326: 00154503     	lbu	a0, 0x1(a0)
8040132a: 177d         	addi	a4, a4, -0x1
8040132c: f9e40613     	addi	a2, s0, -0x62
80401330: 963a         	add	a2, a2, a4
80401332: 00a60023     	sb	a0, 0x0(a2)
80401336: 47a9         	li	a5, 0xa
80401338: f9e40513     	addi	a0, s0, -0x62
8040133c: 8f99         	sub	a5, a5, a4
8040133e: 972a         	add	a4, a4, a0
80401340: 4605         	li	a2, 0x1
80401342: 8542         	mv	a0, a6
80401344: 4681         	li	a3, 0x0
80401346: 00000097     	auipc	ra, 0x0
8040134a: 83c080e7     	jalr	-0x7c4(ra) <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E>
8040134e: 70a6         	ld	ra, 0x68(sp)
80401350: 7406         	ld	s0, 0x60(sp)
80401352: 64e6         	ld	s1, 0x58(sp)
80401354: 6946         	ld	s2, 0x50(sp)
80401356: 69a6         	ld	s3, 0x48(sp)
80401358: 6a06         	ld	s4, 0x40(sp)
8040135a: 7ae2         	ld	s5, 0x38(sp)
8040135c: 7b42         	ld	s6, 0x30(sp)
8040135e: 7ba2         	ld	s7, 0x28(sp)
80401360: 7c02         	ld	s8, 0x20(sp)
80401362: 6ce2         	ld	s9, 0x18(sp)
80401364: 6165         	addi	sp, sp, 0x70
80401366: 8082         	ret

0000000080401368 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he317b03bb394d22eE>:
80401368: 1141         	addi	sp, sp, -0x10
8040136a: e406         	sd	ra, 0x8(sp)
8040136c: e022         	sd	s0, 0x0(sp)
8040136e: 0800         	addi	s0, sp, 0x10
80401370: 6510         	ld	a2, 0x8(a0)
80401372: 6108         	ld	a0, 0x0(a0)
80401374: 6e1c         	ld	a5, 0x18(a2)
80401376: 60a2         	ld	ra, 0x8(sp)
80401378: 6402         	ld	s0, 0x0(sp)
8040137a: 0141         	addi	sp, sp, 0x10
8040137c: 8782         	jr	a5

000000008040137e <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a6386b8a762da81E>:
8040137e: 1141         	addi	sp, sp, -0x10
80401380: e406         	sd	ra, 0x8(sp)
80401382: e022         	sd	s0, 0x0(sp)
80401384: 0800         	addi	s0, sp, 0x10
80401386: 6114         	ld	a3, 0x0(a0)
80401388: 6510         	ld	a2, 0x8(a0)
8040138a: 852e         	mv	a0, a1
8040138c: 85b6         	mv	a1, a3
8040138e: 60a2         	ld	ra, 0x8(sp)
80401390: 6402         	ld	s0, 0x0(sp)
80401392: 0141         	addi	sp, sp, 0x10
80401394: 00000317     	auipc	t1, 0x0
80401398: a9e30067     	jr	-0x562(t1) <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E>

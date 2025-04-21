
target/riscv64gc-unknown-none-elf/release/os:	file format elf64-littleriscv

Disassembly of section .text:

0000000080200000 <stext>:
80200000: 0001e117     	auipc	x2, 0x1e
80200004: 00010113     	mv	x2, x2
80200008: 00001097     	auipc	x1, 0x1
8020000c: 4ee080e7     	jalr	0x4ee(x1) <rust_main>

0000000080200010 <__alltraps>:
80200010: 14011173     	csrrw	x2, sscratch, x2
80200014: 716d         	addi	x2, x2, -0x110
80200016: e406         	sd	x1, 0x8(x2)
80200018: ec0e         	sd	x3, 0x18(x2)
8020001a: f416         	sd	x5, 0x28(x2)
8020001c: f81a         	sd	x6, 0x30(x2)
8020001e: fc1e         	sd	x7, 0x38(x2)
80200020: e0a2         	sd	x8, 0x40(x2)
80200022: e4a6         	sd	x9, 0x48(x2)
80200024: e8aa         	sd	x10, 0x50(x2)
80200026: ecae         	sd	x11, 0x58(x2)
80200028: f0b2         	sd	x12, 0x60(x2)
8020002a: f4b6         	sd	x13, 0x68(x2)
8020002c: f8ba         	sd	x14, 0x70(x2)
8020002e: fcbe         	sd	x15, 0x78(x2)
80200030: e142         	sd	x16, 0x80(x2)
80200032: e546         	sd	x17, 0x88(x2)
80200034: e94a         	sd	x18, 0x90(x2)
80200036: ed4e         	sd	x19, 0x98(x2)
80200038: f152         	sd	x20, 0xa0(x2)
8020003a: f556         	sd	x21, 0xa8(x2)
8020003c: f95a         	sd	x22, 0xb0(x2)
8020003e: fd5e         	sd	x23, 0xb8(x2)
80200040: e1e2         	sd	x24, 0xc0(x2)
80200042: e5e6         	sd	x25, 0xc8(x2)
80200044: e9ea         	sd	x26, 0xd0(x2)
80200046: edee         	sd	x27, 0xd8(x2)
80200048: f1f2         	sd	x28, 0xe0(x2)
8020004a: f5f6         	sd	x29, 0xe8(x2)
8020004c: f9fa         	sd	x30, 0xf0(x2)
8020004e: fdfe         	sd	x31, 0xf8(x2)
80200050: 100022f3     	csrr	x5, sstatus
80200054: 14102373     	csrr	x6, sepc
80200058: e216         	sd	x5, 0x100(x2)
8020005a: e61a         	sd	x6, 0x108(x2)
8020005c: 140023f3     	csrr	x7, sscratch
80200060: e81e         	sd	x7, 0x10(x2)
80200062: 850a         	mv	x10, x2
80200064: 00001097     	auipc	x1, 0x1
80200068: ff8080e7     	jalr	-0x8(x1) <trap_handler>

000000008020006c <__restore>:
8020006c: 812a         	mv	x2, x10
8020006e: 6292         	ld	x5, 0x100(x2)
80200070: 6332         	ld	x6, 0x108(x2)
80200072: 63c2         	ld	x7, 0x10(x2)
80200074: 10029073     	csrw	sstatus, x5
80200078: 14131073     	csrw	sepc, x6
8020007c: 14039073     	csrw	sscratch, x7
80200080: 60a2         	ld	x1, 0x8(x2)
80200082: 61e2         	ld	x3, 0x18(x2)
80200084: 72a2         	ld	x5, 0x28(x2)
80200086: 7342         	ld	x6, 0x30(x2)
80200088: 73e2         	ld	x7, 0x38(x2)
8020008a: 6406         	ld	x8, 0x40(x2)
8020008c: 64a6         	ld	x9, 0x48(x2)
8020008e: 6546         	ld	x10, 0x50(x2)
80200090: 65e6         	ld	x11, 0x58(x2)
80200092: 7606         	ld	x12, 0x60(x2)
80200094: 76a6         	ld	x13, 0x68(x2)
80200096: 7746         	ld	x14, 0x70(x2)
80200098: 77e6         	ld	x15, 0x78(x2)
8020009a: 680a         	ld	x16, 0x80(x2)
8020009c: 68aa         	ld	x17, 0x88(x2)
8020009e: 694a         	ld	x18, 0x90(x2)
802000a0: 69ea         	ld	x19, 0x98(x2)
802000a2: 7a0a         	ld	x20, 0xa0(x2)
802000a4: 7aaa         	ld	x21, 0xa8(x2)
802000a6: 7b4a         	ld	x22, 0xb0(x2)
802000a8: 7bea         	ld	x23, 0xb8(x2)
802000aa: 6c0e         	ld	x24, 0xc0(x2)
802000ac: 6cae         	ld	x25, 0xc8(x2)
802000ae: 6d4e         	ld	x26, 0xd0(x2)
802000b0: 6dee         	ld	x27, 0xd8(x2)
802000b2: 7e0e         	ld	x28, 0xe0(x2)
802000b4: 7eae         	ld	x29, 0xe8(x2)
802000b6: 7f4e         	ld	x30, 0xf0(x2)
802000b8: 7fee         	ld	x31, 0xf8(x2)
802000ba: 6151         	addi	x2, x2, 0x110
802000bc: 14011173     	csrrw	x2, sscratch, x2
802000c0: 10200073     	sret

00000000802000c4 <_ZN3log13__private_api8log_impl17he39d6bd95415d872E>:
802000c4: 7135         	addi	x2, x2, -0xa0
802000c6: ed06         	sd	x1, 0x98(x2)
802000c8: e922         	sd	x8, 0x90(x2)
802000ca: 1100         	addi	x8, x2, 0xa0
802000cc: 0005b283     	ld	x5, 0x0(x11)
802000d0: 0085b303     	ld	x6, 0x8(x11)
802000d4: 0105b803     	ld	x16, 0x10(x11)
802000d8: 0185b883     	ld	x17, 0x18(x11)
802000dc: 718c         	ld	x11, 0x20(x11)
802000de: 00053383     	ld	x7, 0x0(x10)
802000e2: 651c         	ld	x15, 0x8(x10)
802000e4: 01053f83     	ld	x31, 0x10(x10)
802000e8: 6d14         	ld	x13, 0x18(x10)
802000ea: 7118         	ld	x14, 0x20(x10)
802000ec: 02853f03     	ld	x30, 0x28(x10)
802000f0: 4e0d         	li	x28, 0x3
802000f2: 4e85         	li	x29, 0x1
802000f4: 6188         	ld	x10, 0x0(x11)
802000f6: 6590         	ld	x12, 0x8(x11)
802000f8: 498c         	lw	x11, 0x10(x11)
802000fa: fcf43023     	sd	x15, -0x40(x8)
802000fe: fdf43423     	sd	x31, -0x38(x8)
80200102: fcd43823     	sd	x13, -0x30(x8)
80200106: fce43c23     	sd	x14, -0x28(x8)
8020010a: ffe43023     	sd	x30, -0x20(x8)
8020010e: f8a43423     	sd	x10, -0x78(x8)
80200112: f8c43823     	sd	x12, -0x70(x8)
80200116: f9c43c23     	sd	x28, -0x68(x8)
8020011a: fa543023     	sd	x5, -0x60(x8)
8020011e: fa643423     	sd	x6, -0x58(x8)
80200122: fbd42823     	sw	x29, -0x50(x8)
80200126: fab42a23     	sw	x11, -0x4c(x8)
8020012a: fa743c23     	sd	x7, -0x48(x8)
8020012e: f6043423     	sd	x0, -0x98(x8)
80200132: f7043823     	sd	x16, -0x90(x8)
80200136: f7143c23     	sd	x17, -0x88(x8)
8020013a: f8043023     	sd	x0, -0x80(x8)
8020013e: fef40513     	addi	x10, x8, -0x11
80200142: f6840593     	addi	x11, x8, -0x98
80200146: 00001097     	auipc	x1, 0x1
8020014a: 5c4080e7     	jalr	0x5c4(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
8020014e: 60ea         	ld	x1, 0x98(x2)
80200150: 644a         	ld	x8, 0x90(x2)
80200152: 610d         	addi	x2, x2, 0xa0
80200154: 8082         	ret

0000000080200156 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h4d81178da2d756c7E>:
80200156: 1141         	addi	x2, x2, -0x10
80200158: e406         	sd	x1, 0x8(x2)
8020015a: e022         	sd	x8, 0x0(x2)
8020015c: 0800         	addi	x8, x2, 0x10

000000008020015e <.Lpcrel_hi1>:
8020015e: 00004517     	auipc	x10, 0x4
80200162: ea250693     	addi	x13, x10, -0x15e
80200166: 4609         	li	x12, 0x2
80200168: 852e         	mv	x10, x11
8020016a: 85b6         	mv	x11, x13
8020016c: 60a2         	ld	x1, 0x8(x2)
8020016e: 6402         	ld	x8, 0x0(x2)
80200170: 0141         	addi	x2, x2, 0x10
80200172: 00002317     	auipc	x6, 0x2
80200176: f9430067     	jr	-0x6c(x6) <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E>

000000008020017a <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60835e8a3865e559E>:
8020017a: 1141         	addi	x2, x2, -0x10
8020017c: e406         	sd	x1, 0x8(x2)
8020017e: e022         	sd	x8, 0x0(x2)
80200180: 0800         	addi	x8, x2, 0x10
80200182: 0105e603     	lwu	x12, 0x10(x11)
80200186: 6108         	ld	x10, 0x0(x10)
80200188: 02661693     	slli	x13, x12, 0x26
8020018c: 0006cc63     	bltz	x13, 0x802001a4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60835e8a3865e559E+0x2a>
80200190: 1616         	slli	x12, x12, 0x25
80200192: 02064063     	bltz	x12, 0x802001b2 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h60835e8a3865e559E+0x38>
80200196: 60a2         	ld	x1, 0x8(x2)
80200198: 6402         	ld	x8, 0x0(x2)
8020019a: 0141         	addi	x2, x2, 0x10
8020019c: 00003317     	auipc	x6, 0x3
802001a0: 90030067     	jr	-0x700(x6) <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h6ddad91e82a8cef8E>
802001a4: 60a2         	ld	x1, 0x8(x2)
802001a6: 6402         	ld	x8, 0x0(x2)
802001a8: 0141         	addi	x2, x2, 0x10
802001aa: 00002317     	auipc	x6, 0x2
802001ae: 75630067     	jr	0x756(x6) <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h9cee460c658ab9dcE>
802001b2: 60a2         	ld	x1, 0x8(x2)
802001b4: 6402         	ld	x8, 0x0(x2)
802001b6: 0141         	addi	x2, x2, 0x10
802001b8: 00002317     	auipc	x6, 0x2
802001bc: 7b030067     	jr	0x7b0(x6) <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h7d4c87e4f53608f7E>

00000000802001c0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb795ca3b5591c9aaE>:
802001c0: 1141         	addi	x2, x2, -0x10
802001c2: e406         	sd	x1, 0x8(x2)
802001c4: e022         	sd	x8, 0x0(x2)
802001c6: 0800         	addi	x8, x2, 0x10
802001c8: 0105e603     	lwu	x12, 0x10(x11)
802001cc: 6108         	ld	x10, 0x0(x10)
802001ce: 02661693     	slli	x13, x12, 0x26
802001d2: 0006cc63     	bltz	x13, 0x802001ea <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb795ca3b5591c9aaE+0x2a>
802001d6: 1616         	slli	x12, x12, 0x25
802001d8: 02064063     	bltz	x12, 0x802001f8 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb795ca3b5591c9aaE+0x38>
802001dc: 60a2         	ld	x1, 0x8(x2)
802001de: 6402         	ld	x8, 0x0(x2)
802001e0: 0141         	addi	x2, x2, 0x10
802001e2: 00003317     	auipc	x6, 0x3
802001e6: b0c30067     	jr	-0x4f4(x6) <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hbb964ae28c3889c7E>
802001ea: 60a2         	ld	x1, 0x8(x2)
802001ec: 6402         	ld	x8, 0x0(x2)
802001ee: 0141         	addi	x2, x2, 0x10
802001f0: 00002317     	auipc	x6, 0x2
802001f4: 7e030067     	jr	0x7e0(x6) <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h7ecc9f93fe15728dE>
802001f8: 60a2         	ld	x1, 0x8(x2)
802001fa: 6402         	ld	x8, 0x0(x2)
802001fc: 0141         	addi	x2, x2, 0x10
802001fe: 00003317     	auipc	x6, 0x3
80200202: 83830067     	jr	-0x7c8(x6) <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hb6d99fdec97a0f1dE>

0000000080200206 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he8325e2d2533499dE>:
80200206: 6110         	ld	x12, 0x0(x10)
80200208: 00064683     	lbu	x13, 0x0(x12)
8020020c: 852e         	mv	x10, x11
8020020e: ca9d         	beqz	x13, 0x80200244 <.Lpcrel_hi4>
80200210: 1101         	addi	x2, x2, -0x20
80200212: ec06         	sd	x1, 0x18(x2)
80200214: e822         	sd	x8, 0x10(x2)
80200216: 1000         	addi	x8, x2, 0x20
80200218: 0605         	addi	x12, x12, 0x1
8020021a: fec43423     	sd	x12, -0x18(x8)

000000008020021e <.Lpcrel_hi2>:
8020021e: 00004597     	auipc	x11, 0x4

0000000080200222 <.Lpcrel_hi3>:
80200222: 00004697     	auipc	x13, 0x4
80200226: 4611         	li	x12, 0x4
80200228: f3a58593     	addi	x11, x11, -0xc6
8020022c: f4e68713     	addi	x14, x13, -0xb2
80200230: fe840693     	addi	x13, x8, -0x18
80200234: 00002097     	auipc	x1, 0x2
80200238: 172080e7     	jalr	0x172(x1) <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E>
8020023c: 60e2         	ld	x1, 0x18(x2)
8020023e: 6442         	ld	x8, 0x10(x2)
80200240: 6105         	addi	x2, x2, 0x20
80200242: 8082         	ret

0000000080200244 <.Lpcrel_hi4>:
80200244: 00004597     	auipc	x11, 0x4
80200248: f1c58593     	addi	x11, x11, -0xe4
8020024c: 4611         	li	x12, 0x4
8020024e: 00002317     	auipc	x6, 0x2
80200252: 07430067     	jr	0x74(x6) <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h9feaa7c4c958f4edE>

0000000080200256 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h97cfd0ba176bfac3E>:
80200256: 1141         	addi	x2, x2, -0x10
80200258: e406         	sd	x1, 0x8(x2)
8020025a: e022         	sd	x8, 0x0(x2)
8020025c: 0800         	addi	x8, x2, 0x10
8020025e: 6110         	ld	x12, 0x0(x10)
80200260: 6514         	ld	x13, 0x8(x10)
80200262: 872e         	mv	x14, x11
80200264: 8532         	mv	x10, x12
80200266: 85b6         	mv	x11, x13
80200268: 863a         	mv	x12, x14
8020026a: 60a2         	ld	x1, 0x8(x2)
8020026c: 6402         	ld	x8, 0x0(x2)
8020026e: 0141         	addi	x2, x2, 0x10
80200270: 00002317     	auipc	x6, 0x2
80200274: 25830067     	jr	0x258(x6) <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hf6a8e4c2ef3676e7E>

0000000080200278 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h981ed6881b92a372E>:
80200278: 1141         	addi	x2, x2, -0x10
8020027a: e406         	sd	x1, 0x8(x2)
8020027c: e022         	sd	x8, 0x0(x2)
8020027e: 0800         	addi	x8, x2, 0x10
80200280: 6108         	ld	x10, 0x0(x10)
80200282: 60a2         	ld	x1, 0x8(x2)
80200284: 6402         	ld	x8, 0x0(x2)
80200286: 0141         	addi	x2, x2, 0x10
80200288: 00002317     	auipc	x6, 0x2
8020028c: a1630067     	jr	-0x5ea(x6) <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hf0575c5f1cbb900fE>

0000000080200290 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h6f0b69dd11fa39bdE>:
80200290: 1141         	addi	x2, x2, -0x10
80200292: e406         	sd	x1, 0x8(x2)
80200294: e022         	sd	x8, 0x0(x2)
80200296: 0800         	addi	x8, x2, 0x10
80200298: 0105e603     	lwu	x12, 0x10(x11)
8020029c: 02661693     	slli	x13, x12, 0x26
802002a0: 0006cc63     	bltz	x13, 0x802002b8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h6f0b69dd11fa39bdE+0x28>
802002a4: 1616         	slli	x12, x12, 0x25
802002a6: 02064063     	bltz	x12, 0x802002c6 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h6f0b69dd11fa39bdE+0x36>
802002aa: 60a2         	ld	x1, 0x8(x2)
802002ac: 6402         	ld	x8, 0x0(x2)
802002ae: 0141         	addi	x2, x2, 0x10
802002b0: 00003317     	auipc	x6, 0x3
802002b4: a3e30067     	jr	-0x5c2(x6) <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hbb964ae28c3889c7E>
802002b8: 60a2         	ld	x1, 0x8(x2)
802002ba: 6402         	ld	x8, 0x0(x2)
802002bc: 0141         	addi	x2, x2, 0x10
802002be: 00002317     	auipc	x6, 0x2
802002c2: 71230067     	jr	0x712(x6) <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h7ecc9f93fe15728dE>
802002c6: 60a2         	ld	x1, 0x8(x2)
802002c8: 6402         	ld	x8, 0x0(x2)
802002ca: 0141         	addi	x2, x2, 0x10
802002cc: 00002317     	auipc	x6, 0x2
802002d0: 76a30067     	jr	0x76a(x6) <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hb6d99fdec97a0f1dE>

00000000802002d4 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE>:
802002d4: 1101         	addi	x2, x2, -0x20
802002d6: ec06         	sd	x1, 0x18(x2)
802002d8: e822         	sd	x8, 0x10(x2)
802002da: 1000         	addi	x8, x2, 0x20
802002dc: 08000513     	li	x10, 0x80
802002e0: fe042623     	sw	x0, -0x14(x8)
802002e4: 00a5f763     	bgeu	x11, x10, 0x802002f2 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0x1e>
802002e8: fed40693     	addi	x13, x8, -0x13
802002ec: feb40623     	sb	x11, -0x14(x8)
802002f0: a841         	j	0x80200380 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xac>
802002f2: 00b5d51b     	srliw	x10, x11, 0xb
802002f6: e105         	bnez	x10, 0x80200316 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0x42>
802002f8: fee40693     	addi	x13, x8, -0x12
802002fc: 0065d513     	srli	x10, x11, 0x6
80200300: 03f5f593     	andi	x11, x11, 0x3f
80200304: 0c056513     	ori	x10, x10, 0xc0
80200308: 08058593     	addi	x11, x11, 0x80
8020030c: fea40623     	sb	x10, -0x14(x8)
80200310: feb406a3     	sb	x11, -0x13(x8)
80200314: a0b5         	j	0x80200380 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xac>
80200316: 0105d51b     	srliw	x10, x11, 0x10
8020031a: e51d         	bnez	x10, 0x80200348 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0x74>
8020031c: fef40693     	addi	x13, x8, -0x11
80200320: 00c5d513     	srli	x10, x11, 0xc
80200324: 03459613     	slli	x12, x11, 0x34
80200328: 03f5f593     	andi	x11, x11, 0x3f
8020032c: 0e056513     	ori	x10, x10, 0xe0
80200330: 9269         	srli	x12, x12, 0x3a
80200332: 08058593     	addi	x11, x11, 0x80
80200336: 08060613     	addi	x12, x12, 0x80
8020033a: fea40623     	sb	x10, -0x14(x8)
8020033e: fec406a3     	sb	x12, -0x13(x8)
80200342: feb40723     	sb	x11, -0x12(x8)
80200346: a82d         	j	0x80200380 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xac>
80200348: ff040693     	addi	x13, x8, -0x10
8020034c: 0125d513     	srli	x10, x11, 0x12
80200350: 02e59613     	slli	x12, x11, 0x2e
80200354: 03459713     	slli	x14, x11, 0x34
80200358: 03f5f593     	andi	x11, x11, 0x3f
8020035c: 0f056513     	ori	x10, x10, 0xf0
80200360: 9269         	srli	x12, x12, 0x3a
80200362: 9369         	srli	x14, x14, 0x3a
80200364: 08058593     	addi	x11, x11, 0x80
80200368: 08060613     	addi	x12, x12, 0x80
8020036c: 08070713     	addi	x14, x14, 0x80
80200370: fea40623     	sb	x10, -0x14(x8)
80200374: fec406a3     	sb	x12, -0x13(x8)
80200378: fee40723     	sb	x14, -0x12(x8)
8020037c: feb407a3     	sb	x11, -0x11(x8)
80200380: fec40793     	addi	x15, x8, -0x14
80200384: 0df00293     	li	x5, 0xdf
80200388: 0f000813     	li	x16, 0xf0
8020038c: 4885         	li	x17, 0x1
8020038e: a801         	j	0x8020039e <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xca>
80200390: 0785         	addi	x15, x15, 0x1
80200392: 4581         	li	x11, 0x0
80200394: 4601         	li	x12, 0x0
80200396: 00000073     	ecall
8020039a: 04d78d63     	beq	x15, x13, 0x802003f4 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0x120>
8020039e: 00078583     	lb	x11, 0x0(x15)
802003a2: 0ff5f513     	andi	x10, x11, 0xff
802003a6: fe05d5e3     	bgez	x11, 0x80200390 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xbc>
802003aa: 0017c603     	lbu	x12, 0x1(x15)
802003ae: 01f57593     	andi	x11, x10, 0x1f
802003b2: 03f67613     	andi	x12, x12, 0x3f
802003b6: 02a2f563     	bgeu	x5, x10, 0x802003e0 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0x10c>
802003ba: 0027c703     	lbu	x14, 0x2(x15)
802003be: 061a         	slli	x12, x12, 0x6
802003c0: 03f77713     	andi	x14, x14, 0x3f
802003c4: 8e59         	or	x12, x12, x14
802003c6: 03056263     	bltu	x10, x16, 0x802003ea <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0x116>
802003ca: 0037c503     	lbu	x10, 0x3(x15)
802003ce: 0791         	addi	x15, x15, 0x4
802003d0: 15f6         	slli	x11, x11, 0x3d
802003d2: 91ad         	srli	x11, x11, 0x2b
802003d4: 061a         	slli	x12, x12, 0x6
802003d6: 03f57513     	andi	x10, x10, 0x3f
802003da: 8d51         	or	x10, x10, x12
802003dc: 8d4d         	or	x10, x10, x11
802003de: bf55         	j	0x80200392 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xbe>
802003e0: 0789         	addi	x15, x15, 0x2
802003e2: 00659513     	slli	x10, x11, 0x6
802003e6: 8d51         	or	x10, x10, x12
802003e8: b76d         	j	0x80200392 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xbe>
802003ea: 078d         	addi	x15, x15, 0x3
802003ec: 00c59513     	slli	x10, x11, 0xc
802003f0: 8d51         	or	x10, x10, x12
802003f2: b745         	j	0x80200392 <_ZN4core3fmt5Write10write_char17hb96e64d0887ac73eE+0xbe>
802003f4: 4501         	li	x10, 0x0
802003f6: 60e2         	ld	x1, 0x18(x2)
802003f8: 6442         	ld	x8, 0x10(x2)
802003fa: 6105         	addi	x2, x2, 0x20
802003fc: 8082         	ret

00000000802003fe <_ZN4core3fmt5Write9write_fmt17hd39940a0a40b8c49E>:
802003fe: 1141         	addi	x2, x2, -0x10
80200400: e406         	sd	x1, 0x8(x2)
80200402: e022         	sd	x8, 0x0(x2)
80200404: 0800         	addi	x8, x2, 0x10
80200406: 862e         	mv	x12, x11

0000000080200408 <.Lpcrel_hi5>:
80200408: 00004597     	auipc	x11, 0x4
8020040c: dc058593     	addi	x11, x11, -0x240
80200410: 60a2         	ld	x1, 0x8(x2)
80200412: 6402         	ld	x8, 0x0(x2)
80200414: 0141         	addi	x2, x2, 0x10
80200416: 00002317     	auipc	x6, 0x2
8020041a: 8a830067     	jr	-0x758(x6) <_ZN4core3fmt5write17h330b311f63fce133E>

000000008020041e <_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hf1ff4b540ece37f3E>:
8020041e: 7129         	addi	x2, x2, -0x140
80200420: fe06         	sd	x1, 0x138(x2)
80200422: fa22         	sd	x8, 0x130(x2)
80200424: f626         	sd	x9, 0x128(x2)
80200426: f24a         	sd	x18, 0x120(x2)
80200428: ee4e         	sd	x19, 0x118(x2)
8020042a: 0280         	addi	x8, x2, 0x140

000000008020042c <.Lpcrel_hi6>:
8020042c: 0001e597     	auipc	x11, 0x1e
80200430: 0ff00513     	li	x10, 0xff
80200434: bd458493     	addi	x9, x11, -0x42c
80200438: 09848593     	addi	x11, x9, 0x98
8020043c: 99f1         	andi	x11, x11, -0x4
8020043e: 4605         	li	x12, 0x1
80200440: 1405a6af     	lr.w.aq	x13, (x11)
80200444: 00a6f733     	and	x14, x13, x10
80200448: eb01         	bnez	x14, 0x80200458 <.Lpcrel_hi6+0x2c>
8020044a: 00c6c733     	xor	x14, x13, x12
8020044e: 8f69         	and	x14, x14, x10
80200450: 8f35         	xor	x14, x14, x13
80200452: 18e5a72f     	sc.w	x14, x14, (x11)
80200456: f76d         	bnez	x14, 0x80200440 <.Lpcrel_hi6+0x14>
80200458: 0ff6f713     	andi	x14, x13, 0xff
8020045c: cb31         	beqz	x14, 0x802004b0 <.Lpcrel_hi7>
8020045e: 0ff6f693     	andi	x13, x13, 0xff
80200462: 0cd64463     	blt	x12, x13, 0x8020052a <.Lpcrel_hi7+0x7a>
80200466: dee9         	beqz	x13, 0x80200440 <.Lpcrel_hi6+0x14>
80200468: 09848683     	lb	x13, 0x98(x9)
8020046c: 0ff6f693     	andi	x13, x13, 0xff
80200470: 0230000f     	fence	r, rw
80200474: 00d64d63     	blt	x12, x13, 0x8020048e <.Lpcrel_hi6+0x62>
80200478: d6e1         	beqz	x13, 0x80200440 <.Lpcrel_hi6+0x14>
8020047a: 0100000f     	fence	w, 0
8020047e: 09848683     	lb	x13, 0x98(x9)
80200482: 0ff6f693     	andi	x13, x13, 0xff
80200486: 0230000f     	fence	r, rw
8020048a: fed657e3     	bge	x12, x13, 0x80200478 <.Lpcrel_hi6+0x4c>
8020048e: 4509         	li	x10, 0x2
80200490: 0aa68063     	beq	x13, x10, 0x80200530 <.Lpcrel_hi7+0x80>

0000000080200494 <.Lpcrel_hi10>:
80200494: 00004517     	auipc	x10, 0x4

0000000080200498 <.Lpcrel_hi11>:
80200498: 00004597     	auipc	x11, 0x4
8020049c: bec50513     	addi	x10, x10, -0x414
802004a0: c1058613     	addi	x12, x11, -0x3f0
802004a4: 02600593     	li	x11, 0x26
802004a8: 00001097     	auipc	x1, 0x1
802004ac: 2de080e7     	jalr	0x2de(x1) <_ZN4core9panicking5panic17head41d9616bfc060E>

00000000802004b0 <.Lpcrel_hi7>:
802004b0: 0000a517     	auipc	x10, 0xa
802004b4: b5050993     	addi	x19, x10, -0x4b0
802004b8: 0009b903     	ld	x18, 0x0(x19)
802004bc: f5040513     	addi	x10, x8, -0xb0
802004c0: 08800613     	li	x12, 0x88
802004c4: 4581         	li	x11, 0x0
802004c6: 00003097     	auipc	x1, 0x3
802004ca: a1a080e7     	jalr	-0x5e6(x1) <memset>
802004ce: 00190513     	addi	x10, x18, 0x1
802004d2: c535         	beqz	x10, 0x8020053e <.Lpcrel_hi9>
802004d4: 45c5         	li	x11, 0x11
802004d6: 06b97c63     	bgeu	x18, x11, 0x8020054e <.Lpcrel_hi8>
802004da: 00351613     	slli	x12, x10, 0x3
802004de: 00898593     	addi	x11, x19, 0x8
802004e2: f5040513     	addi	x10, x8, -0xb0
802004e6: 00003097     	auipc	x1, 0x3
802004ea: a7e080e7     	jalr	-0x582(x1) <memcpy>
802004ee: ec840513     	addi	x10, x8, -0x138
802004f2: f5040593     	addi	x11, x8, -0xb0
802004f6: 08800613     	li	x12, 0x88
802004fa: 00003097     	auipc	x1, 0x3
802004fe: a6a080e7     	jalr	-0x596(x1) <memcpy>
80200502: 0124b023     	sd	x18, 0x0(x9)
80200506: 0004b423     	sd	x0, 0x8(x9)
8020050a: 01048513     	addi	x10, x9, 0x10
8020050e: ec840593     	addi	x11, x8, -0x138
80200512: 08800613     	li	x12, 0x88
80200516: 00003097     	auipc	x1, 0x3
8020051a: a4e080e7     	jalr	-0x5b2(x1) <memcpy>
8020051e: 0310000f     	fence	rw, w
80200522: 4509         	li	x10, 0x2
80200524: 08a48c23     	sb	x10, 0x98(x9)
80200528: a021         	j	0x80200530 <.Lpcrel_hi7+0x80>
8020052a: 4509         	li	x10, 0x2
8020052c: 02a69a63     	bne	x13, x10, 0x80200560 <.Lpcrel_hi12>
80200530: 70f2         	ld	x1, 0x138(x2)
80200532: 7452         	ld	x8, 0x130(x2)
80200534: 74b2         	ld	x9, 0x128(x2)
80200536: 7912         	ld	x18, 0x120(x2)
80200538: 69f2         	ld	x19, 0x118(x2)
8020053a: 6131         	addi	x2, x2, 0x140
8020053c: 8082         	ret

000000008020053e <.Lpcrel_hi9>:
8020053e: 00009517     	auipc	x10, 0x9
80200542: 4aa50513     	addi	x10, x10, 0x4aa
80200546: 00002097     	auipc	x1, 0x2
8020054a: fb0080e7     	jalr	-0x50(x1) <_ZN4core5slice5index29slice_end_index_overflow_fail17h6789ab60e950be34E>

000000008020054e <.Lpcrel_hi8>:
8020054e: 00009597     	auipc	x11, 0x9
80200552: 49a58613     	addi	x12, x11, 0x49a
80200556: 45c5         	li	x11, 0x11
80200558: 00002097     	auipc	x1, 0x2
8020055c: f8e080e7     	jalr	-0x72(x1) <_ZN4core5slice5index24slice_end_index_len_fail17ha27cce7a632b050fE>

0000000080200560 <.Lpcrel_hi12>:
80200560: 00004517     	auipc	x10, 0x4

0000000080200564 <.Lpcrel_hi13>:
80200564: 00004597     	auipc	x11, 0x4
80200568: aa250513     	addi	x10, x10, -0x55e
8020056c: b0458613     	addi	x12, x11, -0x4fc
80200570: 45b5         	li	x11, 0xd
80200572: 00001097     	auipc	x1, 0x1
80200576: 214080e7     	jalr	0x214(x1) <_ZN4core9panicking5panic17head41d9616bfc060E>

000000008020057a <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h8205147413485bdfE>:
8020057a: 1141         	addi	x2, x2, -0x10
8020057c: e406         	sd	x1, 0x8(x2)
8020057e: e022         	sd	x8, 0x0(x2)
80200580: 0800         	addi	x8, x2, 0x10

0000000080200582 <.Lpcrel_hi14>:
80200582: 00004517     	auipc	x10, 0x4
80200586: b3e50693     	addi	x13, x10, -0x4c2
8020058a: 4615         	li	x12, 0x5
8020058c: 852e         	mv	x10, x11
8020058e: 85b6         	mv	x11, x13
80200590: 60a2         	ld	x1, 0x8(x2)
80200592: 6402         	ld	x8, 0x0(x2)
80200594: 0141         	addi	x2, x2, 0x10
80200596: 00002317     	auipc	x6, 0x2
8020059a: d2c30067     	jr	-0x2d4(x6) <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h9feaa7c4c958f4edE>

000000008020059e <_ZN56_$LT$log..SetLoggerError$u20$as$u20$core..fmt..Debug$GT$3fmt17h68dbabfa94f62918E>:
8020059e: 1101         	addi	x2, x2, -0x20
802005a0: ec06         	sd	x1, 0x18(x2)
802005a2: e822         	sd	x8, 0x10(x2)
802005a4: 1000         	addi	x8, x2, 0x20
802005a6: 87ae         	mv	x15, x11
802005a8: fea43423     	sd	x10, -0x18(x8)

00000000802005ac <.Lpcrel_hi15>:
802005ac: 00004517     	auipc	x10, 0x4

00000000802005b0 <.Lpcrel_hi16>:
802005b0: 00004697     	auipc	x13, 0x4
802005b4: 4639         	li	x12, 0xe
802005b6: b3c50593     	addi	x11, x10, -0x4c4
802005ba: b1868713     	addi	x14, x13, -0x4e8
802005be: fe840693     	addi	x13, x8, -0x18
802005c2: 853e         	mv	x10, x15
802005c4: 00002097     	auipc	x1, 0x2
802005c8: de2080e7     	jalr	-0x21e(x1) <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E>
802005cc: 60e2         	ld	x1, 0x18(x2)
802005ce: 6442         	ld	x8, 0x10(x2)
802005d0: 6105         	addi	x2, x2, 0x20
802005d2: 8082         	ret

00000000802005d4 <_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h83b70a173aaed053E>:
802005d4: 7179         	addi	x2, x2, -0x30
802005d6: f406         	sd	x1, 0x28(x2)
802005d8: f022         	sd	x8, 0x20(x2)
802005da: 1800         	addi	x8, x2, 0x30
802005dc: 82ae         	mv	x5, x11
802005de: 8e2a         	mv	x28, x10
802005e0: 0521         	addi	x10, x10, 0x8
802005e2: fea43423     	sd	x10, -0x18(x8)

00000000802005e6 <.Lpcrel_hi17>:
802005e6: 00004817     	auipc	x16, 0x4
802005ea: fe840313     	addi	x6, x8, -0x18
802005ee: 43a5         	li	x7, 0x9

00000000802005f0 <.Lpcrel_hi18>:
802005f0: 00004597     	auipc	x11, 0x4

00000000802005f4 <.Lpcrel_hi19>:
802005f4: 00004697     	auipc	x13, 0x4

00000000802005f8 <.Lpcrel_hi20>:
802005f8: 00004897     	auipc	x17, 0x4

00000000802005fc <.Lpcrel_hi21>:
802005fc: 00004797     	auipc	x15, 0x4
80200600: 4625         	li	x12, 0x9
80200602: 472d         	li	x14, 0xb
80200604: b3280513     	addi	x10, x16, -0x4ce
80200608: b4858593     	addi	x11, x11, -0x4b8
8020060c: b4d68693     	addi	x13, x13, -0x4b3
80200610: b0088813     	addi	x16, x17, -0x500
80200614: b5078893     	addi	x17, x15, -0x4b0
80200618: e01e         	sd	x7, 0x0(x2)
8020061a: e41a         	sd	x6, 0x8(x2)
8020061c: e82a         	sd	x10, 0x10(x2)
8020061e: 8516         	mv	x10, x5
80200620: 87f2         	mv	x15, x28
80200622: 00002097     	auipc	x1, 0x2
80200626: cb6080e7     	jalr	-0x34a(x1) <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h7f690eac9a6861eaE>
8020062a: 70a2         	ld	x1, 0x28(x2)
8020062c: 7402         	ld	x8, 0x20(x2)
8020062e: 6145         	addi	x2, x2, 0x30
80200630: 8082         	ret

0000000080200632 <_ZN72_$LT$riscv..interrupt..Trap$LT$I$C$E$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h78d1e52c6127b115E>:
80200632: 1101         	addi	x2, x2, -0x20
80200634: ec06         	sd	x1, 0x18(x2)
80200636: e822         	sd	x8, 0x10(x2)
80200638: 1000         	addi	x8, x2, 0x20
8020063a: 87ae         	mv	x15, x11
8020063c: 610c         	ld	x11, 0x0(x10)
8020063e: 0521         	addi	x10, x10, 0x8
80200640: cd89         	beqz	x11, 0x8020065a <.Lpcrel_hi23+0x10>
80200642: fea43423     	sd	x10, -0x18(x8)

0000000080200646 <.Lpcrel_hi22>:
80200646: 00004517     	auipc	x10, 0x4

000000008020064a <.Lpcrel_hi23>:
8020064a: 00004697     	auipc	x13, 0x4
8020064e: 4625         	li	x12, 0x9
80200650: b7350593     	addi	x11, x10, -0x48d
80200654: b4668713     	addi	x14, x13, -0x4ba
80200658: a821         	j	0x80200670 <.Lpcrel_hi25+0xe>
8020065a: fea43423     	sd	x10, -0x18(x8)

000000008020065e <.Lpcrel_hi24>:
8020065e: 00004517     	auipc	x10, 0x4

0000000080200662 <.Lpcrel_hi25>:
80200662: 00004697     	auipc	x13, 0x4
80200666: 4625         	li	x12, 0x9
80200668: b5250593     	addi	x11, x10, -0x4ae
8020066c: b2e68713     	addi	x14, x13, -0x4d2
80200670: fe840693     	addi	x13, x8, -0x18
80200674: 853e         	mv	x10, x15
80200676: 00002097     	auipc	x1, 0x2
8020067a: d30080e7     	jalr	-0x2d0(x1) <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E>
8020067e: 60e2         	ld	x1, 0x18(x2)
80200680: 6442         	ld	x8, 0x10(x2)
80200682: 6105         	addi	x2, x2, 0x20
80200684: 8082         	ret

0000000080200686 <_ZN76_$LT$core..panic..panic_info..PanicMessage$u20$as$u20$core..fmt..Display$GT$3fmt17h579aaba787c3cab9E>:
80200686: 7139         	addi	x2, x2, -0x40
80200688: fc06         	sd	x1, 0x38(x2)
8020068a: f822         	sd	x8, 0x30(x2)
8020068c: 0080         	addi	x8, x2, 0x40
8020068e: 6110         	ld	x12, 0x0(x10)
80200690: 6188         	ld	x10, 0x0(x11)
80200692: 658c         	ld	x11, 0x8(x11)
80200694: 6214         	ld	x13, 0x0(x12)
80200696: 6618         	ld	x14, 0x8(x12)
80200698: 6a1c         	ld	x15, 0x10(x12)
8020069a: 01863803     	ld	x16, 0x18(x12)
8020069e: 02063883     	ld	x17, 0x20(x12)
802006a2: 7610         	ld	x12, 0x28(x12)
802006a4: fcd43023     	sd	x13, -0x40(x8)
802006a8: fce43423     	sd	x14, -0x38(x8)
802006ac: fcf43823     	sd	x15, -0x30(x8)
802006b0: fd043c23     	sd	x16, -0x28(x8)
802006b4: ff143023     	sd	x17, -0x20(x8)
802006b8: fec43423     	sd	x12, -0x18(x8)
802006bc: fc040613     	addi	x12, x8, -0x40
802006c0: 00001097     	auipc	x1, 0x1
802006c4: 5fe080e7     	jalr	0x5fe(x1) <_ZN4core3fmt5write17h330b311f63fce133E>
802006c8: 70e2         	ld	x1, 0x38(x2)
802006ca: 7442         	ld	x8, 0x30(x2)
802006cc: 6121         	addi	x2, x2, 0x40
802006ce: 8082         	ret

00000000802006d0 <_ZN2os5batch10AppManager8load_app17hfcdee1078c0d153eE>:
802006d0: 7155         	addi	x2, x2, -0xd0
802006d2: e586         	sd	x1, 0xc8(x2)
802006d4: e1a2         	sd	x8, 0xc0(x2)
802006d6: fd26         	sd	x9, 0xb8(x2)
802006d8: 0980         	addi	x8, x2, 0xd0
802006da: f2a43823     	sd	x10, -0xd0(x8)

00000000802006de <.Lpcrel_hi26>:
802006de: 0001e597     	auipc	x11, 0x1e
802006e2: 92258493     	addi	x9, x11, -0x6de
802006e6: 6090         	ld	x12, 0x0(x9)

00000000802006e8 <.Lpcrel_hi27>:
802006e8: 0001e597     	auipc	x11, 0x1e
802006ec: 9c05b583     	ld	x11, -0x640(x11)
802006f0: 0ec57463     	bgeu	x10, x12, 0x802007d8 <.Lpcrel_hi31+0xac>
802006f4: 4509         	li	x10, 0x2
802006f6: 08b57c63     	bgeu	x10, x11, 0x8020078e <.Lpcrel_hi31+0x62>
802006fa: f3040513     	addi	x10, x8, -0xd0

00000000802006fe <.Lpcrel_hi28>:
802006fe: 00002597     	auipc	x11, 0x2
80200702: 5f058593     	addi	x11, x11, 0x5f0
80200706: f2a43c23     	sd	x10, -0xc8(x8)
8020070a: f4b43023     	sd	x11, -0xc0(x8)

000000008020070e <.Lpcrel_hi29>:
8020070e: 00009517     	auipc	x10, 0x9
80200712: aa250513     	addi	x10, x10, -0x55e
80200716: 00001097     	auipc	x1, 0x1
8020071a: 03e080e7     	jalr	0x3e(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
8020071e: 610c         	ld	x11, 0x0(x10)
80200720: 6510         	ld	x12, 0x8(x10)
80200722: 4908         	lw	x10, 0x10(x10)
80200724: 480d         	li	x16, 0x3

0000000080200726 <.Lpcrel_hi30>:
80200726: 00009717     	auipc	x14, 0x9
8020072a: 48a5         	li	x17, 0x9

000000008020072c <.Lpcrel_hi31>:
8020072c: 00009697     	auipc	x13, 0x9
80200730: 4785         	li	x15, 0x1
80200732: f3840293     	addi	x5, x8, -0xc8
80200736: 92a70713     	addi	x14, x14, -0x6d6
8020073a: a7468693     	addi	x13, x13, -0x58c
8020073e: faf43c23     	sd	x15, -0x48(x8)
80200742: fc543023     	sd	x5, -0x40(x8)
80200746: fcf43423     	sd	x15, -0x38(x8)
8020074a: fc043823     	sd	x0, -0x30(x8)
8020074e: f8b43023     	sd	x11, -0x80(x8)
80200752: f8c43423     	sd	x12, -0x78(x8)
80200756: f9043823     	sd	x16, -0x70(x8)
8020075a: f8e43c23     	sd	x14, -0x68(x8)
8020075e: fb143023     	sd	x17, -0x60(x8)
80200762: faf42423     	sw	x15, -0x58(x8)
80200766: faa42623     	sw	x10, -0x54(x8)
8020076a: fad43823     	sd	x13, -0x50(x8)
8020076e: f6043023     	sd	x0, -0xa0(x8)
80200772: f6e43423     	sd	x14, -0x98(x8)
80200776: f7143823     	sd	x17, -0x90(x8)
8020077a: f6043c23     	sd	x0, -0x88(x8)
8020077e: fe740513     	addi	x10, x8, -0x19
80200782: f6040593     	addi	x11, x8, -0xa0
80200786: 00001097     	auipc	x1, 0x1
8020078a: f84080e7     	jalr	-0x7c(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
8020078e: 0000100f     	fence.i
80200792: 20100513     	li	x10, 0x201
80200796: 055a         	slli	x10, x10, 0x16
80200798: 00020637     	lui	x12, 0x20
8020079c: 4581         	li	x11, 0x0
8020079e: 00002097     	auipc	x1, 0x2
802007a2: 742080e7     	jalr	0x742(x1) <memset>
802007a6: f3043503     	ld	x10, -0xd0(x8)
802007aa: 45c5         	li	x11, 0x11
802007ac: 08b57c63     	bgeu	x10, x11, 0x80200844 <.Lpcrel_hi32>
802007b0: 45c1         	li	x11, 0x10
802007b2: 0ab50263     	beq	x10, x11, 0x80200856 <.Lpcrel_hi33>
802007b6: 050e         	slli	x10, x10, 0x3
802007b8: 9526         	add	x10, x10, x9
802007ba: 690c         	ld	x11, 0x10(x10)
802007bc: 6d10         	ld	x12, 0x18(x10)
802007be: 8e0d         	sub	x12, x12, x11
802007c0: 20100513     	li	x10, 0x201
802007c4: 055a         	slli	x10, x10, 0x16
802007c6: 00002097     	auipc	x1, 0x2
802007ca: 79e080e7     	jalr	0x79e(x1) <memcpy>
802007ce: 60ae         	ld	x1, 0xc8(x2)
802007d0: 640e         	ld	x8, 0xc0(x2)
802007d2: 74ea         	ld	x9, 0xb8(x2)
802007d4: 6169         	addi	x2, x2, 0xd0
802007d6: 8082         	ret
802007d8: 4509         	li	x10, 0x2
802007da: 06b57163     	bgeu	x10, x11, 0x8020083c <.Lpcrel_hi36+0x2e>

00000000802007de <.Lpcrel_hi34>:
802007de: 00009517     	auipc	x10, 0x9
802007e2: 4585         	li	x11, 0x1
802007e4: f8043023     	sd	x0, -0x80(x8)
802007e8: 4621         	li	x12, 0x8
802007ea: a3a50513     	addi	x10, x10, -0x5c6
802007ee: f6a43023     	sd	x10, -0xa0(x8)
802007f2: f6b43423     	sd	x11, -0x98(x8)
802007f6: f6c43823     	sd	x12, -0x90(x8)
802007fa: f6043c23     	sd	x0, -0x88(x8)

00000000802007fe <.Lpcrel_hi35>:
802007fe: 00009517     	auipc	x10, 0x9
80200802: a2a50513     	addi	x10, x10, -0x5d6
80200806: 00001097     	auipc	x1, 0x1
8020080a: f4e080e7     	jalr	-0xb2(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>

000000008020080e <.Lpcrel_hi36>:
8020080e: 00009597     	auipc	x11, 0x9
80200812: 4625         	li	x12, 0x9
80200814: 84258593     	addi	x11, x11, -0x7be
80200818: f2b43c23     	sd	x11, -0xc8(x8)
8020081c: f4c43023     	sd	x12, -0xc0(x8)
80200820: f4b43423     	sd	x11, -0xb8(x8)
80200824: f4c43823     	sd	x12, -0xb0(x8)
80200828: f4a43c23     	sd	x10, -0xa8(x8)
8020082c: f6040513     	addi	x10, x8, -0xa0
80200830: f3840593     	addi	x11, x8, -0xc8
80200834: 00000097     	auipc	x1, 0x0
80200838: 890080e7     	jalr	-0x770(x1) <_ZN3log13__private_api8log_impl17he39d6bd95415d872E>
8020083c: 00000097     	auipc	x1, 0x0
80200840: 64c080e7     	jalr	0x64c(x1) <_ZN2os3sbi8shutdown17h8ad2c72b4ecdb7fbE>

0000000080200844 <.Lpcrel_hi32>:
80200844: 00009597     	auipc	x11, 0x9
80200848: 98458613     	addi	x12, x11, -0x67c
8020084c: 45c5         	li	x11, 0x11
8020084e: 00001097     	auipc	x1, 0x1
80200852: f72080e7     	jalr	-0x8e(x1) <_ZN4core9panicking18panic_bounds_check17h8bcdb2fdb524de4cE>

0000000080200856 <.Lpcrel_hi33>:
80200856: 00009597     	auipc	x11, 0x9
8020085a: 4545         	li	x10, 0x11
8020085c: 98a58613     	addi	x12, x11, -0x676
80200860: 45c5         	li	x11, 0x11
80200862: 00001097     	auipc	x1, 0x1
80200866: f5e080e7     	jalr	-0xa2(x1) <_ZN4core9panicking18panic_bounds_check17h8bcdb2fdb524de4cE>

000000008020086a <_ZN2os5batch4init17hed49cbd167fc35c7E>:
8020086a: 7169         	addi	x2, x2, -0x130
8020086c: f606         	sd	x1, 0x128(x2)
8020086e: f222         	sd	x8, 0x120(x2)
80200870: ee26         	sd	x9, 0x118(x2)
80200872: ea4a         	sd	x18, 0x110(x2)
80200874: e64e         	sd	x19, 0x108(x2)
80200876: e252         	sd	x20, 0x100(x2)
80200878: fdd6         	sd	x21, 0xf8(x2)
8020087a: f9da         	sd	x22, 0xf0(x2)
8020087c: f5de         	sd	x23, 0xe8(x2)
8020087e: f1e2         	sd	x24, 0xe0(x2)
80200880: ede6         	sd	x25, 0xd8(x2)
80200882: e9ea         	sd	x26, 0xd0(x2)
80200884: e5ee         	sd	x27, 0xc8(x2)
80200886: 1a00         	addi	x8, x2, 0x130

0000000080200888 <.Lpcrel_hi37>:
80200888: 0001d517     	auipc	x10, 0x1d
8020088c: 77850b93     	addi	x23, x10, 0x778
80200890: 098b8503     	lb	x10, 0x98(x23)
80200894: 4489         	li	x9, 0x2
80200896: 0230000f     	fence	r, rw
8020089a: 1a951763     	bne	x10, x9, 0x80200a48 <.Lpcrel_hi44+0xe6>

000000008020089e <.Lpcrel_hi38>:
8020089e: 0001e997     	auipc	x19, 0x1e
802008a2: 80a9b503     	ld	x10, -0x7f6(x19)

00000000802008a6 <.Lpcrel_hi39>:
802008a6: 00002597     	auipc	x11, 0x2
802008aa: 44858593     	addi	x11, x11, 0x448
802008ae: ecb43823     	sd	x11, -0x130(x8)

00000000802008b2 <.Lpcrel_hi40>:
802008b2: 00008597     	auipc	x11, 0x8
802008b6: 79e58a93     	addi	x21, x11, 0x79e
802008ba: 08a4f463     	bgeu	x9, x10, 0x80200942 <.Lpcrel_hi46+0x5e>
802008be: ef743023     	sd	x23, -0x120(x8)
802008c2: ed043503     	ld	x10, -0x130(x8)
802008c6: eea43423     	sd	x10, -0x118(x8)

00000000802008ca <.Lpcrel_hi45>:
802008ca: 00008517     	auipc	x10, 0x8
802008ce: 76e50513     	addi	x10, x10, 0x76e
802008d2: 00001097     	auipc	x1, 0x1
802008d6: e82080e7     	jalr	-0x17e(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
802008da: 610c         	ld	x11, 0x0(x10)
802008dc: 6510         	ld	x12, 0x8(x10)
802008de: 4908         	lw	x10, 0x10(x10)
802008e0: 480d         	li	x16, 0x3
802008e2: 4725         	li	x14, 0x9

00000000802008e4 <.Lpcrel_hi46>:
802008e4: 00008797     	auipc	x15, 0x8
802008e8: 4485         	li	x9, 0x1
802008ea: ee040693     	addi	x13, x8, -0x120
802008ee: 73478793     	addi	x15, x15, 0x734
802008f2: f6943423     	sd	x9, -0x98(x8)
802008f6: f6d43823     	sd	x13, -0x90(x8)
802008fa: f6943c23     	sd	x9, -0x88(x8)
802008fe: f8043023     	sd	x0, -0x80(x8)
80200902: f2b43823     	sd	x11, -0xd0(x8)
80200906: f2c43c23     	sd	x12, -0xc8(x8)
8020090a: f5043023     	sd	x16, -0xc0(x8)
8020090e: f5543423     	sd	x21, -0xb8(x8)
80200912: f4e43823     	sd	x14, -0xb0(x8)
80200916: f4942c23     	sw	x9, -0xa8(x8)
8020091a: f4a42e23     	sw	x10, -0xa4(x8)
8020091e: f6f43023     	sd	x15, -0xa0(x8)
80200922: f0043823     	sd	x0, -0xf0(x8)
80200926: f1543c23     	sd	x21, -0xe8(x8)
8020092a: f2e43023     	sd	x14, -0xe0(x8)
8020092e: f2043423     	sd	x0, -0xd8(x8)
80200932: f9740513     	addi	x10, x8, -0x69
80200936: f1040593     	addi	x11, x8, -0xf0
8020093a: 00001097     	auipc	x1, 0x1
8020093e: dd0080e7     	jalr	-0x230(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
80200942: 000bbb03     	ld	x22, 0x0(x23)
80200946: 0e0b0263     	beqz	x22, 0x80200a2a <.Lpcrel_hi44+0xc8>
8020094a: 4481         	li	x9, 0x0
8020094c: 0bc1         	addi	x23, x23, 0x10
8020094e: 4709         	li	x14, 0x2
80200950: 47c1         	li	x15, 0x10

0000000080200952 <.Lpcrel_hi41>:
80200952: 00002517     	auipc	x10, 0x2

0000000080200956 <.Lpcrel_hi42>:
80200956: 00009597     	auipc	x11, 0x9
8020095a: 4d8d         	li	x27, 0x3
8020095c: 4d25         	li	x26, 0x9

000000008020095e <.Lpcrel_hi43>:
8020095e: 00008617     	auipc	x12, 0x8

0000000080200962 <.Lpcrel_hi44>:
80200962: 00008697     	auipc	x13, 0x8
80200966: 07e50a13     	addi	x20, x10, 0x7e
8020096a: 81a58913     	addi	x18, x11, -0x7e6
8020096e: 71260c13     	addi	x24, x12, 0x712
80200972: 77e68c93     	addi	x25, x13, 0x77e
80200976: a029         	j	0x80200980 <.Lpcrel_hi44+0x1e>
80200978: 0485         	addi	x9, x9, 0x1
8020097a: 0ba1         	addi	x23, x23, 0x8
8020097c: 0a9b0763     	beq	x22, x9, 0x80200a2a <.Lpcrel_hi44+0xc8>
80200980: ec943c23     	sd	x9, -0x128(x8)
80200984: 80a9b503     	ld	x10, -0x7f6(x19)
80200988: fea778e3     	bgeu	x14, x10, 0x80200978 <.Lpcrel_hi44+0x16>
8020098c: 0c97ed63     	bltu	x15, x9, 0x80200a66 <.Lpcrel_hi47>
80200990: 0cf48163     	beq	x9, x15, 0x80200a52 <.Lpcrel_hi48>
80200994: 008b8513     	addi	x10, x23, 0x8
80200998: ed840593     	addi	x11, x8, -0x128
8020099c: eeb43023     	sd	x11, -0x120(x8)
802009a0: ed043583     	ld	x11, -0x130(x8)
802009a4: eeb43423     	sd	x11, -0x118(x8)
802009a8: ef743823     	sd	x23, -0x110(x8)
802009ac: ef443c23     	sd	x20, -0x108(x8)
802009b0: f0a43023     	sd	x10, -0x100(x8)
802009b4: f1443423     	sd	x20, -0xf8(x8)
802009b8: 854a         	mv	x10, x18
802009ba: 00001097     	auipc	x1, 0x1
802009be: d9a080e7     	jalr	-0x266(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
802009c2: 610c         	ld	x11, 0x0(x10)
802009c4: 6510         	ld	x12, 0x8(x10)
802009c6: 4908         	lw	x10, 0x10(x10)
802009c8: 4691         	li	x13, 0x4
802009ca: f6d43423     	sd	x13, -0x98(x8)
802009ce: ee040693     	addi	x13, x8, -0x120
802009d2: f6d43823     	sd	x13, -0x90(x8)
802009d6: f7b43c23     	sd	x27, -0x88(x8)
802009da: f9943023     	sd	x25, -0x80(x8)
802009de: f9b43423     	sd	x27, -0x78(x8)
802009e2: f2b43823     	sd	x11, -0xd0(x8)
802009e6: f2c43c23     	sd	x12, -0xc8(x8)
802009ea: f5b43023     	sd	x27, -0xc0(x8)
802009ee: f5543423     	sd	x21, -0xb8(x8)
802009f2: f5a43823     	sd	x26, -0xb0(x8)
802009f6: 4585         	li	x11, 0x1
802009f8: f4b42c23     	sw	x11, -0xa8(x8)
802009fc: f4a42e23     	sw	x10, -0xa4(x8)
80200a00: f7843023     	sd	x24, -0xa0(x8)
80200a04: f0043823     	sd	x0, -0xf0(x8)
80200a08: f1543c23     	sd	x21, -0xe8(x8)
80200a0c: f3a43023     	sd	x26, -0xe0(x8)
80200a10: f2043423     	sd	x0, -0xd8(x8)
80200a14: f9740513     	addi	x10, x8, -0x69
80200a18: f1040593     	addi	x11, x8, -0xf0
80200a1c: 00001097     	auipc	x1, 0x1
80200a20: cee080e7     	jalr	-0x312(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
80200a24: 4709         	li	x14, 0x2
80200a26: 47c1         	li	x15, 0x10
80200a28: bf81         	j	0x80200978 <.Lpcrel_hi44+0x16>
80200a2a: 70b2         	ld	x1, 0x128(x2)
80200a2c: 7412         	ld	x8, 0x120(x2)
80200a2e: 64f2         	ld	x9, 0x118(x2)
80200a30: 6952         	ld	x18, 0x110(x2)
80200a32: 69b2         	ld	x19, 0x108(x2)
80200a34: 6a12         	ld	x20, 0x100(x2)
80200a36: 7aee         	ld	x21, 0xf8(x2)
80200a38: 7b4e         	ld	x22, 0xf0(x2)
80200a3a: 7bae         	ld	x23, 0xe8(x2)
80200a3c: 7c0e         	ld	x24, 0xe0(x2)
80200a3e: 6cee         	ld	x25, 0xd8(x2)
80200a40: 6d4e         	ld	x26, 0xd0(x2)
80200a42: 6dae         	ld	x27, 0xc8(x2)
80200a44: 6155         	addi	x2, x2, 0x130
80200a46: 8082         	ret
80200a48: 00000097     	auipc	x1, 0x0
80200a4c: 9d6080e7     	jalr	-0x62a(x1) <_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17hf1ff4b540ece37f3E>
80200a50: b5b9         	j	0x8020089e <.Lpcrel_hi38>

0000000080200a52 <.Lpcrel_hi48>:
80200a52: 00008597     	auipc	x11, 0x8
80200a56: 4545         	li	x10, 0x11
80200a58: 67658613     	addi	x12, x11, 0x676
80200a5c: 45c5         	li	x11, 0x11
80200a5e: 00001097     	auipc	x1, 0x1
80200a62: d62080e7     	jalr	-0x29e(x1) <_ZN4core9panicking18panic_bounds_check17h8bcdb2fdb524de4cE>

0000000080200a66 <.Lpcrel_hi47>:
80200a66: 00008517     	auipc	x10, 0x8
80200a6a: 64a50613     	addi	x12, x10, 0x64a
80200a6e: 45c5         	li	x11, 0x11
80200a70: 8526         	mv	x10, x9
80200a72: 00001097     	auipc	x1, 0x1
80200a76: d4e080e7     	jalr	-0x2b2(x1) <_ZN4core9panicking18panic_bounds_check17h8bcdb2fdb524de4cE>

0000000080200a7a <_ZN2os5batch12run_next_app17h73bb57cafa103d2aE>:
80200a7a: 711d         	addi	x2, x2, -0x60
80200a7c: ec86         	sd	x1, 0x58(x2)
80200a7e: e8a2         	sd	x8, 0x50(x2)
80200a80: e4a6         	sd	x9, 0x48(x2)
80200a82: e0ca         	sd	x18, 0x40(x2)
80200a84: fc4e         	sd	x19, 0x38(x2)
80200a86: 1080         	addi	x8, x2, 0x60
80200a88: 00001097     	auipc	x1, 0x1
80200a8c: b8e080e7     	jalr	-0x472(x1) <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h17edde5dad73fed2E>

0000000080200a90 <.Lpcrel_hi49>:
80200a90: 0001d917     	auipc	x18, 0x1d
80200a94: 57893503     	ld	x10, 0x578(x18)
80200a98: 00000097     	auipc	x1, 0x0
80200a9c: c38080e7     	jalr	-0x3c8(x1) <_ZN2os5batch10AppManager8load_app17hfcdee1078c0d153eE>
80200aa0: 57893503     	ld	x10, 0x578(x18)

0000000080200aa4 <.Lpcrel_hi50>:
80200aa4: 00004597     	auipc	x11, 0x4
80200aa8: 6609         	lui	x12, 0x2

0000000080200aaa <.Lpcrel_hi51>:
80200aaa: 00006697     	auipc	x13, 0x6
80200aae: 55c58593     	addi	x11, x11, 0x55c
80200ab2: 55668693     	addi	x13, x13, 0x556
80200ab6: f086071b     	addiw	x14, x12, -0xf8
80200aba: 96b2         	add	x13, x13, x12
80200abc: 00c584b3     	add	x9, x11, x12
80200ac0: 0505         	addi	x10, x10, 0x1
80200ac2: 56a93c23     	sd	x10, 0x578(x18)
80200ac6: ef048913     	addi	x18, x9, -0x110
80200aca: 10002573     	csrr	x10, sstatus
80200ace: ee04b823     	sd	x0, -0x110(x9)
80200ad2: ee04bc23     	sd	x0, -0x108(x9)
80200ad6: f0d4b023     	sd	x13, -0x100(x9)
80200ada: eff57993     	andi	x19, x10, -0x101
80200ade: 00e58533     	add	x10, x11, x14
80200ae2: 0e800613     	li	x12, 0xe8
80200ae6: 4581         	li	x11, 0x0
80200ae8: 00002097     	auipc	x1, 0x2
80200aec: 3f8080e7     	jalr	0x3f8(x1) <memset>
80200af0: 20100513     	li	x10, 0x201
80200af4: 055a         	slli	x10, x10, 0x16
80200af6: ff34b823     	sd	x19, -0x10(x9)
80200afa: fea4bc23     	sd	x10, -0x8(x9)
80200afe: 854a         	mv	x10, x18
80200b00: fffff097     	auipc	x1, 0xfffff
80200b04: 56c080e7     	jalr	0x56c(x1) <ekernel+0xfffe106c>

0000000080200b08 <.Lpcrel_hi52>:
80200b08: 00008517     	auipc	x10, 0x8
80200b0c: 4585         	li	x11, 0x1
80200b0e: fc043423     	sd	x0, -0x38(x8)
80200b12: 4621         	li	x12, 0x8
80200b14: 76050513     	addi	x10, x10, 0x760
80200b18: faa43423     	sd	x10, -0x58(x8)
80200b1c: fab43823     	sd	x11, -0x50(x8)
80200b20: fac43c23     	sd	x12, -0x48(x8)
80200b24: fc043023     	sd	x0, -0x40(x8)

0000000080200b28 <.Lpcrel_hi53>:
80200b28: 00008517     	auipc	x10, 0x8
80200b2c: 75050593     	addi	x11, x10, 0x750
80200b30: fa840513     	addi	x10, x8, -0x58
80200b34: 00001097     	auipc	x1, 0x1
80200b38: c30080e7     	jalr	-0x3d0(x1) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>

0000000080200b3c <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E>:
80200b3c: c259         	beqz	x12, 0x80200bc2 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x86>
80200b3e: 1141         	addi	x2, x2, -0x10
80200b40: e406         	sd	x1, 0x8(x2)
80200b42: e022         	sd	x8, 0x0(x2)
80200b44: 0800         	addi	x8, x2, 0x10
80200b46: 86ae         	mv	x13, x11
80200b48: 00c58733     	add	x14, x11, x12
80200b4c: 0df00293     	li	x5, 0xdf
80200b50: 0f000813     	li	x16, 0xf0
80200b54: 4885         	li	x17, 0x1
80200b56: a801         	j	0x80200b66 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x2a>
80200b58: 0685         	addi	x13, x13, 0x1
80200b5a: 4581         	li	x11, 0x0
80200b5c: 4601         	li	x12, 0x0
80200b5e: 00000073     	ecall
80200b62: 04e68d63     	beq	x13, x14, 0x80200bbc <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x80>
80200b66: 00068583     	lb	x11, 0x0(x13)
80200b6a: 0ff5f513     	andi	x10, x11, 0xff
80200b6e: fe05d5e3     	bgez	x11, 0x80200b58 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x1c>
80200b72: 0016c603     	lbu	x12, 0x1(x13)
80200b76: 01f57593     	andi	x11, x10, 0x1f
80200b7a: 03f67613     	andi	x12, x12, 0x3f
80200b7e: 02a2f563     	bgeu	x5, x10, 0x80200ba8 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x6c>
80200b82: 0026c783     	lbu	x15, 0x2(x13)
80200b86: 061a         	slli	x12, x12, 0x6
80200b88: 03f7f793     	andi	x15, x15, 0x3f
80200b8c: 8e5d         	or	x12, x12, x15
80200b8e: 03056263     	bltu	x10, x16, 0x80200bb2 <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x76>
80200b92: 0036c503     	lbu	x10, 0x3(x13)
80200b96: 0691         	addi	x13, x13, 0x4
80200b98: 15f6         	slli	x11, x11, 0x3d
80200b9a: 91ad         	srli	x11, x11, 0x2b
80200b9c: 061a         	slli	x12, x12, 0x6
80200b9e: 03f57513     	andi	x10, x10, 0x3f
80200ba2: 8d51         	or	x10, x10, x12
80200ba4: 8d4d         	or	x10, x10, x11
80200ba6: bf55         	j	0x80200b5a <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x1e>
80200ba8: 0689         	addi	x13, x13, 0x2
80200baa: 00659513     	slli	x10, x11, 0x6
80200bae: 8d51         	or	x10, x10, x12
80200bb0: b76d         	j	0x80200b5a <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x1e>
80200bb2: 068d         	addi	x13, x13, 0x3
80200bb4: 00c59513     	slli	x10, x11, 0xc
80200bb8: 8d51         	or	x10, x10, x12
80200bba: b745         	j	0x80200b5a <_ZN56_$LT$os..console..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h735b5dd6a07dbda6E+0x1e>
80200bbc: 60a2         	ld	x1, 0x8(x2)
80200bbe: 6402         	ld	x8, 0x0(x2)
80200bc0: 0141         	addi	x2, x2, 0x10
80200bc2: 4501         	li	x10, 0x0
80200bc4: 8082         	ret

0000000080200bc6 <_RNvCs2NpMWs10KAv_7___rustc17rust_begin_unwind>:
80200bc6: 7135         	addi	x2, x2, -0xa0
80200bc8: ed06         	sd	x1, 0x98(x2)
80200bca: e922         	sd	x8, 0x90(x2)
80200bcc: e526         	sd	x9, 0x88(x2)
80200bce: e14a         	sd	x18, 0x80(x2)
80200bd0: fcce         	sd	x19, 0x78(x2)
80200bd2: f8d2         	sd	x20, 0x70(x2)
80200bd4: 1100         	addi	x8, x2, 0xa0
80200bd6: 892a         	mv	x18, x10
80200bd8: 4581         	li	x11, 0x0

0000000080200bda <.Lpcrel_hi54>:
80200bda: 00008517     	auipc	x10, 0x8
80200bde: 4351         	li	x6, 0x14
80200be0: 0df00293     	li	x5, 0xdf
80200be4: 72e50793     	addi	x15, x10, 0x72e
80200be8: 0f000813     	li	x16, 0xf0
80200bec: 4885         	li	x17, 0x1
80200bee: a819         	j	0x80200c04 <.Lpcrel_hi54+0x2a>
80200bf0: 00661513     	slli	x10, x12, 0x6
80200bf4: 8d59         	or	x10, x10, x14
80200bf6: 4581         	li	x11, 0x0
80200bf8: 4601         	li	x12, 0x0
80200bfa: 00000073     	ecall
80200bfe: 85a6         	mv	x11, x9
80200c00: 06648363     	beq	x9, x6, 0x80200c66 <.Lpcrel_hi54+0x8c>
80200c04: 00b78533     	add	x10, x15, x11
80200c08: 00050603     	lb	x12, 0x0(x10)
80200c0c: 00158493     	addi	x9, x11, 0x1
80200c10: 0ff67513     	andi	x10, x12, 0xff
80200c14: fe0651e3     	bgez	x12, 0x80200bf6 <.Lpcrel_hi54+0x1c>
80200c18: 94be         	add	x9, x9, x15
80200c1a: 0004c703     	lbu	x14, 0x0(x9)
80200c1e: 01f57613     	andi	x12, x10, 0x1f
80200c22: 00258493     	addi	x9, x11, 0x2
80200c26: 03f77713     	andi	x14, x14, 0x3f
80200c2a: fca2f3e3     	bgeu	x5, x10, 0x80200bf0 <.Lpcrel_hi54+0x16>
80200c2e: 94be         	add	x9, x9, x15
80200c30: 0004c683     	lbu	x13, 0x0(x9)
80200c34: 00358493     	addi	x9, x11, 0x3
80200c38: 071a         	slli	x14, x14, 0x6
80200c3a: 03f6f693     	andi	x13, x13, 0x3f
80200c3e: 8f55         	or	x14, x14, x13
80200c40: 01056f63     	bltu	x10, x16, 0x80200c5e <.Lpcrel_hi54+0x84>
80200c44: 00978533     	add	x10, x15, x9
80200c48: 00458493     	addi	x9, x11, 0x4
80200c4c: 00054503     	lbu	x10, 0x0(x10)
80200c50: 1676         	slli	x12, x12, 0x3d
80200c52: 922d         	srli	x12, x12, 0x2b
80200c54: 071a         	slli	x14, x14, 0x6
80200c56: 03f57513     	andi	x10, x10, 0x3f
80200c5a: 8d51         	or	x10, x10, x12
80200c5c: a019         	j	0x80200c62 <.Lpcrel_hi54+0x88>
80200c5e: 00c61513     	slli	x10, x12, 0xc
80200c62: 8d59         	or	x10, x10, x14
80200c64: bf49         	j	0x80200bf6 <.Lpcrel_hi54+0x1c>
80200c66: 00893503     	ld	x10, 0x8(x18)
80200c6a: f8040993     	addi	x19, x8, -0x80

0000000080200c6e <.Lpcrel_hi55>:
80200c6e: fffff597     	auipc	x11, 0xfffff
80200c72: f9440613     	addi	x12, x8, -0x6c

0000000080200c76 <.Lpcrel_hi56>:
80200c76: 00002697     	auipc	x13, 0x2

0000000080200c7a <.Lpcrel_hi57>:
80200c7a: 00008717     	auipc	x14, 0x8
80200c7e: 5e858593     	addi	x11, x11, 0x5e8
80200c82: eb868693     	addi	x13, x13, -0x148
80200c86: 611c         	ld	x15, 0x0(x10)
80200c88: 6504         	ld	x9, 0x8(x10)
80200c8a: 4908         	lw	x10, 0x10(x10)
80200c8c: f7343023     	sd	x19, -0xa0(x8)
80200c90: f6b43423     	sd	x11, -0x98(x8)
80200c94: f6c43823     	sd	x12, -0x90(x8)
80200c98: f6d43c23     	sd	x13, -0x88(x8)
80200c9c: 458d         	li	x11, 0x3
80200c9e: fa043c23     	sd	x0, -0x48(x8)
80200ca2: f8f43023     	sd	x15, -0x80(x8)
80200ca6: f8943423     	sd	x9, -0x78(x8)
80200caa: f6040a13     	addi	x20, x8, -0xa0
80200cae: f8a42a23     	sw	x10, -0x6c(x8)
80200cb2: 4489         	li	x9, 0x2
80200cb4: 6ae70513     	addi	x10, x14, 0x6ae
80200cb8: f8a43c23     	sd	x10, -0x68(x8)
80200cbc: fab43023     	sd	x11, -0x60(x8)
80200cc0: fb443423     	sd	x20, -0x58(x8)
80200cc4: fa943823     	sd	x9, -0x50(x8)

0000000080200cc8 <.Lpcrel_hi58>:
80200cc8: 00003597     	auipc	x11, 0x3
80200ccc: fcf40513     	addi	x10, x8, -0x31
80200cd0: 50058593     	addi	x11, x11, 0x500
80200cd4: f9840613     	addi	x12, x8, -0x68
80200cd8: 00001097     	auipc	x1, 0x1
80200cdc: fe6080e7     	jalr	-0x1a(x1) <_ZN4core3fmt5write17h330b311f63fce133E>
80200ce0: e931         	bnez	x10, 0x80200d34 <.Lpcrel_hi59>
80200ce2: 00093503     	ld	x10, 0x0(x18)

0000000080200ce6 <.Lpcrel_hi62>:
80200ce6: 00000597     	auipc	x11, 0x0
80200cea: 9a058593     	addi	x11, x11, -0x660
80200cee: f7343023     	sd	x19, -0xa0(x8)
80200cf2: f6b43423     	sd	x11, -0x98(x8)

0000000080200cf6 <.Lpcrel_hi63>:
80200cf6: 00008597     	auipc	x11, 0x8
80200cfa: fa043c23     	sd	x0, -0x48(x8)
80200cfe: f8a43023     	sd	x10, -0x80(x8)
80200d02: 4505         	li	x10, 0x1
80200d04: 66258593     	addi	x11, x11, 0x662
80200d08: f8b43c23     	sd	x11, -0x68(x8)
80200d0c: fa943023     	sd	x9, -0x60(x8)
80200d10: fb443423     	sd	x20, -0x58(x8)
80200d14: faa43823     	sd	x10, -0x50(x8)

0000000080200d18 <.Lpcrel_hi64>:
80200d18: 00003597     	auipc	x11, 0x3
80200d1c: fcf40513     	addi	x10, x8, -0x31
80200d20: 4b058593     	addi	x11, x11, 0x4b0
80200d24: f9840613     	addi	x12, x8, -0x68
80200d28: 00001097     	auipc	x1, 0x1
80200d2c: f96080e7     	jalr	-0x6a(x1) <_ZN4core3fmt5write17h330b311f63fce133E>
80200d30: e515         	bnez	x10, 0x80200d5c <.Lpcrel_hi65>
80200d32: a001         	j	0x80200d32 <.Lpcrel_hi64+0x1a>

0000000080200d34 <.Lpcrel_hi59>:
80200d34: 00008517     	auipc	x10, 0x8

0000000080200d38 <.Lpcrel_hi60>:
80200d38: 00008617     	auipc	x12, 0x8

0000000080200d3c <.Lpcrel_hi61>:
80200d3c: 00008717     	auipc	x14, 0x8
80200d40: 02b00593     	li	x11, 0x2b
80200d44: 57c50513     	addi	x10, x10, 0x57c
80200d48: 55860693     	addi	x13, x12, 0x558
80200d4c: 5b470713     	addi	x14, x14, 0x5b4
80200d50: fcf40613     	addi	x12, x8, -0x31
80200d54: 00001097     	auipc	x1, 0x1
80200d58: ac6080e7     	jalr	-0x53a(x1) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

0000000080200d5c <.Lpcrel_hi65>:
80200d5c: 00008517     	auipc	x10, 0x8

0000000080200d60 <.Lpcrel_hi66>:
80200d60: 00008617     	auipc	x12, 0x8

0000000080200d64 <.Lpcrel_hi67>:
80200d64: 00008717     	auipc	x14, 0x8
80200d68: 02b00593     	li	x11, 0x2b
80200d6c: 55450513     	addi	x10, x10, 0x554
80200d70: 53060693     	addi	x13, x12, 0x530
80200d74: 58c70713     	addi	x14, x14, 0x58c
80200d78: fcf40613     	addi	x12, x8, -0x31
80200d7c: 00001097     	auipc	x1, 0x1
80200d80: a9e080e7     	jalr	-0x562(x1) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

0000000080200d84 <_ZN54_$LT$os..logging..SimpleLogger$u20$as$u20$log..Log$GT$7enabled17h49b876ccbf32f0e3E>:
80200d84: 1141         	addi	x2, x2, -0x10
80200d86: e406         	sd	x1, 0x8(x2)
80200d88: e022         	sd	x8, 0x0(x2)
80200d8a: 0800         	addi	x8, x2, 0x10
80200d8c: 4505         	li	x10, 0x1
80200d8e: 60a2         	ld	x1, 0x8(x2)
80200d90: 6402         	ld	x8, 0x0(x2)
80200d92: 0141         	addi	x2, x2, 0x10
80200d94: 8082         	ret

0000000080200d96 <_ZN54_$LT$os..logging..SimpleLogger$u20$as$u20$log..Log$GT$3log17hb6a4efc2e6a20328E>:
80200d96: 7175         	addi	x2, x2, -0x90
80200d98: e506         	sd	x1, 0x88(x2)
80200d9a: e122         	sd	x8, 0x80(x2)
80200d9c: 0900         	addi	x8, x2, 0x90
80200d9e: 7988         	ld	x10, 0x30(x11)

0000000080200da0 <.Lpcrel_hi68>:
80200da0: 00009617     	auipc	x12, 0x9
80200da4: 05058593     	addi	x11, x11, 0x50
80200da8: f7440813     	addi	x16, x8, -0x8c

0000000080200dac <.Lpcrel_hi69>:
80200dac: 00002717     	auipc	x14, 0x2
80200db0: fd840293     	addi	x5, x8, -0x28

0000000080200db4 <.Lpcrel_hi70>:
80200db4: 00001697     	auipc	x13, 0x1
80200db8: fe040893     	addi	x17, x8, -0x20

0000000080200dbc <.Lpcrel_hi71>:
80200dbc: fffff797     	auipc	x15, 0xfffff
80200dc0: feb43023     	sd	x11, -0x20(x8)

0000000080200dc4 <.Lpcrel_hi72>:
80200dc4: 00008597     	auipc	x11, 0x8
80200dc8: d9e70713     	addi	x14, x14, -0x262
80200dcc: 89268693     	addi	x13, x13, -0x76e
80200dd0: fb043423     	sd	x16, -0x58(x8)
80200dd4: fae43823     	sd	x14, -0x50(x8)
80200dd8: fa543c23     	sd	x5, -0x48(x8)
80200ddc: fcd43023     	sd	x13, -0x40(x8)
80200de0: 4691         	li	x13, 0x4
80200de2: c6060613     	addi	x12, x12, -0x3a0
80200de6: 4bc78713     	addi	x14, x15, 0x4bc
80200dea: fd143423     	sd	x17, -0x38(x8)
80200dee: fce43823     	sd	x14, -0x30(x8)
80200df2: 00251713     	slli	x14, x10, 0x2
80200df6: 963a         	add	x12, x12, x14
80200df8: ffc62603     	lw	x12, -0x4(x12)

0000000080200dfc <.Lpcrel_hi73>:
80200dfc: 00008717     	auipc	x14, 0x8
80200e00: fca43c23     	sd	x10, -0x28(x8)
80200e04: 450d         	li	x10, 0x3
80200e06: f6c42a23     	sw	x12, -0x8c(x8)
80200e0a: fa840613     	addi	x12, x8, -0x58
80200e0e: 5c458593     	addi	x11, x11, 0x5c4
80200e12: 5cc70713     	addi	x14, x14, 0x5cc
80200e16: f8e43c23     	sd	x14, -0x68(x8)
80200e1a: faa43023     	sd	x10, -0x60(x8)
80200e1e: f6b43c23     	sd	x11, -0x88(x8)
80200e22: f8d43023     	sd	x13, -0x80(x8)
80200e26: f8c43423     	sd	x12, -0x78(x8)
80200e2a: f8a43823     	sd	x10, -0x70(x8)

0000000080200e2e <.Lpcrel_hi74>:
80200e2e: 00003597     	auipc	x11, 0x3
80200e32: fef40513     	addi	x10, x8, -0x11
80200e36: 39a58593     	addi	x11, x11, 0x39a
80200e3a: f7840613     	addi	x12, x8, -0x88
80200e3e: 00001097     	auipc	x1, 0x1
80200e42: e80080e7     	jalr	-0x180(x1) <_ZN4core3fmt5write17h330b311f63fce133E>
80200e46: e509         	bnez	x10, 0x80200e50 <.Lpcrel_hi75>
80200e48: 60aa         	ld	x1, 0x88(x2)
80200e4a: 640a         	ld	x8, 0x80(x2)
80200e4c: 6149         	addi	x2, x2, 0x90
80200e4e: 8082         	ret

0000000080200e50 <.Lpcrel_hi75>:
80200e50: 00008517     	auipc	x10, 0x8

0000000080200e54 <.Lpcrel_hi76>:
80200e54: 00008617     	auipc	x12, 0x8

0000000080200e58 <.Lpcrel_hi77>:
80200e58: 00008717     	auipc	x14, 0x8
80200e5c: 02b00593     	li	x11, 0x2b
80200e60: 46050513     	addi	x10, x10, 0x460
80200e64: 43c60693     	addi	x13, x12, 0x43c
80200e68: 49870713     	addi	x14, x14, 0x498
80200e6c: fef40613     	addi	x12, x8, -0x11
80200e70: 00001097     	auipc	x1, 0x1
80200e74: 9aa080e7     	jalr	-0x656(x1) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

0000000080200e78 <_ZN54_$LT$os..logging..SimpleLogger$u20$as$u20$log..Log$GT$5flush17h79f8a59d43874238E>:
80200e78: 1141         	addi	x2, x2, -0x10
80200e7a: e406         	sd	x1, 0x8(x2)
80200e7c: e022         	sd	x8, 0x0(x2)
80200e7e: 0800         	addi	x8, x2, 0x10
80200e80: 60a2         	ld	x1, 0x8(x2)
80200e82: 6402         	ld	x8, 0x0(x2)
80200e84: 0141         	addi	x2, x2, 0x10
80200e86: 8082         	ret

0000000080200e88 <_ZN2os3sbi8shutdown17h8ad2c72b4ecdb7fbE>:
80200e88: 7139         	addi	x2, x2, -0x40
80200e8a: fc06         	sd	x1, 0x38(x2)
80200e8c: f822         	sd	x8, 0x30(x2)
80200e8e: 0080         	addi	x8, x2, 0x40
80200e90: 4801         	li	x16, 0x0
80200e92: 4501         	li	x10, 0x0
80200e94: 4581         	li	x11, 0x0
80200e96: 53525637     	lui	x12, 0x53525
80200e9a: 3546089b     	addiw	x17, x12, 0x354
80200e9e: 00000073     	ecall

0000000080200ea2 <.Lpcrel_hi78>:
80200ea2: 00008517     	auipc	x10, 0x8
80200ea6: 4585         	li	x11, 0x1
80200ea8: 4621         	li	x12, 0x8
80200eaa: 64650513     	addi	x10, x10, 0x646
80200eae: fe043023     	sd	x0, -0x20(x8)
80200eb2: fca43023     	sd	x10, -0x40(x8)
80200eb6: fcb43423     	sd	x11, -0x38(x8)
80200eba: fcc43823     	sd	x12, -0x30(x8)
80200ebe: fc043c23     	sd	x0, -0x28(x8)

0000000080200ec2 <.Lpcrel_hi79>:
80200ec2: 00008517     	auipc	x10, 0x8
80200ec6: 64650593     	addi	x11, x10, 0x646
80200eca: fc040513     	addi	x10, x8, -0x40
80200ece: 00001097     	auipc	x1, 0x1
80200ed2: 896080e7     	jalr	-0x76a(x1) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>

0000000080200ed6 <_ZN2os7syscall7process8sys_exit17h39e4e5d78a98f4f5E>:
80200ed6: 7171         	addi	x2, x2, -0xb0
80200ed8: f506         	sd	x1, 0xa8(x2)
80200eda: f122         	sd	x8, 0xa0(x2)
80200edc: 1900         	addi	x8, x2, 0xb0
80200ede: f4a42a23     	sw	x10, -0xac(x8)

0000000080200ee2 <.Lpcrel_hi80>:
80200ee2: 0001d517     	auipc	x10, 0x1d
80200ee6: 1c653503     	ld	x10, 0x1c6(x10)
80200eea: 4589         	li	x11, 0x2
80200eec: 08a5fc63     	bgeu	x11, x10, 0x80200f84 <.Lpcrel_hi84+0x62>
80200ef0: f5440513     	addi	x10, x8, -0xac

0000000080200ef4 <.Lpcrel_hi81>:
80200ef4: 00002597     	auipc	x11, 0x2
80200ef8: c5658593     	addi	x11, x11, -0x3aa
80200efc: f4a43c23     	sd	x10, -0xa8(x8)
80200f00: f6b43023     	sd	x11, -0xa0(x8)

0000000080200f04 <.Lpcrel_hi82>:
80200f04: 00008517     	auipc	x10, 0x8
80200f08: 71450513     	addi	x10, x10, 0x714
80200f0c: 00001097     	auipc	x1, 0x1
80200f10: 848080e7     	jalr	-0x7b8(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
80200f14: 610c         	ld	x11, 0x0(x10)
80200f16: 6510         	ld	x12, 0x8(x10)
80200f18: 4908         	lw	x10, 0x10(x10)
80200f1a: 480d         	li	x16, 0x3

0000000080200f1c <.Lpcrel_hi83>:
80200f1c: 00008717     	auipc	x14, 0x8
80200f20: 48d1         	li	x17, 0x14

0000000080200f22 <.Lpcrel_hi84>:
80200f22: 00008697     	auipc	x13, 0x8
80200f26: 4785         	li	x15, 0x1
80200f28: f5840293     	addi	x5, x8, -0xa8
80200f2c: 71470713     	addi	x14, x14, 0x714
80200f30: 6ce68693     	addi	x13, x13, 0x6ce
80200f34: fcf43023     	sd	x15, -0x40(x8)
80200f38: fc543423     	sd	x5, -0x38(x8)
80200f3c: fcf43823     	sd	x15, -0x30(x8)
80200f40: fc043c23     	sd	x0, -0x28(x8)
80200f44: f8b43423     	sd	x11, -0x78(x8)
80200f48: f8c43823     	sd	x12, -0x70(x8)
80200f4c: f9043c23     	sd	x16, -0x68(x8)
80200f50: fae43023     	sd	x14, -0x60(x8)
80200f54: fb143423     	sd	x17, -0x58(x8)
80200f58: faf42823     	sw	x15, -0x50(x8)
80200f5c: faa42a23     	sw	x10, -0x4c(x8)
80200f60: fad43c23     	sd	x13, -0x48(x8)
80200f64: f6043423     	sd	x0, -0x98(x8)
80200f68: f6e43823     	sd	x14, -0x90(x8)
80200f6c: f7143c23     	sd	x17, -0x88(x8)
80200f70: f8043023     	sd	x0, -0x80(x8)
80200f74: fef40513     	addi	x10, x8, -0x11
80200f78: f6840593     	addi	x11, x8, -0x98
80200f7c: 00000097     	auipc	x1, 0x0
80200f80: 78e080e7     	jalr	0x78e(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
80200f84: 00000097     	auipc	x1, 0x0
80200f88: af6080e7     	jalr	-0x50a(x1) <_ZN2os5batch12run_next_app17h73bb57cafa103d2aE>

0000000080200f8c <_ZN2os4trap4init17ha17d9a72d251b082E>:
80200f8c: 7171         	addi	x2, x2, -0xb0
80200f8e: f506         	sd	x1, 0xa8(x2)
80200f90: f122         	sd	x8, 0xa0(x2)
80200f92: 1900         	addi	x8, x2, 0xb0

0000000080200f94 <.Lpcrel_hi85>:
80200f94: fffff517     	auipc	x10, 0xfffff
80200f98: 07c50513     	addi	x10, x10, 0x7c
80200f9c: f4a43823     	sd	x10, -0xb0(x8)
80200fa0: 10551073     	csrw	stvec, x10

0000000080200fa4 <.Lpcrel_hi86>:
80200fa4: 0001d517     	auipc	x10, 0x1d
80200fa8: 10453503     	ld	x10, 0x104(x10)
80200fac: 4589         	li	x11, 0x2
80200fae: 0aa5f363     	bgeu	x11, x10, 0x80201054 <.Lpcrel_hi90+0x50>
80200fb2: f5040513     	addi	x10, x8, -0xb0

0000000080200fb6 <.Lpcrel_hi87>:
80200fb6: 00002597     	auipc	x11, 0x2
80200fba: a1a58593     	addi	x11, x11, -0x5e6
80200fbe: f4a43c23     	sd	x10, -0xa8(x8)
80200fc2: f6b43023     	sd	x11, -0xa0(x8)

0000000080200fc6 <.Lpcrel_hi88>:
80200fc6: 00008517     	auipc	x10, 0x8
80200fca: 75a50513     	addi	x10, x10, 0x75a
80200fce: 00000097     	auipc	x1, 0x0
80200fd2: 786080e7     	jalr	0x786(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
80200fd6: 610c         	ld	x11, 0x0(x10)
80200fd8: 6510         	ld	x12, 0x8(x10)
80200fda: 01052283     	lw	x5, 0x10(x10)
80200fde: 480d         	li	x16, 0x3

0000000080200fe0 <.Lpcrel_hi89>:
80200fe0: 00008717     	auipc	x14, 0x8
80200fe4: 48a1         	li	x17, 0x8
80200fe6: 4685         	li	x13, 0x1
80200fe8: f5840793     	addi	x15, x8, -0xa8

0000000080200fec <.Lpcrel_hi91>:
80200fec: 00008517     	auipc	x10, 0x8
80200ff0: 6f450513     	addi	x10, x10, 0x6f4
80200ff4: fcd43023     	sd	x13, -0x40(x8)
80200ff8: fcf43423     	sd	x15, -0x38(x8)
80200ffc: fcd43823     	sd	x13, -0x30(x8)
80201000: fca43c23     	sd	x10, -0x28(x8)

0000000080201004 <.Lpcrel_hi90>:
80201004: 00008517     	auipc	x10, 0x8
80201008: 77070713     	addi	x14, x14, 0x770
8020100c: 6cc50513     	addi	x10, x10, 0x6cc
80201010: fed43023     	sd	x13, -0x20(x8)
80201014: f8b43423     	sd	x11, -0x78(x8)
80201018: f8c43823     	sd	x12, -0x70(x8)
8020101c: f9043c23     	sd	x16, -0x68(x8)
80201020: fae43023     	sd	x14, -0x60(x8)
80201024: fb143423     	sd	x17, -0x58(x8)
80201028: fad42823     	sw	x13, -0x50(x8)
8020102c: fa542a23     	sw	x5, -0x4c(x8)
80201030: faa43c23     	sd	x10, -0x48(x8)
80201034: f6043423     	sd	x0, -0x98(x8)
80201038: f6e43823     	sd	x14, -0x90(x8)
8020103c: f7143c23     	sd	x17, -0x88(x8)
80201040: f8043023     	sd	x0, -0x80(x8)
80201044: fef40513     	addi	x10, x8, -0x11
80201048: f6840593     	addi	x11, x8, -0x98
8020104c: 00000097     	auipc	x1, 0x0
80201050: 6be080e7     	jalr	0x6be(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
80201054: 70aa         	ld	x1, 0xa8(x2)
80201056: 740a         	ld	x8, 0xa0(x2)
80201058: 614d         	addi	x2, x2, 0xb0
8020105a: 8082         	ret

000000008020105c <trap_handler>:
8020105c: 716d         	addi	x2, x2, -0x110
8020105e: e606         	sd	x1, 0x108(x2)
80201060: e222         	sd	x8, 0x100(x2)
80201062: fda6         	sd	x9, 0xf8(x2)
80201064: f9ca         	sd	x18, 0xf0(x2)
80201066: 0a00         	addi	x8, x2, 0x110
80201068: 142025f3     	csrr	x11, scause
8020106c: 14302673     	csrr	x12, stval
80201070: eec43c23     	sd	x12, -0x108(x8)
80201074: 3e05ca63     	bltz	x11, 0x80201468 <.Lpcrel_hi106+0x20>
80201078: 461d         	li	x12, 0x7
8020107a: f0b43023     	sd	x11, -0x100(x8)
8020107e: 08b64363     	blt	x12, x11, 0x80201104 <.Lpcrel_hi101+0x14>
80201082: 4609         	li	x12, 0x2
80201084: 10c58263     	beq	x11, x12, 0x80201188 <.Lpcrel_hi122>
80201088: 461d         	li	x12, 0x7
8020108a: 08c58363     	beq	x11, x12, 0x80201110 <.Lpcrel_hi121>
8020108e: 10850513     	addi	x10, x10, 0x108
80201092: f0040813     	addi	x16, x8, -0x100

0000000080201096 <.Lpcrel_hi97>:
80201096: 00002617     	auipc	x12, 0x2
8020109a: ef840693     	addi	x13, x8, -0x108

000000008020109e <.Lpcrel_hi98>:
8020109e: 00002717     	auipc	x14, 0x2

00000000802010a2 <.Lpcrel_hi99>:
802010a2: 00009797     	auipc	x15, 0x9
802010a6: 448d         	li	x9, 0x3

00000000802010a8 <.Lpcrel_hi100>:
802010a8: 00008597     	auipc	x11, 0x8
802010ac: c5860613     	addi	x12, x12, -0x3a8
802010b0: 93270713     	addi	x14, x14, -0x6ce
802010b4: f5043c23     	sd	x16, -0xa8(x8)
802010b8: f6c43023     	sd	x12, -0xa0(x8)
802010bc: f6d43423     	sd	x13, -0x98(x8)
802010c0: f6e43823     	sd	x14, -0x90(x8)
802010c4: f6a43c23     	sd	x10, -0x88(x8)
802010c8: f8e43023     	sd	x14, -0x80(x8)
802010cc: f5840513     	addi	x10, x8, -0xa8
802010d0: 89678613     	addi	x12, x15, -0x76a
802010d4: 03858593     	addi	x11, x11, 0x38
802010d8: f2b43423     	sd	x11, -0xd8(x8)
802010dc: f2943823     	sd	x9, -0xd0(x8)
802010e0: f0c43423     	sd	x12, -0xf8(x8)
802010e4: f0943823     	sd	x9, -0xf0(x8)
802010e8: f0a43c23     	sd	x10, -0xe8(x8)
802010ec: f2943023     	sd	x9, -0xe0(x8)

00000000802010f0 <.Lpcrel_hi101>:
802010f0: 00009517     	auipc	x10, 0x9
802010f4: 87850593     	addi	x11, x10, -0x788
802010f8: f0840513     	addi	x10, x8, -0xf8
802010fc: 00000097     	auipc	x1, 0x0
80201100: 668080e7     	jalr	0x668(x1) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>
80201104: 4621         	li	x12, 0x8
80201106: 08c58a63     	beq	x11, x12, 0x8020119a <.Lpcrel_hi122+0x12>
8020110a: 463d         	li	x12, 0xf
8020110c: f8c591e3     	bne	x11, x12, 0x8020108e <trap_handler+0x32>

0000000080201110 <.Lpcrel_hi121>:
80201110: 0001d597     	auipc	x11, 0x1d
80201114: f985b583     	ld	x11, -0x68(x11)
80201118: cdad         	beqz	x11, 0x80201192 <.Lpcrel_hi122+0xa>
8020111a: 10850513     	addi	x10, x10, 0x108
8020111e: f0040593     	addi	x11, x8, -0x100

0000000080201122 <.Lpcrel_hi123>:
80201122: 00002617     	auipc	x12, 0x2
80201126: ef840693     	addi	x13, x8, -0x108

000000008020112a <.Lpcrel_hi124>:
8020112a: 00002717     	auipc	x14, 0x2
8020112e: bcc60613     	addi	x12, x12, -0x434
80201132: 8a670713     	addi	x14, x14, -0x75a
80201136: f0b43423     	sd	x11, -0xf8(x8)
8020113a: f0c43823     	sd	x12, -0xf0(x8)
8020113e: f0d43c23     	sd	x13, -0xe8(x8)
80201142: f2e43023     	sd	x14, -0xe0(x8)
80201146: f2a43423     	sd	x10, -0xd8(x8)
8020114a: f2e43823     	sd	x14, -0xd0(x8)

000000008020114e <.Lpcrel_hi125>:
8020114e: 00008517     	auipc	x10, 0x8
80201152: 6f250513     	addi	x10, x10, 0x6f2
80201156: 00000097     	auipc	x1, 0x0
8020115a: 5fe080e7     	jalr	0x5fe(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
8020115e: 610c         	ld	x11, 0x0(x10)
80201160: 6510         	ld	x12, 0x8(x10)
80201162: 4908         	lw	x10, 0x10(x10)
80201164: 4805         	li	x16, 0x1

0000000080201166 <.Lpcrel_hi126>:
80201166: 00008717     	auipc	x14, 0x8
8020116a: 48a1         	li	x17, 0x8

000000008020116c <.Lpcrel_hi127>:
8020116c: 00008497     	auipc	x9, 0x8
80201170: 468d         	li	x13, 0x3
80201172: f0840293     	addi	x5, x8, -0xf8

0000000080201176 <.Lpcrel_hi128>:
80201176: 00008797     	auipc	x15, 0x8
8020117a: 5ea70713     	addi	x14, x14, 0x5ea
8020117e: 6a448493     	addi	x9, x9, 0x6a4
80201182: f6a78793     	addi	x15, x15, -0x96
80201186: a8c5         	j	0x80201276 <.Lpcrel_hi134+0x10>

0000000080201188 <.Lpcrel_hi122>:
80201188: 0001d597     	auipc	x11, 0x1d
8020118c: f205b583     	ld	x11, -0xe0(x11)
80201190: e1d9         	bnez	x11, 0x80201216 <.Lpcrel_hi120+0x12>
80201192: 00000097     	auipc	x1, 0x0
80201196: 8e8080e7     	jalr	-0x718(x1) <_ZN2os5batch12run_next_app17h73bb57cafa103d2aE>
8020119a: 10853703     	ld	x14, 0x108(x10)
8020119e: 6930         	ld	x12, 0x50(x10)
802011a0: 6d2c         	ld	x11, 0x58(x10)
802011a2: 7124         	ld	x9, 0x60(x10)
802011a4: 6554         	ld	x13, 0x88(x10)
802011a6: 0711         	addi	x14, x14, 0x4
802011a8: 10e53423     	sd	x14, 0x108(x10)
802011ac: 04000713     	li	x14, 0x40
802011b0: f2d43c23     	sd	x13, -0xc8(x8)
802011b4: 10e68f63     	beq	x13, x14, 0x802012d2 <.Lpcrel_hi134+0x6c>
802011b8: 05d00593     	li	x11, 0x5d
802011bc: 32b68763     	beq	x13, x11, 0x802014ea <.Lpcrel_hi96+0x14>

00000000802011c0 <.Lpcrel_hi102>:
802011c0: 0001d597     	auipc	x11, 0x1d
802011c4: ee85b583     	ld	x11, -0x118(x11)
802011c8: 54fd         	li	x9, -0x1
802011ca: 24058c63     	beqz	x11, 0x80201422 <.Lpcrel_hi116+0x62>
802011ce: f3840593     	addi	x11, x8, -0xc8

00000000802011d2 <.Lpcrel_hi117>:
802011d2: 00002617     	auipc	x12, 0x2
802011d6: b1c60613     	addi	x12, x12, -0x4e4
802011da: f0b43423     	sd	x11, -0xf8(x8)
802011de: f0c43823     	sd	x12, -0xf0(x8)

00000000802011e2 <.Lpcrel_hi118>:
802011e2: 00008597     	auipc	x11, 0x8
802011e6: 4a658593     	addi	x11, x11, 0x4a6
802011ea: 892a         	mv	x18, x10
802011ec: 852e         	mv	x10, x11
802011ee: 00000097     	auipc	x1, 0x0
802011f2: 566080e7     	jalr	0x566(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
802011f6: 610c         	ld	x11, 0x0(x10)
802011f8: 6510         	ld	x12, 0x8(x10)
802011fa: 4908         	lw	x10, 0x10(x10)
802011fc: 4685         	li	x13, 0x1

00000000802011fe <.Lpcrel_hi119>:
802011fe: 00008717     	auipc	x14, 0x8
80201202: 482d         	li	x16, 0xb

0000000080201204 <.Lpcrel_hi120>:
80201204: 00008797     	auipc	x15, 0x8
80201208: f0840893     	addi	x17, x8, -0xf8
8020120c: 4a270713     	addi	x14, x14, 0x4a2
80201210: 45c78793     	addi	x15, x15, 0x45c
80201214: aa75         	j	0x802013d0 <.Lpcrel_hi116+0x10>
80201216: 10850513     	addi	x10, x10, 0x108
8020121a: f0040593     	addi	x11, x8, -0x100

000000008020121e <.Lpcrel_hi129>:
8020121e: 00002617     	auipc	x12, 0x2

0000000080201222 <.Lpcrel_hi130>:
80201222: 00001697     	auipc	x13, 0x1
80201226: ad060613     	addi	x12, x12, -0x530
8020122a: 7ae68693     	addi	x13, x13, 0x7ae
8020122e: f0b43423     	sd	x11, -0xf8(x8)
80201232: f0c43823     	sd	x12, -0xf0(x8)
80201236: f0a43c23     	sd	x10, -0xe8(x8)
8020123a: f2d43023     	sd	x13, -0xe0(x8)

000000008020123e <.Lpcrel_hi131>:
8020123e: 00008517     	auipc	x10, 0x8
80201242: 6c250513     	addi	x10, x10, 0x6c2
80201246: 00000097     	auipc	x1, 0x0
8020124a: 50e080e7     	jalr	0x50e(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
8020124e: 610c         	ld	x11, 0x0(x10)
80201250: 6510         	ld	x12, 0x8(x10)
80201252: 4908         	lw	x10, 0x10(x10)
80201254: 4805         	li	x16, 0x1

0000000080201256 <.Lpcrel_hi132>:
80201256: 00008717     	auipc	x14, 0x8
8020125a: 48a1         	li	x17, 0x8

000000008020125c <.Lpcrel_hi133>:
8020125c: 00008497     	auipc	x9, 0x8
80201260: 4689         	li	x13, 0x2
80201262: f0840293     	addi	x5, x8, -0xf8

0000000080201266 <.Lpcrel_hi134>:
80201266: 00008797     	auipc	x15, 0x8
8020126a: 4fa70713     	addi	x14, x14, 0x4fa
8020126e: 62448493     	addi	x9, x9, 0x624
80201272: 63a78793     	addi	x15, x15, 0x63a
80201276: fcd43823     	sd	x13, -0x30(x8)
8020127a: fad43823     	sd	x13, -0x50(x8)
8020127e: fa543c23     	sd	x5, -0x48(x8)
80201282: fcd43023     	sd	x13, -0x40(x8)
80201286: fcf43423     	sd	x15, -0x38(x8)
8020128a: f6b43c23     	sd	x11, -0x88(x8)
8020128e: f8c43023     	sd	x12, -0x80(x8)
80201292: f9043423     	sd	x16, -0x78(x8)
80201296: f8e43823     	sd	x14, -0x70(x8)
8020129a: f9143c23     	sd	x17, -0x68(x8)
8020129e: fb042023     	sw	x16, -0x60(x8)
802012a2: faa42223     	sw	x10, -0x5c(x8)
802012a6: fa943423     	sd	x9, -0x58(x8)
802012aa: f4043c23     	sd	x0, -0xa8(x8)
802012ae: f6e43023     	sd	x14, -0xa0(x8)
802012b2: f7143423     	sd	x17, -0x98(x8)
802012b6: f6043823     	sd	x0, -0x90(x8)
802012ba: fdf40513     	addi	x10, x8, -0x21
802012be: f5840593     	addi	x11, x8, -0xa8
802012c2: 00000097     	auipc	x1, 0x0
802012c6: 448080e7     	jalr	0x448(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
802012ca: fffff097     	auipc	x1, 0xfffff
802012ce: 7b0080e7     	jalr	0x7b0(x1) <ekernel+0xfffe1a7a>
802012d2: 4685         	li	x13, 0x1
802012d4: f4c43023     	sd	x12, -0xc0(x8)
802012d8: 0ad61363     	bne	x12, x13, 0x8020137e <.Lpcrel_hi103>
802012dc: 892a         	mv	x18, x10
802012de: f5840513     	addi	x10, x8, -0xa8
802012e2: 8626         	mv	x12, x9
802012e4: 00001097     	auipc	x1, 0x1
802012e8: 248080e7     	jalr	0x248(x1) <_ZN4core3str8converts9from_utf817hc00df9613d7a9420E>
802012ec: f5843503     	ld	x10, -0xa8(x8)
802012f0: 14051063     	bnez	x10, 0x80201430 <.Lpcrel_hi116+0x70>
802012f4: f6043503     	ld	x10, -0xa0(x8)
802012f8: f6843583     	ld	x11, -0x98(x8)
802012fc: f4840613     	addi	x12, x8, -0xb8

0000000080201300 <.Lpcrel_hi107>:
80201300: fffff697     	auipc	x13, 0xfffff

0000000080201304 <.Lpcrel_hi108>:
80201304: 00008717     	auipc	x14, 0x8
80201308: 4789         	li	x15, 0x2
8020130a: f6043c23     	sd	x0, -0x88(x8)
8020130e: f5668693     	addi	x13, x13, -0xaa
80201312: f0c43423     	sd	x12, -0xf8(x8)
80201316: f0d43823     	sd	x13, -0xf0(x8)
8020131a: f0840613     	addi	x12, x8, -0xf8
8020131e: f4a43423     	sd	x10, -0xb8(x8)
80201322: f4b43823     	sd	x11, -0xb0(x8)
80201326: 4505         	li	x10, 0x1
80201328: 05470593     	addi	x11, x14, 0x54
8020132c: f4b43c23     	sd	x11, -0xa8(x8)
80201330: f6f43023     	sd	x15, -0xa0(x8)
80201334: f6c43423     	sd	x12, -0x98(x8)
80201338: f6a43823     	sd	x10, -0x90(x8)

000000008020133c <.Lpcrel_hi109>:
8020133c: 00003597     	auipc	x11, 0x3
80201340: fdf40513     	addi	x10, x8, -0x21
80201344: e8c58593     	addi	x11, x11, -0x174
80201348: f5840613     	addi	x12, x8, -0xa8
8020134c: 00001097     	auipc	x1, 0x1
80201350: 972080e7     	jalr	-0x68e(x1) <_ZN4core3fmt5write17h330b311f63fce133E>
80201354: c571         	beqz	x10, 0x80201420 <.Lpcrel_hi116+0x60>

0000000080201356 <.Lpcrel_hi110>:
80201356: 00008517     	auipc	x10, 0x8

000000008020135a <.Lpcrel_hi111>:
8020135a: 00008617     	auipc	x12, 0x8

000000008020135e <.Lpcrel_hi112>:
8020135e: 00008717     	auipc	x14, 0x8
80201362: 02b00593     	li	x11, 0x2b
80201366: f5a50513     	addi	x10, x10, -0xa6
8020136a: f3660693     	addi	x13, x12, -0xca
8020136e: f9270713     	addi	x14, x14, -0x6e
80201372: fdf40613     	addi	x12, x8, -0x21
80201376: 00000097     	auipc	x1, 0x0
8020137a: 4a4080e7     	jalr	0x4a4(x1) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

000000008020137e <.Lpcrel_hi103>:
8020137e: 0001d597     	auipc	x11, 0x1d
80201382: d2a5b583     	ld	x11, -0x2d6(x11)
80201386: 54fd         	li	x9, -0x1
80201388: cdc9         	beqz	x11, 0x80201422 <.Lpcrel_hi116+0x62>
8020138a: f4040593     	addi	x11, x8, -0xc0

000000008020138e <.Lpcrel_hi113>:
8020138e: 00002617     	auipc	x12, 0x2
80201392: 96060613     	addi	x12, x12, -0x6a0
80201396: f0b43423     	sd	x11, -0xf8(x8)
8020139a: f0c43823     	sd	x12, -0xf0(x8)

000000008020139e <.Lpcrel_hi114>:
8020139e: 00008597     	auipc	x11, 0x8
802013a2: 20258593     	addi	x11, x11, 0x202
802013a6: 892a         	mv	x18, x10
802013a8: 852e         	mv	x10, x11
802013aa: 00000097     	auipc	x1, 0x0
802013ae: 3aa080e7     	jalr	0x3aa(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
802013b2: 610c         	ld	x11, 0x0(x10)
802013b4: 6510         	ld	x12, 0x8(x10)
802013b6: 4908         	lw	x10, 0x10(x10)
802013b8: 4685         	li	x13, 0x1

00000000802013ba <.Lpcrel_hi115>:
802013ba: 00008717     	auipc	x14, 0x8
802013be: 483d         	li	x16, 0xf

00000000802013c0 <.Lpcrel_hi116>:
802013c0: 00008797     	auipc	x15, 0x8
802013c4: f0840893     	addi	x17, x8, -0xf8
802013c8: 1fe70713     	addi	x14, x14, 0x1fe
802013cc: 1d078793     	addi	x15, x15, 0x1d0
802013d0: fad43823     	sd	x13, -0x50(x8)
802013d4: fb143c23     	sd	x17, -0x48(x8)
802013d8: fcd43023     	sd	x13, -0x40(x8)
802013dc: fc043423     	sd	x0, -0x38(x8)
802013e0: f6b43c23     	sd	x11, -0x88(x8)
802013e4: f8c43023     	sd	x12, -0x80(x8)
802013e8: f8d43423     	sd	x13, -0x78(x8)
802013ec: f8e43823     	sd	x14, -0x70(x8)
802013f0: f9043c23     	sd	x16, -0x68(x8)
802013f4: fad42023     	sw	x13, -0x60(x8)
802013f8: faa42223     	sw	x10, -0x5c(x8)
802013fc: faf43423     	sd	x15, -0x58(x8)
80201400: f4043c23     	sd	x0, -0xa8(x8)
80201404: f6e43023     	sd	x14, -0xa0(x8)
80201408: f7043423     	sd	x16, -0x98(x8)
8020140c: f6043823     	sd	x0, -0x90(x8)
80201410: fdf40513     	addi	x10, x8, -0x21
80201414: f5840593     	addi	x11, x8, -0xa8
80201418: 00000097     	auipc	x1, 0x0
8020141c: 2f2080e7     	jalr	0x2f2(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
80201420: 854a         	mv	x10, x18
80201422: e924         	sd	x9, 0x50(x10)
80201424: 60b2         	ld	x1, 0x108(x2)
80201426: 6412         	ld	x8, 0x100(x2)
80201428: 74ee         	ld	x9, 0xf8(x2)
8020142a: 794e         	ld	x18, 0xf0(x2)
8020142c: 6151         	addi	x2, x2, 0x110
8020142e: 8082         	ret
80201430: f6043503     	ld	x10, -0xa0(x8)
80201434: f6843583     	ld	x11, -0x98(x8)
80201438: f0a43423     	sd	x10, -0xf8(x8)
8020143c: f0b43823     	sd	x11, -0xf0(x8)

0000000080201440 <.Lpcrel_hi104>:
80201440: 00008517     	auipc	x10, 0x8

0000000080201444 <.Lpcrel_hi105>:
80201444: 00008617     	auipc	x12, 0x8

0000000080201448 <.Lpcrel_hi106>:
80201448: 00008717     	auipc	x14, 0x8
8020144c: 02b00593     	li	x11, 0x2b
80201450: e7050513     	addi	x10, x10, -0x190
80201454: 0dc60693     	addi	x13, x12, 0xdc
80201458: 11070713     	addi	x14, x14, 0x110
8020145c: f0840613     	addi	x12, x8, -0xf8
80201460: 00000097     	auipc	x1, 0x0
80201464: 3ba080e7     	jalr	0x3ba(x1) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>
80201468: 0586         	slli	x11, x11, 0x1
8020146a: 10850513     	addi	x10, x10, 0x108
8020146e: f4840813     	addi	x16, x8, -0xb8

0000000080201472 <.Lpcrel_hi92>:
80201472: fffff697     	auipc	x13, 0xfffff
80201476: ef840713     	addi	x14, x8, -0x108

000000008020147a <.Lpcrel_hi93>:
8020147a: 00001797     	auipc	x15, 0x1

000000008020147e <.Lpcrel_hi94>:
8020147e: 00008497     	auipc	x9, 0x8
80201482: 460d         	li	x12, 0x3
80201484: 8185         	srli	x11, x11, 0x1
80201486: f4043423     	sd	x0, -0xb8(x8)
8020148a: f4b43823     	sd	x11, -0xb0(x8)

000000008020148e <.Lpcrel_hi95>:
8020148e: 00008597     	auipc	x11, 0x8
80201492: 1c068693     	addi	x13, x13, 0x1c0
80201496: 55678793     	addi	x15, x15, 0x556
8020149a: f5043c23     	sd	x16, -0xa8(x8)
8020149e: f6d43023     	sd	x13, -0xa0(x8)
802014a2: f6e43423     	sd	x14, -0x98(x8)
802014a6: f6f43823     	sd	x15, -0x90(x8)
802014aa: f6a43c23     	sd	x10, -0x88(x8)
802014ae: f8f43023     	sd	x15, -0x80(x8)
802014b2: f5840513     	addi	x10, x8, -0xa8
802014b6: 32a48693     	addi	x13, x9, 0x32a
802014ba: c5258593     	addi	x11, x11, -0x3ae
802014be: f2b43423     	sd	x11, -0xd8(x8)
802014c2: f2c43823     	sd	x12, -0xd0(x8)
802014c6: f0d43423     	sd	x13, -0xf8(x8)
802014ca: f0c43823     	sd	x12, -0xf0(x8)
802014ce: f0a43c23     	sd	x10, -0xe8(x8)
802014d2: f2c43023     	sd	x12, -0xe0(x8)

00000000802014d6 <.Lpcrel_hi96>:
802014d6: 00008517     	auipc	x10, 0x8
802014da: 4aa50593     	addi	x11, x10, 0x4aa
802014de: f0840513     	addi	x10, x8, -0xf8
802014e2: 00000097     	auipc	x1, 0x0
802014e6: 282080e7     	jalr	0x282(x1) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>
802014ea: 0006051b     	sext.w	x10, x12
802014ee: 00000097     	auipc	x1, 0x0
802014f2: 9e8080e7     	jalr	-0x618(x1) <_ZN2os7syscall7process8sys_exit17h39e4e5d78a98f4f5E>

00000000802014f6 <rust_main>:
802014f6: 7135         	addi	x2, x2, -0xa0
802014f8: ed06         	sd	x1, 0x98(x2)
802014fa: e922         	sd	x8, 0x90(x2)
802014fc: e526         	sd	x9, 0x88(x2)
802014fe: 1100         	addi	x8, x2, 0xa0

0000000080201500 <.Lpcrel_hi135>:
80201500: 0001e517     	auipc	x10, 0x1e

0000000080201504 <.Lpcrel_hi136>:
80201504: 0001d597     	auipc	x11, 0x1d
80201508: b0050513     	addi	x10, x10, -0x500
8020150c: afc58593     	addi	x11, x11, -0x504
80201510: 00a5f963     	bgeu	x11, x10, 0x80201522 <.Lpcrel_hi137>
80201514: 00158613     	addi	x12, x11, 0x1
80201518: 00058023     	sb	x0, 0x0(x11)
8020151c: 85b2         	mv	x11, x12
8020151e: fec51be3     	bne	x10, x12, 0x80201514 <.Lpcrel_hi136+0x10>

0000000080201522 <.Lpcrel_hi137>:
80201522: 00006517     	auipc	x10, 0x6
80201526: ade50513     	addi	x10, x10, -0x522
8020152a: 14051073     	csrw	sscratch, x10

000000008020152e <.Lpcrel_hi138>:
8020152e: 00008517     	auipc	x10, 0x8

0000000080201532 <.Lpcrel_hi139>:
80201532: 00008597     	auipc	x11, 0x8
80201536: fa250513     	addi	x10, x10, -0x5e
8020153a: f2658593     	addi	x11, x11, -0xda
8020153e: 00000097     	auipc	x1, 0x0
80201542: 166080e7     	jalr	0x166(x1) <_ZN3log10set_logger17h786001dfbc383d06E>
80201546: e545         	bnez	x10, 0x802015ee <.Lpcrel_hi140>

0000000080201548 <.Lpcrel_hi143>:
80201548: 0001d517     	auipc	x10, 0x1d
8020154c: b6053023     	sd	x0, -0x4a0(x10)
80201550: b6053503     	ld	x10, -0x4a0(x10)
80201554: 4489         	li	x9, 0x2
80201556: 08a4f063     	bgeu	x9, x10, 0x802015d6 <.Lpcrel_hi146+0x60>

000000008020155a <.Lpcrel_hi144>:
8020155a: 00008517     	auipc	x10, 0x8
8020155e: 46e50513     	addi	x10, x10, 0x46e
80201562: 00000097     	auipc	x1, 0x0
80201566: 1f2080e7     	jalr	0x1f2(x1) <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>
8020156a: 610c         	ld	x11, 0x0(x10)
8020156c: 6510         	ld	x12, 0x8(x10)
8020156e: 4908         	lw	x10, 0x10(x10)
80201570: 480d         	li	x16, 0x3

0000000080201572 <.Lpcrel_hi145>:
80201572: 00008717     	auipc	x14, 0x8

0000000080201576 <.Lpcrel_hi146>:
80201576: 00008797     	auipc	x15, 0x8
8020157a: 4885         	li	x17, 0x1
8020157c: 46a1         	li	x13, 0x8
8020157e: 46e70713     	addi	x14, x14, 0x46e
80201582: 43278793     	addi	x15, x15, 0x432
80201586: fb143c23     	sd	x17, -0x48(x8)
8020158a: fcd43023     	sd	x13, -0x40(x8)
8020158e: fc043423     	sd	x0, -0x38(x8)
80201592: fc043823     	sd	x0, -0x30(x8)
80201596: f8b43023     	sd	x11, -0x80(x8)
8020159a: f8c43423     	sd	x12, -0x78(x8)
8020159e: f9043823     	sd	x16, -0x70(x8)
802015a2: f8e43c23     	sd	x14, -0x68(x8)
802015a6: fa943023     	sd	x9, -0x60(x8)
802015aa: fb142423     	sw	x17, -0x58(x8)
802015ae: faa42623     	sw	x10, -0x54(x8)
802015b2: faf43823     	sd	x15, -0x50(x8)
802015b6: f6043023     	sd	x0, -0xa0(x8)
802015ba: f6e43423     	sd	x14, -0x98(x8)
802015be: f6943823     	sd	x9, -0x90(x8)
802015c2: f6043c23     	sd	x0, -0x88(x8)
802015c6: fe740513     	addi	x10, x8, -0x19
802015ca: f6040593     	addi	x11, x8, -0xa0
802015ce: 00000097     	auipc	x1, 0x0
802015d2: 13c080e7     	jalr	0x13c(x1) <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>
802015d6: 00000097     	auipc	x1, 0x0
802015da: 9b6080e7     	jalr	-0x64a(x1) <_ZN2os4trap4init17ha17d9a72d251b082E>
802015de: fffff097     	auipc	x1, 0xfffff
802015e2: 28c080e7     	jalr	0x28c(x1) <ekernel+0xfffe186a>
802015e6: fffff097     	auipc	x1, 0xfffff
802015ea: 494080e7     	jalr	0x494(x1) <ekernel+0xfffe1a7a>

00000000802015ee <.Lpcrel_hi140>:
802015ee: 00008517     	auipc	x10, 0x8

00000000802015f2 <.Lpcrel_hi141>:
802015f2: 00008617     	auipc	x12, 0x8

00000000802015f6 <.Lpcrel_hi142>:
802015f6: 00008717     	auipc	x14, 0x8
802015fa: 02b00593     	li	x11, 0x2b
802015fe: cc250513     	addi	x10, x10, -0x33e
80201602: e9660693     	addi	x13, x12, -0x16a
80201606: ec270713     	addi	x14, x14, -0x13e
8020160a: fe740613     	addi	x12, x8, -0x19
8020160e: 00000097     	auipc	x1, 0x0
80201612: 20c080e7     	jalr	0x20c(x1) <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>

0000000080201616 <_ZN66_$LT$os..batch..APP_MANAGER$u20$as$u20$core..ops..deref..Deref$GT$5deref17h17edde5dad73fed2E>:
80201616: 1141         	addi	x2, x2, -0x10
80201618: e406         	sd	x1, 0x8(x2)
8020161a: e022         	sd	x8, 0x0(x2)
8020161c: 0800         	addi	x8, x2, 0x10

000000008020161e <.Lpcrel_hi147>:
8020161e: 0001d517     	auipc	x10, 0x1d
80201622: a7a50503     	lb	x10, -0x586(x10)
80201626: 4589         	li	x11, 0x2
80201628: 0230000f     	fence	r, rw
8020162c: 00b51663     	bne	x10, x11, 0x80201638 <.Lpcrel_hi147+0x1a>
80201630: 60a2         	ld	x1, 0x8(x2)
80201632: 6402         	ld	x8, 0x0(x2)
80201634: 0141         	addi	x2, x2, 0x10
80201636: 8082         	ret
80201638: 60a2         	ld	x1, 0x8(x2)
8020163a: 6402         	ld	x8, 0x0(x2)
8020163c: 0141         	addi	x2, x2, 0x10
8020163e: fffff317     	auipc	x6, 0xfffff
80201642: de030067     	jr	-0x220(x6) <ekernel+0xfffe141e>

0000000080201646 <_ZN49_$LT$log..Level$u20$as$u20$core..fmt..Display$GT$3fmt17heb112ac4ceafc575E>:
80201646: 1141         	addi	x2, x2, -0x10
80201648: e406         	sd	x1, 0x8(x2)
8020164a: e022         	sd	x8, 0x0(x2)
8020164c: 0800         	addi	x8, x2, 0x10
8020164e: 6108         	ld	x10, 0x0(x10)

0000000080201650 <.Lpcrel_hi0>:
80201650: 00008617     	auipc	x12, 0x8
80201654: 41060613     	addi	x12, x12, 0x410
80201658: 0512         	slli	x10, x10, 0x4
8020165a: 9532         	add	x10, x10, x12
8020165c: 6114         	ld	x13, 0x0(x10)
8020165e: 6510         	ld	x12, 0x8(x10)
80201660: 852e         	mv	x10, x11
80201662: 85b6         	mv	x11, x13
80201664: 60a2         	ld	x1, 0x8(x2)
80201666: 6402         	ld	x8, 0x0(x2)
80201668: 0141         	addi	x2, x2, 0x10
8020166a: 00001317     	auipc	x6, 0x1
8020166e: a9c30067     	jr	-0x564(x6) <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E>

0000000080201672 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$7enabled17h4defacb76959f2f3E>:
80201672: 1141         	addi	x2, x2, -0x10
80201674: e406         	sd	x1, 0x8(x2)
80201676: e022         	sd	x8, 0x0(x2)
80201678: 0800         	addi	x8, x2, 0x10
8020167a: 4501         	li	x10, 0x0
8020167c: 60a2         	ld	x1, 0x8(x2)
8020167e: 6402         	ld	x8, 0x0(x2)
80201680: 0141         	addi	x2, x2, 0x10
80201682: 8082         	ret

0000000080201684 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$3log17ha3301eeab0f62d47E>:
80201684: 1141         	addi	x2, x2, -0x10
80201686: e406         	sd	x1, 0x8(x2)
80201688: e022         	sd	x8, 0x0(x2)
8020168a: 0800         	addi	x8, x2, 0x10
8020168c: 60a2         	ld	x1, 0x8(x2)
8020168e: 6402         	ld	x8, 0x0(x2)
80201690: 0141         	addi	x2, x2, 0x10
80201692: 8082         	ret

0000000080201694 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$5flush17h7d483d8d8209a26cE>:
80201694: 1141         	addi	x2, x2, -0x10
80201696: e406         	sd	x1, 0x8(x2)
80201698: e022         	sd	x8, 0x0(x2)
8020169a: 0800         	addi	x8, x2, 0x10
8020169c: 60a2         	ld	x1, 0x8(x2)
8020169e: 6402         	ld	x8, 0x0(x2)
802016a0: 0141         	addi	x2, x2, 0x10
802016a2: 8082         	ret

00000000802016a4 <_ZN3log10set_logger17h786001dfbc383d06E>:
802016a4: 1141         	addi	x2, x2, -0x10
802016a6: e406         	sd	x1, 0x8(x2)
802016a8: e022         	sd	x8, 0x0(x2)
802016aa: 0800         	addi	x8, x2, 0x10

00000000802016ac <.Lpcrel_hi4>:
802016ac: 0001d617     	auipc	x12, 0x1d
802016b0: 9f460613     	addi	x12, x12, -0x60c
802016b4: 4705         	li	x14, 0x1
802016b6: 140637af     	lr.d.aq	x15, (x12)
802016ba: e781         	bnez	x15, 0x802016c2 <.Lpcrel_hi4+0x16>
802016bc: 18e636af     	sc.d	x13, x14, (x12)
802016c0: fafd         	bnez	x13, 0x802016b6 <.Lpcrel_hi4+0xa>
802016c2: 0017b693     	seqz	x13, x15
802016c6: e38d         	bnez	x15, 0x802016e8 <.Lpcrel_hi5+0x20>

00000000802016c8 <.Lpcrel_hi5>:
802016c8: 0000c717     	auipc	x14, 0xc
802016cc: 4789         	li	x15, 0x2
802016ce: 6d870713     	addi	x14, x14, 0x6d8
802016d2: e308         	sd	x10, 0x0(x14)
802016d4: e70c         	sd	x11, 0x8(x14)
802016d6: 0310000f     	fence	rw, w
802016da: e21c         	sd	x15, 0x0(x12)
802016dc: 0016c513     	xori	x10, x13, 0x1
802016e0: 60a2         	ld	x1, 0x8(x2)
802016e2: 6402         	ld	x8, 0x0(x2)
802016e4: 0141         	addi	x2, x2, 0x10
802016e6: 8082         	ret
802016e8: 00e79b63     	bne	x15, x14, 0x802016fe <.Lpcrel_hi5+0x36>
802016ec: 620c         	ld	x11, 0x0(x12)
802016ee: 4505         	li	x10, 0x1
802016f0: 00a59763     	bne	x11, x10, 0x802016fe <.Lpcrel_hi5+0x36>
802016f4: 0100000f     	fence	w, 0
802016f8: 620c         	ld	x11, 0x0(x12)
802016fa: fea58de3     	beq	x11, x10, 0x802016f4 <.Lpcrel_hi5+0x2c>
802016fe: 0016c513     	xori	x10, x13, 0x1
80201702: 60a2         	ld	x1, 0x8(x2)
80201704: 6402         	ld	x8, 0x0(x2)
80201706: 0141         	addi	x2, x2, 0x10
80201708: 8082         	ret

000000008020170a <_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17hca4ca316fbe6a1baE>:
8020170a: 1141         	addi	x2, x2, -0x10
8020170c: e406         	sd	x1, 0x8(x2)
8020170e: e022         	sd	x8, 0x0(x2)
80201710: 0800         	addi	x8, x2, 0x10

0000000080201712 <.Lpcrel_hi20>:
80201712: 0001d517     	auipc	x10, 0x1d
80201716: 98e53503     	ld	x10, -0x672(x10)
8020171a: 4609         	li	x12, 0x2
8020171c: 0230000f     	fence	r, rw
80201720: 00c50f63     	beq	x10, x12, 0x8020173e <.Lpcrel_hi21>

0000000080201724 <.Lpcrel_hi22>:
80201724: 00008517     	auipc	x10, 0x8

0000000080201728 <.Lpcrel_hi23>:
80201728: 00008697     	auipc	x13, 0x8
8020172c: 2f450613     	addi	x12, x10, 0x2f4
80201730: 39868513     	addi	x10, x13, 0x398
80201734: 721c         	ld	x15, 0x20(x12)
80201736: 60a2         	ld	x1, 0x8(x2)
80201738: 6402         	ld	x8, 0x0(x2)
8020173a: 0141         	addi	x2, x2, 0x10
8020173c: 8782         	jr	x15

000000008020173e <.Lpcrel_hi21>:
8020173e: 0000c517     	auipc	x10, 0xc
80201742: 66250613     	addi	x12, x10, 0x662
80201746: 6208         	ld	x10, 0x0(x12)
80201748: 6610         	ld	x12, 0x8(x12)
8020174a: 721c         	ld	x15, 0x20(x12)
8020174c: 60a2         	ld	x1, 0x8(x2)
8020174e: 6402         	ld	x8, 0x0(x2)
80201750: 0141         	addi	x2, x2, 0x10
80201752: 8782         	jr	x15

0000000080201754 <_ZN3log13__private_api3loc17h3e672cb8ffadef5dE>:
80201754: 1141         	addi	x2, x2, -0x10
80201756: e406         	sd	x1, 0x8(x2)
80201758: e022         	sd	x8, 0x0(x2)
8020175a: 0800         	addi	x8, x2, 0x10
8020175c: 60a2         	ld	x1, 0x8(x2)
8020175e: 6402         	ld	x8, 0x0(x2)
80201760: 0141         	addi	x2, x2, 0x10
80201762: 8082         	ret

0000000080201764 <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>:
80201764: 7179         	addi	x2, x2, -0x30
80201766: f406         	sd	x1, 0x28(x2)
80201768: f022         	sd	x8, 0x20(x2)
8020176a: 1800         	addi	x8, x2, 0x30
8020176c: 4605         	li	x12, 0x1
8020176e: fca43c23     	sd	x10, -0x28(x8)
80201772: feb43023     	sd	x11, -0x20(x8)
80201776: fec41423     	sh	x12, -0x18(x8)
8020177a: fd840513     	addi	x10, x8, -0x28
8020177e: fffff097     	auipc	x1, 0xfffff
80201782: 448080e7     	jalr	0x448(x1) <ekernel+0xfffe1bc6>

0000000080201786 <_ZN4core9panicking5panic17head41d9616bfc060E>:
80201786: 715d         	addi	x2, x2, -0x50
80201788: e486         	sd	x1, 0x48(x2)
8020178a: e0a2         	sd	x8, 0x40(x2)
8020178c: 0880         	addi	x8, x2, 0x50
8020178e: fea43023     	sd	x10, -0x20(x8)
80201792: feb43423     	sd	x11, -0x18(x8)
80201796: fe040513     	addi	x10, x8, -0x20
8020179a: 4585         	li	x11, 0x1
8020179c: fc043823     	sd	x0, -0x30(x8)
802017a0: 46a1         	li	x13, 0x8
802017a2: faa43823     	sd	x10, -0x50(x8)
802017a6: fab43c23     	sd	x11, -0x48(x8)
802017aa: fcd43023     	sd	x13, -0x40(x8)
802017ae: fc043423     	sd	x0, -0x38(x8)
802017b2: fb040513     	addi	x10, x8, -0x50
802017b6: 85b2         	mv	x11, x12
802017b8: 00000097     	auipc	x1, 0x0
802017bc: fac080e7     	jalr	-0x54(x1) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>

00000000802017c0 <_ZN4core9panicking18panic_bounds_check17h8bcdb2fdb524de4cE>:
802017c0: 7159         	addi	x2, x2, -0x70
802017c2: f486         	sd	x1, 0x68(x2)
802017c4: f0a2         	sd	x8, 0x60(x2)
802017c6: 1880         	addi	x8, x2, 0x70
802017c8: f8a43823     	sd	x10, -0x70(x8)
802017cc: f8b43c23     	sd	x11, -0x68(x8)
802017d0: f9840513     	addi	x10, x8, -0x68

00000000802017d4 <.Lpcrel_hi360>:
802017d4: 00001597     	auipc	x11, 0x1
802017d8: f9040693     	addi	x13, x8, -0x70

00000000802017dc <.Lpcrel_hi361>:
802017dc: 00008717     	auipc	x14, 0x8
802017e0: 4789         	li	x15, 0x2
802017e2: fc043023     	sd	x0, -0x40(x8)
802017e6: 51a58593     	addi	x11, x11, 0x51a
802017ea: fca43823     	sd	x10, -0x30(x8)
802017ee: fcb43c23     	sd	x11, -0x28(x8)
802017f2: fed43023     	sd	x13, -0x20(x8)
802017f6: f0040693     	addi	x13, x8, -0x100
802017fa: f6ec         	sd	x11, 0xe8(x13)
802017fc: fd040513     	addi	x10, x8, -0x30
80201800: 33470593     	addi	x11, x14, 0x334
80201804: f2cc         	sd	x11, 0xa0(x13)
80201806: f6dc         	sd	x15, 0xa8(x13)
80201808: fac8         	sd	x10, 0xb0(x13)
8020180a: fedc         	sd	x15, 0xb8(x13)
8020180c: fa040513     	addi	x10, x8, -0x60
80201810: 85b2         	mv	x11, x12
80201812: 00000097     	auipc	x1, 0x0
80201816: f52080e7     	jalr	-0xae(x1) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>

000000008020181a <_ZN4core6result13unwrap_failed17h27a59abc2ca17f2cE>:
8020181a: 7119         	addi	x2, x2, -0x80
8020181c: fc86         	sd	x1, 0x78(x2)
8020181e: f8a2         	sd	x8, 0x70(x2)
80201820: 0100         	addi	x8, x2, 0x80
80201822: f8a43023     	sd	x10, -0x80(x8)
80201826: f8b43423     	sd	x11, -0x78(x8)
8020182a: f8c43823     	sd	x12, -0x70(x8)
8020182e: f8d43c23     	sd	x13, -0x68(x8)
80201832: f8040813     	addi	x16, x8, -0x80

0000000080201836 <.Lpcrel_hi383>:
80201836: 00001597     	auipc	x11, 0x1
8020183a: f9040893     	addi	x17, x8, -0x70

000000008020183e <.Lpcrel_hi384>:
8020183e: 00001697     	auipc	x13, 0x1

0000000080201842 <.Lpcrel_hi385>:
80201842: 00008797     	auipc	x15, 0x8
80201846: 4509         	li	x10, 0x2
80201848: fc043023     	sd	x0, -0x40(x8)
8020184c: fd040613     	addi	x12, x8, -0x30
80201850: 62c58593     	addi	x11, x11, 0x62c
80201854: 60e68693     	addi	x13, x13, 0x60e
80201858: 2f678793     	addi	x15, x15, 0x2f6
8020185c: fd043823     	sd	x16, -0x30(x8)
80201860: fcb43c23     	sd	x11, -0x28(x8)
80201864: ff143023     	sd	x17, -0x20(x8)
80201868: fed43423     	sd	x13, -0x18(x8)
8020186c: faf43023     	sd	x15, -0x60(x8)
80201870: faa43423     	sd	x10, -0x58(x8)
80201874: fac43823     	sd	x12, -0x50(x8)
80201878: faa43c23     	sd	x10, -0x48(x8)
8020187c: fa040513     	addi	x10, x8, -0x60
80201880: 85ba         	mv	x11, x14
80201882: 00000097     	auipc	x1, 0x0
80201886: ee2080e7     	jalr	-0x11e(x1) <_ZN4core9panicking9panic_fmt17hca33f2479beada9cE>

000000008020188a <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h198c9e8ddeb0b182E>:
8020188a: 7135         	addi	x2, x2, -0xa0
8020188c: ed06         	sd	x1, 0x98(x2)
8020188e: e922         	sd	x8, 0x90(x2)
80201890: e526         	sd	x9, 0x88(x2)
80201892: e14a         	sd	x18, 0x80(x2)
80201894: fcce         	sd	x19, 0x78(x2)
80201896: f8d2         	sd	x20, 0x70(x2)
80201898: f4d6         	sd	x21, 0x68(x2)
8020189a: f0da         	sd	x22, 0x60(x2)
8020189c: ecde         	sd	x23, 0x58(x2)
8020189e: e8e2         	sd	x24, 0x50(x2)
802018a0: e4e6         	sd	x25, 0x48(x2)
802018a2: e0ea         	sd	x26, 0x40(x2)
802018a4: fc6e         	sd	x27, 0x38(x2)
802018a6: 1100         	addi	x8, x2, 0xa0
802018a8: 89b2         	mv	x19, x12
802018aa: 892e         	mv	x18, x11
802018ac: 4b01         	li	x22, 0x0
802018ae: 4d81         	li	x27, 0x0
802018b0: 4d01         	li	x26, 0x0
802018b2: 0a0a15b7     	lui	x11, 0xa0a1

00000000802018b6 <.Lpcrel_hi389>:
802018b6: 00008617     	auipc	x12, 0x8
802018ba: 6104         	ld	x9, 0x0(x10)
802018bc: 6514         	ld	x13, 0x8(x10)
802018be: f8d43423     	sd	x13, -0x78(x8)
802018c2: 6908         	ld	x10, 0x10(x10)
802018c4: f8a43823     	sd	x10, -0x70(x8)
802018c8: fff90513     	addi	x10, x18, -0x1
802018cc: f6a43823     	sd	x10, -0x90(x8)
802018d0: 41300533     	neg	x10, x19
802018d4: f8a43023     	sd	x10, -0x80(x8)

00000000802018d8 <.Lpcrel_hi390>:
802018d8: 00003517     	auipc	x10, 0x3
802018dc: a0a58c9b     	addiw	x25, x11, -0x5f6
802018e0: e9263b83     	ld	x23, -0x16e(x12)
802018e4: 88c50513     	addi	x10, x10, -0x774
802018e8: f6a43c23     	sd	x10, -0x88(x8)
802018ec: 020c9513     	slli	x10, x25, 0x20
802018f0: 9caa         	add	x25, x25, x10
802018f2: 4a29         	li	x20, 0xa
802018f4: f6943423     	sd	x9, -0x98(x8)
802018f8: a80d         	j	0x8020192a <.Lpcrel_hi390+0x52>
802018fa: f7043503     	ld	x10, -0x90(x8)
802018fe: 9556         	add	x10, x10, x21
80201900: 00054503     	lbu	x10, 0x0(x10)
80201904: 1559         	addi	x10, x10, -0xa
80201906: 00153513     	seqz	x10, x10
8020190a: f9043583     	ld	x11, -0x70(x8)
8020190e: 00a58023     	sb	x10, 0x0(x11)
80201912: f8843503     	ld	x10, -0x78(x8)
80201916: 6d14         	ld	x13, 0x18(x10)
80201918: 41ba8633     	sub	x12, x21, x27
8020191c: 01b905b3     	add	x11, x18, x27
80201920: 8526         	mv	x10, x9
80201922: 9682         	jalr	x13
80201924: 8de2         	mv	x27, x24
80201926: 14051b63     	bnez	x10, 0x80201a7c <.Lpcrel_hi391+0xc2>
8020192a: 001d7513     	andi	x10, x26, 0x1
8020192e: 14051563     	bnez	x10, 0x80201a78 <.Lpcrel_hi391+0xbe>
80201932: 0169f963     	bgeu	x19, x22, 0x80201944 <.Lpcrel_hi390+0x6c>
80201936: 8c5a         	mv	x24, x22
80201938: 11b99563     	bne	x19, x27, 0x80201a42 <.Lpcrel_hi391+0x88>
8020193c: aa35         	j	0x80201a78 <.Lpcrel_hi391+0xbe>
8020193e: 8b62         	mv	x22, x24
80201940: 0f89ef63     	bltu	x19, x24, 0x80201a3e <.Lpcrel_hi391+0x84>
80201944: 41698833     	sub	x16, x19, x22
80201948: 01690533     	add	x10, x18, x22
8020194c: 45bd         	li	x11, 0xf
8020194e: 0305e163     	bltu	x11, x16, 0x80201970 <.Lpcrel_hi390+0x98>
80201952: 0f698563     	beq	x19, x22, 0x80201a3c <.Lpcrel_hi391+0x82>
80201956: 4581         	li	x11, 0x0
80201958: f8043603     	ld	x12, -0x80(x8)
8020195c: 965a         	add	x12, x12, x22
8020195e: 00054683     	lbu	x13, 0x0(x10)
80201962: 03468c63     	beq	x13, x20, 0x8020199a <.Lpcrel_hi390+0xc2>
80201966: 15fd         	addi	x11, x11, -0x1
80201968: 0505         	addi	x10, x10, 0x1
8020196a: feb61ae3     	bne	x12, x11, 0x8020195e <.Lpcrel_hi390+0x86>
8020196e: a0f9         	j	0x80201a3c <.Lpcrel_hi391+0x82>
80201970: 00750713     	addi	x14, x10, 0x7
80201974: 9b61         	andi	x14, x14, -0x8
80201976: 40a70633     	sub	x12, x14, x10
8020197a: ca0d         	beqz	x12, 0x802019ac <.Lpcrel_hi390+0xd4>
8020197c: 4681         	li	x13, 0x0
8020197e: 00d505b3     	add	x11, x10, x13
80201982: 0005c583     	lbu	x11, 0x0(x11)
80201986: 01458c63     	beq	x11, x20, 0x8020199e <.Lpcrel_hi390+0xc6>
8020198a: 0685         	addi	x13, x13, 0x1
8020198c: fed619e3     	bne	x12, x13, 0x8020197e <.Lpcrel_hi390+0xa6>
80201990: ff080893     	addi	x17, x16, -0x10
80201994: 00c8fe63     	bgeu	x17, x12, 0x802019b0 <.Lpcrel_hi390+0xd8>
80201998: a0b9         	j	0x802019e6 <.Lpcrel_hi391+0x2c>
8020199a: 40b006b3     	neg	x13, x11
8020199e: 00db0533     	add	x10, x22, x13
802019a2: 00150c13     	addi	x24, x10, 0x1
802019a6: f9357ce3     	bgeu	x10, x19, 0x8020193e <.Lpcrel_hi390+0x66>
802019aa: a895         	j	0x80201a1e <.Lpcrel_hi391+0x64>
802019ac: ff080893     	addi	x17, x16, -0x10
802019b0: 45a1         	li	x11, 0x8
802019b2: 972e         	add	x14, x14, x11
802019b4: ff873783     	ld	x15, -0x8(x14)
802019b8: 630c         	ld	x11, 0x0(x14)

00000000802019ba <.Lpcrel_hi391>:
802019ba: 00008497     	auipc	x9, 0x8
802019be: d864b483     	ld	x9, -0x27a(x9)
802019c2: 0197c6b3     	xor	x13, x15, x25
802019c6: 0195c5b3     	xor	x11, x11, x25
802019ca: 40db86b3     	sub	x13, x23, x13
802019ce: 8edd         	or	x13, x13, x15
802019d0: 40bb87b3     	sub	x15, x23, x11
802019d4: 8ddd         	or	x11, x11, x15
802019d6: 8df5         	and	x11, x11, x13
802019d8: 8de5         	and	x11, x11, x9
802019da: 00959663     	bne	x11, x9, 0x802019e6 <.Lpcrel_hi391+0x2c>
802019de: 0641         	addi	x12, x12, 0x10
802019e0: 0741         	addi	x14, x14, 0x10
802019e2: fcc8f9e3     	bgeu	x17, x12, 0x802019b4 <.Lpcrel_hi390+0xdc>
802019e6: 08c80463     	beq	x16, x12, 0x80201a6e <.Lpcrel_hi391+0xb4>
802019ea: 00c505b3     	add	x11, x10, x12
802019ee: 40c00533     	neg	x10, x12
802019f2: f8043603     	ld	x12, -0x80(x8)
802019f6: 965a         	add	x12, x12, x22
802019f8: f6843483     	ld	x9, -0x98(x8)
802019fc: 0005c683     	lbu	x13, 0x0(x11)
80201a00: 01468763     	beq	x13, x20, 0x80201a0e <.Lpcrel_hi391+0x54>
80201a04: 157d         	addi	x10, x10, -0x1
80201a06: 0585         	addi	x11, x11, 0x1
80201a08: fea61ae3     	bne	x12, x10, 0x802019fc <.Lpcrel_hi391+0x42>
80201a0c: a805         	j	0x80201a3c <.Lpcrel_hi391+0x82>
80201a0e: 40a006b3     	neg	x13, x10
80201a12: 00db0533     	add	x10, x22, x13
80201a16: 00150c13     	addi	x24, x10, 0x1
80201a1a: f33572e3     	bgeu	x10, x19, 0x8020193e <.Lpcrel_hi390+0x66>
80201a1e: 9b4a         	add	x22, x22, x18
80201a20: 96da         	add	x13, x13, x22
80201a22: 0006c503     	lbu	x10, 0x0(x13)
80201a26: f1451ce3     	bne	x10, x20, 0x8020193e <.Lpcrel_hi390+0x66>
80201a2a: 4d01         	li	x26, 0x0
80201a2c: 8b62         	mv	x22, x24
80201a2e: 8ae2         	mv	x21, x24
80201a30: f9043503     	ld	x10, -0x70(x8)
80201a34: 00054503     	lbu	x10, 0x0(x10)
80201a38: c51d         	beqz	x10, 0x80201a66 <.Lpcrel_hi391+0xac>
80201a3a: a829         	j	0x80201a54 <.Lpcrel_hi391+0x9a>
80201a3c: 8c4e         	mv	x24, x19
80201a3e: 03b98d63     	beq	x19, x27, 0x80201a78 <.Lpcrel_hi391+0xbe>
80201a42: 4d05         	li	x26, 0x1
80201a44: 8b62         	mv	x22, x24
80201a46: 8c6e         	mv	x24, x27
80201a48: 8ace         	mv	x21, x19
80201a4a: f9043503     	ld	x10, -0x70(x8)
80201a4e: 00054503     	lbu	x10, 0x0(x10)
80201a52: c911         	beqz	x10, 0x80201a66 <.Lpcrel_hi391+0xac>
80201a54: f8843503     	ld	x10, -0x78(x8)
80201a58: 6d14         	ld	x13, 0x18(x10)
80201a5a: 4611         	li	x12, 0x4
80201a5c: 8526         	mv	x10, x9
80201a5e: f7843583     	ld	x11, -0x88(x8)
80201a62: 9682         	jalr	x13
80201a64: ed01         	bnez	x10, 0x80201a7c <.Lpcrel_hi391+0xc2>
80201a66: e9ba9ae3     	bne	x21, x27, 0x802018fa <.Lpcrel_hi390+0x22>
80201a6a: 4501         	li	x10, 0x0
80201a6c: bd79         	j	0x8020190a <.Lpcrel_hi390+0x32>
80201a6e: 8c4e         	mv	x24, x19
80201a70: f6843483     	ld	x9, -0x98(x8)
80201a74: fdb997e3     	bne	x19, x27, 0x80201a42 <.Lpcrel_hi391+0x88>
80201a78: 4501         	li	x10, 0x0
80201a7a: a011         	j	0x80201a7e <.Lpcrel_hi391+0xc4>
80201a7c: 4505         	li	x10, 0x1
80201a7e: 60ea         	ld	x1, 0x98(x2)
80201a80: 644a         	ld	x8, 0x90(x2)
80201a82: 64aa         	ld	x9, 0x88(x2)
80201a84: 690a         	ld	x18, 0x80(x2)
80201a86: 79e6         	ld	x19, 0x78(x2)
80201a88: 7a46         	ld	x20, 0x70(x2)
80201a8a: 7aa6         	ld	x21, 0x68(x2)
80201a8c: 7b06         	ld	x22, 0x60(x2)
80201a8e: 6be6         	ld	x23, 0x58(x2)
80201a90: 6c46         	ld	x24, 0x50(x2)
80201a92: 6ca6         	ld	x25, 0x48(x2)
80201a94: 6d06         	ld	x26, 0x40(x2)
80201a96: 7de2         	ld	x27, 0x38(x2)
80201a98: 610d         	addi	x2, x2, 0xa0
80201a9a: 8082         	ret

0000000080201a9c <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17hecdbd29b590dd537E>:
80201a9c: 7179         	addi	x2, x2, -0x30
80201a9e: f406         	sd	x1, 0x28(x2)
80201aa0: f022         	sd	x8, 0x20(x2)
80201aa2: ec26         	sd	x9, 0x18(x2)
80201aa4: e84a         	sd	x18, 0x10(x2)
80201aa6: e44e         	sd	x19, 0x8(x2)
80201aa8: e052         	sd	x20, 0x0(x2)
80201aaa: 1800         	addi	x8, x2, 0x30
80201aac: 6904         	ld	x9, 0x10(x10)
80201aae: 0004c603     	lbu	x12, 0x0(x9)
80201ab2: 00053903     	ld	x18, 0x0(x10)
80201ab6: 00853983     	ld	x19, 0x8(x10)
80201aba: c61d         	beqz	x12, 0x80201ae8 <.Lpcrel_hi392+0x28>
80201abc: 0189b703     	ld	x14, 0x18(x19)

0000000080201ac0 <.Lpcrel_hi392>:
80201ac0: 00002517     	auipc	x10, 0x2
80201ac4: 6a450693     	addi	x13, x10, 0x6a4
80201ac8: 4611         	li	x12, 0x4
80201aca: 854a         	mv	x10, x18
80201acc: 8a2e         	mv	x20, x11
80201ace: 85b6         	mv	x11, x13
80201ad0: 9702         	jalr	x14
80201ad2: 85d2         	mv	x11, x20
80201ad4: c911         	beqz	x10, 0x80201ae8 <.Lpcrel_hi392+0x28>
80201ad6: 4505         	li	x10, 0x1
80201ad8: 70a2         	ld	x1, 0x28(x2)
80201ada: 7402         	ld	x8, 0x20(x2)
80201adc: 64e2         	ld	x9, 0x18(x2)
80201ade: 6942         	ld	x18, 0x10(x2)
80201ae0: 69a2         	ld	x19, 0x8(x2)
80201ae2: 6a02         	ld	x20, 0x0(x2)
80201ae4: 6145         	addi	x2, x2, 0x30
80201ae6: 8082         	ret
80201ae8: ff658513     	addi	x10, x11, -0xa
80201aec: 00153513     	seqz	x10, x10
80201af0: 00a48023     	sb	x10, 0x0(x9)
80201af4: 0209b783     	ld	x15, 0x20(x19)
80201af8: 854a         	mv	x10, x18
80201afa: 70a2         	ld	x1, 0x28(x2)
80201afc: 7402         	ld	x8, 0x20(x2)
80201afe: 64e2         	ld	x9, 0x18(x2)
80201b00: 6942         	ld	x18, 0x10(x2)
80201b02: 69a2         	ld	x19, 0x8(x2)
80201b04: 6a02         	ld	x20, 0x0(x2)
80201b06: 6145         	addi	x2, x2, 0x30
80201b08: 8782         	jr	x15

0000000080201b0a <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E>:
80201b0a: 7175         	addi	x2, x2, -0x90
80201b0c: e506         	sd	x1, 0x88(x2)
80201b0e: e122         	sd	x8, 0x80(x2)
80201b10: fca6         	sd	x9, 0x78(x2)
80201b12: f8ca         	sd	x18, 0x70(x2)
80201b14: f4ce         	sd	x19, 0x68(x2)
80201b16: f0d2         	sd	x20, 0x60(x2)
80201b18: ecd6         	sd	x21, 0x58(x2)
80201b1a: e8da         	sd	x22, 0x50(x2)
80201b1c: e4de         	sd	x23, 0x48(x2)
80201b1e: e0e2         	sd	x24, 0x40(x2)
80201b20: 0900         	addi	x8, x2, 0x90
80201b22: 84aa         	mv	x9, x10
80201b24: 00854503     	lbu	x10, 0x8(x10)
80201b28: 4b05         	li	x22, 0x1
80201b2a: 4a85         	li	x21, 0x1
80201b2c: c115         	beqz	x10, 0x80201b50 <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x46>
80201b2e: 01548423     	sb	x21, 0x8(x9)
80201b32: 016484a3     	sb	x22, 0x9(x9)
80201b36: 8526         	mv	x10, x9
80201b38: 60aa         	ld	x1, 0x88(x2)
80201b3a: 640a         	ld	x8, 0x80(x2)
80201b3c: 74e6         	ld	x9, 0x78(x2)
80201b3e: 7946         	ld	x18, 0x70(x2)
80201b40: 79a6         	ld	x19, 0x68(x2)
80201b42: 7a06         	ld	x20, 0x60(x2)
80201b44: 6ae6         	ld	x21, 0x58(x2)
80201b46: 6b46         	ld	x22, 0x50(x2)
80201b48: 6ba6         	ld	x23, 0x48(x2)
80201b4a: 6c06         	ld	x24, 0x40(x2)
80201b4c: 6149         	addi	x2, x2, 0x90
80201b4e: 8082         	ret
80201b50: 89ba         	mv	x19, x14
80201b52: 8936         	mv	x18, x13
80201b54: 0004ba03     	ld	x20, 0x0(x9)
80201b58: 0094c503     	lbu	x10, 0x9(x9)
80201b5c: 012a4683     	lbu	x13, 0x12(x20)
80201b60: 0806f693     	andi	x13, x13, 0x80
80201b64: ea99         	bnez	x13, 0x80201b7a <.Lpcrel_hi394+0xa>
80201b66: 00354693     	xori	x13, x10, 0x3
80201b6a: 8bae         	mv	x23, x11
80201b6c: 8c32         	mv	x24, x12
80201b6e: e955         	bnez	x10, 0x80201c22 <.Lpcrel_hi393>

0000000080201b70 <.Lpcrel_hi394>:
80201b70: 00008517     	auipc	x10, 0x8
80201b74: 01850593     	addi	x11, x10, 0x18
80201b78: a84d         	j	0x80201c2a <.Lpcrel_hi393+0x8>
80201b7a: e11d         	bnez	x10, 0x80201ba0 <.Lpcrel_hi396+0x1a>
80201b7c: 008a3683     	ld	x13, 0x8(x20)
80201b80: 000a3503     	ld	x10, 0x0(x20)
80201b84: 6e98         	ld	x14, 0x18(x13)

0000000080201b86 <.Lpcrel_hi396>:
80201b86: 00008697     	auipc	x13, 0x8
80201b8a: 00768693     	addi	x13, x13, 0x7
80201b8e: 8ab2         	mv	x21, x12
80201b90: 460d         	li	x12, 0x3
80201b92: 8bae         	mv	x23, x11
80201b94: 85b6         	mv	x11, x13
80201b96: 9702         	jalr	x14
80201b98: 85de         	mv	x11, x23
80201b9a: 8656         	mv	x12, x21
80201b9c: 4a85         	li	x21, 0x1
80201b9e: f941         	bnez	x10, 0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>
80201ba0: 4a85         	li	x21, 0x1
80201ba2: f9740813     	addi	x16, x8, -0x69
80201ba6: 000a3683     	ld	x13, 0x0(x20)
80201baa: 008a3703     	ld	x14, 0x8(x20)
80201bae: 010a3783     	ld	x15, 0x10(x20)
80201bb2: f7840513     	addi	x10, x8, -0x88
80201bb6: f6d43c23     	sd	x13, -0x88(x8)
80201bba: f8e43023     	sd	x14, -0x80(x8)
80201bbe: f9043423     	sd	x16, -0x78(x8)

0000000080201bc2 <.Lpcrel_hi397>:
80201bc2: 00008697     	auipc	x13, 0x8
80201bc6: f9540ba3     	sb	x21, -0x69(x8)
80201bca: f9668693     	addi	x13, x13, -0x6a
80201bce: f8a43c23     	sd	x10, -0x68(x8)
80201bd2: fad43023     	sd	x13, -0x60(x8)
80201bd6: faf43423     	sd	x15, -0x58(x8)
80201bda: 00000097     	auipc	x1, 0x0
80201bde: cb0080e7     	jalr	-0x350(x1) <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h198c9e8ddeb0b182E>
80201be2: f531         	bnez	x10, 0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>

0000000080201be4 <.Lpcrel_hi398>:
80201be4: 00008597     	auipc	x11, 0x8
80201be8: f7840513     	addi	x10, x8, -0x88
80201bec: f4c58593     	addi	x11, x11, -0xb4
80201bf0: 4609         	li	x12, 0x2
80201bf2: 00000097     	auipc	x1, 0x0
80201bf6: c98080e7     	jalr	-0x368(x1) <_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h198c9e8ddeb0b182E>
80201bfa: f915         	bnez	x10, 0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>
80201bfc: 0189b603     	ld	x12, 0x18(x19)
80201c00: f9840593     	addi	x11, x8, -0x68
80201c04: 854a         	mv	x10, x18
80201c06: 9602         	jalr	x12
80201c08: f11d         	bnez	x10, 0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>
80201c0a: fa043583     	ld	x11, -0x60(x8)
80201c0e: f9843503     	ld	x10, -0x68(x8)
80201c12: 6d94         	ld	x13, 0x18(x11)

0000000080201c14 <.Lpcrel_hi399>:
80201c14: 00008597     	auipc	x11, 0x8
80201c18: f7c58593     	addi	x11, x11, -0x84
80201c1c: 4609         	li	x12, 0x2
80201c1e: 9682         	jalr	x13
80201c20: a8a9         	j	0x80201c7a <.Lpcrel_hi395+0x1c>

0000000080201c22 <.Lpcrel_hi393>:
80201c22: 00008517     	auipc	x10, 0x8
80201c26: f6950593     	addi	x11, x10, -0x97
80201c2a: 008a3603     	ld	x12, 0x8(x20)
80201c2e: 000a3503     	ld	x10, 0x0(x20)
80201c32: 6e18         	ld	x14, 0x18(x12)
80201c34: 8636         	mv	x12, x13
80201c36: 9702         	jalr	x14
80201c38: 4a85         	li	x21, 0x1
80201c3a: ee051ae3     	bnez	x10, 0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>
80201c3e: 8662         	mv	x12, x24
80201c40: 85de         	mv	x11, x23
80201c42: 008a3683     	ld	x13, 0x8(x20)
80201c46: 000a3503     	ld	x10, 0x0(x20)
80201c4a: 6e94         	ld	x13, 0x18(x13)
80201c4c: 9682         	jalr	x13
80201c4e: 4a85         	li	x21, 0x1
80201c50: ec051fe3     	bnez	x10, 0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>
80201c54: 008a3583     	ld	x11, 0x8(x20)
80201c58: 000a3503     	ld	x10, 0x0(x20)
80201c5c: 6d94         	ld	x13, 0x18(x11)

0000000080201c5e <.Lpcrel_hi395>:
80201c5e: 00008597     	auipc	x11, 0x8
80201c62: ed258593     	addi	x11, x11, -0x12e
80201c66: 4609         	li	x12, 0x2
80201c68: 9682         	jalr	x13
80201c6a: 4a85         	li	x21, 0x1
80201c6c: ec0511e3     	bnez	x10, 0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>
80201c70: 0189b603     	ld	x12, 0x18(x19)
80201c74: 854a         	mv	x10, x18
80201c76: 85d2         	mv	x11, x20
80201c78: 9602         	jalr	x12
80201c7a: 8aaa         	mv	x21, x10
80201c7c: bd4d         	j	0x80201b2e <_ZN4core3fmt8builders11DebugStruct5field17h2927894be272e462E+0x24>

0000000080201c7e <_ZN4core3fmt5Write9write_fmt17hf9282cb6e27789cbE>:
80201c7e: 1141         	addi	x2, x2, -0x10
80201c80: e406         	sd	x1, 0x8(x2)
80201c82: e022         	sd	x8, 0x0(x2)
80201c84: 0800         	addi	x8, x2, 0x10
80201c86: 862e         	mv	x12, x11

0000000080201c88 <.Lpcrel_hi567>:
80201c88: 00008597     	auipc	x11, 0x8
80201c8c: ed058593     	addi	x11, x11, -0x130
80201c90: 60a2         	ld	x1, 0x8(x2)
80201c92: 6402         	ld	x8, 0x0(x2)
80201c94: 0141         	addi	x2, x2, 0x10
80201c96: 00000317     	auipc	x6, 0x0
80201c9a: 02830067     	jr	0x28(x6) <_ZN4core3fmt5write17h330b311f63fce133E>

0000000080201c9e <_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17hf0575c5f1cbb900fE>:
80201c9e: 1141         	addi	x2, x2, -0x10
80201ca0: e406         	sd	x1, 0x8(x2)
80201ca2: e022         	sd	x8, 0x0(x2)
80201ca4: 0800         	addi	x8, x2, 0x10
80201ca6: 6190         	ld	x12, 0x0(x11)
80201ca8: 658c         	ld	x11, 0x8(x11)
80201caa: 86aa         	mv	x13, x10
80201cac: 8532         	mv	x10, x12
80201cae: 8636         	mv	x12, x13
80201cb0: 60a2         	ld	x1, 0x8(x2)
80201cb2: 6402         	ld	x8, 0x0(x2)
80201cb4: 0141         	addi	x2, x2, 0x10
80201cb6: 00000317     	auipc	x6, 0x0
80201cba: 00830067     	jr	0x8(x6) <_ZN4core3fmt5write17h330b311f63fce133E>

0000000080201cbe <_ZN4core3fmt5write17h330b311f63fce133E>:
80201cbe: 7159         	addi	x2, x2, -0x70
80201cc0: f486         	sd	x1, 0x68(x2)
80201cc2: f0a2         	sd	x8, 0x60(x2)
80201cc4: eca6         	sd	x9, 0x58(x2)
80201cc6: e8ca         	sd	x18, 0x50(x2)
80201cc8: e4ce         	sd	x19, 0x48(x2)
80201cca: e0d2         	sd	x20, 0x40(x2)
80201ccc: fc56         	sd	x21, 0x38(x2)
80201cce: f85a         	sd	x22, 0x30(x2)
80201cd0: f45e         	sd	x23, 0x28(x2)
80201cd2: f062         	sd	x24, 0x20(x2)
80201cd4: 1880         	addi	x8, x2, 0x70
80201cd6: 89b2         	mv	x19, x12
80201cd8: 461d         	li	x12, 0x7
80201cda: 0209b483     	ld	x9, 0x20(x19)
80201cde: 0676         	slli	x12, x12, 0x1d
80201ce0: 02060613     	addi	x12, x12, 0x20
80201ce4: f8a43c23     	sd	x10, -0x68(x8)
80201ce8: fab43023     	sd	x11, -0x60(x8)
80201cec: fac43423     	sd	x12, -0x58(x8)
80201cf0: c4e9         	beqz	x9, 0x80201dba <_ZN4core3fmt5write17h330b311f63fce133E+0xfc>
80201cf2: 0289b503     	ld	x10, 0x28(x19)
80201cf6: 10050d63     	beqz	x10, 0x80201e10 <_ZN4core3fmt5write17h330b311f63fce133E+0x152>
80201cfa: 0009bb83     	ld	x23, 0x0(x19)
80201cfe: 0109ba03     	ld	x20, 0x10(x19)
80201d02: fff50593     	addi	x11, x10, -0x1
80201d06: 00451613     	slli	x12, x10, 0x4
80201d0a: 051a         	slli	x10, x10, 0x6
80201d0c: 04e1         	addi	x9, x9, 0x18
80201d0e: 4a89         	li	x21, 0x2
80201d10: 0592         	slli	x11, x11, 0x4
80201d12: 40c50b33     	sub	x22, x10, x12
80201d16: 8191         	srli	x11, x11, 0x4
80201d18: 00158913     	addi	x18, x11, 0x1
80201d1c: 0ba1         	addi	x23, x23, 0x8
80201d1e: 4c05         	li	x24, 0x1
80201d20: 000bb603     	ld	x12, 0x0(x23)
80201d24: ca19         	beqz	x12, 0x80201d3a <_ZN4core3fmt5write17h330b311f63fce133E+0x7c>
80201d26: fa043683     	ld	x13, -0x60(x8)
80201d2a: f9843503     	ld	x10, -0x68(x8)
80201d2e: ff8bb583     	ld	x11, -0x8(x23)
80201d32: 6e94         	ld	x13, 0x18(x13)
80201d34: 9682         	jalr	x13
80201d36: 10051163     	bnez	x10, 0x80201e38 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80201d3a: ff84d503     	lhu	x10, -0x8(x9)
80201d3e: c50d         	beqz	x10, 0x80201d68 <_ZN4core3fmt5write17h330b311f63fce133E+0xaa>
80201d40: 03851c63     	bne	x10, x24, 0x80201d78 <_ZN4core3fmt5write17h330b311f63fce133E+0xba>
80201d44: 6088         	ld	x10, 0x0(x9)
80201d46: 0512         	slli	x10, x10, 0x4
80201d48: 9552         	add	x10, x10, x20
80201d4a: 00855583     	lhu	x11, 0x8(x10)
80201d4e: fe84d503     	lhu	x10, -0x18(x9)
80201d52: 03550163     	beq	x10, x21, 0x80201d74 <_ZN4core3fmt5write17h330b311f63fce133E+0xb6>
80201d56: 03851763     	bne	x10, x24, 0x80201d84 <_ZN4core3fmt5write17h330b311f63fce133E+0xc6>
80201d5a: ff04b503     	ld	x10, -0x10(x9)
80201d5e: 0512         	slli	x10, x10, 0x4
80201d60: 9552         	add	x10, x10, x20
80201d62: 00855603     	lhu	x12, 0x8(x10)
80201d66: a00d         	j	0x80201d88 <_ZN4core3fmt5write17h330b311f63fce133E+0xca>
80201d68: ffa4d583     	lhu	x11, -0x6(x9)
80201d6c: fe84d503     	lhu	x10, -0x18(x9)
80201d70: ff5513e3     	bne	x10, x21, 0x80201d56 <_ZN4core3fmt5write17h330b311f63fce133E+0x98>
80201d74: 4601         	li	x12, 0x0
80201d76: a809         	j	0x80201d88 <_ZN4core3fmt5write17h330b311f63fce133E+0xca>
80201d78: 4581         	li	x11, 0x0
80201d7a: fe84d503     	lhu	x10, -0x18(x9)
80201d7e: fd551ce3     	bne	x10, x21, 0x80201d56 <_ZN4core3fmt5write17h330b311f63fce133E+0x98>
80201d82: bfcd         	j	0x80201d74 <_ZN4core3fmt5write17h330b311f63fce133E+0xb6>
80201d84: fea4d603     	lhu	x12, -0x16(x9)
80201d88: 6488         	ld	x10, 0x8(x9)
80201d8a: 4894         	lw	x13, 0x10(x9)
80201d8c: 0512         	slli	x10, x10, 0x4
80201d8e: 00aa0733     	add	x14, x20, x10
80201d92: 6308         	ld	x10, 0x0(x14)
80201d94: 6718         	ld	x14, 0x8(x14)
80201d96: fad42423     	sw	x13, -0x58(x8)
80201d9a: fab41623     	sh	x11, -0x54(x8)
80201d9e: fac41723     	sh	x12, -0x52(x8)
80201da2: f9840593     	addi	x11, x8, -0x68
80201da6: 9702         	jalr	x14
80201da8: e941         	bnez	x10, 0x80201e38 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80201daa: 0bc1         	addi	x23, x23, 0x10
80201dac: fd0b0b13     	addi	x22, x22, -0x30
80201db0: 03048493     	addi	x9, x9, 0x30
80201db4: f60b16e3     	bnez	x22, 0x80201d20 <_ZN4core3fmt5write17h330b311f63fce133E+0x62>
80201db8: a0b9         	j	0x80201e06 <_ZN4core3fmt5write17h330b311f63fce133E+0x148>
80201dba: 0189b503     	ld	x10, 0x18(x19)
80201dbe: c929         	beqz	x10, 0x80201e10 <_ZN4core3fmt5write17h330b311f63fce133E+0x152>
80201dc0: 0009ba83     	ld	x21, 0x0(x19)
80201dc4: 0109b483     	ld	x9, 0x10(x19)
80201dc8: 00451a13     	slli	x20, x10, 0x4
80201dcc: 157d         	addi	x10, x10, -0x1
80201dce: 0512         	slli	x10, x10, 0x4
80201dd0: 8111         	srli	x10, x10, 0x4
80201dd2: 00150913     	addi	x18, x10, 0x1
80201dd6: 9a26         	add	x20, x20, x9
80201dd8: 0aa1         	addi	x21, x21, 0x8
80201dda: 000ab603     	ld	x12, 0x0(x21)
80201dde: ca11         	beqz	x12, 0x80201df2 <_ZN4core3fmt5write17h330b311f63fce133E+0x134>
80201de0: fa043683     	ld	x13, -0x60(x8)
80201de4: f9843503     	ld	x10, -0x68(x8)
80201de8: ff8ab583     	ld	x11, -0x8(x21)
80201dec: 6e94         	ld	x13, 0x18(x13)
80201dee: 9682         	jalr	x13
80201df0: e521         	bnez	x10, 0x80201e38 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80201df2: 6088         	ld	x10, 0x0(x9)
80201df4: 6490         	ld	x12, 0x8(x9)
80201df6: f9840593     	addi	x11, x8, -0x68
80201dfa: 9602         	jalr	x12
80201dfc: ed15         	bnez	x10, 0x80201e38 <_ZN4core3fmt5write17h330b311f63fce133E+0x17a>
80201dfe: 04c1         	addi	x9, x9, 0x10
80201e00: 0ac1         	addi	x21, x21, 0x10
80201e02: fd449ce3     	bne	x9, x20, 0x80201dda <_ZN4core3fmt5write17h330b311f63fce133E+0x11c>
80201e06: 0089b503     	ld	x10, 0x8(x19)
80201e0a: 00a96863     	bltu	x18, x10, 0x80201e1a <_ZN4core3fmt5write17h330b311f63fce133E+0x15c>
80201e0e: a03d         	j	0x80201e3c <_ZN4core3fmt5write17h330b311f63fce133E+0x17e>
80201e10: 4901         	li	x18, 0x0
80201e12: 0089b503     	ld	x10, 0x8(x19)
80201e16: 02a07363     	bgeu	x0, x10, 0x80201e3c <_ZN4core3fmt5write17h330b311f63fce133E+0x17e>
80201e1a: 0009b583     	ld	x11, 0x0(x19)
80201e1e: 0912         	slli	x18, x18, 0x4
80201e20: f9843503     	ld	x10, -0x68(x8)
80201e24: fa043683     	ld	x13, -0x60(x8)
80201e28: 992e         	add	x18, x18, x11
80201e2a: 00093583     	ld	x11, 0x0(x18)
80201e2e: 00893603     	ld	x12, 0x8(x18)
80201e32: 6e94         	ld	x13, 0x18(x13)
80201e34: 9682         	jalr	x13
80201e36: c119         	beqz	x10, 0x80201e3c <_ZN4core3fmt5write17h330b311f63fce133E+0x17e>
80201e38: 4505         	li	x10, 0x1
80201e3a: a011         	j	0x80201e3e <_ZN4core3fmt5write17h330b311f63fce133E+0x180>
80201e3c: 4501         	li	x10, 0x0
80201e3e: 70a6         	ld	x1, 0x68(x2)
80201e40: 7406         	ld	x8, 0x60(x2)
80201e42: 64e6         	ld	x9, 0x58(x2)
80201e44: 6946         	ld	x18, 0x50(x2)
80201e46: 69a6         	ld	x19, 0x48(x2)
80201e48: 6a06         	ld	x20, 0x40(x2)
80201e4a: 7ae2         	ld	x21, 0x38(x2)
80201e4c: 7b42         	ld	x22, 0x30(x2)
80201e4e: 7ba2         	ld	x23, 0x28(x2)
80201e50: 7c02         	ld	x24, 0x20(x2)
80201e52: 6165         	addi	x2, x2, 0x70
80201e54: 8082         	ret

0000000080201e56 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E>:
80201e56: 7119         	addi	x2, x2, -0x80
80201e58: fc86         	sd	x1, 0x78(x2)
80201e5a: f8a2         	sd	x8, 0x70(x2)
80201e5c: f4a6         	sd	x9, 0x68(x2)
80201e5e: f0ca         	sd	x18, 0x60(x2)
80201e60: ecce         	sd	x19, 0x58(x2)
80201e62: e8d2         	sd	x20, 0x50(x2)
80201e64: e4d6         	sd	x21, 0x48(x2)
80201e66: e0da         	sd	x22, 0x40(x2)
80201e68: fc5e         	sd	x23, 0x38(x2)
80201e6a: f862         	sd	x24, 0x30(x2)
80201e6c: f466         	sd	x25, 0x28(x2)
80201e6e: f06a         	sd	x26, 0x20(x2)
80201e70: ec6e         	sd	x27, 0x18(x2)
80201e72: 0100         	addi	x8, x2, 0x80
80201e74: 89be         	mv	x19, x15
80201e76: 8d3a         	mv	x26, x14
80201e78: 8a36         	mv	x20, x13
80201e7a: 8ab2         	mv	x21, x12
80201e7c: 8baa         	mv	x23, x10
80201e7e: cdbd         	beqz	x11, 0x80201efc <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xa6>
80201e80: 010bec03     	lwu	x24, 0x10(x23)
80201e84: 00200537     	lui	x10, 0x200
80201e88: 00ac7533     	and	x10, x24, x10
80201e8c: 00110b37     	lui	x22, 0x110
80201e90: c119         	beqz	x10, 0x80201e96 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x40>
80201e92: 02b00b13     	li	x22, 0x2b
80201e96: 8155         	srli	x10, x10, 0x15
80201e98: 00a98cb3     	add	x25, x19, x10
80201e9c: 028c1513     	slli	x10, x24, 0x28
80201ea0: 06055863     	bgez	x10, 0x80201f10 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xba>
80201ea4: 02000513     	li	x10, 0x20
80201ea8: 0aaa7a63     	bgeu	x20, x10, 0x80201f5c <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x106>
80201eac: 4501         	li	x10, 0x0
80201eae: 000a0f63     	beqz	x20, 0x80201ecc <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x76>
80201eb2: 014a85b3     	add	x11, x21, x20
80201eb6: 8656         	mv	x12, x21
80201eb8: 00060683     	lb	x13, 0x0(x12)
80201ebc: 0605         	addi	x12, x12, 0x1
80201ebe: fc06a693     	slti	x13, x13, -0x40
80201ec2: 0016c693     	xori	x13, x13, 0x1
80201ec6: 9536         	add	x10, x10, x13
80201ec8: feb618e3     	bne	x12, x11, 0x80201eb8 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x62>
80201ecc: 9caa         	add	x25, x25, x10
80201ece: 014bd903     	lhu	x18, 0x14(x23)
80201ed2: 052cf463     	bgeu	x25, x18, 0x80201f1a <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xc4>
80201ed6: 027c1513     	slli	x10, x24, 0x27
80201eda: f9a43823     	sd	x26, -0x70(x8)
80201ede: 08054b63     	bltz	x10, 0x80201f74 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x11e>
80201ee2: 41990633     	sub	x12, x18, x25
80201ee6: 021c1513     	slli	x10, x24, 0x21
80201eea: 9179         	srli	x10, x10, 0x3e
80201eec: 4585         	li	x11, 0x1
80201eee: 1c2e         	slli	x24, x24, 0x2b
80201ef0: 0ea5c263     	blt	x11, x10, 0x80201fd4 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x17e>
80201ef4: 10051563     	bnez	x10, 0x80201ffe <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1a8>
80201ef8: 4d81         	li	x27, 0x0
80201efa: a219         	j	0x80202000 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1aa>
80201efc: 010bac03     	lw	x24, 0x10(x23)
80201f00: 00198c93     	addi	x25, x19, 0x1
80201f04: 02d00b13     	li	x22, 0x2d
80201f08: 028c1513     	slli	x10, x24, 0x28
80201f0c: f8054ce3     	bltz	x10, 0x80201ea4 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x4e>
80201f10: 4a81         	li	x21, 0x0
80201f12: 014bd903     	lhu	x18, 0x14(x23)
80201f16: fd2ce0e3     	bltu	x25, x18, 0x80201ed6 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x80>
80201f1a: 000bbc03     	ld	x24, 0x0(x23)
80201f1e: 008bb483     	ld	x9, 0x8(x23)
80201f22: 8562         	mv	x10, x24
80201f24: 85a6         	mv	x11, x9
80201f26: 865a         	mv	x12, x22
80201f28: 86d6         	mv	x13, x21
80201f2a: 8752         	mv	x14, x20
80201f2c: 00000097     	auipc	x1, 0x0
80201f30: 17a080e7     	jalr	0x17a(x1) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>
80201f34: ed75         	bnez	x10, 0x80202030 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1da>
80201f36: 6c9c         	ld	x15, 0x18(x9)
80201f38: 8562         	mv	x10, x24
80201f3a: 85ea         	mv	x11, x26
80201f3c: 864e         	mv	x12, x19
80201f3e: 70e6         	ld	x1, 0x78(x2)
80201f40: 7446         	ld	x8, 0x70(x2)
80201f42: 74a6         	ld	x9, 0x68(x2)
80201f44: 7906         	ld	x18, 0x60(x2)
80201f46: 69e6         	ld	x19, 0x58(x2)
80201f48: 6a46         	ld	x20, 0x50(x2)
80201f4a: 6aa6         	ld	x21, 0x48(x2)
80201f4c: 6b06         	ld	x22, 0x40(x2)
80201f4e: 7be2         	ld	x23, 0x38(x2)
80201f50: 7c42         	ld	x24, 0x30(x2)
80201f52: 7ca2         	ld	x25, 0x28(x2)
80201f54: 7d02         	ld	x26, 0x20(x2)
80201f56: 6de2         	ld	x27, 0x18(x2)
80201f58: 6109         	addi	x2, x2, 0x80
80201f5a: 8782         	jr	x15
80201f5c: 8556         	mv	x10, x21
80201f5e: 85d2         	mv	x11, x20
80201f60: 00000097     	auipc	x1, 0x0
80201f64: 7ec080e7     	jalr	0x7ec(x1) <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E>
80201f68: 9caa         	add	x25, x25, x10
80201f6a: 014bd903     	lhu	x18, 0x14(x23)
80201f6e: fb2cf6e3     	bgeu	x25, x18, 0x80201f1a <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0xc4>
80201f72: b795         	j	0x80201ed6 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x80>
80201f74: 010bbd03     	ld	x26, 0x10(x23)
80201f78: 000bbc03     	ld	x24, 0x0(x23)
80201f7c: 008bbd83     	ld	x27, 0x8(x23)
80201f80: 9fe00537     	lui	x10, 0x9fe00
80201f84: 200005b7     	lui	x11, 0x20000
80201f88: 00ad7533     	and	x10, x26, x10
80201f8c: 03058593     	addi	x11, x11, 0x30
80201f90: 8d4d         	or	x10, x10, x11
80201f92: 00aba823     	sw	x10, 0x10(x23)
80201f96: 8562         	mv	x10, x24
80201f98: 85ee         	mv	x11, x27
80201f9a: 865a         	mv	x12, x22
80201f9c: 86d6         	mv	x13, x21
80201f9e: 8752         	mv	x14, x20
80201fa0: 00000097     	auipc	x1, 0x0
80201fa4: 106080e7     	jalr	0x106(x1) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>
80201fa8: 4a05         	li	x20, 0x1
80201faa: e541         	bnez	x10, 0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80201fac: 4481         	li	x9, 0x0
80201fae: 41990533     	sub	x10, x18, x25
80201fb2: 6941         	lui	x18, 0x10
80201fb4: 397d         	addiw	x18, x18, -0x1
80201fb6: 01257ab3     	and	x21, x10, x18
80201fba: 0124f533     	and	x10, x9, x18
80201fbe: 03557463     	bgeu	x10, x21, 0x80201fe6 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x190>
80201fc2: 020db603     	ld	x12, 0x20(x27)
80201fc6: 0485         	addi	x9, x9, 0x1
80201fc8: 03000593     	li	x11, 0x30
80201fcc: 8562         	mv	x10, x24
80201fce: 9602         	jalr	x12
80201fd0: d56d         	beqz	x10, 0x80201fba <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x164>
80201fd2: a085         	j	0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80201fd4: 4589         	li	x11, 0x2
80201fd6: 8db2         	mv	x27, x12
80201fd8: 02b51463     	bne	x10, x11, 0x80202000 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1aa>
80201fdc: 03061513     	slli	x10, x12, 0x30
80201fe0: 03155d93     	srli	x27, x10, 0x31
80201fe4: a831         	j	0x80202000 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1aa>
80201fe6: 018db683     	ld	x13, 0x18(x27)
80201fea: 8562         	mv	x10, x24
80201fec: f9043583     	ld	x11, -0x70(x8)
80201ff0: 864e         	mv	x12, x19
80201ff2: 9682         	jalr	x13
80201ff4: ed1d         	bnez	x10, 0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80201ff6: 4a01         	li	x20, 0x0
80201ff8: 01abb823     	sd	x26, 0x10(x23)
80201ffc: a81d         	j	0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80201ffe: 8db2         	mv	x27, x12
80202000: f8c43423     	sd	x12, -0x78(x8)
80202004: 4d01         	li	x26, 0x0
80202006: 02bc5c13     	srli	x24, x24, 0x2b
8020200a: 000bbc83     	ld	x25, 0x0(x23)
8020200e: 008bbb83     	ld	x23, 0x8(x23)
80202012: 64c1         	lui	x9, 0x10
80202014: 34fd         	addiw	x9, x9, -0x1
80202016: 009df933     	and	x18, x27, x9
8020201a: 009d7533     	and	x10, x26, x9
8020201e: 03257a63     	bgeu	x10, x18, 0x80202052 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1fc>
80202022: 020bb603     	ld	x12, 0x20(x23)
80202026: 0d05         	addi	x26, x26, 0x1
80202028: 8566         	mv	x10, x25
8020202a: 85e2         	mv	x11, x24
8020202c: 9602         	jalr	x12
8020202e: d575         	beqz	x10, 0x8020201a <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1c4>
80202030: 4a05         	li	x20, 0x1
80202032: 8552         	mv	x10, x20
80202034: 70e6         	ld	x1, 0x78(x2)
80202036: 7446         	ld	x8, 0x70(x2)
80202038: 74a6         	ld	x9, 0x68(x2)
8020203a: 7906         	ld	x18, 0x60(x2)
8020203c: 69e6         	ld	x19, 0x58(x2)
8020203e: 6a46         	ld	x20, 0x50(x2)
80202040: 6aa6         	ld	x21, 0x48(x2)
80202042: 6b06         	ld	x22, 0x40(x2)
80202044: 7be2         	ld	x23, 0x38(x2)
80202046: 7c42         	ld	x24, 0x30(x2)
80202048: 7ca2         	ld	x25, 0x28(x2)
8020204a: 7d02         	ld	x26, 0x20(x2)
8020204c: 6de2         	ld	x27, 0x18(x2)
8020204e: 6109         	addi	x2, x2, 0x80
80202050: 8082         	ret
80202052: 8566         	mv	x10, x25
80202054: 85de         	mv	x11, x23
80202056: 865a         	mv	x12, x22
80202058: 86d6         	mv	x13, x21
8020205a: 8752         	mv	x14, x20
8020205c: 00000097     	auipc	x1, 0x0
80202060: 04a080e7     	jalr	0x4a(x1) <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>
80202064: 4a05         	li	x20, 0x1
80202066: f571         	bnez	x10, 0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80202068: 018bb683     	ld	x13, 0x18(x23)
8020206c: 8566         	mv	x10, x25
8020206e: f9043583     	ld	x11, -0x70(x8)
80202072: 864e         	mv	x12, x19
80202074: 9682         	jalr	x13
80202076: fd55         	bnez	x10, 0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80202078: 4481         	li	x9, 0x0
8020207a: f8843503     	ld	x10, -0x78(x8)
8020207e: 41b50533     	sub	x10, x10, x27
80202082: 6941         	lui	x18, 0x10
80202084: 397d         	addiw	x18, x18, -0x1
80202086: 012579b3     	and	x19, x10, x18
8020208a: 0124f533     	and	x10, x9, x18
8020208e: 01353a33     	sltu	x20, x10, x19
80202092: fb3570e3     	bgeu	x10, x19, 0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>
80202096: 020bb603     	ld	x12, 0x20(x23)
8020209a: 0485         	addi	x9, x9, 0x1
8020209c: 8566         	mv	x10, x25
8020209e: 85e2         	mv	x11, x24
802020a0: 9602         	jalr	x12
802020a2: d565         	beqz	x10, 0x8020208a <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x234>
802020a4: b779         	j	0x80202032 <_ZN4core3fmt9Formatter12pad_integral17h0d8762ed9836b6e1E+0x1dc>

00000000802020a6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E>:
802020a6: 7179         	addi	x2, x2, -0x30
802020a8: f406         	sd	x1, 0x28(x2)
802020aa: f022         	sd	x8, 0x20(x2)
802020ac: ec26         	sd	x9, 0x18(x2)
802020ae: e84a         	sd	x18, 0x10(x2)
802020b0: e44e         	sd	x19, 0x8(x2)
802020b2: e052         	sd	x20, 0x0(x2)
802020b4: 1800         	addi	x8, x2, 0x30
802020b6: 893a         	mv	x18, x14
802020b8: 8a36         	mv	x20, x13
802020ba: 89ae         	mv	x19, x11
802020bc: 001105b7     	lui	x11, 0x110
802020c0: 00b60c63     	beq	x12, x11, 0x802020d8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x32>
802020c4: 0209b683     	ld	x13, 0x20(x19)
802020c8: 84aa         	mv	x9, x10
802020ca: 85b2         	mv	x11, x12
802020cc: 9682         	jalr	x13
802020ce: 85aa         	mv	x11, x10
802020d0: 8526         	mv	x10, x9
802020d2: c199         	beqz	x11, 0x802020d8 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x32>
802020d4: 4505         	li	x10, 0x1
802020d6: a005         	j	0x802020f6 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x50>
802020d8: 000a0e63     	beqz	x20, 0x802020f4 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17h767d5bf8459a7438E+0x4e>
802020dc: 0189b783     	ld	x15, 0x18(x19)
802020e0: 85d2         	mv	x11, x20
802020e2: 864a         	mv	x12, x18
802020e4: 70a2         	ld	x1, 0x28(x2)
802020e6: 7402         	ld	x8, 0x20(x2)
802020e8: 64e2         	ld	x9, 0x18(x2)
802020ea: 6942         	ld	x18, 0x10(x2)
802020ec: 69a2         	ld	x19, 0x8(x2)
802020ee: 6a02         	ld	x20, 0x0(x2)
802020f0: 6145         	addi	x2, x2, 0x30
802020f2: 8782         	jr	x15
802020f4: 4501         	li	x10, 0x0
802020f6: 70a2         	ld	x1, 0x28(x2)
802020f8: 7402         	ld	x8, 0x20(x2)
802020fa: 64e2         	ld	x9, 0x18(x2)
802020fc: 6942         	ld	x18, 0x10(x2)
802020fe: 69a2         	ld	x19, 0x8(x2)
80202100: 6a02         	ld	x20, 0x0(x2)
80202102: 6145         	addi	x2, x2, 0x30
80202104: 8082         	ret

0000000080202106 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E>:
80202106: 711d         	addi	x2, x2, -0x60
80202108: ec86         	sd	x1, 0x58(x2)
8020210a: e8a2         	sd	x8, 0x50(x2)
8020210c: e4a6         	sd	x9, 0x48(x2)
8020210e: e0ca         	sd	x18, 0x40(x2)
80202110: fc4e         	sd	x19, 0x38(x2)
80202112: f852         	sd	x20, 0x30(x2)
80202114: f456         	sd	x21, 0x28(x2)
80202116: f05a         	sd	x22, 0x20(x2)
80202118: ec5e         	sd	x23, 0x18(x2)
8020211a: e862         	sd	x24, 0x10(x2)
8020211c: e466         	sd	x25, 0x8(x2)
8020211e: e06a         	sd	x26, 0x0(x2)
80202120: 1080         	addi	x8, x2, 0x60
80202122: 89b2         	mv	x19, x12
80202124: 01056483     	lwu	x9, 0x10(x10)
80202128: 18000637     	lui	x12, 0x18000
8020212c: 8e65         	and	x12, x12, x9
8020212e: 892e         	mv	x18, x11
80202130: 14060163     	beqz	x12, 0x80202272 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x16c>
80202134: 02349593     	slli	x11, x9, 0x23
80202138: 0405c863     	bltz	x11, 0x80202188 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x82>
8020213c: 02000593     	li	x11, 0x20
80202140: 08b9ff63     	bgeu	x19, x11, 0x802021de <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xd8>
80202144: 4581         	li	x11, 0x0
80202146: 00098f63     	beqz	x19, 0x80202164 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x5e>
8020214a: 01390633     	add	x12, x18, x19
8020214e: 86ca         	mv	x13, x18
80202150: 00068703     	lb	x14, 0x0(x13)
80202154: 0685         	addi	x13, x13, 0x1
80202156: fc072713     	slti	x14, x14, -0x40
8020215a: 00174713     	xori	x14, x14, 0x1
8020215e: 95ba         	add	x11, x11, x14
80202160: fec698e3     	bne	x13, x12, 0x80202150 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x4a>
80202164: 01455603     	lhu	x12, 0x14(x10)
80202168: 10c5f563     	bgeu	x11, x12, 0x80202272 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x16c>
8020216c: 4b81         	li	x23, 0x0
8020216e: 40b60b33     	sub	x22, x12, x11
80202172: 02149613     	slli	x12, x9, 0x21
80202176: 9279         	srli	x12, x12, 0x3e
80202178: 4685         	li	x13, 0x1
8020217a: 02b49593     	slli	x11, x9, 0x2b
8020217e: 06c6ce63     	blt	x13, x12, 0x802021fa <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xf4>
80202182: c259         	beqz	x12, 0x80202208 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x102>
80202184: 8bda         	mv	x23, x22
80202186: a049         	j	0x80202208 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x102>
80202188: 01655583     	lhu	x11, 0x16(x10)
8020218c: cde1         	beqz	x11, 0x80202264 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x15e>
8020218e: 013906b3     	add	x13, x18, x19
80202192: 0e000893     	li	x17, 0xe0
80202196: 0f000813     	li	x16, 0xf0
8020219a: 862e         	mv	x12, x11
8020219c: 87ca         	mv	x15, x18
8020219e: 4981         	li	x19, 0x0
802021a0: a811         	j	0x802021b4 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xae>
802021a2: 00178713     	addi	x14, x15, 0x1
802021a6: 413787b3     	sub	x15, x15, x19
802021aa: 167d         	addi	x12, x12, -0x1
802021ac: 40f709b3     	sub	x19, x14, x15
802021b0: 87ba         	mv	x15, x14
802021b2: ca5d         	beqz	x12, 0x80202268 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x162>
802021b4: 0ad78a63     	beq	x15, x13, 0x80202268 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x162>
802021b8: 00078703     	lb	x14, 0x0(x15)
802021bc: fe0753e3     	bgez	x14, 0x802021a2 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x9c>
802021c0: 0ff77713     	andi	x14, x14, 0xff
802021c4: 01176763     	bltu	x14, x17, 0x802021d2 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xcc>
802021c8: 01076863     	bltu	x14, x16, 0x802021d8 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xd2>
802021cc: 00478713     	addi	x14, x15, 0x4
802021d0: bfd9         	j	0x802021a6 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xa0>
802021d2: 00278713     	addi	x14, x15, 0x2
802021d6: bfc1         	j	0x802021a6 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xa0>
802021d8: 00378713     	addi	x14, x15, 0x3
802021dc: b7e9         	j	0x802021a6 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0xa0>
802021de: 8a2a         	mv	x20, x10
802021e0: 854a         	mv	x10, x18
802021e2: 85ce         	mv	x11, x19
802021e4: 00000097     	auipc	x1, 0x0
802021e8: 568080e7     	jalr	0x568(x1) <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E>
802021ec: 85aa         	mv	x11, x10
802021ee: 8552         	mv	x10, x20
802021f0: 014a5603     	lhu	x12, 0x14(x20)
802021f4: 06c5ff63     	bgeu	x11, x12, 0x80202272 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x16c>
802021f8: bf95         	j	0x8020216c <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x66>
802021fa: 4689         	li	x13, 0x2
802021fc: 00d61663     	bne	x12, x13, 0x80202208 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x102>
80202200: 030b1613     	slli	x12, x22, 0x30
80202204: 03165b93     	srli	x23, x12, 0x31
80202208: 4481         	li	x9, 0x0
8020220a: 02b5da13     	srli	x20, x11, 0x2b
8020220e: 00053a83     	ld	x21, 0x0(x10)
80202212: 00853c03     	ld	x24, 0x8(x10)
80202216: 6cc1         	lui	x25, 0x10
80202218: 3cfd         	addiw	x25, x25, -0x1
8020221a: 019bfd33     	and	x26, x23, x25
8020221e: 0194f533     	and	x10, x9, x25
80202222: 01a57a63     	bgeu	x10, x26, 0x80202236 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x130>
80202226: 020c3603     	ld	x12, 0x20(x24)
8020222a: 0485         	addi	x9, x9, 0x1
8020222c: 8556         	mv	x10, x21
8020222e: 85d2         	mv	x11, x20
80202230: 9602         	jalr	x12
80202232: d575         	beqz	x10, 0x8020221e <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x118>
80202234: a801         	j	0x80202244 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x13e>
80202236: 018c3683     	ld	x13, 0x18(x24)
8020223a: 8556         	mv	x10, x21
8020223c: 85ca         	mv	x11, x18
8020223e: 864e         	mv	x12, x19
80202240: 9682         	jalr	x13
80202242: c939         	beqz	x10, 0x80202298 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x192>
80202244: 4905         	li	x18, 0x1
80202246: 854a         	mv	x10, x18
80202248: 60e6         	ld	x1, 0x58(x2)
8020224a: 6446         	ld	x8, 0x50(x2)
8020224c: 64a6         	ld	x9, 0x48(x2)
8020224e: 6906         	ld	x18, 0x40(x2)
80202250: 79e2         	ld	x19, 0x38(x2)
80202252: 7a42         	ld	x20, 0x30(x2)
80202254: 7aa2         	ld	x21, 0x28(x2)
80202256: 7b02         	ld	x22, 0x20(x2)
80202258: 6be2         	ld	x23, 0x18(x2)
8020225a: 6c42         	ld	x24, 0x10(x2)
8020225c: 6ca2         	ld	x25, 0x8(x2)
8020225e: 6d02         	ld	x26, 0x0(x2)
80202260: 6125         	addi	x2, x2, 0x60
80202262: 8082         	ret
80202264: 4981         	li	x19, 0x0
80202266: 4601         	li	x12, 0x0
80202268: 8d91         	sub	x11, x11, x12
8020226a: 01455603     	lhu	x12, 0x14(x10)
8020226e: eec5efe3     	bltu	x11, x12, 0x8020216c <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x66>
80202272: 650c         	ld	x11, 0x8(x10)
80202274: 6108         	ld	x10, 0x0(x10)
80202276: 6d9c         	ld	x15, 0x18(x11)
80202278: 85ca         	mv	x11, x18
8020227a: 864e         	mv	x12, x19
8020227c: 60e6         	ld	x1, 0x58(x2)
8020227e: 6446         	ld	x8, 0x50(x2)
80202280: 64a6         	ld	x9, 0x48(x2)
80202282: 6906         	ld	x18, 0x40(x2)
80202284: 79e2         	ld	x19, 0x38(x2)
80202286: 7a42         	ld	x20, 0x30(x2)
80202288: 7aa2         	ld	x21, 0x28(x2)
8020228a: 7b02         	ld	x22, 0x20(x2)
8020228c: 6be2         	ld	x23, 0x18(x2)
8020228e: 6c42         	ld	x24, 0x10(x2)
80202290: 6ca2         	ld	x25, 0x8(x2)
80202292: 6d02         	ld	x26, 0x0(x2)
80202294: 6125         	addi	x2, x2, 0x60
80202296: 8782         	jr	x15
80202298: 4481         	li	x9, 0x0
8020229a: 417b0533     	sub	x10, x22, x23
8020229e: 69c1         	lui	x19, 0x10
802022a0: 39fd         	addiw	x19, x19, -0x1
802022a2: 01357b33     	and	x22, x10, x19
802022a6: 0134f533     	and	x10, x9, x19
802022aa: 01653933     	sltu	x18, x10, x22
802022ae: f9657ce3     	bgeu	x10, x22, 0x80202246 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x140>
802022b2: 020c3603     	ld	x12, 0x20(x24)
802022b6: 0485         	addi	x9, x9, 0x1
802022b8: 8556         	mv	x10, x21
802022ba: 85d2         	mv	x11, x20
802022bc: 9602         	jalr	x12
802022be: d565         	beqz	x10, 0x802022a6 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x1a0>
802022c0: b759         	j	0x80202246 <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E+0x140>

00000000802022c2 <_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h9feaa7c4c958f4edE>:
802022c2: 1141         	addi	x2, x2, -0x10
802022c4: e406         	sd	x1, 0x8(x2)
802022c6: e022         	sd	x8, 0x0(x2)
802022c8: 0800         	addi	x8, x2, 0x10
802022ca: 6514         	ld	x13, 0x8(x10)
802022cc: 6108         	ld	x10, 0x0(x10)
802022ce: 6e9c         	ld	x15, 0x18(x13)
802022d0: 60a2         	ld	x1, 0x8(x2)
802022d2: 6402         	ld	x8, 0x0(x2)
802022d4: 0141         	addi	x2, x2, 0x10
802022d6: 8782         	jr	x15

00000000802022d8 <_ZN4core3fmt9Formatter26debug_struct_field2_finish17h7f690eac9a6861eaE>:
802022d8: 7159         	addi	x2, x2, -0x70
802022da: f486         	sd	x1, 0x68(x2)
802022dc: f0a2         	sd	x8, 0x60(x2)
802022de: eca6         	sd	x9, 0x58(x2)
802022e0: e8ca         	sd	x18, 0x50(x2)
802022e2: e4ce         	sd	x19, 0x48(x2)
802022e4: e0d2         	sd	x20, 0x40(x2)
802022e6: fc56         	sd	x21, 0x38(x2)
802022e8: f85a         	sd	x22, 0x30(x2)
802022ea: f45e         	sd	x23, 0x28(x2)
802022ec: f062         	sd	x24, 0x20(x2)
802022ee: ec66         	sd	x25, 0x18(x2)
802022f0: 1880         	addi	x8, x2, 0x70
802022f2: 8946         	mv	x18, x17
802022f4: 89c2         	mv	x19, x16
802022f6: 8a3e         	mv	x20, x15
802022f8: 8aba         	mv	x21, x14
802022fa: 8b36         	mv	x22, x13
802022fc: 84aa         	mv	x9, x10
802022fe: 6108         	ld	x10, 0x0(x10)
80202300: 6494         	ld	x13, 0x8(x9)
80202302: 00043b83     	ld	x23, 0x0(x8)
80202306: 00843c03     	ld	x24, 0x8(x8)
8020230a: 01043c83     	ld	x25, 0x10(x8)
8020230e: 6e94         	ld	x13, 0x18(x13)
80202310: 9682         	jalr	x13
80202312: f8943c23     	sd	x9, -0x68(x8)
80202316: faa40023     	sb	x10, -0x60(x8)
8020231a: fa0400a3     	sb	x0, -0x5f(x8)
8020231e: f9840513     	addi	x10, x8, -0x68
80202322: 85da         	mv	x11, x22
80202324: 8656         	mv	x12, x21
80202326: 86d2         	mv	x13, x20
80202328: 874e         	mv	x14, x19
8020232a: fffff097     	auipc	x1, 0xfffff
8020232e: 7e0080e7     	jalr	0x7e0(x1) <ekernel+0xfffe2b0a>
80202332: f9840513     	addi	x10, x8, -0x68
80202336: 85ca         	mv	x11, x18
80202338: 865e         	mv	x12, x23
8020233a: 86e2         	mv	x13, x24
8020233c: 8766         	mv	x14, x25
8020233e: fffff097     	auipc	x1, 0xfffff
80202342: 7cc080e7     	jalr	0x7cc(x1) <ekernel+0xfffe2b0a>
80202346: fa044583     	lbu	x11, -0x60(x8)
8020234a: fa144603     	lbu	x12, -0x5f(x8)
8020234e: 00b66533     	or	x10, x12, x11
80202352: ce05         	beqz	x12, 0x8020238a <.Lpcrel_hi572+0xc>
80202354: 8985         	andi	x11, x11, 0x1
80202356: e995         	bnez	x11, 0x8020238a <.Lpcrel_hi572+0xc>
80202358: f9843503     	ld	x10, -0x68(x8)
8020235c: 01254583     	lbu	x11, 0x12(x10)
80202360: 0805f593     	andi	x11, x11, 0x80
80202364: e991         	bnez	x11, 0x80202378 <.Lpcrel_hi571+0xc>
80202366: 650c         	ld	x11, 0x8(x10)
80202368: 6108         	ld	x10, 0x0(x10)
8020236a: 6d94         	ld	x13, 0x18(x11)

000000008020236c <.Lpcrel_hi571>:
8020236c: 00008597     	auipc	x11, 0x8
80202370: 82758593     	addi	x11, x11, -0x7d9
80202374: 4609         	li	x12, 0x2
80202376: a809         	j	0x80202388 <.Lpcrel_hi572+0xa>
80202378: 650c         	ld	x11, 0x8(x10)
8020237a: 6108         	ld	x10, 0x0(x10)
8020237c: 6d94         	ld	x13, 0x18(x11)

000000008020237e <.Lpcrel_hi572>:
8020237e: 00008597     	auipc	x11, 0x8
80202382: 81458593     	addi	x11, x11, -0x7ec
80202386: 4605         	li	x12, 0x1
80202388: 9682         	jalr	x13
8020238a: 8905         	andi	x10, x10, 0x1
8020238c: 70a6         	ld	x1, 0x68(x2)
8020238e: 7406         	ld	x8, 0x60(x2)
80202390: 64e6         	ld	x9, 0x58(x2)
80202392: 6946         	ld	x18, 0x50(x2)
80202394: 69a6         	ld	x19, 0x48(x2)
80202396: 6a06         	ld	x20, 0x40(x2)
80202398: 7ae2         	ld	x21, 0x38(x2)
8020239a: 7b42         	ld	x22, 0x30(x2)
8020239c: 7ba2         	ld	x23, 0x28(x2)
8020239e: 7c02         	ld	x24, 0x20(x2)
802023a0: 6ce2         	ld	x25, 0x18(x2)
802023a2: 6165         	addi	x2, x2, 0x70
802023a4: 8082         	ret

00000000802023a6 <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E>:
802023a6: 7175         	addi	x2, x2, -0x90
802023a8: e506         	sd	x1, 0x88(x2)
802023aa: e122         	sd	x8, 0x80(x2)
802023ac: fca6         	sd	x9, 0x78(x2)
802023ae: f8ca         	sd	x18, 0x70(x2)
802023b0: f4ce         	sd	x19, 0x68(x2)
802023b2: f0d2         	sd	x20, 0x60(x2)
802023b4: ecd6         	sd	x21, 0x58(x2)
802023b6: e8da         	sd	x22, 0x50(x2)
802023b8: e4de         	sd	x23, 0x48(x2)
802023ba: e0e2         	sd	x24, 0x40(x2)
802023bc: 0900         	addi	x8, x2, 0x90
802023be: 8aba         	mv	x21, x14
802023c0: 8a36         	mv	x20, x13
802023c2: 8932         	mv	x18, x12
802023c4: 8b2a         	mv	x22, x10
802023c6: 00853b83     	ld	x23, 0x8(x10)
802023ca: 00053c03     	ld	x24, 0x0(x10)
802023ce: 018bb483     	ld	x9, 0x18(x23)
802023d2: 8562         	mv	x10, x24
802023d4: 9482         	jalr	x9
802023d6: 4985         	li	x19, 0x1
802023d8: cd11         	beqz	x10, 0x802023f4 <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x4e>
802023da: 854e         	mv	x10, x19
802023dc: 60aa         	ld	x1, 0x88(x2)
802023de: 640a         	ld	x8, 0x80(x2)
802023e0: 74e6         	ld	x9, 0x78(x2)
802023e2: 7946         	ld	x18, 0x70(x2)
802023e4: 79a6         	ld	x19, 0x68(x2)
802023e6: 7a06         	ld	x20, 0x60(x2)
802023e8: 6ae6         	ld	x21, 0x58(x2)
802023ea: 6b46         	ld	x22, 0x50(x2)
802023ec: 6ba6         	ld	x23, 0x48(x2)
802023ee: 6c06         	ld	x24, 0x40(x2)
802023f0: 6149         	addi	x2, x2, 0x90
802023f2: 8082         	ret
802023f4: 012b4503     	lbu	x10, 0x12(x22)
802023f8: 08057513     	andi	x10, x10, 0x80
802023fc: e10d         	bnez	x10, 0x8020241e <.Lpcrel_hi584>

00000000802023fe <.Lpcrel_hi583>:
802023fe: 00007517     	auipc	x10, 0x7
80202402: 79750593     	addi	x11, x10, 0x797
80202406: 4605         	li	x12, 0x1
80202408: 4985         	li	x19, 0x1
8020240a: 8562         	mv	x10, x24
8020240c: 9482         	jalr	x9
8020240e: f571         	bnez	x10, 0x802023da <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x34>
80202410: 018ab603     	ld	x12, 0x18(x21)
80202414: 8552         	mv	x10, x20
80202416: 85da         	mv	x11, x22
80202418: 9602         	jalr	x12
8020241a: f161         	bnez	x10, 0x802023da <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x34>
8020241c: a0ad         	j	0x80202486 <.Lpcrel_hi586+0xe>

000000008020241e <.Lpcrel_hi584>:
8020241e: 00007517     	auipc	x10, 0x7
80202422: 77850593     	addi	x11, x10, 0x778
80202426: 4609         	li	x12, 0x2
80202428: 8562         	mv	x10, x24
8020242a: 9482         	jalr	x9
8020242c: f55d         	bnez	x10, 0x802023da <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x34>
8020242e: 4985         	li	x19, 0x1
80202430: f9740513     	addi	x10, x8, -0x69
80202434: 010b3583     	ld	x11, 0x10(x22)
80202438: f7840613     	addi	x12, x8, -0x88
8020243c: f7843c23     	sd	x24, -0x88(x8)
80202440: f9743023     	sd	x23, -0x80(x8)
80202444: f8a43423     	sd	x10, -0x78(x8)

0000000080202448 <.Lpcrel_hi585>:
80202448: 00007517     	auipc	x10, 0x7
8020244c: f9340ba3     	sb	x19, -0x69(x8)
80202450: 71050513     	addi	x10, x10, 0x710
80202454: 018ab683     	ld	x13, 0x18(x21)
80202458: f8c43c23     	sd	x12, -0x68(x8)
8020245c: faa43023     	sd	x10, -0x60(x8)
80202460: fab43423     	sd	x11, -0x58(x8)
80202464: f9840593     	addi	x11, x8, -0x68
80202468: 8552         	mv	x10, x20
8020246a: 9682         	jalr	x13
8020246c: f53d         	bnez	x10, 0x802023da <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x34>
8020246e: fa043583     	ld	x11, -0x60(x8)
80202472: f9843503     	ld	x10, -0x68(x8)
80202476: 6d94         	ld	x13, 0x18(x11)

0000000080202478 <.Lpcrel_hi586>:
80202478: 00007597     	auipc	x11, 0x7
8020247c: 71858593     	addi	x11, x11, 0x718
80202480: 4609         	li	x12, 0x2
80202482: 9682         	jalr	x13
80202484: f939         	bnez	x10, 0x802023da <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x34>
80202486: 02091463     	bnez	x18, 0x802024ae <.Lpcrel_hi588+0x10>
8020248a: 012b4503     	lbu	x10, 0x12(x22)
8020248e: 08057513     	andi	x10, x10, 0x80
80202492: ed11         	bnez	x10, 0x802024ae <.Lpcrel_hi588+0x10>
80202494: 008b3583     	ld	x11, 0x8(x22)
80202498: 000b3503     	ld	x10, 0x0(x22)
8020249c: 6d94         	ld	x13, 0x18(x11)

000000008020249e <.Lpcrel_hi588>:
8020249e: 00007597     	auipc	x11, 0x7
802024a2: 6fa58593     	addi	x11, x11, 0x6fa
802024a6: 4605         	li	x12, 0x1
802024a8: 4985         	li	x19, 0x1
802024aa: 9682         	jalr	x13
802024ac: f51d         	bnez	x10, 0x802023da <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x34>
802024ae: 008b3583     	ld	x11, 0x8(x22)
802024b2: 000b3503     	ld	x10, 0x0(x22)
802024b6: 6d94         	ld	x13, 0x18(x11)

00000000802024b8 <.Lpcrel_hi587>:
802024b8: 00007597     	auipc	x11, 0x7
802024bc: 60858593     	addi	x11, x11, 0x608
802024c0: 4605         	li	x12, 0x1
802024c2: 9682         	jalr	x13
802024c4: 89aa         	mv	x19, x10
802024c6: bf11         	j	0x802023da <_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hec4a8418356fc1e4E+0x34>

00000000802024c8 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hf6a8e4c2ef3676e7E>:
802024c8: 1141         	addi	x2, x2, -0x10
802024ca: e406         	sd	x1, 0x8(x2)
802024cc: e022         	sd	x8, 0x0(x2)
802024ce: 0800         	addi	x8, x2, 0x10
802024d0: 86ae         	mv	x13, x11
802024d2: 85aa         	mv	x11, x10
802024d4: 8532         	mv	x10, x12
802024d6: 8636         	mv	x12, x13
802024d8: 60a2         	ld	x1, 0x8(x2)
802024da: 6402         	ld	x8, 0x0(x2)
802024dc: 0141         	addi	x2, x2, 0x10
802024de: 00000317     	auipc	x6, 0x0
802024e2: c2830067     	jr	-0x3d8(x6) <_ZN4core3fmt9Formatter3pad17ha05b4c97e5b361c2E>

00000000802024e6 <_ZN4core5slice5index24slice_end_index_len_fail17ha27cce7a632b050fE>:
802024e6: 1141         	addi	x2, x2, -0x10
802024e8: e406         	sd	x1, 0x8(x2)
802024ea: e022         	sd	x8, 0x0(x2)
802024ec: 0800         	addi	x8, x2, 0x10
802024ee: 00001097     	auipc	x1, 0x1
802024f2: 992080e7     	jalr	-0x66e(x1) <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17hacf19f9e769502f8E>

00000000802024f6 <_ZN4core5slice5index29slice_end_index_overflow_fail17h6789ab60e950be34E>:
802024f6: 7139         	addi	x2, x2, -0x40
802024f8: fc06         	sd	x1, 0x38(x2)
802024fa: f822         	sd	x8, 0x30(x2)
802024fc: 0080         	addi	x8, x2, 0x40
802024fe: 85aa         	mv	x11, x10

0000000080202500 <.Lpcrel_hi673>:
80202500: 00007517     	auipc	x10, 0x7
80202504: 4605         	li	x12, 0x1
80202506: fe043023     	sd	x0, -0x20(x8)
8020250a: 46a1         	li	x13, 0x8
8020250c: 79050513     	addi	x10, x10, 0x790
80202510: fca43023     	sd	x10, -0x40(x8)
80202514: fcc43423     	sd	x12, -0x38(x8)
80202518: fcd43823     	sd	x13, -0x30(x8)
8020251c: fc043c23     	sd	x0, -0x28(x8)
80202520: fc040513     	addi	x10, x8, -0x40
80202524: fffff097     	auipc	x1, 0xfffff
80202528: 240080e7     	jalr	0x240(x1) <ekernel+0xfffe2764>

000000008020252c <_ZN4core3str8converts9from_utf817hc00df9613d7a9420E>:
8020252c: 7159         	addi	x2, x2, -0x70
8020252e: f486         	sd	x1, 0x68(x2)
80202530: f0a2         	sd	x8, 0x60(x2)
80202532: eca6         	sd	x9, 0x58(x2)
80202534: e8ca         	sd	x18, 0x50(x2)
80202536: e4ce         	sd	x19, 0x48(x2)
80202538: e0d2         	sd	x20, 0x40(x2)
8020253a: fc56         	sd	x21, 0x38(x2)
8020253c: f85a         	sd	x22, 0x30(x2)
8020253e: f45e         	sd	x23, 0x28(x2)
80202540: f062         	sd	x24, 0x20(x2)
80202542: ec66         	sd	x25, 0x18(x2)
80202544: e86a         	sd	x26, 0x10(x2)
80202546: e46e         	sd	x27, 0x8(x2)
80202548: 1880         	addi	x8, x2, 0x70
8020254a: 1c060063     	beqz	x12, 0x8020270a <.Lpcrel_hi679+0x136>
8020254e: 4681         	li	x13, 0x0
80202550: ff160713     	addi	x14, x12, -0xf
80202554: 00758b93     	addi	x23, x11, 0x7
80202558: 00858d13     	addi	x26, x11, 0x8
8020255c: 40c000b3     	neg	x1, x12

0000000080202560 <.Lpcrel_hi678>:
80202560: 00007c17     	auipc	x24, 0x7
80202564: 4811         	li	x16, 0x4
80202566: 0f000893     	li	x17, 0xf0
8020256a: fbf00313     	li	x6, -0x41
8020256e: fc000393     	li	x7, -0x40
80202572: 0f400e13     	li	x28, 0xf4
80202576: f8f00e93     	li	x29, -0x71
8020257a: 4f09         	li	x30, 0x2
8020257c: 4f8d         	li	x31, 0x3
8020257e: 0e000b13     	li	x22, 0xe0
80202582: 0a000913     	li	x18, 0xa0
80202586: 0ed00993     	li	x19, 0xed
8020258a: f9f00a13     	li	x20, -0x61
8020258e: 4ab1         	li	x21, 0xc
80202590: 00e637b3     	sltu	x15, x12, x14
80202594: ff8bf493     	andi	x9, x23, -0x8
80202598: 740c0c13     	addi	x24, x24, 0x740
8020259c: 17fd         	addi	x15, x15, -0x1
8020259e: 40b48cb3     	sub	x25, x9, x11
802025a2: 00e7f2b3     	and	x5, x15, x14
802025a6: 4b85         	li	x23, 0x1
802025a8: a021         	j	0x802025b0 <.Lpcrel_hi678+0x50>
802025aa: 0685         	addi	x13, x13, 0x1
802025ac: 14c6ff63     	bgeu	x13, x12, 0x8020270a <.Lpcrel_hi679+0x136>
802025b0: 00d58733     	add	x14, x11, x13
802025b4: 00070703     	lb	x14, 0x0(x14)
802025b8: 04074663     	bltz	x14, 0x80202604 <.Lpcrel_hi679+0x30>
802025bc: 40dc873b     	subw	x14, x25, x13
802025c0: 8b1d         	andi	x14, x14, 0x7
802025c2: f765         	bnez	x14, 0x802025aa <.Lpcrel_hi678+0x4a>
802025c4: 0256f263     	bgeu	x13, x5, 0x802025e8 <.Lpcrel_hi679+0x14>
802025c8: 00d58733     	add	x14, x11, x13
802025cc: 00dd07b3     	add	x15, x26, x13
802025d0: 6318         	ld	x14, 0x0(x14)
802025d2: 639c         	ld	x15, 0x0(x15)

00000000802025d4 <.Lpcrel_hi679>:
802025d4: 00007497     	auipc	x9, 0x7
802025d8: 16c4b483     	ld	x9, 0x16c(x9)
802025dc: 8f5d         	or	x14, x14, x15
802025de: 8f65         	and	x14, x14, x9
802025e0: e701         	bnez	x14, 0x802025e8 <.Lpcrel_hi679+0x14>
802025e2: 06c1         	addi	x13, x13, 0x10
802025e4: fe56e2e3     	bltu	x13, x5, 0x802025c8 <.Lpcrel_hi678+0x68>
802025e8: 08c6fa63     	bgeu	x13, x12, 0x8020267c <.Lpcrel_hi679+0xa8>
802025ec: 40d007b3     	neg	x15, x13
802025f0: 96ae         	add	x13, x13, x11
802025f2: 00068703     	lb	x14, 0x0(x13)
802025f6: 08074163     	bltz	x14, 0x80202678 <.Lpcrel_hi679+0xa4>
802025fa: 17fd         	addi	x15, x15, -0x1
802025fc: 0685         	addi	x13, x13, 0x1
802025fe: fef09ae3     	bne	x1, x15, 0x802025f2 <.Lpcrel_hi679+0x1e>
80202602: a221         	j	0x8020270a <.Lpcrel_hi679+0x136>
80202604: 0ff77793     	andi	x15, x14, 0xff
80202608: 00fc0733     	add	x14, x24, x15
8020260c: 00074703     	lbu	x14, 0x0(x14)
80202610: 05070363     	beq	x14, x16, 0x80202656 <.Lpcrel_hi679+0x82>
80202614: 03f70063     	beq	x14, x31, 0x80202634 <.Lpcrel_hi679+0x60>
80202618: 0fe71f63     	bne	x14, x30, 0x80202716 <.Lpcrel_hi679+0x142>
8020261c: 00168793     	addi	x15, x13, 0x1
80202620: 0ec7f963     	bgeu	x15, x12, 0x80202712 <.Lpcrel_hi679+0x13e>
80202624: 00f58733     	add	x14, x11, x15
80202628: 00070703     	lb	x14, 0x0(x14)
8020262c: 4d85         	li	x27, 0x1
8020262e: 0ce35a63     	bge	x6, x14, 0x80202702 <.Lpcrel_hi679+0x12e>
80202632: a0fd         	j	0x80202720 <.Lpcrel_hi679+0x14c>
80202634: 00168713     	addi	x14, x13, 0x1
80202638: 0cc77d63     	bgeu	x14, x12, 0x80202712 <.Lpcrel_hi679+0x13e>
8020263c: 972e         	add	x14, x14, x11
8020263e: 00074d83     	lbu	x27, 0x0(x14)
80202642: 05678063     	beq	x15, x22, 0x80202682 <.Lpcrel_hi679+0xae>
80202646: 1de2         	slli	x27, x27, 0x38
80202648: 05379963     	bne	x15, x19, 0x8020269a <.Lpcrel_hi679+0xc6>
8020264c: 438dd713     	srai	x14, x27, 0x38
80202650: 06ea5363     	bge	x20, x14, 0x802026b6 <.Lpcrel_hi679+0xe2>
80202654: a0c9         	j	0x80202716 <.Lpcrel_hi679+0x142>
80202656: 00168713     	addi	x14, x13, 0x1
8020265a: 0ac77c63     	bgeu	x14, x12, 0x80202712 <.Lpcrel_hi679+0x13e>
8020265e: 972e         	add	x14, x14, x11
80202660: 00074d83     	lbu	x27, 0x0(x14)
80202664: 03178463     	beq	x15, x17, 0x8020268c <.Lpcrel_hi679+0xb8>
80202668: 1de2         	slli	x27, x27, 0x38
8020266a: 07c79163     	bne	x15, x28, 0x802026cc <.Lpcrel_hi679+0xf8>
8020266e: 438dd713     	srai	x14, x27, 0x38
80202672: 06eed563     	bge	x29, x14, 0x802026dc <.Lpcrel_hi679+0x108>
80202676: a045         	j	0x80202716 <.Lpcrel_hi679+0x142>
80202678: 40f006b3     	neg	x13, x15
8020267c: f2c6eae3     	bltu	x13, x12, 0x802025b0 <.Lpcrel_hi678+0x50>
80202680: a069         	j	0x8020270a <.Lpcrel_hi679+0x136>
80202682: 0e0df713     	andi	x14, x27, 0xe0
80202686: 03270863     	beq	x14, x18, 0x802026b6 <.Lpcrel_hi679+0xe2>
8020268a: a071         	j	0x80202716 <.Lpcrel_hi679+0x142>
8020268c: f70d8713     	addi	x14, x27, -0x90
80202690: 03000793     	li	x15, 0x30
80202694: 04f76463     	bltu	x14, x15, 0x802026dc <.Lpcrel_hi679+0x108>
80202698: a8bd         	j	0x80202716 <.Lpcrel_hi679+0x142>
8020269a: f1f78713     	addi	x14, x15, -0xe1
8020269e: 01576863     	bltu	x14, x21, 0x802026ae <.Lpcrel_hi679+0xda>
802026a2: 0fe7f713     	andi	x14, x15, 0xfe
802026a6: 0ee00793     	li	x15, 0xee
802026aa: 06f71663     	bne	x14, x15, 0x80202716 <.Lpcrel_hi679+0x142>
802026ae: 438dd713     	srai	x14, x27, 0x38
802026b2: 06775263     	bge	x14, x7, 0x80202716 <.Lpcrel_hi679+0x142>
802026b6: 00268793     	addi	x15, x13, 0x2
802026ba: 04c7fc63     	bgeu	x15, x12, 0x80202712 <.Lpcrel_hi679+0x13e>
802026be: 00f58733     	add	x14, x11, x15
802026c2: 00070703     	lb	x14, 0x0(x14)
802026c6: 02e35e63     	bge	x6, x14, 0x80202702 <.Lpcrel_hi679+0x12e>
802026ca: a881         	j	0x8020271a <.Lpcrel_hi679+0x146>
802026cc: f0f78713     	addi	x14, x15, -0xf1
802026d0: 04ef6363     	bltu	x30, x14, 0x80202716 <.Lpcrel_hi679+0x142>
802026d4: 438dd713     	srai	x14, x27, 0x38
802026d8: 02775f63     	bge	x14, x7, 0x80202716 <.Lpcrel_hi679+0x142>
802026dc: 00268713     	addi	x14, x13, 0x2
802026e0: 02c77963     	bgeu	x14, x12, 0x80202712 <.Lpcrel_hi679+0x13e>
802026e4: 972e         	add	x14, x14, x11
802026e6: 00070703     	lb	x14, 0x0(x14)
802026ea: 02e34863     	blt	x6, x14, 0x8020271a <.Lpcrel_hi679+0x146>
802026ee: 00368793     	addi	x15, x13, 0x3
802026f2: 02c7f063     	bgeu	x15, x12, 0x80202712 <.Lpcrel_hi679+0x13e>
802026f6: 00f58733     	add	x14, x11, x15
802026fa: 00070703     	lb	x14, 0x0(x14)
802026fe: 02775063     	bge	x14, x7, 0x8020271e <.Lpcrel_hi679+0x14a>
80202702: 00178693     	addi	x13, x15, 0x1
80202706: eac6e5e3     	bltu	x13, x12, 0x802025b0 <.Lpcrel_hi678+0x50>
8020270a: 4681         	li	x13, 0x0
8020270c: e50c         	sd	x11, 0x8(x10)
8020270e: e910         	sd	x12, 0x10(x10)
80202710: a831         	j	0x8020272c <.Lpcrel_hi679+0x158>
80202712: 4b81         	li	x23, 0x0
80202714: a031         	j	0x80202720 <.Lpcrel_hi679+0x14c>
80202716: 4d85         	li	x27, 0x1
80202718: a021         	j	0x80202720 <.Lpcrel_hi679+0x14c>
8020271a: 4d89         	li	x27, 0x2
8020271c: a011         	j	0x80202720 <.Lpcrel_hi679+0x14c>
8020271e: 4d8d         	li	x27, 0x3
80202720: e514         	sd	x13, 0x8(x10)
80202722: 01750823     	sb	x23, 0x10(x10)
80202726: 01b508a3     	sb	x27, 0x11(x10)
8020272a: 4685         	li	x13, 0x1
8020272c: e114         	sd	x13, 0x0(x10)
8020272e: 70a6         	ld	x1, 0x68(x2)
80202730: 7406         	ld	x8, 0x60(x2)
80202732: 64e6         	ld	x9, 0x58(x2)
80202734: 6946         	ld	x18, 0x50(x2)
80202736: 69a6         	ld	x19, 0x48(x2)
80202738: 6a06         	ld	x20, 0x40(x2)
8020273a: 7ae2         	ld	x21, 0x38(x2)
8020273c: 7b42         	ld	x22, 0x30(x2)
8020273e: 7ba2         	ld	x23, 0x28(x2)
80202740: 7c02         	ld	x24, 0x20(x2)
80202742: 6ce2         	ld	x25, 0x18(x2)
80202744: 6d42         	ld	x26, 0x10(x2)
80202746: 6da2         	ld	x27, 0x8(x2)
80202748: 6165         	addi	x2, x2, 0x70
8020274a: 8082         	ret

000000008020274c <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E>:
8020274c: 1101         	addi	x2, x2, -0x20
8020274e: ec06         	sd	x1, 0x18(x2)
80202750: e822         	sd	x8, 0x10(x2)
80202752: e426         	sd	x9, 0x8(x2)
80202754: e04a         	sd	x18, 0x0(x2)
80202756: 1000         	addi	x8, x2, 0x20
80202758: 862a         	mv	x12, x10
8020275a: 00750693     	addi	x13, x10, 0x7
8020275e: 9ae1         	andi	x13, x13, -0x8
80202760: 40a687b3     	sub	x15, x13, x10
80202764: 02f5f563     	bgeu	x11, x15, 0x8020278e <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x42>
80202768: 4501         	li	x10, 0x0
8020276a: cd81         	beqz	x11, 0x80202782 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x36>
8020276c: 95b2         	add	x11, x11, x12
8020276e: 00060683     	lb	x13, 0x0(x12)
80202772: 0605         	addi	x12, x12, 0x1
80202774: fc06a693     	slti	x13, x13, -0x40
80202778: 0016c693     	xori	x13, x13, 0x1
8020277c: 9536         	add	x10, x10, x13
8020277e: feb618e3     	bne	x12, x11, 0x8020276e <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x22>
80202782: 60e2         	ld	x1, 0x18(x2)
80202784: 6442         	ld	x8, 0x10(x2)
80202786: 64a2         	ld	x9, 0x8(x2)
80202788: 6902         	ld	x18, 0x0(x2)
8020278a: 6105         	addi	x2, x2, 0x20
8020278c: 8082         	ret
8020278e: 40f58733     	sub	x14, x11, x15
80202792: 00375813     	srli	x16, x14, 0x3
80202796: fc0809e3     	beqz	x16, 0x80202768 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x1c>
8020279a: 97b2         	add	x15, x15, x12
8020279c: 00777893     	andi	x17, x14, 0x7
802027a0: 4501         	li	x10, 0x0
802027a2: 00c68c63     	beq	x13, x12, 0x802027ba <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x6e>
802027a6: 00060583     	lb	x11, 0x0(x12)
802027aa: 0605         	addi	x12, x12, 0x1
802027ac: fc05a593     	slti	x11, x11, -0x40
802027b0: 0015c593     	xori	x11, x11, 0x1
802027b4: 952e         	add	x10, x10, x11
802027b6: fef618e3     	bne	x12, x15, 0x802027a6 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x5a>
802027ba: 4581         	li	x11, 0x0
802027bc: 02088163     	beqz	x17, 0x802027de <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x92>
802027c0: ff877613     	andi	x12, x14, -0x8
802027c4: 96b2         	add	x13, x13, x12
802027c6: 963e         	add	x12, x12, x15
802027c8: 98b6         	add	x17, x17, x13
802027ca: 00060683     	lb	x13, 0x0(x12)
802027ce: 0605         	addi	x12, x12, 0x1
802027d0: fc06a693     	slti	x13, x13, -0x40
802027d4: 0016c693     	xori	x13, x13, 0x1
802027d8: 95b6         	add	x11, x11, x13
802027da: ff1618e3     	bne	x12, x17, 0x802027ca <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x7e>
802027de: 01010637     	lui	x12, 0x1010
802027e2: 00ff06b7     	lui	x13, 0xff0
802027e6: 6741         	lui	x14, 0x10
802027e8: 952e         	add	x10, x10, x11
802027ea: 1016059b     	addiw	x11, x12, 0x101
802027ee: 0ff6831b     	addiw	x6, x13, 0xff
802027f2: 2705         	addiw	x14, x14, 0x1
802027f4: 02059693     	slli	x13, x11, 0x20
802027f8: 02031613     	slli	x12, x6, 0x20
802027fc: 00d58fb3     	add	x31, x11, x13
80202800: 02071293     	slli	x5, x14, 0x20
80202804: 9332         	add	x6, x6, x12
80202806: 92ba         	add	x5, x5, x14
80202808: 4891         	li	x17, 0x4
8020280a: a01d         	j	0x80202830 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xe4>
8020280c: 010e07b3     	add	x15, x28, x16
80202810: 407e8833     	sub	x16, x29, x7
80202814: 0033f593     	andi	x11, x7, 0x3
80202818: 00697633     	and	x12, x18, x6
8020281c: 00895693     	srli	x13, x18, 0x8
80202820: 0066f6b3     	and	x13, x13, x6
80202824: 9636         	add	x12, x12, x13
80202826: 02560633     	mul	x12, x12, x5
8020282a: 9241         	srli	x12, x12, 0x30
8020282c: 9532         	add	x10, x10, x12
8020282e: edbd         	bnez	x11, 0x802028ac <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x160>
80202830: f40809e3     	beqz	x16, 0x80202782 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x36>
80202834: 8ec2         	mv	x29, x16
80202836: 8e3e         	mv	x28, x15
80202838: 0c000593     	li	x11, 0xc0
8020283c: 83c2         	mv	x7, x16
8020283e: 00b86463     	bltu	x16, x11, 0x80202846 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xfa>
80202842: 0c000393     	li	x7, 0xc0
80202846: 00339813     	slli	x16, x7, 0x3
8020284a: 4901         	li	x18, 0x0
8020284c: fd1ee0e3     	bltu	x29, x17, 0x8020280c <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xc0>
80202850: 7e087793     	andi	x15, x16, 0x7e0
80202854: 00fe0f33     	add	x30, x28, x15
80202858: 85f2         	mv	x11, x28
8020285a: 6198         	ld	x14, 0x0(x11)
8020285c: 659c         	ld	x15, 0x8(x11)
8020285e: 6994         	ld	x13, 0x10(x11)
80202860: 6d84         	ld	x9, 0x18(x11)
80202862: fff74613     	not	x12, x14
80202866: 8319         	srli	x14, x14, 0x6
80202868: 821d         	srli	x12, x12, 0x7
8020286a: 8e59         	or	x12, x12, x14
8020286c: fff7c713     	not	x14, x15
80202870: 8399         	srli	x15, x15, 0x6
80202872: 831d         	srli	x14, x14, 0x7
80202874: 8f5d         	or	x14, x14, x15
80202876: fff6c793     	not	x15, x13
8020287a: 8299         	srli	x13, x13, 0x6
8020287c: 839d         	srli	x15, x15, 0x7
8020287e: 8edd         	or	x13, x13, x15
80202880: fff4c793     	not	x15, x9
80202884: 8099         	srli	x9, x9, 0x6
80202886: 839d         	srli	x15, x15, 0x7
80202888: 8fc5         	or	x15, x15, x9
8020288a: 01f67633     	and	x12, x12, x31
8020288e: 964a         	add	x12, x12, x18
80202890: 01f77733     	and	x14, x14, x31
80202894: 01f6f6b3     	and	x13, x13, x31
80202898: 01f7f933     	and	x18, x15, x31
8020289c: 96ba         	add	x13, x13, x14
8020289e: 9636         	add	x12, x12, x13
802028a0: 02058593     	addi	x11, x11, 0x20
802028a4: 9932         	add	x18, x18, x12
802028a6: fbe59ae3     	bne	x11, x30, 0x8020285a <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x10e>
802028aa: b78d         	j	0x8020280c <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0xc0>
802028ac: 4581         	li	x11, 0x0
802028ae: 0fc3f613     	andi	x12, x7, 0xfc
802028b2: 060e         	slli	x12, x12, 0x3
802028b4: 9e32         	add	x28, x28, x12
802028b6: 0c0eb613     	sltiu	x12, x29, 0xc0
802028ba: 40c0063b     	negw	x12, x12
802028be: 00cef633     	and	x12, x29, x12
802028c2: 8a0d         	andi	x12, x12, 0x3
802028c4: 060e         	slli	x12, x12, 0x3
802028c6: 000e3683     	ld	x13, 0x0(x28)
802028ca: 0e21         	addi	x28, x28, 0x8
802028cc: fff6c713     	not	x14, x13
802028d0: 8299         	srli	x13, x13, 0x6
802028d2: 831d         	srli	x14, x14, 0x7
802028d4: 8ed9         	or	x13, x13, x14
802028d6: 01f6f6b3     	and	x13, x13, x31
802028da: 1661         	addi	x12, x12, -0x8
802028dc: 95b6         	add	x11, x11, x13
802028de: f665         	bnez	x12, 0x802028c6 <_ZN4core3str5count14do_count_chars17h1784c3b91f4b4699E+0x17a>
802028e0: 0065f633     	and	x12, x11, x6
802028e4: 81a1         	srli	x11, x11, 0x8
802028e6: 0065f5b3     	and	x11, x11, x6
802028ea: 95b2         	add	x11, x11, x12
802028ec: 025585b3     	mul	x11, x11, x5
802028f0: 91c1         	srli	x11, x11, 0x30
802028f2: 952e         	add	x10, x10, x11
802028f4: 60e2         	ld	x1, 0x18(x2)
802028f6: 6442         	ld	x8, 0x10(x2)
802028f8: 64a2         	ld	x9, 0x8(x2)
802028fa: 6902         	ld	x18, 0x0(x2)
802028fc: 6105         	addi	x2, x2, 0x20
802028fe: 8082         	ret

0000000080202900 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h9cee460c658ab9dcE>:
80202900: 7175         	addi	x2, x2, -0x90
80202902: e506         	sd	x1, 0x88(x2)
80202904: e122         	sd	x8, 0x80(x2)
80202906: 0900         	addi	x8, x2, 0x90
80202908: 882e         	mv	x16, x11
8020290a: 4781         	li	x15, 0x0
8020290c: 00054503     	lbu	x10, 0x0(x10)
80202910: fef40593     	addi	x11, x8, -0x11
80202914: 4629         	li	x12, 0xa
80202916: a809         	j	0x80202928 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h9cee460c658ab9dcE+0x28>
80202918: 05768693     	addi	x13, x13, 0x57
8020291c: 8111         	srli	x10, x10, 0x4
8020291e: 00d58023     	sb	x13, 0x0(x11)
80202922: 0785         	addi	x15, x15, 0x1
80202924: 15fd         	addi	x11, x11, -0x1
80202926: cd09         	beqz	x10, 0x80202940 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h9cee460c658ab9dcE+0x40>
80202928: 00f57693     	andi	x13, x10, 0xf
8020292c: fec6f6e3     	bgeu	x13, x12, 0x80202918 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h9cee460c658ab9dcE+0x18>
80202930: 03068693     	addi	x13, x13, 0x30
80202934: 8111         	srli	x10, x10, 0x4
80202936: 00d58023     	sb	x13, 0x0(x11)
8020293a: 0785         	addi	x15, x15, 0x1
8020293c: 15fd         	addi	x11, x11, -0x1
8020293e: f56d         	bnez	x10, 0x80202928 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u8$GT$3fmt17h9cee460c658ab9dcE+0x28>
80202940: f7040513     	addi	x10, x8, -0x90
80202944: 8d1d         	sub	x10, x10, x15
80202946: 08050713     	addi	x14, x10, 0x80

000000008020294a <.Lpcrel_hi1032>:
8020294a: 00007517     	auipc	x10, 0x7
8020294e: 4585         	li	x11, 0x1
80202950: 24f50613     	addi	x12, x10, 0x24f
80202954: 4689         	li	x13, 0x2
80202956: 8542         	mv	x10, x16
80202958: fffff097     	auipc	x1, 0xfffff
8020295c: 4fe080e7     	jalr	0x4fe(x1) <ekernel+0xfffe2e56>
80202960: 60aa         	ld	x1, 0x88(x2)
80202962: 640a         	ld	x8, 0x80(x2)
80202964: 6149         	addi	x2, x2, 0x90
80202966: 8082         	ret

0000000080202968 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h7d4c87e4f53608f7E>:
80202968: 7175         	addi	x2, x2, -0x90
8020296a: e506         	sd	x1, 0x88(x2)
8020296c: e122         	sd	x8, 0x80(x2)
8020296e: 0900         	addi	x8, x2, 0x90
80202970: 882e         	mv	x16, x11
80202972: 4781         	li	x15, 0x0
80202974: 00054503     	lbu	x10, 0x0(x10)
80202978: fef40593     	addi	x11, x8, -0x11
8020297c: 4629         	li	x12, 0xa
8020297e: a809         	j	0x80202990 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h7d4c87e4f53608f7E+0x28>
80202980: 03768693     	addi	x13, x13, 0x37
80202984: 8111         	srli	x10, x10, 0x4
80202986: 00d58023     	sb	x13, 0x0(x11)
8020298a: 0785         	addi	x15, x15, 0x1
8020298c: 15fd         	addi	x11, x11, -0x1
8020298e: cd09         	beqz	x10, 0x802029a8 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h7d4c87e4f53608f7E+0x40>
80202990: 00f57693     	andi	x13, x10, 0xf
80202994: fec6f6e3     	bgeu	x13, x12, 0x80202980 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h7d4c87e4f53608f7E+0x18>
80202998: 03068693     	addi	x13, x13, 0x30
8020299c: 8111         	srli	x10, x10, 0x4
8020299e: 00d58023     	sb	x13, 0x0(x11)
802029a2: 0785         	addi	x15, x15, 0x1
802029a4: 15fd         	addi	x11, x11, -0x1
802029a6: f56d         	bnez	x10, 0x80202990 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u8$GT$3fmt17h7d4c87e4f53608f7E+0x28>
802029a8: f7040513     	addi	x10, x8, -0x90
802029ac: 8d1d         	sub	x10, x10, x15
802029ae: 08050713     	addi	x14, x10, 0x80

00000000802029b2 <.Lpcrel_hi1033>:
802029b2: 00007517     	auipc	x10, 0x7
802029b6: 4585         	li	x11, 0x1
802029b8: 1e750613     	addi	x12, x10, 0x1e7
802029bc: 4689         	li	x13, 0x2
802029be: 8542         	mv	x10, x16
802029c0: fffff097     	auipc	x1, 0xfffff
802029c4: 496080e7     	jalr	0x496(x1) <ekernel+0xfffe2e56>
802029c8: 60aa         	ld	x1, 0x88(x2)
802029ca: 640a         	ld	x8, 0x80(x2)
802029cc: 6149         	addi	x2, x2, 0x90
802029ce: 8082         	ret

00000000802029d0 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h7ecc9f93fe15728dE>:
802029d0: 7175         	addi	x2, x2, -0x90
802029d2: e506         	sd	x1, 0x88(x2)
802029d4: e122         	sd	x8, 0x80(x2)
802029d6: 0900         	addi	x8, x2, 0x90
802029d8: 882e         	mv	x16, x11
802029da: 4781         	li	x15, 0x0
802029dc: 6108         	ld	x10, 0x0(x10)
802029de: fef40593     	addi	x11, x8, -0x11
802029e2: 4629         	li	x12, 0xa
802029e4: a809         	j	0x802029f6 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h7ecc9f93fe15728dE+0x26>
802029e6: 05768693     	addi	x13, x13, 0x57
802029ea: 8111         	srli	x10, x10, 0x4
802029ec: 00d58023     	sb	x13, 0x0(x11)
802029f0: 0785         	addi	x15, x15, 0x1
802029f2: 15fd         	addi	x11, x11, -0x1
802029f4: cd09         	beqz	x10, 0x80202a0e <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h7ecc9f93fe15728dE+0x3e>
802029f6: 00f57693     	andi	x13, x10, 0xf
802029fa: fec6f6e3     	bgeu	x13, x12, 0x802029e6 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h7ecc9f93fe15728dE+0x16>
802029fe: 03068693     	addi	x13, x13, 0x30
80202a02: 8111         	srli	x10, x10, 0x4
80202a04: 00d58023     	sb	x13, 0x0(x11)
80202a08: 0785         	addi	x15, x15, 0x1
80202a0a: 15fd         	addi	x11, x11, -0x1
80202a0c: f56d         	bnez	x10, 0x802029f6 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h7ecc9f93fe15728dE+0x26>
80202a0e: f7040513     	addi	x10, x8, -0x90
80202a12: 8d1d         	sub	x10, x10, x15
80202a14: 08050713     	addi	x14, x10, 0x80

0000000080202a18 <.Lpcrel_hi1044>:
80202a18: 00007517     	auipc	x10, 0x7
80202a1c: 4585         	li	x11, 0x1
80202a1e: 18150613     	addi	x12, x10, 0x181
80202a22: 4689         	li	x13, 0x2
80202a24: 8542         	mv	x10, x16
80202a26: fffff097     	auipc	x1, 0xfffff
80202a2a: 430080e7     	jalr	0x430(x1) <ekernel+0xfffe2e56>
80202a2e: 60aa         	ld	x1, 0x88(x2)
80202a30: 640a         	ld	x8, 0x80(x2)
80202a32: 6149         	addi	x2, x2, 0x90
80202a34: 8082         	ret

0000000080202a36 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hb6d99fdec97a0f1dE>:
80202a36: 7175         	addi	x2, x2, -0x90
80202a38: e506         	sd	x1, 0x88(x2)
80202a3a: e122         	sd	x8, 0x80(x2)
80202a3c: 0900         	addi	x8, x2, 0x90
80202a3e: 882e         	mv	x16, x11
80202a40: 4781         	li	x15, 0x0
80202a42: 6108         	ld	x10, 0x0(x10)
80202a44: fef40593     	addi	x11, x8, -0x11
80202a48: 4629         	li	x12, 0xa
80202a4a: a809         	j	0x80202a5c <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hb6d99fdec97a0f1dE+0x26>
80202a4c: 03768693     	addi	x13, x13, 0x37
80202a50: 8111         	srli	x10, x10, 0x4
80202a52: 00d58023     	sb	x13, 0x0(x11)
80202a56: 0785         	addi	x15, x15, 0x1
80202a58: 15fd         	addi	x11, x11, -0x1
80202a5a: cd09         	beqz	x10, 0x80202a74 <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hb6d99fdec97a0f1dE+0x3e>
80202a5c: 00f57693     	andi	x13, x10, 0xf
80202a60: fec6f6e3     	bgeu	x13, x12, 0x80202a4c <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hb6d99fdec97a0f1dE+0x16>
80202a64: 03068693     	addi	x13, x13, 0x30
80202a68: 8111         	srli	x10, x10, 0x4
80202a6a: 00d58023     	sb	x13, 0x0(x11)
80202a6e: 0785         	addi	x15, x15, 0x1
80202a70: 15fd         	addi	x11, x11, -0x1
80202a72: f56d         	bnez	x10, 0x80202a5c <_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17hb6d99fdec97a0f1dE+0x26>
80202a74: f7040513     	addi	x10, x8, -0x90
80202a78: 8d1d         	sub	x10, x10, x15
80202a7a: 08050713     	addi	x14, x10, 0x80

0000000080202a7e <.Lpcrel_hi1045>:
80202a7e: 00007517     	auipc	x10, 0x7
80202a82: 4585         	li	x11, 0x1
80202a84: 11b50613     	addi	x12, x10, 0x11b
80202a88: 4689         	li	x13, 0x2
80202a8a: 8542         	mv	x10, x16
80202a8c: fffff097     	auipc	x1, 0xfffff
80202a90: 3ca080e7     	jalr	0x3ca(x1) <ekernel+0xfffe2e56>
80202a94: 60aa         	ld	x1, 0x88(x2)
80202a96: 640a         	ld	x8, 0x80(x2)
80202a98: 6149         	addi	x2, x2, 0x90
80202a9a: 8082         	ret

0000000080202a9c <_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h6ddad91e82a8cef8E>:
80202a9c: 1101         	addi	x2, x2, -0x20
80202a9e: ec06         	sd	x1, 0x18(x2)
80202aa0: e822         	sd	x8, 0x10(x2)
80202aa2: 1000         	addi	x8, x2, 0x20
80202aa4: 86ae         	mv	x13, x11
80202aa6: 00054583     	lbu	x11, 0x0(x10)
80202aaa: 4629         	li	x12, 0xa

0000000080202aac <.Lpcrel_hi1064>:
80202aac: 00007517     	auipc	x10, 0x7
80202ab0: 0ef50513     	addi	x10, x10, 0xef
80202ab4: 02c5eb63     	bltu	x11, x12, 0x80202aea <.Lpcrel_hi1064+0x3e>
80202ab8: 02900613     	li	x12, 0x29
80202abc: 06400713     	li	x14, 0x64
80202ac0: 02c58633     	mul	x12, x11, x12
80202ac4: 8231         	srli	x12, x12, 0xc
80202ac6: 02e60733     	mul	x14, x12, x14
80202aca: 40e5873b     	subw	x14, x11, x14
80202ace: 1766         	slli	x14, x14, 0x39
80202ad0: 9361         	srli	x14, x14, 0x38
80202ad2: 972a         	add	x14, x14, x10
80202ad4: 00074783     	lbu	x15, 0x0(x14)
80202ad8: 00174703     	lbu	x14, 0x1(x14)
80202adc: fef40723     	sb	x15, -0x12(x8)
80202ae0: fee407a3     	sb	x14, -0x11(x8)
80202ae4: 4705         	li	x14, 0x1
80202ae6: e589         	bnez	x11, 0x80202af0 <.Lpcrel_hi1064+0x44>
80202ae8: a029         	j	0x80202af2 <.Lpcrel_hi1064+0x46>
80202aea: 470d         	li	x14, 0x3
80202aec: 862e         	mv	x12, x11
80202aee: c191         	beqz	x11, 0x80202af2 <.Lpcrel_hi1064+0x46>
80202af0: ce11         	beqz	x12, 0x80202b0c <.Lpcrel_hi1064+0x60>
80202af2: 0606         	slli	x12, x12, 0x1
80202af4: 0605         	addi	x12, x12, 0x1
80202af6: 0ff67593     	andi	x11, x12, 0xff
80202afa: 952e         	add	x10, x10, x11
80202afc: 00054503     	lbu	x10, 0x0(x10)
80202b00: 177d         	addi	x14, x14, -0x1
80202b02: fed40593     	addi	x11, x8, -0x13
80202b06: 95ba         	add	x11, x11, x14
80202b08: 00a58023     	sb	x10, 0x0(x11)
80202b0c: 478d         	li	x15, 0x3
80202b0e: fed40513     	addi	x10, x8, -0x13
80202b12: 8f99         	sub	x15, x15, x14
80202b14: 972a         	add	x14, x14, x10
80202b16: 4585         	li	x11, 0x1
80202b18: 4605         	li	x12, 0x1
80202b1a: 8536         	mv	x10, x13
80202b1c: 4681         	li	x13, 0x0
80202b1e: fffff097     	auipc	x1, 0xfffff
80202b22: 338080e7     	jalr	0x338(x1) <ekernel+0xfffe2e56>
80202b26: 60e2         	ld	x1, 0x18(x2)
80202b28: 6442         	ld	x8, 0x10(x2)
80202b2a: 6105         	addi	x2, x2, 0x20
80202b2c: 8082         	ret

0000000080202b2e <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h653896e533e76a1eE>:
80202b2e: 1141         	addi	x2, x2, -0x10
80202b30: e406         	sd	x1, 0x8(x2)
80202b32: e022         	sd	x8, 0x0(x2)
80202b34: 0800         	addi	x8, x2, 0x10
80202b36: 4108         	lw	x10, 0x0(x10)
80202b38: 862e         	mv	x12, x11
80202b3a: 4585         	li	x11, 0x1
80202b3c: 60a2         	ld	x1, 0x8(x2)
80202b3e: 6402         	ld	x8, 0x0(x2)
80202b40: 0141         	addi	x2, x2, 0x10
80202b42: 00000317     	auipc	x6, 0x0
80202b46: 03630067     	jr	0x36(x6) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0e41b8b95c421a67E>

0000000080202b4a <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hdaacfa149309b697E>:
80202b4a: 1141         	addi	x2, x2, -0x10
80202b4c: e406         	sd	x1, 0x8(x2)
80202b4e: e022         	sd	x8, 0x0(x2)
80202b50: 0800         	addi	x8, x2, 0x10
80202b52: 4108         	lw	x10, 0x0(x10)
80202b54: 41f5561b     	sraiw	x12, x10, 0x1f
80202b58: 00052693     	slti	x13, x10, 0x0
80202b5c: 8d31         	xor	x10, x10, x12
80202b5e: 9d11         	subw	x10, x10, x12
80202b60: 0016c613     	xori	x12, x13, 0x1
80202b64: 86ae         	mv	x13, x11
80202b66: 85b2         	mv	x11, x12
80202b68: 8636         	mv	x12, x13
80202b6a: 60a2         	ld	x1, 0x8(x2)
80202b6c: 6402         	ld	x8, 0x0(x2)
80202b6e: 0141         	addi	x2, x2, 0x10
80202b70: 00000317     	auipc	x6, 0x0
80202b74: 00830067     	jr	0x8(x6) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0e41b8b95c421a67E>

0000000080202b78 <_ZN4core3fmt3num3imp21_$LT$impl$u20$u32$GT$4_fmt17h0e41b8b95c421a67E>:
80202b78: 7159         	addi	x2, x2, -0x70
80202b7a: f486         	sd	x1, 0x68(x2)
80202b7c: f0a2         	sd	x8, 0x60(x2)
80202b7e: eca6         	sd	x9, 0x58(x2)
80202b80: e8ca         	sd	x18, 0x50(x2)
80202b82: e4ce         	sd	x19, 0x48(x2)
80202b84: e0d2         	sd	x20, 0x40(x2)
80202b86: fc56         	sd	x21, 0x38(x2)
80202b88: f85a         	sd	x22, 0x30(x2)
80202b8a: f45e         	sd	x23, 0x28(x2)
80202b8c: f062         	sd	x24, 0x20(x2)
80202b8e: ec66         	sd	x25, 0x18(x2)
80202b90: 1880         	addi	x8, x2, 0x70
80202b92: 8832         	mv	x16, x12
80202b94: 3e800693     	li	x13, 0x3e8

0000000080202b98 <.Lpcrel_hi1067>:
80202b98: 00007617     	auipc	x12, 0x7
80202b9c: 00360993     	addi	x19, x12, 0x3
80202ba0: 0ad56963     	bltu	x10, x13, 0x80202c52 <.Lpcrel_hi1067+0xba>
80202ba4: 4701         	li	x14, 0x0
80202ba6: fa440893     	addi	x17, x8, -0x5c
80202baa: fa740293     	addi	x5, x8, -0x59
80202bae: fa640313     	addi	x6, x8, -0x5a
80202bb2: fa540393     	addi	x7, x8, -0x5b
80202bb6: d1b71eb7     	lui	x29, 0xd1b71
80202bba: 6789         	lui	x15, 0x2
80202bbc: 6485         	lui	x9, 0x1
80202bbe: 06400e13     	li	x28, 0x64
80202bc2: 009896b7     	lui	x13, 0x989
80202bc6: 759e8f93     	addi	x31, x29, 0x759
80202bca: 71078e93     	addi	x29, x15, 0x710
80202bce: 47b48f1b     	addiw	x30, x9, 0x47b
80202bd2: 1f82         	slli	x31, x31, 0x20
80202bd4: 67f6891b     	addiw	x18, x13, 0x67f
80202bd8: 8caa         	mv	x25, x10
80202bda: 8c66         	mv	x24, x25
80202bdc: 020c9793     	slli	x15, x25, 0x20
80202be0: 00e88a33     	add	x20, x17, x14
80202be4: 00e38ab3     	add	x21, x7, x14
80202be8: 00e30b33     	add	x22, x6, x14
80202bec: 00e28bb3     	add	x23, x5, x14
80202bf0: 03f7b7b3     	mulhu	x15, x15, x31
80202bf4: 02d7dc93     	srli	x25, x15, 0x2d
80202bf8: 03dc86b3     	mul	x13, x25, x29
80202bfc: 40dc04bb     	subw	x9, x24, x13
80202c00: 03049693     	slli	x13, x9, 0x30
80202c04: 92c9         	srli	x13, x13, 0x32
80202c06: 03e686b3     	mul	x13, x13, x30
80202c0a: 0106d613     	srli	x12, x13, 0x10
80202c0e: 82c5         	srli	x13, x13, 0x11
80202c10: 03c686b3     	mul	x13, x13, x28
80202c14: 7fe67613     	andi	x12, x12, 0x7fe
80202c18: 9c95         	subw	x9, x9, x13
80202c1a: 964e         	add	x12, x12, x19
80202c1c: 14c6         	slli	x9, x9, 0x31
80202c1e: 90c1         	srli	x9, x9, 0x30
80202c20: 94ce         	add	x9, x9, x19
80202c22: 00064683     	lbu	x13, 0x0(x12)
80202c26: 00164603     	lbu	x12, 0x1(x12)
80202c2a: 0004c783     	lbu	x15, 0x0(x9)
80202c2e: 0014c483     	lbu	x9, 0x1(x9)
80202c32: 00da0023     	sb	x13, 0x0(x20)
80202c36: 00ca8023     	sb	x12, 0x0(x21)
80202c3a: 00fb0023     	sb	x15, 0x0(x22)
80202c3e: 009b8023     	sb	x9, 0x0(x23)
80202c42: 1771         	addi	x14, x14, -0x4
80202c44: f9896be3     	bltu	x18, x24, 0x80202bda <.Lpcrel_hi1067+0x42>
80202c48: 0729         	addi	x14, x14, 0xa
80202c4a: 46a5         	li	x13, 0x9
80202c4c: 0196e863     	bltu	x13, x25, 0x80202c5c <.Lpcrel_hi1067+0xc4>
80202c50: a0b9         	j	0x80202c9e <.Lpcrel_hi1067+0x106>
80202c52: 4729         	li	x14, 0xa
80202c54: 8caa         	mv	x25, x10
80202c56: 46a5         	li	x13, 0x9
80202c58: 04a6f363     	bgeu	x13, x10, 0x80202c9e <.Lpcrel_hi1067+0x106>
80202c5c: 030c9613     	slli	x12, x25, 0x30
80202c60: 6685         	lui	x13, 0x1
80202c62: 06400893     	li	x17, 0x64
80202c66: f9e40293     	addi	x5, x8, -0x62
80202c6a: 9249         	srli	x12, x12, 0x32
80202c6c: 47b6869b     	addiw	x13, x13, 0x47b
80202c70: 00e284b3     	add	x9, x5, x14
80202c74: 02d60633     	mul	x12, x12, x13
80202c78: 8245         	srli	x12, x12, 0x11
80202c7a: 031606b3     	mul	x13, x12, x17
80202c7e: 40dc86bb     	subw	x13, x25, x13
80202c82: 16c6         	slli	x13, x13, 0x31
80202c84: 92c1         	srli	x13, x13, 0x30
80202c86: 96ce         	add	x13, x13, x19
80202c88: 0006c783     	lbu	x15, 0x0(x13)
80202c8c: 0016c683     	lbu	x13, 0x1(x13)
80202c90: 1779         	addi	x14, x14, -0x2
80202c92: 92ba         	add	x5, x5, x14
80202c94: 00f28023     	sb	x15, 0x0(x5)
80202c98: fed48fa3     	sb	x13, -0x1(x9)
80202c9c: 8cb2         	mv	x25, x12
80202c9e: c119         	beqz	x10, 0x80202ca4 <.Lpcrel_hi1067+0x10c>
80202ca0: 000c8e63     	beqz	x25, 0x80202cbc <.Lpcrel_hi1067+0x124>
80202ca4: 0c86         	slli	x25, x25, 0x1
80202ca6: 01ecf513     	andi	x10, x25, 0x1e
80202caa: 954e         	add	x10, x10, x19
80202cac: 00154503     	lbu	x10, 0x1(x10)
80202cb0: 177d         	addi	x14, x14, -0x1
80202cb2: f9e40613     	addi	x12, x8, -0x62
80202cb6: 963a         	add	x12, x12, x14
80202cb8: 00a60023     	sb	x10, 0x0(x12)
80202cbc: 47a9         	li	x15, 0xa
80202cbe: f9e40513     	addi	x10, x8, -0x62
80202cc2: 8f99         	sub	x15, x15, x14
80202cc4: 972a         	add	x14, x14, x10
80202cc6: 4605         	li	x12, 0x1
80202cc8: 8542         	mv	x10, x16
80202cca: 4681         	li	x13, 0x0
80202ccc: fffff097     	auipc	x1, 0xfffff
80202cd0: 18a080e7     	jalr	0x18a(x1) <ekernel+0xfffe2e56>
80202cd4: 70a6         	ld	x1, 0x68(x2)
80202cd6: 7406         	ld	x8, 0x60(x2)
80202cd8: 64e6         	ld	x9, 0x58(x2)
80202cda: 6946         	ld	x18, 0x50(x2)
80202cdc: 69a6         	ld	x19, 0x48(x2)
80202cde: 6a06         	ld	x20, 0x40(x2)
80202ce0: 7ae2         	ld	x21, 0x38(x2)
80202ce2: 7b42         	ld	x22, 0x30(x2)
80202ce4: 7ba2         	ld	x23, 0x28(x2)
80202ce6: 7c02         	ld	x24, 0x20(x2)
80202ce8: 6ce2         	ld	x25, 0x18(x2)
80202cea: 6165         	addi	x2, x2, 0x70
80202cec: 8082         	ret

0000000080202cee <_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hbb964ae28c3889c7E>:
80202cee: 1141         	addi	x2, x2, -0x10
80202cf0: e406         	sd	x1, 0x8(x2)
80202cf2: e022         	sd	x8, 0x0(x2)
80202cf4: 0800         	addi	x8, x2, 0x10
80202cf6: 6108         	ld	x10, 0x0(x10)
80202cf8: 862e         	mv	x12, x11
80202cfa: 4585         	li	x11, 0x1
80202cfc: 60a2         	ld	x1, 0x8(x2)
80202cfe: 6402         	ld	x8, 0x0(x2)
80202d00: 0141         	addi	x2, x2, 0x10
80202d02: 00000317     	auipc	x6, 0x0
80202d06: 00830067     	jr	0x8(x6) <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hbd86f490b49ef636E>

0000000080202d0a <_ZN4core3fmt3num3imp21_$LT$impl$u20$u64$GT$4_fmt17hbd86f490b49ef636E>:
80202d0a: 7139         	addi	x2, x2, -0x40
80202d0c: fc06         	sd	x1, 0x38(x2)
80202d0e: f822         	sd	x8, 0x30(x2)
80202d10: f426         	sd	x9, 0x28(x2)
80202d12: f04a         	sd	x18, 0x20(x2)
80202d14: ec4e         	sd	x19, 0x18(x2)
80202d16: 0080         	addi	x8, x2, 0x40
80202d18: 8832         	mv	x16, x12
80202d1a: 3e800693     	li	x13, 0x3e8

0000000080202d1e <.Lpcrel_hi1068>:
80202d1e: 00007617     	auipc	x12, 0x7
80202d22: e7d60f13     	addi	x30, x12, -0x183
80202d26: 10d56d63     	bltu	x10, x13, 0x80202e40 <.Lpcrel_hi1069+0x110>
80202d2a: 4751         	li	x14, 0x14
80202d2c: fd740893     	addi	x17, x8, -0x29

0000000080202d30 <.Lpcrel_hi1069>:
80202d30: 00007697     	auipc	x13, 0x7
80202d34: 6309         	lui	x6, 0x2
80202d36: 6785         	lui	x15, 0x1
80202d38: a086b283     	ld	x5, -0x5f8(x13)
80202d3c: 71030313     	addi	x6, x6, 0x710
80202d40: 47b78e1b     	addiw	x28, x15, 0x47b
80202d44: 06400393     	li	x7, 0x64
80202d48: 009896b7     	lui	x13, 0x989
80202d4c: 67f68e9b     	addiw	x29, x13, 0x67f
80202d50: 892a         	mv	x18, x10
80202d52: 89ca         	mv	x19, x18
80202d54: ffc70f93     	addi	x31, x14, -0x4
80202d58: 02593633     	mulhu	x12, x18, x5
80202d5c: 9746         	add	x14, x14, x17
80202d5e: 00b65913     	srli	x18, x12, 0xb
80202d62: 026906b3     	mul	x13, x18, x6
80202d66: 40d986bb     	subw	x13, x19, x13
80202d6a: 03069493     	slli	x9, x13, 0x30
80202d6e: 90c9         	srli	x9, x9, 0x32
80202d70: 03c484b3     	mul	x9, x9, x28
80202d74: 0104d613     	srli	x12, x9, 0x10
80202d78: 80c5         	srli	x9, x9, 0x11
80202d7a: 027484b3     	mul	x9, x9, x7
80202d7e: 7fe67613     	andi	x12, x12, 0x7fe
80202d82: 9e85         	subw	x13, x13, x9
80202d84: 967a         	add	x12, x12, x30
80202d86: 16c6         	slli	x13, x13, 0x31
80202d88: 92c1         	srli	x13, x13, 0x30
80202d8a: 96fa         	add	x13, x13, x30
80202d8c: 00064483     	lbu	x9, 0x0(x12)
80202d90: 00164603     	lbu	x12, 0x1(x12)
80202d94: 0006c783     	lbu	x15, 0x0(x13)
80202d98: 0016c683     	lbu	x13, 0x1(x13)
80202d9c: fe9704a3     	sb	x9, -0x17(x14)
80202da0: fec70523     	sb	x12, -0x16(x14)
80202da4: fef705a3     	sb	x15, -0x15(x14)
80202da8: fed70623     	sb	x13, -0x14(x14)
80202dac: 877e         	mv	x14, x31
80202dae: fb3ee2e3     	bltu	x29, x19, 0x80202d52 <.Lpcrel_hi1069+0x22>
80202db2: 4725         	li	x14, 0x9
80202db4: 05277363     	bgeu	x14, x18, 0x80202dfa <.Lpcrel_hi1069+0xca>
80202db8: 03091613     	slli	x12, x18, 0x30
80202dbc: 6685         	lui	x13, 0x1
80202dbe: 06400713     	li	x14, 0x64
80202dc2: fc440493     	addi	x9, x8, -0x3c
80202dc6: 9249         	srli	x12, x12, 0x32
80202dc8: 47b6869b     	addiw	x13, x13, 0x47b
80202dcc: 01f487b3     	add	x15, x9, x31
80202dd0: 02d60633     	mul	x12, x12, x13
80202dd4: 8245         	srli	x12, x12, 0x11
80202dd6: 02e606b3     	mul	x13, x12, x14
80202dda: 40d906bb     	subw	x13, x18, x13
80202dde: 16c6         	slli	x13, x13, 0x31
80202de0: 92c1         	srli	x13, x13, 0x30
80202de2: 96fa         	add	x13, x13, x30
80202de4: 0006c703     	lbu	x14, 0x0(x13)
80202de8: 0016c683     	lbu	x13, 0x1(x13)
80202dec: 1ff9         	addi	x31, x31, -0x2
80202dee: 94fe         	add	x9, x9, x31
80202df0: 00e48023     	sb	x14, 0x0(x9)
80202df4: fed78fa3     	sb	x13, -0x1(x15)
80202df8: 8932         	mv	x18, x12
80202dfa: c119         	beqz	x10, 0x80202e00 <.Lpcrel_hi1069+0xd0>
80202dfc: 00090e63     	beqz	x18, 0x80202e18 <.Lpcrel_hi1069+0xe8>
80202e00: 0906         	slli	x18, x18, 0x1
80202e02: 01e97513     	andi	x10, x18, 0x1e
80202e06: 957a         	add	x10, x10, x30
80202e08: 00154503     	lbu	x10, 0x1(x10)
80202e0c: 1ffd         	addi	x31, x31, -0x1
80202e0e: fc440613     	addi	x12, x8, -0x3c
80202e12: 967e         	add	x12, x12, x31
80202e14: 00a60023     	sb	x10, 0x0(x12)
80202e18: 4551         	li	x10, 0x14
80202e1a: fc440713     	addi	x14, x8, -0x3c
80202e1e: 41f507b3     	sub	x15, x10, x31
80202e22: 977e         	add	x14, x14, x31
80202e24: 4605         	li	x12, 0x1
80202e26: 8542         	mv	x10, x16
80202e28: 4681         	li	x13, 0x0
80202e2a: fffff097     	auipc	x1, 0xfffff
80202e2e: 02c080e7     	jalr	0x2c(x1) <ekernel+0xfffe2e56>
80202e32: 70e2         	ld	x1, 0x38(x2)
80202e34: 7442         	ld	x8, 0x30(x2)
80202e36: 74a2         	ld	x9, 0x28(x2)
80202e38: 7902         	ld	x18, 0x20(x2)
80202e3a: 69e2         	ld	x19, 0x18(x2)
80202e3c: 6121         	addi	x2, x2, 0x40
80202e3e: 8082         	ret
80202e40: 4fd1         	li	x31, 0x14
80202e42: 892a         	mv	x18, x10
80202e44: 4725         	li	x14, 0x9
80202e46: f6a769e3     	bltu	x14, x10, 0x80202db8 <.Lpcrel_hi1069+0x88>
80202e4a: bf45         	j	0x80202dfa <.Lpcrel_hi1069+0xca>

0000000080202e4c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17he317b03bb394d22eE>:
80202e4c: 1141         	addi	x2, x2, -0x10
80202e4e: e406         	sd	x1, 0x8(x2)
80202e50: e022         	sd	x8, 0x0(x2)
80202e52: 0800         	addi	x8, x2, 0x10
80202e54: 6510         	ld	x12, 0x8(x10)
80202e56: 6108         	ld	x10, 0x0(x10)
80202e58: 6e1c         	ld	x15, 0x18(x12)
80202e5a: 60a2         	ld	x1, 0x8(x2)
80202e5c: 6402         	ld	x8, 0x0(x2)
80202e5e: 0141         	addi	x2, x2, 0x10
80202e60: 8782         	jr	x15

0000000080202e62 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2a6386b8a762da81E>:
80202e62: 1141         	addi	x2, x2, -0x10
80202e64: e406         	sd	x1, 0x8(x2)
80202e66: e022         	sd	x8, 0x0(x2)
80202e68: 0800         	addi	x8, x2, 0x10
80202e6a: 6114         	ld	x13, 0x0(x10)
80202e6c: 6510         	ld	x12, 0x8(x10)
80202e6e: 852e         	mv	x10, x11
80202e70: 85b6         	mv	x11, x13
80202e72: 60a2         	ld	x1, 0x8(x2)
80202e74: 6402         	ld	x8, 0x0(x2)
80202e76: 0141         	addi	x2, x2, 0x10
80202e78: fffff317     	auipc	x6, 0xfffff
80202e7c: 28e30067     	jr	0x28e(x6) <ekernel+0xfffe3106>

0000000080202e80 <_ZN4core5slice5index24slice_end_index_len_fail8do_panic7runtime17hacf19f9e769502f8E>:
80202e80: 7159         	addi	x2, x2, -0x70
80202e82: f486         	sd	x1, 0x68(x2)
80202e84: f0a2         	sd	x8, 0x60(x2)
80202e86: 1880         	addi	x8, x2, 0x70
80202e88: f8a43823     	sd	x10, -0x70(x8)
80202e8c: f8b43c23     	sd	x11, -0x68(x8)
80202e90: f9040513     	addi	x10, x8, -0x70

0000000080202e94 <.Lpcrel_hi1101>:
80202e94: 00000597     	auipc	x11, 0x0
80202e98: f9840693     	addi	x13, x8, -0x68

0000000080202e9c <.Lpcrel_hi1102>:
80202e9c: 00007717     	auipc	x14, 0x7
80202ea0: 4789         	li	x15, 0x2
80202ea2: fc043023     	sd	x0, -0x40(x8)
80202ea6: e5a58593     	addi	x11, x11, -0x1a6
80202eaa: fca43823     	sd	x10, -0x30(x8)
80202eae: fcb43c23     	sd	x11, -0x28(x8)
80202eb2: fed43023     	sd	x13, -0x20(x8)
80202eb6: feb43423     	sd	x11, -0x18(x8)
80202eba: fd040513     	addi	x10, x8, -0x30
80202ebe: f2c70593     	addi	x11, x14, -0xd4
80202ec2: fab43023     	sd	x11, -0x60(x8)
80202ec6: faf43423     	sd	x15, -0x58(x8)
80202eca: faa43823     	sd	x10, -0x50(x8)
80202ece: faf43c23     	sd	x15, -0x48(x8)
80202ed2: fa040513     	addi	x10, x8, -0x60
80202ed6: 85b2         	mv	x11, x12
80202ed8: fffff097     	auipc	x1, 0xfffff
80202edc: 88c080e7     	jalr	-0x774(x1) <ekernel+0xfffe2764>

0000000080202ee0 <memset>:
80202ee0: 1141         	addi	x2, x2, -0x10
80202ee2: e406         	sd	x1, 0x8(x2)
80202ee4: e022         	sd	x8, 0x0(x2)
80202ee6: 0800         	addi	x8, x2, 0x10
80202ee8: 46c1         	li	x13, 0x10
80202eea: 06d66763     	bltu	x12, x13, 0x80202f58 <memset+0x78>
80202eee: 40a006bb     	negw	x13, x10
80202ef2: 0076f813     	andi	x16, x13, 0x7
80202ef6: 01050733     	add	x14, x10, x16
80202efa: 00e57963     	bgeu	x10, x14, 0x80202f0c <memset+0x2c>
80202efe: 87c2         	mv	x15, x16
80202f00: 86aa         	mv	x13, x10
80202f02: 00b68023     	sb	x11, 0x0(x13)
80202f06: 17fd         	addi	x15, x15, -0x1
80202f08: 0685         	addi	x13, x13, 0x1
80202f0a: ffe5         	bnez	x15, 0x80202f02 <memset+0x22>
80202f0c: 41060633     	sub	x12, x12, x16
80202f10: ff867693     	andi	x13, x12, -0x8
80202f14: 96ba         	add	x13, x13, x14
80202f16: 02d77363     	bgeu	x14, x13, 0x80202f3c <memset+0x5c>
80202f1a: 03859813     	slli	x16, x11, 0x38
80202f1e: 101017b7     	lui	x15, 0x10101
80202f22: 0792         	slli	x15, x15, 0x4
80202f24: 10078793     	addi	x15, x15, 0x100
80202f28: 02f83833     	mulhu	x16, x16, x15
80202f2c: 02081793     	slli	x15, x16, 0x20
80202f30: 0107e7b3     	or	x15, x15, x16
80202f34: e31c         	sd	x15, 0x0(x14)
80202f36: 0721         	addi	x14, x14, 0x8
80202f38: fed76ee3     	bltu	x14, x13, 0x80202f34 <memset+0x54>
80202f3c: 8a1d         	andi	x12, x12, 0x7
80202f3e: 00c68733     	add	x14, x13, x12
80202f42: 00e6f763     	bgeu	x13, x14, 0x80202f50 <memset+0x70>
80202f46: 00b68023     	sb	x11, 0x0(x13)
80202f4a: 167d         	addi	x12, x12, -0x1
80202f4c: 0685         	addi	x13, x13, 0x1
80202f4e: fe65         	bnez	x12, 0x80202f46 <memset+0x66>
80202f50: 60a2         	ld	x1, 0x8(x2)
80202f52: 6402         	ld	x8, 0x0(x2)
80202f54: 0141         	addi	x2, x2, 0x10
80202f56: 8082         	ret
80202f58: 86aa         	mv	x13, x10
80202f5a: 00c50733     	add	x14, x10, x12
80202f5e: fee564e3     	bltu	x10, x14, 0x80202f46 <memset+0x66>
80202f62: b7fd         	j	0x80202f50 <memset+0x70>

0000000080202f64 <memcpy>:
80202f64: 1141         	addi	x2, x2, -0x10
80202f66: e406         	sd	x1, 0x8(x2)
80202f68: e022         	sd	x8, 0x0(x2)
80202f6a: 0800         	addi	x8, x2, 0x10
80202f6c: 46c1         	li	x13, 0x10
80202f6e: 06d66163     	bltu	x12, x13, 0x80202fd0 <memcpy+0x6c>
80202f72: 40a006bb     	negw	x13, x10
80202f76: 0076f813     	andi	x16, x13, 0x7
80202f7a: 01050333     	add	x6, x10, x16
80202f7e: 00657d63     	bgeu	x10, x6, 0x80202f98 <memcpy+0x34>
80202f82: 87c2         	mv	x15, x16
80202f84: 86aa         	mv	x13, x10
80202f86: 872e         	mv	x14, x11
80202f88: 00074883     	lbu	x17, 0x0(x14)
80202f8c: 17fd         	addi	x15, x15, -0x1
80202f8e: 01168023     	sb	x17, 0x0(x13)
80202f92: 0685         	addi	x13, x13, 0x1
80202f94: 0705         	addi	x14, x14, 0x1
80202f96: fbed         	bnez	x15, 0x80202f88 <memcpy+0x24>
80202f98: 95c2         	add	x11, x11, x16
80202f9a: 410603b3     	sub	x7, x12, x16
80202f9e: ff83f793     	andi	x15, x7, -0x8
80202fa2: 0075f713     	andi	x14, x11, 0x7
80202fa6: 00f306b3     	add	x13, x6, x15
80202faa: e721         	bnez	x14, 0x80202ff2 <memcpy+0x8e>
80202fac: 00d37a63     	bgeu	x6, x13, 0x80202fc0 <memcpy+0x5c>
80202fb0: 872e         	mv	x14, x11
80202fb2: 6310         	ld	x12, 0x0(x14)
80202fb4: 00c33023     	sd	x12, 0x0(x6)
80202fb8: 0321         	addi	x6, x6, 0x8
80202fba: 0721         	addi	x14, x14, 0x8
80202fbc: fed36be3     	bltu	x6, x13, 0x80202fb2 <memcpy+0x4e>
80202fc0: 95be         	add	x11, x11, x15
80202fc2: 0073f613     	andi	x12, x7, 0x7
80202fc6: 00c68733     	add	x14, x13, x12
80202fca: 00e6e863     	bltu	x13, x14, 0x80202fda <memcpy+0x76>
80202fce: a831         	j	0x80202fea <memcpy+0x86>
80202fd0: 86aa         	mv	x13, x10
80202fd2: 00c50733     	add	x14, x10, x12
80202fd6: 00e57a63     	bgeu	x10, x14, 0x80202fea <memcpy+0x86>
80202fda: 0005c703     	lbu	x14, 0x0(x11)
80202fde: 167d         	addi	x12, x12, -0x1
80202fe0: 00e68023     	sb	x14, 0x0(x13)
80202fe4: 0685         	addi	x13, x13, 0x1
80202fe6: 0585         	addi	x11, x11, 0x1
80202fe8: fa6d         	bnez	x12, 0x80202fda <memcpy+0x76>
80202fea: 60a2         	ld	x1, 0x8(x2)
80202fec: 6402         	ld	x8, 0x0(x2)
80202fee: 0141         	addi	x2, x2, 0x10
80202ff0: 8082         	ret
80202ff2: fcd377e3     	bgeu	x6, x13, 0x80202fc0 <memcpy+0x5c>
80202ff6: 00359613     	slli	x12, x11, 0x3
80202ffa: ff85f293     	andi	x5, x11, -0x8
80202ffe: 03867813     	andi	x16, x12, 0x38
80203002: 0002b703     	ld	x14, 0x0(x5)
80203006: 40c0063b     	negw	x12, x12
8020300a: 03867893     	andi	x17, x12, 0x38
8020300e: 02a1         	addi	x5, x5, 0x8
80203010: 0002b603     	ld	x12, 0x0(x5)
80203014: 01075e33     	srl	x28, x14, x16
80203018: 01161733     	sll	x14, x12, x17
8020301c: 01c76733     	or	x14, x14, x28
80203020: 00e33023     	sd	x14, 0x0(x6)
80203024: 0321         	addi	x6, x6, 0x8
80203026: 02a1         	addi	x5, x5, 0x8
80203028: 8732         	mv	x14, x12
8020302a: fed363e3     	bltu	x6, x13, 0x80203010 <memcpy+0xac>
8020302e: bf49         	j	0x80202fc0 <memcpy+0x5c>

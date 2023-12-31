BackupMobileEventIndex:
	ld a, BANK(sMobileEventIndex)
	call GetSRAMBank
	ld a, [sMobileEventIndex]
	push af
	ld a, BANK(sMobileEventIndexBackup)
	call GetSRAMBank
	pop af
	ld [sMobileEventIndexBackup], a
	jp CloseSRAM

RestoreMobileEventIndex:
	ld a, BANK(sMobileEventIndexBackup)
	call GetSRAMBank
	ld a, [sMobileEventIndexBackup]
	push af
	ld a, BANK(sMobileEventIndex)
	call GetSRAMBank
	pop af
	ld [sMobileEventIndex], a
	jp CloseSRAM

DeleteMobileEventIndex:
	ld a, BANK(sMobileEventIndex)
	call GetSRAMBank
	xor a
	ld [sMobileEventIndex], a
	jp CloseSRAM

_MobilePrintNum::
; Supports signed 31-bit integers (up to 10 digits)
; b: Bits 0-4 = # bytes
;    Bit 7 = set if negative
; c: Number of digits
; de: highest byte of number to convert
; hl: where to print the converted string
	push bc
	xor a
	ldh [hPrintNumBuffer + 0], a
	ldh [hPrintNumBuffer + 1], a
	ldh [hPrintNumBuffer + 2], a
	ld a, b
	and $f
	cp $1
	jr z, .one_byte
	cp $2
	jr z, .two_bytes
	cp $3
	jr z, .three_bytes
; four bytes
	ld a, [de]
	ldh [hPrintNumBuffer + 0], a
	inc de

.three_bytes
	ld a, [de]
	ldh [hPrintNumBuffer + 1], a
	inc de

.two_bytes
	ld a, [de]
	ldh [hPrintNumBuffer + 2], a
	inc de

.one_byte
	ld a, [de]
	ldh [hPrintNumBuffer + 3], a
	inc de

	push de
	xor a
	ldh [hPrintNumBuffer + 8], a
	ld a, b
	ldh [hPrintNumBuffer + 9], a
	ld a, c
	cp 2
	jr z, .two_digits
	ld de, ._2
	cp 3
	jr z, .three_to_nine_digits
	ld de, ._3
	cp 4
	jr z, .three_to_nine_digits
	ld de, ._4
	cp 5
	jr z, .three_to_nine_digits
	ld de, ._5
	cp 6
	jr z, .three_to_nine_digits
	ld de, ._6
	cp 7
	jr z, .three_to_nine_digits
	ld de, ._7
	cp 8
	jr z, .three_to_nine_digits
	ld de, ._8
	cp 9
	jr z, .three_to_nine_digits
	ld de, ._9

.three_to_nine_digits
	inc de
	inc de
	inc de
	dec a
	dec a

.digit_loop
	push af
	call .Function1062b2
	call .Function1062ff
rept 4
	inc de
endr
	pop af
	dec a
	jr nz, .digit_loop

.two_digits
	ld c, 0
	ldh a, [hPrintNumBuffer + 3]
.mod_ten_loop
	cp 10
	jr c, .simple_divide_done
	sub 10
	inc c
	jr .mod_ten_loop

.simple_divide_done
	ld b, a
	ldh a, [hPrintNumBuffer + 8]
	or c
	ldh [hPrintNumBuffer + 8], a
	jr nz, .create_digit
	call .LoadMinusTenIfNegative
	jr .done

.create_digit
	ld a, "0"
	add c
	ld [hl], a

.done
	call .Function1062ff
	ld a, "0"
	add b
	ld [hli], a
	pop de
	pop bc
	ret

._9	dd 1000000000
._8	dd 100000000
._7	dd 10000000
._6	dd 1000000
._5	dd 100000
._4	dd 10000
._3	dd 1000
._2	dd 100

.Function1062b2:
	ld c, $0
.asm_1062b4
	ld a, [de]
	dec de
	ld b, a
	ldh a, [hPrintNumBuffer + 3]
	sub b
	ldh [hPrintNumBuffer + 7], a
	ld a, [de]
	dec de
	ld b, a
	ldh a, [hPrintNumBuffer + 2]
	sbc b
	ldh [hPrintNumBuffer + 6], a
	ld a, [de]
	dec de
	ld b, a
	ldh a, [hPrintNumBuffer + 1]
	sbc b
	ldh [hPrintNumBuffer + 5], a
	ld a, [de]
	inc de
	inc de
	inc de
	ld b, a
	ldh a, [hPrintNumBuffer + 0]
	sbc b
	ldh [hPrintNumBuffer + 4], a
	jr c, .asm_1062eb
	ldh a, [hPrintNumBuffer + 4]
	ldh [hPrintNumBuffer + 0], a
	ldh a, [hPrintNumBuffer + 5]
	ldh [hPrintNumBuffer + 1], a
	ldh a, [hPrintNumBuffer + 6]
	ldh [hPrintNumBuffer + 2], a
	ldh a, [hPrintNumBuffer + 7]
	ldh [hPrintNumBuffer + 3], a
	inc c
	jr .asm_1062b4

.asm_1062eb
	ldh a, [hPrintNumBuffer + 8]
	or c
	jr z, .LoadMinusTenIfNegative
	ld a, -10
	add c
	ld [hl], a
	ldh [hPrintNumBuffer + 8], a
	ret

.LoadMinusTenIfNegative:
	ldh a, [hPrintNumBuffer + 9]
	bit 7, a
	ret z

	ld [hl], -10
	ret

.Function1062ff:
	ldh a, [hPrintNumBuffer + 9]
	bit 7, a
	jr nz, .asm_10630d
	bit 6, a
	jr z, .asm_10630d
	ldh a, [hPrintNumBuffer + 8]
	and a
	ret z

.asm_10630d
	inc hl
	ret

; functions related to the cable club and various NPC scripts referencing communications

Mobile_AlwaysReturnNotCarry:
	or a
	ret

Function10635c:
	ld a, [wMobileCommsJumptableIndex]
	bit 7, a
	ret nz
	ld a, [wMobileCommsJumptableIndex]
	ld hl, .Jumptable
	rst JumpTable
	ret

.Jumptable:
	dw .init
	dw Function106392
	dw Function1063cc
	dw Function1063d8
	dw Function1063e5
	dw Function1063f3
	dw Function106403
	dw Function106442
	dw Function106453

.init:
	; unreachable

Function106392:
	xor a
	ld [wcf64], a
	ld a, [wc821]
	bit 1, a
	jr nz, .asm_1063a2
	bit 0, a
	jr z, .asm_1063bf
	ret

.asm_1063a2
	call Mobile_AlwaysReturnNotCarry
	ld a, c
	and a
	jr nz, .asm_1063b4
	ld a, $b
	ld [wcf64], a
	ld a, $7
	ld [wMobileCommsJumptableIndex], a
	ret

.asm_1063b4
	ld a, $7
	ld [wcf64], a
	ld a, $7
	ld [wMobileCommsJumptableIndex], a
	ret

.asm_1063bf
	ld a, $1
	ld [wcf64], a
	ld a, [wMobileCommsJumptableIndex]
	inc a
	ld [wMobileCommsJumptableIndex], a
	ret

Function1063cc:
	ld a, $78
	ld [wcd42], a
	ld a, [wMobileCommsJumptableIndex]
	inc a
	ld [wMobileCommsJumptableIndex], a

Function1063d8:
	ld hl, wcd42
	dec [hl]
	ret nz
	ld a, [wMobileCommsJumptableIndex]
	inc a
	ld [wMobileCommsJumptableIndex], a
	ret

Function1063e5:
	ld a, [wcf64]
	cp $3
	ret nz
	ld a, [wMobileCommsJumptableIndex]
	inc a
	ld [wMobileCommsJumptableIndex], a
	ret

Function1063f3:
	; unreachable

Function106403:
	ld a, [wc821]
	bit 1, a
	jr nz, .asm_106426
	bit 0, a
	jr z, .asm_10640f
	ret

.asm_10640f
	ld a, [wcd31]
	and $80
	ld c, a
	ld a, [wcd30]
	or c
	inc a
	ld c, a
	ld a, [wMobileCommsJumptableIndex]
	inc a
	ld [wMobileCommsJumptableIndex], a
	ret

.asm_106426
	call Mobile_AlwaysReturnNotCarry
	ld a, c
	and a
	jr z, .asm_106435
	ld a, [wMobileCommsJumptableIndex]
	inc a
	ld [wMobileCommsJumptableIndex], a
	ret

.asm_106435
	ld c, $0
	ld a, [wMobileCommsJumptableIndex]
	inc a
	ld [wMobileCommsJumptableIndex], a
	ret

Function106442:
	; unreachable

Function106453:
	ld a, [wMobileCommsJumptableIndex]
	set 7, a
	ld [wMobileCommsJumptableIndex], a
	nop
	ld a, $4
	ld [wcf64], a
	ret

Function106464::
	ld de, FontsExtra_SolidBlackGFX
	ld hl, vTiles2 tile "■" ; $60
	lb bc, BANK(FontsExtra_SolidBlackGFX), 1
	call Get2bpp
	ld de, FontsExtra2_UpArrowGFX
	ld hl, vTiles2 tile "▲" ; $61
	lb bc, BANK(FontsExtra2_UpArrowGFX), 1
	call Get2bpp
	ld de, GFX_106514
	ld hl, vTiles2 tile "☎" ; $62
	ld c, 9
	ld b, BANK(GFX_106514)
	call Get2bpp
	ld de, $40b0
	ld hl, vTiles2 tile $6b
	ld b, $f ; XXX no graphics at 0f:40b0
	call Get2bpp
	farcall LoadFrame
	ret

Function10649b:
	ld a, [wTextboxFrame]
	maskbits NUM_FRAMES
	ld bc, 6 * LEN_1BPP_TILE
	ld hl, Frames
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, vTiles2 tile "┌" ; $79
	ld c, 6 ; "┌" to "┘"
	ld b, BANK(Frames)
	call Function1064c3
	ld hl, vTiles2 tile " " ; $7f
	ld de, TextboxSpaceGFX
	ld c, 1
	ld b, BANK(TextboxSpaceGFX)
	call Function1064c3
	ret

Function1064c3:
	ldh a, [rSVBK]
	push af
	ld a, $6
	ldh [rSVBK], a
	push bc
	push hl
	ld hl, Function3f88
	ld a, b
	rst FarCall
	pop hl
	pop bc
	pop af
	ldh [rSVBK], a
	jr asm_1064ed

Function1064d8:
	ldh a, [rSVBK]
	push af
	ld a, $6
	ldh [rSVBK], a
	push bc
	push hl
	ld hl, Function3f9f
	ld a, b
	rst FarCall
	pop hl
	pop bc
	pop af
	ldh [rSVBK], a
	jr asm_1064ed

asm_1064ed:
	ld de, wDecompressScratch
	ld b, $0
	ldh a, [rSVBK]
	push af
	ld a, $6
	ldh [rSVBK], a
	ldh a, [rVBK]
	push af
	ld a, $1
	ldh [rVBK], a
	call Get2bpp
	pop af
	ldh [rVBK], a
	pop af
	ldh [rSVBK], a
	ret

Function10650a:
	ld de, MobilePhoneTilesGFX
	lb bc, BANK(MobilePhoneTilesGFX), 17
	call Get2bpp
	ret

GFX_106514:
INCBIN "gfx/unknown/106514.2bpp"

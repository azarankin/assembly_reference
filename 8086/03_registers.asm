
; ax = ah al (high and low)
; bx = bh bl (high and low)
; cx = ch cl (high and low)
; dx = dh dl (high and low)
org 100h
mov al 0x1E
mov ax 0xFFFF
mov ah 0x30
lodsb	;bite from si to al like Hello World! example
ret


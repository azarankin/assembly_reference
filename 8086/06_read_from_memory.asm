
org 100h
mov bx, 0xfff0
mov [bx], 0x30	; set  0xfff0 memory address to 0x30
ret
; Index Registers Used for Memory Addressing, like (BX, SI, DI, BP)







org 100h
mov [0x00] 0x30 ; set in DS like 0700 on 7000 physical address
ret








org 100h
mov bx, 0xfff0
mov byte [bx], 0x30	; only 1byte write
mov word [bx], 0x30	; 2 bytes
mov ax, [0x00]		; reads a word; copy the address on value from 00 register
mov al, [0x00]		; reads a bit to al
mov ah [0x00]		; reads a bit to ah

mov bx, 0xff0
mov ax, [bx]
ret
;based on DS

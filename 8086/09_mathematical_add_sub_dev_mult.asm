org 100h
mov al, 20	; 0x14
add al, -3	; 0x11
ret




org 100h
mov al, 20	; 0x14
sub al, -5	; 0x19 ;25
ret

org 100h
; AX = AL * operand
mov al, 20	; 0x14
mov bl, 20	; 0x14
mul bl ; al x bl = 190h	; Not works with negative numbers
;AX is 0x0190 ;400
ret

org 100h ; higher numbers
mov ax, 5550    ; AX is 0x15AE
mov bx, 20      ; BX is 0x0014
mul bx    ; AX is 0xB198 ; DX 0x0001   == 0x1B198 == 111,000
ret

org 100h;
mov al, -2  ;0xFE  0b1111 1110     ;negative signed
mov bl, -4  ;0xFC
imul bl     ;signed multiply
; AL is 0x08
ret


org 100h ; higher numbers
mov ax, 5550    ; AX is 0x15AE
mov bx, 20      ; BX is 0x0014
mul bx    ; AX is 0xB198 ; DX 0x0001   == 0x1B198 == 111,000
ret

; single byte
; AL = AX /operand
; AH = reminder (modulus)
org 100h 
mov dx, 0x0a
mov ax, 0xffff
mov bx, 400 ; 0x0190
div bx ; 0x0AFFFF /  0x0190
ret
; AX is 0x070A
; AL 0x0A
; AH 0X07

; single word
; AX = DX AX /operand
; DX = reminder (modulus)
org 100h 
mov ax, -203
mov bl, 4
idiv bl ;AL -50 AH -3
ret



org 100h 
mov dx, 0x0a
mov ax, 0xffff
mov bx, 0
; INT 00h will called; need to set out own interrupt 0
; can override it to manually
div bx ;
ret
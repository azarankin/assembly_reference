
; Other registers
; IP current memory address
;  _S segmentations CS SS DS ES
; SP stack top pointer



org 100h    

mov ax, 0x300
mov ds, ax	; cant mov ds, 0x300 ; no immidiates for segment register, should copy to general register firsy

mov [0xFF], 0x30  ;registered in 0300:FF not 0700:FF 
ret


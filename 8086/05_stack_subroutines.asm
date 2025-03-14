


org 100h    
jmp _test
mov ax, 0x300
_test:	;change the IP to run from here
ret




org 100h    
jmp 0x7c0:0xff	;IP will change to FF and CS is 07C0
; physically we jump to  7c0<<4 (16decimal)	so we in 7cff physical memory
ret



org 100h    
;from SP
push 0xffff
pop ax ;  ax now 0xffff
ret




org 100h    

_main:
    call _test    ;this address will store in ret address in SP stack
    mov ah, 0x20
    ret

_test:
    mv ah, 0x10
    ret     ; using pop




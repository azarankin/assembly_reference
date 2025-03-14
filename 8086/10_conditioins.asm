; flags CF ZF SF DF FF FAF IF  DF
;CMP; JE (jump if equal)

org 100h
mov al, 10
comp, 10
je _equal   ;checking the ZF=1 flag and jump ; ZF zero flag
jmp _exit
_equal:
    mov ah, 0eh
    mov al, 'A'
    int 0x10
_exit:
ret



org 100h
mov al, 10
comp, 10
jne _equal   ;checking the ZF=0 flag and jump
jmp _exit
_equal:
    mov ah, 0eh
    mov al, 'A'
    int 0x10
_exit:
ret





org 100h
mov al, 10
comp, 10
ja _equal   ;checking the ZF=0 and CF=0 ; CF carry flag
jmp _exit
_equal:
    mov ah, 0eh
    mov al, 'A'
    int 0x10
_exit:
ret




org 100h
mov al, 10
comp, 10
jb _equal   ;checking the CF=1
jmp _exit
_equal:
    mov ah, 0eh
    mov al, 'A'
    int 0x10
_exit:
ret




org 100h
mov al, 10
comp, 10
jae _equal   ;checking the CF=0
jmp _exit
_equal:
    mov ah, 0eh
    mov al, 'A'
    int 0x10
_exit:
ret


org 100h

jmp main

message: db 'Hello World!', 0

ptint:
    mov si, message
    mov ah, 0Eh

._loop:    
    lodsb
    cmp al, 0
    je .done
    int 10h
    jmp ._loop

.done:
    ret
                          
main:
    call ptint
    ret



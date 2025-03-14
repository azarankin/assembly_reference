; ES:[DI]=AL
; if DF=0 then DI=DI+1
; else DI=DI-1


org 100h
mov al, 'A'
mov di, messages
stosb
stosb
ret

message db 'Hello world', 0 
; result is AA\ llo world  ; in DI

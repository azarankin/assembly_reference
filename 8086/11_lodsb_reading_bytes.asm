; LODSB
; AL = DS:[SI]
; if DF=0 then SI = SI + 1
; else SI = SI - 1


org 100h
mov si, message
lodsb
lodsb
;cmp al, 0 


ret

message db 'Hello world', 0 ; SI points to the first char

    global _my_asm

    section .text

_my_asm:
    mov eax, 10
    ret ;c espect the value in eax regiter
; eax (extendede ax register)  contains 1
; run 02_call_c_code.bat
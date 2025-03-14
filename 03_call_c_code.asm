
    global _my_asm

    section .text


;	movl	$10, 4(%esp)
;	movl	$5, (%esp)
;	call	_my_asm

_my_asm:
    ; word is 4bytes
    ; stack pointer is decreased by 4 in the intel proccessors
    push ebp ; (c call)+4 (push) +4 = 8 ; push base pointer to the stack ; 12 - 8
    mov ebp, esp    ;moved next on the stack that increased
    sub esp, 8
    mov eax, [ebp+8] ;5 ; 1st argument ()
    mov eax, [ebp+12] ;10 ; 2nd argument (4 bytees out)
    add esp,8 
    pop ebp
    ret 
; run 03_call_c_code.bat
; helloworld.asm
;
; This is a Win32 console program that writes "Hello, World" on one line and
; then exits. It needs to be linked with a C library.
;
;----------------------------------------------------------

global _main
extern _printf  ;from C

section .text

_main:
    push message
    call _printf
    add esp, 4  #itterate the stack by 4 byts for 32bit syste,
            ;pop eax ; do cleans the stack but set the register eax / esp
    ret

message:
    db 'Hello, World', 10, 0    ; 10 is for new line 0 is null terminator


; nasm -fwin32 01_helloworld.asm
; gcc 01_helloworld.obj
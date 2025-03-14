org 100h

main:
    mov ah, 0eh      ; Set function 0Eh of interrupt 10h (teletype output)
    ; ah for a function
    mov al, 'A'      ; Load ASCII character 'A' (65 in decimal) into AL register
    ;al bx cx   parameter registers
    int 10h          ; Call BIOS video interrupt
 

ret



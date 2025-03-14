

org 100h       ; Set the starting address at 100h (COM file standard)

jmp main       ; Jump over the data section

message: db 'Hello World!', 0  ; Null-terminated string

ptint:                ; Function to print a string
    mov si, message   ; Load the address of 'message' into SI
    mov ah, 0Eh       ; BIOS teletype output function

._loop:    
    lodsb    ;load the si to al and increaments it        ; Load byte at SI into AL and increment SI
    cmp al, 0        ; Check for null terminator
    je .done         ; If zero, stop
    int 10h          ; Print character in AL
    jmp ._loop       ; Repeat loop

.done:
    ret              ; Return from function
                          
main:
    call ptint       ; Call the print function
    ret              ; Return to DOS



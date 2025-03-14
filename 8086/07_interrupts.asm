;interrupt the processor, runs the code and return to us

org 100h
mov ah, 0eh	;0x0E
mov al, 'A'
int 0x10
ret








org 100h
push ds	; data segment
mov ax, 0	
mov ds, ax	 ; DS = 0x0000 (IVT access)  ; DS will be 0


mov [0x00], handle_int0  ; Store the offset (low part of ISR)
mov [0x02], cs           ; Store the segment (CS)
pop ds			 ;Restores DS to its original value.
int 0x00

ret

handle_int0:
	mov ah, 0eh
	mov al, 'A'
	int 0x10
	iret		; Return from interrupt





org 100h
push ds	; data segment
mov ax, 0	
mov ds, ax	 ; DS = 0x0000 (IVT access)  ; DS will be 0


mov [0x04], handle_int0  ; Store the offset (low part of ISR)
mov [0x06], cs           ; Store the segment (CS)
pop ds			 ;Restores DS to its original value.
int 0x01

ret


handle_int0:
	mov ah, 0eh
	mov al, 'A'
	int 0x10
	iret		; Return from interrupt








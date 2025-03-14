;Talking to program with in and out instructions
;emulate > virtual devices > Printer.exe
org 100h
mov al, 'A'
out 130, al	;port 130 send
ret

org 100h
in al, 110	;port 110 send
ret



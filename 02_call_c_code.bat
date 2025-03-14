echo off
echo 02_call_c_code.bat
nasm -fwin32 02_call_c_code.asm
gcc 02_call_c_code.c 02_call_c_code.obj -o 02_call_c_code.c.asm -S -O0
gcc 02_call_c_code.c 02_call_c_code.obj -o 02_call_c_code.exe
02_call_c_code.exe
del 02_call_c_code.exe
del 02_call_c_code.obj
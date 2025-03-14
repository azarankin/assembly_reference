echo off
echo 03_call_c_code.bat
nasm -fwin32 03_call_c_code.asm
gcc 03_call_c_code.c 03_call_c_code.obj -o 03_call_c_code.c.asm -S -O0
gcc 03_call_c_code.c 03_call_c_code.obj -o 03_call_c_code.exe
03_call_c_code.exe
del 03_call_c_code.exe
del 03_call_c_code.obj
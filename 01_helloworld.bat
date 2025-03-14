echo off
echo 01_helloworld.bat
nasm -fwin32 01_helloworld.asm
gcc 01_helloworld.obj
a.exe
del a.exe
del 01_helloworld.obj
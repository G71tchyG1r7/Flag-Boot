@echo off
nasm -f bin trans.asm -o trans.bin
set PATH=%PATH%;C:\Program Files\qemu
qemu-system-i386 -s -soundhw pcspk -fda trans.bin
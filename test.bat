nasm -f bin flg1.asm -o test.bin
qemu-system-x86_64 -drive format=raw,file=test.bin -monitor stdio
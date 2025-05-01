BITS 16
org 0x7C00
    mov ah, 0x00
    mov al, 0x03
    int 0x10
mov ah, 0x02
mov dl, 0
mov dh, 0
int 0x10
%macro b 0
mov ah, 0x09
mov al," "
mov cx, 80
mov bl, 0xB0
int 0x10
inc dh
mov ah, 0x02
int 0x10
%endmacro
%macro p 0
mov ah, 0x09
mov bl, 0xD0
int 0x10
inc dh
mov ah, 0x02
int 0x10
%endmacro
%macro w 0
mov ah, 0x09
mov bl, 0xF0
int 0x10
inc dh
mov ah, 0x02
int 0x10
%endmacro
b
b
b
b
b
p
p
p
p
p
w
w
w
w
w
p
p
p
p
p
b
b
b
b
b
cli
hlt
times 510-($-$$) db 0
dw 0xAA55

org 01
mov cx, 05h
mov si, 0500h
mov di, 0510h
l1: mov al, [si]
inc si
mov bl, [si]
xor al,bl
add al, 034h
mov [di], al
inc di
loop l1
hlt



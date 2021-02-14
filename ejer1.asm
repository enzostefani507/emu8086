;Realice un programa assembler que permita sumar el contenido de las siguientes direcciones 2Ah, 2Bh, 2Ch, 2Dh guardando el resulado en 0Dh.
;Cargar dichas direcciones previamente con valores

mov [2Ah],10
mov [2Bh],25
mov [2Ch],20
mov [2Dh],15
                                                              
mov al,[2Ah]
add al,[2Bh]
add al,[2Ch]
add al,[2Dh]

mov [0Dh],al

hlt ;Fin del programa

;Realice la multiplicación de dos números ingresados por teclado, que almacene el resultado en la variable 'Result' e imprima el resultado por pantalla

org 100h

;solicito valor
mov ah,9
mov dx,offset solicitud_dato
int 21h

;Entrada de 1er valor
mov ah,1
int 21h
mov cl,al ;Guardo el primer valor en cl
sub cl, 30h ;Sustraigo los valores correpondientes ascii

;solicito valor
mov ah,9
mov dx,offset solicitud_dato
int 21h

;Entrada de 2d0 valor
mov ah,1
int 21h
mov ch,al ;Guardo el segundo valor en ch
sub ch, 30h ;Sustraigo los valores correpondientes ascii 

;calculamos
mov al,cl
mul ch
mov resultado,ax
add resultado, 30h ;Sumamos 30h para poder representar en ascii

;Informar parte resulado
mov dx,offset mostrar_respuesta
mov ah,9
int 21h

;Mostrar resultado
mov ah, 2
mov dx,resultado
int 21h

ret

solicitud_dato db "Ingrese un valor: $"
mostrar_respuesta db "Resultado: $"      
resultado dw ?
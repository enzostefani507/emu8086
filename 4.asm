;Copiar valores de un vector a otro
org 100h

mov cx,9 ;Definimos cantidad de iteraciones
mov bx,0 ;Inicializamos indice
bucle: ;Se repetira mientras cx sea mayor que cero -se decrementa automaticamente
    
    ;Movemos el contenido del vector a ah para luego copiarlo al otro
    mov ah,vector1[bx]
    mov vector2[bx],ah 
    
    ;Incrementamos el indice para acceder al vector
    inc bx 
loop bucle

vector1 db 1,2,3,4,5,6,7,8,9
vector2 db ?    

ret
end

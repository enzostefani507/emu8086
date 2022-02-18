;Cargar un vector por teclado, con 10 elementos e imprimir por pantalla los valores ingresados, separados por comas.

org 100h

;Primer parte del programa
mov dx,offset msj1
mov ah,9
int 21h    

;salto linea
mov ah,2
mov dl,0Ah
int 21h



mov cx,10 ;Definimos cantidad de iteraciones
mov bx,0
bucle1: ;Se repetira mientras cx sea mayor que cero -se decrementa automaticamente
    ;Leo caracter -> se guarda en al
    mov ah,1
    int 21h      
    
    ;copio valor corregido y lo ingreso al vector
    sub al,30h
    mov vector1[bx],al   
    
    ;paso al siguiente elemento
    inc bx
loop bucle1

;salto linea
mov ah,2
mov dl,0Ah
int 21h

;Segunda parte del programa
mov dx,offset msj2
mov ah,9
int 21h
 
;salto linea
mov ah,2
mov dl,0Ah
int 21h

mov bx,0
mov cx,10
bucle2:    
    ;sumamos 30h para poder representar como ascii
    add vector1[bx],30h
    
    ;mostramos valor del vector
    mov ah,2
    mov dl,vector1[bx]
    int 21h 
                       
    ;restauramoos el valor del vector
    sub vector1[bx],30h
    
    ;Caracter punto y coma
    mov ah,2
    mov dl,2Ch
    int 21h      
    
    inc bx
loop bucle2

vector1 db ? 
msj1 db "Carga de datos $"
msj2 db "Muestra de datos $"
ret 
end

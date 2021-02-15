;Realice un programa que sume dos números enteros, ingresados por teclado 
        
;Leo un caracter        
mov ah,1
int 21h                 

;imprimo un caracter
mov ah,2
mov dl,al
int 21h

ret                          
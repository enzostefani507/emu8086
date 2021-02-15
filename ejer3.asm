;Realice un programa que sume dos números enteros, ingresados por teclado 

;Solicito numero
mov ah,9
mov dx,offset var1
int 21h

;Leo primer número
mov ah,1
int 21h 
mov cl,al ;guardo entrada en cl  
sub cl, 30h ;corrijo ascii restando 30h

;Solicito numero
mov ah,9
mov dx,offset var1
int 21h

;Leo segundo número
mov ah,1
int 21h;
sub al,30h ;corrijo ascii restando 30h
add cl,al ;acumulo el valor en cl

         
;Convierto a ascii para mostrar resultado
add cl,30h

;Muestro resultado
mov ah,9
mov dx,offset var2 
int 21h

mov ah, 2
mov dl,cl
int 21h

ret                          

var1 db " Ingrese numero: $"
var2 db " Resultado: $"
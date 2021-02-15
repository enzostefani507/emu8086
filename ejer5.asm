;Realice la divisi�n entera de los n�meros ingresados por teclado. 
;Imprima el resultado por pantalla y guarde en variables el cociente y resto.


; esta sin terminar - NO FUNCIONA
org 100h

;Solicitamos dividendo
mov dx,offset var1
mov ah,9
int 21h

;Ingresmos dividendo,guardamos en bl y lo corregimos
mov ah,1
int 21h

sub al,30h
mov bl,al 

;Solicitamos divisor
mov dx,offset var2
mov ah,9
int 21h

;Ingresmos dividendo,guardamos en bh y lo corregimos
mov ah,1
int 21h

sub al,30h
mov bh,al 

;Realizamos la operacion
mov ax,bl
mov bl,bh
div bl  

;Acumulamos en las variables correspondientes y corregimos el resultado
mov cociente,al
add cociente,30h

mov resto, ah
add resto,30h

ret

var1 db "Ingrese dividendo $"
var2 db "Ingrese divisor $"
cociente db ?
resto db ?
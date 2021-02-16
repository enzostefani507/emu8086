;Realice la division entera de los numeros ingresados por teclado. 
;Imprima el resultado por pantalla y guarde en variables el cociente y resto.

include 'emu8086.inc' 

org 100h

;Solicitamos dividendo,guardamos en CX
PRINTN "Ingrese dividenso"
call SCAN_NUM
mov dx,cx 

;Ingresmos divisor,guardamos en CX 
PRINTN "Ingrese un divisor"
call SCAN_NUM
mov bl,cl

;Division
mov ax,dx
div bl

;Almaceno resultados
mov cociente,al
mov resto,ah              

cociente db ?
resto db ?  

ret   

DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS     ;Definir si se usa PRINT_NUM
DEFINE_PTHIS

end
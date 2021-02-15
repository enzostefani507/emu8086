;Realice la multiplicación de dos números ingresados por teclado, que almacene el resultado en la variable 'Result' e imprima el resultado por pantalla

include 'emu8086.inc' 

org 100h

PRINTN 'Ingrese un valor'
PRINTN ''   
call SCAN_NUM ;guarda valor ingresado en CX
mov a,cl ;Saco de CX el valor almacenado (si es un valor pequeño estara solo en l)

PRINTN 'Ingrese un valor'
PRINTN ''   
call SCAN_NUM ;guarda valor ingresado en CX
mov b,cl ;Saco de CX el valor almacenado (si es un valor pequeño estara solo en l)

PRINTN 'Calculando'
PRINTN ''
mov al,a
mov bl,b
mul bl

ret

a db ?
b db ?
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS     ;Definir si se usa PRINT_NUM
DEFINE_PTHIS

end
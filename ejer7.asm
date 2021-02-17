;Recorre un vector y contar la cnatidad de valores IMPARES. Imprimir resultado por pantalla

org 100h

include 'emu8086.inc' 

mov cx,7
mov bx,0 
mov dl,0

bucle:
      
mov ah,1      
mov al,vector[bx]
sub al,30h
and al,ah

push cx

mov cl,al 

jcxz label1
    mov al,dl
    add al,1
    mov dl,al
    jmp exit

label1:

exit:

pop cx

inc bx     
     
loop bucle 
         
         
mov ah,0         
mov al,dl

mov al,04h
         
call PRINT_NUM

mostrar_resultado db "Resultado: $"

DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS     ;Definir si se usa PRINT_NUM

vector db 12,23,34,45,56,67,14 

ret 
end
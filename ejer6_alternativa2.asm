;Cargar un vector por teclado, con 10 elementos e imprimir por pantalla los valores ingresados, separados por comas.
include "emu8086.inc"
org 100h

;Aviso primer parte programa        
mov ah,9
mov dx,offset msj1
int 21h 

    ;Salto de linea
    mov ah,2
    mov dl,0Ah
    int 21h         
       
mov cx,3 ;Definimos cantidad de iteraciones
mov bx,0
;Ciclo para cargar los valores
bucle_uno: ;Se repetira mientras cx sea mayor que cero -se decrementa automaticamente

    
    push cx
    call scan_num    
    mov vector1[bx],cl
    inc bx   
    pop cx   
    
    ;Salto de linea
    mov ah,2
    mov dl,0Ah
    int 21h 
    
loop bucle_uno



;Aviso segunda parte programa
mov ah,9
mov dx,offset msj2
int 21h    


;Ciclo para mostrar los valores
mov cx,3
mov bx,0
bucle_dos:             
    
    
    mov ah,0h 
    mov al,vector1[bx]
    
    call print_num    
    
    inc bx 
loop bucle_dos

vector1 db ?       
msj1 db "Cargar datos $"
msj2 db "Datos cargados  $"
ret                  
DEFINE_SCAN_NUM
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS     ;Definir si se usa PRINT_NUM
end

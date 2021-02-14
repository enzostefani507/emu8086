;
name "modo_dir"
.MODEL SMALL
    org 100h
.DATA
    vec db 10,21,2,200,35,44,21,9,11,22
    vec1 db ? 
    punt1 dW ? 
.CODE
     mov ax, @Data
     mov ds,ax
    
    ;Inmediato
    mov cx, 8FFFh ;Cargo el valor en CX
    mov ax, 3FFFh ;Cargo el valor en AX
    mov dh, 8Fh   ;Cargo el valor en la parte alta de DX
    
    ;Direccionamiento por registro
    mov bx,ax     ;Copio contenido de AX a BX
    add cx,bx     ;Acumulo BX en CX (Se suma CX con BX y el resultado queda en CX)
    add dh,cl     ;Acumulo parte baja de C con la parte alta de D yla acumulo en D-> ver carry
        
    ;Direccionamiento directo
    mov [1FFAh],cx
    mov al, [1FFAh]  
    mov punt1, cx           
    
    ;Direccionamiento indirecto
    mov ax, [bx]
    mov ax, [di]    
    mov ax, [si]    
    
    ;Direccionamiento base
    mov dx, [bx+05] 
        
    ;Direccionamiento indexado
    mov si,1FFAh
    mov [si+3],dx
    mov dx, [si+5]
    
    ;Direccionamiento base indexado con desplazamiento
    mov [bx+si+5],dx
    mov [bp+si+5],dx
    
    ;Modificamos el segmento de datos
    mov ax,800h
    mov ds,ax
    
    mov dx,3FFFh
    mov [1ffAh],dx
    
    ret
END
    
name "PartePrograma2"
.MODEL SMALL ; tiny,small,medium
    org 001
.DATA
    punt1 dw ?
.CODE

    mov ax, @Data ;cargo todo el semento de datos en ax
    mov ds, ax    ; cargo todo ax al segmento de datos
    
    mov ax, 3FFFh
    mov dh, 8Fh
    mov punt1, ax
    mov ds, 1Fh       
    ret    
    
    END;direciva para detener el compilador

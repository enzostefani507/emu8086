;Realice un programa que intercambie los contenidos de dos valores decimales definidos en dato1 y dato2.
name "Ejercicio 2"
.MODEL SMALL
    org 100h
.DATA
    dato1 db 15
    dato2 db 12
.CODE
  mov al,dato1
  mov dl,dato2
  mov dato1,dl
  mov dato2,al

ret ;retorno

end
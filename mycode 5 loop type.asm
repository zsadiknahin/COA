.model small
.stack 100h
.data 

 m db "Hello World ",0AH,0DH, '$'
 msg1 DB "bye Hello world $"
 
 .code
 
 main proc
    
    mov ax,@data
    mov ds,ax
    
    mov CX,2
    L1:
    mov ah,9
    lea dx,m
    INT 21H
    dec cx
    jnz L1
    
    mov cx,5
    L2:
    mov ah,2
    mov dl,'*' 
    INT 21H
    mov dl ,0AH
    int 21H
    mov dl,0DH
    int 21H   
    dec cx
    jnz L2   
    
    
    mov ah,9
    lea dx,msg1
    INT 21H
    main endp
    
    end main
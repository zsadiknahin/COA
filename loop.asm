.model small
.stack 100h
.data

msg1 db "Hello" , 0Ah , 0Dh , '$'
msg2 db "The end. $"

.code

main proc
    
    
    
    mov ax, @data
    
    mov ds, ax
    mov cx, 2
    
    l1:
    
    mov ah, 9
    lea dx, msg1
    int 21h
    
    dec cx
    
    jnz l1
    mov cx, 3
    
    l2:
    mov ah,2
    mov dl, '*'
    int 21h
    
    mov ah, 2
    mov dl,0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    dec cx 
    jnz l2
    
    mov ah, 9
    lea dx, msg2
    int 21h
    
    main endp
end main
    


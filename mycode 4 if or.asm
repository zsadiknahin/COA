.model small
.stack 100h
.data
.code
main proc
    
    mov ah,1
    int 21h
    
    mov dl,al
    
    cmp dl,'1'
    je go1 
    
    
    cmp dl,'3'
    je go1 
    
    
    cmp dl,'2'
    je go2
    
    cmp dl,'4'
    je go2
           
    jmp exit
           
    go1:
    mov ah,2 
    mov dl,'o'
    int 21h
    jmp exit
    
    
    go2:
    mov ah,2
    mov dl,'e'
    int 21h
    jmp exit 
    
    exit:
    mov ah,4Ch
    int 21h
    
         
    
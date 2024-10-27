 .model small
.stack 100h
.data 

 m1 db " Positive $"
 m2 DB " Negative $" 
 m3 db  " Zero $"  
 
 main proc 
    
    mov ax,@data
    mov ds,ax
    
    
    
    mov al,-1
    
    
    cmp al,0
    jg positive

    jl negative
    
    je zero
           
    jmp exit
    
    positive:
    mov ah,9  
    lea dx,m1
    int 21h
    jmp exit
    
    
    
    negative:
    mov ah,2
    mov ah,9  
    lea dx,m2
    int 21h
    jmp exit 
    
    
    zero:
    mov ah,9  
    lea dx,m3
    int 21h
    jmp exit 
    
    
    exit:
    mov ah,4Ch
    int 21h
      
      
      main endp
      end main
    
    
    
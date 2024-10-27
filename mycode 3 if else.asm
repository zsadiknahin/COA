.model small
.stack 100h
.data 

  m1 db "Capital $"
  m2 db "Small $"
  m3 db "Unknown Operator $"
  
  
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    mov dl,al
    
    cmp dl,'A'
    
    jge check 
    jmp exit1
          
    check:
    cmp dl,'Z'
    jle capital 
    jmp exit1
    
    capital:
    mov ah,9
    lea dx,m1
    int 21h
    jmp exitf
    
    exit1:
    cmp dl,'a'
    jge check2
    jmp exit2
    
    check2:
    cmp dl,'z'
    jle small
    
    jmp exit2
    
    small:
    mov ah,9
    lea dx,m2
    int 21h
    jmp exitf
    
    exit2:
    mov ah,9
    lea dx,m3
    int 21h
    
    
    exitf:
    mov ah,4Ch
    int 21h
    
    
    
      
    
.model small
.stack 100h
.data
 a db ?
.code

main proc  
    
    mov bl,02h
    mov bh,03h 
    
    
    mov ah,1
    int 21h 
    mov a,al
    
    
    add bl,bh
    add bl ,a
     
    add bl,bh 
   ; add bl,30h 
    mov ah,2
    mov dl,bl
   
    int 21h
    
    
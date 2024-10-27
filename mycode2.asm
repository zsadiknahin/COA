.model small
.stack 100h
.data
 a db ?
.code

main proc  
    
    mov bl,2
    mov bh,3 
    
   sub bh,bl 
   
  
   add bh,30h
   
   
   mov ah,2
   mov dl,bh
   int 21h
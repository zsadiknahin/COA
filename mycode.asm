 .model small
.stack 100h
.data 

 m1 db " Capital $"
 m2 DB " Small $" 
 m3 db  " Unknown Operator $"
 
 
 .code
 
 main proc
     mov ax,@data
     mov ds,ax
     
     mov ah,1
     int 21h
            
     mov dl,al
     
     cmp dl,'A'
     
     jge check
     jmp exit 
     
     check:
     
     cmp dl,'Z'
     jle print1
     jmp exit
     
     print1:
     mov ah,9
     lea dx,m1
     int 21h
     jmp exit3
        
        
     Exit:
     cmp dl,'a'
     jge check2 
     jmp exit2
     
     check2:
     cmp dl,'z'
     jle print2
     jmp exit2
     
     print2:
     mov ah,9
     lea dx,m2
     int 21h
     jmp Exit3
     
     
      
     Exit2:
     mov ah,9
     lea dx,m3 
     int 21h
     jmp Exit3
     
     Exit3:
     mov ah,4CH
     INT 21H
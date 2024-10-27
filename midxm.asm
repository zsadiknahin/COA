.model small
.stack 100h
.data

msg1 db "Give an input: $"
msg2 db "Capital Letter. $"
msg3 db "Small letter. $"
msg4 db "Its number $"
msg5 db " Unknown $"

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h
    
   
    cmp bh,'A'
    jge chk_capital
    jmp chk_lower
    
    chk_capital:
    cmp bh,'Z'
    jle print_capital
    jmp chk_lower
    
    print_capital:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp exit
    
    chk_lower:
    cmp bh,'a'
    jge chk_small
    jmp number
   
    
    chk_small:
    cmp bh,'z'
    jle print_small
    jmp number
    
    
    
    print_small:
    mov ah,9
    lea dx,msg3
    int 21h
    jmp exit
 
    
    
    
    
    
    number:
    cmp bh,'0'
    jge chk_number
    jmp unknown
    
    chk_number:
    cmp bh,'9'
    jle print_number
    jmp unknown
    
    
    print_number:
    mov ah,9
    lea dx,msg4
    int 21h
    jmp exit
    
    
   
    
   
   
    
    unknown:
    mov ah,9
    lea dx, msg5
    int 21h
        
    exit:
    mov ah,4CH
    int 21h
    
    main endp
end main

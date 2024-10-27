.model small
.stack 100h
.data
.code

main proc
    mov ah, 1
    int 21h
    
    mov bh, al
    int 21h
    
    mov bl, al
    int 21h
    
    add bh, bl
    add bh, al
    sub bh, 60h
    
    mov ah, 2
    mov dl, 0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    mov dl, bh
    int 21h
.model small
.stack 100h
.data


namee db "NAHIN$"
id db "123$"
gmail db "nahin@gmail,com$"




.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, namee
    int 21h
    
    mov ah, 2
    mov dl, 0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    mov ah, 9
    lea dx, id
    int 21h
    
    mov ah, 2
    mov dl, 0Ah
    int 21h
    mov dl, 0Dh
    int 21h
    
    mov ah, 9
    lea dx, gmail
    int 21h
    
    
    
    
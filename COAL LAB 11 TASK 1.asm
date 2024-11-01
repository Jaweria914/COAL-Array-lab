.model small
.stack 100h
.data

.code 
main proc
    
    mov cx,9    
    p: 
    mov ah,1
    int 21h
    mov bx,ax
    push bx
    inc bx 
    loop p
    
    mov cx,9
    
    pp:   
    pop dx
    mov ah,2
    int 21h
    loop pp
    
    mov ah,4ch
    int 21h
    main endp
end main
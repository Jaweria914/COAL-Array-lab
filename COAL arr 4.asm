model small

.data
    arr DB 49, 50, 51, 52  

.code

main proc
    mov ax, @data           
    mov ds, ax
 

    mov si, offset arr       
    mov cx, 4               

    add si, cx              
    dec si                  

print_reverse:
    mov dl, [si]            
    mov ah, 2               
    int 21h                 

    dec si                  
    loop print_reverse          
    
    mov ah, 4Ch           
    int 21h

main endp
end main
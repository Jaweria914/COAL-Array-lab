model small
.stack 100h
.data
arr db '       '      
.code
main proc
    mov ax, @data
    mov ds, ax           

    mov cx, 10           
    lea di, arr          
input_loop:
    mov ah, 1            
    int 21h              
    sub al, '0'          
    mov [di], al         
    inc di               
    loop input_loop      

    lea si, arr          
    mov cx, 10           
process_loop:
    mov al, [si]         
    and al, 1            
    jnz skip             
    cmp al, 6            
    jge skip             
    push ax              
skip:
    inc si               
    loop process_loop    

    mov cx, 10           
display_loop:
    pop dx               
    add dl, '0'          
    mov ah, 2            
    int 21h
    loop display_loop    

    mov ah, 4ch          
    int 21h
main endp
end main
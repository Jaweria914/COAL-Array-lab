.model small

.data
    arr DB 49, 50, 51, 52  
    minVal DB 0            

.code

main proc
    mov ax, @data
    mov ds, ax

    mov si, offset arr     
    mov cx, 4              

    mov al, [si]           
    mov minVal, al         

find_min:
    inc si                 
    mov al, [si]           
    cmp al, minVal         
    jge next_element       
    mov minVal, al         

next_element:
    loop find_min          

    mov dl, minVal         
    mov ah, 2              
    int 21h

    mov ah, 4Ch            
    int 21h

main endp
end main
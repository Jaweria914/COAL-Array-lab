.model small

.data
    arr DB 49, 50, 51, 52
    maxVal DB 0           

.code

main proc
    mov ax, @data
    mov ds, ax

    mov si, offset arr     
    mov cx, 4              

    mov al, [si]           
    mov maxVal, al        

find_max:
    inc si                 
    mov al, [si]           
    cmp al, maxVal         
    jle next_element       
    mov maxVal, al         

next_element:
    loop find_max         

   
    mov dl, maxVal        
    mov ah, 2             
    int 21h

    mov ah, 4Ch            
    int 21h

main endp
end main
.model small
.stack 100h
.data
.code
main proc
mov bx, 5
mov cx, 3
L1:
 push cx
 mov cx, bx
 L2:
 Mov dl,'*'

 mov ah,2
 int 21h
 loop L2
mov dl,10
mov ah, 2
int 21h
mov dl,13
mov ah, 2
int 21h

pop cx
loop L1
mov ah,4ch
int 21h
main endp
end main

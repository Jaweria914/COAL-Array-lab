.model small
.stack 100h
.data
    msgEven db 'Parity Flag is set (even number of 1-bits)',  '$'
    msgOdd  db 'Parity Flag is clear (odd number of 1-bits)', '$'
.code
main proc
    mov ax, @data
    mov ds, ax       ; Initialize data segment

    mov al, 0x3C     ; Load AL with a value (0x3C = 0011 1100, even number of 1's)
    

    jp  EvenParity   ; Jump if Parity Flag is set (even number of 1-bits)

OddParity:
    lea dx, msgOdd
    mov ah, 9
    int 21h
    jmp Exit

EvenParity:
    lea dx, msgEven
    mov ah, 9
    int 21h

Exit:
    mov ah, 4Ch
    int 21h

main endp
end main

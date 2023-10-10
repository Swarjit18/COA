.model small
.stack 100h
.data
msg db "Hello world$"

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 5
    
    
   print:
   mov ah, 9
   lea dx, msg
   int 21h
   dec cx              ;jz Exit
                       ;jmp print
   mov ah, 2           ;Exit:
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
   
   jnz print
   
   mov ah, 4ch
   int 21h
   
   main endp
end main
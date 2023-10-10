.model small
.stack 100h
.data
a db ?

.code
main proc
    mov ax, @data
    mov ds, ax  
    
    mov ah, 1
    int 21h
    mov a,al 
    
    mov ah, 2           
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 
    
    mov cx, 5
    
    
   print:
   dec cx
   
   mov ah,2
   mov dl,a
   int 21h              ;jz Exit
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
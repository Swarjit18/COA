.model small
.stack 100h
.data
    a db ?
    msg db "hello$"
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    mov ah, 1
    int 21h
    mov a, al 
    jmp print
    jmp print_1
    
    mov ah, 9
    lea dx, msg
    int 21h
    print:
    
    mov ah, 2
    mov dl, a
    int 21h
    print_1:
    
    
    mov ah, 4ch
    int 21h
    main endp

end main
.model small
.stack 100h
.data  
msg db "Enter an Input:$"
msg1 db "Positive$"
msg2 db "Negative$" 
a db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    lea dx,msg
    int 21h
    
    mov ah,1 
    int 21h
    mov a,al
    cmp a, '-'
    je input_2
    jmp positive
    
    input_2:
    mov ah,1  
    int 21h
    
    mov ah,9
    lea dx, msg2
    int 21h
    jmp exit
    
    positive:
    mov ah,9
    lea dx, msg1
    int 21h 
    exit:
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
    
    
    
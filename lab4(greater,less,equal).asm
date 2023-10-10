org 100h
.data
msg1 db "Enter a Character:$"
msg2 db "Number is greater than 5$"
msg3 db "Number is less than 5$"
msg4 db "Number is equal to 5$" 

a db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx,msg1
    int 21h     
    
    mov ah,1
    int 21h
    mov a,al 
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h 
    
    cmp a,'5'
    jg greater
    jl less
    je equal
    
    greater:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp Exit
    less:
    mov ah,9
    lea dx, msg3
    int 21h 
    jmp Exit
    equal:
    mov ah,9
    lea dx,msg4
    int 21h 
    Exit:
    
    mov ah,4ch
    int 21h
    
    main endp
end main
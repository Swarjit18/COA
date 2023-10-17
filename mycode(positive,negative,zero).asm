.model small
.stack 100h
.data  
msg  db "Enter an Input:$"
msg1 db "This number is Positive$"
msg2 db "This number is Negative$"
msg3 db "This number is Zero$" 
a db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1 
    int 21h
    mov a,al 
    
    cmp a, '-'
    
    je input_2 
    
    cmp a,'0'
    
    jg positive 
    
    mov ah, 2          
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 
    
    mov ah,9
    lea dx,msg3
    int 21h
    jmp exit
            
            
            
    input_2:
    
    mov ah,1  
    int 21h 
    
    mov ah, 2          
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 
    
    mov ah,9
    lea dx, msg2
    int 21h
    jmp exit
             
             
             
    positive:
    
    mov ah, 2          
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 
    
    
    mov ah,9
    lea dx, msg1
    int 21h 
    exit:
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
    
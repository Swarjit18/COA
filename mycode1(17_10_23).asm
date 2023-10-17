.model small
.stack 100h
.data  

msg db "Enter an Input:$"
msg1 db "Error$"

.code
  main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,msg
    int 21h
             
    mov ah,1
    int 21h 
    mov bl,al   
    
    mov al,bl
        
    cmp al,'A'
    jl Error    
    cmp al,'Z'
    jg Error
        
    mov ah,2
    mov dl,al
    int 21h
    
    jmp exit
        
    Error:
    mov ah,9
    lea dx,msg1
    int 21h
    
    exit:
    
    
    mov ah,4ch
    int 21h
    
    main endp
  end main
    
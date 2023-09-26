.model samll 
.stack 100h

.data
  
.code 
  main proc 
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h

    mov ah, 2          ;new line
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h 

    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h  
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h 
    
    
    mov ah, 2          ;new line
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h 
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h 
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h
             
    
    mov ah, 2          ;new line
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h
    
    
    mov bh, 2Ah        ;print *
    mov ah, 2
    mov dl, bh
    int 21h        
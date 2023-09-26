.model samll 
.stack 100h

.data
    msg  db "Enter 1st Input :$"   
    msg1 db "Enter 2nd Input :$" 
    msg2 db "Enter 3rd Input :$"
     a db ?
     b db ?
     c db ? 
    msg4 db "1st Iput was:$"
    msg5 db "2nd Iput was:$"
    msg6 db "3rd Iput was:$" 
.code  
  main proc
   mov ax, @data 
   mov ds, ax 
   
   
   mov ah , 9         ;msg Print
   lea dx , msg 
   int 21h  
    
   mov ah,1            ;User Input
   int 21h
   mov a,al
    
   mov ah ,2          ;New Line 
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
   mov ah , 9          ;msg1 print
   lea dx , msg1 
   int 21h  
    
   mov ah,1            ;user input
   int 21h
   mov b,al
    
   mov ah ,2           ;new line
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
   mov ah , 9           ;msg2 print
   lea dx , msg2 
   int 21h  
    
   mov ah,1             ;user input
   int 21h
   mov c,al
    
   mov ah ,2            ;new line
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
    
   mov ah , 9            ;msg4 print
   lea dx , msg4 
   int 21h  
    
   mov ah,2              ; display output
   mov dl,a
   int 21h
    
    
   mov ah ,2              ;new line
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h
    

   mov ah , 9             ;msg5 print
   lea dx , msg5 
   int 21h  
    
   mov ah,2               ;display output
   mov dl,b
   int 21h
    
    
   mov ah ,2               ;new line
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
  
   mov ah , 9               ;print msg6
   lea dx , msg6 
   int 21h  
    
   mov ah,2                  ;dispaly output
   mov dl,c
   int 21h
    
    





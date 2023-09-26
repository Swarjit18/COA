.model small
.stack 100h 

.data 
   msg  db "Enter 1st Value:$"
   msg1 db "Enter 2nd Value:$"
   msg2 db "ENter 3rd Value:$"
   msg3 db "1st, 2nd and 3rd Input was:$" 
   a db ? 
   b db ? 
   c db ? 


.code 
 main proc
   mov ax, @data   
   mov ds, ax
   
   mov ah , 9               ;msg print
   lea dx , msg 
   int 21h  
    
   mov ah,1                 ;user input
   int 21h
   mov a,al
    
   mov ah ,2               ;new line print
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
   mov ah , 9              ;msg1 print
   lea dx , msg1 
   int 21h  
    
   mov ah,1                ;user input
   int 21h
   mov b,al
    
   mov ah ,2              ;new line print
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
   mov ah , 9             ;msg2 print
   lea dx , msg2 
   int 21h  
    
   mov ah,1                ;user input
   int 21h
   mov c,al
    
   mov ah ,2               ;new line print
   mov dl, 0ah
   int 21h
   mov dl, 0dh
   int 21h 
    
    
   mov ah , 9              ;msg3 print
   lea dx , msg3 
   int 21h  
    
   mov ah,2                 ;display charecter of 1st input
   mov dl,a
   int 21h
   
   mov bh,2ch              ;for , print
   mov ah, 2
   mov dl,bh
   int 21h 
   
   
   mov ah,2               ;display character of 2nd input
   mov dl,b
   int 21h
   
   mov bh,20h              ;for space print
   mov ah, 2
   mov dl,bh
   int 21h
                                           
   mov bh,61h             ;for a print
   mov ah, 2
   mov dl,bh
   int 21h
   
   mov bh,6eh             ;for n print
   mov ah, 2
   mov dl,bh
   int 21h 
   
   mov bh,64h             ;for d print
   mov ah, 2
   mov dl,bh
   int 21h
   
   mov bh,20h           ;for space print
   mov ah, 2
   mov dl,bh
   int 21h
           
   mov ah,2               ;display character of 3rd input
   mov dl,c
   int 21h 




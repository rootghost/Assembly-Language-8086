.model small
.stack 100h
.data
 MSG DB "HELLO!$"
 
 .code
 main proc  
    
    ;initialize DS as .data has a variable
    mov ax,@DATA
    mov ds,ax   
    
    ;Dispaly message
    lea dx,msg
    mov ah,09h
    int 21h
    
    ;return to dos
    mov ah,4ch
    int 21h  
    
    main endp
 end main
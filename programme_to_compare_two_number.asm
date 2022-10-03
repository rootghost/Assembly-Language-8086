;programme to compare two number
.model small
.stack 100h
.data
msg1 db "Number is equal$"
msg2 db "Number is not equal$"

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov dl,'2' 
    
    mov ah,1 
    int 21h
    
    cmp al,dl
    je l1
    
    lea dx,msg2
    mov ah,09
    int 21h
    
    mov ah,4ch
    int 21h
    
    
    l1:
    lea dx,msg1
    mov ah,09
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
end main
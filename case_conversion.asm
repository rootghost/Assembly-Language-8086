.model small
.stack 100h
.data   

 cr equ 13d
 lf equ 10d
 msg1 db "Enter a lower case letter: $"
 msg2 db cr,lf,"in upper case it is:"
 char db ?,"$"
 
.code     
main proc
    
    ;initialize ds
    mov ax,@data
    mov ds,ax
    
    ;print msg1 
    lea dx,msg1
    mov ah,09h 
    int 21h
    ;input charcter which is to be converted to upper case
    mov ah,01h
    int 21h
    sub al,20h
    mov char,al
    
    ;display input character on next line 
    lea dx,msg2
    mov ah,09h
    int 21h
    
    ;dos exit
    mov ah,4ch
    int 21h
main endp
    end main
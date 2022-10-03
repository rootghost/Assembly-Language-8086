;programme to print A to Z  

.model small
.stack 100h
.data
.code
main proc
    mov cx,26d ;loop will execute 26 times
    mov dx,65d ;initial ascii value of' A'
    
    capitalLetter: ;lebel initialization
    
    mov ah,02h
    int 21h
    inc dx
    
    loop capitalLetter    ;label call
    
    ;DOS terminate
    mov ah,4ch
    int 21h  
    
    
main endp
    end main
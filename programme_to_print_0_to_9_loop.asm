
;programme to print 0 to 9

.model small
.stack 100h
.data
.code
main proc 
    
    mov cx,10d
    mov dl,48d  
    
    ;initialize label
    test:
        mov ah,02h 
        int 21h
        inc dl
        
    ;label call    
    loop test
    
    
    
main endp
end main
        
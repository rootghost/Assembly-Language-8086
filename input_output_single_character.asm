.model small
.stack 100h
.data
.code
main proc
    ;taking single charcter input
    mov ah,01h
    int 21h
    mov bl,al
   
    ;new line and carriage return
    mov ah,02
    mov dl,10d 
    int 21h
    mov dl,13d
    int 21h  
    
    ;display single character 
    mov dl,bl
    int 21h    
    main endp
end main
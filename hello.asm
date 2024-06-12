section .data
    hello db 'Hello, World!', 0    

section .text
    global _start                  ;
_start:
    ; Write the message to stdout
    mov rax, 1                     
    mov rdi, 1                     
    mov rsi, hello                 
    mov rdx, 13                    
    syscall                        

    ; Exit the program
    mov rax, 60                    
    xor rdi, rdi                   
    syscall                        

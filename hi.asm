section .data
    msg db "hi", 0xA  ; hi with newline
    len equ $ - msg

section .text
    global _start

_start:
    mov rax, 1          ; sys_write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; message to write
    mov rdx, len        ; message length
    syscall

    mov rax, 60         ; sys_exit
    xor rdi, rdi        ; exit code 0
    syscall

; This Code is all meke by kirobotdev

section .rodata
    egale db "Pas égale", 10, 0
    egale_len equ $-egale

    egalite db "égale", 10, 0
    egalite_len equ $-egalite

section .text
    global _start

_start:
    mov rbx, 0
    jmp _loop

_loop:
    cmp rbx, 100
    jne _add
    je _exit

_add:
    mov rax, 1
    mov rdi, 1
    mov rsi, egale
    mov rdx, egale_len
    add rbx, 1
    syscall
    jmp _loop

_exit:
    mov rax, 1
    mov rdi, 1
    mov rsi, egalite
    mov rdx, egalite_len
    add rbx, 1
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

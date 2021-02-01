section .text
    global _ft_strdup
    extern _ft_strlen
    extern _malloc
    extern _ft_strcpy

_ft_strdup:
    cmp rdi, 0
    je _error
    call _ft_strlen
    inc rax
    push rdi
    mov rdi, rax
    call _malloc
    cmp rax, 0
    je _error
    pop rdi
    push rsi
    mov rsi, rdi
    mov rdi, rax
    call _ft_strcpy
    pop rsi
    ret
_error:
    mov rax, 0
    ret
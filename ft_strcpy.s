section .text
    global _ft_strcpy
_ft_strcpy:
    mov rax, 0

_loop:
    mov cl, byte[rsi + rax]
    mov byte[rdi + rax], cl
    cmp cl, 0
    je  _exite
    inc rax
    jmp _loop

_exite:
    mov rax, rdi
    ret
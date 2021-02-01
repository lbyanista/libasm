section .text
    global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
    xor rbx, rbx
    mov rax, 0

_loop:
    mov cl, byte[rdi + rax]
    mov bl, byte[rsi + rax]
    cmp cl, 0
    je  _return
    cmp bl, 0
    je  _return 
    cmp cl, bl
    je  _increment
    jmp _return

_increment:
    inc rax
    jmp _loop

_return:
    sub rcx, rbx
    mov rax, rcx
    ret
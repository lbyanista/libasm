section .text
    global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
    xor rbx, rbx

_loop:
    mov cl, byte[rdi]
    mov bl, byte[rsi]
    cmp cl, 0
    je  _return
    cmp bl, 0
    je  _return 
    cmp cl, bl
    je  _increment
    jmp _return

_increment:
    mov rax, 0
    jmp _loop

_return:
    sub rcx, rbx
    mov rax, rcx
    ret
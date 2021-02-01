section .text
    global _ft_strlen

_ft_strlen:
	mov	rax, -1

_loop:
	inc rax
	mov	cl, byte [rdi + rax]
	cmp cl, 0
	jne _loop
	ret
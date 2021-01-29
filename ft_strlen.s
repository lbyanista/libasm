section .text
    global _ft_strlen   ; must be declared for using gcc

_ft_strlen:
	mov	rax, 0

_loop:
	mov	cl, byte [rdi + rax]; check next byte
	inc rax
	cmp cl, 0
	jne _loop 				; If jump is not zero go back to _loop
	ret

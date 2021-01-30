section .text
    global _ft_strlen   ; must be declared for using gcc

_ft_strlen:
	mov	rax, 0

_loop:
	mov	cl, byte [rdi + rax]; check first byte
	inc rax					; increment rax i++
	cmp cl, 0				; compart 
	jne _loop 				; If jump is not zero go back to _loop
	ret						; return rax (i)

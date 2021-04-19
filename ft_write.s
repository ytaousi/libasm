			section	.text
			global	_ft_write
			extern  ___error


_ft_write:								; fd = rdi, buffer = rsi, bytes = rdx
			mov		rax, 0x2000004
			syscall
			jc error
			ret

error:		
			push rax		;save errno
			call ___error		;point rax to the external variable errno
			pop r9
			mov [rax], r9
			mov  rax,-1
			ret

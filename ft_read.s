			section	.text
			global	_ft_read
			extern  ___error

_ft_read:								; fd = rdi, buffer = rsi, bytes = rdx
			mov		rax, 0x2000003
			syscall
			jc		error
			ret

error:		
			push rax
			call ___error
			pop  r9
			mov [rax], r9
			mov  rax,-1
			ret

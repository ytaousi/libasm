			section	.text
			global	_ft_write
			extern  ___error
; DELETE all unpreserved registers by _write

_ft_write:								; fd = rdi, buffer = rsi, bytes = rdx
			mov		rax, 0x2000004
			syscall
			jc error
			ret

error:		
			push rax		;save errno
			call ___error		;point rax to the external variable errno
			pop  qword[rax]
			mov  rax,-1
			ret

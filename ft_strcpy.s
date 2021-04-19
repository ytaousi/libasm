                        section .text
                        global _ft_strcpy
; delete RDX, RCX, RAX

_ft_strcpy:									; dst = rdi, src = rsi
			mov		r10, rdi				; rcx = counter = 0
			mov		r11, rsi				
			mov		rcx, 0					
increment:
			inc		rcx
copy:
			cmp		dl, 0
			jnz		increment
return:
			mov		rax, rdi				; return dst
			ret

                        section .text
                        global _ft_strcpy

_ft_strcpy:									; dst = rdi, src = rsi
			mov		r10, rdi				; rcx = counter = 0
			mov		r11, rsi				
			mov		rcx, 0					
copy:
			cmp     BYTE [r11 + rcx] , 0
    			je      return
    			mov     r9, [r11 + rcx]
    			mov     [r10 + rcx], r9
    			inc     rcx
    			call    copy
return:
			mov	BYTE [r10 + rcx], 0				; return dst
			mov	rax, r10
			ret

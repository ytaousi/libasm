# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaousi <yassir.taous@student.1337.ma>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/29 14:17:15 by ytaousi           #+#    #+#              #
#    Updated: 2020/02/01 10:10:14 by ytaousi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			section	.text
			global	_ft_read
			extern  ___error

; delete all unpreserved registers by _read

_ft_read:								; fd = rdi, buffer = rsi, bytes = rdx
			mov		rax, 0x2000003
			syscall
			jc		error
			ret

error:		
			push rax
			call ___error
			pop  qword[rax]
			mov  rax,-1
			ret

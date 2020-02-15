# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaousi <ytaousi@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/27 14:04:40 by ytaousi           #+#    #+#              #
#    Updated: 2020/02/12 00:26:54 by ytaousi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			section	.text
			global	_ft_strlen
; DELETE RAX

_ft_strlen:
			xor		rax, rax			; i = 0
			jmp		compare
increment:
			inc		rax					; i++
compare:
			cmp		BYTE [rdi + rax], 0	; str[i] == 0
			jne		increment
done:
			ret							; return i

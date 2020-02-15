# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaousi <ytaousi@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/30 14:17:26 by ytaousi           #+#    #+#              #
#    Updated: 2020/02/12 00:55:57 by ytaousi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			section	.text
			global	_ft_write
; DELETE all unpreserved registers by _write

_ft_write:								; fd = rdi, buffer = rsi, bytes = rdx
			mov		rax, 0x2000004
			syscall
			ret

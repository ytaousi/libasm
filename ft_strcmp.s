# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaousi <ytaousi@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/13 16:39:06 by ytaousi           #+#    #+#              #
#    Updated: 2020/02/15 19:58:59 by ytaousi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

                    section .text
                    global _ft_strcmp
_ft_strcmp:
	jmp if
inc:	
	inc rdi ; s1++;
	inc rsi	; s2++;
if:	
	mov r9, 0 ; var1 = 0
	mov r10, 0 ; var2 = 0
	mov r9b, [rdi] ; r9b = *s1
	mov r10b, [rsi] ; r10b = *s2
	cmp r9b, 0 ; !r9b 
	je end
	cmp r10b, 0 ;!r10b
	je end
	cmp r9b, r10b
	je inc
end:
	sub r9w, r10w ; r9w = r9w - r10w
	movsx rax, r9w ; rax = r9w
	ret
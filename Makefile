# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ytaousi <ytaousi@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/23 19:27:19 by ytaousi           #+#    #+#              #
#    Updated: 2020/02/12 03:37:48 by ytaousi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



SRC		=	ft_strlen.s ft_write.s ft_read.s \
			ft_strdup.s ft_strcmp.s ft_strcpy.s
OBJ		=	$(SRC:.s=.o)

NAME		=	libasm.a

all:		$(NAME)

$(NAME):	$(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ):
	$(foreach var, $(SRC), nasm -f macho64 $(var);) 

clean:
	rm -rf $(OBJ)
fclean:		clean
	rm -rf $(NAME) 
re:				fclean $(NAME)


# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlabrayj <mlabrayj@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/26 14:58:53 by mlabrayj          #+#    #+#              #
#    Updated: 2021/01/29 18:13:50 by mlabrayj         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ASM = nasm -f macho64
SRC = ft_strlen.s
O = *.o
NAME = libasm.a

all: $(NAME)

$(NAME):
		$(ASM) $(SRC)
		ar -rcs $(NAME) $(O)

clean:
		rm -f $(O)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY: all re clean fclean
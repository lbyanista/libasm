# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlabrayj <mlabrayj@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/26 14:58:53 by mlabrayj          #+#    #+#              #
#    Updated: 2021/02/01 10:38:21 by mlabrayj         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ASM = nasm -f macho64
SRC = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s
O = $(SRC:.s=.o)
NAME = libasm.a

all: $(NAME)

%.o: %.s 
	$(ASM) $<

$(NAME): $(O)
		ar -rcs $(NAME) $(O)

clean:
		rm -f $(O)

fclean: clean
		rm -f $(NAME)

re: fclean all

.PHONY: all re clean fclean
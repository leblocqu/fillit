# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: leblocqu <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/06/25 14:03:47 by leblocqu          #+#    #+#              #
#    Updated: 2019/06/25 14:03:49 by leblocqu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

SRC =	src/main.c \
		src/check.c

OBJ = $(patsubst src/%.c,./%.o,$(SRC))

INCLUDE =	include/libft.h \
			include/fillit.h

all: $(NAME)

$(NAME):
	gcc -Wall -Werror -Wextra -I $(INCLUDE) -c $(SRC)
	gcc -Wall -Werror -Wextra $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re all
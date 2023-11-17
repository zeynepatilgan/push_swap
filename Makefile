# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zeatilga <zeatilga@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/10 15:47:11 by zeatilga          #+#    #+#              #
#    Updated: 2023/11/10 15:49:28 by zeatilga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
CC = gcc
CFLAGS = -Wall -Wextra -Werror
CFILES_1 = push_swap.c
CFILES_2 = function.c \
			utils2.c \
			utils.c \
			rules_a.c \
			rules_b.c \
			function2.c \
			function3.c

OBJS_1 = $(CFILES_1:.c=.o)
OBJS_2 = $(CFILES_2:.c=.o)
$(NAME): $(OBJS_1) $(OBJS_2)
	$(CC) $(CFLAGS) $(OBJS_1) $(OBJS_2) -o $(NAME)

all: $(NAME)

clean:
		rm -f $(OBJS_1) $(OBJS_2)

fclean: clean
		rm -rf $(NAME)
re: fclean all

.PHONY: all clean fclean re

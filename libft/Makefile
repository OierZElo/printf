# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ozugazag <ozugazag@student.42urduliz.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/10 17:38:04 by ozugazag          #+#    #+#              #
#    Updated: 2025/10/10 17:38:04 by ozugazag         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC = $(shell find . -name "*.c" ! -name "*_bonus.c")
SRC_BONUS = $(shell find . -name "*_bonus.c")

OBJ = $(SRC:.c=.o)
OBJ_BONUS = ${SRC_BONUS:.c=.o}

LIB = ar rcs
RANLIB = ranlib
REMOVE = rm -f

$(NAME): $(OBJ)
	$(LIB) $(NAME) $(OBJ)
	$(RANLIB) $(NAME)

%.o: %.c libft.h
	$(CC) $(CFLAGS) -I. -c $< -o $@

all: $(NAME)

bonus: $(OBJ) $(OBJ_BONUS)
	$(LIB) $(NAME) $(OBJ) $(OBJ_BONUS)
	$(RANLIB) $(NAME)

clean:
	$(REMOVE) $(OBJ) $(OBJ_BONUS)

fclean: clean
	$(REMOVE) $(NAME)

re: fclean all

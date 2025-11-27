# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ozugazag <ozugazag@student.42urduliz.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/13 08:37:53 by ozugazag          #+#    #+#              #
#    Updated: 2025/10/13 08:37:53 by ozugazag         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_printf.c ft_putchar.c ft_puthex_lower.c ft_puthex_upper.c ft_putnbr.c ft_putnbr_unsigned.c ft_putptr.c ft_putstr.c
OBJS = $(SRCS:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror

LIBFT_PATH = -C libft

all: libft $(NAME)

libft:
	$(MAKE) $(LIBFT_PATH)

$(NAME): $(OBJS)
	ar rc $@ $^

clean:
	$(MAKE) $@ $(LIBFT_PATH)
	rm -f $(OBJS)

fclean: clean
	$(MAKE) fclean $(LIBFT_PATH)
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re libft

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

NAME        = libftprintf.a
CC          = cc
INCLUDES = -I . -I libft
CFLAGS = -Wall -Wextra -Werror $(INCLUDES)
RM          = rm -f
AR          = ar rcs

SRC_DIR     = src
OBJ_DIR     = obj
INC_DIR     = includes

SRC = $(wildcard src/*.c)
OBJ = $(patsubst src/%.c, obj/%.o, $(SRC))
DEPS        = $(addprefix $(OBJ_DIR)/, $(SRC:.c=.d))

LIBFT_DIR   = libft
LIBFT_A     = $(LIBFT_DIR)/libft.a

all: $(NAME)

$(NAME): $(LIBFT_A) $(OBJ)
	@cp $(LIBFT_A) $(NAME)
	@$(AR) $(NAME) $(OBJ)

$(LIBFT_A):
	@if [ -d $(LIBFT_DIR) ]; then \
		$(MAKE) -C $(LIBFT_DIR); \
	fi

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	@$(CC) $(CFLAGS) -I $(INC_DIR) -MMD -MP -c $< -o $@

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

clean:
	@$(RM) $(OBJ) $(DEPS)
	@rmdir $(OBJ_DIR) 2>/dev/null || true
	@if [ -d $(LIBFT_DIR) ]; then \
		$(MAKE) -C $(LIBFT_DIR) clean; \
	fi

fclean: clean
	@$(RM) $(NAME)
	@if [ -d $(LIBFT_DIR) ]; then \
		$(MAKE) -C $(LIBFT_DIR) fclean; \
	fi

re: fclean all

bonus: CFLAGS += -D BONUS
bonus: all

-include $(DEPS)

.PHONY: all clean fclean re bonus

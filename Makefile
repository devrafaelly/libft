# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: codespace <codespace@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/21 11:31:58 by rafaoliv          #+#    #+#              #
#    Updated: 2025/07/29 22:50:39 by codespace        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc

FLAGS = -Wall -Wextra -Werror

NAME = libft.a

OBJ = $(SRC:.c=.o)

SRC = 	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_strlen.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_atoi.c \
	ft_strncmp.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_strnstr.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_bzero.c \
	ft_memset.c \
	ft_memcmp.c \
	ft_memchr.c \
	ft_memmove.c \
	ft_memcpy.c \
	ft_strdup.c \
	ft_calloc.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strmapi.c \
	ft_striteri.c \
	ft_itoa.c \
	ft_strtrim.c \
	ft_split.c

%.o: %.c
	@$(CC) $(FLAGS) -c $< -o $@
	@echo "$@ ✔️"

$(NAME): $(OBJ)
	@ar -crs $(NAME) $(OBJ)

all: $(NAME)

norminette:
	@norminette $(SRC) -R CheckForbiddenSourceHeader

clean:
	@rm -f $(OBJ)
	@echo "Arquivos .o limpos 🧴"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) limpo 🧽🧼"

re: fclean all
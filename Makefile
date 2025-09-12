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
		ft_split.c \


SRC_BONUS = 	ft_lstnew_bonus.c \
				ft_lstadd_front_bonus.c \
				ft_lstsize_bonus.c \
				ft_lstlast_bonus.c \
				ft_lstadd_back_bonus.c \
				ft_lstdelone_bonus.c \
				ft_lstclear_bonus.c \
				ft_lstiter_bonus.c \
				ft_lstmap_bonus.c

OBJ = $(SRC:.c=.o)

OBJ_BONUS = $(SRC_BONUS:.c=.o)

%.o: %.c
	@$(CC) $(FLAGS) -c $< -o $@
	@echo "$@ ✔️"

$(NAME): $(OBJ)
	@ar -crs $(NAME) $(OBJ)

all: $(NAME)

bonus: $(OBJ_BONUS) $(OBJ)
	@ar -crs $(NAME) $(OBJ) $(OBJ_BONUS)

norminette:
	@norminette $(SRC) $(SRC_BONUS) -R CheckForbiddenSourceHeader

clean:
	@rm -f $(OBJ) $(OBJ_BONUS)
	@echo "Arquivos .o limpos 🧴"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) limpo 🧽🧼"

re: fclean all
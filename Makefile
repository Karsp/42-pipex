# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: daviles- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/21 14:00:44 by daviles-          #+#    #+#              #
#    Updated: 2023/10/12 03:39:26 by daviles-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

#########################        LIBS        #################################

NAMELIB	=	include/pipex.a

LIB 	=	libft/libft.a

##########################    DIRS     ####################################

SRC_DIR = srcs

###########################    FILES   ####################################

SRC = $(addprefix $(SRC_DIR)/, main.c pipex.c childs.c utils.c parser.c)

OBJ = $(SRC:.c=.o)

##########################   FILES BONUS   ################################


##########################   COMPILING SETTINGS   #########################

CC	= gcc

CFLAGS = -Wall -Wextra -Werror #-O3 -fsanitize=address -g3

COMP = $(CC) $(CFLAGS) $(LIB) 

RM = rm -f

###########################    EXTRAS   ####################################

NOC		=	\033[0m
GREEN	=	\033[1;32m
YELLOW = \033[1;33m
BLUE	=	\033[1;34m
RED		=	\033[1;31m

all : $(NAME)

$(NAME) : $(OBJ)
	$(MAKE) bonus -sC ./libft
	$(COMP) $(OBJ) -o $@
	@echo "$(GREEN)\n Push_Swap is ready to go!$(NOC)"
	@echo "$(YELLOW)    _       _       _"
	@echo " __(.)<  __(.)>  __(.)="
	@echo " \___)   \___)   \___)$(NOC)"
	@echo "$(GREEN)\nProgram is ready to use! Run ./pipex to see instructions.\n$(NOC)"

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean :
	$(RM) $(OBJ)
	$(MAKE) fclean -sC ./libft

fclean : clean
	$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean re bonus

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qduperon <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/06/16 13:22:36 by qduperon          #+#    #+#              #
#    Updated: 2016/06/17 17:23:14 by qduperon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#==============================================================================#
#                               // NAME \\                                     #
#==============================================================================#

NAME = 

#==============================================================================#
#                           //  SOURCES  \\                                    #
#==============================================================================#

SRCS = srcs/

#==============================================================================#
#                             //  FLAGS  \\                                    #
#==============================================================================#

FLAGS = -Wall -Werror -Wextra

#==============================================================================#
#                            // COMPILATION \\                                 #
#==============================================================================#

all: $(NAME)

$(NAME):
	make -C libft
	gcc -o $(NAME) $(FLAGS) $(SRCS) -I./includes -lft -L./libft

#==============================================================================#
#                              // DELETING \\                                  #
#==============================================================================#

clean:
	make clean -C libft

fclean:
	make fclean -C libft
	rm -f $(NAME)

#==============================================================================#
#                             // RETRY \\                                      #
#==============================================================================#

re: fclean all

.PHONY : all clean fclean re
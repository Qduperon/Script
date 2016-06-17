# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Init_project.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qduperon <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/06/17 12:25:58 by qduperon          #+#    #+#              #
#    Updated: 2016/06/17 17:43:51 by qduperon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/zsh

cd ..
echo "\033[32mwrite the adresse of the git :\033[00m"
read -r adresse
echo "\033[32mwrite the name of the folder :\033[00m"
read -r name
git clone $adresse $name
cd $name
echo "\033[32mcreation folders...\033[00m"
mkdir srcs
mkdir includes
echo "\033[31mdone\033[00m"
echo "\033[32mcreation header\033[00m"
touch $name.h
mv $name.h includes
echo "\033[31mdone\033[00m"
cd ../script/
echo "\033[32mcreation library\033[00m"
cp -R libft ../$name
echo "\033[31mdone\033[00m"
echo "\033[32mcreation Makefile\033[00m"
cp Makefile ../$name
echo "\033[31mdone\033[00m"

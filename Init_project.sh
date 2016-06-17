# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Init_project.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: qduperon <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/06/17 12:25:58 by qduperon          #+#    #+#              #
#    Updated: 2016/06/17 17:00:45 by qduperon         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!bin/zsh

echo "write the adresse of the git :"
read -r adresse
echo "write the name of the folder :"
read -r name
git clone $adresse $name

cd $name
echo "creation folders..."
mkdir srcs
mkdir includes
echo "done"
touch $name.h
mv $name.h includes
touch Makefile
cd ..
cp -R libft $name

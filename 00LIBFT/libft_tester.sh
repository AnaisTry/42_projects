# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    libft_tester.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: angassin <angassin@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/11 16:38:07 by ademurge          #+#    #+#              #
#    Updated: 2022/05/02 18:27:45 by angassin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

git clone https://github.com/Tripouille/libftTester.git
git clone https://github.com/y3ll0w42/libft-war-machine.git
git clone https://github.com/Ysoroko/FT_SPLIT_TESTER.git

cd ..
git clone https://github.com/alelievr/libft-unit-test.git

cd libft-unit-test
make f

cd ../libft/libft-war-machine
./grademe.sh
./grademe.sh

cd ../libftTester
make a

cd ../FT_SPLIT_TESTER
make

cd ..
rm -rf libftTester libft-war-machine FT_SPLIT_TESTER

cd ..
rm -rf libft-unit-test

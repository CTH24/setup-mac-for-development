#!/bin/zsh
clear
date
echo ''
cd ~/.dotfiles/zsh/figlet
toilet "CTH24.DE" -f Slant.flf --metal
cd -
echo "\n"
neofetch
echo "\n"
GIT=$(git --version)
DOCKER=$(docker --version)
PHP=$(php --version)
NODE=$(node --version)
echo "Docker:\t $DOCKER"
echo "Git:\t $GIT"
echo "Node:\t $NODE"
echo "PHP:\t $PHP"
echo "\n"

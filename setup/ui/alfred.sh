#!/bin/zsh

# Alfred
echo 
echo 'Setup Alfred' | boxes -d ada-box -a c
echo 

brew cask list alfred || brew cask install Alfred
echo
echo "\033[31mNote: \033[0m System Settings -> Security"
echo "\033[31mNote: \033[0m Replace CMD + Space"
echo

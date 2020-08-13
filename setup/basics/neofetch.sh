#!/bin/zsh

# Setup neofetch
echo 
echo 'Setup neofetch' | boxes -d ada-box -a c
echo 

brew list neofetch || brew install neofetch
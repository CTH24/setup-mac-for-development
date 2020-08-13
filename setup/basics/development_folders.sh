#!/bin/zsh

# Setup Development Folders 
echo 
echo 'Setup Development Folders' | boxes -d ada-box -a c
echo 
echo '- Create: ~/code'
mkdir -p ~/code
mkdir -p ~/.dotfiles 
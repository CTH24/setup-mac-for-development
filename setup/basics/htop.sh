#!/bin/zsh

# Setup htop
echo 
echo 'Setup htop' | boxes -d ada-box -a c
echo 

brew list htop || brew install htop
#!/bin/zsh

# Setup cowsay
echo 
echo 'Setup cowsay' | boxes -d ada-box -a c
echo 

brew list cowsay || brew install cowsay
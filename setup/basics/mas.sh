#!/bin/zsh

# Setup mas
echo 
echo 'Setup MAS' | boxes -d ada-box -a c
echo 

brew list mas || brew install mas
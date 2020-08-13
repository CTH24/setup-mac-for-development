#!/bin/zsh

# Setup glances
echo 
echo 'Setup glances' | boxes -d ada-box -a c
echo 

brew list glances || brew install glances
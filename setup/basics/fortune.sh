#!/bin/zsh

# Setup fortune
echo 
echo 'Setup fortune' | boxes -d ada-box -a c
echo 

brew list fortune || brew install fortune

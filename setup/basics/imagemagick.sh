#!/bin/zsh

# Setup imagemagick
echo 
echo 'Setup imagemagick' | boxes -d ada-box -a c
echo 

brew list imagemagick || brew install imagemagick
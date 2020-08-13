#!/bin/zsh

# Spectacle
echo 
echo 'Setup Spectacle' | boxes -d ada-box -a c
echo 

brew cask list spectacle || brew cask install spectacle
echo
echo "\033[31mNote: \033[0m System Settings -> Security"
echo

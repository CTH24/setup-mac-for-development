#!/bin/zsh

# Hyperswitch
echo 
echo 'Setup Hyperswitch' | boxes -d ada-box -a c
echo 

brew cask list hyperswitch || brew cask install hyperswitch

echo
echo "\033[31mNote: \033[0m System Settings -> Security"
echo
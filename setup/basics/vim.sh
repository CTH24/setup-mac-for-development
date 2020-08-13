#!/bin/zsh

# Setup VIM
echo 
echo 'Setup VIM' | boxes -d ada-box -a c
echo 

brew list vim || brew install vim
brew link --overwrite vim
#!/bin/zsh

# Setup Git
echo 
echo 'Setup Git' | boxes -d ada-box -a c
echo 

brew list git || brew install git
brew link --overwrite git
git config --global pull.rebase false
git config --global color.ui auto
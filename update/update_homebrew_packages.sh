#!/bin/zsh

echo 
echo 'Update Homebrew Packages' | boxes -d ada-box -a c
echo 

brew update
brew upgrade
brew cleanup
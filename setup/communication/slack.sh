#!/bin/zsh

# Setup slack
echo
echo 'Setup slack' | boxes -d ada-box -a c
echo

brew cask list slack || brew cask install slack

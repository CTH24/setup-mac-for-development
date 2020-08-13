#!/bin/zsh

# Setup postman
echo
echo 'Setup postman' | boxes -d ada-box -a c
echo

brew cask list postman || brew cask install postman

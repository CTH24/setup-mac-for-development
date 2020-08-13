#!/bin/zsh

# Setup typora
echo
echo 'Setup typora' | boxes -d ada-box -a c
echo

brew cask list typora || brew cask install typora

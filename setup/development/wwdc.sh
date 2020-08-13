#!/bin/zsh

# Setup wwdc
echo
echo 'Setup wwdc' | boxes -d ada-box -a c
echo

brew cask list wwdc || brew cask install wwdc

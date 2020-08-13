#!/bin/zsh

# Setup jetbrains-toolbox
echo
echo 'Setup jetbrains-toolbox' | boxes -d ada-box -a c
echo

brew cask list jetbrains-toolbox || brew cask install jetbrains-toolbox

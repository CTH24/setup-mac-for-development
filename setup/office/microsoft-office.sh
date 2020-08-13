#!/bin/zsh

# Setup Micorosft Office
echo
echo 'Setup Microsoft Office' | boxes -d ada-box -a c
echo

brew cask list microsoft-office || brew cask install microsoft-office

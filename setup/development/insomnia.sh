#!/bin/zsh

# Setup insomnia
echo
echo 'Setup insomnia' | boxes -d ada-box -a c
echo

brew cask list insomnia || brew cask install insomnia

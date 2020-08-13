#!/bin/zsh

# Setup parallels
echo
echo 'Setup parallels' | boxes -d ada-box -a c
echo

brew cask list parallels || brew cask install parallels

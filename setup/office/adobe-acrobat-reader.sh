#!/bin/zsh

# Setup adobe-acrobat-reader
echo
echo 'Setup adobe-acrobat-reader' | boxes -d ada-box -a c
echo

brew cask list adobe-acrobat-reader || brew cask install adobe-acrobat-reader

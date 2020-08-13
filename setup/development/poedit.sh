#!/bin/zsh

# Setup poedit
echo
echo 'Setup poedit' | boxes -d ada-box -a c
echo

brew cask list poedit || brew cask install poedit

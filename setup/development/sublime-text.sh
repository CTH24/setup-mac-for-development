#!/bin/zsh

# Setup sublime-text
echo
echo 'Setup sublime-text' | boxes -d ada-box -a c
echo

brew cask list sublime-text || brew cask install sublime-text

#!/bin/zsh

# Setup steam
echo
echo 'Setup steam' | boxes -d ada-box -a c
echo

brew cask list steam || brew cask install steam

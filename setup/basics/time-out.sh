#!/bin/zsh

# Setup time-out
echo
echo 'Setup time-out' | boxes -d ada-box -a c
echo

brew cask list time-out || brew cask install time-out

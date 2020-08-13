#!/bin/zsh

# Setup diskmaker-x
echo
echo 'Setup diskmaker-x' | boxes -d ada-box -a c
echo

brew cask list diskmaker-x || brew cask install diskmaker-x

#!/bin/zsh

# Setup dash
echo
echo 'Setup dash' | boxes -d ada-box -a c
echo

brew cask list dash || brew cask install dash

#!/bin/zsh

# Setup yed
echo
echo 'Setup yed' | boxes -d ada-box -a c
echo

brew cask list yed || brew cask install yed

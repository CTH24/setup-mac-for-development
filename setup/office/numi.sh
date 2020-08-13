#!/bin/zsh

# Setup numi
echo
echo 'Setup numi' | boxes -d ada-box -a c
echo

brew cask list numi || brew cask install numi

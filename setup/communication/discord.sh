#!/bin/zsh

# Setup discord
echo
echo 'Setup discord' | boxes -d ada-box -a c
echo

brew cask list discord || brew cask install discord

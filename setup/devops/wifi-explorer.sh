#!/bin/zsh

# Setup wifi-explorer
echo
echo 'Setup wifi-explorer' | boxes -d ada-box -a c
echo

brew cask list wifi-explorer || brew cask install wifi-explorer

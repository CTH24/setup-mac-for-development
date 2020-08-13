#!/bin/zsh

# Setup notion
echo
echo 'Setup notion' | boxes -d ada-box -a c
echo

brew cask list notion || brew cask install notion

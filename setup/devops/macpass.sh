#!/bin/zsh

# Setup macpass
echo
echo 'Setup macpass' | boxes -d ada-box -a c
echo

brew cask list macpass || brew cask install macpass

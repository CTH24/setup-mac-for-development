#!/bin/zsh

# Setup iina
echo
echo 'Setup iina' | boxes -d ada-box -a c
echo

brew cask list iina || brew cask install iina

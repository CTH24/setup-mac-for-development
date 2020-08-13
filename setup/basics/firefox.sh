#!/bin/zsh

# Setup firefox
echo
echo 'Setup firefox' | boxes -d ada-box -a c
echo

brew cask list firefox || brew cask install firefox

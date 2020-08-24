#!/bin/zsh

# Setup appcleaner
echo
echo 'Setup appcleaner' | boxes -d ada-box -a c
echo

brew cask list appcleaner || brew cask install appcleaner

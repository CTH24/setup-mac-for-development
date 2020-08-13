#!/bin/zsh

# Setup teamviewer
echo
echo 'Setup teamviewer' | boxes -d ada-box -a c
echo

brew cask list teamviewer || brew cask install teamviewer

#!/bin/zsh

# Setup calibre
echo
echo 'Setup calibre' | boxes -d ada-box -a c
echo

brew cask list calibre || brew cask install calibre

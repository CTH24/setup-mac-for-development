#!/bin/zsh

# Setup istat-menus
echo
echo 'Setup istat-menus' | boxes -d ada-box -a c
echo

brew cask list istat-menus || brew cask install istat-menus

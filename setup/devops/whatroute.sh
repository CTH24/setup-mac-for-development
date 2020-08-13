#!/bin/zsh

# Setup whatroute
echo
echo 'Setup whatroute' | boxes -d ada-box -a c
echo

brew cask list whatroute || brew cask install whatroute

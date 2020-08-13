#!/bin/zsh

# Setup tableplus
echo
echo 'Setup tableplus' | boxes -d ada-box -a c
echo

brew cask list tableplus || brew cask install tableplus

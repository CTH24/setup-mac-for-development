#!/bin/zsh

# Setup basictex
echo
echo 'Setup basictex' | boxes -d ada-box -a c
echo

brew cask list basictex || brew cask install basictex

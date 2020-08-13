#!/bin/zsh

# Setup java
echo
echo 'Setup java' | boxes -d ada-box -a c
echo

brew cask list java || brew cask install java

#!/bin/zsh

# Setup royal-tsx
echo
echo 'Setup royal-tsx' | boxes -d ada-box -a c
echo

brew cask list royal-tsx || brew cask install royal-tsx

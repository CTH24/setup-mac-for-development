#!/bin/zsh

# Setup gnu-typist
echo
echo 'Setup gnu-typist' | boxes -d ada-box -a c
echo
brew list gnu-typist || brew install gnu-typist

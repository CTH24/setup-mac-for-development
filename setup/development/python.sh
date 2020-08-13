#!/bin/zsh

# Setup Python
echo
echo 'Setup python@3.8' | boxes -d ada-box -a c
echo

brew list python@3.8 || brew install python@3.8

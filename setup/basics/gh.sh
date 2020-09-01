#!/bin/zsh

# Setup GitHub Command Line Tool
echo
echo 'Setup GitHub command-line tool .' | boxes -d ada-box -a c
echo

brew list gh || brew install gh

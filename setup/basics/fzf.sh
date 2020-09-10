#!/bin/zsh

# Setup fzf Command Line Tool
echo
echo 'Setup GitHub command-line tool .' | boxes -d ada-box -a c
echo

brew list fzf || brew install fzf
$(brew --prefix)/opt/fzf/install

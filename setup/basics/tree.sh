#!/bin/zsh

# Setup tree
echo 
echo 'Setup tree' | boxes -d ada-box -a c
echo 

brew list tree || brew install tree
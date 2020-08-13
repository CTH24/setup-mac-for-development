#!/bin/zsh

# Setup Visual Studio Code
echo
echo 'Setup Visual Studio Code' | boxes -d ada-box -a c
echo

brew cask list visual-studio-code || brew cask install visual-studio-code
while read line; do code --install-extension "$line"; done <./configs/vscode/vscode-extensions.txt
cp ./configs/vscode/settings.json ~/Library/ApplicationSupport/Code/User/settings.json

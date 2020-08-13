#!/bin/zsh

# Sync Dotfiles
echo
echo 'Sync Dotfiles' | boxes -d ada-box -a c
echo

cp -r ~/.dotfiles/ ./configs
cp ~/.zshrc ./configs/zsh/.zshrc

#VS Code
cp ~/Library/ApplicationSupport/Code/User/settings.json ./configs/vscode/settings.json
code --list-extensions >./configs/vscode/vscode-extensions.txt

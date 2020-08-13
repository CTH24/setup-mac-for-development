#!/bin/zsh

# NVM
echo
echo 'Setup NVM' | boxes -d ada-box -a c
echo

brew list nvm || brew install nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"                                       # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

nvm install 14
npm install -g lite-server eslint

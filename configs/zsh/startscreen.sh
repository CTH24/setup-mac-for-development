c_startscreen() {
  clear
  echo
  cd ~/.dotfiles/zsh/figlet
  toilet "CTH24.DE" -f Slant.flf --metal
  echo "\n"
  neofetch
  GIT=$(git --version)
  DOCKER=$(docker --version)
  PHP=$(php -r 'echo PHP_VERSION;')
  NODE=$(node --version)
  NVM=$(nvm --version)
  echo "Docker:\t $DOCKER"
  echo "Git:\t $GIT"
  echo "NVM\t $NVM"
  echo "Node:\t $NODE"
  echo "PHP:\t $PHP"
  echo
  cd -
  echo
  date
  echo
}
alias startscreen=c_startscreen
startscreen

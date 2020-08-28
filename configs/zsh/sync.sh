c_sync_configs() {

  cd ~/code/setup-mac-for-development
  sh ./sync-dotfiles.sh
  g dotfiles
  cd ~/code/python-scripts
  g
  clear
  c_title "Sync Configuration"
  c_fortune
}
alias engage=c_sync_configs

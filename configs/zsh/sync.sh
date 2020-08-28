c_sync_configs() {
  c_title "Sync Configuration"
  cd ~/code/setup-mac-for-development
  sh ./sync-dotfiles.sh
  g dotfiles
  cd ~/code/python-scripts
  g
  c_fortune
}
alias engage=c_sync_configs

c_ls() {
  curdir="${PWD##*/}"
  c_title $curdir
  l
  c_fortune
  if [ -d .git ]; then
    gh issue list
    echo
  fi
}
alias ll=c_ls

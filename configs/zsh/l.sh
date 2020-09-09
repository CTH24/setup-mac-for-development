c_l() {
  curdir="${PWD##*/}"
  c_title $curdir
  ls -lt
  c_fortune
  if [ -d .git ]; then
    gh issue list
    echo
  fi
}
alias l=c_l

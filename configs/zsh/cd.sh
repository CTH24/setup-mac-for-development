c_cd() {
  cd ~/code/$1
  curdir="${PWD##*/}"
  GIT_FILE=${PWD}/.git
  c_title $curdir
  if [ "$1" != "" ]; then
    ll
  else
    ll
  fi

  if [ -d .git ]; then
    gh issue list
    echo
  fi

}
alias sd=c_cd

c_s() {
  curdir="${PWD##*/}"
  GIT_FILE=${PWD}/.git
  c_title $curdir
  ll
  if [ -d .git ]; then
    gh issue list
    echo
  fi
}
alias s=c_s

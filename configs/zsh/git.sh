# Git Status
c_gs() {
  c_title 'Git Status'
  git status
  c_fortune
}
alias gs="c_gs"

# Git Add, Commit and Push
gitall() {
  c_title 'Git Push IT'
  git add .
  if [ "$1" != "" ]; then
    git commit -m "$1"
  else
    git commit -m update
  fi
  git push
  c_fortune
}
alias g=gitall

# Git Local Reset
c_git_local_reset() {
  c_title 'Git Reset'
  git reset --hard && git clean -df
  c_fortune
}
alias grr=c_git_local_reset

# Git Remote Repo Reset
git_remote_repo_reset() {
  git checkout --orphan TEMP_BRANCH
  git add -A
  git commit -am "Initial commit"
  git branch -D master
  git branch -m master
  git push -f origin master
}

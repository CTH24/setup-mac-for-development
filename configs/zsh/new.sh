c_new() {
  cd ~/code
  gh repo create $1
  cd $1
  echo "# $1" >>README.md
  git add .
  git commit -m "first commit"
  git push --set-upstream origin master
  cd ~/code
  sd $1
  code .
}
alias new=c_new

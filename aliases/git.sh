alias gpl="git pull"
alias gph="git push"
alias gpf="git push --force-with-lease"
alias gr="git rebase"
alias gca="git commit --ammend"
alias gcan="git commit --amend --no-edit"
alias gap="git add -p"

# Update a branch by update master then rebase the current branch with local master
upbranch () {
	git checkout master
	git pull --rebase
	git checkout -
	git rebase master
}

# Update master then create a new branch from it with an ID passed at first argument
startTask () {
	git checkout master
	git pull --rebase
	git checkout -b LBCFTPA-$1
}

# Fetch master and remove all merged branches
cleanBranch () {
	git checkout master
	git pull --rebase
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
}
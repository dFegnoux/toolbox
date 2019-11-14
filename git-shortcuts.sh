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
	git checkout -b LBCFTPA$1
}

alias gpl="git pull"
alias gph="git push"
alias gr="git rebase"
alias gca="git commit --ammend"
alias gcan="git commit --amend --no-edit"
alias gap="git add -p"
### git add
alias ga='git number add'
alias gaa='git add .'
alias gau='git add -u'
alias gaaa='git add --all'
alias gaou='git add-ours'
alias gath='git add-their'
### git branch
alias gb='git branch'
alias gba='git branch --all'
alias gbag='git branch --all | grep'
alias gbc='git branch --contains'
alias gbd='git branch -D'
alias gbmh='git branch -m $(git branch-name)'
### git commit
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcano='git commit --amend --no-edit'
alias gcp='git cherry-pick'
### git diff
alias gd='git number diff'
alias gdc='git number diff --cached'
alias gds='git diff --stat'
alias gdh='git diff HEAD~1 HEAD'
alias gdhs='git diff --stat HEAD~1 HEAD'
### git history/status
alias gk='gitk --all'
alias gh='git history --all'
alias ghh='git history'
alias gs='git number -s'
alias gsg='git status-grep'
### git merge
alias gm='git merge'
alias gma='git merge --abort'
alias gmd='git merge develop'
alias gmnf='git merge --no-ff'
###  git checkout
alias go='git number checkout'
alias gob='git checkout -b'
alias god='git checkout develop'
alias gom='git checkout master'
alias got='git checkout --track'
### fetch/pull/push
alias gfo='git fetch origin'
alias gpl='git pull'
### git rebase
alias gr='git rebase'
alias gra='git rebase --abort'
alias gri='git rebase -i'
alias grih='git rih'
alias grc='git rebase --continue'
alias grod='git rebase --onto develop develop $(git branch-name)'
alias gropr='git rebase --onto $(git prev-branch) $(git prev-branch) $(git branch-name)'
### git stash
alias gst='git number stash'
alias gsta='git stash apply'
alias gstc='git stash clear'
alias gstp='git stash pop'
alias gsts='git stash show'
###
alias gu='git number reset HEAD'
alias wtf='git reset --hard head'
alias smc='git my-commits'

function _branch_publish(){
    if ! [ -z $1 ]; then
        git push origin "$1":"$1"
    else
	    git push origin $(git branch-name)
  fi
}
alias gpub='_branch_publish'

function _branch_update(){
    if ! [ -z $1 ]; then
        git fetch origin "$1":"$1"
    else
         git pull origin $(git branch-name)
  fi
}
alias gup="_branch_update"
alias gupd='_branch_update develop'

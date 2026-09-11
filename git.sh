# for git

alias g='git'
alias l='lazygit'

# -------------------------------------------------- #
alias gcl='git clone'
alias gpl='git pull'
alias gplm='git pull --no-edit origin master'
alias gf='git -c diff.mnemonicprefix=false -c core.quotepath=false --no-optional-locks fetch origin'

alias gb='git branch '
alias gba='git branch -a'
alias gbD='git branch -D'

alias gs='git status'

alias ga='git add '
alias gcm='git commit -m'
alias gcam='git commit --allow-empty -m'
alias gcma='git commit --amend'

alias gch='git checkout'
alias gchb='git checkout -b'
alias gchm='git checkout master && git pull'
alias gchd='git checkout develop && git pull'

alias gm='git merge'

alias gr='git remote -v'
alias gp='git push'
alias gpo='git push origin'

alias gsts='git stash save'
alias gsta='git stash apply stash@{0}'
alias gst='git stash'
alias gstp='git stash pop'

alias gre='git rebase --committer-date-is-author-date'
alias grem='git rebase --committer-date-is-author-date master'
alias greh='git rebase -i HEAD'
alias grec='git rebase --continue'
alias grea='git rebase --abort'

# マージ済みのローカルのブランチを削除
alias gbdl='git branch | grep -Ev "master|main|stg|develop|dev11" | xargs git branch -D'

# githubのリモートブランチを取ってくる
alias gchr='git checkout $(git branch -a --sort=-authordate | cut -b 3- | grep -v -- "->" | peco | sed -e "s%remotes/origin/%%")'

# -------------------------------------------------- #

# ローカルブランチをインクリメンタルサーチで選択する共通関数
function _select_branch() {
    git branch | peco
}

# ブランチを選択して切り替える
function gchl() {
    git checkout `_select_branch`
}

# git logのコミット番号をコピー
function gl() {
    git log | peco | awk '{print $2}' | pbcopy
}

# ブランチを選択してマージする
function gmb() {
    git merge `_select_branch`
}

# ブランチを選択してリベースする
function grb() {
    git rebase `_select_branch`
}

# -------------------------------------------------- #
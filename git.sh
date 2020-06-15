# for git

alias g='git'
alias l='lazygit'

# -------------------------------------------------- #
alias gcl='git clone'
alias gpl='git pull'

alias gb='git branch '
alias gba='git branch -a'

alias gs='git status'

alias ga='git add '
alias gcm='git commit -m'
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

alias grem='git rebase master'
alias greh='git rebase -i HEAD'
alias grec='git rebase --continue'
alias grea='git rebase --abort'

# マージ済みのローカルのブランチを削除
alias gbdl='git branch | xargs git branch -d'

# -------------------------------------------------- #

# gitのブランチを表示して、インクリメンタルサーチでブランチを絞って切り替えるワンライナー
function cb() {
    git checkout `git branch | peco`
}

# git logのコミット番号をコピー
function gl() {
    git log | peco | awk '{print $2}' | pbcopy
}

# 特定のパス以下のディレクトリを一覧して選択、移動
function jump() {
    cd ~/Documents/map/git
    cd `ls | peco`
}

function gl() {
    git log | peco | awk '{print $2}' | pbcopy
}

# -------------------------------------------------- #

alias pg='cat ~/Box\ Sync/memo/git.bash | peco | pbcopy'

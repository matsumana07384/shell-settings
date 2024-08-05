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

# -------------------------------------------------- #

# gitのブランチを表示して、インクリメンタルサーチでブランチを絞って切り替えるワンライナー
function sb() {
    git checkout `git branch | peco`
}

# git logのコミット番号をコピー
function gl() {
    git log | peco | awk '{print $2}' | pbcopy
}

# 特定のパス以下のディレクトリを一覧して選択、移動
function jump() {
    cd ~/Projects/
    cd `ls | peco`
}

# gitのブランチを指定してマージする
function gmb() {
    git merge `git branch | peco`
}

# https://qiita.com/keisukee/items/9b815e56a173a281f42f で参照
# search a destination from cdr list
function peco-get-destination-from-cdr() {
  cdr -l | \
  sed -e 's/^[[:digit:]]*[[:blank:]]*//' | \
  peco --query "$LBUFFER"
}

### 過去に移動したことのあるディレクトリを選択
function hd() {
  local destination="$(peco-get-destination-from-cdr)"
  if [ -n "$destination" ]; then
    BUFFER="cd $destination"
    zle accept-line
  else
    zle reset-prompt
  fi
}

# -------------------------------------------------- #

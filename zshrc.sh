source ~/.bash_profile
export PATH=/usr/local/bin:$PATH
eval 'eval "$(direv hook bash)"'

# 以下コピペ and カスタマイズ
# 【参考】
# https://qiita.com/ryutoyasugi/items/cb895814d4149ca44f12
# https://qiita.com/iwaseasahi/items/a2b00b65ebd06785b443
# http://hikacchy.hatenablog.com/entry/2018/01/03/015501

# 環境変数
export LANG=ja_JP.UTF-8
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
# ヒストリの設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 直前のコマンドの重複を削除
setopt hist_ignore_dups

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# 同時に起動したzshの間でヒストリを共有
setopt share_history

# 補完機能を有効にする
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完候補を詰めて表示
setopt list_packed

# 補完候補一覧をカラー表示
zstyle ':completion:*' list-colors ''

# コマンドのスペルを訂正
setopt correct
# ビープ音を鳴らさない
setopt no_beep

# prompt
# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() { vcs_info }


DEFAULT=$'\U1F335' #CACTUS
ERROR=$'\U1F607 ' #INOCENT

PROMPT='%(?.${DEFAULT}.${ERROR}) %F{green}%~%f %F{yellow}$%f '
RPROMPT='${vcs_info_msg_0_}'

#%n　名前

# Git
alias gs="git status"

# alias gb="git branch > ~/temp/temp.txt ; $(brew --prefix emacs)/bin/emacsclient -nw ~/temp/temp.txt"
alias gb="git branch "
alias gba="git branch -a"
alias ga="git add "

alias gcm="git commit -m"
alias gcma="git commit --amend"

alias gch="git checkout"
alias gchm="git checkout master"
alias gr="git remote -v"
alias gp="git push"
alias gpo="git push origin"
alias gpfo="git push -f origin
"
alias gsas="git stash save"
alias gsa="git stash apply stash@{0}"
alias gpre="git checkout @{-1}"
alias gst='git stash'
alias gsp='git stash pop'
alias gsp0= 'git stash pop stash@{0}'

alias grem="git rebase -i master"
alias grec="git rebase --continue"
alias grea="git rebase --abort"


function cb() {
    # gitのブランチを表示して、インクリメンタルサーチでブランチを絞って切り替えるワンライナー
    git checkout `git branch | peco`
}

function gl() {
    git log | peco | awk '{print $2}' | pbcopy
}

alias pg="cat ~/Box\ Sync/memo/git.bash | peco | pbcopy"
alias pge="$(brew --prefix emacs)/bin/emacsclient -nw ~/Box\ Sync/memo/git.bash"



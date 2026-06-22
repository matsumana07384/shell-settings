alias od='opendiff'

# 特定のパス以下のディレクトリを一覧して選択、移動
function dev() {
    cd ~/Projects/
    cd `ls | peco`
}

# 特定のパス以下のディレクトリに移動
function as() {
    cd ~/Projects/zozo-Front-PCSP/app-frontend/assets/
}

alias claude='claude --model claude-opus-4-6 --worktree'

# ディレクトリ移動
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ls
alias ll='ls -la'
alias la='ls -A'

# npm
alias ni='npm install'
alias nr='npm run'
alias nrd='npm run dev'
alias nrb='npm run build'

# その他
alias h='history'
alias reload='source ~/.zshrc'
alias ip='curl ifconfig.me'

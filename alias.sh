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

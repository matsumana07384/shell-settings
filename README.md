# zsh_setting

- 個人的な zshellの設定ファイルです
- ファイル構成
	- backup.sh
		- backup 用のメモファイル
	- README.md
		- こちらの資料
	- .zshrc
		- zsh 用の設定ファイル

## 新しいPCに設定する場合

### [Homebrew](https://brew.sh/index_ja) をインストール

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
### Homebrew で zsh をインストール
```
brew install zsh
```

### /etc/shells を編集

```
sudo vi /etc/shells
```

開いたファイルの一番下に`/usr/local/bin/zsh` を追加

### 設定ファイルを作成
[このレポジトリ](https://github.com/matsumana07384/zsh_setting)の`.zshrc`ファイルを `~/.` に移動

### 設定ファイルを反映
```
source ~/.zshrc
```

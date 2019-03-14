# zsh_setting

- 個人的な zshellの設定ファイルです
- ファイル構成
	- backup.sh
		- backup 用のメモファイル
	- README.md
		- この資料
	- .zshrc
		- zsh の設定ファイル

## 設定方法

### brew でインストール
```
brew install zsh

```


### /etc/shells を編集

```
sudo vi /etc/shells
```

`/usr/local/bin/zsh` を追加

### 設定ファイルを作成
[このレポジトリ](https://github.com/matsumana07384/zsh_setting)のファイルを `~/.zshrc` に設置
`README.md`は不要

### 設定ファイルを反映
```
source ~/.zshrc
```
# setting-zsh
- 個人的な zshellの設定ファイルです

## ファイル構成
- README.md：このファイル
- git.sh:：git用の設定ファイル
- zshrc.sh：git以外の設定ファイル

## ファイルの設定
- ~/.zshrc に下記を追記

```
 . ~/shell-settings/init.sh
```

## zshのインストール

### [Homebrew](https://brew.sh/ja/) をインストール

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
#### 以下M3時にトラブった際のメモ


https://qiita.com/Kinakonoko/items/0b125a1d267c3379961f
https://qiita.com/TORAPPU/items/b2809083af3cf967d70f

### Homebrew で zsh をインストール
```
brew install zsh
```

### /etc/shells を編集

```
sudo vi /etc/shells
```
- 開いたファイルの一番下に`/usr/local/bin/zsh` を追加し、閉じる


### .zshrc に設定

```
# setting
. ~/shell-settings/init.sh
```

## 各設定の際に参照したURL
- [zshを使ってみる](https://qiita.com/ryutoyasugi/items/cb895814d4149ca44f12)
- [初心者向け：Zshの導入](https://qiita.com/iwaseasahi/items/a2b00b65ebd06785b443)

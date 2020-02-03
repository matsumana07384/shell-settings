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
- 開いたファイルの一番下に`/usr/local/bin/zsh` を追加し、閉じる

## 各設定の際に参照したURL
- [zshを使ってみる](https://qiita.com/ryutoyasugi/items/cb895814d4149ca44f12)
- [初心者向け：Zshの導入](https://qiita.com/iwaseasahi/items/a2b00b65ebd06785b443)
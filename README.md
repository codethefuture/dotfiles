# install brew

- https://brew.sh/index_ja
- `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- `ln -s dotfiles/Brewfile ~/.brewfile/Brewfile`
- `brew file install`

# install fish-shell

- `sudo vi /etc/shells`
- `chsh -s /usr/local/bin/fish`
- `curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher`
- 履歴からディレクトリへ移動
  - 'fisher add z'
- 親ディレクトリへ移動
  - `fisher add 0rax/fish-bd`
- コマンド実行履歴を選択
  - `fisher oh-my-fish/plugin-peco`
- ghqで登録したGitHubリポジトリを選択して移動
  - `fisher install yoshiori/fish-peco_select_ghq_repository`
- エイリアスも他のコマンドと同じように補完
  - `fisher oh-my-fish/plugin-balias`

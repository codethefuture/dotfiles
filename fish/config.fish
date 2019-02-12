# PATH
set -gx PATH $HOME/bin /usr/local/bin /usr/local/opt/mysql/bin $PATH
set -x PATH $PATH /usr/local/Cellar/git/2.20.1/share/git-core/contrib/diff-highlight

# rbenv
status --is-interactive; and source (rbenv init -|psub)
fix_path

# python
set -x PATH $HOME/.pyenv/shims $PATH
. (pyenv init - | psub)

# nodenv
# eval "$(nodenv init -)"
set -x PATH $HOME/.nodenv/shims $PATH
nodenv rehash >/dev/null ^&1

# mysql8 install
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"

# alias
alias g git

# peco + plugin-peco - コマンド実行履歴を選択
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# ghq + peco-ghq-plugin - ghqで登録したGitHubリポジトリを選択して移動
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository  # 追加
end

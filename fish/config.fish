# PATH
set -gx PATH $HOME/bin /usr/local/bin /usr/local/opt/mysql/bin $PATH

# rbenv
eval (rbenv init - | source)

# ndenv
# eval "$(ndenv init -)"
#set -x PATH $HOME/.ndenv/bin $PATH
#set -x PATH $HOME/.ndenv/shims $PATH
#ndenv rehash >/dev/null ^&1
#set -x PATH $HOME/.nodenv/bin $PATH

# nodenv
# eval "$(nodenv init -)"
set -x PATH $HOME/.nodenv/shims $PATH
nodenv rehash >/dev/null ^&1

# キーバインド
balias g git

# peco + plugin-peco - コマンド実行履歴を選択
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# ghq + peco-ghq-plugin - ghqで登録したGitHubリポジトリを選択して移動
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository  # 追加
end


# python
set -x PATH $HOME/.pyenv/shims $PATH
. (pyenv init - | psub)


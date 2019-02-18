# peco + plugin-peco - コマンド実行履歴を選択
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

# ghq + peco-ghq-plugin - ghqで登録したGitHubリポジトリを選択して移動
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository  # 追加
end

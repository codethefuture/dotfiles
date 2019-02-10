# mysql install
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"

# path
set -x PATH $PATH /usr/local/Cellar/git/2.20.1/share/git-core/contrib/diff-highlight

# rbenv
status --is-interactive; and source (rbenv init -|psub)
fix_path

# alias
alias g git

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository  # 追加
end



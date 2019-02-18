# blank greeeting message
set fish_greeting

# XDG Base Directory
#set -U fish_user_paths /usr/local/bin
#set -U fish_user_paths ~/.rbenv/shims $fish_user_paths
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x XDG_DATA_DIRS /usr/local/share/:/usr/share/
set -x XDG_CONFIG_DIRS /etc/xdg
set -x XDG_RUNTIME_DIR /run/user/1000

# set langage version manager path
set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.nodenv/bin $PATH
set -x PATH $HOME/.pyenv/shims $PATH

if status --is-interactive
  set -x PATH $HOME/.rbenv/bin $PATH
  source (rbenv init -|psub)
  #fix_path

  set -x PATH $HOME/.nodenv/bin $PATH
  source (nodenv init -|psub)

  set -x PATH $HOME/.pyenv/shims $PATH
  . (pyenv init -|psub)

  # Display
end

set -x SSH_KEY_PATH $HOME/.ssh/id_rsa
if [ -n $SSH_CONNECTION ]
  set -x EDITOR nvim
end

if [ -f "/usr/local/sbin" ]
  set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
end

# bin
set -gx PATH $HOME/bin /usr/local/bin /usr/local/opt/mysql/bin $PATH

# git
set -x PATH $PATH /usr/local/Cellar/git/2.20.1/share/git-core/contrib/diff-highlight

# mysql8
set -gx LDFLAGS "-L/usr/local/opt/openssl/lib"
set -gx CPPFLAGS "-I/usr/local/opt/openssl/include"

function history-merge --on-event fish_preexec
  history --save
  history --merge
end

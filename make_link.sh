mac_link () {
  _common_link

  ln -sf ~/Dropbox/dotfiles/.config/karabiner ~/.config/karabiner
}

_common_link () {
  ln -sf ~/Documents/dev/dotfiles/.vim ~/.vim
  ln -sf ~/Documents/dev/dotfiles/.tmux.conf ~/.tmux.conf
  ln -sf ~/Documents/dev/dotfiles/.gitignore.global ~/.gitignore

  if [ ! -d ~/.config ]; then
    mkdir ~/.config
  fi

  ln -sf ~/Documents/dev/dotfiles/.config ~/

  if [ ! -d ~/.local/bin ]; then
    mkdir -p ~/.local/bin
  fi
}

if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
  mac_link
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

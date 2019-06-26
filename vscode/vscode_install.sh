# code --list-extensions > extensions.txt

if [ -e ~/Library/Application\ Support/Code/User ]; then
    for extension in `cat ~/Documents/dev/dotfiles/vscode/extensions.txt`; do
        code --install-extension $extension
    done
fi


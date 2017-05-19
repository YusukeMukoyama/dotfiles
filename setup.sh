#!/bin/bash

DOT_FILES=(.gitconfig .zshrc .zsh_profile .vim .vimrc .gvimrc .tmux.conf)

for file in ${DOT_FILES[@]}
do
	ln -sf $HOME/dotfiles/$file $HOME/$file
done

DEIN_TOML_DIR="$HOME/.vim/rc"
if [ -e ! DEIN_DIR ]; then
  mkdir $HOME/.vim/rc/
fi
ln -sf $HOME/dotfiles/dein.toml $HOME/.vim/rc/dein.toml

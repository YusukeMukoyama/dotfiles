#!/bin/bash

DOT_FILES=(.bashrc .bash_profile .zshrc .zsh_profile .vim .vimrc .tmux.conf)

for file in ${DOT_FILES[@]}
do
	ln -sf $HOME/dotfiles/$file $HOME/$file
done

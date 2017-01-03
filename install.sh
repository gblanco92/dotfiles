#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)";

mkdir -p ~/.config/nvim/
rm -f ~/.config/nvim/init.vim && ln -s $DIR/init.vim ~/.config/nvim/init.vim
rm -f ~/.config/nvim/tmuxline.conf && ln -s $DIR/tmuxline.conf ~/.config/nvim/tmuxline.conf

rm -f ~/.vimrc && ln -s $DIR/init.vim ~/.vimrc
rm -f ~/.tmux.conf && ln -s $DIR/tmux.conf ~/.tmux.conf
rm -f ~/.zshrc && ln -s $DIR/zshrc ~/.zshrc
rm -f ~/.gitconfig && ln -s $DIR/gitconfig ~/.gitconfig

#!/bin/bash

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)";

rm -f ~/.vimrc && ln -s $DIR/init.vim ~/.vimrc
rm -f ~/.tmux.conf && ln -s $DIR/tmux.conf ~/.tmux.conf
rm -f ~/.zshrc && ln -s $DIR/zshrc ~/.zshrc
rm -f ~/.gitconfig && ln -s $DIR/gitconfig ~/.gitconfig
rm -f ~/.gdbinit && ln -s $DIR/gdbinit ~/.gdbinit

mkdir -p ~/.config/nvim/
rm -f ~/.config/nvim/init.vim && ln -s $DIR/init.vim ~/.config/nvim/init.vim
rm -f ~/.config/nvim/tmuxline.conf && ln -s $DIR/tmuxline.conf ~/.config/nvim/tmuxline.conf

mkdir -p ~/.config/nvim/ftplugin
mkdir -p ~/.config/nvim/ftplugin/tex
mkdir -p ~/.vim/ftplugin
mkdir -p ~/.vim/ftplugin/tex
mkdir -p ~/.config/nvim/plugged/
mkdir -p ~/.config/nvim/spell/

rm -f ~/.config/nvim/ftplugin/*.vim && ln -s $DIR/ftplugin/*.vim ~/.config/nvim/ftplugin/
rm -f ~/.config/nvim/ftplugin/tex/* && ln -s $DIR/ftplugin/tex/*.vim ~/.config/nvim/ftplugin/tex/
ln -s $DIR/ftplugin/tex/tex.vim ~/.config/nvim/ftplugin/text.vim
rm -f ~/.vim/ftplugin/*.vim && ln -s $DIR/ftplugin/*.vim ~/.vim/ftplugin/
rm -f ~/.vim/ftplugin/tex/*.vim && ln -s $DIR/ftplugin/tex/*.vim ~/.vim/ftplugin/tex/
ln -s $DIR/ftplugin/tex/tex.vim ~/.vim/ftplugin/text.vim
cp -R $DIR/plugged/* ~/.config/nvim/plugged/
rm -f ~/.config/nvim/spell/en.utf-8.add && ln -s $DIR/spell/en.utf-8.add ~/.config/nvim/spell/en.utf-8.add
rm -f ~/.config/nvim/spell/en.utf-8.add.spl && ln -s $DIR/spell/en.utf-8.add.spl ~/.config/nvim/spell/en.utf-8.add.spl

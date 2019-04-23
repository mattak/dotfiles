#!/bin/sh

# dotfiles
sh install.sh

# anyenv
if [ ! -d $HOME/.anyenv ]; then
    git clone https://github.com/riywo/anyenv ~/.anyenv
    exec $SHELL -l
fi 

# neobundle
if [ ! -d $HOME/.vim/bundle/neobundle.vim ]; then
    mkdir -p ~/.vim/bundle
    git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

# bin
if [ ! -e "$HOME/bin" -a -e "$HOME/Dropbox/dev/bin" ]; then
    ln -s "$HOME/Dropbox/dev/bin" "$HOME/bin"
fi

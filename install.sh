#!/bin/sh
DOTFILES=$(ls -a | egrep '^\.' | egrep -v '^.$' | egrep -v '^..$' | egrep -v '^.git$' | egrep -v '^.gitignore$')

if [ "$1" = "r" ]; then
  for dotfile in $DOTFILES
  do
    rm -f $HOME/$dotfile
  done
fi

cd `dirname $0`
PWD=`pwd`

for dotfile in $DOTFILES
do
  if [ ! -e "$HOME/$dotfile" ]; then
    echo ln -Fs "$PWD/$dotfile" $HOME
    ln -Fs "$PWD/$dotfile" $HOME
  fi
done

# nvim

if [ ! -e $HOME/.config ]; then
  mkdir $HOME/.config
fi

ln -Fs `pwd`/.vim $HOME/.config/nvim

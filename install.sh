#!/bin/sh
DOTFILES=`ls -a | egrep '^\.' | egrep -v '^.$' | egrep -v '^..$' | egrep -v '^.git'` 

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
	ln -Fs "$PWD/$dotfile" $HOME
done


#!/bin/sh
if [ $1 = "r" ]; then
	for dotfile in .emacs .emacs.d .vim .vimrc .zshrc
	do
		rm $HOME/$dotfile -Rf
	done
fi

echo $0
cd $(dirname $0)
for dotfile in .?*
do
	if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
	then
		ln -Fis "$PWD/$dotfile" $HOME
	fi
done	

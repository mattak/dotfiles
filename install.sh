#!/bin/sh
echo $0
cd $(dirname $0)
for dotfile in .?*
do
	if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
	then
		ln -Fis "$PWD/$dotfile" $HOME
	fi
done	

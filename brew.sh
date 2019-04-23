#!/bin/sh

which nkf > /dev/null
if [ $? -ne 0 ]; then
    brew install nkf
fi 

which peco > /dev/null
if [ $? -ne 0 ]; then
    brew install peco
fi 


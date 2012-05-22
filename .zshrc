export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8 #for mac

UNAME=`uname`

HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000

autoload -U compinit
compinit

autoload colors
colors

## move only directory name
setopt auto_cd

## PROMPT
setopt prompt_subst
#PROMPT='`whoami`@$HOST${WINDOW:+"[$WINDOW]"}%{$fg[blue]%}%#%{$reset_color%} '

PROMPT_NUM=`expr $RANDOM % 8`
if [ $PROMPT_NUM -eq 0 ]; then
  PROMPT='(」・ω・)」'
elif [ $PROMPT_NUM -eq 1 ]; then
  PROMPT='(^^;'
elif [ $PROMPT_NUM -eq 2 ]; then
  PROMPT='( ´∀｀)σσ'
elif [ $PROMPT_NUM -eq 3 ]; then
  PROMPT='(´ー｀)y~~'
elif [ $PROMPT_NUM -eq 4 ]; then
  PROMPT='(｀・ω・´)'
elif [ $PROMPT_NUM -eq 5 ]; then
  PROMPT='(´・ω・｀)'
elif [ $PROMPT_NUM -eq 6 ]; then
  PROMPT='ｷﾀー(ﾟ∀ ﾟ)ー!'
elif [ $PROMPT_NUM -eq 7 ]; then
  PROMPT='(*´ω｀*)'
else
  PROMPT='(^^)'
fi
PROMPT="$PROMPT % "
RPROMPT='%{$fg[white]%}%~%{$fg[blue]%}:%{$fg[white]%}%!%{$reset_color%}'

# Aliases

alias sl='ls'
if [ $UNAME = "Darwin" ]; then
	alias ls='ls -G'
elif [ $UNAME = "Linux" ]; then
	alias ls='ls --color'
fi
alias ll='ls -l'
alias la='ls -a'

alias findgrep='find . -type f | xargs grep '
# PATHES

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source $HOME/.profile

# Execute

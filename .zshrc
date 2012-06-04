UNAME=`uname`
if [ "Linux" = $UNAME ]; then
  UNAME_UBUNTU=`uname -a | perl -ne 'print "$1" if /(Ubuntu)/;'`
  if [ ${#UNAME_UBUNTU} -ne 0 ]; then
    UNAME=$UNAME_UBUNTU
  fi
fi

export LANG=ja_JP.UTF-8

if [ "Darwin" = $UNAME ]; then
  export LC_ALL=ja_JP.UTF-8 #for mac
fi

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

fun_prompt() {
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
}

normal_prompt () {
    PROMPT='%{${fg[blue]}%}[%n@%m] %(!.%.$) %{${reset_color}%} %#'
}

normal_prompt

RPROMPT='%{$fg[white]%}%~%{$fg[blue]%}:%{$fg[white]%}%!%{$reset_color%}'

# Aliases

alias sl='ls'
if [ "Darwin" = $UNAME ]; then
	alias ls='ls -G'
else
	alias ls='ls --color'
fi
alias ll='ls -l'
alias la='ls -a'

# Funcs

findgrep() {
  folder=$1
  shift 1
  find $folder -type f | grep $@
}

findxgrep() {
  folder=$1
  shift 1
  find $folder -type f | xargs grep $@
}

# PATHES

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source $HOME/.profile

# Execute

UNAME=`uname`
if [ "Linux" = $UNAME ]; then
  UNAME_UBUNTU=`uname -a | perl -ne 'print "$1" if /(Ubuntu)/;'`
  if [ ${#UNAME_UBUNTU} -ne 0 ]; then
    UNAME=$UNAME_UBUNTU
  fi
fi

if [ "Ubuntu" != $UNAME ]; then
    export LANG=ja_JP.UTF-8
fi

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

## cdr
autoload -Uz is-at-least
if is-at-least 4.3.11
then
    autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
    add-zsh-hook chpwd chpwd_recent_dirs
    zstyle ':chpwd:*' recent-dirs-max 5000
    zstyle ':chpwd:*' recent-dirs-default yes
    zstyle ':completation:*' recent-dirs-insert both
fi

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end

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
    PROMPT='%{${fg[blue]}%}[%n@%m] %(!.%.$) %{${fg[gray]}%} %#'
}

normal_prompt

# git setting

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b][%a]'

precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    #LANG=ja_JP.UTF-8 vcs_info

    st=`git status 2> /dev/null`
    if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
        color=${fg[green]}
    elif [[ -n `echo "$st" | grep "Conflict"` ]]; then
        color=${fg[red]}
    elif [[ -n `echo "$st" | grep "^# Changes to be committed"` ]]; then
        color=${fg[red]}
    elif [[ -n `echo "$st" | grep "^# Changes not staged"` ]]; then
        color=${fg[yellow]}
    elif [[ -n `echo "$st" | grep "^nothing added"` ]]; then
        color=${fg[blue]}
    elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
        color=${fg[blue]}
    else
        color=${fg[red]}
    fi

    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]=" $vcs_info_msg_0_"

    RPROMPT="%{$fg[white]%}%~%{$reset_color%}%{$color%}%1v%{$reset_color%}"
}

#RPROMPT="%{$fg[white]%}%~%{$fg[blue]%} %1(v|%F{green}%1v%f|)"

# Aliases

alias sl='ls'
if [ "Darwin" = $UNAME ]; then
	alias ls='ls -G'
else
	alias ls='ls --color'
fi
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'

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

source $HOME/.profile

# Execute

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

# anyenv

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# zsh local
if [ -e $HOME/.zshrc.local ]; then
    source $HOME/.zshrc.local
fi

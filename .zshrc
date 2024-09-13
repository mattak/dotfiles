PREVIOUS_EXIT_CODE=$?
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000

autoload -U compinit
compinit

autoload colors
colors

## move only directory name
setopt auto_cd

## zmv
autoload -Uz zmv
alias zmv='noglob zmv -W'

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

## history
setopt hist_ignore_all_dups # ignore same command
setopt hist_ignore_space    # ignore command start with space
setopt hist_reduce_blanks   # remove space inside of sentence
setopt hist_save_nodups     # duplicate command
setopt share_history        # share history

## PROMPT
setopt prompt_subst
#PROMPT='`whoami`@$HOST${WINDOW:+"[$WINDOW]"}%{$fg[blue]%}%#%{$reset_color%} '

normal_prompt () {
  PROMPT='%(?.%{$fg[green]%}.%{$fg[red]%})$ %{${reset_color}%}'
}

normal_prompt

# git setting

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%b'
zstyle ':vcs_info:*' actionformats '[%b][%a]'

precmd () {
    psvar=()
    #LANG=en_US.UTF-8 vcs_info
    LANG=ja_JP.UTF-8 vcs_info

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
        color=${fg[cyan]}
    elif [[ -n `echo "$st" | grep "^# Untracked"` ]]; then
        color=${fg[cyan]}
    else
        color=${fg[red]}
    fi

    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
    psvar[2]=$(whoami)
    psvar[3]=$(hostname)
    psvar[4]=$(date +%H:%M:%S)

    RPROMPT="%F{008%}%~%{$reset_color%} [%{$color%}%1v%{$reset_color%}|%2v|%3v|%4v]"
}

# zsh local

[[ -s $HOME/.profile ]] && source $HOME/.profile
[[ -s $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
[[ -s "$HOME/.zshrcs/dart.zshrc" ]] && source "$HOME/.zshrcs/dart.zshrc"
[[ -s "$HOME/.zshrcs/conda.zshrc" ]] && source "$HOME/.zshrcs/conda.zshrc"


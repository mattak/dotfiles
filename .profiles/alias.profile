alias sl='ls'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'

if type "nvim" > /dev/null; then
  alias vim='nvim'
fi

if type "alias-git-cd" > /dev/null; then
  alias git-cd='source alias-git-cd'
fi

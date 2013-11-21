# home bin
export PATH=$PATH:$HOME/bin

# bist 
export PATH=$PATH:$HOME/.bist/bin

# rbenv
eval "$(rbenv init -)"

# gvm
source "$HOME/.gvm/bin/gvm-init.sh"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

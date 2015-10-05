# home bin
export PATH=$PATH:$HOME/bin

# bist
export PATH=$PATH:$HOME/.bist/bin

# gvm
source "$HOME/.gvm/bin/gvm-init.sh"

# git-flow
export PATH=/usr/lib/git-core:$PATH

# ccache
export NDK_CCACHE=$(which ccache)

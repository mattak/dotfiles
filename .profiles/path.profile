# home bin
export PATH=$PATH:$HOME/bin

# bist
export PATH=$PATH:$HOME/.bist/bin

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# git-flow
export PATH=/usr/lib/git-core:$PATH

# ccache
export NDK_CCACHE=$(which ccache)


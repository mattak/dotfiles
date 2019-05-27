# home bin
export PATH=$PATH:$HOME/bin

# bist
export PATH=$PATH:$HOME/.bist/bin

# git-flow
export PATH=/usr/lib/git-core:$PATH

# ccache
export NDK_CCACHE=$(which ccache)

# android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

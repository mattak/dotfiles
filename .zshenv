
# pathes
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/src/android-sdks/tools:$PATH"
export PATH="$HOME/src/android-sdks/platform-tools:$PATH"

# vars
ANDROID_HOME="$HOME/src/android-sdks"

# alias
alias perlcw="git status --short | grep -v '\.pm\.swp' | grep -v ' D ' | grep -o '\S*\.pm' | xargs -n 1 perl -cw 2>&1 | grep -v     redefined"


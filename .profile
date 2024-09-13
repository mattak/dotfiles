# alias
source "$HOME/.profiles/alias.profile"

# path
source $HOME/.profiles/path/home.profile
source $HOME/.profiles/path/ccache.profile
source $HOME/.profiles/path/android.profile
source $HOME/.profiles/path/java.profile
source $HOME/.profiles/path/go.profile
source $HOME/.profiles/path/dotnet.profile
source $HOME/.profiles/path/rust.profile
source $HOME/.profiles/path/flutter.profile
source $HOME/.profiles/path/deno.profile

# eval
source "$HOME/.profiles/eval/brew.profile"
source "$HOME/.profiles/eval/anyenv.profile"
source "$HOME/.profiles/eval/sdkman.profile"
source "$HOME/.profiles/eval/conda.profile"
source "$HOME/.profiles/eval/cargo.profile"

# local
if [ -e "$HOME/.profile.local" ]; then
  source "$HOME/.profile.local"
fi

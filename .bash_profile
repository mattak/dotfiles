# ghq + fzf
function ghq-fzf-cd() {
  local src=$(ghq list | fzf --query="$LBUFFER")
  if [ -n "$src" ]; then
    cd $(ghq root)/$src
    pwd
  fi
}

# Ctrl+G
bind -x '"\C-g": ghq-fzf-cd'

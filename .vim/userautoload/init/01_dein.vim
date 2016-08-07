if !&compatible
  set nocompatible
endif

" clone dein
let s:cache_home    = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir      = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir   . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir . "," . &runtimepath

" read plugin & create cache
let s:nvim_dir       = fnamemodify(expand('<sfile>'), ':h')
let s:toml_file      = s:nvim_dir . '/dein.toml'
let s:toml_lazy_file = s:nvim_dir . '/dein_lazy.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir, [$MYVIMRC, s:toml_file, s:toml_lazy_file])
  call dein#load_toml(s:toml_file,      {'lazy' : 0})
  call dein#load_toml(s:toml_lazy_file, {'lazy' : 1})
  call dein#end()
  call dein#save_state()
endif

" install missing plugin
if has('vim_starting') && dein#check_install()
  call dein#install()
endif


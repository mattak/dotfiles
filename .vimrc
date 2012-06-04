set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"""my plugins

Bundle 'vim-ruby/vim-ruby'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler'
Bundle 'Shougo/neocomplcache'
Bundle 'therubymug/vim-pyte'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

"""

filetype plugin indent on

syntax on
colorscheme pyte

set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

set encoding=utf8
set fileencodings=utf-8,iso-2022-jp,cp932

set number

set autoindent
set expandtab tabstop=4 shiftwidth=4 softtabstop=4

" pytnon setting
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=4 expandtab shiftwidth=4 softtabstop=4

" backspace
set backspace=indent,eol,start


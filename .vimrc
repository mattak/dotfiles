set nocompatible
filetype off
filetype plugin indent off

if has('vim_starting')
    set rtp+=~/.vim/bundle/neobundle.vim/
    call neobundle#rc(expand('~/.vim/bundle'))
endif

"""my plugins
NeoBundle 'akiomik/git-gutter-vim'
NeoBundle 'AutoClose'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'opsplorer'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'therubymug/vim-pyte'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'https://bitbucket.org/ns9tks/vim-l9'
NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
NeoBundle 'tfnico/vim-gradle'
"""

filetype plugin indent on

syntax on
colorscheme pyte

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

function InsertTabWrapper()
    if pumvisible()
        return "\<c-n>"
    endif
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k\|<\|/'
        return "\<tab>"
    elseif exists('&omnifunc') && &omnifunc == ''
        return "\<c-n>"
    else
        return "\<c-x>\<c-o>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" nerdtree
autocmd vimenter * if !argc() | NERDTree | endif

" setting
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

set encoding=utf8
set fileencodings=utf-8,iso-2022-jp,cp932

set number

set autoindent
set expandtab tabstop=4 shiftwidth=4 softtabstop=4

set ambiwidth=double

" file type style 
"--------------------------

" ruby setting
autocmd FileType ruby setl autoindent
autocmd FileType ruby setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

" pytnon setting
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl tabstop=4 expandtab shiftwidth=4 softtabstop=4

" rst setting
autocmd FileType rst setl autoindent
autocmd FileType rst setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

" clojure setting
autocmd FileType clojure setl autoindent
autocmd FileType clojure setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

" html setting
autocmd FileType html setl autoindent
autocmd FileType html setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

" css setting
autocmd FileType css setl autoindent
autocmd FileType css setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

" sass, scss
"au BufNewFile,BufRead *.scss set filetype=sass
autocmd FileType scss setl autoindent
autocmd FileType scss setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

" js
autocmd FileType javascript setl autoindent
autocmd FileType javascript setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

" coffee
autocmd FileType coffee setl autoindent
autocmd FileType coffee setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

" cpp
autocmd FileType cpp setl autoindent
autocmd FileType cpp setl expandtab tabstop=4 shiftwidth=4 softtabstop=4

" gradle
" gradleのファイルタイプ識別用スクリプト
au BufRead,BufNewFile *.gradle set filetype=groovy
autocmd FileType gradle setl autoindent
autocmd FileType gradle setl expandtab tabstop=2 shiftwidth=2 softtabstop=2


" backspace
set backspace=indent,eol,start

" 全角スペース・行末のスペース・タブの可視化
" if has("syntax")
"     syntax on
"  
"     " PODバグ対策
"     syn sync fromstart
"  
"     function! ActivateInvisibleIndicator()
"         # 下の行の"　"は全角スペース
"         syntax match InvisibleJISX0208Space "　" display containedin=ALL
"         highlight InvisibleJISX0208Space term=underline ctermbg=Blue guibg=darkgray gui=underline
"         "syntax match InvisibleTrailedSpace "[ \t]\+$" display containedin=ALL
"         "highlight InvisibleTrailedSpace term=underline ctermbg=Red guibg=NONE gui=undercurl guisp=darkorange
"         "syntax match InvisibleTab "\t" display containedin=ALL
"         "highlight InvisibleTab term=underline ctermbg=white gui=undercurl guisp=darkslategray
"     endfunction
"  
"     augroup invisible
"         autocmd! invisible
"         autocmd BufNew,BufRead * call ActivateInvisibleIndicator()
"     augroup END
" endif
set list
set listchars=tab:»-,trail:.,extends:»,precedes:«,nbsp:%

" functions ...
let g:nerdtree_tabs_open_on_console_startup=1

" key mapping
nnoremap <silent> tf :<C-u>tabfirst<CR>
nnoremap <silent> tl :<C-u>tablast<CR>
nnoremap <silent> tn :<C-u>tabnext<CR>
nnoremap <silent> tp :<C-u>tabprevious<CR>
nmap <silent> ;  <C-w>p
nnoremap <silent> QQ  :QuickRun
nmap <silent> QS  :!touch index.rst; make html<CR>
noremap <C-e> :<C-u>NERDTreeToggle<CR>

" quickrun coffee
let g:quickrun_config = {}
let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}


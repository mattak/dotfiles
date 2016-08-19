""""my plugins
"NeoBundle 'akiomik/git-gutter-vim'
"NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-l9'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'
"NeoBundle 'jistr/vim-nerdtree-tabs'
"NeoBundle 'kchmck/vim-coffee-script'
"NeoBundle 'mattn/emmet-vim'
"NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'opsplorer'
"NeoBundleLazy 'OmniSharp/omnisharp-vim', {
"\   'autoload': { 'filetypes': [ 'cs', 'csi', 'csx' ] },
"\   'build': {
"\     'windows' : 'msbuild server/OmniSharp.sln',
"\     'mac': 'xbuild server/OmniSharp.sln',
"\     'unix': 'xbuild server/OmniSharp.sln',
"\   },
"\ }
"NeoBundleLazy 'OrangeT/vim-csharp', { 'autoload': { 'filetypes': [ 'cs', 'csi', 'csx' ] } }
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neomru.vim'
"NeoBundle 'Shougo/vimfiler'
"NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'scrooloose/nerdtree'
"NeoBundle 'therubymug/vim-pyte'
"NeoBundle 'thinca/vim-quickrun'
"NeoBundle 'tfnico/vim-gradle'
"NeoBundle 'tomtom/tcomment_vim'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'tpope/vim-surround'
"NeoBundle 'tpope/vim-dispatch'
"NeoBundle 'vim-ruby/vim-ruby'
"NeoBundle 'vim-perl/vim-perl'
""""

"filetype plugin indent on

"syntax on

"" neocomplcache
"let g:neocomplcache_enable_at_startup = 1
"
"function InsertTabWrapper()
"    if pumvisible()
"        return "\<c-n>"
"    endif
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k\|<\|/'
"        return "\<tab>"
"    elseif exists('&omnifunc') && &omnifunc == ''
"        return "\<c-n>"
"    else
"        return "\<c-x>\<c-o>"
"    endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"
"" nerdtree
"autocmd vimenter * if !argc() | NERDTree | endif
"
"" setting
"set laststatus=2
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"set encoding=utf8
"set fileencodings=utf-8,iso-2022-jp,cp932
"set number
"set autoindent
"set expandtab tabstop=4 shiftwidth=4 softtabstop=4
"set ambiwidth=double
"
"" vim indent guides
"let g:indent_guides_auto_colors           = 1
"let g:indent_guides_color_change_percent  = 1
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size            = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"
"
"set list
"set listchars=tab:»-,trail:.,extends:»,precedes:«,nbsp:%
"
"" functions ...
"let g:nerdtree_tabs_open_on_console_startup=1
"

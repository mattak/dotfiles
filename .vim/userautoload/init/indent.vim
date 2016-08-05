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

" xml setting
autocmd FileType xml setl autoindent
autocmd FileType xml setl expandtab tabstop=2 shiftwidth=2 softtabstop=2

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


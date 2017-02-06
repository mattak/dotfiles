augroup FileTypeDetect
  autocmd! BufNewFile,BufRead *.rb setfiletype ruby
  autocmd! BufNewFile,BufRead Fastfile  setfiletype ruby
  autocmd! BufNewFile,BufRead Rakefile  setfiletype ruby
  autocmd! BufNewFile,BufRead Matchfile setfiletype ruby
  
  autocmd! BufNewFile,BufRead *.pm setfiletype perl
  autocmd! BufNewFile,BufRead *.t  setfiletype perl
  autocmd! BufNewFile,BufRead *.pl setfiletype perl
  autocmd! BufNewFile,BufRead cpanfile setfiletype perl

  autocmd! BufNewFile,BufRead *.html setfiletype html
  autocmd! BufNewFile,BufRead *.js setfiletype javascript

  autocmd! BufNewFile,BufRead *.cs setfiletype csharp

  autocmd! BufNewFile,BufRead *.conf setfiletype nginx
augroup END

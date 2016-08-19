augroup FileTypeDetect
  autocmd! BufNewFile,BufRead *.rb setfiletype ruby
  autocmd! BufNewFile,BufRead Fastfile  setfiletype ruby
  autocmd! BufNewFile,BufRead Rakefile  setfiletype ruby
  autocmd! BufNewFile,BufRead Matchfile setfiletype ruby
  
  autocmd! BufNewFile,BufRead *.pm setfiletype perl
  autocmd! BufNewFile,BufRead *.t  setfiletype perl
  autocmd! BufNewFile,BufRead *.pl setfiletype perl
  autocmd! BufNewFile,BufRead cpanfile setfiletype perl
augroup END

augroup FileTypeDetect
  autocmd! BufNewFile,BufRead *.rb setfiletype ruby
  autocmd! BufNewFile,BufRead Fastfile  setfiletype ruby
  autocmd! BufNewFile,BufRead Rakefile  setfiletype ruby
  autocmd! BufNewFile,BufRead Matchfile setfiletype ruby

  autocmd! BufNewFile,BufRead *.html setfiletype html
  autocmd! BufNewFile,BufRead *.js setfiletype javascript
augroup END

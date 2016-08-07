" tab
nnoremap <silent> tf :<C-u>tabfirst<CR>
nnoremap <silent> tl :<C-u>tablast<CR>
nnoremap <silent> tn :<C-u>tabnext<CR>
nnoremap <silent> tp :<C-u>tabprevious<CR>

nnoremap [Tag] <Nop>
nmap   t [Tag]

for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" ctags
nnoremap <C-]> g<C-]>`

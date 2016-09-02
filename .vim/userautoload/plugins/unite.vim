" prefix
nnoremap [unite] <Nop>
nmap <Space>u [unite]

" keymap
let g:unite_source_history_yank_enable =1
nnoremap <silent> [unite]u :<C-u>Unite<Space>file<CR>
nnoremap <silent> [unite]g :<C-u>Unite<Space>grep<Space>-auto-preview<CR>
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<CR>
nnoremap <silent> [unite]l :<C-u>Unite<Space>line<CR>
nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]c :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> [unite]f :<C-u>Unite file_rec/git -start-insert<CR>
nnoremap <silent> ,vr :UniteResume<CR>

" grep
let g:unite_source_grep_command        = 'ag'
let g:unite_source_grep_default_opts   = '--nocolor --nogroup'
let g:unite_source_grep_max_candidates = 200
let g:unite_source_grep_recursive_opt  = ''
vnoremap /g y:Unite grep::-iRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>

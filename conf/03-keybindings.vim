" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== 快捷键配置 ======

" quickrun
nmap <Leader>r <Plug>(quickrun)
map <F5> :QuickRun<CR>

" fzf
nmap <C-p> :Files<CR>
nmap <Leader>fg :Rg<CR>
nmap <Leader>fb :Buffers<CR>

" coc.nvim 跳转
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gR <Plug>(coc-rename)
nmap <silent> gr <Plug>(coc-references)

" 窗口跳转 (LazyVim 风格)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 终端缓冲区 (:terminal) 中也能按 C-hjkl 跳出
if has('terminal')
  tnoremap <C-h> <C-\><C-n><C-w>h
  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
  tnoremap <C-l> <C-\><C-n><C-w>l
endif

" supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabClosePreviewOnInsertLeave = 1

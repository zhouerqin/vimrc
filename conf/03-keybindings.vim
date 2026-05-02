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

" supertab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabClosePreviewOnInsertLeave = 1

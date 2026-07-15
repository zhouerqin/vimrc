" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== coc.nvim 配置 ======

let g:coc_global_extensions = ['coc-pyright', 'coc-json', 'coc-html', 'coc-css', 'coc-sh', 'coc-yaml']

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ has('nvim') ? '' : '<TAB>'
inoremap <expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : '<S-TAB>'
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : '<CR>'

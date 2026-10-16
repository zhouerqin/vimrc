" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== 主题微调 ======

" 柔和化不可见字符（降低行尾/空格可视化的亮度）
highlight NonText ctermfg=237 guifg=#3c3c3c
highlight SpecialKey ctermfg=237 guifg=#3c3c3c
highlight Whitespace ctermfg=237 guifg=#3c3c3c
highlight EndOfBuffer ctermfg=236 guifg=#2f2f2f

" vim-better-whitespace 颜色调淡
highlight ExtraWhitespace ctermbg=52 guibg=#5f1f1f

" SignColumn 与背景一致更干净
highlight clear SignColumn
highlight SignColumn ctermfg=240 ctermbg=NONE guifg=#45475a guibg=NONE

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

" 分隔符: 默认的 '|' 在深色主题下呈亮色虚线, 改为暗灰实线
" WinSeparator 为 Vim 9 高亮组, VertSplit 兼容旧版本
" eob 置为空格: 否则文件末尾行会显示默认的 '~' 填充符 (对齐 LazyVim)
" 用 let 而非 set: 'set fillchars=...,eob:\ ' 尾部空格在行末易被误删
let &fillchars = 'vert:│,fold:·,eob: '
highlight WinSeparator ctermfg=238 ctermbg=NONE guifg=#3a3a3a guibg=NONE
highlight VertSplit ctermfg=238 ctermbg=NONE guifg=#3a3a3a guibg=NONE

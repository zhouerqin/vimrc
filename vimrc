" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== Vim 配置入口 ======

" 基础设置
set nocompatible
let mapleader = " "

" EditorConfig 支持
if filereadable(expand("~/.editorconfig"))
  let g:editorconfigvim = 1
endif

" 加载 conf/ 目录下所有模块
for f in split(glob('~/.vim/conf/*.vim'), '\n')
  execute 'source ' . f
endfor

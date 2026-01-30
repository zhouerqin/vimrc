" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== 基础设置 ======
" 禁用兼容模式，启用现代Vim特性
set nocompatible
set encoding=utf-8
filetype on
filetype indent on
syntax enable
set backspace=indent,eol,start
set autoindent
set showmatch
set listchars=tab:→\ ,trail:·
set hlsearch
let mapleader = " "
set iskeyword+=-

" ====== EditorConfig 配置 ======
" 依赖 .editorconfig 文件统一代码风格
" 不同编辑器（Vim/Trae/VSCode）保存时遵循相同规则
if filereadable(expand("~/.editorconfig"))
  let g:editorconfigvim = 1
endif

" ====== 行宽提示 ======
" 仅作为视觉提示，不强制限制
" 各文件类型的实际行宽由 .editorconfig 定义
set colorcolumn=+1

" ====== 自动恢复光标位置 =====
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" ====== Shell脚本配置 ======
autocmd BufNewFile,BufRead *.sh set filetype=sh
autocmd FileType sh setlocal tabstop=2
autocmd FileType sh setlocal shiftwidth=2
autocmd FileType sh setlocal softtabstop=2
autocmd FileType sh setlocal expandtab
autocmd FileType sh setlocal commentstring=#\ %s
autocmd FileType sh setlocal colorcolumn=80
autocmd BufNewFile *.sh call append(0, ['#!/bin/bash', ''])

" ====== YAML文件配置 ======
autocmd BufNewFile,BufRead *.yaml,*.yml set filetype=yaml
autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal shiftwidth=2
autocmd FileType yaml setlocal softtabstop=2
autocmd FileType yaml setlocal expandtab
autocmd FileType yaml setlocal commentstring=#\ %s
autocmd FileType yaml setlocal colorcolumn=80

" ====== Python文件配置 ======
autocmd BufNewFile,BufRead *.py set filetype=python
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType python setlocal colorcolumn=80
autocmd BufNewFile *.py call append(0, ['#!/usr/bin/env python3', '', ''])

" ====== Dockerfile配置 ======
autocmd BufNewFile,BufRead Dockerfile,*.dockerfile set filetype=dockerfile
autocmd FileType dockerfile setlocal tabstop=2
autocmd FileType dockerfile setlocal shiftwidth=2
autocmd FileType dockerfile setlocal softtabstop=2
autocmd FileType dockerfile setlocal expandtab
autocmd FileType dockerfile setlocal commentstring=#\ %s

" ====== 其他文件类型配置 ======
autocmd FileType vim setlocal tabstop=4
autocmd FileType vim setlocal shiftwidth=4
autocmd FileType vim setlocal softtabstop=4

autocmd FileType nginx setlocal tabstop=4
autocmd FileType nginx setlocal shiftwidth=4
autocmd FileType nginx setlocal softtabstop=4
autocmd FileType nginx setlocal expandtab

" Windows批处理（保留原始格式）
autocmd FileType dosbatch setlocal noexpandtab
autocmd FileType dosbatch setlocal tabstop=8
autocmd FileType dosbatch setlocal fenc=gbk

" PowerShell
autocmd FileType ps1 setlocal expandtab
autocmd FileType ps1 setlocal tabstop=2

" ====== 插件配置 ======
if filereadable(expand("~/.vim/vimrc.bundles"))
  source ~/.vim/vimrc.bundles
endif

set modeline
set modelines=5

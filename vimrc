" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== 基础设置 ======
" 禁用兼容模式，启用现代Vim特性
set nocompatible
" 使用UTF-8编码
set encoding=utf-8
" 启用文件类型检测
filetype on
" 启用文件类型缩进
filetype indent on
" 启用语法高亮
syntax enable
" 确保backspace能正常工作
set backspace=indent,eol,start
" 自动缩进
set autoindent
" 高亮匹配括号
set showmatch
" 特殊字符显示设置
set listchars=tab:→\ ,trail:·
" ====== Shell脚本配置 ======
" Google Shell脚本规范要求：
" - 使用2空格缩进
" - 行宽限制80字符
" - 使用空格替代Tab
" - Shebang使用#!/bin/bash

" 设置.sh文件类型
autocmd BufNewFile,BufRead *.sh set filetype=sh

" Shell文件缩进和格式设置
autocmd FileType sh setlocal tabstop=2
autocmd FileType sh setlocal shiftwidth=2
autocmd FileType sh setlocal softtabstop=2
autocmd FileType sh setlocal expandtab
autocmd FileType sh setlocal formatoptions-=t
autocmd FileType sh setlocal iskeyword+=@,-,_
autocmd FileType sh setlocal commentstring=#\ %s
autocmd FileType sh setlocal colorcolumn=80

" 自动添加Shebang
autocmd BufNewFile *.sh call append(0, ['#!/bin/bash', ''])

" ====== 通用格式规范 ======
" 自动缩进
set autoindent
" 高亮匹配括号
set showmatch
" 特殊字符显示设置
set listchars=tab:→\ ,trail:·
" Shell文件中显示特殊字符
autocmd FileType sh set list

" 保存时自动格式化
" 删除行尾空格
autocmd BufWritePre *.sh :%s/\s\+$//e
" 转换Tab为空格
autocmd BufWritePre *.sh :retab

" ====== 语法高亮增强 ======
" Shell脚本特殊语法高亮
highlight link shShebang Comment
highlight link shFunction Function
highlight link shTestOpr Operator

" ====== 其他语言兼容 ======
" Windows批处理文件设置
" 保留Tab字符，8空格宽度
autocmd FileType dosbatch setlocal noexpandtab
autocmd FileType dosbatch setlocal tabstop=8

" PowerShell脚本设置
" 使用空格缩进，2空格宽度
autocmd FileType ps1 setlocal expandtab
autocmd FileType ps1 setlocal tabstop=2

" ====== YAML文件配置 ======
" 设置.yaml文件类型
autocmd BufNewFile,BufRead *.yaml,*.yml set filetype=yaml

" YAML文件缩进和格式设置
autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal shiftwidth=2
autocmd FileType yaml setlocal softtabstop=2
autocmd FileType yaml setlocal expandtab
autocmd FileType yaml setlocal textwidth=0
autocmd FileType yaml setlocal commentstring=#\ %s
autocmd FileType yaml setlocal colorcolumn=80

" YAML文件中显示特殊字符
autocmd FileType yaml set list

" 保存时自动格式化
" 删除行尾空格
autocmd BufWritePre *.yaml,*.yml :%s/\s\+$//e
" 转换Tab为空格
autocmd BufWritePre *.yaml,*.yml :retab

" ====== Python文件配置 ======

" 设置.py文件类型
autocmd BufNewFile,BufRead *.py set filetype=python

" Python文件缩进和格式设置 (PEP8标准)
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python setlocal commentstring=#\ %s

" 自动添加Shebang
autocmd BufNewFile *.py call append(0, ['#!/usr/bin/env python3', '', ''])

autocmd FileType python set list

" ====== Python语法高亮增强 ======
let python_highlight_all = 1
let python_highlight_space_errors = 1
highlight link pythonFunction Function
highlight link pythonOperator Operator
highlight link pythonString String

" ====== Dockerfile配置 ======
" 设置Dockerfile文件类型
autocmd BufNewFile,BufRead Dockerfile,*.dockerfile set filetype=dockerfile

" Dockerfile缩进和格式设置
autocmd FileType dockerfile setlocal tabstop=2
autocmd FileType dockerfile setlocal shiftwidth=2
autocmd FileType dockerfile setlocal softtabstop=2
autocmd FileType dockerfile setlocal expandtab
autocmd FileType dockerfile setlocal commentstring=#\ %s

autocmd FileType vim setlocal tabstop=4
autocmd FileType vim setlocal shiftwidth=4
autocmd FileType vim setlocal softtabstop=4

autocmd FileType nginx setlocal tabstop=4
autocmd FileType nginx setlocal shiftwidth=4
autocmd FileType nginx setlocal softtabstop=4
autocmd FileType nginx setlocal expandtab

if filereadable(expand("~/.vim/vimrc.bundles"))
	source ~/.vim/vimrc.bundles
endif
set modeline
set modelines=5
set hlsearch
let mapleader = " "

" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== 文件类型配置 ======

" 自动恢复光标位置
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

" ====== Justfile配置 ======
autocmd BufNewFile,BufRead Justfile,.justfile,justfile set filetype=just
autocmd FileType just setlocal tabstop=2
autocmd FileType just setlocal shiftwidth=2
autocmd FileType just setlocal softtabstop=2
autocmd FileType just setlocal expandtab
autocmd FileType just setlocal commentstring=#\ %s
autocmd FileType just setlocal colorcolumn=80
autocmd BufNewFile Justfile,.justfile,justfile call append(0, ['# vim: ft=just:ts=2:sts=2:sw=2:et:cc=80:', ''])

" ====== Vim脚本配置 ======
autocmd FileType vim setlocal tabstop=4
autocmd FileType vim setlocal shiftwidth=4
autocmd FileType vim setlocal softtabstop=4

" ====== Nginx配置 ======
autocmd FileType nginx setlocal tabstop=4
autocmd FileType nginx setlocal shiftwidth=4
autocmd FileType nginx setlocal softtabstop=4
autocmd FileType nginx setlocal expandtab

" ====== Windows批处理 ======
autocmd FileType dosbatch setlocal noexpandtab
autocmd FileType dosbatch setlocal tabstop=8
autocmd FileType dosbatch setlocal fenc=gbk

" ====== PowerShell ======
autocmd FileType ps1 setlocal expandtab
autocmd FileType ps1 setlocal tabstop=2

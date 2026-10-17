" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== 插件配置 ======

" 插件声明
call plug#begin('~/.vim/bundle')
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine'
Plug 'ntpeters/vim-better-whitespace'
Plug 'thinca/vim-quickrun'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-autoformat/vim-autoformat'
Plug 'ervandew/supertab'
Plug 'stephpy/vim-yaml'
Plug 'catppuccin/vim', {'as': 'catppuccin'}
Plug 'NoahTheDuke/vim-just'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" ====== editorconfig 配置 ======
" 关闭 max_line_length 的列指示。默认 'line' 会把 max_line_length 追加进
" 'colorcolumn'，在每一屏行高上画出一条全高竖线(屏幕列 86/87)，破坏简洁性。
" 对齐 LazyVim 的做法: 不画列指示, 定位感交给 cursorline(见 conf/01)。
" 只影响视觉; textwidth 的自动换行仍由 .editorconfig 的 max_line_length 决定。
let g:EditorConfig_max_line_indicator = 'none'

" ====== autoformat 配置 ======
let g:autoformat_verbosemode=1
let g:formatdef_shfmt = '"shfmt -i 2 -ci -bn"'
let g:formatters_sh = ['shfmt']
let g:formatdef_dockerfmt = '"dockerfmt"'
let g:formatters_dockerfile = ['dockerfmt']
let g:formatdef_yamlfmt = '"yamlfmt -in"'
let g:formatters_yaml = ['yamlfmt']

" autocmd FileType python,sh autocmd BufWritePre <buffer> Autoformat

" ====== quickrun 配置 ======
let g:quickrun_config = {
\   "_" : {
\       "outputter" : "message",
\   },
\}

let g:quickrun_no_default_key_mappings = 1

" ====== 主题配置 ======
let g:catppuccin_flavour = "mocha"

" 背景与颜色模式必须在 colorscheme 之前确定:
" 1) 否则会先按默认 light 加载 latte, 再被 background=dark 触发二次重载成 mocha
" 2) 颜色模式(真彩/256色)也需在此确定, 否则主题按错误的模式加载
set background=dark
" 使用终端 256 色而非真彩: 真彩下 catppuccin 的分层背景会出现黑块(滚动/删除后更明显)
set notermguicolors

colorscheme catppuccin
if &diff
    colorscheme desert
endif

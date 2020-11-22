execute pathogen#infect()
syntax on
filetype plugin indent on

"不要交换文件和备份文件，减少冲突
set noswapfile
set nobackup
set nowritebackup

set nu
" Vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
   set termguicolors
endif
syntax enable

let g:airline_powerline_fonts=1
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'nord'
let g:limelight_conceal_ctermfg = 240
let g:goyo_width = 120


" 快捷键设置
let mapleader = "\<space>"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Activate FOCUS mode with F12
nmap <F12> :Goyo<CR>

colorscheme nord



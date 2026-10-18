" vim: ts=4:sts=4:sw=4:et:ft=vim:
" ====== vimdiff 优化 ======

" diffopt 在默认 internal,filler,closeoff 基础上增强:
" - algorithm:histogram: 直方图算法，长文件/长期分叉下重复块匹配远优于默认 myers
" - indent-heuristic: 按缩进边界对齐改动块，符合人工阅读预期
" 注: linematches:N 需要更新的 Vim(9.0.1378 无此项，会报 E474)，故不设置
set diffopt=internal,filler,closeoff,algorithm:histogram,indent-heuristic

" diff 模式快捷键（仅 vimdiff 启动会话生效，不污染普通编辑）
" 内置: ]c/[c 跳改动块，dp/do 取/放改动，u/U 撤销窗口侧
if &diff
  " 手动刷新 diff 计算（外部工具改动文件后）
  nnoremap <Leader>du <Cmd>diffupdate<CR>
  " 关闭当前窗口 diff
  nnoremap <Leader>dc <Cmd>diffoff<CR>
endif

安装
====================================

    git clone https://github.com/zhouerqin/vimrc.git ~/.vim
    git submodule init 
    git submodule update
    cp ~/.vim/vimrcs/simple.vim ~/.vimrc 
    cp ~/.vim/vimrcs/editorconfig.vim ~/.editorconfig

为tmux创建一个快照文件
------------------------------------

    :TmuxlineSnapshot ~/.tmux.conf

添加插件

```bash
cd bundle
git submodule add https://github.com/chriskempson/base16-vim.git
```

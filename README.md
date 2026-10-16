# Vim 开发环境配置

面向全栈开发者的 Vim 配置方案，提供代码补全、文件导航、自动格式化等功能。

## 特性

- **代码补全**：coc.nvim + 多语言语言服务器
- **文件导航**：fzf 模糊搜索 + ripgrep 代码搜索
- **自动格式化**：保存时自动格式化（Python/Shell/YAML/Docker）
- **统一风格**：EditorConfig 跨编辑器统一
- **状态栏**：airline 美化 + tabline + devicons 文件图标
- **主题**：catppuccin（mocha），现代配色
- **视觉增强**：相对行号、光标行高亮、符号引用高亮、缩进线、空白可视化

## 快速开始

```bash
# 1. 克隆配置
git clone https://github.com/zhouerqin/vimrc.git ~/.vim
cd ~/.vim

# 2. 安装依赖（见下方"依赖"章节）

# 3. 安装插件
vim +PlugInstall +q

# 4. 安装语言服务器（coc 扩展）
vim +"CocInstall coc-pyright coc-json coc-html coc-css coc-sh coc-yaml" +q
```

## 依赖

### 系统工具

```bash
# Debian/Ubuntu
apt install fzf ripgrep nodejs npm

# macOS
brew install fzf ripgrep node
```

### 格式化工具

```bash
# Debian/Ubuntu
apt install shfmt yamllint

# pip
pip3 install black yamlfmt
```

### 可选工具

```bash
# Docker 格式化
go install github.com/cedrickring/dockerfmt@latest
# 或
pip3 install dockerfmt
```

### 字体

`vim-devicons` 与 airline powerline 图标需要终端使用 **Nerd Font**（如 JetBrainsMono Nerd Font、Hack Nerd Font）。未安装时图标会显示为方框，不影响功能。

## 快捷键速查

| 快捷键 | 功能 | 插件 |
|--------|------|------|
| `<Space>` | Leader 键 | - |
| `<C-p>` | 文件模糊搜索 | fzf |
| `<Leader>fg` | 代码搜索 | fzf |
| `<Leader>fb` | Buffer 切换 | fzf |
| `gd` | 跳转到定义 | coc.nvim |
| `gR` | 重命名 | coc.nvim |
| `gr` | 查找引用 | coc.nvim |
| `<Leader>r` | 运行代码 | quickrun |
| `<F5>` | 运行代码 | quickrun |
| `gcc` | 注释/取消注释 | vim-commentary |
| `\a` | 对齐代码 | vim-easy-align |

### coc.nvim 补全

| 快捷键 | 功能 |
|--------|------|
| `<Tab>` | 下一个补全项 |
| `<S-Tab>` | 上一个补全项 |
| `<Enter>` | 确认选择 |
| `<C-n>/<C-p>` | 上下选择 |

### 文件类型自动配置

| 文件类型 | 缩进 | 行宽限制 |
|----------|------|----------|
| Python | 4 空格 | 80 |
| Shell | 2 空格 | 80 |
| YAML | 2 空格 | 80 |
| Docker | 2 空格 | - |
| Just | 2 空格 | 80 |
| Vim/Nginx | 4 空格 | - |

## 排错

### 终端颜色异常

如颜色显示异常或出现大片杂色，注释掉 `conf/01-settings.vim` 中的：
```vim
" set termguicolors
```
`catppuccin` 主题依赖真彩色，注意 tmux 下需设置 `set -g default-terminal "tmux-256color"`。

### coc 补全不工作

1. 检查语言服务器是否安装：
```
:CocList services
```

2. 手动安装：
```
:CocInstall coc-pyright
```

3. 查看错误日志：
```
:CocOpenLog
```

### fzf 不工作

确保 fzf 已安装：
```bash
which fzf
# 如未安装
apt install fzg
# 或
brew install fzf
```

## 目录结构

```
~/.vim/
├── autoload/      # vim-plug
├── bundle/        # 插件目录
├── conf/          # 模块化配置
│   ├── 00-plugins.vim      # 插件声明与主题
│   ├── 01-settings.vim     # 基础/视觉设置
│   ├── 02-filetypes.vim    # 文件类型配置
│   ├── 03-keybindings.vim  # 快捷键
│   ├── 04-coc.vim          # coc.nvim
│   ├── 05-fzf.vim          # fzf
│   ├── 06-airline.vim      # 状态栏
│   ├── 07-format.vim       # 自动格式化
│   ├── 08-ui.vim           # UI 增强
│   └── 09-theme-tweaks.vim # 主题高亮微调
├── vimrc          # 主配置入口
└── README.md      # 本文件
```

## 许可证

MIT

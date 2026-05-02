# AGENTS.md - AI 代理开发指南

本文档为 AI 编码代理提供在此 Vim 配置仓库中工作的指导方针。

## 目录结构

```
~/.vim/
├── autoload/           # vim-plug 自动加载
├── bundle/            # 插件仓库 (git submodule)
├── vimrc              # 主配置文件
├── vimrc.bundles       # 插件配置
├── .editorconfig     # 跨编辑器代码风格配置
└── README.md         # 用户文档
```

## 构建/检查命令

### 代码格式化

```bash
# Python
black 文件名.py

# Shell
shfmt -w 文件名.sh

# YAML
yamllint 文件名.yaml
# 或
yamlfmt -w 文件名.yaml

# Docker
dockerfmt -w Dockerfile
```

### 语法检查

```bash
bash -n 文件名.sh          # Shell
python3 -m py_compile 文件名.py  # Python
yamllint 文件名.yaml      # YAML
```

### 验证配置

```bash
# 验证 Vim 配置语法
vim -u ~/.vim/vimrc -N -es -c 'source %' -c 'q' 2>&1
```

## 代码风格指南

### EditorConfig 规则

| 文件类型 | 缩进 | 行宽限制 | 字符集 |
|---------|------|----------|--------|
| Python | 4 空格 | 80 | UTF-8 |
| Vim | 4 空格 | 80 | UTF-8 |
| Shell | 2 空格 | 80 | UTF-8 |
| YAML | 2 空格 | - | UTF-8 |
| Docker | 2 空格 | - | UTF-8 |
| PowerShell | GBK | CRLF | - |

### 通用规则

- **行尾符**: LF
- **字符集**: UTF-8
- **文件末尾**: 必须带换行符
- **尾部空白**: 必须去除

### Vim 脚本规范

```vim
" vim: ts=4:sts=4:sw=4:et:ft=vim:

" 注释使用双引号
" 变量命名: g: / b: / s: 前缀
let g:plugin_name = "value"

" 函数使用 abort
function! s:FunctionName() abort
endfunction
```

### Python 规范

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys

import requests
import localmodule

def function_name():
    pass

class ClassName:
    pass
```

### Shell 脚本规范

```bash
#!/bin/bash
set -euo pipefail

function function_name() {
    local arg="$1"
}
```

### YAML 规范

```yaml
# 使用 2 空格缩进
key: "value"
```

## Vim 配置架构

### vimrc 结构

- 基础设置 (1-15行)
- EditorConfig 配置 (17-22行)
- 文件类型配置 (32-96行): Shell / YAML / Python / Docker / Justfile
- 插件配置 (98-101行)
- coc.nvim 配置 (103-113行)
- fzf 配置 (115-123行)
- 自动格式化 (125-126行)
- airline 配置 (128-131行)

### 快捷键约定

- `<Space>`: Leader 键
- `<C-x>`: Ctrl + x
- `<Leader>rr`: 运行当前文件

## 错误处理

### Vim 脚本

```vim
function! s:SafeFunction() abort
  try
  catch /pattern/
    echohl ErrorMsg
    echom "错误: " . v:exception
    echohl None
    return v:false
  endtry
endfunction
```

### Shell 脚本

```bash
set -euo pipefail
command || { echo "错误: $1" >&2; exit 1; }
```

## 插件开发规范

### 新增插件步骤

1. 在 `vimrc.bundles` 添加插件声明
2. 在 `vimrc` 添加相关配置
3. 添加文件类型 autocmd (如适用)
4. 更新 `README.md` 文档

### 插件配置检查

```vim
if exists('g:loaded_plugin_name')
endif
```

## 调试技巧

```vim
:echo g:variable_name  " 查看变量
:set option?          " 查看选项
:verbose function Name  " 跟踪执行
```

## 注意事项

1. **不要强制提交** - 用户可能使用不同插件版本
2. **保持向后兼容** - 检查 `exists()` 后再使用新特性
3. **优先使用现有约定** - 参考 `vimrc` 中的模式
4. **测试不同文件类型** - 确保配置对各种文件生效

# Vim 开发环境配置

这是一个专业的 Vim 配置方案，提供了完整的开发环境设置，包括插件管理、代码格式化、语法高亮等功能。

## 特性

- 使用 vim-plug 作为插件管理器
- 支持多种编程语言的语法高亮和格式化
- 提供统一的代码风格配置
- 包含常用开发工具和快捷键设置

## 系统要求

- 操作系统：debian:12 或其他 Linux 发行版
- Vim 8.0+

## 安装步骤

1. 克隆仓库到本地：

```bash
git clone https://github.com/zhouerqin/vimrc.git ~/.vim
cd ~/.vim
```

2. 安装 vim-plug 插件管理器：

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. 创建配置文件链接：

```bash
ln -s ~/.vim/vimrcs/.vimrc ~/.vimrc
```

4. 安装插件：

打开 vim 并执行：
```
:PlugInstall
```

## 依赖工具

### Shell 脚本开发环境

```bash
apt install shfmt shellcheck
```

### Python 开发环境

```bash
pip3 install black
```

## 目录结构

- `autoload/`: 包含 vim-plug 插件管理器
- `vimrcs/`: vim 配置文件
  - `.vimrc`: 主配置文件
  - `.vimrc.bundles`: 插件配置文件
- `templates/`: 文件模板

## 主要功能

- 自动缩进和语法高亮
- 文件类型检测
- 代码格式化支持
- 智能补全
- Git 集成

## 自定义配置

你可以通过编辑 `~/.vimrc` 文件来自定义配置，主要设置包括：

- 基础编辑器行为
- 插件选项
- 快捷键映射
- 主题设置

## 常用快捷键

- `<Space>`: Leader 键
- `:PlugInstall`: 安装插件
- `:PlugUpdate`: 更新插件
- `:PlugClean`: 清理未使用的插件

## 贡献

欢迎提交 Issue 和 Pull Request 来帮助改进这个项目。

## 许可证

MIT License

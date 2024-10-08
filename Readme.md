# mogit

[![GitHub](https://img.shields.io/github/license/mashape/apistatus.svg)](LICENSE)
[![Build Status](https://img.shields.io/github/actions/workflow/status/moyanj/mogit/build.yml)](https://github.com/moyanj/mogit/actions/workflows/build.yml)
![PyPI - Downloads](https://img.shields.io/pypi/dm/mogit)
![GitHub repo size](https://img.shields.io/github/repo-size/moyanj/mogit)
![GitHub Repo stars](https://img.shields.io/github/stars/moyanj/mogit?style=flat)
# 现由于技术原因，无限期停更
## 目录

- [简介](#简介)
- [安装](#安装)
- [使用](#使用)
- [命令](#命令)
- [贡献](#贡献)
- [许可证](#许可证)

## 简介

`mogit` 是一个轻量级的分布式版本控制系统，用于跟踪文件的变化历史。它可以帮助你管理项目的源代码，并支持多个开发者的协作。

## 安装

### 下载可执行文件

打开 [释放]() 页面，下载适合您的系统的压缩包

### 从PyPi安装

```bash
pip install mogit
```

### 基于源码安装

1. 克隆仓库:
   ```bash
   git clone https://github.com/moyanj/mogit.git
   cd mogit
   ```

2. 构建并安装:
   ```bash
   make
   ```


## 使用

初始化一个新的 `mogit` 仓库:
```bash
mogit init
```

添加文件到暂存区:
```bash
mogit add <file>
```

提交更改:
```bash
mogit commit 提交信息
```

查看提交历史:
```bash
mogit log
```

## 命令

以下是 `mogit` 支持的一些基本命令:

- `mogit init`: 初始化一个新的仓库.
- `mogit add <file>`: 将文件添加到暂存区.
- `mogit commit "message"`: 提交更改.
- `mogit log`: 显示提交历史.
- `mogit branch <branch>`: 切换分支.
- `mogit checkout <hash>`: 切换提交.

完整命令帮助请使用 `mogit --help`查看

## 贡献

欢迎任何贡献！请遵循以下步骤来贡献代码或修复错误:

1. Fork 本仓库.
2. 创建一个新的分支 (`git checkout -b feature-name`).
3. 提交更改 (`git commit -m 'Add some feature'`).
4. 推送到你的分支 (`git push origin feature-name`).
5. 提交 Pull Request.

## 许可证

本项目采用 MIT 许可证发布。更多信息，请参阅 [LICENSE](LICENSE) 文件。

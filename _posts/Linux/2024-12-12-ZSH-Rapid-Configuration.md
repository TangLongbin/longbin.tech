---
layout: post
title: ZSH Rapid Configuration
subtitle: Rapidly config zsh & oh-my-zsh in Ubuntu
category: Linux
date: 2024-12-12
author: Longbin
cover: https://ohmyz.sh/img/ohmyzsh-logo-ansi.png
cover_author: Oh-My-Zsh
cover_author_link: https://ohmyz.sh
tags:
  - Linux
  - Zsh
  - Ubuntu
  - Oh-My-Zsh
---

## Introduction

`zsh` is a more powerful shell than the default `bash` shell. With `oh-my-zsh`, you can easily configure your `zsh` shell with plugins and themes. This post will guide you through the process of configuring `zsh` and `oh-my-zsh` in Ubuntu.

## Installation

```bash
sudo apt update
sudo apt install -y git curl zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

> info "Note"
> 
> After running the above commands, you will be prompted to change your default shell to `zsh`. Type `y` and press `Enter` to change the default shell.

## Themes

```zsh
sudo vim ~/.zshrc
```

Change the `ZSH_THEME` to your favorite theme. For example, `ZSH_THEME="random"`.

## Plugins

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)

## References

- [Oh-My-Zsh](https://ohmyz.sh/#install)
- [Installing Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

---
layout: post
title: Tmux Basic Commands
subtitle: Tmux is "Terminal Multiplexer"
category: Linux
date: 2024-12-12
author: Longbin
cover: https://github.com/tmux/tmux/blob/master/logo/tmux-logo.svg
cover_author: tmux
cover_author_link: https://github.com/tmux
tags:
  - Linux
  - Tmux
---

## Introduction

`tmux` is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal.

## Installation

```bash
# Ubuntu/Debian
sudo apt install tmux

# MacOS
brew install tmux
```

## Basic Commands

### Session

- `tmux` - Start a new session
- `exit` - Exit the session
- `tmux new -s <session-name>` - Start a new session with a name
- `tmux ls` or `tmux list-session` - List all sessions
- `tmux attach -t <session-name>` - Attach to a session
- `tmux detach` - Detach from a session
- `tmux switch -t <session-name>` - Switch to a session
- `tmux rename-session -t <old-name> <new-name>` - Rename a session
- `tmux kill-session -t <session-name>` - Kill a session
- `tmux kill-server` - Kill all sessions

### Window

- `tmux split-window [-v]` - Split the window vertically
- `tmux split-window -h` - Split the window horizontally
- `tmux select-pane -U/D/L/R` - Select the pane up/down/left/right

## Shortcuts

Most shortcuts start with prefix key `Ctrl+B`, then press the following key.

### Session

- `Ctrl+D` - Exit the session
- `Ctrl+B D` - Detach from a session
- `Ctrl+B S` - Switch to a session
- `Ctrl+B $` - Rename a session

### Window

- `Ctrl+B "` - Split the window vertically
- `Ctrl+B %` - Split the window horizontally
- `Ctrl+B ↑/↓/←/→` - Select the pane up/down/left/right
- `Ctrl+B {` - Move the current pane to the left
- `Ctrl+B }` - Move the current pane to the right
- `Ctrl+B Ctrl+o` - Move the current pane to the up
- `Ctrl+B Alt+o` - Move the current pane to the down
- `Ctrl+B x` - Close the current pane
- `Ctrl+B !` - Break the current pane into a new window
- `Ctrl+B z` - Zoom in/out the current pane
- `Ctrl+B Ctrl+↑/↓/←/→` - Resize the pane up/down/left/right
- `Ctrl+B Q` - Show pane numbers

## References

- [Tmux 使用介绍 By SJTU HPC](https://docs.hpc.sjtu.edu.cn/login/tmux.html)
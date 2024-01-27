---
layout: post
title: ROS2 Humble 安装教程
subtitle: ROS2 是 Robot Operation System 的第二个大版本
category: ROS2
date: 2024-1-19
author: Longbin
cover: https://docs.ros.org/en/humble/_static/humble-small.png
cover_author: ROS
cover_author_link: https://docs.ros.org/
tags:
  - ROS2
  - Humble
---
## 环境参考

- Ubuntu 22.04
- WSL2 - 5.15.137.3

## 官方安装文档

[Ubuntu (Debian packages) — ROS 2 Documentation: Humble documentation](https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debians.html)

依次执行以下命令

- Set Locale

```shell
locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings
```

- Setup Sources

```shell
sudo apt install software-properties-common
sudo add-apt-repository universe
```

- Add ROS 2 GPG (官方)

```shell
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
```

```shell
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
```

> error "注意"
> 在国内使用官方 GPG 可能会报错，即使挂了梯子也不可避免。
> 因此推荐按照 [ros2 \| 镜像站使用帮助 \| 清华大学开源软件镜像站 | Tsinghua Open Source Mirror](https://mirror.tuna.tsinghua.edu.cn/help/ros2/) 进行配置

- Add ROS 2 GPG (清华源)

```shell
sudo apt install curl gnupg2
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg
```

```shell
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] https://mirrors.tuna.tsinghua.edu.cn/ros2/ubuntu jammy main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update
```

- 更新

```shell
sudo apt update && sudo apt upgrade
```

- ROS2 安装

```shell
sudo apt install ros-humble-desktop ros-humble-ros-base ros-dev-tools
```

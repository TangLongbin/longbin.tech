---
layout: post
title: Miniconda Installation
subtitle: Rapidly install Miniconda in Ubuntu
category: Linux
date: 2024-12-12
author: Longbin
cover: https://www.anaconda.com/wp-content/uploads/2022/12/anaconda_secondary_logo.svg
cover_author: Anaconda
cover_author_link: https://www.anaconda.com/
tags:
  - Linux
  - MiniConda
  - Ubuntu
---

## Introduction

`Miniconda` is a lightweight version of `Anaconda` that allows you to create isolated environments for different projects. This post will guide you through the process of installing `Miniconda` in Ubuntu.

## Installation

```bash
sudo apt update
sudo apt install -y curl
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh
```

After running the above commands, you will be prompted to accept the license agreement.

- Type `yes` and press `Enter` to continue the installation. You will also be prompted to choose the installation location.
- Press `Enter` to install `Miniconda` in the default location.
- Type `yes` and press `Enter` to initialize `Miniconda`.

Source the `.bashrc` or `.zshrc` file to activate `Miniconda`.

```bash
source ~/.bashrc # or source ~/.zshrc
```

## Basic Commands

- Create a new environment:

    ```bash
    # Replace <ENV_NAME> with a name for your environment
    # Replace <PACKAGE> with your desired package
    # Replace <VERSION> with your desired version of Python
    conda create -n <ENV_NAME> python=<VERSION> <PACKAGE>=<VERSION>
    ```
- Activate/deactivate an environment:

    ```bash
    # Replace <ENV_NAME> with the name of the environment you want to activate
    conda activate <ENV_NAME>
    ```
    ```bash
    conda deactivate
    ```
- Install a package:

    ```bash
    # Replace <PACKAGE> with your desired package
    # Replace <VERSION> with your desired version of package
    conda install <PACKAGE>=<VERSION>
    ```

## References

- [Installing Miniconda](https://docs.anaconda.com/miniconda/install/#)
- [Working with Conda](https://docs.anaconda.com/working-with-conda/#working-with-conda)
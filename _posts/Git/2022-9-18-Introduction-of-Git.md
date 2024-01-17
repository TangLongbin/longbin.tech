---
layout: post
title: Introduction of Git
subtitle: Git 分布式版本控制系统
category: Git
date: 2022-9-18
author: Longbin
cover: /assets/img/Git/git-status.png
cover_author: Git
cover_author_link: https://git-scm.com
tags:
  - Git
---

> HITsz VEX 南工麟云 程序组  
> Version 1.0.0 (2022/09/18)  
> By Longbin  
> 推荐教程  
>> [Git教程|菜鸟教程](https://www.runoob.com/git/git-tutorial.html)  
>> [Git 5分钟教程](https://www.runoob.com/w3cnote/git-five-minutes-tutorial.html)  
>> [Github 简明教程](https://www.runoob.com/w3cnote/git-guide.html)  

## 引入

首先想象这样一个场景：

- 你是一个某个公司的文职人员
- 你每天的工作就是给客户 ***做方案*** & ***改方案***

这一天，你接到了一个需求，要求你给客户做一份方案。你很开心，因为这是你上班以来做的第一个方案。

然后故事开始：

### 第一天

你打开了 Word 非常高率地完成了第一版方案，并将其发送了客户查看。

![Project Version-1.0.0](/assets/img/Git/ProjectVersion-1.0.0.png)

可是世事无常，大肠包小肠。客户并不满意，并要求你改方案，一周后天交给他。

### 一周后

尽管你觉得第一版已经非常好了，但是客户不满意你也只好乖乖改方案。
这时候你选择在原来 Version-1.0.0 的基础上修改方案，交给了客户。

![Project Version-2.0.0](/assets/img/Git/ProjectVersion-2.0.0.png)

这版方案大体上符合客户要求了，但是客户有些小地方还是不满意，要求你补充完善。

### 次日

你很无语，但是打工人有什么话语权呢？你只好按要求完善需求，并得到了 Version-2.1.0 版本的方案。

![Project Version-2.1.0](/assets/img/Git/ProjectVersion-2.1.0.png)

这版方案已经满足客户的所有需求了，你心想已经可以交差了，人生第一单就要成了。可是，你是如此的幸运，以至于客户这时候突然变卦说：“ ***我觉得第一版其实挺好的。还是第一版吧。*** ”
这时候，由于客户是个电脑小白，他不知道把第一版的方案文件放哪儿了，而且由于 “ ***微信7天后文件自动失效*** ”，你拿不到到第一版的任何备份文件。
你没有办法只好重新做一份第一版方案。此时，你的内心：“下次一定要把每个版本的方案都留一个备份！”

### 后来

在第一次方案风波后，你的方案版本管理由 ***单文件-多版本*** 变成了 ***多文件-多版本*** ，如下图：

![Projects](/assets/img/Git/Projects.png)

但是很快你便发现了这样做的缺点，就是 ***太占电脑存储空间*** 啦。可能只是一个细节改动，你却要为此付出多一倍的存储代价。长期这样下去不是办法，因为你刚上班，并没有钱买新硬盘。

于是你想了个绝妙的办法——除了 Version-1.0.0 的方案，其余的方案里都 ***只记录当前方案相比前一个版本的修改内容。*** 由于不需要在每个文件中写整个方案，你的单个文件都变小了，空间问题暂时得到了解决。如下图：

![New Projects](/assets/img/Git/NewProjects.png)

这时候你的方案版本管理基本已经解决了，可是你不希望每次都手动创建这么多文件，也不想每次都去思考每个版本都改了些什么。于是你找到了你的一个好朋友——麟云，麟云是个程序高手（Master of Programming），你求助他帮助你写一个版本版本管理的程序，能够帮助你 ***自动完成上述的版本管理过程。***

一周后你收到了麟云发给你的 ***版本管理软件（Hit）*** ，Hit 能自动帮你完成方案的版本管理。你再也不用担心遇到“该来该去还是用第一版的客户啦”。

### 故事到此为止

请大家回忆这个故事，并将它与我们的程序项目开发结合起来。

- 做方案 ---> 写代码
- 改方案 ---> 优化代码/修复BUG
- 改回第一版方案 ---> 项目版本回退/历史版本记录
- 记录每次方案修改内容 ---> 记录代码修改内容（哪行代码被修改了）
- 版本管理软件 Hit ---> 分布式版本控制系统 Git

***这里需要说明的是，上述故事中的描述只是为了引出 Git 版本管理的作用，很多细节和定义并不严格符合 Git 的实际工作流程***

## Git 简介

Git 是一个开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。

Git 是 Linus Torvalds 为了帮助管理 Linux 内核开发而开发的一个开放源码的版本控制软件。

Git 与常用的版本控制工具 CVS, Subversion 等不同，它采用了分布式版本库的方式，不必服务器端软件支持。

Git 工作流程：

![Git Process](/assets/img/Git/git-process.png)

### Git 的安装配置

[Git 的安装配置](https://www.runoob.com/git/git-install-setup.html)

### 基本概念

我们先来理解下 Git 工作区、暂存区和版本库概念：

- 工作区：就是你在电脑里能看到的目录。
- 暂存区：英文叫 stage 或 index。一般存放在 .git 目录下的 index 文件（.git/index）中，所以我们把暂存区有时也叫作索引（index）。
- 版本库：工作区有一个隐藏目录 .git，这个不算工作区，而是 Git 的版本库。

下面这个图展示了工作区、版本库中的暂存区和版本库之间的关系：

![Git Parts](/assets/img/Git/parts_of_git.jpg)

- 图中左侧为工作区，右侧为版本库。在版本库中标记为 ``"index"``的区域是暂存区（stage/index），标记为 ``"master"``的是 ``master``分支所代表的目录树。
- 图中我们可以看出此时 ``"HEAD"``实际是指向 master 分支的一个"游标"。所以图示的命令中出现 ``HEAD``的地方可以用 master 来替换。
- 图中的 ``objects``标识的区域为 Git 的对象库，实际位于 ``".git/objects"`` 目录下，里面包含了创建的各种对象及内容。
- 当对工作区修改（或新增）的文件执行 ``git add``命令时，暂存区的目录树被更新，同时工作区修改（或新增）的文件内容被写入到对象库中的一个新的对象中，而该对象的ID被记录在暂存区的文件索引中。
- 当执行提交操作 ``git commit``时，暂存区的目录树写到版本库（对象库）中 ``master``分支会做相应的更新。即 ``master``指向的目录树就是提交时暂存区的目录树。
- 当执行 ``git reset HEAD``命令时，暂存区的目录树会被重写，被 ``master``分支指向的目录树所替换，但是工作区不受影响。
- 当执行 ``git rm --cached <file>``命令时，会直接从暂存区删除文件，工作区则不做出改变。
- 当执行 ``git checkout .``或者 ``git checkout -- <file>``命令时，会用暂存区全部或指定的文件替换工作区的文件。这个操作很危险，会清除工作区中未添加到暂存区中的改动。
- 当执行 ``git checkout HEAD .``或者 ``git checkout HEAD <file>``命令时，会用 HEAD 指向的 master 分支中的全部或者部分文件替换暂存区和以及工作区中的文件。这个命令也是极具危险性的，因为不但会清除工作区中未提交的改动，也会清除暂存区中未提交的改动。

### Git 在本地进行版本控制

接下来借助 Git Bash 在本地实现文件版本管理

#### 第一步（初始化仓库）

进入工程目录，如下图：

![Code](/assets/img/Git/Code.png)

其结构为：

- Project
  - bin
    - Code.exe
  - source
    - Code.cpp
  - include
    - Code.h

在 Project 目录下打开 Git Bash，如图所示：

![Launch Git Bash](/assets/img/Git/LaunchGitBash.png)

进入 Git Bash 窗口后可以查看到当前目录的路径，如图所示：

![Git Bash](/assets/img/Git/GitBash.png)

输入 ``git init`` 初始化仓库，此时工程目录会创建一个 ``.git`` 隐藏文件夹，并且工程路径后会跟随产生 ``master`` 标识，代表目前为 ``master`` 分支（主分支）

![Git Init](/assets/img/Git/GitInit.png)

此时，Git 仓库初始化完成

#### 第二步（管理工作区文件）

在 Git Bash 中输入 ``git status`` 查看工作区状态，如图：

![Git Status](/assets/img/Git/GitStatus.png)

可以看到工作区中有多个文件未被跟踪（ ***Untracked*** ），使用 ``git add <file>`` 或者 ``git add .`` 来追踪工作区文件，即将工作区文件放入仓库进行版本管理

随后再次使用 ``git status`` 查看工作区状态，如图：

![Git Add](/assets/img/Git/GitAdd.png)

此时可以看到，每个子文件夹中的新文件都被标记为 ``绿色``，表明它们被放入了缓存区，即将被放入仓库进行版本管理

此时可以使用 ``git rm --cached <file>`` 来清除缓存区的文件

对于存放在缓存区的文件，使用 ``git commit -m "message"`` 将缓存区中的文件放入本地仓库

***Note 1: 此时可能会提醒你配置全局用户信息，只需要按照提醒选择一个常用邮箱和账户名进行配置即可***

***Note 2: 在一节《接入云端 Git 仓库进行协同开发》中，配置的邮箱和账户名需要和远程仓库的邮箱与用户名保持一致，否则会出现 Permission Error***

![Git Commit](/assets/img/Git/GitCommit.png)

如上图所示，新文件已经被放入仓库，此时再使用 ``git status`` 查看工作区状态，会发现工作树已经清空

![After Git Commit](/assets/img/Git/AfterGitCommit.png)

#### 第三步（更新文件）

在工作区文件发生修改或者添加新文件后，重复 ***第二步*** 中的步骤即可将新文件放入仓库进行管理

更新后的结构为：

- Project
  - bin
    - Code.exe
  - source
    - Code.cpp
    - NewCode.cpp
  - include
    - Code.h
    - NewCode.h

![New Code](/assets/img/Git/NewCode.png)
![New Commit](/assets/img/Git/NewCommit.png)

#### 第四步（版本回退）

略

### Git 接入云端 Git 仓库进行协同开发

[GitHub](https://github.com/)

[Gitee](https://gitee.com/)

### 解决工作树冲突

TO DO

### VSCode 中使用 Git

TO DO

### VSCode 中推荐的 Git Extension

TO DO

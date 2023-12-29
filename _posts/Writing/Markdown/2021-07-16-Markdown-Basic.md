---
layout: post
title: 'Markdown Basic Knowledge'
subtitle: 'Markdown 基础知识'
categories: Writing
date: 2021-07-16
author: Longbin
cover: https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Markdown-mark.svg/350px-Markdown-mark.svg.png
cover_author: WikiPedia
cover_author_link: https://en.wikipedia.org/wiki/Markdown
tags: 
- Markdown
---
## Markdown简介

* Markdown是一种轻量级的标记语言,它允许人们使用易读已写的纯文本格式编写文档。
* Markdown编写的文档可以导出HTML、Word、图像、PDF、Epub等多种格式的文档。
* Markdown的语法简洁明了、学习容易、而且功能比纯文本更强，因此很多人用它写博客。
* Markdown编写的文档后缀为 `.md`或 `.markdown`。

## Markdown语法

### 标题

#### 标题方法一

    使用 = 和 - 标记一级和二级标题

    一级标题
    =======

    二级标题
    -------

#### 标记方法二

    使用#号标记

    # 一级标题
    ## 二级标题
    ### 三级标题
    #### 四级标题
    ##### 五级标题
    ###### 六级标题

### 段落

#### 段落方式一

    文本末尾添加两个空格来换行

    换行前__
    换行后

#### 段落方式二

    隔一行空行

    空行前

    空行后

### 字体效果

#### ~~删除字~~

    两个 ~~ 包裹

    ~~删除字~~

#### *斜体字*

    两个 * 包裹

    *斜体字*

#### **粗体字**

    两个 ** 包裹

    **粗体字**

#### ***粗斜体***

    两个 *** 包裹

    ***粗斜体***

### 分割线

---

#### 分割方式一

    三个或以上的 * 独占一行表示分割线，其间可以用空格分隔

    ***
    * * *

#### 分割方式二

    三个或以上的 - 独占一行表示分割线，其间可以用空格分隔

    ---
    - - -

> ### 引用块

    在 > 后接空格

    > 一级引用

    也可以多层嵌套
    > 一级引用
    >> 二级引用
    >>> 三级引用

### 列表

#### 有序列表

    序号+.号后接空格

    1. 第一项
    2. 第二项
    3. 第三项

#### 无序列表

    * 或 - 后接空格

    * 第一项
    * 第二项
    * 第三项

    - 第一项
    - 第二项
    - 第三项

#### 嵌套列表

    可将有序列表和无序列表任意组合使用，形成嵌套列表，注意每次嵌套必须使用四个空格或一个Tab缩进

    1. 第一项
       1. 第一项嵌套的第一项
       2. 第一项嵌套的第二项
    2. 第二项
       * 第二项嵌套的第一项
       * 第二项嵌套的第二项

### 链接

#### 直接链接

    <> 内包裹链接

    [https://www.bilibili.com](https://www.bilibili.com)

[https://www.bilibili.com](https://www.bilibili.com)

#### 带标题的链接

    在链接上悬停会弹出标题信息

    [哔哩哔哩动画](https://www.bilibili.com "哔哩哔哩动画")

[哔哩哔哩动画](https://www.bilibili.com "哔哩哔哩动画")

#### 普通链接

    []包裹文字，()包裹链接

    [哔哩哔哩动画](https://www.bilibili.com)

[哔哩哔哩动画](https://www.bilibili.com)

### 代码

#### 行内代码

    单个反引号包裹

    \`print("Hello World!")\`

`print("Hello World!")`

#### 代码块

    三个反引号包裹
    并可在第一行的反引号后加上语言名来实现语法高亮

    \`\`\`python
    while Ture:
    print(Hello World!)
    \`\`\`

```python
while Ture:
    print(Hello World!)
```

### 图片

    格式:![图片地址无效显示的文本](图片地址 "可选标题")

![ ](https://avatars.githubusercontent.com/u/73875400?v=4 "PNG")

### 表格

#### 基本语法

    Markdown制造表格使用 | 来分隔不同的单元格，使用 - 来分隔表头和其他行

| 表头   | 表头   | 表头   |
| ------ | ------ | ------ |
| 单元格 | 单元格 | 单元格 |
| 单元格 | 单元格 | 单元格 |

| 表头   | 表头   | 表头   |
| ------ | ------ | ------ |
| 单元格 | 单元格 | 单元格 |
| 单元格 | 单元格 | 单元格 |

#### 对齐方式

    -: 右对齐
    :- 左对齐
    :-:居中对齐

| 左对齐   | 居中对齐 |   右对齐 |
| :------- | :------: | -------: |
| 我在左边 | 我在中间 | 我在右边 |

| 左对齐   | 居中对齐 |   右对齐 |
| :------- | :------: | -------: |
| 我在左边 | 我在中间 | 我在右边 |

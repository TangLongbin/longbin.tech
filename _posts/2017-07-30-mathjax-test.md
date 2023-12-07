---
layout: post
title: MathJax Test
subtitle: "Support MathJax"
date: 2017-07-30
categories: test
author: zhonger
cover: 'https://unsplash.lisz.tk/1465189684280-6a8fa9b19a7a.webp'
cover_author: 'Kalen Emsley'
cover_author_link: 'https://unsplash.com/@kalenemsley'
tags: mathjax
---
mathjax in markdown :)

**这是一个不 `align`的公式**：

$$
\forall \alpha \in A, \quad a \cdot b = 0
$$

**这是一个 `align`的公式**：

$$
\begin{align}
    \Phi(0,x) = \max_{u \in \mathcal{D}} \bigg[
        \mathbb{E} & \Phi\left(1,
        x + \int_0^1 \sigma^2(s) \, \zeta(s) \, u_s \, ds
        + \int_0^1 \sigma(s) \, dW_s
    \right) \\
        &- \frac{1}{2} \int_0^1 \sigma^2(s) \, \zeta(s) \,
        \mathbb{E} u_s^2  \, ds
    \bigg].
\end{align}
$$

**注意：**公式块要想有较好的显示效果，必须在公式块标记符 `$$`**前后**留有空行，否则公式将不能正常居中。行内公式无此问题。


😄

---
layout: post
title: IMU Fusion Algorithm -- Magdwick
subtitle: 「IMU 数据融合」Magdwick 算法简介
category: Fusion Algorithm
date: 2023-12-19
author: Longbin
cover: https://x-io.co.uk/wp-content/themes/x-io_theme-v1_8/assets/images/x-io-header-logo.png
cover_author: xioTech
cover_author_link: https://x-io.co.uk
tags:
  - IMU
  - Sensor Fusion
  - Magdwick
---
Magdwick 是一种常用的 IMU 传感器数据融合算法，其利用「加速度计」与「磁力计」作为反馈来修正「陀螺仪」，使得「IMU」解算出更准确的姿态。

## 第一步：认识 IMU

IMU 全称 "Inertial Measurement Unit"，即「惯性测量单元」。通常由「陀螺仪」与「加速度计」组成，称为「六轴 IMU」。常用的部分 “IMU" 附带「磁力计」与「气压计」，分别构成「九轴 IMU」与「十轴 IMU」。

NOTE：本文坐标系均为：**右手系（X-Y-Z）**

### 加速度计（Accelerometer）

加速度计可测量 "X-Y-Z" 三轴的加速度大小，单位：$m/s^2$

需要注意的是，"IMU" 水平静止时，其测量值为：

$$
\vec{a} = \left[
\begin{matrix}
    a_x \\
    a_y \\
    a_z
\end{matrix}
\right] = \left[
\begin{matrix}
  0 \\
  0 \\
  g
\end{matrix}
\right]
$$

即：与「重力加速度」**大小相等**、**方向相反**的向量

这样的测量结果源于加速度计的测量原理，这里不做深入探讨，可以简化为「弹簧秤」来理解，其静止时「弹簧秤」由于重力被压缩，测量值即为重力的「正值」。同时可以推断，当 "IMU" 做「自由落体」运动时，加速度计的测量值为：$[0, 0, 0]^T$

### 陀螺仪（Gyro）

陀螺仪可测量 "X-Y-Z" 三轴旋转的角速度大小，单位：$rad/s$

旋转方向可用「右手定则」判断，当 "IMU" 水平时，yaw 轴旋转方向为：

- 逆时针——正
- 顺时针——负

陀螺仪有多种测量原理，常用的 "MEMS" 陀螺仪的测量原理与加速度计类似，但其测量值容易收到温度影响而产生「温飘」

### 磁力计（Magnetometer）

磁力计可测量地磁场强度，本文磁场方向均为：**东（X）-北（Y）-天（Z）**，单位：$\mu T$

地磁场的产生与分布可参考[「Wiki-地磁场」](https://zh.wikipedia.org/wiki/地磁场)

这里给出中国华南、华东地区的参考范围：

- 磁场强度：$[45 \mu T, 50 \mu T]$
- 磁倾角：$[30^\circ, 50^\circ]$
- 磁偏角：$[-2^\circ, -6^\circ]$

可以看到，磁场强度 $\vec{m}$ 的方向大致为「指向北极、偏向地面」，可以根据此特点来判断磁力计自身三个轴的方向，确保与 "IMU" 坐标系相同

## 第二步：为什么要「数据融合（Sensor Fusion）」

//TODO

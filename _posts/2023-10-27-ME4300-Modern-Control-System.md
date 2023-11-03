---
layout: post
title: 'EES4710/ME4300 Modern Control System'
date: 2023-10-27
author: Tang Longbin
cover: '/assets/img/Modern Control System.png'
cover_author: 'Tang Longbin'
cover_author_link: 'https://tanglongbin.github.io'
tags: 
- Modern Control System
---

# EES4710/ME4300 Modern Control System

> National University of Singapore(Suzhou) Research Institute  
> Prof. Ong Chong Lin  
> Email: <mpeongcj@nus.edu.sg>  
> Tel: 6516-2217  
> Editor: Tang Longbin (<https://tanglongbin.github.io>)

## Chapter 0 -- Review of Basic Control System

### Open Loop & Close Loop

#### Parameter Sensitivity

$$
S^T_G = \frac{\Delta T}{\Delta G}
$$

Where **T** is the **transfer function** (Combination of controlled system, controller and feedback), and **G** is the **controlled system**.

#### Advantages of close loop control

- decrease effect of **input noise**
- decrease effect of **sensor noise**

### Laplacian Transformation

$$
L[f(t)] = \int_0^\infty f(t)*e^{-st}dt
$$

#### Transfer Function

- Input $$r(t): R(s)$$
- Output $$c(t): C(s)$$
- System $$G(s) = \frac{C(s)}{R(s)}$$

#### Mathematical Modeling

#### Example1: Mass-Spring-Damper System

$$
G(s) = \frac{1}{ms^2+ks+1}
$$

#### Example2: RLC Circuit System

$$
G(s) = \frac{s}{Ls^2 + Rs + \frac{1}{C}}
$$

### Other definitions

- Proper Transfer Function: $n \geq m$ (i.e. $G(s) = Constant\vert_{t->\infty}$)

### Time Response of System
 
#### Typical Signal

- Step
- Ramp
- Parabolic

#### Response of First-Order System

- step: $c(t) = 1 - e^{-\frac{t}{T}}$

#### Second-Order System

- $\omega_n$: natural frequency
- $\xi$: damping ratio
- $0 < \xi < 1$: Underdamped
- $\omega_d = \omega_n \sqrt{1-\xi^2}$: Damped natural frequency
- $\xi = 1$: critically damped
- $\xi > 1$: overdamped

### Transient Response Definitions

- Rise time: $t_r = \frac{\pi - \phi}{\omega_d}$
- Peak time: $t_p = \frac{\pi}{\omega_d}$

### Stability of System

$f(t)$ is bounded if there is an M s.t. $\lvert f(t) \rvert < M < \infty$

> Definition:  
> A system is Bounded-Input Bounded-Ouput(BIBO) stable if whenever the input signal is bounded, so is the output signal.

BIBO System: All poles are in the left-half s-panel.

#### Routh Table

$$
a_0s^n + a_1s^{n-1} + ... + a_n = 0
$$

|$s^n$|$a_0$|$a_2$|$a_4$|$a_6$|
|:-:|:-:|:-:|:-:|:-:|
|$s^{n-1}$|$a_1$|$a_3$|$a_5$|$a_7$|
|$s^{n-2}$|$b_0$|$b_1$|$b_2$|$b_3$|
|...|...|...|...|...|

$$
b_0 = \frac{a_1a_2 - a_0a_3}{a_1}
$$

$$
b_1 = \frac{a_1a_4 - a_0a_5}{a_1}
$$

$$
...
$$

### Frequency Response

$$
\frac{|Y(j\omega)|}{|U(j\omega)|} = |G(j\omega)|
$$

$$
\phi = \angle G(j\omega)
$$

## Chapter 1 -- Introduction

### Problem with classical control

Transfer function has its limitations.  
It can not describe the internel behavior of a system, which is more complicated than external behavior.

### Mathematical Description

#### Class of systems

- **SISO**: Single Input and Single Output system
- **MIMO**: Multi Input and Multi Output system

#### Causality

- **Memoryless**: output $y_{t_0}$ depends only on the input applied at time $t_0$
- Most systems have **memory**: output $y_{t_0}$ depends on $u(t)$ for $t < t_0, t = t_0, t > t_0$
- **Causal/Non-anticipatory system**: current output depends on past and current input

#### States and associated definitions

- **State Variables**: the smallest set of variables determine the state of the system
- **State Vector**: n state variables -> n dimensions vector $x(t)$
- **State Space**: space of state vector
- **State Trajectory**: the path produced by the state vector in the state space with the changes of time

#### Lumpedness

Lumped system:  
finite state variables or finite state vector

### Linear System

#### Superposition

- additivity: 可加性
- homogeneity: 齐次性

$$
y = y_{zero \space input} + y_{zero \space state}
$$

### State Space Representation

$$
\dot{x}(t) = A(t)x(t) + B(t)u(t) \\
y(t) = C(t)x(t) + D(t)u(t)
$$

When $A(t),B(t),C(t),D(t)$ are constants, the equations describe an **LTI system**:

$$
\dot{x}(t) = Ax(t) + Bu(t) \\
y(t) = Cx(t) + Du(t)
$$

Words in RLC circuit:
Inductor: 电感
Resistor: 电阻

## Chapter 2 -- Review of Linear Algebra

### Words in Linear Algebra

- Basis: 基
- orthogonal: 正交
  - $$\alpha^T * \beta = 0$$
- orthonormal: 单位正交
- Domain: 定义域
- Range: 值域
- Rank: 秩
  - $$R(A) = r$$
- Full Rank: 满秩
  - $$R(A_{n \times n}) = n$$
- Non-Singular: 非奇异
- Determinant: 行列式
  - $$det(A) = |A|$$
- Minor: 余子式
  - $$M_{ij}$$
- Co-Minor: 代数余子式
  - $$C_{ij} = (-1)^{i+j} * M_{ij}$$
- Adjugate matrix: 伴随矩阵
  - $$A^*$$
- Transpose: 转置
  - $$A^T$$
- Inverse: 逆
  - $$A^{-1}$$
- Eigenvalues: 特征值
  - $$det(\lambda I - A) = 0$$
- Eigenvector: 特征向量
  - $$Ax = \lambda x$$
- Similarity Transformation: 相似变换（相似矩阵）
  - $$\bar{A} = Q^{-1}AQ$$
- Diagonal: 对角阵
  - $$\Lambda$$
- Caley-Hamilton Theorem
  - $$del(\lambda I - A) = \lambda^n + a_1 \lambda^{n-1} + \dots + a_n = 0 \\
    \implies A^n + a_1 A^{n-1} + \dots + a_n I = 0$$

## Chapter 3 -- State Space

### Introduction

$$
\dot{x} = Ax + Bu \\
y = Cx + Du
$$

### Solution of $\dot{x} = Ax$

$$
x(t) = e^{A(t-t_0)}x(t_0)
$$

### Properties of $e^{At}$

- $$\frac{d}{dt}e^{At} = Ae^{At} = e^{At}A$$
- $$e^{At} = \mathcal {L}^{-1}[(sI - A)^{-1}]$$
- $$e^{At_1}e^{At_2} = e^{A(t_1+t_2)}$$
- $$e^{At}e^{-At} = I$$
- $$[e^{At}]^T = e^{A^Tt}$$
- $$e^{At}e^{Bt} = e^{(A+B)t} \space \text{if and only if} \space AB = BA$$

### Methods of Computing $e^{At}$

- $$e^{At} = \sum_{k = 0}^{\infty} \frac{A^kt^k}{k!}$$
- $$e^{At} = \mathcal{L}^{-1}[(sI - A)^{-1}]$$
- $$e^{At} = Qe^{\Lambda t}Q^{-1}$$

### Full Solution

$$
y(t) = Ce^{A(t-t_0)}x(t_0) + C\int_{t_0}^t e^{A(t-\tau)}Bu(\tau)d\tau + Du(t)
$$

### Non-uniqueness of representation and Invariance of Eigenvalues

$$
x = Q\bar{x} \\
\implies \bar{A} = Q^{-1}AQ, \bar{B} = Q^{-1}B, \bar{C} = CQ, \bar{D} = D
$$

After the transformation, eigenvalues **don't change**.

### State Space to Transfer Function

$$
G(s) = C(sI - A)^{-1}B + D
$$

## Chapter 4 -- Controllability and Observability

### Controllability

$\text{Consider}$

$$
U = [B \space AB \space \dots \space A^{n-1}B]
$$

$\text{System is controllable if and only if}$

$$
R(U) = n
$$

### Observability

$\text{Consider}$

$$
O =
\left (
    \begin{matrix}
            C \\
            CA \\
            \vdots \\
            CA^{n-1}
    \end{matrix}
\right )
$$

$\text{System is observable if and only if}$

$$
R(O) = n
$$

### Output Controllability

$\text{Consider}$

$$
P = [CB \space CAB \space \dots \space CA^{n-1}B]
$$

$\text{System is observable if and only if}$

$$
R(P) = m
$$

## Chapter 5 -- Stability

### BIBO Stability

$$
|u(t)| \leq k_1 < \infty, \forall t \ge 0, |y(t)| \leq k_2 < \infty
$$

A SISO system is stable, if and only if:

$$
\int_0^\infty |g(t)|dt \leq k < \infty
$$

The T.F. of a SISO system is $G(s)$.  
It's stable, if and only if all the **poles** of $G(s)$ are in the **open left-half s-plane**.

### Internal Stability

$x_e$ is equilibrium point, if:

$$
Ax_e = 0
$$

A system is internal stable, if and only if:

$$
x_e = 0 (origin)
$$

### Lyapunov Stability

$\text{Lyapunov Function}$

$$
V(x)
$$

$\text{System is asymptotically stable, if}$

$$
\frac{dV(x)}{dt} < 0, \forall x \neq 0
$$

Usually $V(x) = x^T P x, P > 0$

### Lyapunov Equation

$$
A^TP + PA = -Q
$$

The system is stable, if and only if:

$$
\forall Q > 0, \exists P > 0
$$

Usually let **$Q = I$**, then solve the equation. The system is stable, **if P > 0**.

## Chapter 6 -- Canonical Forms

$$
G(s) = \frac{b_{n-1}s^{n-1} + \dots + b_1s + b_0}{s^n + a_{n-1}s^{n-1} + \dots + a_1s + a_0}
$$

### Controllable Canonical Form

If the system is **controllable**, it can be transformed into a controllable canonical form:

$$
A =
\left[
\begin{matrix}
    0 & 1 & \dots & 0 \\
    0 & 0 & \dots & 0 \\
    \vdots & \vdots & \ddots & \vdots \\
    0 & 0 & \dots & 1 \\
    -a_0 & -a_1 & \dots & -a_{n-1}
\end{matrix}
\right],
B =
\left[
\begin{matrix}
    0 \\
    0 \\
    \vdots \\
    1
\end{matrix}
\right]
$$

$$
C =
\left[
\begin{matrix}
    b_0 & b_1 & \dots & b_{n-1}
\end{matrix}
\right]
$$

Let the transformation be $\bar{x} = Tx$.

$$
T =
\left[
\begin{matrix}
    q^T \\
    q^TA \\
    \vdots \\
    q^TA^{n-1}
\end{matrix}
\right]
$$

$$
q^T \space \text{is the last row of} \space U^{-1}
$$

### Observable Canonical Form

If the system is **observable**, it can be transformed into a controllable canonical form:

$$
A =
\left[
\begin{matrix}
    0 & 0 & \dots & 0 & -a_0 \\
    1 & 0 & \dots & 0 & -a_1 \\
    \vdots & \vdots & \ddots & \vdots & \vdots\\
    0 & 0 & \dots & 1 & -a_{n-1}
\end{matrix}
\right],
B =
\left[
\begin{matrix}
    b_0 \\
    b_1 \\
    \vdots \\
    b_{n-1}
\end{matrix}
\right]
$$

$$
C =
\left[
\begin{matrix}
    0 & 0 & \dots & 1
\end{matrix}
\right]
$$

Let the transformation be $x = Q\bar{x}$.

$$
Q =
\left[
\begin{matrix}
    \omega & A\omega & \dots & A^{n-1}\omega
\end{matrix}
\right]
$$

$$
\omega \space \text{is the last column of} \space O^{-1}
$$

### Realization

It is easy to find a S.S. representation with given $G(s)$.

## Chapter 7 -- State Feedback and Observer

### State Feedback

$$
u = kx + r \\
k \space \text{is known as feedback gain} \\
k = [k_n \space k_{n-1} \dots k_1]
$$

close-loop eigenvalues:

$$
det(sI - (A + Bk)) = 0
$$

With desired characteristic equation:

$$
s^n + \hat{\alpha}_1s^{n-1} + \dots + \hat{\alpha}_n = 0
$$

Solve $k$ with:

$$
det(sI - (A + Bk)) = s^n + \hat{\alpha}_1s^{n-1} + \dots + \hat{\alpha}_n
$$

**Steps of the solution (desired eigenvalues: $\hat{\lambda}_i$):**

- Find $$det(sI - A) = s^n + \alpha_1s^{n-1} + \dots + \alpha_n$$
- Compute $T$ that transforms $(A,B)$ to CCF
- Compute $$\Pi_{i=1}^n(s - \hat{\lambda}_i) = s^n + \hat{\alpha}_1s^{n-1} + \dots + \hat{\alpha}_n$$
- Compute $$\bar{k} = [(\alpha_n - \hat{\alpha}_n), (\alpha_{n-1} - \hat{\alpha}_{n-1}), \dots, (\alpha_1 - \hat{\alpha}_1)]$$
- $$k = \bar{k}T$$

### Luenberger Linear Observer

$$
\dot{\hat{x}} = A\hat{x} + Bu + L(y - \hat{y}) \\
e = x - \hat{x} \\
\dot{e} = (A - LC)e
$$

**Same as State Feedback, find the solution:**

$$
det(sI - (A - LC)) = \Pi_{i=0}^n(s-\hat{\lambda}_i)
$$

**Steps of the solution (desired eigenvalues: $\hat{\lambda}_i$):**

- Find $$det(sI - A) = s^n + \alpha_1s^{n-1} + \dots + \alpha_n$$
- Compute $Q$ that transforms $(A,B)$ to OCF
- Compute $$\Pi_{i=1}^n(s - \hat{\lambda}_i) = s^n + \hat{\alpha}_1s^{n-1} + \dots + \hat{\alpha}_n$$
- Compute $$\bar{L} = [(\hat{\alpha}_n - \alpha_n), (\hat{\alpha}_{n-1} - \alpha_{n-1}), \dots, (\hat{\alpha}_1 - \alpha_1)]^T$$
- $$L = Q\bar{L}$$

### Combination of State Feedback and Observer

$$
\left(
    \begin{matrix}
        \dot{x} \\
        \dot{e}
    \end{matrix}
\right) =
\left(
    \begin{matrix}
        A+BK & -BK \\
        0 & A-LC
    \end{matrix}
\right)
\left(
    \begin{matrix}
        x \\
        e
    \end{matrix}
\right) +
\left(
    \begin{matrix}
        B \\
        0
    \end{matrix}
\right) r
$$

$$
y =
\left(
    \begin{matrix}
        C & 0
    \end{matrix}
\right)
\left(
    \begin{matrix}
        x \\
        e
    \end{matrix}
\right)
$$

## Computer Control I

### Shannon's Sampling Theorem

$$
\omega_s > 2 \omega_c
$$

$$
\text{Nyquist frequency} \space \omega_N = \frac{\omega_s}{2}
$$

### Zero-Order Hold

$$
\hat{u}(t) = u(t_k), t_k \leq t < t_{k+1}
$$

### Second-Order Filter

$$
G(s) = \frac{\omega^2}{s^2 + 2\zeta \omega s + \omega^2}
$$

## Computer Control II

### Discrete-Time State Space

$$
x(k+1) = \Phi x(k) + \Gamma u(k) \\
y(k) = C x(k) + D u(k)
$$

$\text{Where}$

$$
\Phi = e^{Ah}, \Gamma = \int_0^h e^{At}dtB \\
h: \text{sampling period}
$$

### Computation of $\Phi$ and $\Gamma$

Same as the Continuous-Time State Space  
One Simplification:  

$$
\Psi = \int_0^h e^{At}dt \\
\varPhi = I + A \Psi, \Gamma = \Psi B
$$

### The Inverse of Sampling

$$
A = \frac{\ln(\Phi)}{h} = \ln(\Phi^{\frac{1}{k}}) \\
B = \Psi^{-1} \Gamma = (A \Psi)^{-1}A\Gamma = (\Phi - I)^{-1} A \Gamma
$$

### Z Transform

$$
F(z) = \sum_{k=0}^\infty f(kh)z^{-k} \\
f(kh) = \frac{1}{2\pi i}\int F(z)z^{k-1}dz
$$

### Direct Conversion

$$
H(z) = \frac{Y(z)}{U(z)} = C(zI-\Phi)^{-1} \Gamma
$$

### Hold-Equivalent D.T.T.F

$$
H(z) = (1-z^{-1})\mathcal{Z}[\frac{G(s)}{s}]
$$

### Poles and Zeros

$$
z_i = e^{s_ih}
$$

## Computer Control III

### Stability

#### Table Method

$$
a_i^{k-1} = a_i^k - \alpha_k a_{k-i}^k \\
\alpha_k = \frac{a_k^k}{a_0^k}
$$

#### Lyapunov Second Method

$$
\Phi^TP\Phi - P = -Q
$$

### Controllability of Discrete system

$$
U_d = [\Gamma \space \Phi \Gamma \space \dots \space \Phi^{n-1}\Gamma]
$$

### Observability of Discrete system

$$
O_d =
\left(
  \begin{matrix}
    C \\
    C \Phi \\
    \vdots \\
    C \Phi^{n-1}
  \end{matrix}
\right)
$$

### Canonical Forms

Same as Continuous system.

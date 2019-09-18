# DIP 03 图像增强 - 频率域滤波

> 1. 傅立叶变换在图象处理中的意义
> 2. 高频、中频和低频成分，分别对应空间域图像的哪些部分
> 3. 卷积定理以及在图像处理中的运用
> 4. 傅里叶变换的性质

[TOC]

##1 傅里叶变换

### 1.1 周期函数的傅里叶级数

傅里叶分析中最重要的结论：任何周期函数都可以表示为（分解成）不同频率的正弦波和/或余弦波之（加权）和。从而提供了一种具有物理意义的函数表达方式。

对以 T 为周期的函数 f(t)，满足某些条件（如：绝对可积），则：
$$
f(\mathrm{t})=\sum_{n=-\infty}^{n=\infty} c(n) e^{j \frac{2 \pi n}{T} t},\\
where\ \mathrm{c}(\mathrm{n})=\frac{1}{T} \int_{-T / 2}^{T / 2} f(t) e^{-j \frac{2 \pi t}{T} t} d t, n=0, \pm 1, \pm 2, \cdots
$$

### 1.2 非周期函数的傅里叶变换

非周期函数（该曲线下的面积有限）也可用正弦和/或余弦乘以加权函数的积分来表示。
$$
f(\mathrm{t})=\int_{-\infty}^{+\infty} F(u) e^{j 2 \pi u t} d u
$$

### 1.3 冲激函数

#### 1.3.1 定义

$$
\delta(t)=\left\{\begin{array}{ll}{\infty,} & {t=0} \\ {0,} & {t \neq 0}\end{array} \quad And \quad \int_{-\infty}^{\infty} \delta(t) d t=1\right.
$$

#### 1.3.2 取样特性

**连续情况**
$$
\int_{-\infty}^{\infty} \mathrm{f}(\mathrm{t}) \delta(\mathrm{t}) \mathrm{d} \mathrm{t}=\mathrm{f}(0) \quad And\quad \int_{-\infty}^{\infty} \mathrm{f}(\mathrm{t}) \delta\left(\mathrm{t}-t_{0}\right) \mathrm{d} \mathrm{t}=\mathrm{f}\left(\mathrm{t}_{0}\right)
$$
**离散情况**
$$
\sum_{\mathrm{x}=-\infty}^{\infty} \mathrm{f}(\mathrm{x}) \delta\left(\mathrm{x}-\mathrm{x}_{0}\right)=\mathrm{f}\left(\mathrm{x}_{0}\right)
$$

#### 1.3.3 冲激串

$$
\mathrm{s}_{\Delta \mathrm{T}}(\mathrm{t})=\sum_{\mathrm{x}=-\infty}^{\infty} \delta(\mathrm{x}-\mathrm{n} \Delta \mathrm{T})
$$

### 1.4 复数

#### 1.4.1 定义

$$
C=R+j I
$$

#### 1.4.2 极坐标下表示

$$
C=|\mathrm{C}|(\cos \theta+\mathrm{j} \sin \theta), where\ |C|=\sqrt{R^{2}+I^{2}}\\
Or\\
C=|\mathrm{C}| \mathrm{e}^{\mathrm{j} \theta}
$$

#### 1.4.3 欧拉公式

$$
\mathrm{e}^{j \theta}=\cos \theta+j \sin \theta
$$

### 1.5 一维连续函数的傅里叶变换与反变换



## 2 卷积

### 2.1 定义



### 2.2 卷积定理


# 確率論

## 目次

- [確率論](#確率論)
  - [目次](#目次)
  - [確率過程](#確率過程)
    - [確率過程の基礎](#確率過程の基礎)
      - [- 確率過程](#--確率過程)
      - [- 定常増分過程](#--定常増分過程)
    - [ブラウン運動](#ブラウン運動)
      - [- パラメータ推定](#--パラメータ推定)
    - [ポアソン過程](#ポアソン過程)
      - [- 計数過程](#--計数過程)
      - [- パラメータ推定](#--パラメータ推定-1)
    - [複合ポアソン分布](#複合ポアソン分布)

## 確率過程

### 確率過程の基礎

#### - 確率過程

$t\in[0,\infty]$ に対して、確率変数 $X_t$ が与えられたときその族 $X=(X_t)_{t\geq0}$ を確率過程という。<br>

確率過程 $X=(X_t)_{t\geq0}$ が与えられたとき、実現値の集合を $(x_t)_{t\geq0}$ と書くと、 $t\mapsto x_t$ なる $t$ の関数が描かれる。<br>

これを $X$ のパスという。パスは、連続から不連続までさまざまある。<br>

<br>

#### - 定常増分過程

確率過程 $X=(X_t)_{t\geq0}$ が以下を満たすとする。<br>

1. 任意の $0=t_0<t_1<\cdots<t_{n}$ に対して、 $X_{t_0},X_{t_1}-X_{t_0},X_{t_2}-X_{t_1},\dots,X_{t_n}-X_{t_{n-1}}$ は互いに独立（独立増分性）
2. 任意の $0\leq t<t+h$ に対して、$X_{t+h}-X_{t}$ の分布は $X_{h}-X_{0}$ の分布と同一である（定常増分性）<br>

このような確率過程 $X$ を独立定常増分過程という。 <br>

<br>

### ブラウン運動

$B_0=0$ なる確率過程 $B=(B_t)_{t\geq0}$ が以下の性質を満たすとき、 $B$ をブラウン運動という。<br>

1. $B$ は独立定常増分過程である
2. $t\geq0$ に対して、（周辺分布） $B_t\thicksim\mathcal{N}(\mu t,\sigma^2t)$
3. $B$ のパスは連続である<br>

特に2. において、 $\mu=0,\sigma^2=1$ となるものを標準ブラウン運動またはウィナー過程という。<br>

<br>

ブラウン運動に対して、 $0=t_0<t_1<\cdots<t_n=t=1$ なる $[0,1]$ の分割をとる。ただし、 $\displaystyle t_k=\frac kn(k=0,1,\dots,n)$ とする。<br>

このとき、各 $k$ に対して

$$
B_{t_k}=\sum^k_{i=1}\varepsilon_i,\quad\varepsilon_i=B_{t_i}-B_{t_{i-1}}
$$

のように表すことができ、 $(\varepsilon_i)_{i=1,\dots,n}$ は独立に $\mathcal{N}(\mu/n,\sigma^2/n)$ に従う。<br>

<br>

点列 $B_{t_0}(=0),B_{t_1},\dots,B_{t_n}$ はブラウン運動のパスの一部であり、確率変数列 $(\varepsilon_i)$ の和（ランダムウォーク）になっている。<br>

$n\rightarrow\infty$ の極限でブラウン運動のパスが現れる。<br>

#### - パラメータ推定

ブラウン運動は連続的なパスを持つが、そのデータは離散的な値をとる。<br>

そこで、$B_t\thicksim\mathcal{N}(\mu t,\sigma^2t)$ なるブラウン運動 $B=(B_t)_{t\ge0}$ のパスを時間間隔 $\Delta>0$ で観測し、データ $B_0,B_\Delta,B_{2\Delta},\dots,B_{n\Delta}$ を得たと仮定し、パラメータ $\mu,\sigma^2$ を推定する。<br>

<br>

独立定常増分性によって $Z_k\coloneqq B_{k\Delta}-B_{(k-1)\Delta}\thicksim\mathcal{N}(\mu\Delta,\sigma^2\Delta)\ (k=1,2,\dots,n)$ は独立だから、$(Z_k)_{k=0,1,\dots,n}$ をデータとする最尤法を考える。<br>

対数尤度関数 $\ell_n(\mu,\sigma)$ は

$$
\ell_n(\mu,\sigma)=-\frac12\sum^n_{k=1}\frac{(Z_k-\mu\Delta)^2}{\sigma^2\Delta}-\frac{n}2\log(\sigma^2\Delta)+\footnotesize\text{定数}
$$

であるから、これを $(\mu,\sigma^2)$ に関して最大化する。正規分布の最尤推定量より、

$$
\hat\mu\Delta=\frac1n\sum^n_{k=1}Z_k,\quad\hat\sigma^2\Delta=\frac1n\sum^n_{k=1}Z_k^2\ -\left(\frac1n\sum^n_{k=1}Z_k\right)^2
$$

両辺を $\Delta>0$ で割ることで、最尤推定量 $(\hat\mu,\hat\sigma^2)$ が得られる。<br>

<br>

モーメント法でも、同様の推定量が得られる。<br>

得られた最尤推定量は、 $\Delta>0$ を固定して $n\rightarrow\infty$ とすると $(\mu,\sigma^2)$ に対する漸近正規性や一致性を持つことが証明できる。<br>

連続時間確率過程の漸近理論では、同時に $\Delta\rightarrow0$ のような高頻度観測と呼ばれる設定で行うこともある。<br>

<br>

### ポアソン過程

各 $t$ において自然数値 $N=(N_t)_{t\ge 0}$ を考え、 $N_0=0$ とする。<br>

$N$ が以下の性質を満たすとき、強度 $\lambda$ のポアソン過程という。<br>

1. $N$ は独立定常増分過程である
2. 任意の $t\ge0$ に対して、$N_t$ は強度 $\lambda t$ のポアソン分布に従う。すなわち、

    $$
    \begin{equation*}
    P(N_t=k)=e^{-\lambda t}\frac{(\lambda t)^k}{k!},\ k=0,1,2,\dots
    \end{equation*}
    $$

    <br>

ポアソン過程は連続時間確率過程であるが、離散的なパスを持ち何らかのイベントの回数を表すモデルとして用いられる。<br>

#### - 計数過程

正値確率変数列 $T=\{T_k\}_{k=1,2\dots}$ が、自然数 $k$ に対して $T_k< T_{k+1}$ を満たすとし、 $T_0=0$ とする。<br>

確率過程 $N=(N_t)_{t\ge0}$ を

$$
N_t=\sum^{\infty}_{k=1}I(T_k\le t)
$$

と定める。ただし、 $I(A)$ はイベント $A$ が起こったとき $1$ , 起こらなければ $0$ をとる定義関数である。<br>

このような $N$ を、 $T$ から定まる計数過程（点過程）という。<br>

<br>

繰り返し起こるイベントの $n$ 番目の発生時刻を $T_n$ と見れば、 $N_t$ は時刻 $t$ までに起こるイベントの回数を表す確率過程とみなせる。

$$
W_k=T_k-T_{k-1}
$$

とすると、 $W=(W_k)_{k=0,1,\dots}$ はイベントの発生間隔であり、特に $W$ が独立に $W_n\thicksim Exp(\lambda)$ に従うとすると計数過程 $N$ がポアソン分布になる。<br>

<br>

- 証明<br>
    
    $Exp(\lambda)$ が $Ga(1,1/\lambda)$ であること、$T_k=W_1+\cdots+W_k$ であることに注意すると再生性より $T_k\thicksim Ga(k,1/\lambda)$ であり
    
    $$
    \begin{equation*}
     \begin{split}
    P(N_t=k)&=P(T_k\leq t,\ T_{k+1}>t) \\[2pt]
    &=P(T_k\le t)-P(T_{k+1}\le t) \\[2pt]
    &=\int^t_0\frac{\lambda^k}{(k-1)!}x^{k-1}e^{-\lambda x}dx\, -\int^t_0\frac{\lambda^{k+1}}{k!}x^{k}e^{-\lambda x}dx \\[2pt]
    &=\left[\frac{\lambda^k}{k!}x^ke^{-\lambda x}\right]^t_0=e^{-\lambda t}\frac{(\lambda t)^k}{k!}
     \end{split}
    \end{equation*}
    $$
    
    したがって、 $N_t\thicksim Po(\lambda t)$ である。 //<br>
    
<br>

#### - パラメータ推定

以下の2種類のデータ形式を考える。

Ⅰ. イベントの起こった時刻 $T_1,T_2,\cdots,T_n$ を観測する。<br>

Ⅱ. 時間間隔 $\Delta>0$ によってデータ $N_0,N_\Delta,N_{2\Delta},\dots,N_{n\Delta}$ を観測する。<br>

<br>

**Ⅰ. の場合の推定**

$W_k=T_k-T_{k-1}$ としてデータを変換すれば、これらは指数分布 $Exp(\lambda)$ に従うことから、その対数尤度関数 $\ell_n(\lambda)$ は

$$
\begin{equation*}
\ell_n(\lambda)=\sum^n_{k=1}\log f_\lambda(W_k)=n\log\lambda\ -\lambda\sum^n_{k=1}W_k
\end{equation*}
$$

である。したがって、最尤推定量は以下のようになる：

$$
\hat\lambda=\left(\frac1n\sum^n_{k=1}W_k\right)^{-1}=\frac{n}{T_n}
$$

また、 $W_1,W_2,\dots,W_n$ を用いたモーメント法から、 $\displaystyle E[W_k]=\frac1\lambda$ より

$$
\begin{equation}
\frac1{\hat\lambda}=\frac1n\sum^n_{k=1}W_k=\frac{T_n}n\quad\Longleftrightarrow\quad\hat\lambda=\frac{n}{T_n} \tag{\text{Ⅰ}}
\end{equation}
$$

**Ⅱ.の場合の推定**

$M_k=N_{k\Delta}-N_{(k-1)\Delta}$ としてデータを $M_1,\dots,M_n$ に変換すると、独立定常増分性により、これらは独立に $M_k\thicksim Po(\lambda\Delta)$ となる。<br>

対数尤度関数 $\ell_n(\lambda)$ は

$$
\begin{align*}
\ell_n(\lambda)
&=\sum^n_{k=1}\log g_\lambda(M_k) \\[2pt]
&=-\lambda n\Delta+\sum^n_{k=1}M_k\log(\lambda\Delta)-\sum^n_{k=1}\log(M_k!)
\end{align*}
$$

ここから $\displaystyle\frac{d\ell_n}{d\lambda}=0$ を解いて最尤推定量は以下のようになる：

$$
\begin{equation}\hat\lambda=\frac1{n\Delta}\sum^n_{k=1}M_k=\frac{N_{n\Delta}}{n\Delta}\tag{\text{Ⅱ}}
\end{equation}
$$

Ⅰ,Ⅱ で得られた推定量を見比べると、どちらも

$$
\hat\lambda=\frac{\footnotesize\text{(イベントの総回数)}}{\footnotesize\text{(観測時間)}}
$$

となっている。<br>

いずれの推定量も、$n\rightarrow\infty$（ただし、$\Delta>0$ は固定）としたとき真値の $\lambda$ に収束し、漸近正規性や一致性を持つことが知られている。<br>

### 複合ポアソン分布

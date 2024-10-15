# 確率と確率変数

## 目次

- [確率と確率変数](#確率と確率変数)
  - [目次](#目次)
  - [確率変数](#確率変数)
    - [条件付き確率とベイズの定理](#条件付き確率とベイズの定理)
    - [確率変数と特徴量](#確率変数と特徴量)
  - [確率分布](#確率分布)
    - [累積分布関数と生存関数](#累積分布関数と生存関数)
    - [同時確率密度関数](#同時確率密度関数)
      - [- 離散確率変数](#--離散確率変数)
      - [- 連続確率変数](#--連続確率変数)
    - [母関数](#母関数)
      - [- 確率母関数](#--確率母関数)
      - [- モーメント母関数](#--モーメント母関数)
      - [- 特性関数](#--特性関数)
  - [離散型確率分布](#離散型確率分布)
    - [離散一様分布](#離散一様分布)
    - [超幾何分布](#超幾何分布)
    - [二項分布](#二項分布)
    - [多項分布](#多項分布)
    - [ポアソン分布](#ポアソン分布)
    - [幾何分布](#幾何分布)
    - [負の二項分布](#負の二項分布)
  - [連続型確率分布](#連続型確率分布)
    - [連続一様分布](#連続一様分布)
    - [正規分布とその派生](#正規分布とその派生)
      - [- 正規分布](#--正規分布)
      - [- 対数正規分布](#--対数正規分布)
      - [- 2変量正規分布](#--2変量正規分布)
      - [- 多変量正規分布](#--多変量正規分布)
      - [- 混合正規分布](#--混合正規分布)
    - [コーシー分布](#コーシー分布)
    - [指数分布](#指数分布)
    - [Gamma分布](#gamma分布)
    - [Weibull分布](#weibull分布)
    - [ベータ分布](#ベータ分布)
    - [パレート分布](#パレート分布)
  - [標本分布](#標本分布)
    - [$\\chi^2$ 分布](#chi2-分布)
      - [- 非心 $\\chi^2$ 分布](#--非心-chi2-分布)
    - [$t$ 分布](#t-分布)
      - [- 非心 $t$ 分布](#--非心-t-分布)
    - [$F$ 分布](#f-分布)
      - [- 非心 $F$ 分布](#--非心-f-分布)
  - [分布の特性値](#分布の特性値)
    - [- 位置の指標](#--位置の指標)
    - [- 散らばりの指標](#--散らばりの指標)
    - [モーメント](#モーメント)
      - [- 歪度と尖度](#--歪度と尖度)
      - [- モーメント](#--モーメント)
    - [同時分布の特性値](#同時分布の特性値)
      - [- 相関係数](#--相関係数)
      - [- 条件付き特性値](#--条件付き特性値)
    - [特性値の性質](#特性値の性質)
  - [変数変換](#変数変換)
    - [確率密度関数における変数変換](#確率密度関数における変数変換)
    - [確率変数の線型結合](#確率変数の線型結合)
    - [データの変換](#データの変換)
      - [- 対数変換](#--対数変換)
      - [- 冪乗変換・Box-Cox変換](#--冪乗変換box-cox変換)
      - [- ロジット変換・ロジスティック変換](#--ロジット変換ロジスティック変換)
    - [プロビット変換](#プロビット変換)
  - [漸近理論](#漸近理論)
    - [確率変数の収束](#確率変数の収束)
      - [- 大数の弱法則](#--大数の弱法則)
    - [確率分布の収束](#確率分布の収束)
      - [- ポアソンの少数の法則](#--ポアソンの少数の法則)
    - [中心極限定理](#中心極限定理)
    - [極値分布](#極値分布)
    - [分布収束の性質](#分布収束の性質)
      - [- デルタ法](#--デルタ法)

## 確率変数

### 条件付き確率とベイズの定理

$$
P(B|A)=\frac{P(A\cap B)}{P(A)},\ P(A)>0
$$

これを変形して

$$
P(A\cap B)=P(A)\times P(B|A)
$$

となることから、AとBが独立なとき、 $P(A\cap B)=P(A)\times P(B)$ が成り立つ。<br>
<br>

また、Aが原因となりBが起きる事象を考える。このとき、 $P(A)$ は事前確率、 $P(A|B)$ は事後確率と呼ばれる。<br>
<br>

$P(B|A)$ 、つまりAが原因となりBが起きた確率が分かっている場合、ベイズの定理

$$
\begin{align*}
P(A|B) 
&=\frac{P(A\cap B)}{P(B)} \\ &=\frac{P(B|A)P(A)}{P(B|A)P(A)+P(B|A^c)P(A^c)}
\end{align*}
$$

により事後確率を求めることが可能。<br>
<br>

全事象 $\Omega$ が排反事象 $A_1,\dots,A_k$ の和である場合

$$
\begin{align*}
\Omega=A_1\cup\dotsm\cup A_k \;,\quad 
& A_i\cap A_j=\emptyset \quad(i\neq j)
\end{align*}
$$

のとき、拡張した形として以下のように表される

$$
P(A_i|B)=
\displaystyle \frac{P(B|A_i)P(A_i)}{\sum^k_{j=1}P(B|A_j)P(A_j)}
$$

<br>

### 確率変数と特徴量

確率関数は、確率変数 $X$ が取りうる値 $x$ についての確率

$$
p(x)=P(X=x)
$$

と表される。このとき、 $X$ の期待値（平均値）は

$$
\mu={E[X]=\sum_x xp(x)}
$$

で定義され、 $X$ の関数 $g(X)$ の期待値は

$$
E[g(X)]=\sum_xg(x)p(x)
$$

特に、$g(x)=(x-\mu)^2$ を偏差の2乗として、 $X$ の分散は

$$
\begin{align*}
\sigma^2 =V[X]=E[(X-\mu)^2]
& =\sum_x(x-\mu)^2p(x) \\
& =E[X^2]-\mu^2
\end{align*}
$$

と表される。<br>
<br>

連続な確率変数の場合は、**確率密度関数** $f(x)$ を

$$
f(x)=\lim_{\varepsilon \rightarrow0}\frac{P(x<X\leq{x+\varepsilon})}\varepsilon
$$

と定義する。また、期待値と分散は

$$
\begin{align*}
&E[X]=\int^\infty_{-\infty}xf(x)dx \quad \, \\[10pt]
&V[X]=\int^\infty_{-\infty}(x-\mu)^2f(x)dx
\end{align*}
$$

で表される。

<br>

## 確率分布

### 累積分布関数と生存関数

確率変数  $X$ の累積分布関数は、以下で定義する。

$$
\begin{cases} 
&F(x)=P(X\leq x) \quad {\footnotesize\text{(連続確率変数の場合)}} \\[10pt] 
&{\displaystyle F(x)=\sum_{x\rq \leq x}{}p(x\rq) \quad\,\,\: {\footnotesize\text{(離散確率変数の場合)}}}
\end{cases}
$$

連続な確率変数の場合は、確率密度関数が $F(x)$ の微分 $\bm{f(x)=F^\prime(x)}$ で表される。<br>
<br>

離散的な場合は、確率関数は $\bm{p(x)=F(x)-F(x-) }\quad\text{where} \ F(x-)=\lim\limits_{x^\prime\uparrow x}F(x^\prime)$ 

が累積分布関数の不連続点での「とび」の大きさとして表される。<br>
<br>

確率変数 $X$ が寿命を表す場合、生存関数 $S(x)$ を時刻 $x$ にまだ生きている確率として、

$$
{S(x)=1-F(x)}
$$

と定義する。 $X$ が連続確率変数であるとき、

$$
\begin{align*} h(x)=\frac{f(x)}{S(x)}
&=\frac{f(x)}{1-F(x)} \\[10pt]
&=(-\log S(x))^\prime
\end{align*}
$$

をハザード関数とよぶ。

<br>

### 同時確率密度関数

#### - 離散確率変数

$X,Y$ を2つの離散確率変数とする。 $X, Y$ が同時に $(x, y)$ という値をとる確率を

$$
p(x,y)=P(X=x,Y=y)
$$

と表し、これを同時確率関数とよぶ。累積分布関数は

$$
F(x,y)=P(X\leq x,Y\leq y)=\sum_{\substack{x^\prime\leq x\\y^\prime\leq y}}p(x^\prime,y^\prime)
$$

と表される。

ここで、同時確率分布の $y$ について総和をとった場合、 $X$ の周辺分布が持つ周辺確率関数 $p_X(x)$ は

$$
p_X(x)=\sum_y p(x,y)
$$

と表される。<br>
<br>

周辺確率分布を用いて、 $X=x$ を所与としたときに $Y=y$ となる条件付き確率は、条件付き確率関数

$$
p_{Y|X}(y|x)=\frac{p(x,y)}{p_X(x)}
$$

により表される。

<br>

#### - 連続確率変数

$X,Y$ を2つの連続確率変数とする。 $F(x,y)=P(X\leq x,Y\leq y)$ を累積分布関数とすると、 $X,Y$ の同時確率密度関数 $f(x,y)$ は 

$F(x,y)$ を $x,y$ でそれぞれ偏微分して

$$
f(x,y)=\frac{\partial^2}{\partial x\partial y}F(x,y)
$$

で定義される。重積分により、求めたい領域の確率が長方形の面積として

$$
P(x_1\leq x\leq x_2,\ y_1\leq y\leq y_2)=\int^{x_2}_{x_1}\negthickspace\int^{y_2}_{y_1}f(x,y)\ dxdy
$$

で与えられる。<br>
<br>

$X$ の周辺確率密度関数と、 $X=x$ を所与としたときの $y$ の条件付き確率密度関数はそれぞれ

$$
f_X(x)=\int^\infty_{-\infty}\;f(x,y)dy\ ,\\f_{Y|X}(y|x)=\frac{f(x,y)}{f_X(x)}
$$

で与えられる。<br>
<br>

3つの確率変数 $X,Y,Z$ について

$$
f_{X,Y|Z}(x,y|z)=f_{X|Z}(x|z)f_{Y|Z}(y|z)
$$

が成り立つとき、 $Z=z$ を所与として $X$ と $Y$ は条件付き独立である。

<br>

### 母関数

#### - 確率母関数

離散値をとる確率変数 $X$ の確率関数を $p(x)$ とし、 $\forall s\in \R$ とするとき、 $X$ の確率母関数を

$$
G(s)=E[s^X]=\sum_xs^xp(x)
$$

と定義する。1を含むすべての $s$ に対して級数が収束すると仮定する。<br>
<br>

$G(s)$ を微分すると、 $G^\prime(s)=E[Xs^{X-1}],\ G^{\prime\prime}(s)=E[X(X-1)s^{X-2}]$ である。<br>
<br>

ここで $s=1$ とおくと、 $G^\prime(1)=E[X],\ G^{\prime\prime}(1)=E[X(X-1)]$ を得る。これより、$X$ の期待値と分散は

$$
\begin{align*} 
&E[X]=G^\prime(1) \\
&V[X]=G^{\prime\prime}(1)\ +G^\prime(1)-(G^\prime(1))^2
\end{align*}
$$

で与えられる。

<br>

#### - モーメント母関数

モーメント母関数は、確率母関数において $s=e^\theta$ とおいたものであり

$$
m(\theta)=G(e^\theta)=E[e^{\theta X}]
$$

で与えられる。<br>
<br>
モーメント母関数の定義の式より、 $m(\theta)$ を繰り返し微分して $0$ とおいた導関数は

$$
m^\prime(0)=\mu_1,\quad m^{\prime\prime}(0)=\mu_2,\\
\quad m^{\prime\prime\prime}(0)=\mu_3,\ \cdots
$$

となり、各次数のモーメントが求められる。<br>
<br>

$\bm{m(\theta)}$ がモーメントを生成することの証明<br>

<details><summary>
証明
</summary>
    
$e^{\theta X}$ のマクローリン展開

$$
e^{tX}=1+\theta X+\frac{(\theta X)^2}{2}+\frac{(\theta X)^3}{3!}+\ \cdots
$$

において、両辺の期待値をとると

$$
\begin{align*} m(\theta)&=1+\theta E[X]+\frac{\theta^2E[X^2]}{2}+\frac{\theta^3E[X^3]}{3!}+\ \cdots \\[10pt]
&=1+\mu_1\theta+\frac{\mu_2}2\theta^2+\frac{\mu_3}{3!}\theta^3+\ \cdots
\end{align*}
$$

となることから、これを微分すると低次の項は消え、 $t=0$ とおけば当該項を除く高次の項も消える。/

</details>

<br>

#### - 特性関数

モーメント母関数では、 $0$ を含む開区間のすべての $\theta$ について、 $m(\theta)$ の広義積分や級数が収束すると仮定した。<br>
<br>

この収束の問題を回避するために、 $\theta$ に純虚数 $it$ を代入した

$$
\phi(t)=m(it)
$$

を、特性関数とよぶ。<br>
<br>

## 離散型確率分布

### 離散一様分布

- 確率分布

    $$
    P(X=1)=\cdots=P(X=K)=\frac1K
    $$

- 期待値と分散

    $$
    \begin{align*}
    &E[X]=\frac{K+1}2 \\
    &V[X]=\frac{(K-1)^2}{12}
    \end{align*}
    $$

- 母関数

    $$
    G(s)=\frac{s(1-s^K)}{K(1-s)}
    $$

<br>

### 超幾何分布

非復元抽出により、AとBの2種類のものがそれぞれ $M$ 個と $N-M$ 個 、合計 $N$ 個ある中から $n$ 個ものを取り出す操作を考える。<br>
<br>

このとき、取り出されたAの個数を $X$ をすると、 $X$ は超幾何分布に従い $X\thicksim HG(N,M,n)$ と表す。<br>

- 確率分布

    $$
    \begin{align*}
    p(x)=\frac{{}_MC_x\ {}_{N-M}C_{n-x}}{{}_NC_n}\ ,\;max\{0,n+M-N\}\leq x\leq\min\{n,M\}
    \end{align*}
    $$

- 期待値と分散

    $$
    \begin{align*}
    &E[X]=n\frac MN=np \\[5pt]
    &V[X]=n\,\cdot\frac MN\left(1-\frac MN\right)\cdot\frac{N-n}{N-1}=np(1-p)\cdot\frac{N-n}{N-1}
    \end{align*}
    $$

    ここで、 $M/N=:p$ とした。

<br>

### 二項分布

確率 $p$ のベルヌーイ試行に対し、成功のとき $1$ をとり、失敗のとき $0$ をとるような確率変数 $X$ を考える。<br>
<br>

このとき、 $X$ は確率 $p$ のベルヌーイ分布にしたがい、 $X\thicksim Bin(1,p)$ と表す。<br>
<br>

$X_i\thicksim Bin(1,p),iid$ の和を $Y=X_1+X_2+\cdots+X_n$ とすると、 $Y$ は確率 $p$ の二項分布にしたがい、 $Y\thicksim Bin(n,p)$ と表される。<br>

- 確率関数

    $$
    \begin{align*}
    p(x)={}_n{\rm C}_x\ p^x(1-p)^{n-x}={}_n{\rm C}_x\ p^xq^{n-x}
    \end{align*}
    $$

    ここで、 $q=1-p$ とおいた。

- 期待値と分散

    $$
    \begin{align*}
    &E[X]=np \\
    &V[X]=npq
    \end{align*}
    $$

- 母関数

    $$
    G(s)=(ps+q)^n
    $$

<br>

### 多項分布

二項分布の一般化のため、 $K$ 個の結果が起こる試行を考える。<br>
<br>

$j$ 番目の結果 $(1\leq j\leq k)$ が起こる確率を $p_j,\kern{5pt} where\kern{5pt} p_j>0,\ p_1+p_2+\cdots+p_k=1$ とする。<br>
<br> 

独立な試行を $n$ 回行うとき、 $j$ が起こる回数を $X^{(j)}$ とする。このとき、 $X$ は多項分布に従い $X\thicksim M(n\,;\, p_1,p_2,\dots ,p_k)$ と表す。<br>

- 確率関数

    $$
    \begin{gather*}
    p(x^{(1)},\dots,x^{(k)})=\frac{n!}{x^{(1)}!\dots ,x^{(k)}!}p_1^{\ x^{(1)}}\cdots p_k^{\ x^{(k)}} \\[5pt]
    x^{(j)}\in\{0,1,\dots,n\}\ (1\leq j\leq k),\quad x^{(1)}+\cdots+x^{(k)}=n
    \end{gather*}
    $$

- 期待値と分散

    $$
    \begin{align*}
    &E[X^{(j)}]=np_j\ ,\kern{5pt} V[X^{(j)}]=np_j(1-p_j)\ \quad where\kern{5pt}j=1,\dots,k\\
    &Cov[X^{(j)},X^{(j^\prime)}]=-p_jp_{j^\prime}\ \quad where\kern{5pt}j\neq j^\prime
    \end{align*}
    $$

- 母関数

    $$
    G(s)=(p_1s_1+\cdots+p_ks_k)^n
    $$

<br>

### ポアソン分布

- 確率関数

    二項分布の確率関数において、 $np$ を $\lambda$ に固定し $n\rightarrow \infty\ (\therefore \ p=\lambda/n\rightarrow0)$ とした場合の極限として求められる。この時、

    $$
    \begin{equation*}
    P(X=x)=\sum^\infty_{x=0}\frac{\lambda^xe^{-\lambda}}{x!}\ ,\quad y=0,1,\dots
    \end{equation*}
    $$

    となり、この時 $X$はポアソン分布に従い $X \thicksim Po(\lambda)$ と表す。

- 期待値と分散

    ポアソン分布 $Po(\lambda)$ の期待値、分散は

    $$
    E[X]=\lambda\ ,\quad V[X]=\lambda
    $$

    確率母関数は

    $$
    G(s)=e^{\lambda(s-1)}
    $$

<br>

### 幾何分布

$Bin(1,p)$ を繰り返したとき、初めて成功するまでの失敗の回数を $X$ とする。  $X$ の分布を幾何分布といい、 $Geo(p)$ で表す。

- 確率関数

    $X \thicksim Geo(p)$ は $q=1-p$ を用いて

    $$
    P(X=x)=pq^{x}
    $$

    と表される

- 期待値と分散

    期待値、分散は

    $$
    E[X]=\frac qp\ ,\quad V[X]=\frac q{p^2}
    $$

- 母関数

    $Geo(p)$ の確率母関数は

    $$
    \begin{align*}
    G(s)
    &=E[s^X]=\sum^\infty_{x=0}s^xpq^x \\
    &=\frac p{1-qs}\ ,\quad |s|<\frac1q
    \end{align*}
    $$

<br>

なお、初めて成功するまでの試行回数 $W$ の分布として扱う場合もあり、その場合は $W=X+1$ の分布を考えれば良い。

<br>

### 負の二項分布

$Bin(1,p)$ の試行を繰り返し、 $r$ 回目の成功までに起こった失敗の回数を $X$ としたとき $X$ の分布を負の二項分布と呼び<br>

$X\thicksim NB(r,p)$ と表す。<br>

- 確率関数

    $$
    p(x)={}_r\mathrm H_x\ p^rq^x={}_{r+x-1}\mathrm C_x\ p^rq^x
    $$

    ここで、一般化された二項係数を用いて

    $$
    \begin{align*}
    {}_r\mathrm H_x
    &=\frac{r(r+1)\cdots(r+x-1)}{x!}=(-1)^x\frac{(-r)(-r-1)\cdots(-r-x+1)}{x!} \\[5pt]
    &=(-1)^x\binom{-r}{x}
    \end{align*}
    $$

    となるので、

    $$
    p(x)=(-1)^x\binom{-r}x\ p^rq^x
    $$

<br>

- 母関数および期待値と分散

    確率母関数は

    $$
    \begin{align*}
    G(s)
    &=\sum^\infty_{x=0}s^x(-1)^x\binom{-r}x\ p^rq^x=p^r\sum^\infty_{x=0}\binom{-r}x\ (-qs)^x \\[8pt]
    &=p^r(1-qs)^{-r}=\left(\frac p{1-qs}\right)^r\ ,\quad|s|<\frac1q
    \end{align*}
    $$

    したがって、期待値と分散は

    $$
    E[X]=\frac{rq}p\ ,\quad V[X]=\frac{rq}{p^2}
    $$

<br>

## 連続型確率分布

### 連続一様分布

$a<b$ を満たす $a,b$ に対し、確率密度関数

$$
f(x)= \begin{cases}
\displaystyle\frac1{b-a}\ & (a\leq x\leq b) \\[8pt]
\quad0 & (その他)
\end{cases}
$$

を持つ分布。 $X\thicksim U(a,b)$ と表す<br>

- 期待値と分散

    $$
    \begin{gather*}
    E[X]=\frac{a+b}2\ ,\quad V[X]=\frac{(b-a)^2}{12} \\[8pt]
    M(t)=\frac{e^{bt}-e^{at}}{(b-a)t}\, \quad -\infty<t<\infty
    \end{gather*}
    $$

<br>

### 正規分布とその派生

#### - 正規分布

- 確率密度関数
  
    実数 $\mu$ と $\sigma>0$ に対し、

    $$
    f(x)=\frac1{\sqrt{2\pi}\sigma}\exp\left(-\frac{(x-\mu)^2}{2\sigma^2}\right)
    $$

    を持ち、 $X\thicksim \mathcal{N}(\mu,\sigma)$ で表す。<br>
    <br>
    標準正規分布 $\mathcal N(0,1)$ にしたがう $Z$ の確率密度関数は $\phi(z)$ 、分布関数は $\Phi(z)$ で表す:

    $$
    \begin{align*}
    &\phi(z)=\frac1{\sqrt{2\pi}\sigma}\exp\left(-\frac{z^2}2\right)\    \,, \\
    &\Phi(z)=\int^\infty_{-\infty}\frac1{\sqrt{2\pi}\sigma}\exp\left(-\frac{z^2}2\right)dz
    \end{align*}
    $$

- モーメント母関数

    $$
    \begin{align*}
    M(t)=E[e^{tX}]
    &=\int^\infty_{-\infty}\frac1{\sqrt{2\pi}\sigma}\exp\left(-\frac{(x-\mu)^2-2\sigma^2tx}{2\sigma^2}\right)dx \\[8pt]
    &=\frac1{\sqrt{2\pi}\sigma}\int^\infty_{-\infty}\exp\left(-\frac{x^2-2(\mu+\sigma^2t)x+\mu^2}{2\sigma^2}\right)dx \\[8pt]
    &=\frac1{\sqrt{2\pi}\sigma}\exp\left(\frac{\mu^2+2\mu\sigma^2t+\sigma^4t^2-\mu^2}{2\sigma^2}\right)\int^\infty_{-\infty}\exp\left(-\frac{\{x-(\mu+\sigma^2t)\}^2}{2\sigma^2}\right)dx \\
    &=\exp\left(\mu t+\frac{\sigma^2t^2}2\right)
    \end{align*}
    $$

<br>

#### - 対数正規分布

$X\thicksim\mathcal{N}(\mu,\sigma^2)$ のとき、 $Y=e^X$ は対数正規分布にしたがう。<br>

- 確率密度関数

    $Y$ の逆関数は $x=\psi(y)=\log y$ なので、 $\phi(y)$ は

    $$
    \begin{align*}
    \phi(y)
    &=f(\psi(y))\frac{d\psi(y)}{dy}=f(\psi(y))\cdot\frac{1}{y} \\[8pt]
    &=\frac1{\sqrt{2\pi}\sigma_yy}\exp\left\{-\frac{(logy-\mu)^2}{2\sigma_y^2}\right\}\ ,\quad y>0
    \end{align*}
    $$

    と表せる。この分布を対数正規分布といい、 $\Lambda(\mu,\sigma^2)$ で表す。<br>

<br>

- 期待値と分散

    $k$ 次のモーメントは $E[e^{kX}]=E[Y^k]$ と表せることから、 $X$ のモーメント母関数における $t=k$ の値と等しい。

    すなわち、

    $$
    \begin{align*}
    &E[Y]=\exp\left(\mu+\frac{\sigma^2}2\right) \\[8px]
    &E[Y^2]=\exp(2\mu+2\mu^2) \\[4px]
    &E[Y^k]=\exp\left(\mu k+\frac{\sigma^2k^2}2\right)
    \end{align*}
    $$

<br>

#### - 2変量正規分布

- 確率密度関数

    $\bm X=(X_1,X_2)$ 、$\bm X=\mathcal{N}_2(\bm\mu,\Sigma)$ のとき、確率密度関数は

    $$
    \begin{equation*}
    f(x)=\frac1{2\pi\sigma_1\sigma_2\sqrt{1-\rho^2}}\exp{\left(-\frac1{2(1-\rho^2)}\left\{\left(\frac{x_1-\mu_1}{\sigma_1}\right)^2-2\rho\left(\frac{x_1-\mu_1}{\sigma_1}\right)\left(\frac{x_2-\mu_2}{\sigma_2}\right)+\left(\frac{x_2-\mu_2}{\sigma_2}\right)^2\right\}\right)}
    \end{equation*}
    $$

<br>

- 期待値と分散
  
    $X_1,X_2$ の周辺分布はそれぞれの1変量正規分布で表せる。<br>
    また、$X_1=x_1$ を所与とした $X_2$ の条件付き分布の密度関数を考慮すると、<br>
    <br>

    期待値と分散は

    $$
    \begin{align*}
    &E[X_2|X_1=x_1]=\mu_2+\frac{\sigma_2}{\sigma_1}\rho(x_1-\mu_1)=\mu_2+\frac{\sigma_{12}}{\sigma_1^2}(x_1-\mu_1) \\[8pt]
    &V[X_2|X_1=x_1]=\sigma_2^2(1-\rho^2)
    \end{align*}
    $$

<br>

#### - 多変量正規分布

- 確率密度関数
  
    $p$ 次元ベクトル $\bm\mu=(\mu_1,\mu_2,\dots,\mu_p)^T$ と $p\times p$ の正定値行列 $\displaystyle\Sigma$ に対し、確率変数ベクトル $\bm X=(X_1,X_2,\dots,X_p)^T$ は

    $$
    f(\bm x)=\frac1{(2\pi)^{{\small\frac{p}2}}|\Sigma|^{{\small\frac12}}}\exp{\left(-\frac12(\bm{x-\mu})^T\, \Sigma^{-1}(\bm{x-\mu})\right)}
    $$

    を持つ多変量正規分布にしたがう。このとき、 $X\thicksim\mathcal{N}_p(\bm\mu,\Sigma)$ と表される。

<br>

- モーメント母関数

    $$
    M(\bm t)=E[e^{\bm{tX}}]=\bm{\mu t}\ +\frac12\bm t^T\Sigma\bm t\ \quad t\in\R^p
    $$

<br>

#### - 混合正規分布

$j=1,2,\dots,k$ に対し、 ${\displaystyle f_j(x)=\frac1{\sigma_j}\varphi\left(\frac{x_j-\mu_j}{\sigma_j}\right)}$ を $\mathcal{N}(\mu_j,\sigma_j)$ の確率密度関数とする。<br>
<br>

このとき、確率密度関数

$$
\begin{gather*}
f(x)=p_1f_1(x)+\cdots+p_kf_k(x) \\[8pt]
\mathrm{where} \quad p_j>0,\quad p_1+\cdots+p_k=1 
\end{gather*}
$$

を持つ分布を1変量混合正規分布という。<br>

各正規分布を混合要素、 $p_1,\dots,p_k$ を混合係数という。

<br>

### コーシー分布

確率密度関数

$$
f(x)=\frac1{\pi(1+x^2)}
$$

を持つ分布。<br>

より一般に、位置母数 $\mu$ と尺度母数 $\sigma$ を導入した

$$
\frac1\sigma f\left(\frac{x-\mu}\sigma\right)=\frac1{\pi\sigma\left(1+\left(\frac{x-\mu}{\sigma}\right)^2\right)}
$$

をコーシー分布とする場合もある。

<br>

### 指数分布

$\lambda>0$ に対し、確率密度関数

$$
f(x)=\lambda e^{-\lambda x},\quad x>0
$$

を持つ分布。 $X\thicksim Exp(\lambda)$ で表す。<br>

- 期待値と分散

    $$
    \begin{gather*}
    E[X]=\frac1{\lambda}\ ,\quad V[X]=\frac1{\lambda^2} \\[8pt]
    M(t)=\frac\lambda{\lambda-t}=\left(1-\frac{t}\lambda\right)^{-1},\quad t<\lambda
    \end{gather*}
    $$

<br>

### Gamma分布

- 確率密度関数
  
    $a>0,b>0$ に対し、

    $$
    \begin{align*} 
    &f(x)=\frac{x^{a-1}}{\Gamma(a)b^a}\, e^{-\large{\frac xb}}\ \quad x>0,　\\[8pt]
    &{\rm where} \quad \Gamma(a)\coloneqq\int^\infty_0x^{a-1}e^{-t}dt
    \end{align*}
    $$

    のとき $X\thicksim Ga(a,b)$ と表される。

<br>

- 期待値と分散

    $$
    \begin{align*}
    &E[X]=ab\ ,\quad V[X]=ab^2 \\[8pt]  
      &\begin{aligned} &M(t)
    =\int^\infty_0\frac{x^{a-1}}{\Gamma(a)b^a}\, e^{{\large-\frac {(1-bt)}b}x} \\
    &=(1-bt)^{-a}\int^\infty_0\frac{x^{a-1}}{\Gamma(a)\left(\frac{b}{1-bt}\right)^a}\, e^{-{\large\frac {(1-bt)}b}x} \\[8pt]
    &=(1-bt)^{-a}\ ,\quad t<\frac1b
      \end{aligned}
    \end{align*}
    $$

<br>

### Weibull分布

- 確率密度関数

    $m>0,\ \eta>0$ に対し、

    $$
    f(x)=\frac{mx^{m-1}}{\eta^{m}}\exp{\left(\frac{x}{\eta}\right)^m}\ ,\quad x>0
    $$

<br>

$m,\ \eta$ はそれぞれ尺度母数、形状母数とよばれる。<br>

ハザード関数は $F(x)=1-e^{\left(\frac{x}{\eta}\right)^m}$ より

$$
h(x)=\frac{f(x)}{S(x)}=\frac{mx^{m-1}}{\eta^{m}}\quad{\rm where} 
\begin{cases}
h^\prime(x)<0 \quad \text{if m<1} \\[6pt]
{\displaystyle h(x)=\frac 1\eta} \quad \text{if m=1} \\[10pt]
h^\prime(x)>0 \quad \text{if m>1}
\end{cases}
$$

であり、 $h(x)$ が時間依存的な増加(IFR)または減少(DFR)、もしくは一定のいずれかをとる。

- 期待値と分散

    $$
    \begin{align*}
    &E[X]=\eta\Gamma\left(1+\frac1m\right) \\
    &V[X]=\eta^2\left(\Gamma\left(1+\frac2m\right)-\Gamma\left(1+\frac1m\right)^2\right)
    \end{align*}
    $$

<br>

### ベータ分布

$X\thicksim Be(a,b)$ で表される。

- 確率密度関数

    $a>0,b>0$ に対し、

    $$
    \begin{align*}
    &f(x)=\frac1{B(a,b)}x^{a-1}(1-x)^{b-1}, \quad 0<x<1 \\[8pt]
    &{\rm where} \quad
    B(a,b)\coloneqq\int^1_0t^{a-1}(1-t)^{b-1}dt
    \end{align*}
    $$

- 期待値と分散

    $$
    \begin{equation*}
    E[X]=\frac{a}{a+b}\ ,\quad V[X]=\frac{ab}{(a+b)^2(a+b+1)}
    \end{equation*}
    $$

<br>

### パレート分布

- 確率密度関数

    $a>0$ に対し、

    $$
    f(x)=\frac{a}{x_0}\left(\frac{x_0}x\right)^{a+1}\ ,\quad x>x_0
    $$

- 期待値と分散

    $$
    \begin{align*}
    &E[X]=\frac{ax_0}{a-1}\ ,\quad a>1 \\[8pt]
    &V[X]=\frac{ax_0^2}{a-2}-\left(\frac{ax_0}{a-1}\right)^2\ ,\quad a>2
    \end{align*}
    $$

<br>

## 標本分布

### $\chi^2$ 分布

$Z_i\thicksim\mathcal{N}(0,1)\quad i=1,\dots,n\quad i.i.d$ のとき、<br>

$X=Z_1^2+\cdots+Z_n^2\thicksim \chi^2(n)$ .

この変数 $X$ の確率密度関数は

$$
f(x)=\frac1{\Gamma\left(\frac n2\right)2^{\frac n2}}x^{\frac n2-1}e^{-\frac x2}
$$

と表される。<br>

これは $Ga(\frac n2,2)$ と一致することがしられる。

$\chi^2$ 分布 は、 $\mathcal{N}(\mu,\sigma^2)$ から得られる標本 $X_1,\dots,X_n$ の不偏分散 $s^2$ を用いて、次のように導出される：<br>

1. $\bar{X}$ と $s^2$ は独立
2. ${\displaystyle\frac{\bar{X}-\mu}{\sigma/\sqrt{n}}=\frac{\sqrt{n}(\bar{X}-\mu)}{\sigma}}\thicksim\mathcal{N}(0,1)$

3. ${\displaystyle(n-1)\frac{s^2}{\sigma^2}=\sum^n_{i=1}\left(\frac{X_i-\bar{X}}{\sigma}\right)^2\thicksim\chi^2(n-1)}$

<br>

- 期待値と分散

$$
\begin{gather*}
E[X]=n\ ,\quad V[X]=2n \\[8pt]
M(t)=(1-2t)^{-\frac n2}\quad t<\frac12
\end{gather*}
$$

#### - 非心 $\chi^2$ 分布

定義する正規分布を<br>

$Z_i\thicksim\mathcal{N}(\mu_i,1)\quad i=1,\dots,n\quad i.i.d$ とし、<br>

$\lambda=\mu_1^2+\cdots+\mu_n^2$ とおく。<br>
<br>

このとき、 $Y=Z_1^2+\cdots+Z_n^2$ は、非心度を $\lambda$ とすると<br>

$\chi^2(n,\lambda)$ にしたがう。

$$
\begin{gather*}
E[X]=n+\lambda\ ,\quad V[X]=2n+4\lambda \\[8pt]
M(t)=(1-2t)^{-\frac n2}\exp{\left(\frac{\lambda t}{1-2t}\right)}\quad t<\frac12
\end{gather*}
$$

<br>

### $t$ 分布

$Z\thicksim\mathcal{N}(0,1)\ ,\quad Y\thicksim\chi^2(n)$ <br>
のとき、これらが互いに独立であれば

$$
T=\frac{Z}{\sqrt{\frac Yn}}
$$

は $t$ 分布 $t(n)$ にしたがう。<br>

変数 $T$ の確率密度関数は

$$
f(t)=\frac{\Gamma\left(\frac{n+1}2\right)}{\sqrt{\pi n}\Gamma\left(\frac n2\right)}\left(1+\frac{t^2}n\right)^{-\frac{n+1}2},\ -\infty<t<\infty
$$

となる。<br>
<br>

正規分布を仮定した場合の検定において、<br>

$t$ 統計量は不偏分散 $s^2$ を用いて

$$
t=\frac{\sqrt{n}\bar{X}}{s}
$$

で求められる。<br>
<br>

$t$ 統計量は $\mu=0$ のとき $t(n-1)$ にしたがい、<br>

$\mu\neq0$ のとき $t(n-1,{\displaystyle\frac{\sqrt{n}\mu}\sigma)}$ にしたがう。<br>

これは、 $t$ 統計量を

$$
t=\frac{\frac{\bar{X}}{\sqrt{n}\sigma}}{\sqrt{\frac{(n-1)s^2}{\sigma^2}}/\sqrt{n-1}}
$$

と変形すればわかる。

<br>

- 期待値と分散

    $$
    \begin{equation*}
    E[X]=0\;\; (n>1)\, ,\quad V[X]=\frac{n}{n-2}\;\; (n>2)
    \end{equation*}
    $$

#### - 非心 $t$ 分布

定義において、正規分布を<br>

$Z\thicksim\mathcal{N}(\mu,1)$ としたとき、 $T$ がしたがう分布を非心度 $\lambda$ の $t$ 分布といい、 $t(n,\lambda)$ で表す。<br>
<br>

非心 $t$ 分布は、正規分布を仮定したときの分散が未知である帰無仮説 $\mu=0$ の検定における検出力として現れる。

<br>

### $F$ 分布

$Y_1\thicksim\chi^2(n_1),\;Y_2\thicksim\chi^2(n_2)$ <br>

で、これらが互いに独立なとき

$$
F=\frac{Y_1/n_1}{Y_2/n_2}
$$

は自由度 $(n_1,n_2)$ の$F$ 分布に従い、 $F(n_1,n_2)$ と表す。<br>
<br>

確率密度関数は

$$
\begin{align*} f(x)
&=\frac{n_1^{\frac{n_1}2}n_2^{\frac{n_2}2}}{B\left(\frac{n_1}2,\frac{n_2}2\right)}\cdot\frac{x^{\frac{n_1}{2}-1}}{(n_1x+n_2)^{\frac{n_1+n_2}2}} \\[10pt]
&=\frac1{B\left(\frac{n_1}2,\frac{n_2}2\right)}\cdot\frac{\left(\frac{n_1}{n_2}\right)^{\frac{n_1}2}x^{\frac{n_1}{2}-1}}{\left(\frac{n_1}{n_2}x+1\right)^{\frac{n_1+n_2}2}}
\end{align*}
$$

となる。<br>
<br>

2標本の標本分散の比の標本分布を考える際に $F$ 分布が現れる;

$\mathcal{N}(\mu_1,\sigma_1^2)$ 及び $\mathcal{N}(\mu_2,\sigma_2^2)$ の無作為標本から計算した不偏分散を $s_1^2\ ,s_2^2$ とすると

$$
\frac{s_1^2/\sigma_1^2}{s_2^2/\sigma_2^2}\thicksim F(n_1-1,n_2-1)
$$

<br>

- 期待値と分散

    $$
    \begin{equation*}
    E[X]=\frac{n_2}{n_2-2}\;\;(n_2>2),\quad V[X]=2\left(\frac{n_2}{n_2-2}\right)^2\frac{n_1+n_2-2}{n_1(n_2-4)}\;\;(n_2>4)
    \end{equation*}
    $$

#### - 非心 $F$ 分布

定義において、 $Y_1\thicksim\chi^2(n_1,\lambda)$ とした場合に $F$ がしたがう分布を、非心度 $\lambda$ の非心 $F$ 分布といい $F(n_1,n_2,\lambda)$ で表す。

これは回帰分析や分散分析における $F$ 検定の検出力として現れる。

<br>

## 分布の特性値

### - 位置の指標

確率変数 $X$ の確率密度関数 $f(x)$ における期待値、中央値、最頻値を次のように定義する。<br>
<br>

**期待値 :** $\quad\displaystyle{E[X]= \int^\infty_{-\infty}xf(x)\ dx}$

<br>

**中央値：** $P(x\leq a)=0.5$ となる $a$

<br>

**最頻値：** $\vphantom{{\huge a}\atop{a}}{f(x)}$ が最大となる $x$

<br>

一般に、右に裾が長い分布（右図）では **最頻値 $<$ 中央値 $<$ 期待値** となる傾向がある。

![image](images/probability-and-distribution/probability-and-distribution_241010_163222.png)

### - 散らばりの指標

散らばりの指標としては、分散（標準偏差）や四分位範囲が用いられる。それぞれ、次のように定義される。<br>
<br>

**分散 :** $\displaystyle{V[X]= \int^\infty_{-\infty}(x-\mu)^2f(x)\ dx}$

**標準偏差：** $\sqrt{V[X]}$ 

**最頻値：** $\vphantom{\huge a\atop a}{\{\ b\ |P(X\leq b)=0.75\}-\{\ c\ |P(X\leq c)=0.25\}}$ 

<br>

裾が長く、標準偏差が大きくなりやすい分布では四分位範囲が用いられることも多い。<br>

また、さらに細かい分位点を考えることもできる。

確率変数 $X$ の分布関数を $F_X(x)$ とする。このとき、<br>

$$
F^{-1}(\alpha)={\rm inf} \{\, x\, |\ F_X(x)\geq\alpha \}
$$

を $X$ の分位点関数という。<br>

第一四分位点と第三四分位点は、それぞれ<br>

$F^{-1}(0.25)$ と $F^{-1}(0.75)$ に対応する。<br>
<br>

非負値の散らばりの指標として**変動係数** $(c.v)$ も用いられる。<br>

これは標準偏差を期待値について標準化した指数であり、 $\sqrt{V[X]}/{E[X]}$ で定義される。<br>

変動係数は単位を持たないので、単位や水準の異なるデータの比較に適している。<br>

<br>

### モーメント

#### - 歪度と尖度

確率分布の指標として、期待値 $E[X]$ や分散 $V[X]$ が分かれば分布の様子はある程度予測できる。<br>

しかし、”位置” や”ばらつき” によって分布の形は一通りに定まらない。<br>

まず、分布の”非対称性”の指標として

$$
\mu_3=\frac{E[X-\mu]^3}{\sigma^3}
$$

が用いられ、これを $X$ の確率分布の**歪度**とよぶ。<br>

歪度と分布の形との関係を右図に示す。<br>

![curtosis](images/probability-and-distribution/probability-and-distribution_241010_164102.png)

<br>

一方、

$$
\mu_4=\frac{E[X-\mu]^4}{\sigma^4}
$$

は中心部分の尖り具合を表し、正規分布では $\mu_4=3$ である。<br>

一般的には、正規分布と比較して $\mu_4-3>0$ の場合は尖っており、 $\mu_4-3<0$ の場合は丸く鈍い形となる。

<br>

以上のことから、確率分布の形は $E[X-\mu]^r$ なる量で定まることがわかる。<br>

<br>

#### - モーメント

一般に、 $r$ 次のモーメント $\mu_r$ および期待値周りのモーメント $\mu^\prime_r$ はそれぞれ

$$
\mu_r=E[X]^r \qquad \mu^\prime_r=E[X-\mu]^r
$$

で得られる。また、

$$
\alpha_r=E[(X-\mu)/\sigma]^r
$$

を、 $r$ 次の標準化モーメントとよぶ。<br>

<br>

### 同時分布の特性値

#### - 相関係数

2つの確率変数 $X$ と $Y$ の関係を表す概念が相関である。<br>

相関を表す指標に、共分散や相関係数がある。<br>

<br>

共分散と相関係数はそれぞれ次のように定義される。

$$
\begin{align*}
&Cov[X,Y]=E[(X-\mu_X)(Y-\mu_Y)=E[XY]-\mu_X\mu_Y \\[8pt]
&\rho[X,Y]=E\left[\left(\frac{X-\mu_X}{\sigma_X} \right)\left(\frac{Y-\mu_Y}{\sigma_Y}\right) \right]=\frac{Cov[X,Y]}{\sigma_X\sigma_Y}
\end{align*}
$$

また、2つの確率変数に共通して別の確率変数 $Z$ が影響を与えている場合、 $X$ と $Y$ の相関が強くなる場合がある。これを**擬似相関**という。<br>

<br>

このとき、 $X$ と $Y$ から $Z$ の変数の影響を除いた**偏相関係数**は次のように定義される。

$$
\begin{equation*}
\rho[X,Y|Z]=\frac{\rho[X,Y]-\rho[X,Z]\rho[Y,Z]}{\sqrt{(1-\rho[X,Z]^2)(1-\rho[Y,Z]^2)}}
\end{equation*}
$$

#### - 条件付き特性値

$X$ を所与としたときの $Y$ の**条件付き期待値**及び**条件付き分散**を、次のように定める。

$$
\begin{align*}
&E[Y|X]=\int^\infty_{-\infty}yf_{Y|X}(y|x)dy \\[10pt]
&V[Y|X]=E[Y^2|X]-(E[Y|X])^2
\end{align*}
$$

<br>

### 特性値の性質

それぞれの特性値について性質を以下に述べていく。<br>

<br>

期待値に関し、確率変数 $X,Y$ と定数 $a,b,c$ について

$$
E[aX+bY+c]=aE[X]+b[Y]+c
$$

また、 $X$ と $Y$ が独立ならば

$$
E[XY]=E[X]E[Y]
$$

<br>

分散に関して、以下の性質が成り立つ。

$$
\begin{align*}
&V[aX+b]=a^2V[X] \\[8pt]
&V[X\pm Y]=V[X]+V[Y]\pm 2Cov[X,Y]
\end{align*}
$$

また、 $X$ と $Y$ が独立ならば

$$
V[X\pm Y]=V[X]+V[Y]
$$

<br>

条件付き期待値に関して、

$$
E[E[X|Y]]=E[X]
$$

（繰り返し期待値の法則）が成り立つ。

また分散について

$$
V[X]=E[V[X|Y]]+V[E[X|Y]]
$$

が成り立つ。<br>

<br>

## 変数変換

### 確率密度関数における変数変換

連続型確率変数 $X$ の確率密度関数を $f(x)$ とする。<br>

<br>

新たな確率変数 $Y=g(X)$ の確率密度関数を考えたい。<br>

このとき、 $Y=g(x)$ の逆関数を $X=g^{-1}(y)$ とすると

$$
y=f(g^{-1}(y))\left|\frac{dg^{-1}(y)}{dy}\right|
$$

として $y$ の確率密度関数が与えられる。<br>

続いて、2変数 $(X,Y)$ の確率密度関数を $f(x,y)$ とする。<br>

<br>

新たな2変数 $(Z,W)=(u(X,Y),v(X,Y))$ の変数変換について考える。<br>

ただし、逆変換 $(X,Y)=(s(Z,W),s(Z,W))$ 
があるものとする。このとき、 $(Z,W)$ の確率密度関数は

$$
(z,w)=f(s(z,w),t(z,w))\ \cdot|J(s(z,w),t(z,w))|
$$

で与えられる。ただし、ヤコビアンは

$$
J(s(z,w),t(z,w))=\frac{\partial(s(z,w),t(z,w))}{\partial(z,w)}=
{\Large\begin{vmatrix}
\frac{\partial s(z,w)}{\partial z} & \negthickspace\frac{\partial s(z,w)}{\partial w} \\[10pt]
\frac{\partial t(z,w)}{\partial z} & \negthickspace\frac{\partial t(z,w)}{\partial w}
\end{vmatrix}}
$$

と計算する。

### 確率変数の線型結合

2つの独立な確率変数 $X,Y$ の線型結合 $aX+bY$ の分布を考えるには、次の方法が可能である。<br>

1. モーメント母関数を用いて、 $\bm{E[e^{\theta(aX+bY)}]=E[e^{a\theta X}]E[e^{b\theta Y}]}$ が既知の母関数の形になるか調べる
2. 変数変換 $\bm{Z=aX+bY,\ W=Y}$ を考え、 $(Z,W)$ の分布を求める

<br>

ここでは、**2.** の方法について述べる。<br>

<br>

この変数変換における逆変換は $(X,Y)=(Z/a-bW/a,\ W)$ であり、ヤコビアンは

$$
 J(X,Y)={\large\begin{vmatrix}
\frac{\partial(Z/a-bW/a)}{\partial Z} & \negthickspace\frac{\partial(Z/a-bW/a)}{\partial W} \\[8pt]
\frac{\partial W}{\partial Z} & \negthickspace\frac{\partial W}{\partial W}
\end{vmatrix}}
=\begin{vmatrix}
1/a & b/a \\
0   & 1
\end{vmatrix}
=\frac1{|a|}
$$

<br>

$X,Y$ の確率密度関数をそれぞれ $f_X(x),f_Y(y)$ とすると、 $(Z,W)$ の確率密度関数は

$$
(z,w)=\frac1{|a|}f_X\left(\frac za-\frac{bw}a\right)f_Y(w)
$$

となる。ここで、 $w$ について和をとることで、 $z$ の周辺確率密度関数

$$
f_Z(z)=\int^\infty_{-\infty}\frac1{|a|}f_X\left(\frac za-\frac{bw}a\right)f_Y(w)dw
$$

を得る。

### データの変換

ここでは、いくつかのデータ変換法を紹介する。<br>

#### - 対数変換

一般に、さまざまな誤差が積み重なって得られるデータは正規分布に従う。<br>

<br>

一方、積が積み重なることで得られるデータは、対数をとることで正規分布に従う。<br>

このような変換を対数変換という。

例えば回帰分析において、非負値の目的変数データに対して対数変換を行う。すると、<br>

$-\infty$ から $\infty$ の値をとるデータに変換することができる。<br>

<br>

#### - 冪乗変換・Box-Cox変換

正規分布に従うようにするための変換として、羃乗変換 $x\rightarrow x^a$ も用いられる。<br>

<br>

対数変換・ベキ乗変換をまとめた変換として Box-Cox変換がある。<br>

Box-Cox変換では、パラメータ $\lambda$ に対し、

$$
\begin{cases}
{\displaystyle\frac{x^\lambda-1}\lambda} & (\lambda\neq0) \\[6pt]
\;\;\log x & (\lambda=0)
\end{cases}
$$

と表現する。<br>

<br>

#### - ロジット変換・ロジスティック変換

確率のような $0$ から $1$ しか値をとらない変数を $-\infty$ から $\infty$ に変換する方法として、ロジット変換  $\displaystyle\log\frac p{1-p}$ がある。<br>

この変換後の式を $x$ の線型回帰式 $a+bx$ で表すのがロジスティック回帰である。<br>

<br>

$p$ についての逆変換  $\displaystyle\frac 1{1+e^{-(a+bx)}}$ をロジスティック変換という。<br>

<br>

### プロビット変換

$0$ から $1$ の間でしか値をとらない変数を $-\infty$ から $\infty$ に変換するもう一つの方法として、プロビット変換がある。<br>

これは、変数を標準正規分布の累積分布関数 $\displaystyle\Phi(x)=\int^x_{-\infty}\frac1{\sqrt{2\pi}}e^{\frac{-t^2}2}dt$ の逆関数 $\Phi^{-1}(x)$ を用いて変換する方法である。<br>

<br>

## 漸近理論

### 確率変数の収束

確率変数列 $\{X_n\}$ が確率変数$Y$ に概収束するとは

$$
P\left(\lim_{n\rightarrow \infty}X_n=Y\right)=1
$$

が成り立つことと定義される。<br>

厳密にはこれは測度論を必要とするため、以下の確率収束を用いる：

$\{X_n\}$ が$Y$ に確率収束することを、 $\varepsilon>0$ に対して

$$
\lim_{n\rightarrow\infty}P(|X_n-Y|>\varepsilon)=0
$$

と定義する。<br>

**概収束する確率変数列は確率収束する**。

$\{X_n\}$ が $Y$ に平均二乗収束することを、

$$
\lim_{n\rightarrow\infty}E[(X_n-Y)^2]=0
$$

が成り立つことと定義する。<br>

**チェビシェフの不等式**より、平均二乗収束する確率変数列は確率収束する。<br>

- チェビシェフの不等式

    $$\begin{align*}
    &P(|X| \ge \varepsilon) \le \frac{E[|X|^2]}{\varepsilon^2} \quad a.s., \\
    &P(|X-\mu| \ge k\sigma) \le \frac1{k^2} \quad a.s.
    \end{align*}$$

    ここで、 $\varepsilon=k\sigma$ とする。

<br>

<details>
<summary>チェビシェフの不等式の証明</summary>

<br>

1. マルコフの不等式を使った証明

2. 測度論的証明

</details>

<br>

#### - 大数の弱法則

$\{X_n\}$ は独立同一分布に従うとする。<br>

その平均と分散が $\mu,\sigma^2$ であるとき、$X_1,\dots,X_n$ の標本平均

$$
\bar{X_n}=\frac1n\sum^n_{i=1}X_i
$$

は $n\rightarrow\infty$ のもとで $\mu$ に平均二乗収束する。これは、

$$
\lim_{n\rightarrow\infty}E[(\bar{X_n}-\mu)^2]=V[\bar{X_n}]=\frac{\sigma^2}n\rightarrow0\quad (n\rightarrow\infty)
$$

から明らか。<br>

<br>

### 確率分布の収束

$\{X_n\}$ の分布関数を $F_n(x)=P(X_n\leq x)$ と表す。<br>

$\{X_n\}$ が確率分布 $G$ に**分布収束**（**法則収束**）するとは

$$
\lim_{n\rightarrow\infty}F_n(x)=G(x)
$$

が $G$ の全ての連続点で成り立つことと定義する。（分布の収束）<br>

<br>

#### - ポアソンの少数の法則

$p(x)={}_n\mathrm C_x\left(\frac\lambda n\right)^x\left(1-\frac\lambda n\right)^{n-x}$ は $n\rightarrow\infty$ のとき

$$
\lim_{n\rightarrow\infty}p(x)=\frac{\lambda^x}{x!}e^{-\lambda}
$$

と収束する。つまり、$X_n$ はポアソン分布に分布収束する。<br>

<br>

### 中心極限定理

$\{X_n\}$ は平均 $\mu$ 、分散 $\sigma^2$ の独立同一分布に従うと仮定する。また、$X_i\quad i=1,\dots,n$ の標本平均を $\bar{X_n}$ とする。<br>

このとき、$\sqrt{n}(\bar{X_i}-\mu)$ は$\mathcal{N}(\mu,\sigma^2)$ に従う。<br>

<details>
<summary>中心極限定理の証明</summary>

1. ピアソン・ラプラスの定理

2. モーメントを使った証明

</details>

<br>

### 極値分布

最大・最小値が従う分布、その極限のことを極値分布という。

### 分布収束の性質

1. $X_n$ が $X$ に分布収束し、かつ $h$ が連続関数であれば $h(X_n)$ は $h(X)$ に分布収束する。<br>これを**連続写像定理**という。

2. $X_n$ が $X$ に分布収束し、かつ $Y$ が定数 $c$ に確率収束するならば $X_n+Y_n$ 及び $X_nY_n$ はそれぞれ $X+c$ および $cX$ に分布収束する。<br>これを**スルツキーの補題**とよぶ。

3. $X_n$ のモーメント母関数が $M_n(t)=E[e^{tX_n}]<\infty$ で、 $X$ のモーメント母関数が $M(t)=E[e^{tX}]<\infty$ であるとする。<br>このとき各実数 $t$ に対し $M_n(t)\rightarrow M(t)$ が成り立つならば $X_n$ は $X$ に分布収束する。<br>

<br>

#### - デルタ法

$\{X_n\}$ は平均 $\mu$ ,分散 $\sigma^2$ の独立同一分布に従うと仮定する。<br>

$f(x)$ が連続微分可能であれば、テイラーの定理から

$$
f(\bar{X_n})-f(\mu)\approx f^\prime(\mu)(\bar{X_n}-\mu)
$$

中心極限定理から、$f^\prime(\mu)(\bar{X_n}-\mu)$ は $\mathcal{N}(0,f^\prime(\mu)^2\sigma^2)$ に分布収束する。<br>

<br>

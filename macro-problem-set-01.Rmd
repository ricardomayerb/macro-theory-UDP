Problem Set 1
========================================================

## Exercise 1: Solow-Swan's differential equation

Let's solve, for the Cobb-Douglas case, the differential equation that describes the dynamics of (per capita) capital accumulation. If the production function is given by $Y_t = A K_t^\alpha L_t^{1-\alpha}$, and in per capita terms by $y_t = A k_t^{\alpha}$, then the DE is :

$$
\begin{equation}\label{kdiffeq}
\dot{k}_t = s k_t^{\alpha} - (n + \delta) k_t
\end{equation}
$$


1. Put the DE in standard form: $\frac{d y}{d x} + P(x) y = Q(x)$.


2. Solve the equation in standard form, using the Integrating Factor technique that you saw in class.


3. Transform your solution to give a solution for $k_t$.

## Exercise 2: Cobb-Douglas production functions with either labor augmenting , capital augmenting or neutral productivity.

1. Simple: write all three versions of the C-D function. Use $A$ for neutral productivity, $B$ for labor augmenting productivity and $C$ for the capital augmenting one. 

2. Show that both $B$ and $C$ can be written as one-to-one functions of $A$. 

## Exercise 3: FOCs in a CES with many inputs

1. **Discrete case**. Let $P$ be the price of output and $P_i$ the prices of each input. Show that, if the production function is given by,

\[
Y = N \left( \frac{1}{N} \Sigma_{i=1}^{N} X_i^\eta \right)^{1/\eta} 
\]

the profit maximization implies
\[
\frac{N X_i}{Y} = \left( \frac{P_i}{P}  \right)^{-1/(1-\eta)} 
\]

1. **Continuum case**. Let $P$ be the price of output and $P_i$ the prices of each input. Show that, if the production function is given by,

\[
Y = N \left( \int_0^1 X_i^\eta \right)^{1/\eta} 
\]

the profit maximization implies
\[
\frac{X_i}{Y} = \left( \frac{P_i}{P}  \right)^{-1/(1-\eta)} 
\]

## Exercise 4: conditioning and marginalizing 

+ 4.1 Write down bayes rule for $f_{X|Y}(x|y)$ 
+ 4.2 Write down bayes rule for $f_{X|Y,Z}(x|y,z)$, maintaining the conditioning on $Z=z$.
+ 4.3 Show how  can you obtain $f(x,y)$ using only $f(x,y,z$) or using together $f_{Y,X|Z}(x,y|z)$ and $f_{Z}(z)$. 
+ 4.4 Suppose that $x$ and $y$ have a joint distribution that is uniform. The support of the joint distribution is given by $\{(x,y): x \in (0,y), y \in (0,1)\}$.
   - Draw a diagram showing the support of $f(x,y)$.
   - You already know the joint is uniform (thus, a constant). Find out what is proper constant height of the joint.
   - Find the marginal density  $f_X(x)$.
   - Find the conditional density $f_{Y|X}(y|x)$ 



## Exercise 5: Chain rule
+ Let $z_t := Ln Z_t$ be a function of $Z_t$, and let $Z_t$ be a function of time, $t$. Use the chain rule to obtain an expression for $\dfrac{\partial z_t}{\partial t}$ in terms of $Z_t$ and $\dot{Z}_t$.
+ Let $y=f(z)$, $z=h(x)$. Use the chain rule to obtain an expression for  $\dfrac{\partial y}{\partial x}$
+ Let $y=f(z)$, $z=(z_1,z_2,z_3)$, $z_i=h(x)$, $x=(x_1,x_2)$. Use the chain rule to obtain an expression for  $\dfrac{\partial y}{\partial x_2}$.

# Exercise 6: Difference and differential stability

- Consider the matrix $A$, below:
$$
A = \begin{bmatrix} 1 & 2 \\ 3 & 4 \end{bmatrix}
$$
   + Write down the characteristic polynomial of matrix $A$: 

   + Find the eigenvalues of $A$ using the characteristic equation
   
- Consider the system of equations on $(\dot{\aleph}_t, \dot{\pi}^e_t)$ that appear in Chapter 2, section 2.5.
    + Write it in matrix form
    + Write the characteristic polynomial
    + Write the solutions to the characteristic equations
    
- What is the condition for the local stability of the steady state in a system of differential equations?

- What is the condition for the local stability of the steady state in a system of difference equations?



# Exercise 7: Summation and lag operators.
+ If $|\beta|<1$ what is the value of $\sum_{i=0}^\infty \beta^i$
+ Let $\mathcal{L}$ be the lag operator. If $|\lambda|<1$ what is the value of $\sum_{i=0}^\infty (\lambda \mathcal{L})^i = \sum_{i=0}^\infty \lambda^i \mathcal{L}^i$ ?
+ If $|\mu|<1$ what is the value of $\sum_{i=0}^\infty (\mu \mathcal{L}^{-1})^i = \sum_{i=0}^\infty \mu^i \mathcal{L}^{-i}$ ?
+ Why $\dfrac{D z_t}{1 -\mu \mathcal{L}^{-1}} = \sum_{j=0}^{\infty} D \mu^{j} E_t[z_{t+j}]$ ? 

Mathematical Notes, Week 1
========================================================

## ODEs, part I: linear f.o. ODEs and integrating factors

Standard form:

$$
\begin{equation}\label{folstandardform}
\frac{d y}{d x} + P(x) y = Q(x)
\end{equation}
$$

Intregratin factor: $IF := e^{\int P(x) dx}$. Use it to multiply both sides of the equation.


### Example 1

$$
\begin{equation}\label{odeexample1}
\frac{dy}{dx} + y = x, \qquad y(0)=0
\end{equation}
$$

Here $P(x)$ is simply 1, then $IF=e^{\int 1 dx} = e^{x}$, so the equation becomes

$$
\begin{align*}
\frac{dy}{dx} e^{x} + e^{x} y = & x e^{x} \\
\frac{d \left(y e^{x} \right)}{dx}   = & x e^{x} \\
\int \frac{d \left(y e^{x} \right)}{dx} dx   = & \int x e^{x} dx \\
y e^{x}    = & \int x e^{x} dx \\
y e^{x}    = &   e^{x} x - e^{x} + C \qquad \text{(integration by parts)} \\
y(x) = &   x - 1 + C e^{-x}  \\
\end{align*}
$$

That's the general solution. Next, we find the particular solution implied by $y(0)=0$:

$$
 y(0) = 0 - 1 + C e^{-0} = -1+C = 0  
$$
which implies that $C=1$ and therefore $y(x) =   x - 1 +  e^{-x}$ is our particular solution.

### Example 2

$$
\begin{equation}\label{odeexample2}
\frac{dy}{dx} + y = e^{-x}, \qquad y(0)=1
\end{equation}
$$

This has the same P(x) and hence the same integrating factor $IF=e^{x}$. So we proceed this way:
$$
\begin{align*}
\frac{dy}{dx} e^{x} + e^{x} y = & e^{-x} e^{x} \\
\frac{d \left(y e^{x} \right)}{dx}   = &  1 \\
\int \frac{d \left(y e^{x} \right)}{dx} dx   = & \int 1 dx \\
y e^{x}    = &   x + C  \\
y(x) = &   x e^{-x} + C e^{-x}  \\
\end{align*}
$$

Now, for the particular solution:
\[
y(0) =  0 e^{-0} + C e^{0} = C =1
\]
therefore the particular solution becomes $y(x) =   x e^{-x} +  e^{-x}$

### Example 3

$$
\begin{equation}\label{odeexample3}
x \frac{dy}{dx} + 2 y = 10 x^2, \qquad y(1)=3
\end{equation}
$$

First, get it to standard form
\[
 \frac{dy}{dx} + \frac{2}{x} y = 10 x
\]
where $P(x)=\frac{2}{x}$ . The integrating factor is $IF = e^{2 \int \frac{1}{x} dx } =  e^{2 \ln(x)}=e^{ \ln(x^2)}= x^2$. Let's find the general solution:

$$
\begin{align}
x^2 y = & \int x^2 10 x dx  \\
x^2 y = & 10 \frac{1}{4} x^4  \\
x^2 y = & \frac{10}{4} x^4 + C \\
y = & \frac{5}{2} x^2 + C x^{-2}
\end{align}
$$
Finally the particular solition implied by $y(1)=3$:
\[
y(1) = \frac{5}{2} + C = 3 \Rightarrow C = \frac{1}{2}
\]
therefore
\[
y = \frac{1}{2}(5 x^2 + x^{-2})
\]

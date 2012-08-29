# Macroeconomic Theory

###Southern Spring 2012 

- Week 3: 

- Rational Expectations

- Follows Chapter 3 of Benassy

- First version: 2012/08/28, this version: 2012/08/28


# Revisiting Chapter 2

- $p^e_t := E_{t-1} p_t$

- $p_t = y^* - E_{t-1}m_t$

- $y_t  = y^*  + \frac{\xi}{1+\xi} (m_t - E_{t-1}m_t) + \frac{\xi}{1+\xi} \epsilon_t$

- Optimal monetary policy cannot do better on average than $y^*$

- Stabilizing policy should try to be predictable

# Muth 1961

- Demand: $D_t = a - b p_t + \epsilon_t$

- Supply: $S_t = cp^e_t$

- Market equilibrium: $cp^e_t =  a - b p_t + \epsilon_t$

- naive expectations: $p^e_t = p_{t-1}$

- rational expectations: $p^e_t = E_{t-1} p_t$

# Muth model 1961: naive expec

- $p_t = \dfrac{ a - c p_{t-1} + \epsilon_t}{b}$

- Cobweb dynamics. Explosive if $c>b$

- Non explosive solution with $c<b$:
$$
p_t = \frac{a}{b+c} + \frac{1}{b} \Sigma_{i=0}^{\infty} \left( - \frac{c}{b} \right) \epsilon_{t-i}
$$

- price in $t$ depends on *all* shocks, present and past.

# Muth model 1961: rational expectations

- What is $E_{t-1}p_t$? Apply lagged expectation to market equilibrium:
$$
cp^e_t =  a - b p^e_t 
$$

- $p^e_t = \dfrac{a}{b+c}$ 

- $p_t = \dfrac{a}{b+c} + \dfrac{\epsilon_t}{b}$. Only current shock matters.

- Stable, even if $c>b$

# Expectations and stability: Cagan model, original

- $m_t^d - p_t = -\alpha \pi_t^e$ and $m_t - p_t = -\alpha \pi_t^e$, by market equilibrium

- Monetary policy: $m_t = \mu$

- Differentiating, gives
$$
\alpha \dot{\pi}_t^e = \pi_t - \mu 
$$
  

- Adaptative expec in Cagan's model:  $\dot{\pi}_t^e = \vartheta (\pi_t - \pi_t^e)$

# Original CM, contd

- $\pi_t = \dfrac{\mu - \alpha \vartheta \pi^e_t}{1-\alpha \vartheta}$

- $\dot{\pi}_t^e = \dfrac{\vartheta}{1-\alpha \vartheta} (\mu - \pi_t^e)$

- $\dot{\pi}_t = -\dfrac{\vartheta}{1-\alpha \vartheta} (\pi_t -\mu)$. Steady state is $\mu$

- Inflation will converge to $\mu$ if $\alpha \vartheta < 1$. Otherwise diverge. Hyperinflation.

# Cagan a la Sargent \& Wallace

- $-\alpha \dfrac{d p_t}{t} = m_t - p_t$ can be rewritten as 
$$
\frac{d \left( e^{- t/\alpha}  ~ p_t \right)}{d t} = - \frac{1}{\alpha} e^{-t/\alpha} m_t
$$

- This integrates to 
$$
e^{-t/\alpha} p_t - p_0 =  - \frac{1}{\alpha} \int_0^t e^{-s/\alpha} m_s ds
$$

# Cagan a la Sargent \& Wallace, 2

- $$
 p_t  = e^{t/\alpha} \left[ p_0 - \frac{1}{\alpha} \int_0^t e^{-s/\alpha} m_s ds\right]
$$

- $$
 p_0  =  \frac{1}{\alpha} \int_0^\infty e^{-s/\alpha} m_s ds
$$

- $$
 p_t  =  \frac{1}{\alpha} \int_t^\infty e^{-(s-t)/\alpha} m_s ds
$$

# Cagan a la Sargent \& Wallace, 3

- Experiment: at date $t_0$ is announced that money will jump from $M_0$ to $\delta M_0$ with $\delta>1$. This new policy will start at date $t_0 + \theta$. What is the evolution of aggregate price level?

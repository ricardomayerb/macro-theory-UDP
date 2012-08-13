#Macroeconomic Theory

###Southern Spring 2012 

- Week 2: 

- Output, inflation and stabilization

- static models: K-cross, IS-LM, AD-AS

- First version: 2012/08/12, this version: 2012/08/12


#Undergrad staples

- Keynesian cross: all dependencies are on $Y_t$

- IS-LM: Adds real interest rate as an AD's determinant

- AD-AS: relax fixed aggregate price, maintains fixed *nominal* wages.

- Declining real wages imply positive slope of AS curve. 

- Declining real balances negative slope for AD curve


#Phillips Curve

- We need to look at the evolution of wages

- Phillips 1958: stable relation between (log)wage increases and level of unemployment:
   $$
   \dot{w}_t = \Phi(u_t), \quad \Phi(u^{*}) = 0, \quad \Phi' < 0
   $$
   
- $u^{*} > 0$. Why? Known as NIRU or NRU. 

- Practice drawing an $(x,y)$ diagram with $(u, \dot{w})$.

- Friedman and Phelps:
   $$
   \dot{w}_t = \pi_{t}^{e} +  \Phi(u_t), \quad \Phi(u^{*}) = 0
   $$

#Phillips Curve + AD-AS
- variables in logs
- AD: $y_t = m_t - p_t \quad$, and AS: $y_t = \xi (p_t - w_t)$
- Phillips-F-P + Okun : $\dot{w}_t =  \pi_{t}^{e} +  \phi(y_t - y^*)$
- Monetary "policy": $\dot{m}_t = \mu$
- Cagan-type expectations: $\dot{\pi}_{t}^{e} = \vartheta (\dot{p}_t - \pi_{t}^{e})$
- SS: $y_t = y^*$   and  $\dot{p}_t =\pi_{t}^{e} = \dot{w}_t=\mu=\pi^*$
- $\aleph_t := m_t - w_t$ and in SS $\aleph^* = \frac{(1+\xi)y^*}{\xi}$

#PC,AD,AS dynamics
- $p_t = \frac{m_t + \xi w_t}{1+\xi} = m_t - \frac{\xi \aleph_t}{1+\xi}$.
- $y_t = \frac{\xi(m_t - w_t)}{1+\xi} = \frac{\xi \aleph_t}{1+\xi}$.
- form a two dimensional system in $(\aleph_t, \pi_t^e)$
- $\dot{\aleph_t} = \dot{m}_t - \dot{w}_t = -(\pi_t^e - \pi^*) -  \frac{\phi \xi }{1+\xi} (\aleph_t - \aleph^*)$ 
- $\dot{\pi^e_t} =  \vartheta(\dot{p}_t - \pi_t^e)$
- $\dot{\pi^e_t} =   -\frac{\vartheta}{1+\xi}(\pi_t^e - \pi^*)  + \frac{\vartheta \phi \xi^2 }{(1+\xi)^2} (\aleph_t - \aleph^*)$
- write it in matrix form: $\dot{x}_t = A x_t$ and look at the roots of the characteristic polynomial of $A$.

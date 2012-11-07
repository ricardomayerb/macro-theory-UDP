/*
 * Example 1 from F. Collard (2001): "Stochastic simulations with DYNARE:
 * A practical guide" (see "guide.pdf" in the documentation directory).
 */

/*
 * Copyright (C) 2001-2010 Dynare Team
 *
 * This file is part of Dynare.
 *
 * Dynare is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Dynare is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Dynare.  If not, see <http://www.gnu.org/licenses/>.
 */


var c, k, z, r, N, y; //Definición de las variables a maximizar en el modelo.
varexo e; //Definición de variable exógena (shock)

parameters A, beta, rho, delta, psi, eta, Zss; //Parámetros del modelo.


/*
  Los valores que a continuación aparencen corresponden
  a la calibración del modelo con respecto a los valores que en la 
  realidad son usados; según G. Hansen (1985).
 */

rho   = 0.36; //
beta  = 0.99;
delta = 0.025;
psi   = 0.95;
eta   = 1;
Zss   = 1;
A     = 2;

/*
beta = factor de descuento,
delta = tasa de depreciación,
psi = persistencia del shock,
rho = participación del capital en la producción,
A = horas trabajadas en estado estacionario,
*/


/*
  Se definen las condiciones de primer orden más
  las restricciones presentes en el modelo.
*/

model; 
A=(c^(-eta))*(1-rho)*(y/N);
1=beta*((c/c(+1))^eta)*r(+1);
r=(rho*(y/k(-1))*(N^(1-rho)))+(1-delta);
c=(z*(k(-1)^rho)*(N^(1-rho)))+((1-delta)*k(-1))-k;
y=z*(k(-1)^rho)*(N^(1-rho));
log(z)=((1-psi)*log(Zss))+(psi*log(z(-1)))+e;
end;

/*
c = consumo,
k = capital,
y = producción,
N = trabajo,
z = productividad total de factores,
*/

/*
  Se le otorga semillas o valores iniciales para que el algoritmo
  comience a iterar. Se usan los presentados en el "example1.mod" de
  Dynare.
*/

initval;
c = 0.80359242014163;
k = 11.08360443260358;
y = 1.08068253095672;
r = 1/beta;
z = Zss;
e = 0; //Shock con valor inicial cero.
N = 0.53; 
end;

/*
  La función que se presenta a continuación calcula los valores en 
  estado estacionario del modelo los que, adicionalmente, toma como
  valores iniciales.
*/

steady;

/*
  Se procede a definir el shock "e" con desviación estándar 0.00712
  definida por G. Hansen (1.985).
*/

shocks;
var e; stderr 0.00712;
end;

/*
  La última instrucción computa los momentos teóricos de las variables
  en cuestión. En este caso, obtiene aproximaciones de primer y segundo
  orden de las ecuaciones a tratar.
*/


stoch_simul(order=2);

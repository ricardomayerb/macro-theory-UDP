clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% El presente mfile busca realizar una función de impulso respuesta
% para dos variables obtenidas por medio del método de optimización 
% desarrollado por Dynare.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

montecs

%Para el caso del consumo
x = c_e;
y = [1 1];
n = 0:1:40;
imp = [zeros(1,0) 1 zeros(1,40)];
h = filter (x, y, imp);
plot(h);
stem (n,h);
title(' Impulse Response ');
xlabel (' Samples ');
ylabel (' Amplitude ');

%Para el caso del capital
x = k_e;
y = [1 1];
n = 0:1:40;
imp = [zeros(1,0) 1 zeros(1,40)];
h = filter (x, y, imp);
plot(h);
stem (n,h);
title(' Impulse Response ');
xlabel (' Samples ');
ylabel (' Amplitude ');
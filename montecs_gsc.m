clear all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% El presente mfile busca realizar una simulación de Monte Carlo para dos
% variables obtenidas por medio del método de optimización desarrollado
% por Dynare
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dynare toolkit_han1.mod

%Number of data N
N=40;
M=200;
rand('state',100);
draws=rand(N,2*M);
c=zeros(N,M);
k=zeros(N,M);

%Monte Carlo Simulation

%Parameters for c and k
sigma_c=0.05;
sigma_k=0.03;

i=0;
for i=1:M
c(:,i)=c_e+sigma_c*norminv(draws(:,i));
k(:,i)=k_e+sigma_k*norminv(draws(:,2*i));
end

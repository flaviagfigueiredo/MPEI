%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.a)

X=0:4;

%{ Cálculo Analítico
Px=power(1/2,4);
p0= Px * 1;
p1= Px * 4;
p2= Px * 6;
p3= Px * 4;
p4= Px * 1;

Prob=[p0,p1,p2,p3,p4];

stem(X,Prob)
%}

%%Simulação

N=10^5;
ProbMoeda=0.5;
C=rand(4,N) < ProbMoeda;

r0 = sum(C) == 0;
r1 = sum(C) == 1;
r2 = sum(C) == 2;
r3 = sum(C) == 3;
r4 = sum(C) == 4;
p0= sum(r0)/N;
p1= sum(r1)/N;
p2= sum(r2)/N;
p3= sum(r3)/N;
p4= sum(r4)/N;

Prob=[p0,p1,p2,p3,p4]; %Px

stem(X, Prob);

ylabel('Px')
xlabel('x')
title('Probabilidade da Função Massa');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.b)
Ex = sum(X.*Prob);
Y = power(X,2);
Ex2 = sum(Y.*Prob);
Var = Ex2 - power(Ex,2); %% Variância
DP = sqrt(Var);          %% Desvio Padrão


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.c)
%{ O tipo de distribuição mais adequado é Binomial,
%onde X é o número de vezes que ocorre o acontecimento A
%em n experiências
%Expressão:
%Px(k) = ( Combinações de n k a k ) * p^k * (1-p)^(n-k);
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.d)

p=[0,0,0,0,0];

for k=0:4 
  c = combnk(4,k);
  p(k+1) = c*power(0.5,k)*power(0.5,4-k);
endfor

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%3.e)
%i)
pmoeda=0.5;
%Prob=pmoeda^4 + combnk(4,1) * pmoeda * (1-pmoeda)^3;
%Prob2coroasOumais= 1-Prob;

Prob2coroasOumais=sum(Prob(3:5)); %p2+p3+p4



%ii)
  %Na alinea i) foi calculada a probabilidade de sair até 1 coroa
  %e foi armazenada na variável Prob
  %Prob=pmoeda^4 + combnk(4,1) * pmoeda * (1-pmoeda)^3;
  
  %Prob=sum(Prob(1:2)); --- p0+p1
  
%iii)
%ProbSairentre1e3 = (combnk(4,1) * pmoeda * (1-pmoeda)^3 ) + combnk(4,2) * pmoeda^2 * (1-pmoeda)^2 + combnk(4,3) * pmoeda^3 * (1-pmoeda);

ProbSairentre1e3 = sum(Prob(2:4)); %p1+p2+p3 
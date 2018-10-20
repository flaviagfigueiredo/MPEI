%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%a)
Prob=0.3;         %Probabilidade de ser defeituosa
X=[0,1,2,3,4,5];  %Amostragem

Px = [0,0,0,0,0,0];
for k=0:4
  c=combnk(5,k);
  Px(k+1) = c*power(Prob,k)*power(1-Prob,5-k);
 endfor

bar(Px);
axis([0 6 0 0.4]);

title('Probabilidade da peça ser Defeituosa');
xlabel('Nº peças defeituosas');
ylabel('Px(x)');

%Simulação
N=10^5;

C=rand(5,N) < Prob;

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

ProbSimulacao=[p0,p1,p2,p3,p4];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%b)
                %Cálculo analítico da Probabilidade
ProbMAX2pecas= combnk(5,2)*power(Prob,2)*power(1-Prob,3)+combnk(5,1)*power(Prob,1)*power(1-Prob,4)+combnk(5,0)*power(Prob,0)*power(1-Prob,5);
                
                %Simulação
                
N=1*power(10,5);
n=5;
lancamentos = rand(n,N) < Prob;
sucessos = sum(lancamentos)<=2;
probSimulacao = sum(sucessos) / N;

%ProbMAX2peças = 0.83692 ~ 0.83716 = probSimulação
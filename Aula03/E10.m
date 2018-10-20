%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=0   %vai de 0
b=10  % a 10

%Distribuição uniforme
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%a) 
x=3;
Probmenor3=(x-a)/(b-a);

%Simulação
N=1*power(10,5);
n=3;
lancamentos = 10*rand(1,N);
resultadosmenoresque3 = lancamentos < n;
sucessos = sum(resultadosmenoresque3);
probSimulacaoA = sum(sucessos) / N;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%b)
x=7;
Probmenor7=(x-a)/(b-a);
Probmaior7 = 1 - Probmenor7;

%Simulação
N=1*power(10,5);
n=7;
lancamentos = 10*rand(1,N);
resultadosmaioresque7 = lancamentos > n;
sucessos = sum(resultadosmaioresque7);
probSimulacaoB = sum(sucessos) / N;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%c
x=6;
Probmenor6 = (x-a)/(b-a);
x=1;
Probmenor1 = (x-a)/(b-a);

ProbEntre1a6 = Probmenor6 - Probmenor1;

%Simulação
N=1*power(10,5);
n1=6;
lancamentos = 10*rand(1,N);
resultadosmenorque6 = lancamentos < n1;
sucessos = sum(resultadosmenorque6);
p6 = sum(sucessos) / N;

n2=1
lancamentos = 10*rand(1,N);
resultadosmenorque1 = lancamentos < n2;
sucessos = sum(resultadosmenorque1);
p1 = sum(sucessos) / N;

probSimulacaoC = p6 - p1;

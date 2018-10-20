%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.a)

%Espaço de Amostragem
  %São todas as notas de 5 (90), todas as notas 50 (9) e uma de 100.
  
  
%Probabilidade de Acontecimentos Elementares
 % A probabilidade de retirar uma nota de 5 é P(nota5) = 90/100
 % A probabilidade de retirar uma nota de 50 é P(nota50) = 9/100
 % A probabilidade de retirar uma nota de 100 é P(nota100) = 1/100

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.b)

#{A função massa de probabilidade vai atribuir aos valores do espaço de
amostragem (5,50,100) a respetiva probabilidade.
#}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%2.c)
%Notas
X=[5,50,100];

%Vetor de probabilidades de cada nota
Px=[90/100, 9/100, 1/100];


%subplot(1,2,1)
%hist(Px,X);
%subplot(1,2,2);
stem(X,Px)

xlabel('x')
ylabel('P_X(x)')
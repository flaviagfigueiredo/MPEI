%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1.a)
%faces do dado
X=1:6;

%Vetor de probabilidades de cada face
Px=ones(1,6)/6;


subplot(1,2,1)
stem(X,Px)

%definir tamanho dos eixos
%axis([0 1 |0 0.12]);

%labels
xlabel('x')
ylabel('P_X(x)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1.b
Fx=cumsum([0 Px]);
subplot(1,2,2);
stairs(0:6, Fx);
%axis([0 1 |0 1.1]);

%labels
xlabel('x')
ylabel('F_X(x)')
%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p = 1/1000;        %probabilidade de um chip ser defeituoso
prob = 8;
k  = 7;

pk =((prob^k)/(factorial(k)))*exp(-prob);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Simulação

N = 1e5;                  % Número de experiências
n = 8000;                 % Número de experiências de Bernoulli
experiencias = rand(n, N);

ChipsDef = sum(experiencias < p); 
numSuccessos = ChipsDef == k;
probSimulacao = sum(numSuccessos) / N;
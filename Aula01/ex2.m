%% Prob 6 caras em 15 lançamentos

%Clear
clear all;
close all;
clc;

N=1*power(10,5);
p=0.5;
k=6;
n=15;
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos)==k;
probSimulacao = sum(sucessos) / N;

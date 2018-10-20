%%Codigo 2 - versão 2

%Clear
clear all;
close all;
clc;

N=1*power(10,5);
p=0.5;
k=2;
n=3;
lancamentos = rand(n,N) > p;
sucessos = sum(lancamentos)==k;
probSimulacao = sum(sucessos) / N;

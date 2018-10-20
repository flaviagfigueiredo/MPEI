%Clear
clear all;
close all;
clc;

N=1*power(10,5);
p=0.3; %probabilidade de ser defeituosa
k=3;   %peças defeituosas
n=5;   %amostra

experiencia = rand(n,N) > p;
sucessos = sum(experiencia)==k;
probSimulacao = sum(sucessos) / N;

%%0.30887
%Clear
clear all;
close all;
clc;


%%Alinea A :: 1/6
%%Alinea B :: 2/3
%%Alinea C :: 4/6+4/6-1/3=1
%%Alinea D :: p(1e2)/p(2) = (2/6)/(4/6)=1/2

NumeroPalavras = 10;
sequencias = 5;

Prob = 1/(sequencias * Combinacoes(NumeroPalavras,sequencias));
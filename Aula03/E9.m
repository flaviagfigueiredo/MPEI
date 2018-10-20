%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a=1 %existir 1 erro por página
k=0 %calcular a probabilidade de não haver 0 erros numa página

prob = Poisson(1,0);

probf = 1 - prob;
%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

y=zeros(1,4);
for x=1:4
  y(x)=(x+5)/30; %y=f(x);
endfor

Soma = sum(y); % O resultado é 1, logo verifica-se
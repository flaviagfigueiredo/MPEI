%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%1)
%p=rand(1); %probabilidade de um motor falhar (aleatório)

%probabilidade2motores = combnk(2,2)*(p*p); %despenha-se se todos os motores falharem
%probabilidade4motores = combnk(4,3)*(p^3)*(1-p) + combnk(4,4)*p^4; %despenha-se se falharem 3 ou 4 motores

probabilidade2motores = zeros(1,10);
probabilidade4motores = zeros(1,10);
i=1;

for p=0.0:0.1:1.0
    probabilidade2motores(i) = combnk(2,2)*(p*p);
    probabilidade4motores(i) = combnk(4,3)*(p^3)*(1-p) + combnk(4,4)*p^4;
    i++;
    
endfor

#{Após a análise dos valores que resultaram, concluiu-se que se p<0.4
(probabilidade de um motor falhar ser 0.4) então a escolha seria o avião
4 motores, pois a probabilidade de despenhar seria menos.
Porém, para p>=0.4, a escolha seria o avião com 2 motores, pelo mesmo
motivo anterior.#}
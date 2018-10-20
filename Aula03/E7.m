%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;

prob=15;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%a)
k=0
probNenhumaMensagem = Poisson(prob,k);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%b)
probAteDezMensagens=0;
for i=1:10
  probAteDezMensagens += Poisson(prob,i);
endfor

probMaisDeDezMensagens = 1 - probAteDezMensagens;

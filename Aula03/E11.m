%Métodos Probabilísticos para Engenharia Informática
%Flávia Figueiredo // nºMec: 88887 // LEI

%Clear
clear all;
close all;
clc;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
m=14;
desvioP=2;
f=zeros(1,20);

#{
for i=1:19
  x=(1/(sqrt(2*pi*desvioP)));
  f(i)=x*exp((-1/2)*power(((i-m)/desvioP),2));
  i++;
 endfor

 stem(f);
#}

%a)

N= 1e5; %numero de experiencias
lancamentos=2*randn(1,N)+14;
resultados16 = lancamentos < 16;
resultados12 = lancamentos < 12;

sucessos16= sum(resultados16);
sucessos12= sum(resultados12);

pmenor16 = sum(sucessos16)/N;
pmenor12  = sum(sucessos12)/N;

Pentre12e16=pmenor16-pmenor12;

%b)

resultados18 = lancamentos < 18;
resultados10 = lancamentos < 10;

sucessos18= sum(resultados18);
sucessos10= sum(resultados10);

pmenor18 = sum(sucessos18)/N;
pmenor10  = sum(sucessos10)/N;

Pentre10e18=pmenor18-pmenor10;

%c)
resultadosmaior10 = lancamentos >= 10;
sucessosmaior10= sum(resultadosmaior10);

Pmaior10=sum(sucessosmaior10)/N;


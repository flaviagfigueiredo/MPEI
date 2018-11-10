%Clear
clear all;
close all;
clc;

%2ª Versão
................................................................................
fatorCarga = 0.8;
n=1000;

% alfabeto simples 
alpha = ['A':'Z' 'a':'z' ];  

%  ficheiros a serem processados (do projecto Gutemberg
ficheiros={'pg21209.txt','pg26017.txt'};

% obter fun��o massa de probabilidade (pmf em Ingl�s)
pmf=pmfLetrasPT(ficheiros,alpha);


m = round(n/fatorCarga); %m:todos os valores
array= zeros(1,m);

Max=0
for i=0:n
   key = gerarChavev2(pmf); 
   valor=rem(string2hash(key),m)+1;
   array(valor)=array(valor)+1;
   if (array(valor)>Max)
     Max=array(valor);
   endif
endfor

subplot(211)
stem(array)

................................................................................
%4)

x=[0:Max];
Probs=zeros(1,Max+1);

for i=0:Max
  sumP = sum(array==i) %soma dos valores cujo valor é i
  Probs(i+1)=sumP/(m);
endfor

subplot(212)
stem(Probs)
 
%QUESTÕES FINAIS
%Sim, como se pode verificar pelo gráfico 1
%Sim. 
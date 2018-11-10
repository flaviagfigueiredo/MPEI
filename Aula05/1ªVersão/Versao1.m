%Clear
clear all;
close all;
clc;
................................................................................
%3)
fatorCarga = 0.8;
alpha = ['a':'z' 'A':'Z'];
n=1000;

m = round(n/fatorCarga); %m:todos os valores
array= zeros(1,m);

Max=0
for i=0:n
   key = gerarChave(); 
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
  
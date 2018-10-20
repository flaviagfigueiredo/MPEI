%Clear
clear all;
close all;
clc;

N=1*power(10,5);
p=0.5;
k=2;
n=20;



for i=0 : 20
  N=1*power(10,5);
  p=0.5;
  n=20;
  probabilidade(i+1) = Prob(p,n,N,i);
 end
 
stem(probabilidade)
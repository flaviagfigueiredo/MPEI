%Clear
clear all;
close all;
clc;

Prob=0.5;
Nmax=1000;

for n=2:Nmax
  ProbNAOMesmoAniv = Arranjos365(n);
  if ProbNAOMesmoAniv < Prob
    Pessoas=n;
   break;
  endif
endfor

%%ProbMesmoAniv = 1 - (( factorial(365)/factorial(365-Pessoas) )/(365^Pessoas));


%%Alinea B :: 41
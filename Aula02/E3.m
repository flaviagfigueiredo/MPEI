%Clear
clear all;
close all;
clc;

Ppositivocancro=0.9;
Ppositivonaocancro=0.1;
Pcancro=1/10000;
%Pcancro=1/1000;

%Lei da probabilidade
ProbPositivo=Ppositivocancro*Pcancro+Ppositivonaocancro*(1-Pcancro);

%Probabilidade Condicional
Prob=(Ppositivocancro*Pcancro) / ProbPositivo;

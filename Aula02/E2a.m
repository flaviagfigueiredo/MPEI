%Clear
clear all;
close all;
clc;

nexp=1000;
p=0.5;
nlancamentos=10;
ncaras=10;

lancamento = rand(nlancamentos,nexp) > p;
sucesso = sum(lancamento) == ncaras;
prob= sum(sucesso)/nexp;
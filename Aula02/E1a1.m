%Clear
clear all;
close all;
clc;

nexp=1000;
p=0.5;
nfilhos=2;
filho=1;

experiencia = rand(nfilhos,nexp) > p;
sucesso = sum(experiencia) >= filho;
prob = sum(sucesso)/nexp;
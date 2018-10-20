%Clear
clear all;
close all;
clc;

nexp=1000;
p=0.5;
nfilhos=5;
filho=2;

experiencia = rand(nfilhos,nexp) > p;
total= sum(experiencia)>=1;
sucesso = sum(experiencia) == filho;
prob= sucesso/total;
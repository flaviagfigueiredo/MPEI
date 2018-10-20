%E1 c)
%Clear
clear all;
close all;
clc;

p=0.5;
nfilhos=2;
filho=1;
nexp=10000;

experiencia = rand(nfilhos,nexp) > p;
total = sum(experiencia)>=filho;
sucessos = sum(experiencia)==nfilhos;
prob=sucessos/total;
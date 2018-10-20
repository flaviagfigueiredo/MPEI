function [pk] = Poisson (a,k)
  pk =((a^k)/(factorial(k)))*exp(-a);
endfunction
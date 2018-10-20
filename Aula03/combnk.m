function [c] = combnk (n,p)
  c=factorial(n)/(factorial(p)*factorial(n-p));
endfunction

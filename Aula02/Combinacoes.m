function[C] = Combinacoes(n,p)
  C = myFactorial(n) / ( myFactorial(p) * factorial(n-p) );
  return
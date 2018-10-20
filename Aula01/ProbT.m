
function [probSimulacao] = ProbT(k)
  N=10;
  p=0.3
  n=5
  experiencia = rand(n,N) > p;
  sucessos = (sum(experiencia) >= k);
  probSimulacao = sum(sucessos) / N;
  end
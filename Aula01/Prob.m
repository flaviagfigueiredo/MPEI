
function [probSimulacao] = Prob(p,n,N,k)
  lancamentos = rand(n,N) > p;
  sucessos = sum(lancamentos) >= k;
  probSimulacao = sum(sucessos) / N;
  end
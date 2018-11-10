function [y] = gerarChavev2(pmf)
  alpha = ['a':'z' 'A':'Z'];
  comprimento =floor(sqrt(5)*randn()+10);
  x=[1:52];
  
  y=alpha(1,Gerar_Var_Aleatoria(x,pmf,comprimento));
endfunction
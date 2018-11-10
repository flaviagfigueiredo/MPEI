function x=Gerar_Var_Aleatoria(xi,pmf,N)
    Fx=cumsum(pmf);
    x=zeros(1,N);
    for n=1:N
      u=rand;
      i=1+sum(u>Fx);
      x(n)=xi(i);
    endfor
endfunction
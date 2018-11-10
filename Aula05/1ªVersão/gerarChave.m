function [y] = gerarChave()
  alpha = ['a':'z' 'A':'Z'];
  y=alpha(randi([1,length(alpha)],1,randi([3,20])));
endfunction
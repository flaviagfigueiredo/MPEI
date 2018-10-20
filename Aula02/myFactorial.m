function[y] = myFactorial(x)
  if(x==0)
    y=1;
  else 
    y=x*myFactorial(x-1);
end
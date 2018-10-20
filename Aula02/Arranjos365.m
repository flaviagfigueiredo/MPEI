function[Prob] = Arranjos365(y)
    Prob=1;
    Xmax = y-1;
    for x=1:Xmax
      Prob = Prob * ((365-x)/365);
    endfor
return
function s= standartsapma(x)
  t=0;
  n=length(x);
  for i=1:n
    t= t+((x(i)-mean(x))^2)/n;
  endfor
  s=sqrt(t);
endfunction



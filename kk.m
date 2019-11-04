function e=kk(x)
  
  [m n] = size(x);
  t=0;
  for i=1:n
    for j=1:m
      e(j,i) = sum(x(:,i)) * sum(x(j,:)) / sum(x(:));
      t = t + x(j,i) - e(j,i)^2 / e(j,i);
    endfor
  endfor
  
endfunction

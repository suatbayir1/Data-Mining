function a=zss(x)
  for i=1:length(x)
    a(i)= (x(i)-mean(x)) / std(x,1);
  endfor
endfunction

function s=maf(x,pu)
  os=length(x)-pu+1;
  for i=1:os
    s(i)=mean(x(i:i+pu-1))
  endfor
  plot(1:os,s)
endfunction

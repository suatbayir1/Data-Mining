function s= gurultuyoket(x,pu)
  os=floor(length(x)/pu)
  for i=1:os
    s(i) = mean(x((i-1)*pu+1:i*pu))
    %s(2,i) = min(x((i-1)*pu+1:i*pu))
    %s(3,i) = max(x((i-1)*pu+1:i*pu))
    %s(4,i) = median(x((i-1)*pu+1:i*pu))
  endfor
  plot(1:os,s);
endfunction

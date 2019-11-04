function s=faktoriyel(x)
  
  t=1;
  if x==0
    t=1;
    endif
  for i=1:x
      t = t*i;
    endfor
  s=t;
  
endfunction

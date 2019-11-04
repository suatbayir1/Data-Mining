function r=korelasyon(a,b)
  t=0;
  for i=1:length(a)
    t= t + ((a(i) - mean(a)) * (b(i)-mean(b))) / length(a)*std(a,1)*std(b,1); 
  endfor
  r=t
endfunction

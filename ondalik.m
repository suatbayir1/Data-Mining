function vv= ondalik(dizi)
  
  maks = max(abs(dizi));
  string = maks;
  char = length(string)
  
  for i=1:length(dizi)
    
    vv(i)= dizi(i) / 10^char;
    
    endfor
  
endfunction

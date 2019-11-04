function vv = zscorenormalizasyon(dizi)
  
  for i=1:length(dizi)
    
    vv(i) = (dizi(i) - mean(dizi)) / std(dizi,1);
    
    endfor
  
endfunction

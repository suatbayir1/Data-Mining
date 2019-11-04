function vv = minmaks(dizi,a1,a2)
  for i=1:length(dizi)
  vv(i)= ((dizi(i)-min(dizi)) / (max(dizi)-min(dizi))) * (a2-a1)+a1;
  endfor
endfunction

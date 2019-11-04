function s = entropi(dizi)
  tur=unique(dizi);
  for i=1:length(tur)
    dizi(i) = sum(dizi==tur(i));     
  end
  s=0; 
  for i=1:length(dizi)
    s = s + (dizi(i)/sum(dizi)) * log2((dizi(i)/sum(dizi))); 
  end
%   if 
%     isnan(s) s=0; 
%   end
    s= -s;
  end
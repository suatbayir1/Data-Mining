function s = gini(dizi)
  tur=unique(dizi);
  for i=1:length(tur)
    dizi(i) = sum(dizi==tur(i));     
  end
  s=0; 
  for i=1:length(dizi)
    s= s+dizi(i)^2;
  end
  s= 1-s;
  end
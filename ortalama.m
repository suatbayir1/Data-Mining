function [s ort]=ortalama(x)
  n=length(x);
  t=0;
  yenibirtane=0;
  sp=0;
  for i=1:n
    t=t+x(i);
  endfor
  ort=t/n;
  
  for j=1:n
     z=(x(j) - ort) ** 2;      % standart sapmanýn formulu %
     sp= sp+z;
  endfor
  sp = sp/n;
  s=sqrt(sp);
  
endfunction

% dizinin her elemanýndan ortalamayý çýkar karesini al topla  %
% uzunluga böl en son kare kökünü al %

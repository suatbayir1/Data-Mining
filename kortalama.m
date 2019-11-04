function [kume,km] = kortalama(data,ks)
  % 1. adým rastgele küme merkezleri belirleniyor
  km=rand(ks,2);
  km(:,1)=min(data(:,1)) + max(data(:,1)) - min(data(:,1)) * km(:,1);
  km(:,2)=min(data(:,2)) + max(data(:,2)) - min(data(:,2)) * km(:,2);
  % 2. adým her bir elemanýn küme merkezlerine olan öklid uzaklýðý
  kontrol=1;
  while(kontrol>0)
  tempkm=km;
  uzaklik=zeros(ks,size(data,1)); % matlab performans açýsýnda önce 0 matris oluþtur.
  for i=1:size(data,1) % data matrisinin 1. satýrýnýn uzunlugu kadar
    for j=1:ks
      uzaklik(j,i) = sqrt((data(i,1)-km(j,1))^2+(data(i,2)-km(j,2))^2);
    endfor
  endfor
  %3. adým her bir kayýta ait en yakýn küme merkezi
  [~,I]=min(uzaklik) % küme merkezine en yakýn indisler
  for i=1:ks
    if ~isempty(find(I==i))
      km(:,i) = mean(data(find(I==i),:)); %4. adým yeni en yakýn küme merkezleri
    endif
  endfor
  kontrol=sum(abs(tempkm(:)-km(:))); % küme merkezleri eþitse burasý 0 olacak
endwhile
kume=I;
scatter(data(:,1),data(:,2),[],kume);
hold on;
scatter(km(:,1),km(:,2),'d');
endfunction

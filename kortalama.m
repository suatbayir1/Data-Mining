function [kume,km] = kortalama(data,ks)
  % 1. ad�m rastgele k�me merkezleri belirleniyor
  km=rand(ks,2);
  km(:,1)=min(data(:,1)) + max(data(:,1)) - min(data(:,1)) * km(:,1);
  km(:,2)=min(data(:,2)) + max(data(:,2)) - min(data(:,2)) * km(:,2);
  % 2. ad�m her bir eleman�n k�me merkezlerine olan �klid uzakl���
  kontrol=1;
  while(kontrol>0)
  tempkm=km;
  uzaklik=zeros(ks,size(data,1)); % matlab performans a��s�nda �nce 0 matris olu�tur.
  for i=1:size(data,1) % data matrisinin 1. sat�r�n�n uzunlugu kadar
    for j=1:ks
      uzaklik(j,i) = sqrt((data(i,1)-km(j,1))^2+(data(i,2)-km(j,2))^2);
    endfor
  endfor
  %3. ad�m her bir kay�ta ait en yak�n k�me merkezi
  [~,I]=min(uzaklik) % k�me merkezine en yak�n indisler
  for i=1:ks
    if ~isempty(find(I==i))
      km(:,i) = mean(data(find(I==i),:)); %4. ad�m yeni en yak�n k�me merkezleri
    endif
  endfor
  kontrol=sum(abs(tempkm(:)-km(:))); % k�me merkezleri e�itse buras� 0 olacak
endwhile
kume=I;
scatter(data(:,1),data(:,2),[],kume);
hold on;
scatter(km(:,1),km(:,2),'d');
endfunction

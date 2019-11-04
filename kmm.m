function [kume km] = kmm(data,ks)
  %1.adým rastgele küme merkezleri min-max deðerler
  km=rand(ks,2);
  km(:,1)= max(data(:,1))+min(data(:,1)) - min(data(:,1))*km(:,1);
  km(:,2)= max(data(:,2))+min(data(:,2)) - min(data(:,2))*km(:,2); 
  %4.adým
  kontrol = 1;
  while(kontrol>0)
    tempkm=km;
    %2.adým
    for i=1:size(data,1)
      for j=1:ks
        uzaklik(j,i)= sqrt( (data(i,1)-km(j,1))^2 + (data(i,2)-km(j,2))^2);
      endfor
    endfor
    %3.adým
    [~,I] = min(uzaklik);
    for i=1:ks
      if ~isempty(find(I==i))
        km(:,i) = mean(data(find(I==i),:));
      end
    endfor
    kontrol= sum(tempkm(:)-km(:));
  endwhile
  kume=I;
endfunction
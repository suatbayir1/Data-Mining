function gain = ID3(dizi)

Info = entropi(dizi(:,end)); % genel info de�eri

n=size(dizi,2);
for i=1:n-1   % en son s�tunda s�n�flar oldugu �c�n 1 eks�g� kadar d�n
    tur=unique(dizi(:,i));
    Infoj(i)=0;
    for j=1:length(tur)
      I=find(dizi(:,i)==tur(j));
      Dj=dizi(I,[i end]);
      Infoj= Infoj(i) + ((size(Dj,1)/size(dizi,1)) * entropi(Dj(:,end));
    end
    gain(i) = Info-Infoj(i);
    end
end
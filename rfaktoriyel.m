function sonuc=rfaktoriyel(n)
  sonuc=1
  if n==0
    sonuc=1
  else
    sonuc=n*rfaktoriyel(n-1)
  endif
endfunction


function output=recursiveFibonacci(input,n)	// buradaki n kullan�c�n�n ka�a kadar listelemek istedi�i
	for i=3:n  		// dizinin ilk 2 indisi verildi�i i�in 3'den ba�la
		input(i)= input(i-1) + input(i-2)	// verilen dizinin i. indisine bir �nceki ve iki �nceki indisteki de�erleri toplay�p ata
	endfor
	output=input	
endfunction
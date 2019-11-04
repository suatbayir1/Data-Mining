function sonuc=rfaktoriyel(n)
  sonuc=1
  if n==0
    sonuc=1
  else
    sonuc=n*rfaktoriyel(n-1)
  endif
endfunction


function output=recursiveFibonacci(input,n)	// buradaki n kullanýcýnýn kaça kadar listelemek istediði
	for i=3:n  		// dizinin ilk 2 indisi verildiði için 3'den baþla
		input(i)= input(i-1) + input(i-2)	// verilen dizinin i. indisine bir önceki ve iki önceki indisteki deðerleri toplayýp ata
	endfor
	output=input	
endfunction
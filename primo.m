function band=primo(N)
% abnd es 0 si es primo y 1 s i no es primo
% Saber si un numero es primo
band=1;
% quiero sabe r si tengo un divisor, N =ab, a o b es pequeño
% implica que a o b es menor o igual que sqrt(N)
M= floor((sqrt(N))+1)
for i=2:M
	res=mod(N,i);
	if (res==0)
		band=0;
	break;
	end
	
end
if(band==0)
	fprintf('el numero NO es primo \n')
	else
		fprintf('el numero es primo \n')
end

end	

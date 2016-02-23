N=input('Ingrese el numero \n');
s=0;
suma=0;
	for i=1:N;
		s= mod(N,i);
		
		if (s==0) && (i~=N) 
			
			suma = suma+i;

		end
end

fprintf('%d',suma)

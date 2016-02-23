N=1000001;
suma =0;
	for i=1:N;
	ter = (1/(i^2));
	suma = suma+ter;
	end

fprintf(' suma (%d) = %.10f \n', N, suma);

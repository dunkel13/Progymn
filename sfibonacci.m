%programa que imprime los primeros 100 num de la secuencia de fibonacci

N=5;
	au=1;
	ap=1;
	for i=3:N
		fibo=au+ap;
	fprintf('ANTES fibo=%d au=%d ap=%d\n',fibo, au , ap)
		au=ap;
		ap=fibo;
	fprintf('DESPUES fibo=%d au=%d ap=%d\n', fibo, au, ap)
	
	end

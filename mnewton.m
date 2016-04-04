function r=newton(x0,Nmax, tolinc, tolres)

f=fparanewton(x0);

if ( abs(f) < tolres) 
	r=x0;
else
	for k=1:Nmax
		fp=fprimaparanewton(x0);
		x1=x0-f./fp;
		f=fparanewton(x1);
		if ( abs(x1-x0)< tolinc || abs(f)<tolres )
			r=x1;
			break;
		end
		x0=x1;
		
	end
end

r=x1;
if ( k==Nmax)
	fprintf( ' Advertencia: numero maximo de iteraciones alcanzado\n ');
end

function y=Gpf(x)

y=cos(x);

function s=puntofijo(x0,Nmax,tolinc,tolres)

for k=1:Nmax
		x1=Gpf(x0);
		fprintf('%d, %.10f \n', k, x1)
		inc=x1-x0;
		res=x1-Gpf(x1);
		if (abs(inc)<tolinc || abs(res)<tolres)
			s=x1;
			break;
		end
		x0=x1;

end

s=x1;
if(k==Nmax)
	fprintf('Advertencia: numero maximo de iteraciones alcanzado\n')
end

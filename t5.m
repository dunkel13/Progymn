% Parametros: x0, Nmax, tolinc, tolres.
function r=newton(x0,Nmax, tolinc, tolres)

f=fparanewton(x0);
n=0;
if ( abs(f) < tolres) 
	r=x0;
else
	for k=1:Nmax
		fp=fprimaparanewton(x0);
		x1=x0-f./fp;
    n=n+1;
    u(k)=x0;
		f=fparanewton(x1);
    
		if ( abs(x1-x0)< tolinc || abs(f)<tolres )
			r=x0;
			break;
		end
		x0=x1;
    u(k)=x1;
    fprintf('La iteracion %d es %.10f \n',k,x0);
	end
  u
  plot(u,u*0,'-r*')
end

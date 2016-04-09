Nmax=20;
tolinc=1*10^-9;
tolres=1*10^-10;
D=zeros(1,4);
z=[-2,-0.9,0.9,2];
% le asigno a un vector D las raices del polinomio con x0 apropiados

for i=1:4

D(i)=newton(z(i),Nmax,tolinc,tolres);
end
D(1)

%for i=-10:0.1:10
x0=-10
e=D(1)-0.1;
f=fparanewton(x0);
n=0;
	if ( abs(f) < tolres) 
		r=x0;
	else
		for k=1:Nmax

			fp=fprimaparanewton(x0);
			x1=x0-f./fp
			f=fparanewton(x1);
      n=n+1;
      if x1==D(1)
      u=zeros(1,n)
      for j=1:n
      u(j)=x1
      plot(u(j),u(j)*0,'-r*')
      end
      end
      fprintf('la iteracion %d es %.10f\n',k,x1);
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
%end

% Parametros: x0, Nmax, tolinc, tolres.
Nmax=20;
tolinc=1*10^-9;
tolres=1*10^-10;
D=zeros(1,4);
z=[-2,-0.9,0.9,2];
% le asigno a un vector D las raices del polinomio con x0 apropiados
for i=1:4
D(i)=newton(z(i),Nmax,tolinc,tolres);
end

for i=-10:0.1:10
x0=i
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
  if(x1==D(1))
  plot(u,u*0,'-r*')
  elseif(x1==D(2))
  plot(u,u*0,'-b*')
  elseif(x1==D(3))
  plot(u,u*0,'-g*')
  elseif(x1==D(4))
  plot(u,u*0,'-y*')
  elseif(x1~=D(1) && x1~=D(2) && x1~=D(3) && x1~=D(4))
  plot(u,u*0,'-k*')
  end
end
end	

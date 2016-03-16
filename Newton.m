% este programa resuelve f(x)=0 usando newton
% usa las funcion en fparanewton.m
% y la derivada en fprimaparanewton.m
% argumento de entrada:
% 		x0 :  punto inicial
%		Nmax: numero maximo de iteraciones
% 		tolinc: tolerancia para el incremento
%		tolres: tolerancia para el residuo

function f=fparanewton(x)

f=x-cos(x);

function fp=fprimaparanewton(x)

fp=1+sin(x);

function r=newton(x0,Nmax, tolinc, tolres)

f=fparanewton(x0)

if ( abs(f) < tolres) 
	r=x0;
else
	for k=1:Nmax
		fp=fprimaparanewton(x0)
		x1=x0-f./fp
		f=fparanewton(x1);
		if ( abs(x1-x0)< tolinc || abs(f)<tolres )
			r=x0;
			break;
		end
		x0=x1;
		
	end
end

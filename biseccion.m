% este programa aproxima la raiz de f(x)=0
% con f programada en fparabiseccion.m
% parametros de entrada:
%		a,b  : extremos intervalo inical
%		Nmax : Numero maximo de iteraciones
%		tolin: tolerancia para distancia ultimo intervalo
% 		tolres: toleracia para el residuo
function f=fparabiseccion(x)

f=x-cos(x);

function biseccion(a,b,Nmax,tolint, tolres)

fa=fparabiseccion(a);
fb=fparabiseccion(b);
e=b-a;

if ( sign(fa) == sign(fb) ) 
	fprintf( ' Error: no hay cambio de signo\n');
else
for k=1:Nmax
	e=e/2;
	c=a+e;
	fc=fparabiseccion(c);
	if( abs(e) < tolint || abs(fc)<tolres )
		break;
	end
	
	if( sign(fc)~= sign(fa) )
		b=c;
		fb=fc;
	else
		a=c;
		fa=fc;
	end
end

end


fprintf( ' \n Raiz aproximada r=%.10f \n', c) 

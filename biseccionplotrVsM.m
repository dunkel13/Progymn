function [M,tasa]=biseccionplotrVsM(a,b,Nmax,tolint, tolres,n,v)

M=5500:100:6500
aini=a; bini=b; %intervalo
for i=1:length(M)
	a=aini; b=bini; % reiniciar el intervalo para iniciar biseccion
 	fa=fparabiseccion(a,n,v,M(i)); %%%%%%% parametros
	fb=fparabiseccion(b,n,v,M(i)); %%%%%%% parametros
	e=b-a;

	if ( sign(fa) == sign(fb) ) 
		fprintf( ' Error: no hay cambio de signo\n');
	else
	for k=1:Nmax	
		e=e/2;
		c=a+e;
		fc=fparabiseccion(c,n,v,M(i));%%%%%%%%%% parametros
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

tasa(i)=100*c % tasa de interes en porcentaje.

endfor

plot(M,tasa, 'LineWidth', 5)
grid on
more


%fprintf( ' \n Raiz aproximada r=%.10f \n', c) 
%fprintf( ' \n Residuo =%.10f \n', fc) 

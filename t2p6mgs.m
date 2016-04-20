for a=-10:0.1:10
N=3;

A1=diag(ones(N,1));
A2=diag(ones(N-2,1),2);
A3=diag(ones(N-2,1),-2);
% en esta parte es 'a' que son los valores de la diagonal
A=a*A1+A2+A3;

b=ones(N,1);

Nmax=10000;

tolres=0.0000001;
tolinc=0.0000001;

x0=0*b;

D=diag(diag(A));
L=-tril(A);

Mgauss=D-L;

for k=1:Nmax

	%residuo
	r=b-A*x0;

	% resuelvo sistema como M de Guass-Siedel
	delta=Mgauss\r;

	%fprintf( ' norm inc(%d) =%.10f\n',k, norm(delta))

	if(norm(r)<tolres)
		fprintf(' paso (%d), valor de a: %.10f \n',k,a)
		break;
	end

	% calculo nuevo iterado
	x1=x0+delta;
	
	%if( norm(delta)<tolinc)
	%	break;
	%end

%actualiza para continuar iteracion
x0=x1;
end
end

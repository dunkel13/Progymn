for a=-10:0.1:10

N=4;

A1=diag(ones(N,1));
A2=diag(ones(N-3,1),3);
A3=diag(ones(N-3,1),-3);

A=a*A1+A2+A3;
% los valores de a para los cuales Jacobi converge son
% a=[-10:-1.1] && [1.1:10]
b=ones(N,1);

Nmax=10000;

tolres=0.000001;
tolinc=0.00001;

x0=0*b;

Mjac=diag(diag(A));

for k=1:Nmax

	%residuo
	r=b-A*x0;

	% resuelvo sistema como M; JACOBBI
	delta= Mjac\ r;
  % calculo nuevo iterado
	x1=x0+delta;
	
	%fprintf( ' norm inc(%d) =%.10f\n',k, norm(delta));

	if(norm(r)<tolres)
		fprintf('pasos:%d con a=%d \n',k,a)
    hold on
		break;
	end
	
	%if( norm(delta)<tolinc)
	%	break;
	%end
		
%actualiza para continuar}
x0=x1;
end
end

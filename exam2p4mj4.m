% Parcial 2 -punto 4 Implementar Jacobi
% bucle for para estudiar la convergencia del metodo para diferentes valores de a
for a=-10:0.1:10

N=3;

A1=diag(ones(N,1));
A2=diag(ones(1,N-1),1);
A3=diag(ones(1,N-1),-1);

A=a*A1-A2-A3;

b=ones(N,1);

Nmax=10000;

%tolerancia para el residuo de 10^-6
tolres=0.000001;
%tolinc=0.00001;

x0=0*b;

Mjac=diag(diag(A));

for k=1:Nmax

	%residuo
	r=b-A*x0;

	% resuelvo sistema Mjac
	delta= Mjac\ r;
  % calculo nuevo iterado
	x1=x0+delta;
	
	%fprintf( ' norm inc(%d) =%.10f\n',k, norm(delta));

	if(norm(r)<tolres)
		fprintf('En la iteracion (%d) converge, con a=(%.10f) \n',k,a)
    hold on
		break;
	end
			
%actualiza para continuar}
x0=x1;

end
end

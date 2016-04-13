N=20;

A1=diag(ones(1,N));
A2=diag(ones(1,N-1),1);
A3=diag(ones(1,N-1),-1);
A=2*A1-A2-A3;
b= ones(N,1);


Nmax=1000;

tolres=0.000000001;
tolinc=0.000000001;
x0=0*b;

Mjac=diag(diag(A));

for k=1:Nmax

% residuo
	r=b-A*x0;
% resuelvo sistema lineal con M de Gauss-Siedel
	delta=Mjac\r;
	fprintf('norma inc(%d) = %.10f \n',k,norm(delta));
% calculo nuevo iterado
	x1=x0+delta;
% actualiza para continuar iteracion
x0=x1;

if(norm(delta)<tolinc || norm(r)<tolres)
break;
end

end	

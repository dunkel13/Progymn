A=[2,-1,0;-1,2,-1;0,-1,2];
b=[1;0;1];

Nmax=100;

tolres=0.0001;
tolinc=0.0001;
x0=[0;0;0];

D=diag(diag(A));
L=-tril(A)
Mgauss=D-L;

for k=1:Nmax

% residuo
	r=b-A*x0;
% resuelvo sistema lineal con M de Gauss-Siedel
	delta=Mgauss\r;
	fprintf('norma inc(%d) = %.10f \n',k,norm(delta));
% calculo nuevo iterado
	x1=x0+delta;
% actualiza para continuar iteracion
x0=x1;

if(norm(delta)<tolinc || norm(r)<tolres)
break;
end

end	

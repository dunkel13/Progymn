A=[2,-1,0;-1,2,-1;0,-1,2];
b=[1;0;1];


Nmax=100;

tolres=0.00001;
tolinc=0.00001;
x0=[0;0;0];

Mjac=diag(diag(A));

for k=1:Nmax

% residuo
	r=b-A*x0;
% resuelvo sistema lineal con M
	delta=Mjac\r;
% calculo nuevo iterado
	x1=x0+delta;
% actualiza para continuar iteracion
x0=x1

if(norm(delta)<tolinc || norm(r)<tolres)
break;
end

end	

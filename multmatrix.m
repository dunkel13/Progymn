function y=multmatrix(A,b)
% funcion que dadas matriz A y vector b y multiplique Ab
% dimensiones de la matriz
[m,n]=size(A);
[l,p]=size(b);
if(n~=l)
	x=[];
	frpitnf('No se puede \n')
else
	x=zeros(m,1);
	for k=1:m
%calcular x(k)
		suma=0.0;	
		for s=1:n
			suma=suma+A(k,s)*b(s);
		end
	x(k)=suma;
	end
end

% codigos con vectores
% codigo que haga 
%funcion que dado n,(el parametro de salida sea un vector) calcule los divisores den en un vector x
function x=misdiv(N)
%calcular cual es el tamaño de x
c=1;
for i=2:N
	res=mod(N,i);
	if(res==0)
		c=c+1;
	end
end

x=zeros(1,c)
x(1)=1;
c=1;
for i=2:N
	z=mod(N,i);
	if(z==0)
%variable auxiliar c
		c=c+1;
		x(c)=i;
	end
end

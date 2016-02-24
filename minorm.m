function y=minorm(x)
% codigo/funcion 
c=length(x);
N=0;
for i=1:c
	N=N+x(i)*x(i);
end
y=sqrt(N);
	


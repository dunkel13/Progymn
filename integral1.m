% integral de 0 a 1 de e^x
a=0;
b=1;
N=100;
h=(b-a)/100;
x=a:h:b;
f=exp(x);
integral=0.5*(f(1)+f(N+1)+2*sum(f(2:N)))*h

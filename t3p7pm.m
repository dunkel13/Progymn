% Regla del punto medio compuesta  para integral de 0 a 2 de e^-(x^2/2) 
a=2; 
b=10;
for N=1:10
h=(b-a)/N;
x=a:h:b;
f=e.^-(x.^2/2);
integral=h*(f(1)+f(N+1)+sum(f(1:N)));
fprintf('La integral de f cuando N=(%d) es (%.10f)\n',N,integral)
end

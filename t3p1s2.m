% Regla compuesta de Simpson para integral de 0 a pi sin(2x)*e^-(x)
a=0; 
b=pi;
for N=10:10:100
h=(b-a)/N;
x=a:h:b;
f=sin(2*x).*e.^(-x);
integral=(h/3)*(f(1)+f(N+1)+4*sum(f(2:2:N))+2*sum(f(3:2:N)));
fprintf('La integral de f cuando N=(%d) es (%.10f)\n',N,integral)
end

% Lista de coeficientes de w_i y puntos x_i para n=1,...,5
% N= numero de puntos
% xi puntos
% wi pesos
% Cambio de intervalo de [a,b] a [-1,1]
% integral de a a b de f(x)dx = (b-a)/2*sumatoria desde i=1 hasta n de wi*f((b-a)/2*xi + (a+b))/2 
N=1
x1=0
w1=2

N=2
x1=sqrt(1/3)
w1=1
x2=-sqrt(1/3)
w2=1

N=3
x1=0
w1=8/9
x2=sqrt(3/5)
w2=5/9
x3=-sqrt(3/5)
w3=5/9

N=4
x1=sqrt((3-2*sqrt(6/5))/7)
w1=(18+sqrt(30))/36
x2=-sqrt((3-2*sqrt(6/5))/7)
w2=(18+sqrt(30))/36
x3=sqrt((3+2*sqrt(6/5))/7)
w3=(18-sqrt(30))/36
x4=-sqrt((3+2*sqrt(6/5))/7)
w4=(18-sqrt(30))/36

N=5
x1=-(1/3)*sqrt(5+2*sqrt(10/7));
w1=(322-13*sqrt(70))/900;
x2=(-1/3)*sqrt(5-2*sqrt(10/7));
w2=(322+13*sqrt(70))/900;
x3=0;
w3=128/225;
x4=(1/3)*sqrt(5-2*sqrt(10/7));
w4=(322+13*sqrt(70))/900;
x5=(1/3)*sqrt(5+2*sqrt(10/7));
w5=(322-13*sqrt(70))/900;

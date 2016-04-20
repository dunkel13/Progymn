Nmax=100;
tolinc=1*10^-12;
tolres=1*10^-12;
x0=0.6;
% halla la raiz con el método de la secante
x=t2p11(x0,Nmax,tolinc,tolres);
L= 10/(sin(2*pi/5 - x))+ 8/sin(x);
fprintf('La longitud de la barra es (%.10f)\n',L)

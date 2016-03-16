function biseccion(a,b,Nmax,tolint, tolres,n,v,M)
%modifica los parametros n,v,M
fa=fparabiseccion(a,n,v,M);
fb=fparabiseccion(b,n,v,M);
e=b-a;
if ( sign(fa) == sign(fb) )
fprintf( ' Error: no hay cambio de signo\n');
else
for k=1:Nmax
e=e/2;
c=a+e;
fc=fparabiseccion(c,n,v,M);
if( abs(e) < tolint || abs(fc)<tolres )
break;
end
if( sign(fc)~= sign(fa) )
b=c;
fb=fc;
else
a=c;
fa=fc;
end
end
end

fprintf( ' \n Raiz aproximada r=%.10f \n', c) 
fprintf(' Residuo = %.10f \n',fc )

function f=fparabiseccion(r,n,v,M)
ter1=(1+r).^n-1;
ter2=(1+r)./r;

f= M-v*ter2.*ter1;

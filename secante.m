function fs=fparasecante(x)
fs= x.^5-3*x.^4+10*x-8;
end

function r=secante(x0,Nmax,tolres,tolinc)

x1=x0+0.01;
f0=fparasecante(x0);
f1=fparasecante(x1);

for k=1:Nmax
  d=f1-f0;
  if(abs(d)<tolinc)
  r=x2;
  break;
  end
  f=f1*(x1-x0)/d;
  x2=x1-f;
  f2=fparasecante(x2);
  fprintf('la iteracion (%d) es (%.10f)\n)',k,x0)
  if( abs(f2)<tolres);
  r=x2;
  break;
  end
  if(abs(f)/(1+abs(x2)) < tolres)
  r=x2;
  break;
  end
  x0=x1;
  f0=f1;
  x1=x2;
  f1=f2;
 end
 
end

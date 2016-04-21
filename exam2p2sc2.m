function fs=fparaexam2p2sc2(x)
fs=(x.^2 +4)*e^(2*sin(x)+sin(cos(x))-1)*cos(x)*sin(x) -e^(sin(x)) + 1/2;
end

function r=exam2p2sc2(x0,Nmax,tolres,tolinc)
% ezplot('(x.^2 +4)*e^(2*sin(x)+sin(cos(x))-1)*cos(x)*sin(x) -e^(sin(x)) + 1/2')
% se implementa el metodo de la secante para
% resolver la ecuacion de fparamorenop3s3 

x1=x0+0.01;
f0=fparaexam2p2sc2(x0);
f1=fparaexam2p2sc2(x1);

for k=1:Nmax
  d=f1-f0;
  if(abs(d)<tolinc)
  r=x0;
  break;
  end
  f=f1*(x1-x0)/d;
  x2=x1-f;
  f2=fparaexam2p2sc2(x2);
  %fprintf('la iteracion (%d) es (%.10f)\n',k,x0)
  if( abs(f2)<tolres);
  r=x0;
  break;
  end
  if(abs(f)/(1+abs(x2)) < tolres)
  r=x0;
  break;
  end
  x0=x1;
  f0=f1;
  x1=x2;
  f1=f2;
 end
 
end

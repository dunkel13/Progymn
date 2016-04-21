function a=exam2p3s3(x0,Nmax,tolres,tolinc)
% ezplot('15*cos(2*pi/5 -x)/(sin(2*pi/5 -x)*sin(2*pi/5 -x)) - 10*cos(x)/(sin(x)*sin(x))')
% se implementa el metodo de la secante para
% calcular alfa que es solucion de la ecuacion fparamorenop3s3 y
% hallar la longitud L de la barra

x1=x0+0.01;
f0=fparaexam2p3s3(x0);
f1=fparaexam2p3s3(x1);

for k=1:Nmax
  d=f1-f0;
  
  if(abs(d)<tolinc)
  a=x0;
  break;
  end
  
  f=f1*(x1-x0)/d;
  x2=x1-f;
  f2=fparaexam2p3s3(x2);
  
  %fprintf('la iteracion (%d) es (%.10f)\n',k,x0)
  
  if( abs(f2)<tolres);
  a=x0;
  break;
  end
  
  if(abs(f)/(1+abs(x2)) < tolres)
  a=x0;
  break;
  end
% se actualizan los nuevos valores
  x0=x1;
  f0=f1;
  x1=x2;
  f1=f2;
  end
  a
 L= 15/sin(2*pi/5 -a) + 10/sin(a)
end

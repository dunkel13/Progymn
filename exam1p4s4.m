x=input('ingrese un numero \n')
% programa punto 4
suma=0;
c=0;

for i=1:10^9
  ter= 1/i;
  suma=suma+ter;
	%fprintf('la iteracion %d es %.5f\n', i, suma)
  c=c+1;
  if suma>x
    break
  end
  end
fprintf('El numero de terminos que se debe sumar es %d \n', c)

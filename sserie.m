x=input('ingrese un numero \n')
suma=0;
c=0;

for i=1:1000000
  ter= 1/(sqrt(i));
  suma=suma+ter;
  c=c+1;
  if suma>x
    break
  end
  end
fprintf('El menor numero N es %d \n', c)

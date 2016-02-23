function x=ecuaciong2(a,b,c)

d=((b*b)-(4*a*c));
x1=((-b+(sqrt(d)))/(2*a));
x2=((-b-(sqrt(d)))/(2*a));
if(b~=0)
  x3=(-c)/b;
  end
if(a==0)
  if(b==0)
    if(c==0)
      fprintf('Cualquier x es solucion \n')
        else ('ningun x es solucion \n')
     end
  else
    fprintf('La solucion es %f \n', x3)
   end
else 
  if(d<0)
    fprintf('No tiene solucion en los reales \n')
  else  
    fprintf('La solucion es %f y %f \n', x1,x2)
  end
end

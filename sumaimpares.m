function sumaimpares(N)
res=0;
suma=0;
  for i=1:N
    res=mod(i,2);
      if (res~=0)
        suma = suma+i;
        end
    end
fprintf('%d\n',suma)
end  

function u=mysort(u)

n=length(u);

for i=1:n
	for j=1:n-1
		if u(j)>u(j+1)
			aux=u(j);
      			u(j)=u(j+1);
      			u(j+1)=aux;
		else 
			
		end
	end
end
u
end

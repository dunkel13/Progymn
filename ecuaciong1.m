
function x= ecuaciong1(a,b);
if(a~=0)
	x=-(b/a);
	fprintf('La soulcion es %f\n',x)
else 
	if(b~=0)
		fprintf('ningun x es solucion\n');
		else
		fprintf('cualquier x es solucion\n');
	end
end

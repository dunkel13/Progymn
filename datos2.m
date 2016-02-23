%max de los valores
n=input('Cuantos datos?');
for i=1:N
fprintf('Digite dato %d\n',i);
x=input('dato= ');
	if(i==1)
		datomax=x;
	else
		if (x>datomax)
			datomax=x;
		end
	end
end
fprintf('Max= %.5f\n', datomax)

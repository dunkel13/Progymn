% leer 5 datos y que los va sumando
% comando input
% x=input ('Digite un numero')
% cod que lea un num de datos que al final diga cuanto suman

N=input('Cuantos datos?');
suma=0.0;
	
	for i=1:N
		fprintf('Digite dato (%d)\n',i)
		x= input('dato= ');	
		suma=suma+x;
end
fprintf('suma= %.5f\n',suma);

media=suma/N;
fprintf('promedio= %.5f \n', media);

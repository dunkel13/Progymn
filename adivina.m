% genera un numero entero aleatorio entre 10 y 100
 U= floor(10+90*rand);
% aux adivino, aux1 no adivino
aux=0;
% si quiero hacer el progrma hasta que el usuario adivine, utilizo do
	for i=1:10
		x=input('Digite un numero entre 10 y 100 =  \n');
		if (x==U)
			fprintf('muy bien has adivinado \n');
			aux=1; 
% cualquier ciclo se puede terminar con un break
			break;	
		else 
			if(x>U)
				fprintf('Digite un numero menor \n');
			else
				fprintf('Digite un numero mayor \n');
			end		
		end

end
if(aux==0)
	fprintf('Sigue intentando \n');
end

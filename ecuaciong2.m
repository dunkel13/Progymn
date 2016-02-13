function x=ecuaciong2(a,b,c);
d=0;
raiz1=0;
raiz2=0;
pReal=0;
pImg=0;
if((a~=0)&(b~=0)&(c~=0))
	a2 = a*2;
	d = b*b-4.0*a*c;
		if(d>0)
			d=sqrt(d);
			raiz1=(-b + d)/a2;
			raiz2=(-b - d)/a2;
			fprintf('Las soluciones son: \n')
			fprinf('%f, %f\n',raiz1, raiz2)
			else
				d= sqrt(-d);
				pReal = -b/a2;
				pImg = d/a2;
				fprintf('Raices complejas: \n')
				fprintf('%f, %f\n', pReal, pImg)
end				
%ecuación no cuadrática			
if((a==0)&(b==0)&(c==0))
		fprintf('Cualquier x es solucion\n')
	if((a==0)&(b~=0))
		x=-(c/b);
		fprintf('La solucion es %f\n',x)
	if((a==0)&(b==0)&(c~=0))
		fprintf('ningun x es solucion\n')
end
end

function [c,d]=exam1p1f(a,b)
% asumiendo que se ingresa un b diferente de cero

for(i=[2,3,5,7,11,13])
r1= mod(a,i);
r2= mod(b,i);
while(r1==0 && r2==0)
	a=a/i;
	r1=mod(a,i);
	b=b/i;
	r2=mod(b,i);
end
end
c=a
d=b

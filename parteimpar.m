%parte impar de un numero

function n= parteimpar (m)
res=mod(m,2);
while(res==0)
	m= m/2;
	res =mod(m,2);
end
n=m;

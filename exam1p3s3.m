n=input('ingrese un numero \n')
% m=2^k*n donde n parte impar, y k la potencia de 2 
res=mod(n,2);
k=0;
while(res==0)
n= n/2;
k=k+1;
res =mod(n,2);
end
m=n;
m
k

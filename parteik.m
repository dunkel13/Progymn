function [k,n]= parteik(m)
% m=2^k*n donde n parte impar, y k la potencia de 2 
res=mod(m,2);
k=0;
while(res==0)
m= m/2;
k=k+1;
res =mod(m,2);
end
n=m;
n
k
